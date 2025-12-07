uint64_t sub_5F3390(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0xD000000000000020;
  v7 = sub_759F20();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v3, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for SearchEntity.developers(_:))
  {
    v13 = "Search.ResultsTitle.InStories";
LABEL_9:
    sub_BD88(&unk_9562A0, &qword_79B540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    *(inited + 48) = a1;
    *(inited + 56) = a2;

    v15 = sub_10DD04(inited);
    swift_setDeallocating();
    sub_10A2C(inited + 32, &qword_95DC30, qword_79F060);
    v20._object = (v13 | 0x8000000000000000);
    v20._countAndFlagsBits = v6;
    v16._rawValue = v15;
    v17 = sub_75B740(v20, v16);

    return v17;
  }

  if (v12 == enum case for SearchEntity.stories(_:))
  {
    v13 = "Search.ResultsTitle.InArcade";
    v6 = 0xD00000000000001DLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.arcade(_:))
  {
    v13 = "Search.ResultsTitle.InWatch";
    v6 = 0xD00000000000001CLL;
    goto LABEL_9;
  }

  if (v12 == enum case for SearchEntity.watch(_:))
  {
    v13 = "must be handled.";
    v6 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_5F367C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchHintsCollectionViewDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_5F3730(uint64_t a1)
{
  result = sub_764C70();
  if (result)
  {
    sub_7651B0();
    v3 = v2;

    if (v3)
    {
      v4 = qword_93D1B0;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = [objc_opt_self() configurationWithTextStyle:qword_99DD30];
      v6 = sub_759920();

      if (qword_93D1A8 != -1)
      {
        swift_once();
      }

      v7 = [v6 imageWithTintColor:qword_99DD28];
      swift_bridgeObjectRelease_n();

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_5F3874(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchHintCollectionViewCell();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = a1;
    sub_7575C0();
    v14 = sub_75ED50();
    v15 = sub_5F2B80();
    if (v15)
    {
      v16 = v15;
      v32 = v13;
      v17 = OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView;
      v18 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits);
      v19 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView];
      v33 = v8;
      v20 = v19;
      [v18 pageMarginInsets];
      [v20 setLayoutMargins:?];

      v21 = *&v12[v17];
      *(v21 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator) = 1;
      [*(v21 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView) setHidden:0];
      v22 = *&v12[v17];
      v23 = v16;
      v24 = v22;
      v25 = sub_5F3730(v14);
      [*&v24[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel] setAttributedText:v23];
      v26 = *&v24[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
      *&v24[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage] = v25;
      v27 = v25;

      sub_66E8E4(v28, v29, v30);
      [v24 setNeedsLayout];

      v31 = v33;

      sub_764C20();

      if ((*(v31 + 48))(v6, 1, v7) == 1)
      {

        sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
      }

      else
      {
        (*(v31 + 32))(v10, v6, v7);
        if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator))
        {

          [v12 frame];
          sub_75F4B0();
        }

        else
        {
        }

        (*(v31 + 8))(v10, v7);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_5F3C20()
{
  v1 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_768AB0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7575C0();
  result = sub_75ED30();
  if (v8 < result)
  {
    sub_7575C0();
    sub_75ED50();
    sub_764C20();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_10A2C(v3, &unk_93FF30, &unk_77DB10);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_impressionsCalculator))
      {

        sub_75F4D0();
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

void sub_5F3E30(void *a1, uint64_t a2, char a3, char a4)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__OFSUB__(sub_7575C0(), 1))
  {
    __break(1u);
  }

  else
  {
    sub_7575D0();
    sub_7575B0();
    isa = sub_757550().super.isa;
    (*(v8 + 8))(v10, v7);
    v12 = [a1 cellForItemAtIndexPath:isa];

    if (v12)
    {
      type metadata accessor for SearchHintCollectionViewCell();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider28SearchHintCollectionViewCell_hintView);
        *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator) = a3;
        [*(v14 + OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView) setHidden:a4 & 1];
      }
    }
  }
}

double sub_5F3FB8(void *a1)
{
  sub_7575C0();
  sub_75ED50();
  v3 = sub_5F2B80();

  if (!v3)
  {
    return 0.0;
  }

  [a1 frame];
  v5 = v4;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider33SearchHintsCollectionViewDelegate_pageTraits);
  swift_unknownObjectRetain();
  sub_66F938(v3, v6, v7);
  sub_7670D0();
  sub_7665A0();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_5F40C8()
{
  v0 = sub_768FD0();
  sub_161DC(v0, qword_9A03E8);
  sub_BE38(v0, qword_9A03E8);
  return sub_768FC0();
}

uint64_t sub_5F4210(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_768FD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_768FF0();
  sub_161DC(v9, a2);
  sub_BE38(v9, a2);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v5, qword_9A03E8);
  (*(v6 + 16))(v8, v10, v5);
  return sub_768FE0();
}

double sub_5F4360(uint64_t a1)
{
  v48 = a1;
  v37 = sub_766220();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_75E5F0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v49 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00, &unk_77DF10);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v43 = v7;
    v44 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v39 = v10;
    v46 = v1;
    sub_7685D0();
    v42 = "advertHostingPageExited";
    sub_768540();
    sub_768540();
    v41 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    v40 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    v45 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v47;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageEnter(_:), v47);
    if (!*(v13 + 16) || (v16 = sub_6647E8(v5, v15), (v17 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v53 = 0;
LABEL_19:
      v51 = 0u;
      v52[0] = 0u;
LABEL_20:
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v32 = sub_75E5D0();
      *(&v52[0] + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v33;
      sub_7685C0();
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(*(v13 + 56) + 8 * v16);
    v20 = *(v3 + 8);

    v20(v5, v18);

    v53 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

    v1 = &v53;
    sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v51);
    if (!*(&v52[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766210();
    v21 = v53;
    if (!v53)
    {
      break;
    }

    v22 = 1 << *(v53 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v3 = v23 & *(v53 + 64);
    v24 = (v22 + 63) >> 6;
    v5 = &v51;

    v25 = 0;
    while (v3)
    {
      v26 = v25;
LABEL_16:
      v27 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v21 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_132B4(*(v21 + 56) + 32 * v28, v52);
      *&v51 = v30;
      *(&v51 + 1) = v31;
      sub_132B4(v52, &v50);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_766230();
      sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_24;
      }

      v3 = *(v21 + 64 + 8 * v26);
      ++v25;
      if (v3)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v35 = v38;
  sub_765F60();
  (*(v36 + 8))(v35, v37);
LABEL_22:

  return result;
}

double sub_5F49F4(uint64_t a1)
{
  v48 = a1;
  v37 = sub_766190();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_75E5F0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v49 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00, &unk_77DF10);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v43 = v7;
    v44 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v39 = v10;
    v46 = v1;
    sub_7685D0();
    v42 = "duplicatePosition";
    sub_768540();
    sub_768540();
    v41 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    v40 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    v45 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v47;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageExit(_:), v47);
    if (!*(v13 + 16) || (v16 = sub_6647E8(v5, v15), (v17 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v53 = 0;
LABEL_19:
      v51 = 0u;
      v52[0] = 0u;
LABEL_20:
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v32 = sub_75E5D0();
      *(&v52[0] + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v33;
      sub_7685C0();
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(*(v13 + 56) + 8 * v16);
    v20 = *(v3 + 8);

    v20(v5, v18);

    v53 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

    v1 = &v53;
    sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v51);
    if (!*(&v52[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766180();
    v21 = v53;
    if (!v53)
    {
      break;
    }

    v22 = 1 << *(v53 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v3 = v23 & *(v53 + 64);
    v24 = (v22 + 63) >> 6;
    v5 = &v51;

    v25 = 0;
    while (v3)
    {
      v26 = v25;
LABEL_16:
      v27 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v21 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_132B4(*(v21 + 56) + 32 * v28, v52);
      *&v51 = v30;
      *(&v51 + 1) = v31;
      sub_132B4(v52, &v50);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_7661A0();
      sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_24;
      }

      v3 = *(v21 + 64 + 8 * v26);
      ++v25;
      if (v3)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v35 = v38;
  sub_765F50();
  (*(v36 + 8))(v35, v37);
LABEL_22:

  return result;
}

void sub_5F5088(uint64_t a1)
{
  v49 = a1;
  v38 = sub_7660D0();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75E5F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  v48 = sub_BE38(v7, qword_9A0460);
  v8 = sub_BD88(&qword_93FD00, &unk_77DF10);
  v9 = *(sub_7685F0() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v44 = v8;
  v45 = 4 * v10;
  v42 = v11;
  *(swift_allocObject() + 16) = xmmword_782440;
  v43 = v12;
  v47 = v1;
  sub_7685D0();
  sub_768540();
  sub_768540();
  v41 = 2 * v10;
  v13 = sub_75E5D0();
  *(&v52[0] + 1) = &type metadata for String;
  *&v51 = v13;
  *(&v51 + 1) = v14;
  v40 = 3 * v10;
  sub_7685C0();
  sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
  v46 = v7;
  sub_768E80();

  v15 = sub_75E5E0();
  (*(v4 + 104))(v6, enum case for SearchAdOpportunity.LifecycleEventType.placed(_:), v3);
  if (!*(v15 + 16) || (v17 = sub_6647E8(v6, v16), (v18 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    v53 = 0;
    goto LABEL_18;
  }

  v19 = *(*(v15 + 56) + 8 * v17);
  v20 = *(v4 + 8);

  v20(v6, v3);

  v53 = v19;
  if (!v19)
  {
LABEL_18:
    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v51);
  if (!*(&v52[0] + 1))
  {
LABEL_19:
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *(swift_allocObject() + 16) = xmmword_784250;
    sub_7685D0();
    sub_768540();
    sub_768540();
    sub_768540();
    v21 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v21;
    *(&v51 + 1) = v22;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

LABEL_21:

    return;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6E65644965676170, 0xEE00726569666974, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_2062D4(0x6C706D6554644169, 0xEF65707954657461, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v53)
  {
    sub_2062D4(0xD000000000000010, 0x80000000007ED760, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_30;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_30:
  if (v53)
  {
    sub_2062D4(0xD000000000000011, 0x80000000007ED780, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_35;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_35:
  sub_7660C0();
  v23 = v53;
  if (!v53)
  {
LABEL_47:
    v35 = v39;
    sub_765F70();
    (*(v37 + 8))(v35, v38);
    goto LABEL_21;
  }

  v24 = 1 << *(v53 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v53 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  while (v26)
  {
    v29 = v28;
LABEL_44:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v23 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_132B4(*(v23 + 56) + 32 * v31, v52);
    *&v51 = v33;
    *(&v51 + 1) = v34;
    sub_132B4(v52, &v50);
    swift_bridgeObjectRetain_n();
    sub_7660E0();
    sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      goto LABEL_47;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_44;
    }
  }

  __break(1u);
}

double sub_5F59E4(uint64_t a1)
{
  v48 = a1;
  v37 = sub_766160();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_75E5F0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v49 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00, &unk_77DF10);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v43 = v7;
    v44 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v39 = v10;
    v46 = v1;
    sub_7685D0();
    v42 = "advertDidExitView";
    sub_768540();
    sub_768540();
    v41 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    v40 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    v45 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v47;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.onScreen(_:), v47);
    if (!*(v13 + 16) || (v16 = sub_6647E8(v5, v15), (v17 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v53 = 0;
LABEL_19:
      v51 = 0u;
      v52[0] = 0u;
LABEL_20:
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v32 = sub_75E5D0();
      *(&v52[0] + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v33;
      sub_7685C0();
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(*(v13 + 56) + 8 * v16);
    v20 = *(v3 + 8);

    v20(v5, v18);

    v53 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

    v1 = &v53;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v51);
    if (!*(&v52[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_766150();
    v21 = v53;
    if (!v53)
    {
      break;
    }

    v22 = 1 << *(v53 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v3 = v23 & *(v53 + 64);
    v24 = (v22 + 63) >> 6;
    v5 = &v51;

    v25 = 0;
    while (v3)
    {
      v26 = v25;
LABEL_16:
      v27 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v21 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_132B4(*(v21 + 56) + 32 * v28, v52);
      *&v51 = v30;
      *(&v51 + 1) = v31;
      sub_132B4(v52, &v50);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_766170();
      sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_24;
      }

      v3 = *(v21 + 64 + 8 * v26);
      ++v25;
      if (v3)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v35 = v38;
  sub_765F80();
  (*(v36 + 8))(v35, v37);
LABEL_22:

  return result;
}

double sub_5F6074(uint64_t a1)
{
  v48 = a1;
  v37 = sub_7661F0();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_75E5F0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v49 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00, &unk_77DF10);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v43 = v7;
    v44 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v39 = v10;
    v46 = v1;
    sub_7685D0();
    v42 = "ered undefined threshold";
    sub_768540();
    sub_768540();
    v41 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    v40 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    v45 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v47;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.offScreen(_:), v47);
    if (!*(v13 + 16) || (v16 = sub_6647E8(v5, v15), (v17 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v53 = 0;
LABEL_19:
      v51 = 0u;
      v52[0] = 0u;
LABEL_20:
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v32 = sub_75E5D0();
      *(&v52[0] + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v33;
      sub_7685C0();
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(*(v13 + 56) + 8 * v16);
    v20 = *(v3 + 8);

    v20(v5, v18);

    v53 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

    v1 = &v53;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v51);
    if (!*(&v52[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_7661E0();
    v21 = v53;
    if (!v53)
    {
      break;
    }

    v22 = 1 << *(v53 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v3 = v23 & *(v53 + 64);
    v24 = (v22 + 63) >> 6;
    v5 = &v51;

    v25 = 0;
    while (v3)
    {
      v26 = v25;
LABEL_16:
      v27 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v21 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_132B4(*(v21 + 56) + 32 * v28, v52);
      *&v51 = v30;
      *(&v51 + 1) = v31;
      sub_132B4(v52, &v50);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_766200();
      sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_24;
      }

      v3 = *(v21 + 64 + 8 * v26);
      ++v25;
      if (v3)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v35 = v38;
  sub_765FA0();
  (*(v36 + 8))(v35, v37);
LABEL_22:

  return result;
}

double sub_5F6704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v6 = sub_766280();
  v60 = *(v6 - 8);
  v61 = v6;
  __chkstk_darwin(v6);
  v62 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75E5F0();
  v63 = *(v8 - 8);
  v64 = v8;
  __chkstk_darwin(v8);
  v10 = (v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_BD88(&qword_95DCE0, qword_7A9090);
  __chkstk_darwin(v11 - 8);
  v13 = v56 - v12;
  v14 = sub_761970();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5F7BAC(a2, v13);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) == 1)
  {
    (*(v15 + 104))(v17, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v14);
    if (v18(v13, 1, v14) != 1)
    {
      sub_10A2C(v13, &qword_95DCE0, qword_7A9090);
    }
  }

  else
  {
    v19.n128_f64[0] = (*(v15 + 32))(v17, v13, v14);
  }

  v20 = sub_5F7050(v17, v19);
  v22 = v21;
  (*(v15 + 8))(v17, v14);
  if ((v22 & 1) == 0)
  {
    v24 = sub_5F7050(a3, v23);
    if ((v25 & 1) == 0 && v24 != v20)
    {
      v59 = v24;
      if (qword_93DF10 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v57 = sub_768FF0();
        v56[10] = sub_BE38(v57, qword_9A0460);
        v26 = sub_BD88(&qword_93FD00, &unk_77DF10);
        v27 = *(sub_7685F0() - 8);
        v28 = *(v27 + 72);
        v29 = *(v27 + 80);
        v30 = (v29 + 32) & ~v29;
        v56[9] = 8 * v28;
        v56[6] = v29;
        v56[8] = v26;
        *(swift_allocObject() + 16) = xmmword_783150;
        v56[7] = v30;
        v58 = v3;
        sub_7685D0();
        v56[5] = "advertWasRemoved";
        sub_768540();
        sub_768540();
        v56[4] = 2 * v28;
        v31 = sub_75E5D0();
        *(&v68[0] + 1) = &type metadata for String;
        *&v67 = v31;
        *(&v67 + 1) = v32;
        v56[3] = 3 * v28;
        sub_7685C0();
        sub_10A2C(&v67, &unk_93FBD0, &qword_77DFA0);
        sub_768540();
        v56[2] = 4 * v28;
        *(&v68[0] + 1) = &type metadata for Int;
        *&v67 = v20;
        v56[1] = 5 * v28;
        sub_7685C0();
        sub_10A2C(&v67, &unk_93FBD0, &qword_77DFA0);
        sub_768540();
        *(&v68[0] + 1) = &type metadata for Int;
        *&v67 = v59;
        sub_7685C0();
        sub_10A2C(&v67, &unk_93FBD0, &qword_77DFA0);
        sub_768E80();

        v33 = sub_75E5E0();
        v35 = v63;
        v34 = v64;
        (*(v63 + 104))(v10, enum case for SearchAdOpportunity.LifecycleEventType.visible(_:), v64);
        if (!*(v33 + 16) || (v37 = sub_6647E8(v10, v36), (v38 & 1) == 0))
        {

          (*(v35 + 8))(v10, v34);
          v69 = 0;
LABEL_26:
          v67 = 0u;
          v68[0] = 0u;
LABEL_27:
          sub_10A2C(&v67, &unk_93FBD0, &qword_77DFA0);
LABEL_28:
          *(swift_allocObject() + 16) = xmmword_784250;
          sub_7685D0();
          sub_768540();
          sub_768540();
          sub_768540();
          v52 = sub_75E5D0();
          *(&v68[0] + 1) = &type metadata for String;
          *&v67 = v52;
          *(&v67 + 1) = v53;
          sub_7685C0();
          sub_10A2C(&v67, &unk_93FBD0, &qword_77DFA0);
          sub_768EA0();

          goto LABEL_29;
        }

        v39 = *(*(v33 + 56) + 8 * v37);
        v40 = *(v35 + 8);

        v40(v10, v34);

        v69 = v39;
        if (!v39)
        {
          goto LABEL_26;
        }

        v3 = &v69;
        sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v67);
        if (!*(&v68[0] + 1))
        {
          goto LABEL_27;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_766270();
        v41 = v69;
        if (!v69)
        {
          break;
        }

        v42 = 1 << *(v69 + 32);
        v43 = -1;
        if (v42 < 64)
        {
          v43 = ~(-1 << v42);
        }

        v44 = v43 & *(v69 + 64);
        v45 = (v42 + 63) >> 6;

        v20 = 0;
        v10 = &qword_7A9088;
        while (v44)
        {
          v46 = v20;
LABEL_23:
          v47 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          v48 = v47 | (v46 << 6);
          v49 = (*(v41 + 48) + 16 * v48);
          v50 = *v49;
          v51 = v49[1];
          sub_132B4(*(v41 + 56) + 32 * v48, v68);
          *&v67 = v50;
          *(&v67 + 1) = v51;
          sub_132B4(v68, &v66);
          swift_bridgeObjectRetain_n();
          v3 = v62;
          sub_766290();
          sub_10A2C(&v67, &qword_95DCD8, &qword_7A9088);
        }

        while (1)
        {
          v46 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v46 >= v45)
          {

            goto LABEL_32;
          }

          v44 = *(v41 + 64 + 8 * v46);
          ++v20;
          if (v44)
          {
            v20 = v46;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_32:
      v54 = v62;
      sub_765FC0();
      (*(v60 + 8))(v54, v61);
LABEL_29:
    }
  }

  return v23.n128_f64[0];
}

uint64_t sub_5F7050(uint64_t a1, __n128 a2)
{
  v2 = sub_761970();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 104);
  v8.n128_f64[0] = v7(v6, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOnScreen(_:), v2, v4);
  sub_5F7C1C(&qword_95DCE8, &protocol conformance descriptor for AdvertVisibilityCalculator.VisibilityThreshold, v8);
  sub_769430();
  sub_769430();
  v9 = *(v3 + 8);
  v9(v6, v2);
  if (v15[1] == v15[0])
  {
    return 100;
  }

  v11.n128_f64[0] = (v7)(v6, enum case for AdvertVisibilityCalculator.VisibilityThreshold.moreThanHalfOnScreen(_:), v2);
  sub_5F7C1C(&qword_95DCF0, &protocol conformance descriptor for AdvertVisibilityCalculator.VisibilityThreshold, v11);
  v12 = sub_7691B0();
  v9(v6, v2);
  if ((v12 & 1) == 0)
  {
    return 50;
  }

  (v7)(v6, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v2);
  v13 = sub_7691B0();
  v9(v6, v2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  if (qword_93DF10 != -1)
  {
    swift_once();
  }

  v14 = sub_768FF0();
  sub_BE38(v14, qword_9A0460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_7685D0();
  sub_768540();
  sub_768EA0();

  return 0;
}

double sub_5F73CC(uint64_t a1)
{
  v48 = a1;
  v38 = sub_7661C0();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_75E5F0();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF10 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_768FF0();
    v49 = sub_BE38(v6, qword_9A0460);
    v7 = sub_BD88(&qword_93FD00, &unk_77DF10);
    v8 = *(sub_7685F0() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v43 = v7;
    v44 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_782440;
    v40 = v10;
    v46 = v1;
    sub_7685D0();
    sub_768540();
    sub_768540();
    v42 = 2 * v9;
    v11 = sub_75E5D0();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v11;
    *(&v51 + 1) = v12;
    v41 = 3 * v9;
    sub_7685C0();
    sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
    v45 = v6;
    sub_768E80();

    v13 = sub_75E5E0();
    v14 = v47;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.completed(_:), v47);
    if (!*(v13 + 16) || (v16 = sub_6647E8(v5, v15), (v17 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v53 = 0;
LABEL_19:
      v51 = 0u;
      v52[0] = 0u;
LABEL_20:
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_784250;
      sub_7685D0();
      sub_768540();
      sub_768540();
      sub_768540();
      v32 = sub_75E5D0();
      *(&v52[0] + 1) = &type metadata for String;
      *&v51 = v32;
      *(&v51 + 1) = v33;
      sub_7685C0();
      sub_10A2C(&v51, &unk_93FBD0, &qword_77DFA0);
      sub_768EA0();

      goto LABEL_22;
    }

    v18 = v14;
    v19 = *(*(v13 + 56) + 8 * v16);
    v20 = *(v3 + 8);

    v20(v5, v18);

    v53 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }

    v1 = &v53;
    sub_2062D4(0x6E6174736E496461, 0xEC00000064496563, &v51);
    if (!*(&v52[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_7661B0();
    v21 = v53;
    if (!v53)
    {
      break;
    }

    v22 = 1 << *(v53 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v3 = v23 & *(v53 + 64);
    v24 = (v22 + 63) >> 6;
    v5 = &v51;

    v25 = 0;
    while (v3)
    {
      v26 = v25;
LABEL_16:
      v27 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v28 = v27 | (v26 << 6);
      v29 = (*(v21 + 48) + 16 * v28);
      v30 = *v29;
      v31 = v29[1];
      sub_132B4(*(v21 + 56) + 32 * v28, v52);
      *&v51 = v30;
      *(&v51 + 1) = v31;
      sub_132B4(v52, &v50);
      swift_bridgeObjectRetain_n();
      v1 = v39;
      sub_7661D0();
      sub_10A2C(&v51, &qword_95DCD8, &qword_7A9088);
    }

    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        goto LABEL_24;
      }

      v3 = *(v21 + 64 + 8 * v26);
      ++v25;
      if (v3)
      {
        v25 = v26;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v35 = v39;
  sub_765F90();
  (*(v37 + 8))(v35, v38);
LABEL_22:

  return result;
}

uint64_t sub_5F7A54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_5F7BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95DCE0, qword_7A9090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F7C1C(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_761970();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_5F7C60()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_9A04A8 = v2;
    unk_9A04B0 = v4;
    qword_9A04B8 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7D78()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightRegular];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = UIFontTextStyleBody;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightRegular];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v1;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightRegular];

  if (v6)
  {
    qword_9A04C0 = v2;
    *algn_9A04C8 = v4;
    qword_9A04D0 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7E90()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleTitle3;
  v2 = [v0 _preferredFontForTextStyle:v1 weight:UIFontWeightBold];

  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v1;
  v4 = [v0 _preferredFontForTextStyle:v3 weight:UIFontWeightBold];

  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = v3;
  v6 = [v0 _preferredFontForTextStyle:v5 weight:UIFontWeightBold];

  if (v6)
  {
    qword_9A04D8 = v2;
    unk_9A04E0 = v4;
    qword_9A04E8 = v6;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_5F7F9C()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = UIFontTextStyleSubheadline;
  v4 = [v0 preferredFontForTextStyle:v3];

  v5 = UIFontTextStyleBody;
  v6 = [v0 preferredFontForTextStyle:v5];

  qword_9A04F0 = v2;
  *algn_9A04F8 = v4;
  qword_9A0500 = v6;
}

void sub_5F8088(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v7 = sub_75B270();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_762D10();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_756CB0();
  v111 = *(v11 - 8);
  v112 = v11;
  __chkstk_darwin(v11);
  v110 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75F100();
  v101 = *(v13 - 8);
  v102 = v13;
  __chkstk_darwin(v13);
  v100 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v120 = &v96 - v16;
  v17 = sub_75B240();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v96 - v23;
  v122 = [a3 traitCollection];
  sub_75B250();
  (*(v18 + 104))(v20, enum case for BreakoutDetails.BackgroundStyle.material(_:), v17);
  sub_5F9628(&qword_95DD00, &type metadata accessor for BreakoutDetails.BackgroundStyle, &protocol conformance descriptor for BreakoutDetails.BackgroundStyle);
  sub_769430();
  sub_769430();
  if (v143 != v140)
  {
    sub_76A950();
  }

  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v24, v17);

  v26 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_636B98(v121, v120);
  v117 = sub_26F08();
  v118 = v26;
  v27 = sub_769E10();
  v28 = sub_75B290();
  if (!v29)
  {
    v34 = v10;
    v30 = a1;
    goto LABEL_7;
  }

  v30 = a1;
  *&v143 = v28;
  *(&v143 + 1) = v29;
  v31 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v33 = v32;
  (*(v111 + 8))(v31, v112);
  if (v33)
  {
    v34 = v10;

LABEL_7:
    v35 = v119;
    goto LABEL_12;
  }

  [v27 lineHeight];
  v37 = v36;

  v38 = ceil(v37 * 1.3);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v34 = v10;
  v35 = v119;
LABEL_12:
  sub_75B290();
  v39 = sub_7653B0();
  v144 = v39;
  v109 = sub_5F9628(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v145 = v109;
  v40 = sub_B1B4(&v143);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v27;
  sub_765C30();
  sub_BEB8(&v143);
  v44 = v34;
  v107 = v43;
  sub_762D00();
  sub_762CE0();
  v115 = *(v115 + 8);
  (v115)(v34, v35);
  v45 = sub_769E10();
  v46 = sub_75B200();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_16;
  }

  *&v140 = v46;
  *(&v140 + 1) = v47;
  v48 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v50 = v49;
  (*(v111 + 8))(v48, v112);
  if (v50)
  {
    v51 = v45;

LABEL_16:
    v52 = v116;
    goto LABEL_21;
  }

  [v107 lineHeight];
  v54 = v53;

  v55 = ceil(v54 * 1.3);
  v52 = v116;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v51 = v45;
LABEL_21:
  sub_75B200();
  v56 = v109;
  v141 = v39;
  v142 = v109;
  v57 = sub_B1B4(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  sub_765C30();
  sub_BEB8(&v140);
  v61 = v108;
  v97 = v60;
  sub_762D00();
  sub_762CE0();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v30;
  sub_75B280();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    sub_769E10();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_B1B4(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    sub_765C30();
    sub_BEB8(&v137);
    sub_762D00();
    sub_762CE0();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_B170(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_B1B4(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_BEB8(&v134);
    v74 = v69;
    if (!sub_75B1F0())
    {
      goto LABEL_38;
    }
  }

  else
  {
    v67 = v98;
    if (v66 != enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v61 = v108;
      v74 = v113;
      if (v66 == enum case for BreakoutDetails.Badge.none(_:))
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        if (sub_75B1F0())
        {
          goto LABEL_29;
        }
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        (*(v65 + 8))(v63, v64);
        if (sub_75B1F0())
        {
          goto LABEL_29;
        }
      }

LABEL_38:
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      goto LABEL_39;
    }

    v75 = sub_7670D0();
    swift_allocObject();
    v76 = sub_7670B0();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!sub_75B1F0())
    {
      goto LABEL_38;
    }
  }

LABEL_29:
  v77 = sub_769E10();
  v78 = sub_764C60();
  if (!v79)
  {
    goto LABEL_36;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v82 = v81;
  (*(v111 + 8))(v80, v112);
  if (v82)
  {

    goto LABEL_36;
  }

  [v77 lineHeight];
  v84 = v83;

  v85 = ceil(v84 * 1.3);
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_51:
    __break(1u);
    return;
  }

LABEL_36:
  sub_764C60();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_B1B4(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  sub_765C30();
  sub_BEB8(&v134);
  sub_762D00();
  sub_762CE0();

  (v115)(v61, v119);
LABEL_39:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_134D8(&v143, &v133);
  sub_134D8(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_1ED18(&v137, v129, &unk_943B10, &qword_77E080);
  sub_1ED18(&v134, v123, &qword_9417D0, &unk_780EA0);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_B170(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_B1B4(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_BEB8(v123);
  }

  else
  {
    sub_10A2C(v123, &qword_9417D0, &unk_780EA0);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = sub_75F120();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_5F9628(&qword_95DD08, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  v95[5] = sub_5F9628(&qword_95DD10, &type metadata accessor for BreakoutDetailsLayout, &protocol conformance descriptor for BreakoutDetailsLayout);
  sub_B1B4(v95);
  sub_75F110();

  sub_10A2C(&v134, &qword_9417D0, &unk_780EA0);
  sub_BEB8(&v140);
  sub_BEB8(&v143);
  (*(v88 + 8))(v120, v89);
  sub_10A2C(&v137, &unk_943B10, &qword_77E080);
}

id sub_5F8FA0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v41 = a4;
  v44 = a3;
  v45 = sub_75B240();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_75B220();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75B270();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  sub_75B280();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v5[v18], v11);
  swift_beginAccess();
  (*(v12 + 24))(&v5[v18], v17, v11);
  swift_endAccess();
  sub_63979C(v14, v19);
  v20 = *(v12 + 8);
  v20(v14, v11);
  v20(v17, v11);
  v21 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_titleLabel];
  sub_75B290();
  if (v22)
  {
    v23 = sub_769210();
  }

  else
  {
    v23 = 0;
  }

  [v21 setText:v23];

  v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_descriptionLabel];
  sub_75B200();
  if (v25)
  {
    v26 = sub_769210();
  }

  else
  {
    v26 = 0;
  }

  [v24 setText:v26];

  v27 = sub_75B1F0();
  if (v27)
  {
    v28 = v27;
    sub_764C60();
    v29 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton];
    if (v30)
    {
      v31 = sub_769210();
    }

    else
    {
      v31 = 0;
    }

    [v29 setTitle:v31 forState:0];

    v35 = swift_allocObject();
    *(v35 + 16) = v41;
    *(v35 + 24) = v28;
    v36 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v37 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v38 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v36 = sub_5F9620;
    v36[1] = v35;

    v33 = v37;
    v34 = v38;
  }

  else
  {
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v32 = &v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v33 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler];
    v34 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider19BreakoutDetailsView_callToActionButtonHandler + 8];
    *v32 = 0;
    *(v32 + 1) = 0;
  }

  sub_F704(v33, v34);
  sub_75B230();
  sub_75B250();
  sub_636764(v44, v10, v7);
  (*(v43 + 8))(v7, v45);
  (*(v8 + 8))(v10, v42);
  return [v5 setNeedsLayout];
}

unint64_t sub_5F9438()
{
  result = qword_95DCF8;
  if (!qword_95DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95DCF8);
  }

  return result;
}

uint64_t sub_5F949C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_5F95E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5F9628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_5F9670()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_769210();
    v5 = sub_769210();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_5F9754(void *a1)
{
  v1 = a1;
  sub_5F9670();
}

double sub_5F979C(void *a1)
{
  v1 = a1;
  sub_4FF230();

  return 0.0;
}

void sub_5F97F0(__n128 a1)
{
  v2 = v1;
  v3 = sub_75CFF0();
  v178 = *(v3 - 8);
  v179 = v3;
  __chkstk_darwin(v3);
  v177 = &v152 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75CFE0();
  v174 = *(v5 - 8);
  v175 = v5;
  __chkstk_darwin(v5);
  v176 = &v152 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75CFD0();
  v171 = *(v7 - 8);
  v172 = v7;
  __chkstk_darwin(v7);
  v173 = &v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75D020();
  v180 = *(v9 - 8);
  __chkstk_darwin(v9);
  v168 = (&v152 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_762D10();
  v170 = *(v11 - 8);
  __chkstk_darwin(v11);
  v169 = &v152 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_75D010();
  v195 = *(v13 - 8);
  v196 = v13;
  __chkstk_darwin(v13);
  v157 = &v152 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v194 = (&v152 - v16);
  __chkstk_darwin(v17);
  v193 = &v152 - v18;
  __chkstk_darwin(v19);
  v21 = &v152 - v20;
  v22 = sub_756CB0();
  v158 = *(v22 - 8);
  v159 = v22;
  __chkstk_darwin(v22);
  v155 = &v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v186);
  v187 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&qword_947FC0, &unk_789570);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v154 = &v152 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v190 = (&v152 - v29);
  __chkstk_darwin(v30);
  v189 = &v152 - v31;
  __chkstk_darwin(v32);
  v156 = &v152 - v33;
  __chkstk_darwin(v34);
  v192 = (&v152 - v35);
  __chkstk_darwin(v36);
  v191 = (&v152 - v37);
  __chkstk_darwin(v38);
  v184 = &v152 - v39;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v43 = &v152 - v42;
  v44 = [v1 collectionView];
  if (v44)
  {
    v45 = v44;
    v164 = v11;
    v165 = v26;
    v162 = v25;
    v163 = v9;
    v183 = v21;
    [v44 frame];

    v188 = sub_760AB0();
    v47 = v46;
    v48 = v2;
    if (qword_93CDC8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for TitleHeaderView.Style(0);
    v50 = sub_BE38(v49, qword_99D498);
    sub_4FF230();
    v51 = [v48 traitCollection];
    v52 = v195 + 56;
    v53 = *(v195 + 56);
    v181 = v43;
    v54 = v43;
    v55 = v196;
    v53(v54, 1, 1, v196);
    v160 = v53;
    v161 = v52;
    v53(v184, 1, 1, v55);
    v226 = 0;
    memset(v225, 0, sizeof(v225));
    v224 = 0;
    memset(v223, 0, sizeof(v223));
    v182 = v49;
    v56 = *(v49 + 20);
    v185 = v50;
    v153 = v56;
    sub_19CE28(v50 + v56, v187, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_26F08();
    v166 = v51;
    v57 = sub_769E10();
    v58 = v47;
    v167 = v48;
    if (!v47)
    {
      v63 = v196;
      goto LABEL_11;
    }

    v59 = v188;
    *&v220 = v188;
    *(&v220 + 1) = v47;

    v60 = v155;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v62 = v61;
    (v158)[1](v60, v159);

    if (v62)
    {
      v63 = v196;
      goto LABEL_11;
    }

    [v57 lineHeight];
    v65 = ceil(v64 * 1.3);
    v66 = &v204;
    v63 = v196;
    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v65 > -9.22337204e18)
    {
      if (v65 < 9.22337204e18)
      {
LABEL_11:
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        v67 = sub_7653B0();
        v218 = v67;
        v219 = sub_5FB9F0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v68 = sub_B1B4(v217);
        (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);

        v69 = v57;
        sub_765C30();
        sub_BEB8(v217);
        v70 = v169;
        v158 = v69;
        v159 = v58;
        sub_762D00();
        sub_762CE0();
        (*(v170 + 8))(v70, v164);
        sub_1ED18(&v220, v216, &unk_943B10, &qword_77E080);
        v71 = v218;
        v72 = v219;
        v73 = sub_B170(v217, v218);
        v215[3] = v71;
        v215[4] = *(v72 + 8);
        v74 = sub_B1B4(v215);
        (*(*(v71 - 8) + 16))(v74, v73, v71);
        v76 = v186;
        v75 = v187;
        v77 = *(v187 + v186[8]);
        v213 = &type metadata for Float;
        v214 = &protocol witness table for Float;
        v212[0] = v77;
        v78 = v186[9];
        v79 = sub_766CA0();
        v211[3] = v79;
        v211[4] = &protocol witness table for StaticDimension;
        v80 = sub_B1B4(v211);
        v81 = *(*(v79 - 8) + 16);
        v81(v80, v75 + v78, v79);
        v82 = v76[10];
        v210[3] = v79;
        v210[4] = &protocol witness table for StaticDimension;
        v83 = sub_B1B4(v210);
        v81(v83, v75 + v82, v79);
        sub_1ED18(v225, &v204, &qword_9417D0, &unk_780EA0);
        v84 = *(&v205 + 1);
        if (*(&v205 + 1))
        {
          v85 = v206;
          v86 = sub_B170(&v204, *(&v205 + 1));
          *(&v208 + 1) = v84;
          v209 = *(v85 + 8);
          v87 = sub_B1B4(&v207);
          (*(*(v84 - 8) + 16))(v87, v86, v84);
          sub_BEB8(&v204);
        }

        else
        {
          sub_10A2C(&v204, &qword_9417D0, &unk_780EA0);
          v207 = 0u;
          v208 = 0u;
          v209 = 0;
        }

        v88 = v183;
        v89 = v190;
        sub_1ED18(v223, v201, &qword_9417D0, &unk_780EA0);
        v90 = v202;
        if (v202)
        {
          v91 = v203;
          v92 = sub_B170(v201, v202);
          *(&v205 + 1) = v90;
          v206 = *(v91 + 8);
          v93 = sub_B1B4(&v204);
          (*(*(v90 - 8) + 16))(v93, v92, v90);
          sub_BEB8(v201);
        }

        else
        {
          sub_10A2C(v201, &qword_9417D0, &unk_780EA0);
          v204 = 0u;
          v205 = 0u;
          v206 = 0;
        }

        v94 = v186;
        v95 = v187;
        sub_134D8(v187 + v186[12], v201);
        sub_134D8(v95 + v94[13], &v200);
        v198 = &type metadata for Double;
        v199 = &protocol witness table for Double;
        v197 = 0x4020000000000000;
        sub_75D000();
        sub_BEB8(v217);
        sub_10A2C(&v220, &unk_943B10, &qword_77E080);
        v96 = *(v185 + v182[9]);
        sub_BD88(&qword_947FC8, qword_7A9250);
        v97 = *(v165 + 72);
        v98 = (*(v165 + 80) + 32) & ~*(v165 + 80);
        if (v96)
        {
          if (v96 == 1)
          {
            v170 = swift_allocObject();
            v99 = (v170 + v98);
            sub_1ED18(v181, v170 + v98, &qword_947FC0, &unk_789570);
            v100 = v195 + 16;
            (*(v195 + 16))(&v99[v97], v88, v63);
            v160(&v99[v97], 0, 1, v63);
            sub_1ED18(v184, &v99[2 * v97], &qword_947FC0, &unk_789570);
            v101 = (v100 + 32);
            v193 = (v100 + 16);
            v102 = _swiftEmptyArrayStorage;
            v103 = 3;
            v188 = v97;
            v189 = v99;
            v104 = v99;
            v105 = &qword_947FC0;
            v191 = v101;
            do
            {
              v106 = v192;
              sub_1ED18(v104, v192, v105, &unk_789570);
              sub_5FB980(v106, v89);
              v107 = v196;
              if ((*v101)(v89, 1, v196) == 1)
              {
                sub_10A2C(v89, v105, &unk_789570);
              }

              else
              {
                v108 = v105;
                v109 = *v193;
                (*v193)(v194, v89, v107);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v102 = sub_7B968(0, *(v102 + 2) + 1, 1, v102);
                }

                v111 = *(v102 + 2);
                v110 = *(v102 + 3);
                if (v111 >= v110 >> 1)
                {
                  v102 = sub_7B968((v110 > 1), v111 + 1, 1, v102);
                }

                v101 = v191;
                *(v102 + 2) = v111 + 1;
                v109(v102 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v111, v194, v196);
                v89 = v190;
                v105 = v108;
                v97 = v188;
              }

              v104 += v97;
              --v103;
            }

            while (v103);
            swift_setDeallocating();
            swift_arrayDestroy();
            v66 = v163;
            v53 = v168;
            v63 = v196;
          }

          else
          {
            v124 = swift_allocObject();
            v125 = v124 + v98;
            sub_1ED18(v181, v124 + v98, &qword_947FC0, &unk_789570);
            v126 = v195;
            (*(v195 + 16))(v124 + v98 + v97, v88, v63);
            v160((v124 + v98 + v97), 0, 1, v63);
            v127 = v156;
            sub_1ED18(v124 + v98, v156, &qword_947FC0, &unk_789570);
            v128 = v154;
            sub_5FB980(v127, v154);
            v129 = *(v126 + 48);
            v130 = (v126 + 32);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10A2C(v128, &qword_947FC0, &unk_789570);
              v131 = _swiftEmptyArrayStorage;
            }

            else
            {
              v170 = v124;
              v132 = *v130;
              (*v130)(v157, v128, v63);
              v131 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v131 = sub_7B968(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v134 = *(v131 + 2);
              v133 = *(v131 + 3);
              if (v134 >= v133 >> 1)
              {
                v131 = sub_7B968((v133 > 1), v134 + 1, 1, v131);
              }

              *(v131 + 2) = v134 + 1;
              v135 = v131 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v134;
              v63 = v196;
              v132(v135, v157, v196);
              v128 = v154;
            }

            v136 = v125 + v97;
            v137 = v156;
            sub_1ED18(v136, v156, &qword_947FC0, &unk_789570);
            sub_5FB980(v137, v128);
            if (v129(v128, 1, v63) == 1)
            {
              sub_10A2C(v128, &qword_947FC0, &unk_789570);
              v66 = v163;
            }

            else
            {
              v138 = *v130;
              (*v130)(v157, v128, v63);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v66 = v163;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v131 = sub_7B968(0, *(v131 + 2) + 1, 1, v131);
              }

              v141 = *(v131 + 2);
              v140 = *(v131 + 3);
              if (v141 >= v140 >> 1)
              {
                v131 = sub_7B968((v140 > 1), v141 + 1, 1, v131);
              }

              *(v131 + 2) = v141 + 1;
              v138(v131 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v141, v157, v63);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v53 = v168;
          }
        }

        else
        {
          v170 = swift_allocObject();
          v112 = v170 + v98;
          sub_1ED18(v181, v170 + v98, &qword_947FC0, &unk_789570);
          sub_1ED18(v184, v112 + v97, &qword_947FC0, &unk_789570);
          v113 = v195 + 16;
          (*(v195 + 16))(v112 + 2 * v97, v88, v63);
          v114 = v63;
          v160((v112 + 2 * v97), 0, 1, v63);
          v190 = (v113 + 32);
          v192 = (v113 + 16);
          v194 = _swiftEmptyArrayStorage;
          v115 = 3;
          v169 = v112;
          v116 = v189;
          do
          {
            v117 = v97;
            v118 = v191;
            sub_1ED18(v112, v191, &qword_947FC0, &unk_789570);
            sub_5FB980(v118, v116);
            if ((*v190)(v116, 1, v114) == 1)
            {
              sub_10A2C(v116, &qword_947FC0, &unk_789570);
            }

            else
            {
              v119 = *v192;
              (*v192)(v193, v116, v114);
              v120 = v194;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v120 = sub_7B968(0, *(v120 + 2) + 1, 1, v120);
              }

              v122 = *(v120 + 2);
              v121 = *(v120 + 3);
              if (v122 >= v121 >> 1)
              {
                v120 = sub_7B968((v121 > 1), v122 + 1, 1, v120);
              }

              *(v120 + 2) = v122 + 1;
              v123 = (*(v195 + 80) + 32) & ~*(v195 + 80);
              v194 = v120;
              v114 = v196;
              v119(v120 + v123 + *(v195 + 72) * v122, v193);
              v116 = v189;
            }

            v97 = v117;
            v112 += v117;
            --v115;
          }

          while (v115);
          swift_setDeallocating();
          swift_arrayDestroy();
          v66 = v163;
          v53 = v168;
          v63 = v114;
        }

        swift_deallocClassInstance();
        v222 = 0;
        v220 = 0u;
        v221 = 0u;
        sub_1ED18(&v220, v217, &unk_943B10, &qword_77E080);
        v142 = v182;
        v143 = v185;
        v144 = *(v185 + v182[14]);
        v216[3] = &type metadata for CGFloat;
        v216[4] = &protocol witness table for CGFloat;
        v216[0] = v144;
        (*(v171 + 16))(v173, v185 + v182[10], v172);
        (*(v174 + 16))(v176, v143 + v142[11], v175);
        (*(v178 + 104))(v177, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v179);
        sub_75CFA0();
        sub_769DA0();
        sub_5FB9F0(&unk_947FD0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
        sub_7665A0();
        v217[0] = v145;
        v217[1] = v146;
        sub_769DB0();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v180 + 8))(v53, v66);
          v149.n128_f64[0] = (*(v195 + 8))(v183, v63);
          sub_C1DBC(v187, v149);
          sub_10A2C(v223, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v225, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v184, &qword_947FC0, &unk_789570);
          sub_10A2C(v181, &qword_947FC0, &unk_789570);
          goto LABEL_62;
        }

        v58 = v180;
        v59 = v181;
        v60 = v183;
        if (qword_93DE20 != -1)
        {
          swift_once();
        }

        v147 = sub_BE38(v186, qword_9A0178);
        v62 = v153;
        if (sub_19C62C((v185 + v153), v147))
        {

          (*(v58 + 8))(v53, v66);
          v148.n128_f64[0] = (*(v195 + 8))(v60, v63);
          sub_C1DBC(v187, v148);
          sub_10A2C(v223, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v225, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v184, &qword_947FC0, &unk_789570);
          sub_10A2C(v59, &qword_947FC0, &unk_789570);
LABEL_62:
          sub_10A2C(&v220, &unk_943B10, &qword_77E080);

          return;
        }

        if (qword_93DE28 == -1)
        {
LABEL_61:
          v150 = sub_BE38(v186, qword_9A0190);
          sub_19C62C((v185 + v62), v150);

          (*(v58 + 8))(v53, v66);
          v151.n128_f64[0] = (*(v195 + 8))(v60, v63);
          sub_C1DBC(v187, v151);
          sub_10A2C(v223, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v225, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v184, &qword_947FC0, &unk_789570);
          sub_10A2C(v59, &qword_947FC0, &unk_789570);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
}

id sub_5FB0F8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000000007D87C0 == a3 || (sub_76A950() & 1) != 0)
  {
    v9 = sub_769210();
    v10 = sub_769210();
    v11.super.isa = sub_757550().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = sub_769210();
    v11.super.isa = sub_757550().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_5FB24C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_757640();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_769240();
  v13 = v12;
  sub_757590();
  v14 = a3;
  v15 = a1;
  v16 = sub_5FB0F8(v14, v11, v13);

  (*(v8 + 8))(v10, v7);

  return v16;
}

void sub_5FB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000000007D87C0 != a4) && (sub_76A950() & 1) == 0)
  {
    v25 = sub_769210();
    isa = sub_757550().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_4FF230();
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  [*(v14 + v18) setTextAlignment:1];
  v19 = sub_4FF230();
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_93CDC8 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_99D498);
  sub_19CE28(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*&stru_1A8.segname[(swift_isaMask & *v14) + 16])(v13);
  sub_760AB0();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = sub_769210();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_5FB6CC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_757640();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_769240();
  v15 = v14;
  sub_757590();
  v16 = a3;
  v17 = a4;
  v18 = a1;
  sub_5FB38C(v16, v17, v13, v15);

  return (*(v10 + 8))(v12, v9);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController(uint64_t a1)
{
  result = qword_95DD40;
  if (!qword_95DD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5FB980(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947FC0, &unk_789570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5FB9F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5FBA38()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E9D0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_93F1D0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E9D8, qword_7A9348);
  sub_16194(&qword_95E9E0, &qword_95E9D8, qword_7A9348, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9E8, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9F0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FBF50()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E9B0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E9B8, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_949640, &qword_78A480);
  sub_16194(&qword_949658, &qword_949640, &qword_78A480, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9C0, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9C8, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FC468()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E990, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E998, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_944A80, &qword_78A450);
  sub_16194(&qword_944A88, &qword_944A80, &qword_78A450, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E9A0, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E9A8, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FC980()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E970, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_948DB8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E978, &unk_7A9320);
  sub_16194(&qword_95E980, &qword_95E978, &unk_7A9320, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_948DB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E988, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FCE98()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E960, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_9494F8, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_949588, &qword_78A3F8);
  sub_16194(&qword_9495B0, &qword_949588, &qword_78A3F8, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_9494F0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E968, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FD3B0()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E948, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_951BC0, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_94AD38, &qword_78CEC0);
  sub_16194(&qword_94AD40, &qword_94AD38, &qword_78CEC0, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E950, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E958, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FD8C8()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E920, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_959298, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E928, &unk_7A9310);
  sub_16194(&qword_95E930, &qword_95E928, &unk_7A9310, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E938, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E940, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

uint64_t sub_5FDDE0()
{
  v1 = v0;
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_7A25A0;
  sub_603A70(&qword_95E8F0, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_764560();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_764550();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_603A70(&qword_9595A0, type metadata accessor for GenericPageCollectionElementsObserver, &unk_7AC318);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_603A70(&qword_95E8F8, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  v5 = *&v1[qword_99E1D8];

  v6 = v1;
  v7 = v5;
  sub_761840();
  sub_764400();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_7643F0();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_BD88(&qword_95E900, &qword_7A9308);
  sub_16194(&qword_95E908, &qword_95E900, &qword_7A9308, &unk_7A2710);
  sub_763A80();
  sub_761840();
  sub_763D10();
  swift_allocObject();
  *(v2 + 80) = sub_763D00();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_764380();
  swift_allocObject();
  *(v2 + 96) = sub_764370();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_764680();
  swift_allocObject();
  *(v2 + 112) = sub_764670();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_763A80();
  sub_764090();
  swift_allocObject();
  *(v2 + 128) = sub_764080();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_9593B8];
  v10 = sub_603A70(&qword_9595A8, type metadata accessor for TodayCardCollectionElementsObserver, &unk_7A3738);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_9593B0];
  v12 = sub_603A70(&unk_9595B0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver, &unk_785E28);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_603A70(&qword_95E910, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7642A0();
  swift_allocObject();

  *(v2 + 176) = sub_764290();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_9593A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_763C20();
  swift_allocObject();

  *(v2 + 208) = sub_763C10();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_603A70(&qword_95E918, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  sub_7644C0();
  swift_allocObject();
  *(v2 + 224) = sub_7644B0();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_7637E0();
  swift_allocObject();
  return sub_7637D0();
}

void sub_5FE2F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_93F1A8, &unk_77DCC0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_763920();
        sub_603A70(&qword_955DC0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955DC0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_5FE984(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_942C60, &qword_7A9340);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_603ADC;
      v14[1] = v13;
      v17 = v12;

      sub_F704(v15, v16);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955E20, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v18, v19);
    v20 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v20);
    sub_F704(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v21 = objc_allocWithZone(sub_767160());
    v22 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v22);
    sub_762060();
    sub_603A70(&qword_955E20, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_5FEECC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_943500, &qword_782A18);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_603ADC;
      v14[1] = v13;
      v17 = v12;

      sub_F704(v15, v16);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v18, v19);
    v20 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v20);
    sub_F704(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v21 = objc_allocWithZone(sub_767160());
    v22 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v22);
    sub_7625B0();
    sub_603A70(&qword_955E90, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_5FF414(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_944A68, &qword_7840C8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_7639B0();
        sub_603A70(&qword_955F80, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955F80, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_5FFAA0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_947428, &unk_7A9330);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - v8;
  (*(v6 + 16))(&v23 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_99E1B0) = 1;
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    if (sub_7617F0())
    {
      sub_75CA90();
    }

    v11 = qword_9593C0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
      *v14 = sub_603ADC;
      v14[1] = v13;
      v17 = v12;

      sub_F704(v15, v16);
    }

    sub_7617E0();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    v19 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955E40, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v18, v19);
    v20 = sub_7671F0();
    (*&stru_158.segname[swift_isaMask & *v2])(v20);
    sub_F704(v18, v19);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_7617E0();
    sub_767130();
    v21 = objc_allocWithZone(sub_767160());
    v22 = sub_767150();
    (*&stru_158.segname[swift_isaMask & *v2])(v22);
    sub_763F00();
    sub_603A70(&qword_955E40, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    sub_75EBC0();
  }

  else
  {
    (*&stru_158.segname[swift_isaMask & *v2])(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_5FFFE8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_948DD8, &qword_78A170);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_762A00();
        sub_603A70(&qword_955EB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955EB0, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_600674(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_9494B8, &unk_78A330);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_762960();
        sub_603A70(&qword_955D98, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955D98, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_600D00(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_951BA0, &unk_7999C0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_761F50();
        sub_603A70(&qword_955E68, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955E68, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_60138C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&unk_954810, qword_79C938);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_764500();
        sub_603A70(&qword_955E00, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955E00, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603ADC;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

void sub_601A18(uint64_t a1)
{
  v2 = v1;
  v4 = sub_767140();
  __chkstk_darwin(v4 - 8);
  v5 = sub_BD88(&qword_95E8B8, &qword_7A92F8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v77[-v8];
  (*(v6 + 16))(&v77[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v64 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
        v65 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
        sub_761930();

        v66 = *&v2[v64];
        *&v2[v64] = 0;

        v67 = [v2 view];
        if (v67)
        {
          v68 = v67;
          [v67 bounds];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;

          v78 = v70;
          v79 = v72;
          v80 = v74;
          v81 = v76;
          v82 = 0;
          sub_761920();
          (*(v6 + 8))(v9, v5);
          return;
        }

        goto LABEL_19;
      }

      sub_7617E0();
      sub_767130();
      v48 = objc_allocWithZone(sub_767160());
      v49 = sub_767150();
      v50 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
      v51 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
      sub_761930();

      v52 = *&v2[v50];
      *&v2[v50] = v49;
      v53 = v49;

      v54 = [v2 view];
      if (v54)
      {
        v55 = v54;
        [v54 bounds];
        v57 = v56;
        v59 = v58;
        v61 = v60;
        v63 = v62;

        v78 = v57;
        v79 = v59;
        v80 = v61;
        v81 = v63;
        v82 = 0;
        sub_761920();

        sub_7635F0();
        sub_603A70(&qword_955DE0, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
        sub_75EBC0();
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return;
    }

    (*(v6 + 96))(v9, v5);
    v31 = *(v9 + 1);
    v32 = *(v9 + 2);
    sub_767230();
    sub_603A70(&qword_955DE0, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
    swift_errorRetain();

    sub_F714(v31, v32);
    v33 = sub_7671F0();
    v34 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v35 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v36 = *&v2[v34];
    *&v2[v34] = v33;
    v37 = v33;

    v38 = [v2 view];
    if (v38)
    {
      v39 = v38;
      [v38 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v78 = v41;
      v79 = v43;
      v80 = v45;
      v81 = v47;
      v82 = 0;
      sub_761920();

      sub_F704(v31, v32);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_99E1B0] = 1;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  v14 = [v2 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v78 = v17;
  v79 = v19;
  v80 = v21;
  v81 = v23;
  v82 = 0;
  sub_761920();
  if (sub_7617F0())
  {
    sub_75CA90();
  }

  v24 = qword_9593C0;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v29 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver + 8];
    *v27 = sub_603814;
    v27[1] = v26;
    v30 = v25;

    sub_F704(v28, v29);
  }

  sub_7617E0();
}

double sub_6020A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    v5 = sub_7617F0();

    if (v5)
    {
      sub_75CA90();
    }
  }

  return result;
}

char *sub_602134(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_9A0508 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_7634F0();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_95E330) = v11;

  v5 = sub_46DBB0(a1, a2);
  v6 = *&v5[qword_99E1D8];
  v7 = v5;
  v8 = v6;

  sub_75FA40();

  sub_BD88(&qword_9477F0, qword_780200);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77E280;
  *(v9 + 32) = sub_767B80();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = sub_7676E0();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  sub_769900();

  swift_unknownObjectRelease();

  return v7;
}

void sub_6022E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768C60();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    sub_768C20();
    sub_10A2C(v26, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    (*(v8 + 8))(v11, v7);
    sub_BD88(&qword_9477F0, qword_780200);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_77E280;
    *(v20 + 32) = sub_767B80();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = sub_7676F0();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_769900();
    swift_unknownObjectRelease();

    if (qword_93DD00 != -1)
    {
      swift_once();
    }

    v21 = sub_766CA0();
    sub_BE38(v21, qword_99FE48);
    sub_766470();
    sub_766700();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_6026DC(void *a1)
{
  v1 = a1;
  sub_6022E0();
}

void sub_602788(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_6028D0(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_602A34(void *a1)
{
  v1 = a1;
  sub_602A0C();
}

uint64_t sub_602AA4(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v6 + v15, v22);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_602D38(void *a1)
{
  v1 = a1;
  sub_602A7C();
}

id sub_602D80()
{
  v1 = v0;
  swift_getObjectType();
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_77DC20;
  sub_BD88(&qword_95E8E0, &qword_7A9300);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_763BB0();
  v4 = sub_16194(&qword_95E8E8, &qword_95E8E0, &qword_7A9300, &protocol conformance descriptor for SearchAdsCollectionElementsObserver<A, B>);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_603A70(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "ez\r");
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_603A70(&qword_95E8D0, type metadata accessor for SearchFocusDiffablePageViewController, &unk_7A2710);
  sub_763A80();
  sub_761840();

  result = [v1 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v2 + 64) = sub_764310();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_7637E0();
    swift_allocObject();
    v8 = sub_7637D0();
    sub_5FDDE0();
    if (swift_dynamicCastClass())
    {
      sub_7637B0();
      sub_7637C0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_603054@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_603884();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_603088@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_603A70(&qword_95E8D0, type metadata accessor for SearchFocusDiffablePageViewController, &unk_7A2710);
  sub_763A80();
  v3 = sub_763A60();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  v4 = sub_763A50();
  v21[3] = swift_getObjectType();
  v21[0] = v4;
  sub_132B4(v20, v19);
  sub_13310(v19, v17);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_7ACBC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    *&v5[2 * v7 + 4] = v15;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v21, v19);
  sub_13310(v19, v17);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && v18)
  {
    v16 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7ACBC(0, *(v5 + 2) + 1, 1, v5);
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    v10 = v16;
    if (v9 >= v8 >> 1)
    {
      v14 = sub_7ACBC((v8 > 1), v9 + 1, 1, v5);
      v10 = v16;
      v5 = v14;
    }

    *(v5 + 2) = v9 + 1;
    *&v5[2 * v9 + 4] = v10;
  }

  swift_arrayDestroy();
  v11 = *(v1 + qword_99E1F8);
  v12 = type metadata accessor for SearchFocusLayoutSectionProvider(0);
  swift_allocObject();

  result = sub_486154(v22, v5, v11);
  a1[3] = v12;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_603368@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  swift_allocObject();
  v4 = sub_75A3B0();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_603830();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_603410(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_9A0508];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_6034C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_603A70(&qword_95E8C0, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider, &unk_780DC8);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_603574(uint64_t a1)
{
  v2 = sub_BD88(&qword_95E8B8, &qword_7A92F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_601A18(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_763480();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_6036AC()
{

  v1 = v0 + qword_9A0508;

  return sub_13238(v1);
}

uint64_t sub_6036EC(uint64_t a1)
{

  v2 = a1 + qword_9A0508;

  return sub_13238(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController(uint64_t a1)
{
  result = qword_95E360;
  if (!qword_95E360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6037DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_603830()
{
  result = qword_95E8C8;
  if (!qword_95E8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95E8C8);
  }

  return result;
}

unint64_t sub_603884()
{
  result = qword_95E8D8;
  if (!qword_95E8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95E8D8);
  }

  return result;
}

void sub_6038D8(void *a1)
{
  v2 = sub_76A920();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DD00 != -1)
  {
    swift_once();
  }

  v6 = sub_766CA0();
  sub_BE38(v6, qword_99FE48);
  sub_766470();
  sub_766700();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_603A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_603AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_76A810();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_603D8C(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v21 + 16);
      sub_45A478(v19, a7, isUniquelyReferenced_nonNull_native, v28);
      *(v21 + 16) = v33;
      swift_endAccess();
    }

    swift_beginAccess();
    v29 = swift_weakLoadStrong();
    if (v29)
    {
      v30 = v29;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v31 = *(v30 + 32);
        ObjectType = swift_getObjectType();
        (*(v31 + 8))(v30, v19, a8, ObjectType, v31);

        swift_unknownObjectRelease();
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

uint64_t sub_603D28()
{

  sub_13238(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_603D8C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_BD88(&unk_9453A0, &unk_79E300);
    v2 = sub_76A8A0();
    v20 = v2;
    sub_76A800();
    v3 = sub_76A830();
    if (v3)
    {
      v4 = v3;
      sub_765390();
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_603FC8();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_457990(v13 + 1, 1);
        }

        v2 = v20;
        sub_604014(v12);
        result = sub_769150();
        v7 = v20 + 64;
        v8 = -1 << *(v20 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v10 == v15;
            if (v10 == v15)
            {
              v10 = 0;
            }

            v14 |= v16;
            v17 = *(v7 + 8 * v10);
          }

          while (v17 == -1);
          v11 = __clz(__rbit64(~v17)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v20 + 48) + 8 * v11) = v19;
        *(*(v20 + 56) + 8 * v11) = v18;
        ++*(v20 + 16);
        v5 = sub_76A830();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_603FC8()
{
  result = qword_947630;
  if (!qword_947630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_947630);
  }

  return result;
}

unint64_t sub_604014(__n128 a1)
{
  result = qword_955908;
  if (!qword_955908)
  {
    sub_765390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_955908);
  }

  return result;
}

double *sub_60406C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_76A7C0();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_7650D0();
      }

      sub_765330();

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_604180(uint64_t a1, double (*a2)(double, double), double a3, double a4)
{
  v9 = sub_7672E0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  __chkstk_darwin(v16);
  v18 = &v40[-v17];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  v22 = a2(a3, a4);
  v23 = [v4 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == &dword_0 + 2)
  {
    v25 = 635.0;
  }

  else
  {
    v25 = a3;
  }

  if (v25 <= v22)
  {
    sub_134D8(a1, v42);
    *(v21 + 3) = &type metadata for CGFloat;
    *(v21 + 4) = &protocol witness table for CGFloat;
    *v21 = v25;
    v34 = *(v10 + 104);
    v34(v21, enum case for Resize.Rule.replaced(_:), v9);
    v35 = enum case for Resize.Rule.unchanged(_:);
    v34(v18, enum case for Resize.Rule.unchanged(_:), v9);
    v34(v15, v35, v9);
    v34(v12, v35, v9);
    v44 = sub_7672F0();
    v45 = &protocol witness table for Resize;
    sub_B1B4(v43);
    sub_767300();
  }

  else
  {
    sub_766DC0();
    v27 = v26;
    v29 = v28;
    sub_134D8(a1, v42);
    sub_766DC0();
    v31 = v30;
    v33 = v32;
    v44 = sub_7673C0();
    v45 = &protocol witness table for Constrain;
    sub_B1B4(v43);
    v41 = v31 & 1;
    v40[0] = v33 & 1;
    sub_7673D0();
    v42[0] = v27 & 1;
    v41 = v29 & 1;
    sub_766DE0();
  }

  sub_B170(v43, v44);
  v36 = [v4 traitCollection];
  sub_7673F0();
  v38 = v37;

  sub_BEB8(v43);
  return v38;
}

uint64_t sub_60459C(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_7664A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_766CA0();
  sub_161DC(v10, a3);
  sub_BE38(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_B1B4(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_766CB0();
  return (*(v7 + 8))(v9, v6);
}

char *sub_60470C(double a1, double a2, double a3, double a4)
{
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v66 - v10);
  v12 = sub_760370();
  __chkstk_darwin(v12 - 8);
  v13 = sub_7603D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7602F0();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_760360();
  sub_760300();
  v21 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v21] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  *&v4[v25] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v26 = &v4[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler];
  v27 = type metadata accessor for CarouselItemTextOverlay(0);
  *v26 = 0;
  *(v26 + 1) = 0;
  v70.receiver = v4;
  v70.super_class = v27;
  v28 = objc_msgSendSuper2(&v70, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 setOverrideUserInterfaceStyle:2];
  [v32 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v33 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  v34 = qword_93DBC0;
  v35 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_7666D0();
  v37 = sub_BE38(v36, qword_99FB38);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v39(v11, v37, v36);
  v68 = *(v38 + 56);
  v68(v11, 0, 1, v36);
  sub_75BA40();

  [*&v32[v33] setNumberOfLines:1];
  v40 = *&v32[v33];
  v41 = objc_opt_self();
  v42 = v40;
  v67 = v41;
  v43 = [v41 secondaryLabelColor];
  v44 = v33;
  v45 = v43;
  [v42 setTextColor:v43];

  v69 = v44;
  v46 = [*&v32[v44] layer];
  [v46 setCompositingFilter:kCAFilterPlusL];

  v47 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  v48 = qword_93DBD0;
  v49 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  if (v48 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v36, qword_99FB68);
  v39(v11, v50, v36);
  v51 = v68;
  v68(v11, 0, 1, v36);
  sub_75BA40();

  [*&v32[v47] setNumberOfLines:2];
  v52 = *&v32[v47];
  v66 = v47;
  v53 = v67;
  v54 = [v67 labelColor];
  [v52 setTextColor:v54];

  v55 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  v56 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  *v11 = UIFontTextStyleFootnote;
  v11[1] = UIFontWeightBold;
  (*(v38 + 104))(v11, enum case for FontUseCase.preferredFontDerivative(_:), v36);
  v51(v11, 0, 1, v36);
  v57 = v56;
  v58 = UIFontTextStyleFootnote;
  sub_75BA40();

  [*&v32[v55] setNumberOfLines:1];
  v59 = *&v32[v55];
  v60 = [v53 labelColor];
  [v59 setTextColor:v60];

  v61 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  [*&v32[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer] setEnabled:0];
  v62 = *&v32[v61];
  v63 = v32;
  [v62 addTarget:v63 action:"handleSelection:"];
  v64 = *&v32[v61];
  [v64 setDelegate:v63];

  [v63 addGestureRecognizer:*&v32[v61]];
  [v63 addSubview:*&v32[v69]];
  [v63 addSubview:*&v32[v66]];
  [v63 addSubview:*&v32[v55]];
  sub_605C94();

  return v63;
}

uint64_t sub_605068@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  ObjectType = swift_getObjectType();
  v58 = sub_766950();
  v60 = *(v58 - 8);
  __chkstk_darwin(v58);
  v4 = &v52[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v54 = &v52[-v6];
  __chkstk_darwin(v7);
  v55 = &v52[-v8];
  __chkstk_darwin(v9);
  v56 = &v52[-v10];
  v11 = sub_7602F0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v52[-v16];
  v18 = sub_7603E0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v52[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v19 + 16))(v21, &v2[v22], v18);
  sub_760310();
  (*(v19 + 8))(v21, v18);
  v23.n128_f64[0] = (*(v12 + 104))(v14, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v11);
  sub_6067BC(v23);
  sub_769430();
  sub_769430();
  if (v61 == v64)
  {
    v53 = 1;
  }

  else
  {
    v53 = sub_76A950();
  }

  v24 = *(v12 + 8);
  v24(v14, v11);
  v24(v17, v11);

  sub_766930();
  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  v26 = sub_75BB20();
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v25;
  v27 = swift_allocObject();
  v28 = v4;
  v29 = ObjectType;
  *(v27 + 16) = v2;
  *(v27 + 24) = v29;
  v30 = v25;
  v31 = v2;
  v32 = v54;
  sub_766940();

  v33 = *(v60 + 8);
  v34 = v58;
  v33(v28, v58);
  sub_BEB8(&v61);
  v35 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v29;
  v37 = v31;
  v38 = v35;
  v39 = v55;
  sub_766940();

  v33(v32, v34);
  sub_BEB8(&v61);
  v40 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  v62 = v26;
  v63 = &protocol witness table for UILabel;
  *&v61 = v40;
  v41 = swift_allocObject();
  v42 = ObjectType;
  *(v41 + 16) = v37;
  *(v41 + 24) = v42;
  v43 = v37;
  v44 = v40;
  v45 = v56;
  sub_766940();

  v33(v39, v34);
  sub_BEB8(&v61);
  if (v53)
  {
    v62 = v34;
    v63 = &protocol witness table for VerticalStack;
    v46 = sub_B1B4(&v61);
    (*(v60 + 16))(v46, v45, v34);
    sub_767270();
    v47 = sub_7672A0();
    v48 = v57;
    v57[3] = v47;
    v48[4] = &protocol witness table for Center;
    sub_B1B4(v48);
    sub_7672B0();
    return (v33)(v45, v34);
  }

  else
  {
    v50 = v57;
    v57[3] = v34;
    v50[4] = &protocol witness table for VerticalStack;
    v51 = sub_B1B4(v50);
    return (*(v60 + 32))(v51, v45, v34);
  }
}

uint64_t sub_60567C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v23 = a7;
  v24 = a6;
  v9 = sub_7602F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7603E0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, a3 + v17, v13);
  sub_760310();
  (*(v14 + 8))(v16, v13);
  sub_7602D0();
  (*(v10 + 8))(v12, v9);
  sub_7668E0();
  v18 = sub_766900();
  sub_766920();
  sub_766920();
  if (sub_766920() != v18)
  {
    sub_766920();
  }

  sub_7668D0();
  if (*a5 != -1)
  {
    swift_once();
  }

  v19 = sub_766CA0();
  v20 = sub_BE38(v19, v24);
  v25[3] = v19;
  v25[4] = &protocol witness table for StaticDimension;
  v21 = sub_B1B4(v25);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  return sub_7668B0();
}

uint64_t sub_605914(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_7602F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7603E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v9 + 16))(v11, a3 + v12, v8);
  sub_760310();
  (*(v9 + 8))(v11, v8);
  sub_7602D0();
  (*(v5 + 8))(v7, v4);
  sub_7668E0();
  sub_BD88(&unk_95B470, &qword_7A3490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77E280;
  v14 = sub_766900();
  *(inited + 32) = v14;
  v15 = sub_766910();
  *(inited + 40) = v15;
  sub_766920();
  sub_766920();
  if (sub_766920() != v14)
  {
    sub_766920();
  }

  sub_766920();
  if (sub_766920() != v15)
  {
    sub_766920();
  }

  sub_7668D0();
  if (qword_93DF58 != -1)
  {
    swift_once();
  }

  v16 = sub_766CA0();
  v17 = sub_BE38(v16, qword_95EB20);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_B1B4(v23);
  v19 = *(*(v16 - 8) + 16);
  v19(v18, v17, v16);
  sub_7668B0();
  if (qword_93DF60 != -1)
  {
    swift_once();
  }

  v20 = sub_BE38(v16, qword_95EB38);
  v24 = v16;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_B1B4(v23);
  v19(v21, v20, v16);
  return sub_7668C0();
}

id sub_605C94()
{
  v1 = v0;
  v47 = sub_760370();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v45 - v4;
  __chkstk_darwin(v5);
  v45 = &v45 - v6;
  v7 = sub_7602F0();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7603E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v45 - v14;
  __chkstk_darwin(v15);
  v52 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  v21 = *(v11 + 16);
  (v21)(v19, &v0[v20], v10);
  sub_760310();
  v22 = *(v11 + 8);
  v22(v19, v10);
  v23 = [v0 traitCollection];
  v24 = sub_7602E0();

  v53[1](v9, v54);
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  v51 = v24;
  [v25 setTextAlignment:v24];
  v53 = v21;
  v54 = v20;
  v26 = &v1[v20];
  v27 = v1;
  v28 = v52;
  (v21)(v52, v26, v10);
  v29 = v45;
  sub_760380();
  v30 = v28;
  v31 = v10;
  v52 = (v11 + 8);
  v22(v30, v10);
  v32 = sub_760340();
  v33 = *(v55 + 8);
  v34 = v47;
  v55 += 8;
  v33(v29, v47);
  if (!v32)
  {
    v32 = [objc_opt_self() secondaryLabelColor];
  }

  [v25 setTextColor:v32];

  v35 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  [v35 setTextAlignment:v51];
  v36 = v46;
  v37 = v31;
  (v53)(v46, &v27[v54], v31);
  v38 = v48;
  sub_760380();
  v22(v36, v37);
  v39 = sub_760350();
  v33(v38, v34);
  if (!v39)
  {
    v39 = [objc_opt_self() labelColor];
  }

  [v35 setTextColor:v39];

  v40 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  [v40 setTextAlignment:v51];
  v41 = v49;
  (v53)(v49, &v27[v54], v37);
  v42 = v50;
  sub_760380();
  v22(v41, v37);
  v43 = sub_760330();
  v33(v42, v34);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v40 setTextColor:v43];

  return [v27 setNeedsLayout];
}

id sub_6062E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemTextOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemTextOverlay(uint64_t a1)
{
  result = qword_95EBA0;
  if (!qword_95EBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_606434(uint64_t a1)
{
  result = sub_7603E0();
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

uint64_t sub_6064E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_F714(a1, a2);
  sub_F714(a1, a2);
  sub_F704(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_F704(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_F704(a1, a2);
}

id sub_606594()
{
  v1 = v0;
  v2 = sub_7603E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7603F0();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v6], v5, v2);
  swift_endAccess();
  sub_605C94();
  (*(v3 + 8))(v5, v2);
  v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel];
  sub_760450();
  if (v8)
  {
    v9 = sub_769210();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel];
  sub_760460();
  if (v11)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel];
  v14 = sub_760420();
  v16 = sub_57D1A4(v14, v15, [v1 effectiveUserInterfaceLayoutDirection]);

  [v13 setAttributedText:v16];

  return [v1 setNeedsLayout];
}

unint64_t sub_6067BC(__n128 a1)
{
  result = qword_95B460;
  if (!qword_95B460)
  {
    sub_7602F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95B460);
  }

  return result;
}

uint64_t sub_606814()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_6068CC()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7602F0();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_760360();
  sub_760300();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_badgeLabel;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v10) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_titleLabel;
  *(v0 + v12) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_callToActionLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_tapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v15 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider23CarouselItemTextOverlay_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  sub_76A840();
  __break(1u);
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_606C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_75E770();
  sub_768900();
  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate] = v19;
  sub_4A17C();
  sub_768ED0();
  v5 = v19;
  sub_75A920();
  sub_768ED0();
  v6 = sub_75A910();
  v7 = [v19 ams_activeiTunesAccount];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for WebViewController();
  v8 = objc_msgSendSuper2(&v18, "initWithBag:account:clientInfo:", v6, v7, 0);
  swift_unknownObjectRelease();

  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 tableViewAppearance];
  [v10 setAppearance:v11];

  [v10 setDelegate:v10];
  sub_757040(v12);
  v14 = v13;
  v15 = [v10 loadURL:v13];

  v16 = sub_7570A0();
  (*(*(v16 - 8) + 8))(a1, v16);
  return v10;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_607074(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_607108(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_75E760();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899E78;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_75E750();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_607798;
  aBlock[3] = &unk_899EA0;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

double sub_60729C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_60740C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a2)
  {
    v6 = sub_756F60();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_607724()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6077E4(__n128 a1)
{
  v1 = sub_763560();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7604B0();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v9 + 8))(v11, v8);
  (*(v2 + 104))(v4, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v1);
  sub_28FF04(v4, v7);
  (*(v2 + 8))(v4, v1);
  sub_75DA40();
  sub_7604D0();
  sub_607AB4(&unk_94B7F0, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  sub_766ED0();
  v13 = v12;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v16);
  return v13;
}

uint64_t sub_607AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_607AFC()
{
  sub_BD88(&unk_95D700, qword_7A95B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_780120;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  sub_1A210C(inited);
  v8 = v7;
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_95EC40 = v8;
  return result;
}

id sub_607E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_607F8C()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v5 = sub_76A000();
    [v4 setBackgroundColor:v5];

    sub_60929C(&qword_95ECE8, v6, type metadata accessor for PurchasesLoadingViewController, &unk_7A9638);
    swift_unknownObjectRetain();
    sub_75D970();
    sub_75A160();
    sub_767130();
    v7 = objc_allocWithZone(sub_767160());
    v8 = sub_767150();
    v9 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
    sub_761930();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      sub_761920();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_608264(uint64_t a1)
{
  v44.receiver = v1;
  v44.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v44, "viewDidLayoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        [v5 setFrame:{v9, v11, v13, v15}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases];
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = [v17 view];
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v1 view];
  if (!v20)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20;
  [v20 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v19 setFrame:{v23, v25, v27, v29}];
LABEL_9:
  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v30)
  {
    return;
  }

  v31 = v30;
  v32 = [v31 view];
  if (!v32)
  {
    goto LABEL_18;
  }

  v33 = v32;
  v34 = [v1 view];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v35 = v34;
  [v34 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  [v33 setFrame:{v37, v39, v41, v43}];
}

id sub_6084D8()
{
  v1 = v0;
  v2 = sub_7684B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46[5] = v12;
  v46[6] = v14;
  v46[7] = v16;
  v46[8] = v18;
  v47 = 0;
  result = sub_761920();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_BD88(&qword_955BF8, &qword_79E760);
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph];
  sub_768900();
  sub_768ED0();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v45[0] = 1;
  sub_768490();
  sub_7688C0();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v45[0]) = 1;
  sub_768490();
  v22 = sub_7688C0();

  v21(v5, v2);
  v44[0] = v22;
  v44[1] = sub_1362C(v22);
  v44[2] = v23;
  sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);

  sub_768ED0();
  sub_134D8(v46, v45);
  sub_BD88(&qword_955CB0, &qword_79E768);
  v24 = sub_75ED10();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77E280;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  sub_7616C0();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_761610();
  v32 = sub_60929C(&qword_955CB8, 255, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);

  v33 = sub_6A0B30(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000000007EDBB0);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_5AB0B4(v31, v33, v35);
  v36 = *&v1[v19];
  *&v1[v19] = v37;
  v38 = v37;

  v39 = v38;
  [v39 willMoveToParentViewController:v1];
  [v1 addChildViewController:v39];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v40 = result;
  result = [v39 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v41 = result;
  [v40 addSubview:result];

  [v39 didMoveToParentViewController:v1];
  v42 = [v39 title];

  [v1 setTitle:v42];
  v43 = [v39 collectionView];
  [v1 setContentScrollView:v43 forEdge:15];
  swift_unknownObjectRelease();

  return sub_BEB8(v46);
}

void sub_608A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_768E70();
  __chkstk_darwin(v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v8 = *&v3[v6];
  *&v3[v6] = 0;

  v9 = [v3 view];
  if (!v9)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  [v9 bounds];

  sub_761920();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases;
  if (*&v3[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases])
  {
    return;
  }

  v12 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph];
  sub_768900();

  sub_768ED0();
  sub_760C10();
  swift_allocObject();
  v13 = sub_760B80();
  v14 = sub_60929C(&qword_95ECE0, 255, &type metadata accessor for FamilyPurchasesPresenter, &protocol conformance descriptor for BasePresenter);

  v15 = sub_6A0B30(v12, v13, v14, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000000007EDB90);
  v16 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v17 = sub_2CB40(v13, v15);
  v18 = *&v4[v11];
  *&v4[v11] = v17;
  v19 = v17;

  v20 = v19;
  [v20 willMoveToParentViewController:v4];
  [v4 addChildViewController:v20];
  v21 = [v4 view];
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  v23 = [v20 view];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v24 = v23;
  [v22 addSubview:v23];

  [v20 didMoveToParentViewController:v4];
  v25 = [v20 title];

  [v4 setTitle:v25];
  v26 = [v20 collectionView];
  [v4 setContentScrollView:v26 forEdge:15];
}

void sub_608E24()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

id sub_608F7C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController];
  sub_761930();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_761920();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_609074(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_6091B0(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_objectGraph] = a2;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_60929C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_6092F8()
{
  result = qword_94FBB0;
  if (!qword_94FBB0)
  {
    sub_759240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBB0);
  }

  return result;
}

uint64_t sub_609350()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0, qword_77DE00);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

void sub_609438(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];
    if (v3)
    {
      v4 = v3;
      isa = sub_757550().super.isa;
      [v2 collectionView:v4 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_609500()
{
  v1 = v0;
  v47 = swift_isaMask & *v0;
  v2 = sub_768380();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v52 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_7683C0();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_7683E0();
  v49 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v48 = &v46 - v8;
  v9 = sub_757640();
  v57 = *(v9 - 8);
  v58 = v9;
  v10 = *(v57 + 64);
  __chkstk_darwin(v9);
  v46 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v59 = &v46 - v12;
  v13 = sub_762BD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_9593C8;
  swift_beginAccess();
  v18 = *(v0 + v17);
  if (!v18)
  {
    return;
  }

  v19 = v18;
  aBlock[6] = sub_761DA0();
  aBlock[7] = v20;
  sub_76A6E0();
  sub_762BE0();
  sub_762D70();
  v22 = v21;

  (*(v14 + 8))(v16, v13);
  if (v22)
  {
    return;
  }

  sub_761D90();
  v23 = v59;
  sub_7575B0();
  v24 = [v1 collectionView];
  if (!v24)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = v24;
  v26.super.isa = sub_757550().super.isa;
  v27 = [v1 collectionView];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 contentInset];
  v30 = v29;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v30, 0.0, 0.0, 0.0}];
  if (sub_761D80())
  {
    sub_761D90();
    if ((v31 & 1) == 0)
    {
      sub_12EA98();
      v32 = sub_769970();
      sub_7683D0();
      v33 = v48;
      sub_768450();
      v49 = *(v49 + 8);
      (v49)(v6, v56);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = v57;
      v35 = v58;
      v37 = v46;
      (*(v57 + 16))(v46, v59, v58);
      v38 = (*(v36 + 80) + 80) & ~*(v36 + 80);
      v39 = swift_allocObject();
      v40 = v47;
      *(v39 + 16) = *(v47 + 560);
      *(v39 + 24) = *(v40 + 568);
      *(v39 + 40) = *(v40 + 584);
      *(v39 + 48) = *(v40 + 592);
      *(v39 + 64) = *(v40 + 608);
      *(v39 + 72) = v34;
      (*(v36 + 32))(v39 + v38, v37, v35);
      aBlock[4] = sub_609D40;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_899FE8;
      v41 = _Block_copy(aBlock);

      v42 = v50;
      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_4C81C();
      sub_BD88(&qword_940350, &unk_77F850);
      sub_4C874();
      v43 = v52;
      v44 = v55;
      sub_76A5A0();
      sub_769930();
      _Block_release(v41);

      (*(v54 + 8))(v43, v44);
      v45 = v42;
      v23 = v59;
      (*(v51 + 8))(v45, v53);
      (v49)(v33, v56);
    }
  }

  (*(v57 + 8))(v23, v58);
}

uint64_t sub_609C44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_609C7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 80) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

double sub_609DEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_10914(a4, a7 + 480);
  sub_10914(a5, a7 + 520);

  return sub_10914(a6, a7 + 560);
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v87 = a2;
  v88 = sub_7664F0();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v6[13];
  sub_B170(v7 + 10, v18);
  sub_33964(v18);
  sub_766700();
  v80 = v19;
  v20 = *(v15 + 8);
  v20(v17, v14);
  v21 = v7[3];
  sub_B170(v7, v21);
  sub_33964(v21);
  sub_766700();
  v23 = v22;
  v20(v17, v14);
  v24 = v7[8];
  sub_B170(v7 + 5, v24);
  sub_33964(v24);
  sub_766700();
  v26 = v25;
  *&v85[0] = v20;
  v20(v17, v14);
  ObjectType = swift_getObjectType();
  v27 = sub_60BBA8(a1, v7, ObjectType, a5, a6);
  if (v23 > v27)
  {
    v27 = v23;
  }

  if (v27 >= v26)
  {
    v27 = v26;
  }

  v78 = v27;
  sub_6D310((v7 + 50), &v94);
  v28 = v96;
  if (v96)
  {
    sub_10914(&v94, v89);
    sub_B170(v89, v90);
    sub_7665B0();
    v30 = v29;
    v32 = v31;
    v102.origin.x = a3;
    v102.origin.y = a4;
    v102.size.width = a5;
    v102.size.height = a6;
    v33 = CGRectGetMidX(v102) + v30 * -0.5;
    v103.origin.x = a3;
    v103.origin.y = a4;
    v103.size.width = a5;
    v103.size.height = a6;
    MinY = CGRectGetMinY(v103);
    sub_B170(v89, v90);
    sub_769D20();
    sub_766530();
    sub_BEB8(v89);
  }

  else
  {
    sub_10A2C(&v94, &unk_943B10, &qword_77E080);
    v33 = 0.0;
    MinY = 0.0;
    v30 = 0.0;
    v32 = 0.0;
  }

  *&v82 = v7 + 35;
  sub_6D310((v7 + 55), &v94);
  v81 = a6;
  if (v96)
  {
    sub_10914(&v94, v89);
    if (v28)
    {
      v104.origin.x = v33;
      v104.origin.y = MinY;
      v104.size.width = v30;
      v104.size.height = v32;
      MaxY = CGRectGetMaxY(v104);
    }

    else
    {
      v105.origin.x = a3;
      v105.origin.y = a4;
      v105.size.width = a5;
      v105.size.height = a6;
      MaxY = CGRectGetMinY(v105);
    }

    v43 = v80 + MaxY;
    v106.origin.x = a3;
    v106.origin.y = a4;
    v106.size.width = a5;
    v106.size.height = a6;
    MinX = CGRectGetMinX(v106);
    v107.origin.x = a3;
    v107.origin.y = a4;
    v107.size.width = a5;
    v107.size.height = a6;
    Width = CGRectGetWidth(v107);
    sub_B170(v89, v90);
    v37 = a5;
    v38 = a4;
    v79 = Width;
    v80 = v43;
    v41 = v78;
    sub_769D20();
    sub_766530();
    sub_BEB8(v89);
  }

  else
  {
    sub_10A2C(&v94, &unk_943B10, &qword_77E080);
    if (v28)
    {
      v36 = v33;
    }

    else
    {
      v36 = a3;
    }

    v37 = a5;
    v38 = a4;
    if (v28)
    {
      v39 = MinY;
    }

    else
    {
      v39 = a4;
    }

    if (v28)
    {
      v40 = v30;
    }

    else
    {
      v40 = 0.0;
    }

    v79 = v40;
    v80 = v39;
    if (v28)
    {
      v41 = v32;
    }

    else
    {
      v41 = 0.0;
    }

    MinX = v36;
  }

  v78 = MinX;
  v45 = v7[23];
  sub_B170(v7 + 20, v45);
  sub_33964(v45);
  sub_766700();
  v47 = v46;
  v48 = v85[0];
  (*&v85[0])(v17, v14);
  v49 = v7[18];
  sub_B170(v7 + 15, v49);
  sub_33964(v49);
  sub_766700();
  v51 = v50;
  (*&v48)(v17, v14);
  v52 = v7[28];
  sub_B170(v7 + 25, v52);
  sub_33964(v52);
  sub_766700();
  v54 = v53;
  (*&v48)(v17, v14);
  sub_134D8((v7 + 30), v97);
  v55 = *(v82 + 32);
  v56 = *(v82 + 16);
  *v85 = *v82;
  v82 = v56;
  sub_134D8((v7 + 40), &v100);
  sub_134D8((v7 + 45), &v101);
  *&v94 = v51;
  *(&v94 + 1) = v47;
  v95 = v54;
  v96 = v47;
  v98 = v82;
  *&v97[40] = *v85;
  v99 = v55;
  sub_23A450(&v94, v89);
  sub_134D8((v7 + 60), &v91);
  sub_134D8((v7 + 65), &v92);
  sub_134D8((v7 + 70), &v93);
  v108.origin.x = a3;
  v108.origin.y = v38;
  v108.size.width = v37;
  v57 = v37;
  v58 = v81;
  v108.size.height = v81;
  v59 = CGRectGetMinX(v108);
  v109.origin.x = MinX;
  v61 = v79;
  v60 = v80;
  v109.origin.y = v80;
  v109.size.width = v79;
  v109.size.height = v41;
  v77 = CGRectGetMaxY(v109);
  v110.origin.x = a3;
  v110.origin.y = v38;
  v110.size.width = v57;
  v110.size.height = v58;
  v62 = CGRectGetWidth(v110);
  v85[0] = a3;
  v111.origin.x = a3;
  v63 = v59;
  v64 = v62;
  *&v82 = v38;
  v111.origin.y = v38;
  v111.size.width = v57;
  v111.size.height = v58;
  v65 = CGRectGetMaxY(v111);
  v112.size.height = v41;
  v66 = v65;
  v112.origin.y = v60;
  v112.size.width = v61;
  v67 = v77;
  v112.origin.x = v78;
  v68 = v66 - CGRectGetMaxY(v112);
  sub_60BF54(a1, v89, v64, v68);
  v70 = v69;
  v113.origin.x = v63;
  v113.origin.y = v67;
  v113.size.width = v64;
  v113.size.height = v68;
  if (v70 <= CGRectGetHeight(v113))
  {
    v72 = v84;
    sub_60A934(v84, v63, v67, v64, v68);
  }

  else
  {
    v72 = v84;
    v71.n128_f64[0] = v63;
    sub_60AE40(a1, v84, v71, v67, v64, v68);
  }

  sub_7664E0();
  sub_7664D0();
  v73 = v85[0];
  v114.origin.x = v85[0];
  v74 = *&v82;
  *&v114.origin.y = v82;
  v114.size.width = v57;
  v114.size.height = v58;
  CGRectGetHeight(v114);
  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v57;
  v115.size.height = v58;
  CGRectGetMinX(v115);
  v116.origin.x = v73;
  v116.origin.y = v74;
  v116.size.width = v57;
  v116.size.height = v58;
  CGRectGetMinY(v116);
  v117.origin.x = v73;
  v117.origin.y = v74;
  v117.size.width = v57;
  v117.size.height = v58;
  CGRectGetWidth(v117);
  sub_7664B0();
  (*(v86 + 8))(v72, v88);
  sub_23AABC(v89);
  return sub_23AB10(&v94);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v3[3];
  sub_B170(v4, v12);
  sub_33964(v12);
  sub_766700();
  v13 = *(v9 + 8);
  v13(v11, v8);
  ObjectType = swift_getObjectType();
  sub_60BBA8(a1, v4, ObjectType, a2, a3);
  v15 = v4[8];
  sub_B170(v4 + 5, v15);
  sub_33964(v15);
  sub_766700();
  v13(v11, v8);
  return a2;
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t sub_60A934@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v26[3] = a2;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v6 + 8);
  v17 = *(v6 + 24);
  v18 = *(v6 + 136);
  sub_B170(v7 + 14, v18);
  sub_33964(v18);
  sub_766700();
  v26[1] = v19;
  v20 = *(v13 + 8);
  v20(v15, v12);
  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  v21 = CGRectGetWidth(v27) - v16 - v17;
  v28.origin.x = a3;
  v28.origin.y = a4;
  v28.size.width = a5;
  v28.size.height = a6;
  CGRectGetHeight(v28);
  sub_B170(v7 + 24, v7[27]);
  *&v26[2] = v21;
  sub_7665B0();
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGRectGetMidX(v29);
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetMinY(v30);
  sub_B170(v7 + 24, v7[27]);
  sub_769D20();
  sub_766530();
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMaxY(v31);
  v22 = v7[22];
  sub_B170(v7 + 19, v22);
  sub_33964(v22);
  sub_766700();
  v20(v15, v12);
  sub_B170(v7 + 34, v7[37]);
  v23 = sub_766540();
  sub_B170(v7 + 34, v7[37]);
  if ((v23 & 1) == 0)
  {
    sub_7665B0();
    v32.origin.x = a3;
    v32.origin.y = a4;
    v32.size.width = a5;
    v32.size.height = a6;
    CGRectGetMidX(v32);
    sub_B170(v7 + 34, v7[37]);
    sub_769D20();
  }

  sub_766530();
  sub_B170(v7 + 29, v7[32]);
  if (sub_766540())
  {
    sub_B170(v7 + 29, v7[32]);
  }

  else
  {
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetWidth(v33);
    v24 = v7[7];
    sub_B170(v7 + 4, v24);
    sub_33964(v24);
    sub_766700();
    v20(v15, v12);
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMidX(v34);
    sub_B170(v7 + 29, v7[32]);
    sub_769D20();
  }

  sub_766530();
  return sub_7664B0();
}

uint64_t sub_60AE40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v62 = a1;
  v11 = a3.n128_f64[0];
  v68 = a2;
  v85 = sub_75E800();
  v77 = *(v85 - 8);
  v90 = v77;
  __chkstk_darwin(v85);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_75E820();
  v89 = *(v87 - 8);
  __chkstk_darwin(v87);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_75E840();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v15;
  v67 = sub_75E870();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_76A920();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v63 = *(v6 + 8);
  v21 = v63;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v100.origin.x = v11;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  v64 = CGRectGetWidth(v100) - v21 - v24;
  v101.origin.x = v11;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetWidth(v101);
  v25 = *(v6 + 56);
  sub_B170(v7 + 4, v25);
  sub_33964(v25);
  sub_766700();
  (*(v18 + 8))(v20, v17);
  sub_BD88(&qword_9417D8, &unk_780EB0);
  v26 = *(sub_75E850() - 8);
  v58 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v60 = 2 * v58;
  v28 = swift_allocObject();
  v86 = xmmword_77DC20;
  v61 = v28;
  *(v28 + 16) = xmmword_77DC20;
  v70 = v28 + v27;
  v82 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v29 = *(v91 + 104);
  v83 = v91 + 104;
  v84 = v29;
  v29(v15);
  v81 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v30 = v89;
  v31 = *(v89 + 104);
  v79 = v89 + 104;
  v80 = v31;
  v32 = v57;
  v33 = v87;
  v31(v57);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97 = v22;
  v95 = &type metadata for CGFloat;
  v96 = &protocol witness table for CGFloat;
  v94 = v23;
  v78 = sub_BD88(&qword_9417E0, &unk_786F20);
  v69 = *(v77 + 72);
  v34 = v90;
  v77 = *(v90 + 80);
  v56 = (v77 + 32) & ~v77;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77B6D0;
  sub_75E7D0();
  v93 = v35;
  v75 = sub_3718CC(v36);
  v74 = sub_BD88(&qword_9417F0, &unk_780EC0);
  v76 = sub_7DCC8();
  v37 = v59;
  v38 = v85;
  sub_76A5A0();
  v39 = v54;
  sub_75E830();
  v40 = *(v34 + 8);
  v90 = v34 + 8;
  v71 = v40;
  v41 = v37;
  v40(v37, v38);
  v42 = *(v30 + 8);
  v89 = v30 + 8;
  v73 = v42;
  v42(v32, v33);
  v43 = *(v91 + 8);
  v91 += 8;
  v72 = v43;
  v44 = v88;
  v43(v39, v88);
  sub_10A2C(&v94, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(&v97);
  sub_B170(v7 + 29, v7[32]);
  sub_766580();
  v84(v39, v82, v44);
  v80(v32, v81, v33);
  v55 = sub_766970();
  v95 = v55;
  v96 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v94);
  sub_766960();
  sub_134D8((v7 + 14), &v93);
  v45 = swift_allocObject();
  *(v45 + 16) = v86;
  sub_75E7F0();
  sub_75E7D0();
  sub_75E7E0();
  v92 = v45;
  v46 = v41;
  v47 = v85;
  sub_76A5A0();
  sub_75E830();
  v71(v46, v47);
  sub_10A2C(&v93, &unk_93F9C0, &qword_77EDB0);
  v48 = v87;
  v73(v32, v87);
  v49 = v88;
  v72(v39, v88);
  sub_BEB8(&v97);
  sub_BEB8(&v94);
  v84(v39, v82, v49);
  v80(v32, v81, v48);
  v98 = v55;
  v99 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v97);
  sub_766960();
  sub_134D8((v7 + 19), &v94);
  v50 = swift_allocObject();
  *(v50 + 16) = v86;
  sub_75E7F0();
  sub_75E7D0();
  sub_75E7E0();
  v93 = v50;
  sub_76A5A0();
  sub_75E830();
  v71(v46, v47);
  sub_10A2C(&v94, &unk_93F9C0, &qword_77EDB0);
  v73(v32, v87);
  v72(v39, v88);
  sub_BEB8(&v97);
  v51 = v65;
  sub_75E810();
  v102.origin.x = v11;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetMinX(v102);
  v103.origin.x = v11;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  CGRectGetMinY(v103);
  v104.origin.x = v11;
  v104.origin.y = a4;
  v104.size.width = a5;
  v104.size.height = a6;
  CGRectGetHeight(v104);
  sub_75E7C0();
  return (*(v66 + 8))(v51, v67);
}

uint64_t sub_60BA54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  swift_getObjectType();
  sub_60BF54(a1, v6, a5, a6);
  v14 = v13;
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  if (v14 <= CGRectGetHeight(v18))
  {

    return sub_60A934(a2, a3, a4, a5, a6);
  }

  else
  {
    v15.n128_f64[0] = a3;

    return sub_60AE40(a1, a2, v15, a4, a5, a6);
  }
}

double sub_60BB4C(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_60BF54(a1, v3, a2, a3);
}

double sub_60BBA8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v37 = a3;
  *&v36 = a2 + 35;
  v9 = sub_76A920();
  v35 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[23];
  sub_B170(a2 + 20, v13);
  sub_33964(v13);
  sub_766700();
  v15 = v14;
  v16 = *(v10 + 8);
  v16(v12, v9);
  v17 = a2[18];
  sub_B170(a2 + 15, v17);
  sub_33964(v17);
  v18 = a1;
  sub_766700();
  v20 = v19;
  v21 = v35;
  v16(v12, v35);
  v22 = a2[28];
  sub_B170(a2 + 25, v22);
  sub_33964(v22);
  sub_766700();
  v24 = v23;
  v16(v12, v21);
  sub_134D8((a2 + 30), v46);
  LOBYTE(v22) = *(v36 + 32);
  v25 = *(v36 + 16);
  v34 = *v36;
  v36 = v25;
  sub_134D8((a2 + 40), &v49);
  sub_134D8((a2 + 45), &v50);
  v45[0] = v20;
  v45[1] = v15;
  v45[2] = v24;
  v45[3] = v15;
  v47 = v36;
  *&v46[40] = v34;
  v48 = v22;
  sub_23A450(v45, v41);
  sub_134D8((a2 + 60), &v42);
  sub_134D8((a2 + 65), &v43);
  sub_134D8((a2 + 70), &v44);
  v26 = a2[13];
  sub_B170(a2 + 10, v26);
  sub_33964(v26);
  sub_766700();
  v28 = v27;
  v16(v12, v21);
  sub_60BF54(v18, v41, a4, a5);
  v30 = a5 - v28 - v29;
  sub_6D310((a2 + 50), &v38);
  if (v39)
  {
    sub_10914(&v38, v40);
    sub_B170(v40, v40[3]);
    sub_7665B0();
    v32 = v31;
    sub_23AABC(v41);
    sub_23AB10(v45);
    v30 = v30 - v32;
    sub_BEB8(v40);
  }

  else
  {
    sub_23AABC(v41);
    sub_23AB10(v45);
    sub_10A2C(&v38, &unk_943B10, &qword_77E080);
  }

  return v30;
}

double sub_60BF54(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 24, a2[27]);
  sub_7665B0();
  v10 = a2[22];
  sub_B170(a2 + 19, v10);
  sub_33964(v10);
  sub_766700();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_B170(a2 + 29, a2[32]);
  if ((sub_766540() & 1) == 0)
  {
    v12 = a2[7];
    sub_B170(a2 + 4, v12);
    sub_33964(v12);
    sub_766700();
    v11(v9, v6);
  }

  sub_B170(a2 + 34, a2[37]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 34, a2[37]);
    sub_7665B0();
  }

  sub_B170(a2 + 29, a2[32]);
  if ((sub_766540() & 1) == 0)
  {
    sub_B170(a2 + 34, a2[37]);
    if ((sub_766540() & 1) == 0)
    {
      v13 = a2[17];
      sub_B170(a2 + 14, v13);
      sub_33964(v13);
      sub_766700();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t sub_60C29C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_60C2E4(uint64_t result, int a2, int a3)
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
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_60C3D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_60C420(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_60C4E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_60C528(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_60C5C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_60C5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_60C644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double *sub_60C6C4(uint64_t a1, int *a2, __n128 a3)
{
  v4 = sub_6C330C(a1, a2);
  sub_60CAE8();
  sub_769440();
  if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  return v4;
}

void sub_60C75C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_769BC0() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = sub_76A950();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_BD88(&qword_94C620, &qword_7A9A10);
    a5[4] = sub_27FE44();
    sub_B1B4(a5);

    sub_769BD0();
    sub_763760();
    return;
  }

  sub_6BED78(a1, a2, a3, a4, a5);
}

uint64_t sub_60C8A4(uint64_t a1)
{
  v2 = sub_75D3C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D400();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_75D3D0();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_31D6C4();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

id sub_60CAE8()
{
  v21 = sub_76A920();
  v0 = *(v21 - 8);
  __chkstk_darwin(v21);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75B680();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75B670();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = sub_75DA30();
  sub_75D3F0();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView(0);
  sub_769BC0();
  sub_75DA40();
  sub_766470();
  sub_2A8548(v14);
  sub_766700();
  v16 = v15;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v21);
  v17 = sub_769210();

  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v17 alignment:1 absoluteOffset:{0.0, v16}];

  (*(v4 + 8))(v6, v3);
  return v18;
}

void *sub_60CDF8(uint64_t a1)
{
  v2 = sub_7656C0();
  v55 = *(v2 - 8);
  __chkstk_darwin(v2);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7649E0();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_BD88(&unk_94F1F0, &qword_782290);
  v6 = *(v49 - 8);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = sub_75ECD0();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  v17 = sub_766690();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v50 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &v42 - v21;
  sub_75BEC0();
  sub_60D56C(&qword_940008, &type metadata accessor for ProductMediaItem, &protocol conformance descriptor for ProductMediaItem);
  result = sub_75C750();
  if (v57)
  {
    v44 = a1;
    if (sub_75BEA0())
    {
      sub_765260();
      sub_7666A0();

      v23 = *(v18 + 56);
      v23(v13, 0, 1, v17);
      (*(v18 + 32))(v16, v13, v17);
      v23(v16, 0, 1, v17);
      v24 = (*(v18 + 48))(v16, 1, v17);
    }

    else
    {
      v43 = v6;
      v45 = v2;
      v25 = *(v18 + 56);
      v26 = 1;
      v25(v13, 1, 1, v17);
      if (sub_75BEB0())
      {
        sub_764BC0();

        sub_765260();
        sub_7666A0();

        v26 = 0;
      }

      v25(v16, v26, 1, v17);
      v27 = *(v18 + 48);
      if (v27(v13, 1, v17) != 1)
      {
        sub_9C2A0(v13);
      }

      v2 = v45;
      v6 = v43;
      v24 = v27(v16, 1, v17);
    }

    if (v24 == 1)
    {

      return sub_9C2A0(v16);
    }

    v45 = v2;
    (*(v18 + 32))(v56, v16, v17);
    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    v28 = v51;
    v29 = v49;
    sub_768750();

    (*(v6 + 8))(v8, v29);
    v31 = v52;
    v30 = v53;
    if ((*(v52 + 88))(v28, v53) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v31 + 96))(v28, v30);
      v32 = v46;
      v33 = v47;
      v34 = v28;
      v35 = v48;
      (*(v47 + 32))(v46, v34, v48);
      v36 = sub_75EC70();
      (*(v33 + 8))(v32, v35);
      v37 = v50;
      v38 = v56;
      v39 = v45;
      if ((v36 & 1) != 0 && (sub_7665E0() & 1) == 0)
      {
        sub_766620();
LABEL_18:
        swift_getKeyPath();
        v40 = v54;
        sub_75C7B0();

        sub_765560();
        (*(v55 + 8))(v40, v39);
        sub_766660();

        v41 = *(v18 + 8);
        v41(v37, v17);
        return (v41)(v38, v17);
      }
    }

    else
    {
      (*(v31 + 8))(v28, v30);
      v37 = v50;
      v38 = v56;
      v39 = v45;
    }

    (*(v18 + 16))(v37, v38, v17);
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_60D56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_60D5C0(uint64_t a1, uint64_t a2, __n128 a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v4 = sub_76A820();

    if (v4)
    {
      sub_BE70(0, &qword_947630, UIImage_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_664244(a1, a3);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

id sub_60D688(char a1, uint64_t a2)
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScreenshotsGalleryViewController();
  v16.receiver = v2;
  v16.super_class = v8;
  result = objc_msgSendSuper2(&v16, "viewWillAppear:", a1 & 1);
  v10 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex];
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
    if (v11 >> 62)
    {
      result = sub_76A860();
      if (v10 >= result)
      {
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      if (v10 >= result)
      {
        return result;
      }
    }

    result = [v2 view];
    if (result)
    {
      v12 = result;
      [result layoutIfNeeded];

      sub_7575B0();
      v13 = [v2 collectionView];
      if (v13)
      {
        v14 = v13;
        isa = sub_757550().super.isa;
        [v14 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_60D8A4(__n128 a1)
{
  v2 = v1;
  v45.receiver = v1;
  v45.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v3 = [objc_allocWithZone(UISwipeGestureRecognizer) initWithTarget:v1 action:"swipeStateChangedOn:"];
  [v3 setDirection:8];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 addGestureRecognizer:v3];

    v6 = [v1 collectionView];
    if (v6)
    {
      v7 = v6;
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      v8 = sub_76A000();
      [v7 setBackgroundColor:v8];
    }

    v9 = [v2 collectionView];
    if (v9)
    {
      v10 = v9;
      [v9 setAlwaysBounceHorizontal:1];
    }

    v11 = [v2 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 setShowsHorizontalScrollIndicator:0];
    }

    v13 = [v2 collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setDecelerationRate:UIScrollViewDecelerationRateFast];
    }

    v15 = [v2 collectionView];
    if (v15)
    {
      v16 = v15;
      [v15 setRemembersLastFocusedIndexPath:1];
    }

    v17 = [v2 collectionView];
    if (v17)
    {
      v18 = v17;
      [v17 setContentInsetAdjustmentBehavior:2];
    }

    v19 = [v2 collectionView];
    if (v19)
    {
      v20 = v19;
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_769BD0();
      v22 = sub_769210();

      [v20 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v22];
    }

    v23 = [v2 collectionView];
    if (!v23)
    {

      return;
    }

    v38 = v23;
    [v23 bounds];
    sub_60EDFC(v24, v25);
    v27 = v26;
    v42 = sub_75A310() & 1;
    v28 = sub_60406C(v27, v42);
    v29 = v28;
    v41 = *(v27 + 16);
    if (!v41)
    {
LABEL_30:

      return;
    }

    v30 = 0;
    v31 = (v27 + 48);
    v39 = v28 & 0xC000000000000001;
    v40 = v28 >> 62;
    while (v30 < *(v27 + 16))
    {
      v32 = *(v31 - 2);
      v33 = *(v31 - 1);
      v34 = *v31;
      if (v40)
      {
        v35 = sub_76A860();
      }

      else
      {
        v35 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      }

      if (v30 == v35)
      {
        goto LABEL_30;
      }

      if (v39)
      {

        sub_76A770();
      }

      else
      {
        if (v30 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_33;
        }
      }

      v44 = 0;
      memset(v43, 0, sizeof(v43));
      v36 = swift_allocObject();
      swift_weakInit();
      v37 = swift_allocObject();
      *(v37 + 16) = v42;
      *(v37 + 24) = v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 48) = v34;
      *(v37 + 56) = v30;

      sub_75A040();

      sub_10A2C(v43, &unk_9443A0, &unk_77E240);

      v31 += 3;
      if (v41 == ++v30)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  __break(1u);
}

void sub_60DDD4(uint64_t a1, __n128 a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v4 = [v2 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collectionViewLayout];

    [v6 invalidateLayout];
  }

  v7 = [v2 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 setNeedsLayout];
  }
}

void sub_60DF08(void *a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v15.receiver = v3;
  v15.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  objc_msgSendSuper2(&v15, "viewWillTransitionToSize:withTransitionCoordinator:", a1, v6, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_61037C;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_6C6800;
  v14[3] = &unk_89A298;
  v13 = _Block_copy(v14);

  [a1 animateAlongsideTransition:v13 completion:0];
  _Block_release(v13);
}

void sub_60E0A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex];

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = [v8 collectionView];

      if (v10)
      {
        sub_BD88(&qword_95B250, "hq\b");
        v11 = swift_allocObject();
        *(v11 + 16) = xmmword_77E280;
        *(v11 + 32) = 0;
        *(v11 + 40) = v7;
        sub_757540();
        isa = sub_757550().super.isa;
        (*(v3 + 8))(v5, v2);
        [v10 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:1];
      }
    }
  }
}

uint64_t sub_60E384(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  sub_769BD0();
  v4 = sub_769210();

  isa = sub_757550().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_platform);
  swift_retain_n();
  v8 = v6;

  sub_4FD578();

  return v7;
}

double sub_60E9F8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, SEL *a6)
{
  v8 = a4;
  v9 = a1;
  v10 = [v9 traitCollection];
  v11 = sub_7699E0();

  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 15.0;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v8;
    [v14 *a6];
  }

  return v12;
}

uint64_t sub_60EAC0(void *a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_757640();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 contentOffset];
  v16 = v15;
  [a1 bounds];
  Width = CGRectGetWidth(v25);
  [a1 bounds];
  Height = CGRectGetHeight(v26);
  v19 = [v2 collectionView];
  if (!v19)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    return sub_10A2C(v9, &unk_94EE60, qword_7841A0);
  }

  v20 = v19;
  v21 = [v19 indexPathForItemAtPoint:{v16 + Width * 0.5, Height * 0.5}];

  if (v21)
  {
    sub_757590();

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  sub_2F8C4C(v6, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10A2C(v9, &unk_94EE60, qword_7841A0);
  }

  (*(v11 + 32))(v14, v9, v10);
  v23 = sub_7575C0();
  result = (*(v11 + 8))(v14, v10);
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_selectedIndex] = v23;
  return result;
}

void sub_60EDFC(double a1, double a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks);
  if (v3 >> 62)
  {
    v29 = a2;
    v30 = a1;
    v31 = sub_76A860();
    a1 = v30;
    a2 = v29;
    v4 = v31;
    if (!v31)
    {
      return;
    }
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    if (a1 > a2)
    {
      v6 = a1;
    }

    else
    {
      v6 = a2;
    }

    v7 = _swiftEmptyArrayStorage;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = sub_765150();
      sub_765260();
      v11 = v10;
      v13 = v12;
      sub_765260();
      v15 = v14;
      v17 = v16;
      sub_765260();
      if (v11 >= v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = v11;
      }

      v21 = v17 * v20 / v18;
      if (v13 >= v6)
      {
        v22 = v6;
      }

      else
      {
        v22 = v13;
      }

      v23 = v15 * v22 / v19;
      if (v9)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }

      if (v9)
      {
        v25 = v23;
      }

      else
      {
        v25 = v20;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_7B0D8(0, *(v7 + 2) + 1, 1, v7);
      }

      v27 = *(v7 + 2);
      v26 = *(v7 + 3);
      if (v27 >= v26 >> 1)
      {
        v7 = sub_7B0D8((v26 > 1), v27 + 1, 1, v7);
      }

      *(v7 + 2) = v27 + 1;
      v28 = &v7[3 * v27];
      *(v28 + 4) = v8;
      ++v5;
      v28[5] = v25;
      v28[6] = v24;
    }

    while (v4 != v5);
  }
}

void sub_60EFC0()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_galleryLayout);
}

id sub_60F040(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScreenshotsGalleryViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_60F130(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_757640();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    sub_BD88(&qword_95B250, "hq\b");
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_77E280;
    *(v13 + 32) = 0;
    *(v13 + 40) = a2;
    sub_757540();
    isa = sub_757550().super.isa;
    (*(v7 + 8))(v10, v6);
    v15 = [v12 cellForItemAtIndexPath:isa];

    if (v15)
    {
      type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
      v16 = swift_dynamicCastClass();
      if (v16)
      {
        v17 = *(*(v16 + OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_7591D0(v20, v18);

        v15 = v17;
      }
    }
  }
}

void sub_60F2E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_758720();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  v11 = swift_dynamicCastClassUnconditional();
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  v13 = sub_7575C0();
  v56 = v3;
  v57 = v7;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = sub_76A770();
LABEL_5:
    v55 = OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView;
    v15 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_borderedScreenshotView] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration;
    swift_beginAccess();
    v16 = *(v15 + 64);
    v17 = *(v15 + 80);
    type metadata accessor for BorderedScreenshotView(0);
    sub_75D650();
    Width = CGRectGetWidth(v58);
    v19 = v16 + v17;
    sub_75D650();
    CGRectGetHeight(v59);
    v20 = [v1 traitCollection];
    v21 = sub_7699E0();

    if (sub_75A310())
    {
      sub_765150();
    }

    sub_765260();
    sub_765260();
    sub_7666A0();
    v22 = Width - v19;

    sub_75A300();

    v23 = v56;
    if ((*(v4 + 88))(v6, v56) != enum case for AppPlatform.watch(_:))
    {
      (*(v4 + 8))(v6, v23, 0.0);
    }

    sub_766650();
    v25 = v24;
    v26 = (v22 - v24) * 0.5;
    if (v21)
    {
      v27 = v55;
      v28 = v57;
      if (v26 >= 60.0)
      {
        goto LABEL_15;
      }

      v29 = 120.0;
    }

    else
    {
      v27 = v55;
      v28 = v57;
      if (v26 >= 30.0)
      {
        goto LABEL_15;
      }

      v29 = 60.0;
    }

    v25 = v22 - v29;
LABEL_15:
    sub_765260();
    if (v30 < v25)
    {
      v25 = v30;
    }

    sub_766660();
    v32 = v31;
    (*(v8 + 8))(v10, v28);
    v33 = &v11[OBJC_IVAR____TtC18ASMessagesProvider28ScreenshotCollectionViewCell_artworkDisplaySize];
    *v33 = v25;
    *(v33 + 1) = v32;
    v33[16] = 0;
    [v11 setNeedsLayout];
    v34 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_fullScreenshotFetcher];
    swift_beginAccess();
    v35 = *(v34 + 16);

    v37 = sub_60D5C0(v14, v35, v36);

    if (v37)
    {
      v39 = *(*&v11[v27] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v40 = v37;
      v41 = v39;
      v42 = sub_759180();

      if (v42)
      {
        sub_BE70(0, &qword_947630, UIImage_ptr);
        v44 = v40;
        v45 = sub_76A1C0();

        v46 = v45 ^ 1;
      }

      else
      {
        v46 = 1;
      }

      v52.is_nil = v46 & 1;
      v52.value.super.isa = v37;
    }

    else
    {
      v47 = sub_60D5C0(v14, *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_placeholderImages], v38);
      if (!v47)
      {
LABEL_30:

        return;
      }

      v40 = v47;
      v48 = *(*&v11[v27] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v49 = sub_759180();

      if (v49)
      {
        sub_BE70(0, &qword_947630, UIImage_ptr);
        v50 = v40;
        v51 = sub_76A1C0();

        if (v51)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v53 = v40;
      }

      v41 = *(*&v11[v27] + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
      v52.value.super.isa = v40;
      v52.is_nil = 1;
    }

    sub_7591D0(v52, v43);

    v50 = v40;
LABEL_29:

    goto LABEL_30;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v14 = *(v12 + 8 * v13 + 32);

    goto LABEL_5;
  }

  __break(1u);
}