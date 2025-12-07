void (*JSHeaderItem.title.modify(uint64_t *a1))(uint64_t **a1, uint64_t a2)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4 + 2);

  v5 = v4[3];
  *v4 = v4[2];
  v4[1] = v5;
  return sub_100D43954;
}

void sub_100D4397C(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v9 = **a1;
  v8 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v7[4];
  if (a2)
  {

    static Published.subscript.getter(v7 + 2);

    v11 = v7[2];
    v12 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v13 = v10;
    static Published.subscript.setter();
    a5(v11, v12);
  }

  else
  {
    static Published.subscript.getter(v7 + 2);

    v15 = v7[2];
    v14 = v7[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v7[2] = v9;
    v7[3] = v8;
    v16 = v10;
    static Published.subscript.setter();
    a5(v15, v14);
  }

  free(v7);
}

uint64_t JSHeaderItem.$title.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$title.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101184218, &qword_100EDE320);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void sub_100D43DF8(char a1)
{
  v2 = v1;
  v4 = 0xED00006576697470;
  v5 = 0x616441656772616CLL;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  if (!a1)
  {
    v6 = 0x616441656772616CLL;
    v7 = 0xED00006576697470;
    if (LOBYTE(v19[0]))
    {
      goto LABEL_9;
    }

LABEL_13:
    v8 = 0xED00006576697470;
    if (v6 != 0x616441656772616CLL)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (a1 == 1)
  {
    v6 = 0x786946656772616CLL;
  }

  else
  {
    v6 = 0x647261646E617473;
  }

  if (a1 == 1)
  {
    v7 = 0xEA00000000006465;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (!LOBYTE(v19[0]))
  {
    goto LABEL_13;
  }

LABEL_9:
  if (LOBYTE(v19[0]) == 1)
  {
    v8 = 0xEA00000000006465;
    if (v6 != 0x786946656772616CLL)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = 0xE800000000000000;
    if (v6 != 0x647261646E617473)
    {
      goto LABEL_18;
    }
  }

LABEL_16:
  if (v7 == v8)
  {

    goto LABEL_21;
  }

LABEL_18:
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v9 & 1) == 0)
  {
    v10 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v2, ObjectType, v11);
      swift_unknownObjectRelease();
    }
  }

LABEL_21:
  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v13 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v19);

    if (LOBYTE(v19[0]))
    {
      if (LOBYTE(v19[0]) == 1)
      {
        v5 = 0x786946656772616CLL;
        v4 = 0xEA00000000006465;
      }

      else
      {
        v4 = 0xE800000000000000;
        v5 = 0x647261646E617473;
      }
    }

    v19[3] = &type metadata for String;
    v19[0] = v5;
    v19[1] = v4;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    sub_1000089F8(v19, v18, &unk_101183F30, qword_100EBF960);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD000000000000010;
    *(v14 + 64) = 0x8000000100E716A0;
    *(v14 + 72) = v2;
    *(v14 + 80) = v13;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v13;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v14);

    sub_1000095E8(v19, &unk_101183F30, qword_100EBF960);
  }
}

uint64_t (*JSHeaderItem.titleHeaderStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_100D44274;
}

uint64_t JSHeaderItem.$titleHeaderStyle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C00F0, &unk_100F155A8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C00E8, &qword_100F155A0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$titleHeaderStyle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C00F0, &unk_100F155A8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C00E8, &qword_100F155A0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void JSHeaderItem.videoDetailArtwork.setter(void *a1)
{
  sub_100D50494(a1);
}

void (*JSHeaderItem.videoDetailArtwork.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v4[6] = *v4;
  return sub_100D44670;
}

void sub_100D44670(void ***a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 6;
  v5 = *v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[7];
  if (a2)
  {
    v7 = v5;
    static Published.subscript.getter(v3);

    v8 = *v3;
    swift_getKeyPath();
    swift_getKeyPath();
    *v3 = v5;
    v9 = v6;
    v10 = v7;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v3);

    v11 = *v3;
    if (v8)
    {
      if (v11)
      {
        type metadata accessor for JSVideoArtwork();
        v12 = v8;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {

LABEL_15:
          v15 = *v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v20 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v3[7];
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v21, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    v10 = v8;
    goto LABEL_15;
  }

  static Published.subscript.getter(v3);

  v14 = *v3;
  swift_getKeyPath();
  swift_getKeyPath();
  *v3 = v5;
  v15 = v5;
  v16 = v6;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v17 = *v3;
  if (v14)
  {
    if (v17)
    {
      type metadata accessor for JSVideoArtwork();
      v18 = v14;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        goto LABEL_21;
      }
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v24 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v3[7];
    v26 = *(v24 + 8);
    v27 = swift_getObjectType();
    (*(v26 + 8))(v25, v27, v26);
    swift_unknownObjectRelease();
  }

  v15 = v14;
LABEL_21:

  free(v3);
}

uint64_t JSHeaderItem.$videoDetailArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$videoDetailArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF580, &qword_100F13BE8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void sub_100D44CAC(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  v4 = v19[0];
  if (a1)
  {
    if (v19[0])
    {

      if (v4 == a1)
      {
        return;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v19[0])
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  v6 = v19[0];
  if (v19[0])
  {
    v7 = v19[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v19);

    v12 = v19[0];
    if (v19[0])
    {
      v13 = type metadata accessor for JSArtwork(0);
    }

    else
    {
      v13 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v12;
    v19[3] = v13;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    sub_1000089F8(v19, v18, &unk_101183F30, qword_100EBF960);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD00000000000001CLL;
    *(v14 + 64) = 0x8000000100E71550;
    *(v14 + 72) = v2;
    *(v14 + 80) = v11;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v14);

    sub_1000095E8(v19, &unk_101183F30, qword_100EBF960);
  }
}

void (*JSHeaderItem.promotionalBackgroundArtwork.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return sub_100D450C8;
}

uint64_t JSHeaderItem.$promotionalBackgroundArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalBackgroundArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double sub_100D453B4(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v4 = v11[0];
  if (a1)
  {
    if (v11[0])
    {

      if (v4 == a1)
      {
        return result;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v11[0])
    {
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v6 = v11[0];
  if (v11[0])
  {
    v7 = v11[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v1, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  return result;
}

void (*JSHeaderItem.promotionalBackgroundArtworkForRegularWidth.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return sub_100D45640;
}

uint64_t JSHeaderItem.$promotionalBackgroundArtworkForRegularWidth.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalBackgroundArtworkForRegularWidth.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void sub_100D4592C(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  v4 = v19[0];
  if (a1)
  {
    if (v19[0])
    {

      if (v4 == a1)
      {
        return;
      }
    }

    v5 = &a1[OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate];
    swift_beginAccess();
    *(v5 + 1) = 0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (!v19[0])
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v19);

  v6 = v19[0];
  if (v19[0])
  {
    v7 = v19[0] + OBJC_IVAR____TtC11MusicJSCore9JSArtwork_artworkDelegate;
    swift_beginAccess();
    *(v7 + 1) = &protocol witness table for JSHeaderItem;
    swift_unknownObjectWeakAssign();
  }

  v8 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(v2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v11 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v19);

    v12 = v19[0];
    if (v19[0])
    {
      v13 = type metadata accessor for JSArtwork(0);
    }

    else
    {
      v13 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v12;
    v19[3] = v13;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    sub_1000089F8(v19, v18, &unk_101183F30, qword_100EBF960);
    v14 = swift_allocObject();
    *(v14 + 16) = 1;
    v15 = v18[1];
    *(v14 + 24) = v18[0];
    *(v14 + 40) = v15;
    *(v14 + 56) = 0xD00000000000001BLL;
    *(v14 + 64) = 0x8000000100E715A0;
    *(v14 + 72) = v2;
    *(v14 + 80) = v11;
    *(v14 + 88) = 0;
    v16 = v2;
    v17 = v11;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v14);

    sub_1000095E8(v19, &unk_101183F30, qword_100EBF960);
  }
}

void (*JSHeaderItem.promotionalThumbnailArtwork.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return sub_100D45D48;
}

uint64_t JSHeaderItem.$promotionalThumbnailArtwork.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalThumbnailArtwork.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011BF558, &qword_100F13B40);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double sub_100D46064(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x656C69666F7270;
    }

    else
    {
      v3 = 0x747369747261;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x746C7561666564;
  }

  v5 = 0xE700000000000000;
  v6 = 0x656C69666F7270;
  if (LOBYTE(v14[0]) != 1)
  {
    v6 = 0x747369747261;
    v5 = 0xE600000000000000;
  }

  if (LOBYTE(v14[0]))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (LOBYTE(v14[0]))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v3 == v7 && v4 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      v11 = v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(v1, ObjectType, v12);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100D4623C(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v11);

  v9 = v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v8;
  static Published.subscript.setter();
  return a7(v9);
}

uint64_t sub_100D4633C(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v6 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v4;
  static Published.subscript.setter();
  return a4(v6);
}

uint64_t (*JSHeaderItem.promotionalLayoutStyle.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_100D464A0;
}

uint64_t sub_100D464C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = *a1;
  static Published.subscript.getter((a1 + 9));

  v9 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;
  v10 = v8;
  static Published.subscript.setter();
  return a5(v9);
}

uint64_t JSHeaderItem.$promotionalLayoutStyle.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0128, &qword_100F15740);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0120, &qword_100F15738);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$promotionalLayoutStyle.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0128, &qword_100F15740);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0120, &qword_100F15738);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void JSHeaderItem.storeItemMetadata.setter(void *a1)
{
  sub_100D50648(a1);
}

void (*JSHeaderItem.storeItemMetadata.modify(uint64_t *a1))(void ***a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  v4[6] = *v4;
  return sub_100D46984;
}

void sub_100D46984(void ***a1, char a2)
{
  v3 = *a1;
  v4 = *a1 + 6;
  v5 = *v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[7];
  if (a2)
  {
    v7 = v5;
    static Published.subscript.getter(v3);

    v8 = *v3;
    swift_getKeyPath();
    swift_getKeyPath();
    *v3 = v5;
    v9 = v6;
    v10 = v7;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v3);

    v11 = *v3;
    if (v8)
    {
      if (v11)
      {
        sub_100009F78(0, &qword_1011C0140, MPStoreItemMetadata_ptr);
        v12 = v8;
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {

LABEL_15:
          v15 = *v4;
          goto LABEL_21;
        }
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_15;
      }
    }

    v20 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = v3[7];
      v22 = *(v20 + 8);
      ObjectType = swift_getObjectType();
      (*(v22 + 8))(v21, ObjectType, v22);
      swift_unknownObjectRelease();
    }

    v10 = v8;
    goto LABEL_15;
  }

  static Published.subscript.getter(v3);

  v14 = *v3;
  swift_getKeyPath();
  swift_getKeyPath();
  *v3 = v5;
  v15 = v5;
  v16 = v6;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v17 = *v3;
  if (v14)
  {
    if (v17)
    {
      sub_100009F78(0, &qword_1011C0140, MPStoreItemMetadata_ptr);
      v18 = v14;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        goto LABEL_21;
      }
    }
  }

  else
  {
    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v24 = v3[7] + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = v3[7];
    v26 = *(v24 + 8);
    v27 = swift_getObjectType();
    (*(v26 + 8))(v25, v27, v26);
    swift_unknownObjectRelease();
  }

  v15 = v14;
LABEL_21:

  free(v3);
}

uint64_t JSHeaderItem.$storeItemMetadata.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0150, &qword_100F157A0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0148, &qword_100F15798);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$storeItemMetadata.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0150, &qword_100F157A0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0148, &qword_100F15798);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void sub_100D46FF4(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v22);

  v4 = v22[0];
  if (a1)
  {
    if (v22[0])
    {
      type metadata accessor for JSUpsellBanner();
      v5 = a1;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return;
      }
    }

    else
    {
      v5 = a1;
    }

    v7 = &v5[OBJC_IVAR____TtC11MusicJSCore14JSUpsellBanner_upsellBannerDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v9 = Strong;
    v4 = a1;
    swift_unknownObjectRelease();
    if (v9 == v2)
    {
      *(v7 + 1) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!v22[0])
  {
    return;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v22);

  v10 = v22[0];
  if (v22[0])
  {
    *(v22[0] + OBJC_IVAR____TtC11MusicJSCore14JSUpsellBanner_upsellBannerDelegate + 8) = &off_101101748;
    swift_unknownObjectWeakAssign();
  }

  v11 = &v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v2, ObjectType, v12);
    swift_unknownObjectRelease();
  }

  if ((v2[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] & 1) == 0)
  {
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v14 = static JSBridge.shared;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v22);

    v15 = v22[0];
    if (v22[0])
    {
      v16 = type metadata accessor for JSUpsellBanner();
    }

    else
    {
      v16 = 0;
      v22[1] = 0;
      v22[2] = 0;
    }

    v22[0] = v15;
    v22[3] = v16;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    sub_1000089F8(v22, v21, &unk_101183F30, qword_100EBF960);
    v17 = swift_allocObject();
    *(v17 + 16) = 1;
    v18 = v21[1];
    *(v17 + 24) = v21[0];
    *(v17 + 40) = v18;
    strcpy((v17 + 56), "upsellBanner");
    *(v17 + 69) = 0;
    *(v17 + 70) = -5120;
    *(v17 + 72) = v2;
    *(v17 + 80) = v14;
    *(v17 + 88) = 0;
    v19 = v2;
    v20 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35EE8, v17);

    sub_1000095E8(v22, &unk_101183F30, qword_100EBF960);
  }
}

void (*JSHeaderItem.upsellBanner.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return sub_100D47434;
}

uint64_t JSHeaderItem.$upsellBanner.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0170, &qword_100F15800);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0168, &qword_100F157F8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$upsellBanner.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0170, &qword_100F15800);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0168, &qword_100F157F8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double sub_100D47734(char *a1)
{
  v2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v15);

  v5 = v15[0];
  if (a1)
  {
    if (v15[0])
    {
      type metadata accessor for JSBarButtonItem(0);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return result;
      }
    }

    else
    {
      v6 = a1;
    }

    v8 = &v6[OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_12;
    }

    v10 = Strong;
    v5 = a1;
    swift_unknownObjectRelease();
    if (v10 == v2)
    {
      *(v8 + 1) = 0;
      swift_unknownObjectWeakAssign();
    }
  }

  else if (!v15[0])
  {
    return result;
  }

LABEL_12:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v15);

  v11 = v15[0];
  if (v15[0])
  {
    *(v15[0] + OBJC_IVAR____TtC11MusicJSCore15JSBarButtonItem_barButtonItemDelegate + 8) = &off_101101738;
    swift_unknownObjectWeakAssign();
  }

  v12 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v2, ObjectType, v13);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100D47930(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void *))
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v8;
  static Published.subscript.getter(&v13);

  v11 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v8;
  v12 = v10;
  v9;
  static Published.subscript.setter();
  a7(v11);
}

void sub_100D47A48(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v7 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = a1;
  v8 = a1;
  v9 = v4;
  static Published.subscript.setter();
  a4(v7);
}

void (*JSHeaderItem.trailingBarButtonItem.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return sub_100D47BBC;
}

void sub_100D47BE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = *(a1 + 16);
  if (a2)
  {
    v10 = v8;
    static Published.subscript.getter((a1 + 8));

    v11 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v8;
    v12 = v9;
    v13 = v10;
    static Published.subscript.setter();
    a5(v11);

    v14 = *a1;
  }

  else
  {
    static Published.subscript.getter((a1 + 8));

    v17 = *(a1 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *(a1 + 8) = v8;
    v15 = v8;
    v16 = v9;
    static Published.subscript.setter();
    a5(v17);

    v14 = v17;
  }
}

uint64_t JSHeaderItem.$trailingBarButtonItem.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0190, &unk_100F15860);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0188, &qword_100F15858);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$trailingBarButtonItem.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0190, &unk_100F15860);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0188, &qword_100F15858);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36370;
}

void sub_100D48054(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for URL();
  v24 = *(v2 - 8);
  __chkstk_darwin();
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118CA90, &unk_100ECA330) - 8;
  __chkstk_darwin();
  v6 = &v21 - v5;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v21 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v1;
  static Published.subscript.getter(v10);

  v11 = *(v4 + 56);
  sub_1000089F8(v25, v6, &qword_101183A20, &unk_100EBCF80);
  v12 = v24;
  sub_1000089F8(v10, &v6[v11], &qword_101183A20, &unk_100EBCF80);
  v13 = *(v12 + 48);
  if (v13(v6, 1, v2) == 1)
  {
    sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
    if (v13(&v6[v11], 1, v2) == 1)
    {
      sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
      return;
    }
  }

  else
  {
    sub_1000089F8(v6, v8, &qword_101183A20, &unk_100EBCF80);
    if (v13(&v6[v11], 1, v2) != 1)
    {
      v18 = v22;
      (*(v12 + 32))(v22, &v6[v11], v2);
      sub_100D50A88(&qword_101199D20, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v12 + 8);
      v20(v18, v2);
      sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
      v20(v8, v2);
      sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
      v14 = v23;
      if (v19)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v10, &qword_101183A20, &unk_100EBCF80);
    (*(v12 + 8))(v8, v2);
  }

  sub_1000095E8(v6, &qword_10118CA90, &unk_100ECA330);
  v14 = v23;
LABEL_7:
  v15 = v14 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 8))(v14, ObjectType, v16);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100D484AC(uint64_t a1, void **a2)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v12 - v6);
  __chkstk_darwin();
  v9 = &v12 - v8;
  sub_1000089F8(a1, &v12 - v8, &qword_101183A20, &unk_100EBCF80);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v9, v5, &qword_101183A20, &unk_100EBCF80);
  v10;
  static Published.subscript.setter();
  sub_100D48054(v7);
  sub_1000095E8(v7, &qword_101183A20, &unk_100EBCF80);
  return sub_1000095E8(v9, &qword_101183A20, &unk_100EBCF80);
}

uint64_t JSHeaderItem.contextualPlaybackProvidingURL.setter(uint64_t a1)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v9 - v5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(a1, v4, &qword_101183A20, &unk_100EBCF80);
  v7 = v1;
  static Published.subscript.setter();
  sub_100D48054(v6);
  sub_1000095E8(a1, &qword_101183A20, &unk_100EBCF80);
  return sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
}

void (*JSHeaderItem.contextualPlaybackProvidingURL.modify(void *a1))(void ***a1, char a2)
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
  *v3 = v1;
  v5 = *(*(sub_10010FC20(&qword_101183A20, &unk_100EBCF80) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[4] = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  return sub_100D48934;
}

void sub_100D48934(void ***a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_1000089F8((*a1)[4], v3, &qword_101183A20, &unk_100EBCF80);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v6);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v3, v5, &qword_101183A20, &unk_100EBCF80);
    v8 = v7;
    static Published.subscript.setter();
    sub_100D48054(v6);
    sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v3);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v4, v6, &qword_101183A20, &unk_100EBCF80);
    v9 = v7;
    static Published.subscript.setter();
    sub_100D48054(v3);
  }

  sub_1000095E8(v3, &qword_101183A20, &unk_100EBCF80);
  sub_1000095E8(v4, &qword_101183A20, &unk_100EBCF80);
  free(v4);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t JSHeaderItem.$contextualPlaybackProvidingURL.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C01A8, &qword_100F158C0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C01A0, &unk_100F17BE0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$contextualPlaybackProvidingURL.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C01A8, &qword_100F158C0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C01A0, &unk_100F17BE0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double sub_100D48E2C(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  if (LOBYTE(v14[0]) != v2)
  {
    if (v1[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS])
    {
      v4 = &v1[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v1, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      if (qword_1011BDB08 != -1)
      {
        swift_once();
      }

      v7 = static JSBridge.shared;
      sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100EBDC20;
      *(v8 + 56) = type metadata accessor for JSHeaderItem(0);
      *(v8 + 32) = v1;
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v1;
      static Published.subscript.getter(v14);

      v10 = v14[0];
      *(v8 + 88) = &type metadata for Bool;
      *(v8 + 64) = v10;
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = _swiftEmptyArrayStorage;
      *(v11 + 32) = 0xD000000000000018;
      *(v11 + 40) = 0x8000000100E71940;
      *(v11 + 48) = v9;
      *(v11 + 56) = v7;
      *(v11 + 64) = 0;
      v12 = v9;
      v13 = v7;
      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v11);
    }
  }

  return result;
}

uint64_t JSHeaderItem.isContentFavorited.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100D4910C(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double sub_100D4918C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v3 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  return sub_100D48E2C(v3);
}

double JSHeaderItem.isContentFavorited.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.setter();
  return sub_100D48E2C(v2);
}

double (*JSHeaderItem.isContentFavorited.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((a1 + 9));

  *(a1 + 8) = *(a1 + 9);
  return sub_100D493B8;
}

double sub_100D493B8(uint64_t a1)
{
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *a1;
  static Published.subscript.getter((a1 + 9));

  v4 = *(a1 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v2;
  v5 = v3;
  static Published.subscript.setter();
  return sub_100D48E2C(v4);
}

uint64_t JSHeaderItem.$isContentFavorited.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$isContentFavorited.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&unk_101182130, &unk_100EBF5B0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

double sub_100D49750(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  if (!a2)
  {
    if (!v11)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
    goto LABEL_9;
  }

  if (v10 == a1 && v11 == a2)
  {

    return result;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v7 = v2 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      (*(v8 + 8))(v2, ObjectType, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t JSHeaderItem.inlineBubbleTipPlacement.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double sub_100D49904@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_100D49984(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v9);

  v5 = v9;
  v6 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v3;
  v10 = v2;
  v7 = v4;
  static Published.subscript.setter();
  sub_100D49750(v5, v6);

  return result;
}

double JSHeaderItem.inlineBubbleTipPlacement.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v5 = v9;
  v6 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1;
  v10 = a2;
  v7 = v2;
  static Published.subscript.setter();
  sub_100D49750(v5, v6);

  return result;
}

void (*JSHeaderItem.inlineBubbleTipPlacement.modify(uint64_t *a1))(uint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v4 + 16));

  *v4 = *(v4 + 16);
  return sub_100D49C10;
}

void sub_100D49C10(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v3[4];
  if (a2)
  {

    static Published.subscript.getter(v3 + 2);

    v7 = v3[2];
    v8 = v3[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v3[2] = v5;
    v3[3] = v4;
    v9 = v6;
    static Published.subscript.setter();
    sub_100D49750(v7, v8);
  }

  else
  {
    static Published.subscript.getter(v3 + 2);

    v11 = v3[2];
    v10 = v3[3];
    swift_getKeyPath();
    swift_getKeyPath();
    v3[2] = v5;
    v3[3] = v4;
    v12 = v6;
    static Published.subscript.setter();
    sub_100D49750(v11, v10);
  }

  free(v3);
}

uint64_t JSHeaderItem.$inlineBubbleTipPlacement.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101186D80, &qword_100F17790);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$inlineBubbleTipPlacement.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_101186D80, &qword_100F17790);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void JSHeaderItem.unmappedMusicItem.getter(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011C01C0, &unk_100F15960);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011C01C0, &unk_100F15960);
  v8 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_1000095E8(v6, &qword_1011C01C0, &unk_100F15960);
    sub_100D4A240(v1, a1);
    sub_1000089F8(a1, v4, &unk_101189DA0, &unk_100EBF370);
    (*(v9 + 56))(v4, 0, 1, v8);
    swift_beginAccess();
    sub_100D5080C(v4, v1 + v7);
    swift_endAccess();
  }

  else
  {
    sub_100D5087C(v6, a1);
  }
}

void sub_100D4A240(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v19 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v20);

  v8 = v20;
  if (v20 && (v9 = [v20 effectiveStorePlatformDictionary], v8, v9) && (v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v9, v11 = sub_10005476C(v10), , v11))
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    type metadata accessor for MainActor();
    v13 = a1;
    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_1001F4CB8(0, 0, v7, &unk_100F15DB8, v15);

    GenericMusicItem.init(_:)();
    v16 = type metadata accessor for GenericMusicItem();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {
      sub_1000095E8(v5, &unk_101189DA0, &unk_100EBF370);
      if (*&v13[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier + 8])
      {
        type metadata accessor for MusicServerItemDatabase();

        static MusicServerItemDatabase.shared.getter();
        MusicItemID.init(_:)();
        dispatch thunk of MusicServerItemDatabase.genericItem(for:)();
      }

      else
      {
        (*(v17 + 56))(a2, 1, 1, v16);
      }
    }

    else
    {
      (*(v17 + 32))(a2, v5, v16);
      (*(v17 + 56))(a2, 0, 1, v16);
    }
  }

  else
  {
    v18 = type metadata accessor for GenericMusicItem();
    (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_100D4A5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100D4A68C, v6, v5);
}

uint64_t sub_100D4A68C()
{

  v1.n128_f64[0] = sub_100D4D728();
  v2 = *(v0 + 8);

  return v2(v1);
}

double JSHeaderItem.unmappedMusicItem.setter(uint64_t a1)
{
  sub_10010FC20(&qword_1011C01C0, &unk_100F15960);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_100D5087C(a1, &v8 - v3);
  v5 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
  swift_beginAccess();
  sub_100D5080C(v4, v1 + v6);
  swift_endAccess();
  return result;
}

void (*JSHeaderItem.unmappedMusicItem.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011C01C0, &unk_100F15960) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[10] = v9;
  JSHeaderItem.unmappedMusicItem.getter(v9);
  return sub_100D4A920;
}

void sub_100D4A920(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*(*a1 + 72) + 56);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v6 = *(*a1 + 64);
  if (a2)
  {
    v7 = v2[6];
    sub_1000089F8(v2[10], v2[7], &unk_101189DA0, &unk_100EBF370);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
    swift_beginAccess();
    sub_100D5080C(v5, v7 + v8);
    swift_endAccess();
    sub_1000095E8(v4, &unk_101189DA0, &unk_100EBF370);
  }

  else
  {
    v9 = v2[6];
    sub_100D5087C(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v10 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem;
    swift_beginAccess();
    sub_100D5080C(v5, v9 + v10);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

uint64_t sub_100D4AA98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_10010FC20(a2, a3);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_1000089F8(a1, &v11 - v8, a2, a3);
  sub_1000089F8(v9, v7, a2, a3);
  Published.init(initialValue:)();
  sub_1000095E8(a1, a2, a3);
  return sub_1000095E8(v9, a2, a3);
}

uint64_t sub_100D4ABBC(uint64_t a1, void **a2)
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  sub_1000089F8(a1, &v11 - v6, &unk_101189DA0, &unk_100EBF370);
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v5, &unk_101189DA0, &unk_100EBF370);
  v9 = v8;
  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_101189DA0, &unk_100EBF370);
}

uint64_t JSHeaderItem.mappedMusicItem.setter(uint64_t a1)
{
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v4 = &v7 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(a1, v4, &unk_101189DA0, &unk_100EBF370);
  v5 = v1;
  static Published.subscript.setter();
  return sub_1000095E8(a1, &unk_101189DA0, &unk_100EBF370);
}

void (*JSHeaderItem.mappedMusicItem.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

uint64_t JSHeaderItem.$mappedMusicItem.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C01E0, &qword_100F159C0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C01D8, &qword_100F159B8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*JSHeaderItem.$mappedMusicItem.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C01E0, &qword_100F159C0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C01D8, &qword_100F159B8);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36E20;
}

void JSHeaderItem.handleMetricsEvent(event:impressions:pageDetailsProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  type metadata accessor for Metrics.Event.Action(0);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100D16E60(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 16)
  {
    if (EnumCaseMultiPayload > 30)
    {
      if (EnumCaseMultiPayload == 31)
      {
        v12 = 0;
      }

      else
      {
        if (EnumCaseMultiPayload != 48)
        {
          goto LABEL_56;
        }

        v12 = 1;
      }
    }

    else if (EnumCaseMultiPayload == 17)
    {
      v12 = 4;
    }

    else
    {
      if (EnumCaseMultiPayload != 18)
      {
        goto LABEL_56;
      }

      v12 = 5;
    }
  }

  else if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v12 = 6;
    }

    else
    {
      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_56;
      }

      v12 = 7;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v11 = type metadata accessor for URL();
        (*(*(v11 - 8) + 8))(v9, v11);
        v12 = 3;
        goto LABEL_20;
      }

LABEL_56:
      sub_100D16EC4(v9);
      return;
    }

    v12 = 2;
  }

LABEL_20:
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EC6C60;
  *(v13 + 56) = type metadata accessor for JSHeaderItem(0);
  *(v13 + 32) = v4;
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v14 = 0xEF64657469726F76;
        v15 = 0x6146747369747261;
      }

      else
      {
        v14 = 0x8000000100E6D330;
        v15 = 0xD000000000000011;
      }
    }

    else if (v12 == 4)
    {
      v14 = 0x8000000100E6D2E0;
      v15 = 0xD00000000000001CLL;
    }

    else
    {
      v14 = 0x8000000100E6D300;
      v15 = 0xD00000000000001ELL;
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 0xEC0000006B636142;
      v15 = 0x657461676976616ELL;
    }

    else
    {
      v14 = 0x8000000100E6D2C0;
      v15 = 0xD000000000000014;
    }
  }

  else if (v12)
  {
    v14 = 0x8000000100E59DD0;
    v15 = 0xD000000000000015;
  }

  else
  {
    v14 = 0x8000000100E6D290;
    v15 = 0xD000000000000010;
  }

  *(v13 + 88) = &type metadata for String;
  *(v13 + 64) = v15;
  *(v13 + 72) = v14;
  v16 = type metadata accessor for Metrics.Event(0);
  v17 = *(a1 + *(v16 + 20));
  if (v17 <= 1)
  {
    if (*(a1 + *(v16 + 20)))
    {
      v18 = 0x8000000100E5BF50;
      v19 = 0xD000000000000010;
    }

    else
    {
      v18 = 0xE600000000000000;
      v19 = 0x6E6F74747562;
    }
  }

  else if (v17 == 2)
  {
    v18 = 0xE500000000000000;
    v19 = 0x6B63617274;
  }

  else if (v17 == 3)
  {
    v18 = 0xEB000000006E6F74;
    v19 = 0x7475426B63617274;
  }

  else
  {
    v18 = 0x8000000100E5BF30;
    v19 = 0xD000000000000015;
  }

  *(v13 + 120) = &type metadata for String;
  *(v13 + 96) = v19;
  *(v13 + 104) = v18;
  if (!a2)
  {
    *(v13 + 152) = sub_100009F78(0, &qword_101197A30, NSObject_ptr);
    v25 = v4;
LABEL_48:
    v24 = [objc_allocWithZone(NSNull) init];
    goto LABEL_49;
  }

  v20 = *(a1 + *(v16 + 28));
  objc_allocWithZone(type metadata accessor for JSImpressionsBatch());
  v21 = a3;
  v22 = v4;

  v24 = sub_100D32680(v23, v20, a3);

  *(v13 + 152) = sub_100009F78(0, &qword_101197A30, NSObject_ptr);
  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_49:
  *(v13 + 128) = v24;
  v26 = Metrics.Event.metricsDictionary.getter();
  if (v26)
  {
    v27 = v26;
    *(&v34 + 1) = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
    *&v33 = v27;
    sub_100016270(&v33, (v13 + 160));
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v28 = [objc_allocWithZone(NSNull) init];
    *(v13 + 184) = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *(v13 + 160) = v28;
    if (*(&v34 + 1))
    {
      sub_1000095E8(&v33, &unk_101183F30, qword_100EBF960);
    }
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v29 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v30 = swift_allocObject();
  *(v30 + 16) = v13;
  *(v30 + 24) = _swiftEmptyArrayStorage;
  *(v30 + 32) = 0xD000000000000011;
  *(v30 + 40) = 0x8000000100E71510;
  *(v30 + 48) = v4;
  *(v30 + 56) = v29;
  *(v30 + 64) = 0;
  v31 = v4;
  v32 = v29;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v30);
}

double _s11MusicJSCore12JSHeaderItemC09barButtonD9DidChangeyyAA05JSBarfD0CF_0()
{
  type metadata accessor for JSHeaderItem(0);
  sub_100D50A88(&qword_1011C01E8, type metadata accessor for JSHeaderItem, &protocol conformance descriptor for JSHeaderItem);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return result;
}

void JSHeaderItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v105 - v10);
  __chkstk_darwin();
  v13 = (&v105 - v12);
  v14 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS;
  v15 = v4[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS];
  v4[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS] = 1;
  v117[0] = a1;
  v117[1] = a2;
  sub_1000089F8(a3, v118, &unk_101183F30, qword_100EBF960);
  if (!v119)
  {

    goto LABEL_12;
  }

  sub_1000089F8(v118, v111, &unk_101183F30, qword_100EBF960);

  if (!swift_dynamicCast())
  {
    sub_10000959C(v111);
    goto LABEL_12;
  }

  v108 = v15;
  countAndFlagsBits = v116[0]._countAndFlagsBits;
  object = v116[0]._object;
  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v113);

      v36 = v113;
      v37 = v114;
      swift_getKeyPath();
      swift_getKeyPath();
      v113 = countAndFlagsBits;
      v114 = object;
      v4;
      static Published.subscript.setter();
      sub_100D426B8(v36, v37);
      goto LABEL_7;
    }

    if (a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v113);

      v44 = v113;
      v45 = v114;
      swift_getKeyPath();
      swift_getKeyPath();
      v113 = countAndFlagsBits;
      v114 = object;
      v4;
      static Published.subscript.setter();
      sub_100D42D38(v44, v45);
      goto LABEL_7;
    }

    if (a1 == 0xD000000000000010 && 0x8000000100E716A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v120._countAndFlagsBits = countAndFlagsBits;
      v120._object = object;
      v49 = _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(v120);
      if (v49 != 3)
      {
        v50 = v49;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v113);

        v51 = v113;
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v113) = v50;
        v52 = v4;
        static Published.subscript.setter();
        sub_100D43DF8(v51);
      }

      goto LABEL_8;
    }

    sub_10000959C(v111);
    v15 = v108;
LABEL_12:
    if (a1 == 0xD000000000000012 && 0x8000000100E71530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSVideoArtwork();
        if (swift_dynamicCast())
        {
          v107 = a2;
          v108 = v15;
          v106 = v14;
          v20 = v4;
          v21 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v22 = v21;
          static Published.subscript.getter(v111);

          v23 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v21;
          v105 = v20;
          v24 = v20;
          v25 = v22;
          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v26 = v111[0];
          v27 = v23;
          if (v23)
          {
            v14 = v106;
            v28 = v108;
            if (v111[0])
            {
              v29 = v27;
              v30 = static NSObject.== infix(_:_:)();

              if (v30)
              {

LABEL_48:
                v4 = v105;
                LOBYTE(v15) = v28;
                goto LABEL_49;
              }
            }
          }

          else
          {
            v14 = v106;
            v28 = v108;
            if (!v111[0])
            {

              goto LABEL_48;
            }
          }

          v38 = &v24[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v38 + 1);
            ObjectType = swift_getObjectType();
            (*(v39 + 8))(v24, ObjectType, v39);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          goto LABEL_48;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

LABEL_49:
      sub_1000095E8(v118, &unk_101183F30, qword_100EBF960);
LABEL_50:

      goto LABEL_51;
    }

    if (a1 == 0xD00000000000001CLL && 0x8000000100E71550 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v31 = v14;
          v32 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v33 = v32;
          static Published.subscript.getter(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v32;
          v14 = v31;
          v4;
          v35 = v33;
          static Published.subscript.setter();
          sub_100D44CAC(v34);
LABEL_28:

LABEL_39:
          goto LABEL_49;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      static Published.subscript.setter();
      sub_100D44CAC(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD00000000000002BLL && 0x8000000100E71570 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v41 = v14;
          v42 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v43 = v42;
          static Published.subscript.getter(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v42;
          v14 = v41;
          v4;
          v35 = v43;
          static Published.subscript.setter();
          sub_100D453B4(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      static Published.subscript.setter();
      sub_100D453B4(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD00000000000001BLL && 0x8000000100E715A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSArtwork(0);
        if (swift_dynamicCast())
        {
          v46 = v14;
          v47 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v48 = v47;
          static Published.subscript.getter(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v47;
          v14 = v46;
          v4;
          v35 = v48;
          static Published.subscript.setter();
          sub_100D4592C(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      static Published.subscript.setter();
      sub_100D4592C(v34);
      goto LABEL_39;
    }

    if (v119)
    {
      sub_1000089F8(v118, v116, &unk_101183F30, qword_100EBF960);
      sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
      if (swift_dynamicCast())
      {
        v107 = a2;
        v108 = v15;
        v53 = v115;
        if (a1 == 0xD000000000000017 && 0x8000000100E71660 == v107 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v54 = v14;
          v55 = objc_allocWithZone(MPStoreItemMetadata);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v57 = [v55 initWithStorePlatformDictionary:isa];

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v58 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v57;
          v59 = v4;
          v60 = v57;
          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v61 = v111[0];
          if (v58)
          {
            if (v111[0])
            {
              sub_100009F78(0, &qword_1011C0140, MPStoreItemMetadata_ptr);
              v62 = v58;
              v63 = static NSObject.== infix(_:_:)();

              if (v63)
              {

                v60 = v62;
LABEL_110:

                v82 = &v59[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier];
                *v82 = 0;
                *(v82 + 1) = 0;

                sub_10000959C(v116);
                sub_1000095E8(v118, &unk_101183F30, qword_100EBF960);

                v14 = v54;
                goto LABEL_9;
              }
            }
          }

          else
          {
            if (!v111[0])
            {
              goto LABEL_110;
            }
          }

          v70 = &v59[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v71 = *(v70 + 1);
            v72 = swift_getObjectType();
            (*(v71 + 8))(v59, v72, v71);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v60 = v58;
          goto LABEL_110;
        }

        v106 = v14;
        if (a1 == 0xD000000000000017 && 0x8000000100E71680 == v107 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v73 = objc_allocWithZone(MPStoreItemMetadata);
          v74 = Dictionary._bridgeToObjectiveC()().super.isa;
          v75 = [v73 initWithStoreMusicAPIDictionary:v74];

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v76 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v75;
          v77 = v4;
          v78 = v75;
          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v79 = v111[0];
          if (v76)
          {
            if (v111[0])
            {
              sub_100009F78(0, &qword_1011C0140, MPStoreItemMetadata_ptr);
              v80 = v76;
              v81 = static NSObject.== infix(_:_:)();

              if (v81)
              {

                v78 = v80;
                goto LABEL_129;
              }
            }
          }

          else
          {
            if (!v111[0])
            {
LABEL_129:
              LOBYTE(v15) = v108;

              v113 = 25705;
              v114 = 0xE200000000000000;
              AnyHashable.init<A>(_:)();
              v14 = v106;
              if (*(v53 + 16) && (v89 = sub_1000160B4(v111), (v90 & 1) != 0))
              {
                sub_10000DD18(*(v53 + 56) + 32 * v89, &v113);
                sub_10001621C(v111);

                v91 = swift_dynamicCast();
                v92 = v109;
                v93 = v110;
                if (!v91)
                {
                  v92 = 0;
                  v93 = 0;
                }
              }

              else
              {

                sub_10001621C(v111);
                v92 = 0;
                v93 = 0;
              }

              v94 = &v77[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier];
              *v94 = v92;
              *(v94 + 1) = v93;

              sub_10000959C(v116);
              sub_1000095E8(v118, &unk_101183F30, qword_100EBF960);
              goto LABEL_50;
            }
          }

          v86 = &v77[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v87 = *(v86 + 1);
            v88 = swift_getObjectType();
            (*(v87 + 8))(v77, v88, v87);

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v78 = v76;
          goto LABEL_129;
        }

        sub_10000959C(v116);
        v14 = v106;
        v15 = v108;
        a2 = v107;
      }

      else
      {
        sub_10000959C(v116);
      }
    }

    if (a1 == 0x61426C6C65737075 && a2 == 0xEC00000072656E6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSUpsellBanner();
        if (swift_dynamicCast())
        {
          v64 = v14;
          v65 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v66 = v65;
          static Published.subscript.getter(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v65;
          v14 = v64;
          v4;
          v35 = v66;
          static Published.subscript.setter();
          sub_100D46FF4(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      static Published.subscript.setter();
      sub_100D46FF4(v34);
      goto LABEL_39;
    }

    if (a1 == 0xD000000000000015 && 0x8000000100E715C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        type metadata accessor for JSBarButtonItem(0);
        if (swift_dynamicCast())
        {
          v67 = v14;
          v68 = v116[0]._countAndFlagsBits;
          swift_getKeyPath();
          swift_getKeyPath();
          v69 = v68;
          static Published.subscript.getter(v111);

          v34 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          v111[0] = v68;
          v14 = v67;
          v4;
          v35 = v69;
          static Published.subscript.setter();
          sub_100D47734(v34);
          goto LABEL_28;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v34 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v111[0] = 0;
      v4;
      static Published.subscript.setter();
      sub_100D47734(v34);
      goto LABEL_39;
    }

    v108 = v15;
    v106 = v14;
    if (a1 == 0xD000000000000016 && 0x8000000100E715E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        if (swift_dynamicCast())
        {
          v83 = _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(v116[0]);
          if (v83 == 3)
          {
            v84 = 0;
          }

          else
          {
            v84 = v83;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v111);

          v85 = v111[0];
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v111[0]) = v84;
          goto LABEL_137;
        }
      }

      else
      {
        sub_1000095E8(v111, &unk_101183F30, qword_100EBF960);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v111);

      v85 = v111[0];
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v111[0]) = 0;
LABEL_137:
      v95 = v4;
      static Published.subscript.setter();
      sub_100D46064(v85);
LABEL_138:
      sub_1000095E8(v118, &unk_101183F30, qword_100EBF960);

LABEL_139:
      v14 = v106;
      goto LABEL_9;
    }

    if (a1 == 0xD00000000000001ELL && 0x8000000100E71600 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_1000089F8(a3, v111, &unk_101183F30, qword_100EBF960);
      if (v112)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_138;
        }

        URL.init(string:)();

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v11);

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000089F8(v13, v9, &qword_101183A20, &unk_100EBCF80);
        v4;
        static Published.subscript.setter();
        sub_100D48054(v11);
        sub_1000095E8(v11, &qword_101183A20, &unk_100EBCF80);
        v96 = v13;
        v97 = &qword_101183A20;
        v98 = &unk_100EBCF80;
      }

      else
      {
        v97 = &unk_101183F30;
        v98 = qword_100EBF960;
        v96 = v111;
      }

      sub_1000095E8(v96, v97, v98);
      goto LABEL_138;
    }

    if (v119)
    {
      sub_1000089F8(v118, v111, &unk_101183F30, qword_100EBF960);
      if (swift_dynamicCast())
      {
        if (v99 = v116[0]._countAndFlagsBits, a1 == 0xD000000000000012) && 0x8000000100E71640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v113);

          v100 = v113;
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v113) = v99;
          v4;
          static Published.subscript.setter();
          sub_100D48E2C(v100);
LABEL_159:
          sub_10000959C(v111);
          goto LABEL_138;
        }
      }

      if (swift_dynamicCast())
      {
        v101 = v116[0]._countAndFlagsBits;
        v102 = v116[0]._object;
        if (a1 == 0xD000000000000018 && 0x8000000100E71620 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v113);

          v103 = v113;
          v104 = v114;
          swift_getKeyPath();
          swift_getKeyPath();
          v113 = v101;
          v114 = v102;
          v4;
          static Published.subscript.setter();
          sub_100D49750(v103, v104);

          goto LABEL_159;
        }
      }

      sub_10000959C(v111);
    }

    sub_1000095E8(v117, &unk_1011C0D90, &unk_100F11470);
    goto LABEL_139;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v113);

  v18 = v113;
  v19 = v114;
  swift_getKeyPath();
  swift_getKeyPath();
  v113 = countAndFlagsBits;
  v114 = object;
  v4;
  static Published.subscript.setter();
  sub_100D43588(v18, v19);
LABEL_7:

LABEL_8:
  sub_10000959C(v111);
  sub_1000095E8(v118, &unk_101183F30, qword_100EBF960);

LABEL_9:
  LOBYTE(v15) = v108;
LABEL_51:
  v4[v14] = v15;
}

double sub_100D4D728()
{
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v35 = &v30 - v1;
  v2 = sub_10010FC20(&qword_1011C02A8, &qword_100F15D70);
  v3 = *(v2 - 8);
  v36 = v2;
  v37 = v3;
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = sub_10010FC20(&qword_1011C02B0, &qword_100F15D78);
  v40 = *(v6 - 8);
  __chkstk_darwin();
  v39 = &v30 - v7;
  v8 = sub_10010FC20(&qword_1011C02B8, &qword_100F15D80);
  v38 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v30 - v9;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v13 = type metadata accessor for GenericMusicItem();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v0;
  JSHeaderItem.unmappedMusicItem.getter(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &unk_101189DA0, &unk_100EBF370);
  }

  else
  {
    v19 = *(v14 + 32);
    v34 = v16;
    v19(v16, v12, v13);
    sub_10010FC20(&qword_1011C02C0, &qword_100F15D88);
    v20 = *(v14 + 80);
    v33 = v6;
    v21 = (v20 + 32) & ~v20;
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100EBC6B0;
    (*(v14 + 16))(v22 + v21, v16, v13);
    sub_100D50A88(&qword_1011C02C8, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    MusicLibraryMapping.Request.init(mappingItems:)();
    v31 = v10;
    v32 = v8;
    MusicLibraryMapping.Request.shouldResolveUnfetchedItems.setter();
    sub_100020674(&qword_1011C02D0, &qword_1011C02B8, &qword_100F15D80, &protocol conformance descriptor for MusicLibraryMapping.Request<A>);
    *(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_autoupdatingMappingResponse) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

    dispatch thunk of MusicAutoupdatingResponse.$response.getter();

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v23 = static OS_dispatch_queue.main.getter();
    v41 = v23;
    v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v25 = v35;
    (*(*(v24 - 8) + 56))(v35, 1, 1, v24);
    sub_100020674(&qword_1011C02D8, &qword_1011C02A8, &qword_100F15D70, &protocol conformance descriptor for Published<A>.Publisher);
    sub_1000206BC();
    v26 = v39;
    v27 = v36;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v25, &qword_101182140, &unk_100EBD2A0);

    (*(v37 + 8))(v5, v27);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_1011C02E0, &qword_1011C02B0, &qword_100F15D78, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v28 = v33;
    v29 = Publisher<>.sink(receiveValue:)();

    (*(v40 + 8))(v26, v28);
    (*(v38 + 8))(v31, v32);
    (*(v14 + 8))(v34, v13);
    *(v17 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mappingResponseSubscription) = v29;
  }

  return result;
}

uint64_t sub_100D4DDA0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011C02E8, &qword_100F15D90);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_10010FC20(&qword_1011C02F0, &qword_100F15D98);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v19 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000089F8(a1, v4, &qword_1011C02E8, &qword_100F15D90);
    v14 = sub_10010FC20(&qword_1011C02F8, &unk_100F15DA0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v4, 1, v14) == 1)
    {
      sub_1000095E8(v4, &qword_1011C02E8, &qword_100F15D90);
    }

    else
    {
      v16 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v15 + 8))(v4, v14);
      if (*(v16 + 16))
      {
        (*(v6 + 16))(v8, v16 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v6 + 8))(v8, v5);
        v17 = 0;
LABEL_8:
        v18 = type metadata accessor for GenericMusicItem();
        (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000089F8(v12, v10, &unk_101189DA0, &unk_100EBF370);
        static Published.subscript.setter();
        return sub_1000095E8(v12, &unk_101189DA0, &unk_100EBF370);
      }
    }

    v17 = 1;
    goto LABEL_8;
  }

  return result;
}

uint64_t *JSHeaderItem.init(type:)(uint64_t *a1)
{
  v99 = a1;
  v2 = sub_10010FC20(&qword_1011C01D8, &qword_100F159B8);
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin();
  v96 = &v61 - v3;
  v94 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  v92 = *(v94 - 8);
  __chkstk_darwin();
  v95 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = &v61 - v5;
  v6 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin();
  v89 = &v61 - v7;
  v8 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin();
  v86 = &v61 - v9;
  v10 = sub_10010FC20(&qword_1011C01A0, &unk_100F17BE0);
  v84 = *(v10 - 8);
  v85 = v10;
  __chkstk_darwin();
  v83 = &v61 - v11;
  v82 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v81 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v61 - v13;
  v79 = sub_10010FC20(&qword_1011C0188, &qword_100F15858);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v77 = &v61 - v14;
  v76 = sub_10010FC20(&qword_1011C0168, &qword_100F157F8);
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v74 = &v61 - v15;
  v73 = sub_10010FC20(&qword_1011C0148, &qword_100F15798);
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v71 = &v61 - v16;
  v70 = sub_10010FC20(&qword_1011C0120, &qword_100F15738);
  v69 = *(v70 - 8);
  __chkstk_darwin();
  v68 = &v61 - v17;
  v67 = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  v66 = *(v67 - 8);
  __chkstk_darwin();
  v19 = &v61 - v18;
  v65 = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  v64 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v61 - v20;
  v62 = sub_10010FC20(&qword_1011C00E8, &qword_100F155A0);
  v61 = *(v62 - 8);
  __chkstk_darwin();
  v22 = &v61 - v21;
  v23 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v61 - v25;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v27 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v100 = 0;
  v101 = 0xE000000000000000;
  Published.init(initialValue:)();
  v28 = *(v24 + 32);
  v28(v1 + v27, v26, v23);
  v29 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle;
  v100 = 0;
  v101 = 0xE000000000000000;
  Published.init(initialValue:)();
  v28(v1 + v29, v26, v23);
  v30 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title;
  v100 = 0;
  v101 = 0xE000000000000000;
  Published.init(initialValue:)();
  v28(v1 + v30, v26, v23);
  v31 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  LOBYTE(v100) = 0;
  Published.init(initialValue:)();
  (*(v61 + 32))(v1 + v31, v22, v62);
  v32 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v100 = 0;
  sub_10010FC20(&qword_1011BF568, &qword_100F13B90);
  v33 = v63;
  Published.init(initialValue:)();
  (*(v64 + 32))(v1 + v32, v33, v65);
  v34 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v100 = 0;
  sub_10010FC20(&qword_1011BF540, &qword_100F15600);
  Published.init(initialValue:)();
  v35 = *(v66 + 32);
  v36 = v67;
  v35(v1 + v34, v19, v67);
  v37 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth;
  v100 = 0;
  Published.init(initialValue:)();
  v35(v1 + v37, v19, v36);
  v38 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork;
  v100 = 0;
  Published.init(initialValue:)();
  v35(v1 + v38, v19, v36);
  v39 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  LOBYTE(v100) = 0;
  v40 = v68;
  Published.init(initialValue:)();
  (*(v69 + 32))(v1 + v39, v40, v70);
  v41 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v100 = 0;
  sub_10010FC20(&qword_1011C0130, &qword_100F15748);
  v42 = v71;
  Published.init(initialValue:)();
  (*(v72 + 32))(v1 + v41, v42, v73);
  v43 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v100 = 0;
  sub_10010FC20(&qword_1011C0158, &qword_100F157A8);
  v44 = v74;
  Published.init(initialValue:)();
  (*(v75 + 32))(v1 + v43, v44, v76);
  v45 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v100 = 0;
  sub_10010FC20(&qword_1011C0178, &qword_100F15808);
  v46 = v77;
  Published.init(initialValue:)();
  (*(v78 + 32))(v1 + v45, v46, v79);
  v47 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v48 = type metadata accessor for URL();
  v49 = v80;
  (*(*(v48 - 8) + 56))(v80, 1, 1, v48);
  sub_1000089F8(v49, v81, &qword_101183A20, &unk_100EBCF80);
  v50 = v83;
  Published.init(initialValue:)();
  sub_1000095E8(v49, &qword_101183A20, &unk_100EBCF80);
  (*(v84 + 32))(v1 + v47, v50, v85);
  v51 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  LOBYTE(v100) = 0;
  v52 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(v1 + v51, v52, v88);
  v53 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v100 = 0;
  v101 = 0;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v54 = v89;
  Published.init(initialValue:)();
  (*(v90 + 32))(v1 + v53, v54, v91);
  (*(v92 + 56))(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem, 1, 1, v94);
  v55 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v56 = type metadata accessor for GenericMusicItem();
  v57 = v93;
  (*(*(v56 - 8) + 56))(v93, 1, 1, v56);
  sub_1000089F8(v57, v95, &unk_101189DA0, &unk_100EBF370);
  v58 = v96;
  Published.init(initialValue:)();
  sub_1000095E8(v57, &unk_101189DA0, &unk_100EBF370);
  (*(v97 + 32))(v1 + v55, v58, v98);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_isUpdatingFromJS) = 0;
  v59 = (v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mediaAPIIdentifier);
  *v59 = 0;
  v59[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_autoupdatingMappingResponse) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_mappingResponseSubscription) = 0;
  return JSObject.init(type:)(v99);
}

double sub_100D4EF44()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate);
  v1 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__subtitle;
  v2 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__supertitle, v2);
  v3(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__title, v2);
  v4 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__titleHeaderStyle;
  v5 = sub_10010FC20(&qword_1011C00E8, &qword_100F155A0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__videoDetailArtwork;
  v7 = sub_10010FC20(&qword_1011BF578, &qword_100F13BE0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtwork;
  v9 = sub_10010FC20(&qword_1011BF550, &unk_100F15650);
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v8, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalBackgroundArtworkForRegularWidth, v9);
  v10(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalThumbnailArtwork, v9);
  v11 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__promotionalLayoutStyle;
  v12 = sub_10010FC20(&qword_1011C0120, &qword_100F15738);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__storeItemMetadata;
  v14 = sub_10010FC20(&qword_1011C0148, &qword_100F15798);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__upsellBanner;
  v16 = sub_10010FC20(&qword_1011C0168, &qword_100F157F8);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__trailingBarButtonItem;
  v18 = sub_10010FC20(&qword_1011C0188, &qword_100F15858);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__contextualPlaybackProvidingURL;
  v20 = sub_10010FC20(&qword_1011C01A0, &unk_100F17BE0);
  (*(*(v20 - 8) + 8))(v0 + v19, v20);
  v21 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__isContentFavorited;
  v22 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__inlineBubbleTipPlacement;
  v24 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  (*(*(v24 - 8) + 8))(v0 + v23, v24);
  sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem____lazy_storage___unmappedMusicItem, &qword_1011C01C0, &unk_100F15960);
  v25 = OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem__mappedMusicItem;
  v26 = sub_10010FC20(&qword_1011C01D8, &qword_100F159B8);
  (*(*(v26 - 8) + 8))(v0 + v25, v26);

  return result;
}

id JSHeaderItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSHeaderItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100D4F8F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for JSHeaderItem(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t PromotionalLayoutStyle.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x746C7561666564;
  }

  if (a1 == 1)
  {
    return 0x656C69666F7270;
  }

  return 0x747369747261;
}

uint64_t sub_100D4F984(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  if (v2 != 1)
  {
    v5 = 0x747369747261;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x656C69666F7270;
  if (*a2 != 1)
  {
    v8 = 0x747369747261;
    v3 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100D4FA7C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D4FB1C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D4FBA8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D4FC44@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D4FC74(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x656C69666F7270;
  if (v2 != 1)
  {
    v5 = 0x747369747261;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t GenericMusicItem.mappingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenericMusicItem();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_1011C0210, &qword_100F159C8);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t GenericMusicItem.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for GenericMusicItem.album(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.album(_:);
LABEL_43:
    v11 = *v10;
    v12 = type metadata accessor for MusicLibraryMapping.ItemKind();
    v13 = *(v12 - 8);
    (*(v13 + 104))(a1, v11, v12);
    (*(v13 + 56))(a1, 0, 1, v12);
    return (*(v5 + 8))(v8, v4);
  }

  if (v9 == enum case for GenericMusicItem.artist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.artist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.composer(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.composer(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.creditArtist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.creditArtist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.curator(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.curator(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.editorialItem(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.editorialItem(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.genre(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.genre(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.musicMovie(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.musicMovie(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.musicVideo(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.musicVideo(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.playlist(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.playlist(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.playlistFolder(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.playlistFolder(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.radioShow(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.radioShow(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.recordLabel(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.recordLabel(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.socialProfile(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.socialProfile(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.song(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.song(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.station(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.station(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvEpisode(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvSeason(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvSeason(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.tvShow(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.tvShow(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.uploadedAudio(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    v10 = &enum case for MusicLibraryMapping.ItemKind.uploadedVideo(_:);
    goto LABEL_43;
  }

  if (v9 == enum case for GenericMusicItem.other(_:))
  {
    (*(v5 + 8))(v8, v4);
    v15 = type metadata accessor for MusicLibraryMapping.ItemKind();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  v16 = type metadata accessor for MusicLibraryMapping.ItemKind();
  (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100D50278(uint64_t a1, uint64_t a2)
{
  v4 = sub_100D50A88(&qword_1011C0300, &type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_100D502FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_1011C0210, &qword_100F159C8);
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

unint64_t _s11MusicJSCore12JSHeaderItemC16TitleHeaderStyleO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA160, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore22PromotionalLayoutStyleO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA1C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s11MusicJSCore12JSHeaderItemC6ActionO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB400, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void sub_100D50494(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v3 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = a1;
  v4 = a1;
  v5 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v6 = v12[0];
  if (!v3)
  {
    if (!v12[0])
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v12[0] || (type metadata accessor for JSVideoArtwork(), v7 = v3, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
LABEL_7:
    v9 = &v5[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v5, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v7 = v3;
  }
}

void sub_100D50648(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v3 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v12[0] = a1;
  v4 = a1;
  v5 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v6 = v12[0];
  if (!v3)
  {
    if (!v12[0])
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v12[0] || (sub_100009F78(0, &qword_1011C0140, MPStoreItemMetadata_ptr), v7 = v3, v8 = static NSObject.== infix(_:_:)(), v7, v6, (v8 & 1) == 0))
  {
LABEL_7:
    v9 = &v5[OBJC_IVAR____TtC11MusicJSCore12JSHeaderItem_headerItemDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 1);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(v5, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    v7 = v3;
  }
}

uint64_t sub_100D5080C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011C01C0, &unk_100F15960);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D5087C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101189DA0, &unk_100EBF370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for JSHeaderItem(uint64_t a1)
{
  result = qword_1011C0258;
  if (!qword_1011C0258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100D5093C()
{
  result = qword_1011C0218;
  if (!qword_1011C0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0218);
  }

  return result;
}

unint64_t sub_100D50994()
{
  result = qword_1011C0220;
  if (!qword_1011C0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0220);
  }

  return result;
}

unint64_t sub_100D509EC()
{
  result = qword_1011C0228;
  if (!qword_1011C0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0228);
  }

  return result;
}

uint64_t sub_100D50A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100D50AD8(uint64_t a1)
{
  sub_100005390(319, &qword_101187AF8, &type metadata for String);
  if (v1 <= 0x3F)
  {
    sub_100005390(319, &qword_1011C0268, &type metadata for JSHeaderItem.TitleHeaderStyle);
    if (v2 <= 0x3F)
    {
      sub_100D51034(319, &qword_1011BF5D8, &qword_1011BF568, &qword_100F13B90, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_100D51034(319, &qword_1011BF5D0, &qword_1011BF540, &qword_100F15600, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_100005390(319, &qword_1011C0270, &type metadata for PromotionalLayoutStyle);
          if (v5 <= 0x3F)
          {
            sub_100D51034(319, &qword_1011C0278, &qword_1011C0130, &qword_100F15748, &type metadata accessor for Published);
            if (v6 <= 0x3F)
            {
              sub_100D51034(319, &qword_1011C0280, &qword_1011C0158, &qword_100F157A8, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                sub_100D51034(319, &qword_1011C0288, &qword_1011C0178, &qword_100F15808, &type metadata accessor for Published);
                if (v8 <= 0x3F)
                {
                  sub_100D51034(319, &qword_1011C0290, &qword_101183A20, &unk_100EBCF80, &type metadata accessor for Published);
                  if (v9 <= 0x3F)
                  {
                    sub_100005390(319, &qword_10119ED80, &type metadata for Bool);
                    if (v10 <= 0x3F)
                    {
                      sub_100D51034(319, &qword_101187B08, &qword_1011815E0, &qword_100EBD050, &type metadata accessor for Published);
                      if (v11 <= 0x3F)
                      {
                        sub_100D51034(319, &qword_1011C0298, &unk_101189DA0, &unk_100EBF370, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_100D51034(319, &qword_1011C02A0, &unk_101189DA0, &unk_100EBF370, &type metadata accessor for Published);
                          if (v13 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100D51034(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1001109D0(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100D510D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100D4A5F4(a1, v4, v5, v6);
}

char *JSCreditsItem.__allocating_init(titleText:subtitleText:artwork:audioTrait:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v29 = 3;
  v12 = objc_allocWithZone(type metadata accessor for JSCreditsItem(0));
  v13 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText];
  *v14 = 0;
  v14[1] = 0;
  v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron] = 0;
  v15 = &v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait];
  *v15 = 0;
  v15[1] = 0;
  *&v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet] = 0;
  v12[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS] = 0;
  v16 = JSMediaItem.init(type:)(v27);
  v17 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_backgroundArtwork;
  swift_beginAccess();
  v18 = *(v16 + v17);
  *(v16 + v17) = a5;
  v19 = v16;

  v20 = (v19 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText);
  swift_beginAccess();
  *v20 = a1;
  v20[1] = a2;
  v21 = v19;

  v22 = v21 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText;
  swift_beginAccess();
  *v22 = a3;
  *(v22 + 1) = a4;

  v23 = v21 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait;
  swift_beginAccess();
  *v23 = a6;
  *(v23 + 1) = a7;

  return v21;
}

uint64_t JSCreditsItem.hasChevron.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_100D513A0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *JSCreditsItem.artistIdentifierSet.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSCreditsItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS;
  v8 = *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS);
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS) = 1;
  v19[0] = a1;
  v19[1] = a2;
  sub_1000189C0(a3, v20);
  if (v20[3])
  {
    sub_1000189C0(v20, v18);

    if (swift_dynamicCast())
    {
      v10 = v16;
      v9 = v17;
      if (a1 == 0x786554656C746974 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText;
LABEL_24:
        v13 = (v3 + v11);
        swift_beginAccess();
        *v13 = v10;
        v13[1] = v9;

        goto LABEL_25;
      }

      if (a1 == 0x656C746974627573 && a2 == 0xEC00000074786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText;
        goto LABEL_24;
      }
    }

    if (swift_dynamicCast() && (a1 == 0x7276656843736168 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v12 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron;
      swift_beginAccess();
      *(v3 + v12) = v16;
LABEL_25:
      sub_10000959C(v18);
      sub_1000095E8(v20, &unk_101183F30, qword_100EBF960);

      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v10 = v16;
      v9 = v17;
      if (a1 == 0x6172546F69647561 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v11 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait;
        goto LABEL_24;
      }
    }

    type metadata accessor for JSIdentifierSet();
    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000100E71960 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet;
        swift_beginAccess();
        v15 = *(v3 + v14);
        *(v3 + v14) = v16;

        goto LABEL_25;
      }
    }

    sub_10000959C(v18);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v19, &unk_1011C0D90, &unk_100F11470);
LABEL_26:
  *(v3 + v7) = v8;
}

uint64_t *JSCreditsItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText];
  *v5 = 0;
  v5[1] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron] = 0;
  v6 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t type metadata accessor for JSCreditsItem(uint64_t a1)
{
  result = qword_1011C0338;
  if (!qword_1011C0338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *JSCreditsItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_titleText);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_subtitleText);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_hasChevron) = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_audioTrait);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_isUpdatingFromJS) = 0;
  return JSMediaItem.init(type:)(a1);
}

void sub_100D51908()
{

  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSCreditsItem_artistIdentifierSet);
}

id JSCreditsItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSCreditsItem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *JSPushSegue.componentController.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t JSPushSegue.hasInvokedDidLoadPreemptively.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively;
  swift_beginAccess();
  return *(v0 + v1);
}

double JSPushSegue.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSPushSegue.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100CC4F94;
}

void JSPushSegue.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v20[1] = a2;
  sub_1000189C0(a3, v21);
  if (v21[3])
  {
    sub_1000189C0(v21, v19);
    type metadata accessor for JSComponentController(0);

    if (swift_dynamicCast())
    {
      if (a1 == 0xD000000000000013 && 0x8000000100E719E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController;
        swift_beginAccess();
        v8 = *(v3 + v7);
        *(v3 + v7) = v18;
        v9 = v18;

        v10 = v3 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 8);
          ObjectType = swift_getObjectType();
          v13 = *(v3 + v7);
          v14 = *(v11 + 8);
          v15 = v13;
          v14(v3, v13, ObjectType, v11);
          swift_unknownObjectRelease();
        }

        goto LABEL_16;
      }
    }

    if (swift_dynamicCast() && (a1 == 0xD00000000000001DLL && 0x8000000100E719C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v16 = OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively;
      swift_beginAccess();
      *(v3 + v16) = v17;
LABEL_16:
      sub_10000959C(v19);
      sub_1000095E8(v21, &unk_101183F30, qword_100EBF960);

      return;
    }

    sub_10000959C(v19);
  }

  else
  {
  }

  JSSegue.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v20, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSPushSegue.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively] = 0;
  *&v3[OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

uint64_t *JSPushSegue.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_componentController) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_hasInvokedDidLoadPreemptively) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent) = 0;

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D51FFC()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore11JSPushSegue_delegate;

  return sub_1000D8F2C(v1);
}

double sub_100D520AC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t JSSettingsItemText.text.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSettingsItemText.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 34;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x3D2074786574203BLL;
    v16._object = 0xEA00000000002220;
    String.append(_:)(v16);
  }

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

void JSSettingsItemText.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a1;
  v10[1] = a2;
  sub_1000189C0(a3, v11);
  if (v11[3])
  {
    sub_1000189C0(v11, v9);

    if (swift_dynamicCast())
    {
      if (a1 == 1954047348 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = (v3 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
        swift_beginAccess();
        *v6 = v7;
        v6[1] = v8;

        sub_10000959C(v9);
        sub_1000095E8(v11, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    sub_10000959C(v9);
  }

  else
  {
  }

  sub_1000095E8(v10, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSSettingsItemText.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

uint64_t *JSSettingsItemText.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore18JSSettingsItemText_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  return JSObject.init(type:)(a1);
}

id JSSettingsItemText.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSSettingsItemText();
  return objc_msgSendSuper2(&v2, "dealloc");
}

MusicJSCore::JSSearchLandingItem::DisplayStyleType_optional __swiftcall JSSearchLandingItem.DisplayStyleType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8F68, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSSearchLandingItem_DisplayStyleType_prominent;
  }

  else
  {
    v4.value = MusicJSCore_JSSearchLandingItem_DisplayStyleType_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSSearchLandingItem.DisplayStyleType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E656E696D6F7270;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_100D52648(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656E696D6F7270;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x6E656E696D6F7270;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D526F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D5277C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D527F0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D52874(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010F8F68, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100D528D4(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6E656E696D6F7270;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t JSSearchLandingItem.titleText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSSearchLandingItem.displayStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSSearchLandingItem.isFeatured.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSSearchLandingItem.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    if (swift_dynamicCast())
    {
      if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = (v3 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
        swift_beginAccess();
        *v7 = v11;

LABEL_19:
        sub_10000959C(v12);
        sub_1000095E8(v14, &unk_101183F30, qword_100EBF960);

        return;
      }

      if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = _findStringSwitchCase(cases:string:)(&off_1010F8F68, v11);

        if (v8 <= 1)
        {
          v9 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle;
          swift_beginAccess();
          *(v3 + v9) = v8;
        }

        goto LABEL_19;
      }
    }

    if (swift_dynamicCast() && (a1 == 0x7275746165467369 && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v10 = OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured;
      swift_beginAccess();
      *(v3 + v10) = v11._countAndFlagsBits;
      goto LABEL_19;
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  JSMediaItem.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v13, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSSearchLandingItem.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured] = 0;
  return JSMediaItem.init(type:)(a1);
}

uint64_t *JSSearchLandingItem.init(type:)(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_titleText);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_displayStyle) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore19JSSearchLandingItem_isFeatured) = 0;
  return JSMediaItem.init(type:)(a1);
}

unint64_t sub_100D52D34()
{
  result = qword_1011C03B8;
  if (!qword_1011C03B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C03B8);
  }

  return result;
}

uint64_t type metadata accessor for JSSearchLandingItem(uint64_t a1)
{
  result = qword_1011C03E8;
  if (!qword_1011C03E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D52E50()
{
  sub_100D52FFC();
  v0 = static ICStoreRequestContext.storeFlow.getter();
  v1 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v0];

  v2 = [objc_allocWithZone(AMSSharedStoreReview) initWithBag:v1];
  static JSAppReviewSegue.storeReview = v2;
}

uint64_t *JSAppReviewSegue.storeReview.unsafeMutableAddressor()
{
  if (qword_1011BDB98 != -1)
  {
    swift_once();
  }

  return &static JSAppReviewSegue.storeReview;
}

id static JSAppReviewSegue.storeReview.getter()
{
  if (qword_1011BDB98 != -1)
  {
    swift_once();
  }

  v1 = static JSAppReviewSegue.storeReview;

  return v1;
}

uint64_t *JSAppReviewSegue.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore7JSSegue_playbackIntent] = 0;
  return JSObject.init(type:)(a1);
}

unint64_t sub_100D52FFC()
{
  result = qword_10118EAD8;
  if (!qword_10118EAD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10118EAD8);
  }

  return result;
}

MusicJSCore::JSMenu::SelectionStyle_optional __swiftcall JSMenu.SelectionStyle.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA110, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSMenu_SelectionStyle_checkmark;
  }

  else
  {
    v4.value = MusicJSCore_JSMenu_SelectionStyle_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSMenu.SelectionStyle.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x72616D6B63656863;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_100D530D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72616D6B63656863;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE90000000000006BLL;
  }

  if (*a2)
  {
    v5 = 0x72616D6B63656863;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006BLL;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D53174()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D531F4(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D53260(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D532DC(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA110, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100D5333C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x72616D6B63656863;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

NSString sub_100D53378()
{
  result = String._bridgeToObjectiveC()();
  static JSMenu.sectionsDidChangeNotification = result;
  return result;
}

uint64_t *JSMenu.sectionsDidChangeNotification.unsafeMutableAddressor()
{
  if (qword_1011BDBA0 != -1)
  {
    swift_once();
  }

  return &static JSMenu.sectionsDidChangeNotification;
}

id static JSMenu.sectionsDidChangeNotification.getter()
{
  if (qword_1011BDBA0 != -1)
  {
    swift_once();
  }

  v1 = static JSMenu.sectionsDidChangeNotification;

  return v1;
}

double property wrapper backing initializer of JSMenu.sections(uint64_t a1)
{
  sub_10010FC20(&qword_1011BE1C8, &qword_100F11410);
  Published.init(initialValue:)();
  return result;
}

uint64_t JSMenu.sections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void sub_100D53520(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_100D535A0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t JSMenu.sections.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

void (*JSMenu.sections.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

double JSMenu.$sections.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0428, &qword_100F16010);
  Published.projectedValue.getter();
  swift_endAccess();
  return result;
}

uint64_t JSMenu.$sections.setter(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011C0430, &qword_100F16018);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_10010FC20(&qword_1011C0428, &qword_100F16010);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*JSMenu.$sections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_10010FC20(&qword_1011C0430, &qword_100F16018);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_10010FC20(&qword_1011C0428, &qword_100F16010);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100A36374;
}

void *JSMenu.preselectedItem.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void JSMenu.preselectedItem.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t JSMenu.selectionStyle.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSMenu.selectionStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
  swift_beginAccess();
  *(v1 + v3) = a1 & 1;
}

void JSMenu.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a1;
  v22[1] = a2;
  sub_1000189C0(a3, v23);
  if (v24)
  {
    sub_1000189C0(v23, v21);

    sub_10010FC20(&qword_1011BE1C8, &qword_100F11410);
    if (swift_dynamicCast())
    {
      countAndFlagsBits = v20._countAndFlagsBits;
      if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v8 = static Published.subscript.modify();
        *v9 = _swiftEmptyArrayStorage;

        v8(v19, 0);

        swift_getKeyPath();
        swift_getKeyPath();
        v10 = v3;
        v11 = static Published.subscript.modify();
        sub_100CE8888(countAndFlagsBits, v12);
        v11(v19, 0);

        v13 = [objc_opt_self() defaultCenter];
        if (qword_1011BDBA0 != -1)
        {
          swift_once();
        }

        [v13 postNotificationName:static JSMenu.sectionsDidChangeNotification object:v10];

LABEL_9:
        sub_10000959C(v21);
LABEL_22:
        sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);

        return;
      }
    }

    sub_10000959C(v21);
  }

  else
  {
  }

  if (a1 == 0x63656C6573657270 && a2 == 0xEF6D657449646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_1000189C0(a3, v21);
    if (v21[3])
    {
      type metadata accessor for JSMenuItem();
      if (swift_dynamicCast())
      {
        v14 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
        swift_beginAccess();
        v15 = *(v3 + v14);
        *(v3 + v14) = v19[0];
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      sub_1000095E8(v21, &unk_101183F30, qword_100EBF960);
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
    swift_beginAccess();
    v15 = *(v3 + v16);
    *(v3 + v16) = 0;
    goto LABEL_21;
  }

  if (v24)
  {
    sub_1000189C0(v23, v21);
    if (swift_dynamicCast())
    {
      if (a1 == 0x6F697463656C6573 && a2 == 0xEE00656C7974536ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v17 = _findStringSwitchCase(cases:string:)(&off_1010FA110, v20);

        if (v17 <= 1)
        {
          v18 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle;
          swift_beginAccess();
          *(v3 + v18) = v17;
        }

        goto LABEL_9;
      }
    }

    sub_10000959C(v21);
  }

  JSViewModel.updateProperty(_:value:)(a1, a2, a3);
  sub_1000095E8(v22, &unk_1011C0D90, &unk_100F11470);
}

uint64_t *JSMenu.init(type:)(uint64_t *a1)
{
  v3 = sub_10010FC20(&qword_1011C0428, &qword_100F16010);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v11[1] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011BE1C8, &qword_100F11410);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_selectionStyle) = 0;
  v8 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityRecommendationData) = xmmword_100EFDB60;
  v9 = (v1 + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_editorialID);
  *v9 = 0;
  v9[1] = 0;
  return JSObject.init(type:)(a1);
}

void sub_100D54278()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore6JSMenu__sections;
  v2 = sub_10010FC20(&qword_1011C0428, &qword_100F16010);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem);
}

unint64_t sub_100D54300()
{
  result = qword_1011C0438;
  if (!qword_1011C0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C0438);
  }

  return result;
}

uint64_t type metadata accessor for JSMenu(uint64_t a1)
{
  result = qword_1011C0468;
  if (!qword_1011C0468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D54430(uint64_t a1)
{
  sub_100D544D4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100D544D4(uint64_t a1)
{
  if (!qword_1011C0478)
  {
    sub_1001109D0(&qword_1011BE1C8, &qword_100F11410);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011C0478);
    }
  }
}

uint64_t JSValueTransformerOptions.propertyName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSValueTransformerOptions.rawValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue;
  swift_beginAccess();
  return sub_1000189C0(v1 + v3, a1);
}

void JSValueTransformerOptions.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a1;
  v13[1] = a2;
  sub_1000189C0(a3, v14);
  if (v14[3])
  {
    sub_1000189C0(v14, v12);

    sub_10010FC20(&qword_1011C0498, &qword_100F16150);
    if (swift_dynamicCast())
    {
      if (a1 == 0x726F66736E617274 && a2 == 0xEB0000000072656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v7 = v3 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer;
        swift_beginAccess();
        *(v7 + 8) = v11;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
LABEL_14:
        sub_10000959C(v12);
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
        swift_beginAccess();
        *v8 = v10;
        v8[1] = v11;

        goto LABEL_14;
      }
    }

    sub_10000959C(v12);
  }

  else
  {
  }

  if ((a1 != 0x65756C6156776172 || a2 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1000095E8(v13, &unk_1011C0D90, &unk_100F11470);
    return;
  }

  v9 = OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue;
  swift_beginAccess();
  sub_1002AD930(a3, v3 + v9);
  swift_endAccess();
LABEL_21:
  sub_1000095E8(v14, &unk_101183F30, qword_100EBF960);
}

uint64_t *JSValueTransformerOptions.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v3[OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  return JSObject.init(type:)(a1);
}

uint64_t *JSValueTransformerOptions.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_propertyName);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue);
  *v4 = 0u;
  v4[1] = 0u;

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D549C0()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_transformer);

  return sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore25JSValueTransformerOptions_rawValue, &unk_101183F30, qword_100EBF960);
}

unint64_t JSGridSection.UniformCellType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C61;
  v2 = 0xD000000000000011;
  if (a1 != 5)
  {
    v2 = 1869768040;
  }

  v3 = 0x776F68537674;
  if (a1 != 3)
  {
    v3 = 0x65736163776F6873;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x747369747261;
  if (a1 != 1)
  {
    v4 = 0x6F526D6F74737563;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_100D54BB8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_100D54CCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100D54CFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6D75626C61;
  v5 = 0x8000000100E6CCB0;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 1869768040;
    v5 = 0xE400000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x776F68537674;
  if (v2 != 3)
  {
    v8 = 0x65736163776F6873;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  if (v2 != 1)
  {
    v10 = 0x6F526D6F74737563;
    v9 = 0xEF6D75626C416D6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

double JSGridSection.items.getter()
{
  swift_beginAccess();

  return result;
}

void sub_100D54E20(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();
  *(v1 + v3) = a1;

  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
  }

  else
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_100D012E4(v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v9 + 1) = &protocol witness table for JSGridSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v5 != v6);
  }
}

uint64_t JSGridSection.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t JSGridSection.isRankedList.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSGridSection.uniformCellType.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t JSGridSection.description.getter()
{
  v1 = v0;
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  _print_unlocked<A, B>(_:_:)();
  v10 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {

    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 34;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 0x20656C746974203BLL;
    v16._object = 0xEB0000000022203DLL;
    String.append(_:)(v16);
  }

  v17._countAndFlagsBits = 62;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  return 0;
}

Swift::Void __swiftcall JSGridSection.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  v3 = _._countAndFlagsBits == 0x7449646E65707061 && _._object == 0xEB00000000736D65;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2))
    {
      sub_10000DD18(arguments._rawValue + 32, v5);
      sub_10010FC20(&qword_1011BE1B8, &qword_100F16190);
      if (swift_dynamicCast())
      {
        sub_100D55314(v4);
      }
    }
  }
}

void sub_100D55314(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items;
  swift_beginAccess();

  sub_100CE8810(v3, v4);
  swift_endAccess();
  v5 = *(v1 + v2);
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100D012E4(v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = &v8[OBJC_IVAR____TtC11MusicJSCore10JSGridItem_delegate];
      swift_beginAccess();
      *(v10 + 1) = &protocol witness table for JSGridSection;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    while (v6 != v7);
  }
}

void JSGridSection.updateProperty(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a1;
  v16[1] = a2;
  sub_1000189C0(a3, &v17);
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v15[0] = v17;
    v15[1] = v18;
    sub_1000189C0(v15, v13);
    if (v13[3])
    {

      sub_10010FC20(&qword_1011BE1B8, &qword_100F16190);
      if (swift_dynamicCast())
      {
        sub_100D54E20(v14._countAndFlagsBits);
      }
    }

    else
    {

      sub_1000095E8(v13, &unk_101183F30, qword_100EBF960);
    }

    v6 = v15;
    goto LABEL_9;
  }

  if (!*(&v18 + 1))
  {

    goto LABEL_33;
  }

  sub_1000189C0(&v17, v15);

  if (!swift_dynamicCast())
  {
LABEL_19:
    if (swift_dynamicCast() && (a1 == 0x64656B6E61527369 && a2 == 0xEC0000007473694CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v9 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList;
      swift_beginAccess();
      *(v3 + v9) = v14._countAndFlagsBits;
      goto LABEL_30;
    }

    if (swift_dynamicCast())
    {
      if (a1 == 0x436D726F66696E75 && a2 == 0xEF657079546C6C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v10 = _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(v14);
        if (v10 != 7)
        {
          v11 = v10;
          v12 = OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType;
          swift_beginAccess();
          *(v3 + v12) = v11;
        }

        goto LABEL_30;
      }
    }

    sub_10000959C(v15);
LABEL_33:
    sub_1000095E8(v16, &unk_1011C0D90, &unk_100F11470);
    return;
  }

  object = v14._object;
  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    goto LABEL_19;
  }

  v8 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  swift_beginAccess();
  *v8 = v14._countAndFlagsBits;
  v8[1] = object;

LABEL_30:
  sub_10000959C(v15);
  v6 = &v17;
LABEL_9:
  sub_1000095E8(v6, &unk_101183F30, qword_100EBF960);
}

double JSGridSection.gridItemAccessorySocialProfilesDidChange(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *JSGridSection.__allocating_init(type:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items] = _swiftEmptyArrayStorage;
  v4 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList] = 0;
  v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType] = 7;
  *&v3[OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  return JSObject.init(type:)(a1);
}

uint64_t *JSGridSection.init(type:)(uint64_t *a1)
{
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_items) = _swiftEmptyArrayStorage;
  v3 = (v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_isRankedList) = 0;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_uniformCellType) = 7;
  *(v1 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate + 8) = 0;
  swift_unknownObjectWeakInit();

  return JSObject.init(type:)(a1);
}

uint64_t sub_100D559B4()
{

  v1 = v0 + OBJC_IVAR____TtC11MusicJSCore13JSGridSection_delegate;

  return sub_1000D8F2C(v1);
}

unint64_t _s11MusicJSCore13JSGridSectionC15UniformCellTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FA298, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D55B00()
{
  result = qword_1011C04F0;
  if (!qword_1011C04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C04F0);
  }

  return result;
}

uint64_t *JSApplication.__allocating_init(isDeployedScript:selectedTabIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  v7 = objc_allocWithZone(v3);
  return JSApplication.init(isDeployedScript:selectedTabIdentifier:)(v6, a2, a3);
}

double JSApplication.didFinishLaunching(with:applicationScriptURL:)(char a1)
{
  v2 = v1;
  v4 = sub_10010BC60(_swiftEmptyArrayStorage);
  v5 = 0x72616C75676572;
  if (a1)
  {
    v5 = 0x4C52556E65706FLL;
  }

  v18 = &type metadata for String;
  *&v17 = v5;
  *(&v17 + 1) = 0xE700000000000000;
  sub_100016270(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v16, 0xD000000000000010, 0x8000000100E71BC0, isUniquelyReferenced_nonNull_native);
  v7 = URL.absoluteString.getter();
  v18 = &type metadata for String;
  *&v17 = v7;
  *(&v17 + 1) = v8;
  sub_100016270(&v17, v16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v16, 0xD000000000000014, 0x8000000100E71BE0, v9);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  *(v11 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v11 + 32) = v4;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = _swiftEmptyArrayStorage;
  *(v12 + 32) = 0x68636E75614C6E6FLL;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 48) = v2;
  *(v12 + 56) = v10;
  *(v12 + 64) = 0;
  v13 = v2;
  v14 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05168, v12);

  return result;
}

uint64_t JSApplication.SharedWithYouMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = a1 + *(result + 20);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

MusicJSCore::JSApplication::ActivationMethod_optional __swiftcall JSApplication.ActivationMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB4E0, v2);

  if (v3 == 1)
  {
    v4.value = MusicJSCore_JSApplication_ActivationMethod_openURL;
  }

  else
  {
    v4.value = MusicJSCore_JSApplication_ActivationMethod_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t JSApplication.ActivationMethod.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x4C52556E65706FLL;
  }

  else
  {
    return 0x72616C75676572;
  }
}

uint64_t sub_100D55F18(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C52556E65706FLL;
  }

  else
  {
    v2 = 0x72616C75676572;
  }

  if (*a2)
  {
    v3 = 0x4C52556E65706FLL;
  }

  else
  {
    v3 = 0x72616C75676572;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100D55FA0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D56018(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D56074(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100D560E8(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB4E0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100D56148(uint64_t *a1@<X8>)
{
  v2 = 0x72616C75676572;
  if (*v1)
  {
    v2 = 0x4C52556E65706FLL;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t *JSApplication.init(isDeployedScript:selectedTabIdentifier:)(int a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v66 = a2;
  v67 = a3;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = &v62[-v6];
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v62[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented) = 0;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers) = _swiftEmptyArrayStorage;
  v12 = (v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  *v12 = 0;
  v12[1] = 0;
  *(v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent) = 2;
  v13 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  v14 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v14 - 8) + 56))(v3 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer;
  type metadata accessor for JSBridge.AsynchronousInitializer();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v3 + v15) = v16;
  v17 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
  *(v3 + v19) = sub_100CE5708(_swiftEmptyArrayStorage);
  v20 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  v21 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0;
  v22 = v3 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext;
  v23 = sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v9 + 8);
  v24 = v9 + 8;
  v25(v11, v8);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_28;
  }

  v63 = a1;
  v64 = v23;
  v26 = [objc_opt_self() mainBundle];
  v27 = [v26 infoDictionary];

  v65 = v7;
  if (!v27 || (v28 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v27, !v28))
  {
    v33 = v12;
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_16;
  }

  if (!*(v28 + 16))
  {
    goto LABEL_10;
  }

  v29 = sub_100019C10(0xD000000000000012, 0x8000000100E5C7E0);
  if ((v30 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_10000DD18(*(v28 + 56) + 32 * v29, &v70);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v31 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_11;
  }

  v31 = v68;
  v32 = v69;
LABEL_11:
  v33 = v12;
  if (*(v28 + 16) && (v34 = sub_100019C10(0xD00000000000001ALL, 0x8000000100E5C7C0), (v35 & 1) != 0))
  {
    sub_10000DD18(*(v28 + 56) + 32 * v34, &v70);

    if (swift_dynamicCast())
    {
      v36 = v68;
      v37 = v69;
      goto LABEL_17;
    }
  }

  else
  {
  }

LABEL_16:
  v36 = 0;
  v37 = 0xE000000000000000;
LABEL_17:
  v38 = (v4 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_identifier);
  *v38 = v31;
  v38[1] = v32;
  v39 = (v4 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_version);
  *v39 = v36;
  v39[1] = v37;
  v40 = v31;
  if (v67)
  {
    v41 = v66;
  }

  else
  {
    v41 = 0x7972617262696CLL;
  }

  if (v67)
  {
    v42 = v67;
  }

  else
  {
    v42 = 0xE700000000000000;
  }

  swift_beginAccess();
  *v33 = v41;
  v33[1] = v42;

  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  *(inited + 48) = v40;
  v44 = v33;
  *(inited + 56) = v32;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6E6F6973726576;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v36;
  *(inited + 104) = v37;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000100E71C00;
  v45 = objc_allocWithZone(NSNumber);
  v46 = [v45 initWithBool:v63 & 1];
  v47 = sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  *(inited + 144) = v46;
  *(inited + 168) = v47;
  *(inited + 176) = 0xD000000000000015;
  *(inited + 184) = 0x8000000100E71C20;
  v48 = v33[1];
  if (v48)
  {
    v49 = *v44;
    *(&v71 + 1) = &type metadata for String;
    *&v70 = v49;
    *(&v70 + 1) = v48;
    sub_100016270(&v70, (inited + 192));
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v50 = [objc_allocWithZone(NSNull) init];
    *(inited + 216) = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *(inited + 192) = v50;
    if (*(&v71 + 1))
    {
      sub_1000095E8(&v70, &unk_101183F30, qword_100EBF960);
    }
  }

  v51 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100EBC6B0;
  *(v52 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v52 + 32) = v51;
  v24 = 1;
  *&v70 = v52;
  *(&v70 + 1) = 1;
  v72 = 0;
  v71 = 0uLL;
  v73 = 0;
  v53 = JSObject.init(type:)(&v70);
  v54 = type metadata accessor for TaskPriority();
  v55 = v65;
  (*(*(v54 - 8) + 56))(v65, 1, 1, v54);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v53;
  v12 = v53;
  sub_1001F4CB8(0, 0, v55, &unk_100F162A8, v56);

  if (qword_1011BDB08 != -1)
  {
    goto LABEL_30;
  }

LABEL_28:
  v57 = static JSBridge.shared;
  v58 = swift_allocObject();
  *(v58 + 16) = 0x746163696C707041;
  *(v58 + 24) = 0xEB000000006E6F69;
  *(v58 + 32) = v12;
  *(v58 + 40) = v57;
  *(v58 + 48) = v24;
  v59 = v12;
  v60 = v57;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100CF9E54, v58);

  return v59;
}

uint64_t sub_100D56A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) - 8);
  v4[23] = v7;
  v4[24] = *(v7 + 64);
  v4[25] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[26] = v8;
  v9 = swift_task_alloc();
  v4[27] = v9;
  *v9 = v4;
  v9[1] = sub_100D56BCC;

  return sub_100CFE8F0(v8);
}

uint64_t sub_100D56BCC()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100D56F68;
  }

  else
  {
    v2 = sub_100D56CE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D56CE0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v13 = v0[22];
  v4 = v0[19];
  v16 = v0[21];
  v17 = v0[20];
  v5 = v0[17];
  v15 = v0[18];
  v6 = v0[16];
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  sub_100CFF2C8(v1, v2);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  sub_100CFF32C(v2, v8 + v7);
  v0[12] = sub_100D5CF1C;
  v0[13] = v8;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10002BC98;
  v0[11] = &unk_1011023A8;
  v9 = _Block_copy(v0 + 8);
  v10 = v6;
  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_100D5CED4(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v15 + 8))(v4, v5);
  (*(v16 + 8))(v13, v17);
  sub_100CFF390(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100D56F68()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v13 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v0[6] = sub_100D5CECC;
  v0[7] = v7;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002BC98;
  v0[5] = &unk_101102358;
  v8 = _Block_copy(v0 + 2);
  v9 = v6;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100D5CED4(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v13);

  v10 = v0[1];

  return v10();
}

uint64_t sub_100D571B4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011C0598, &unk_100F162B0);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  sub_100CFF2C8(a2, &v11[-v6]);
  v8 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_1000089F8(a1 + v9, v5, &qword_1011C0598, &unk_100F162B0);
  swift_beginAccess();
  sub_100D5C92C(v7, a1 + v9);
  swift_endAccess();
  sub_100D5BC60(v5);
  sub_1000095E8(v5, &qword_1011C0598, &unk_100F162B0);
  return sub_1000095E8(v7, &qword_1011C0598, &unk_100F162B0);
}

uint64_t JSApplication.sharedWithYouMetadata.setter(uint64_t a1)
{
  sub_10010FC20(&qword_1011C0598, &unk_100F162B0);
  __chkstk_darwin();
  v4 = &v7[-v3];
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_1000089F8(v1 + v5, v4, &qword_1011C0598, &unk_100F162B0);
  swift_beginAccess();
  sub_100D5C92C(a1, v1 + v5);
  swift_endAccess();
  sub_100D5BC60(v4);
  sub_1000095E8(a1, &qword_1011C0598, &unk_100F162B0);
  return sub_1000095E8(v4, &qword_1011C0598, &unk_100F162B0);
}

uint64_t sub_100D57440(uint64_t a1)
{
  sub_10010FC20(&qword_1011C0598, &unk_100F162B0);
  __chkstk_darwin();
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v11[-v4];
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v8 = &v5[*(v7 + 20)];
  *v8 = 0;
  v8[4] = 1;
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v9 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  sub_1000089F8(a1 + v9, v3, &qword_1011C0598, &unk_100F162B0);
  swift_beginAccess();
  sub_100D5C92C(v5, a1 + v9);
  swift_endAccess();
  sub_100D5BC60(v3);
  sub_1000095E8(v3, &qword_1011C0598, &unk_100F162B0);
  return sub_1000095E8(v5, &qword_1011C0598, &unk_100F162B0);
}

void sub_100D57604()
{
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate);
  sub_1000D8F2C(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate);

  sub_1000095E8(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata, &qword_1011C0598, &unk_100F162B0);

  sub_100D3086C(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext + 32));
  sub_100D3086C(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext + 32));

  sub_100D3086C(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 32));
  sub_100D3086C(*(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 8), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 16), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 24), *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 32));
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext);
  v2 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 16);
  v4 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 24);
  v5 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext + 32);

  sub_100D3086C(v1, v2, v3, v4, v5);
}

id JSApplication.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
  if (*&v0[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext])
  {
    [*(v2 + 4) invalidate];
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = *(v2 + 3);
  v7 = *(v2 + 4);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  sub_100D3086C(v3, v4, v5, v6, v7);
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "dealloc");
}

void (*JSApplication.scriptingMessageDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100D57A34;
}

double sub_100D57A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*JSApplication.globalMessagePresentationDelegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_100D5CFA0;
}

double JSApplication.initiateOpenURL(_:sourceApplicationBundleIdentifier:referrerURL:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a2;
  v42 = a4;
  v45 = a1;
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v41 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  v50[0] = a5;
  v50[1] = a6;
  v50[2] = 0;
  v50[3] = 0xE000000000000000;
  v50[4] = 0;
  v20 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
  swift_beginAccess();
  swift_retain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v47[0] = *&v7[v20];
  *&v7[v20] = 0x8000000000000000;
  v43 = v17;
  sub_100CEA678(v50, v17, v19, isUniquelyReferenced_nonNull_native);

  *&v7[v20] = *&v47[0];
  swift_endAccess();
  v22 = sub_10010BC60(_swiftEmptyArrayStorage);
  if (a3)
  {
    v49 = &type metadata for String;
    *&v48 = v41;
    *(&v48 + 1) = a3;
    sub_100016270(&v48, v47);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    sub_1006C5E68(v47, 0xD000000000000021, 0x8000000100E45160, v23);
    v22 = v46;
  }

  sub_1000089F8(v42, v12, &qword_101183A20, &unk_100EBCF80);
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v12, 1, v24) == 1)
  {
    sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
  }

  else
  {
    v26 = URL.absoluteString.getter();
    v28 = v27;
    (*(v25 + 8))(v12, v24);
    v49 = &type metadata for String;
    *&v48 = v26;
    *(&v48 + 1) = v28;
    sub_100016270(&v48, v47);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v46 = v22;
    sub_1006C5E68(v47, 0x7265727265666572, 0xEB000000004C5255, v29);
    v22 = v46;
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v30 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBEF50;
  *(v31 + 56) = ObjectType;
  *(v31 + 32) = v7;
  v32 = v7;
  v33 = URL.absoluteString.getter();
  *(v31 + 88) = &type metadata for String;
  *(v31 + 64) = v33;
  *(v31 + 72) = v34;
  v35 = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v31 + 96) = v22;
  *(v31 + 152) = &type metadata for String;
  v36 = v43;
  *(v31 + 120) = v35;
  *(v31 + 128) = v36;
  *(v31 + 136) = v19;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v37 = swift_allocObject();
  *(v37 + 16) = v31;
  *(v37 + 24) = _swiftEmptyArrayStorage;
  *(v37 + 32) = 0x6574616974696E69;
  *(v37 + 40) = 0xEF4C52556E65704FLL;
  *(v37 + 48) = v32;
  *(v37 + 56) = v30;
  *(v37 + 64) = 0;
  v38 = v32;
  v39 = v30;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v37);

  return result;
}

Swift::Void __swiftcall JSApplication.willEnterForeground(with:isBadged:)(MusicJSCore::JSApplication::ActivationMethod with, Swift::Bool isBadged)
{
  v3 = v2;
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v6 = sub_100CEEC00();
  v7 = [objc_opt_self() sharedApplication];
  v8 = swift_allocObject();
  *(v8 + 16) = with & 1;
  *(v8 + 17) = isBadged;
  *(v8 + 24) = v3;
  *(v8 + 32) = v6 & 1;
  v11[4] = sub_100D5C99C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10002BC98;
  v11[3] = &unk_101101DF8;
  v9 = _Block_copy(v11);
  v10 = v3;

  [v7 _performBlockAfterCATransactionCommits:v9];
  _Block_release(v9);
}

void sub_100D581E0(char a1, char a2, void *a3, char a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint;
    v15 = *(v12 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint);
    *(v12 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) = 1;
    sub_100D58390(a1 & 1, a2 & 1, a3);
    *(v12 + v14) = v15;
    if (a4)
    {
      sub_100CEEFA4();
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100D58390(char a1, char a2, void *a3)
{
  v6 = sub_10010BC60(_swiftEmptyArrayStorage);
  v7 = 0x72616C75676572;
  if (a1)
  {
    v7 = 0x4C52556E65706FLL;
  }

  v18 = &type metadata for String;
  *&v17 = v7;
  *(&v17 + 1) = 0xE700000000000000;
  sub_100016270(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v16, 0xD000000000000010, 0x8000000100E71BC0, isUniquelyReferenced_nonNull_native);
  v18 = &type metadata for Bool;
  LOBYTE(v17) = a2;
  sub_100016270(&v17, v16);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v16, 0x6465676461427369, 0xE800000000000000, v9);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBC6B0;
  *(v11 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v11 + 32) = v6;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = _swiftEmptyArrayStorage;
  *(v12 + 32) = 0xD000000000000014;
  *(v12 + 40) = 0x8000000100E721D0;
  *(v12 + 48) = a3;
  *(v12 + 56) = v10;
  *(v12 + 64) = 0;
  v13 = a3;
  v14 = v10;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v12);

  return result;
}

double JSApplication.didBecomeActive(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
  if (*&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext])
  {
    [*(v4 + 4) invalidate];
    v5 = *v4;
    if (*v4)
    {

      v5(0);
    }
  }

  v6 = [objc_allocWithZone(NSUUID) init];
  v7 = [v6 UUIDString];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = v8;
  v13[4] = v10;
  aBlock[4] = sub_100D5C9B0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10027D328;
  aBlock[3] = &unk_101101E70;
  v14 = _Block_copy(aBlock);

  v15 = [v11 scheduledTimerWithTimeInterval:0 repeats:v14 block:5.0];
  _Block_release(v14);
  v16 = *v4;
  v17 = *(v4 + 1);
  v19 = *(v4 + 2);
  v18 = *(v4 + 3);
  v30 = v3;
  v20 = *(v4 + 4);
  *v4 = a1;
  *(v4 + 1) = a2;
  v32 = v8;
  *(v4 + 2) = v8;
  *(v4 + 3) = v10;
  *(v4 + 4) = v15;

  v21 = v15;

  sub_100D3086C(v16, v17, v19, v18, v20);
  v22 = sub_10010BC60(_swiftEmptyArrayStorage);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v23 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100EBE260;
  *(v24 + 56) = ObjectType;
  *(v24 + 32) = v30;
  v25 = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v24 + 64) = v22;
  *(v24 + 120) = &type metadata for String;
  *(v24 + 88) = v25;
  *(v24 + 96) = v32;
  *(v24 + 104) = v10;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = _swiftEmptyArrayStorage;
  *(v26 + 32) = 0xD000000000000016;
  *(v26 + 40) = 0x8000000100E71C40;
  *(v26 + 48) = v30;
  *(v26 + 56) = v23;
  *(v26 + 64) = 0;
  v27 = v30;
  v28 = v23;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v26);

  return result;
}

void sub_100D58960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [a1 invalidate];
    v9 = &v8[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
    v10 = *&v8[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext];
    if (v10)
    {
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v14 = *(v9 + 3);
      v13 = *(v9 + 4);
      v15 = v12 == a3 && v14 == a4;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        *(v9 + 4) = 0;
        *v9 = 0u;
        *(v9 + 1) = 0u;
        v10(0);
      }

      else
      {
        sub_100D5CE80(v10, v11, v12, v14, v13);
      }

      v8 = v13;
    }
  }
}

Swift::Void __swiftcall JSApplication.willResignActive()()
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x8000000100E71C60;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v2);
}

Swift::Void __swiftcall JSApplication.didEnterBackground()()
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v1 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  *(v2 + 16) = _swiftEmptyArrayStorage;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0xD000000000000014;
  *(v2 + 40) = 0x8000000100E71C80;
  *(v2 + 48) = v0;
  *(v2 + 56) = v1;
  *(v2 + 64) = 0;
  v3 = v0;
  v4 = v1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v2);
}

unint64_t JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v3 = 0xD000000000000018;
    if (a1 != 8)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 == 7)
    {
      v3 = 0xD000000000000012;
    }

    v4 = 0xD000000000000017;
    if (a1 == 5)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v4;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 != 3)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 2)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000011;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100D58DA4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100D58E2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_100D58E90(uint64_t a1)
{
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int sub_100D58EE4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D58F44@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D58F74@<X0>(unint64_t *a1@<X8>)
{
  result = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

__n128 JSApplication.SubscriptionFlowConfiguration.init(placement:source:options:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 32);
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  *(a4 + 48) = a3;
  return result;
}

uint64_t JSApplication.SubscriptionFlowConfiguration.init(placement:model:options:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = a3;
  return result;
}

double JSApplication.initiateSubscribeFlow(configuration:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext])
  {
    a2(0);
    return result;
  }

  v11 = ObjectType;
  v44 = a2;
  v12 = sub_10010BC60(_swiftEmptyArrayStorage);
  v13 = JSApplication.SubscriptionFlowConfiguration.Placement.rawValue.getter(*a1);
  v47 = &type metadata for String;
  *&v46 = v13;
  *(&v46 + 1) = v14;
  sub_100016270(&v46, v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C5E68(v45, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  v16 = v12;
  v17 = *(a1 + 40);
  if (v17 == 255)
  {
    goto LABEL_17;
  }

  v18 = *(a1 + 8);
  v19 = *(a1 + 32);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v43 = *(a1 + 24);
    v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v21 = MPModelObject.bestIdentifier(for:)(*v20, 1u);
    v23 = v22;
    if (!v22)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v43 = *(a1 + 24);

  v21 = v18;
  if (v23)
  {
LABEL_9:
    v47 = &type metadata for String;
    *&v46 = v21;
    *(&v46 + 1) = v23;
    sub_100016270(&v46, v45);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v45, 25705, 0xE200000000000000, v24);
  }

LABEL_10:
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_17;
    }

    v25 = MPModelObject.mediaKitPlayableKind.getter();
    if (v25 == 10)
    {
      goto LABEL_17;
    }

    v26 = MPModelObject.MediaKitPlayableKind.rawValue.getter(v25);
    v19 = v27;
    goto LABEL_16;
  }

  if (v19)
  {

    v26 = v43;
LABEL_16:
    v47 = &type metadata for String;
    *&v46 = v26;
    *(&v46 + 1) = v19;
    sub_100016270(&v46, v45);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v45, 0x74694B616964656DLL, 0xEC000000646E694BLL, v28);
  }

LABEL_17:
  v29 = *(a1 + 48);
  if (v29)
  {
    v30 = sub_100DD4CD8(v29);
    v47 = sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
    *&v46 = v30;
    sub_100016270(&v46, v45);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C5E68(v45, 0xD000000000000014, 0x8000000100E71CC0, v31);
  }

  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100EBDC20;
  *(v32 + 56) = v11;
  *(v32 + 32) = v4;
  *(v32 + 88) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v32 + 64) = v16;
  v33 = *v9;
  v34 = v9[1];
  v35 = v9[2];
  v36 = v9[3];
  v37 = v9[4];
  *v9 = v44;
  v9[1] = a3;
  *(v9 + 1) = xmmword_100EC61F0;
  v9[4] = 0;
  v38 = v4;

  sub_100D3086C(v33, v34, v35, v36, v37);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v39 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  *(v40 + 24) = _swiftEmptyArrayStorage;
  *(v40 + 32) = 0xD00000000000001CLL;
  *(v40 + 40) = 0x8000000100E71CA0;
  *(v40 + 48) = v38;
  *(v40 + 56) = v39;
  *(v40 + 64) = 0;
  v41 = v38;
  v42 = v39;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v40);

  return result;
}

double JSApplication.updatePrivacyOnboardingPresentationStatus(isPresented:completionHandler:)(char a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  v3[v7] = a1;
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v9 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext];
  v10 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 8];
  v11 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 16];
  v12 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 24];
  v13 = *&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext + 32];
  *v8 = a2;
  *(v8 + 1) = a3;
  *(v8 + 1) = xmmword_100EC61F0;
  *(v8 + 4) = 0;
  swift_retain_n();
  sub_100D3086C(v9, v10, v11, v12, v13);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v14 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBDC20;
  *(v15 + 56) = ObjectType;
  *(v15 + 32) = v3;
  *(v15 + 88) = &type metadata for Bool;
  *(v15 + 64) = a1 & 1;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = _swiftEmptyArrayStorage;
  *(v16 + 32) = 0xD000000000000034;
  *(v16 + 40) = 0x8000000100E71CE0;
  *(v16 + 48) = v3;
  *(v16 + 56) = v14;
  *(v16 + 64) = 0;
  v3;
  v17 = v14;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v16);

  if ((a1 & 1) == 0)
  {
    sub_100D59620();
  }

  return result;
}

double sub_100D59620()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
    swift_beginAccess();
    v4 = *(v0 + v3);
    *(v0 + v3) = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

double JSApplication.updatePrivacyTermsAccepted(completionHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v7 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext];
  v8 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 8];
  v9 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 16];
  v10 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 24];
  v11 = *&v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext + 32];
  *v6 = a1;
  *(v6 + 1) = a2;
  *(v6 + 1) = xmmword_100EC61F0;
  *(v6 + 4) = 0;
  swift_retain_n();
  sub_100D3086C(v7, v8, v9, v10, v11);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v12 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100EBC6B0;
  *(v13 + 56) = ObjectType;
  *(v13 + 32) = v2;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = _swiftEmptyArrayStorage;
  *(v14 + 32) = 0xD00000000000001CLL;
  *(v14 + 40) = 0x8000000100E71D20;
  *(v14 + 48) = v2;
  *(v14 + 56) = v12;
  *(v14 + 64) = 0;
  v15 = v2;
  v16 = v12;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v14);

  return result;
}

double JSApplication.performModalMessagePresentation(message:completionHandler:)(void *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext];
  if (*&v3[OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext])
  {
    a2(0);
  }

  else
  {
    v10 = ObjectType;
    *v8 = a2;
    *(v8 + 1) = a3;
    *(v8 + 1) = xmmword_100EC61F0;
    *(v8 + 4) = 0;
    sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = 0x6567617373656DLL;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 72) = type metadata accessor for JSApplicationMessage();
    *(inited + 48) = a1;

    v12 = a1;
    v13 = sub_10010BC60(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &unk_1011927D0, &unk_100EBA560);
    if (qword_1011BDB08 != -1)
    {
      swift_once();
    }

    v14 = static JSBridge.shared;
    sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBDC20;
    *(v15 + 56) = v10;
    *(v15 + 32) = v3;
    *(v15 + 88) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
    *(v15 + 64) = v13;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = _swiftEmptyArrayStorage;
    *(v16 + 32) = 0xD00000000000002BLL;
    *(v16 + 40) = 0x8000000100E71D40;
    *(v16 + 48) = v3;
    *(v16 + 56) = v14;
    *(v16 + 64) = 0;
    v17 = v3;
    v18 = v14;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v16);
  }

  return result;
}

Swift::Void __swiftcall JSApplication.willContinueUserActivity(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  strcpy((inited + 32), "activityType");
  *(inited + 72) = &type metadata for String;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = countAndFlagsBits;
  *(inited + 56) = object;

  v5 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &unk_1011927D0, &unk_100EBA560);
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v6 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6B0;
  *(v7 + 56) = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  *(v7 + 32) = v5;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = _swiftEmptyArrayStorage;
  *(v8 + 32) = 0xD00000000000001ALL;
  *(v8 + 40) = 0x8000000100E71D70;
  *(v8 + 48) = v1;
  *(v8 + 56) = v6;
  *(v8 + 64) = 0;
  v9 = v1;
  v10 = v6;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v8);
}

uint64_t JSApplication.isPrivacyDisclaimerPresented.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSApplication.isPrivacyDisclaimerPresented.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_isPrivacyDisclaimerPresented;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double JSApplication.pendingPrivacyDisclaimerDismissalCompletionHandlers.getter()
{
  swift_beginAccess();

  return result;
}

double JSApplication.pendingPrivacyDisclaimerDismissalCompletionHandlers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyDisclaimerDismissalCompletionHandlers;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t JSApplication.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_identifier);

  return v1;
}

uint64_t JSApplication.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_version);

  return v1;
}

double sub_100D59F40(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier];
  swift_beginAccess();
  v8 = *(v6 + 1);
  if (v8)
  {
    if (a2)
    {
      v9 = *v6 == a1 && v8 == a2;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return result;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v10 = static JSBridge.shared;
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100EBDC20;
  *(v11 + 56) = ObjectType;
  *(v11 + 32) = v2;
  v12 = *(v6 + 1);
  if (v12)
  {
    v13 = *v6;
    *(&v22 + 1) = &type metadata for String;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    sub_100016270(&v21, (v11 + 64));
    v14 = v2;
  }

  else
  {
    v22 = 0u;
    v15 = objc_allocWithZone(NSNull);
    v16 = v2;
    v17 = [v15 init];
    *(v11 + 88) = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *(v11 + 64) = v17;
    if (*(&v22 + 1))
    {
      sub_1000095E8(&v21, &unk_101183F30, qword_100EBF960);
    }
  }

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = _swiftEmptyArrayStorage;
  *(v18 + 32) = 0xD000000000000011;
  *(v18 + 40) = 0x8000000100E721B0;
  *(v18 + 48) = v2;
  *(v18 + 56) = v10;
  *(v18 + 64) = 0;

  v19 = v10;
  v20 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D05FE0, v18);

  return result;
}

uint64_t JSApplication.selectedTabIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double JSApplication.selectedTabIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_100D59F40(v6, v7);

  return result;
}

void (*JSApplication.selectedTabIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_selectedTabIdentifier;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_100D5A304;
}

void sub_100D5A304(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  if (a2)
  {

    sub_100D59F40(v9, v8);
  }

  else
  {
    sub_100D59F40(v9, v8);
  }

  free(v2);
}

void sub_100D5A398(char *a1, char a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v8 = static JSBridge.shared;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint;
    v11 = *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint);
    *(v8 + OBJC_IVAR____TtC11MusicJSCore8JSBridge_shouldPrependRecordsBeforeCurrentSuspensionPoint) = 1;
    sub_100D5A530(a1);
    *(v8 + v10) = v11;
    if (a2)
    {
      sub_100CEEFA4();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100D5A530(char *a1)
{
  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v2 = static JSBridge.shared;
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v4 = a1[v3];
  if (v4 == 2)
  {
    v11 = 0u;
    v12 = 0u;
    v5 = [objc_allocWithZone(NSNull) init];
    v14 = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *&v13 = v5;
  }

  else
  {
    *(&v12 + 1) = &type metadata for Bool;
    LOBYTE(v11) = v4 & 1;
    sub_100016270(&v11, &v13);
  }

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  sub_1000089F8(&v13, &v11, &unk_101183F30, qword_100EBF960);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = v12;
  *(v6 + 24) = v11;
  *(v6 + 40) = v7;
  *(v6 + 56) = 0xD00000000000001DLL;
  *(v6 + 64) = 0x8000000100E72040;
  *(v6 + 72) = a1;
  *(v6 + 80) = v2;
  *(v6 + 88) = 0;
  v8 = a1;
  v9 = v2;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35EE8, v6);

  return sub_1000095E8(&v13, &unk_101183F30, qword_100EBF960);
}

uint64_t JSApplication.applicationMessageWillPresent.getter()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

void JSApplication.applicationMessageWillPresent.setter(int a1)
{
  v2 = v1;
  v4 = a1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  v6 = v2[v5];
  v2[v5] = a1;
  if (v4 == 2)
  {
    if (v6 == 2)
    {
      return;
    }
  }

  else if (v6 != 2 && ((v6 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v7 = sub_100CEEC00();
  v8 = [objc_opt_self() sharedApplication];
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v7 & 1;
  aBlock[4] = sub_100D5CA08;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_101102000;
  v10 = _Block_copy(aBlock);
  v11 = v2;

  [v8 _performBlockAfterCATransactionCommits:v10];
  _Block_release(v10);
}

void (*JSApplication.applicationMessageWillPresent.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_applicationMessageWillPresent;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return sub_100D5A99C;
}

void sub_100D5A99C(uint64_t a1)
{
  v1 = *a1;
  JSApplication.applicationMessageWillPresent.setter(*(*a1 + 32));

  free(v1);
}

Swift::Void __swiftcall JSApplication.invokeMethod(_:arguments:)(Swift::String _, Swift::OpaquePointer arguments)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = _._countAndFlagsBits == 0xD00000000000001ELL && 0x8000000100E71D90 == _._object;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (*(arguments._rawValue + 2) == 2)
    {
      sub_10000DD18(arguments._rawValue + 64, &v57);
      type metadata accessor for JSSegue();
      if (swift_dynamicCast())
      {
        v7 = v55;
      }

      else
      {
        v7 = 0;
      }

      sub_10000DD18(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_41;
      }

      v8 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext;
      v9 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingBecomingActiveContext);
      if (v9)
      {
        v10 = *(v8 + 24);
        v11 = *(v8 + 32);
        v12 = *(v8 + 16);
        *v8 = 0u;
        *(v8 + 16) = 0u;
        *(v8 + 32) = 0;
        [v11 invalidate];
        if (v55 == v12 && v10 == v56)
        {
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v14 & 1) == 0)
          {
            v15 = 0;
LABEL_39:
            v9(v15);

            goto LABEL_40;
          }
        }

        v15 = v7;
        goto LABEL_39;
      }

      goto LABEL_43;
    }

    return;
  }

  if ((countAndFlagsBits != 0xD000000000000017 || 0x8000000100E71DB0 != object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000100E71DD0 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (*(arguments._rawValue + 2))
      {
        sub_10000DD18(arguments._rawValue + 32, &v57);
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext;
      v26 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingInitiateSubscriptionContext);
      if (v26)
      {
        v27 = *(v25 + 32);
        *v25 = 0u;
        *(v25 + 16) = 0u;
        *(v25 + 32) = 0;
        v26(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD000000000000024 && 0x8000000100E71E00 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_10000DD18(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyTermsAcceptedContext;
LABEL_53:
      v29 = v2 + v28;
      v30 = *v29;
      if (*v29)
      {
        v31 = *(v29 + 32);
        *v29 = 0u;
        *(v29 + 16) = 0u;
        *(v29 + 32) = 0;
        v32 = v24;
        v30(v24);

        return;
      }

      goto LABEL_91;
    }

    if (countAndFlagsBits == 0xD00000000000003CLL && 0x8000000100E71E30 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_10000DD18(arguments._rawValue + 32, &v57);
      type metadata accessor for JSSegue();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v24 = v55;
      v28 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingPrivacyOnboardingPresentationStatusChangedContext;
      goto LABEL_53;
    }

    if (countAndFlagsBits == 0xD000000000000033 && 0x8000000100E71E70 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_10000DD18(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      Array.subscript.getter(&type metadata for Any + 8, &v57);
      if (*(&v58 + 1))
      {
        type metadata accessor for JSSegue();
        if (swift_dynamicCast())
        {
          v24 = v55;
          v33 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext;
          v34 = *(v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingApplicationMessageSegueContext);
          if (v34)
          {
            v35 = *(v33 + 32);
            *(v33 + 32) = 0;
            *v33 = 0u;
            *(v33 + 16) = 0u;
            v36 = v55;
            v34();

            v37 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v38 = *(v37 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v55, v56, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }

            return;
          }

LABEL_91:

          return;
        }

LABEL_117:

        return;
      }

LABEL_88:

      sub_1000095E8(&v57, &unk_101183F30, qword_100EBF960);
      return;
    }

    if (countAndFlagsBits == 0xD000000000000027 && 0x8000000100E6DA40 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (!*(arguments._rawValue + 2))
      {
        return;
      }

      sub_10000DD18(arguments._rawValue + 32, &v57);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v40 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_117;
      }

      v41 = *(v40 + 8);
      v42 = swift_getObjectType();
      (*(v41 + 16))(v55, v56, v42, v41);
    }

    else
    {
      if (countAndFlagsBits == 0xD00000000000002ALL && 0x8000000100E6DA70 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        Array.subscript.getter(&type metadata for Any + 8, &v57);
        if (*(&v58 + 1))
        {
          if (swift_dynamicCast())
          {
            v43 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v44 = *(v43 + 8);
              v45 = swift_getObjectType();
              (*(v44 + 24))(v55, v56, v55, v56, v45, v44);

              swift_unknownObjectRelease();
              return;
            }
          }

          goto LABEL_117;
        }

        goto LABEL_88;
      }

      if (countAndFlagsBits == 0xD00000000000002ELL && 0x8000000100E71EB0 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v46 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v47 = *(v46 + 8);
        v48 = swift_getObjectType();
        (*(v47 + 32))(v55, v56, v48, v47);
      }

      else if (countAndFlagsBits == 0xD000000000000020 && 0x8000000100E71EE0 == object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, &v57);
        sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v49 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_scriptingMessageDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v50 = *(v49 + 8);
        v51 = swift_getObjectType();
        (*(v50 + 40))(v55, v51, v50);
      }

      else
      {
        if ((countAndFlagsBits != 0xD000000000000028 || 0x8000000100E71F10 != object) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return;
        }

        if (!*(arguments._rawValue + 2))
        {
          return;
        }

        sub_10000DD18(arguments._rawValue + 32, &v57);
        if ((swift_dynamicCast() & 1) == 0)
        {
          return;
        }

        v52 = v2 + OBJC_IVAR____TtC11MusicJSCore13JSApplication_globalMessagePresentationDelegate;
        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_117;
        }

        v53 = *(v52 + 8);
        v54 = swift_getObjectType();
        (*(v53 + 8))(v55, v56, v54, v53);
      }
    }

    swift_unknownObjectRelease();
    return;
  }

  if (*(arguments._rawValue + 2) == 2)
  {
    sub_10000DD18(arguments._rawValue + 64, &v57);
    type metadata accessor for JSSegue();
    if (swift_dynamicCast())
    {
      v7 = v55;
    }

    else
    {
      v7 = 0;
    }

    sub_10000DD18(arguments._rawValue + 32, &v57);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_41;
    }

    v16 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_pendingOpenURLContexts;
    swift_beginAccess();
    v17 = *(v2 + v16);
    if (*(v17 + 16))
    {
      v18 = sub_100019C10(v55, v56);
      if (v19)
      {
        v20 = *(v17 + 56) + 40 * v18;
        v21 = *v20;
        v22 = *(v20 + 32);
        swift_endAccess();
        v57 = 0u;
        v58 = 0u;
        v59 = 0;
        swift_beginAccess();
        v23 = v22;

        sub_100CE79D8(&v57, v55, v56);
        swift_endAccess();
        v21(v7);

LABEL_40:

LABEL_41:

        return;
      }
    }

    swift_endAccess();
LABEL_43:
  }
}

uint64_t JSApplication.SharedWithYouMetadata.score.setter(uint64_t a1)
{
  result = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_100D5B748()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(v1, v7, &qword_101188C20, &qword_100EC2030);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_101188C20, &qword_100EC2030);
    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v13 = [objc_allocWithZone(NSDateFormatter) init];
    Locale.init(identifier:)();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v3 + 8))(v5, v2);
    [v13 setLocale:isa];

    v15 = String._bridgeToObjectiveC()();
    [v13 setDateFormat:v15];

    v16 = Date._bridgeToObjectiveC()().super.isa;
    v17 = [v13 stringFromDate:v16];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 8))(v11, v8);
    return v18;
  }
}

unint64_t sub_100D5BA68()
{
  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = 1702125924;
  *(inited + 40) = 0xE400000000000000;
  v2 = sub_100D5B748();
  if (v3)
  {
    *(&v11 + 1) = &type metadata for String;
    *&v10 = v2;
    *(&v10 + 1) = v3;
    sub_100016270(&v10, (inited + 48));
  }

  else
  {
    v11 = 0u;
    v4 = [objc_allocWithZone(NSNull) init];
    *(inited + 72) = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *(inited + 48) = v4;
    if (*(&v11 + 1))
    {
      sub_1000095E8(&v10, &unk_101183F30, qword_100EBF960);
    }
  }

  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v5 = (v0 + *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20));
  if (v5[1])
  {
    v10 = 0u;
    v11 = 0u;
    v6 = [objc_allocWithZone(NSNull) init];
    *(inited + 120) = sub_100009F78(0, &qword_1011C1830, NSNull_ptr);
    *(inited + 96) = v6;
    if (*(&v11 + 1))
    {
      sub_1000095E8(&v10, &unk_101183F30, qword_100EBF960);
    }
  }

  else
  {
    v7 = *v5;
    *(&v11 + 1) = &type metadata for Float;
    LODWORD(v10) = v7;
    sub_100016270(&v10, (inited + 96));
  }

  v8 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0, &unk_100EBA560);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_100D5BC60(uint64_t a1)
{
  v3 = type metadata accessor for JSApplication.SharedWithYouMetadata(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v32 - v6;
  sub_10010FC20(&qword_1011C0598, &unk_100F162B0);
  __chkstk_darwin();
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v32 - v8;
  v10 = sub_10010FC20(&qword_1011C0690, &qword_100F166E0) - 8;
  __chkstk_darwin();
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  v14 = *(v10 + 56);
  v35 = v1;
  sub_1000089F8(v1 + v13, v12, &qword_1011C0598, &unk_100F162B0);
  sub_1000089F8(a1, &v12[v14], &qword_1011C0598, &unk_100F162B0);
  v15 = *(v4 + 48);
  if (v15(v12, 1, v3) == 1)
  {
    if (v15(&v12[v14], 1, v3) == 1)
    {
      return sub_1000095E8(v12, &qword_1011C0598, &unk_100F162B0);
    }
  }

  else
  {
    sub_1000089F8(v12, v9, &qword_1011C0598, &unk_100F162B0);
    if (v15(&v12[v14], 1, v3) != 1)
    {
      v30 = v33;
      sub_100CFF32C(&v12[v14], v33);
      v31 = _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v30);
      sub_100CFF390(v30);
      sub_100CFF390(v9);
      result = sub_1000095E8(v12, &qword_1011C0598, &unk_100F162B0);
      v18 = v35;
      v17 = v36;
      if (v31)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_100CFF390(v9);
  }

  sub_1000095E8(v12, &qword_1011C0690, &qword_100F166E0);
  v18 = v35;
  v17 = v36;
LABEL_7:
  v19 = v34;
  sub_1000089F8(v18 + v13, v34, &qword_1011C0598, &unk_100F162B0);
  if (v15(v19, 1, v3) == 1)
  {
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    v21 = v17 + *(v3 + 20);
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v15(v19, 1, v3) != 1)
    {
      sub_1000095E8(v19, &qword_1011C0598, &unk_100F162B0);
    }
  }

  else
  {
    sub_100CFF32C(v19, v17);
  }

  if (qword_1011BDB08 != -1)
  {
    swift_once();
  }

  v22 = static JSBridge.shared;
  v23 = sub_100D5BA68();
  v38[3] = sub_10010FC20(&qword_101197BD0, &qword_100EC9700);
  v38[0] = v23;
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  sub_1000089F8(v38, v37, &unk_101183F30, qword_100EBF960);
  v24 = swift_allocObject();
  *(v24 + 16) = 1;
  v25 = v37[1];
  *(v24 + 24) = v37[0];
  *(v24 + 40) = v25;
  *(v24 + 56) = 0xD000000000000015;
  *(v24 + 64) = 0x8000000100E72060;
  *(v24 + 72) = v18;
  *(v24 + 80) = v22;
  *(v24 + 88) = 0;
  v26 = v18;
  v27 = v22;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100D35F98, v24);

  sub_1000095E8(v38, &unk_101183F30, qword_100EBF960);
  v28 = *&v26[OBJC_IVAR____TtC11MusicJSCore13JSApplication_asyncInitializer];
  v29 = *(v28 + 16);
  *(v28 + 16) = 1;
  sub_100CF8380(v29);
  return sub_100CFF390(v17);
}

uint64_t JSApplication.sharedWithYouMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  swift_beginAccess();
  return sub_1000089F8(v1 + v3, a1, &qword_1011C0598, &unk_100F162B0);
}

void (*JSApplication.sharedWithYouMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_10010FC20(&qword_1011C0598, &unk_100F162B0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v4[11] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(v5);
    v4[11] = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC11MusicJSCore13JSApplication_sharedWithYouMetadata;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_1011C0598, &unk_100F162B0);
  return sub_100D5C340;
}

void sub_100D5C340(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1000089F8(*(*a1 + 12), v6, &qword_1011C0598, &unk_100F162B0);
    sub_1000089F8(v7 + v4, v5, &qword_1011C0598, &unk_100F162B0);
    swift_beginAccess();
    sub_100D5C92C(v6, v7 + v4);
    swift_endAccess();
    sub_100D5BC60(v5);
    sub_1000095E8(v5, &qword_1011C0598, &unk_100F162B0);
  }

  else
  {
    sub_1000089F8(v7 + v4, v6, &qword_1011C0598, &unk_100F162B0);
    swift_beginAccess();
    sub_100D5C92C(v3, v7 + v4);
    swift_endAccess();
    sub_100D5BC60(v6);
  }

  sub_1000095E8(v6, &qword_1011C0598, &unk_100F162B0);
  sub_1000095E8(v3, &qword_1011C0598, &unk_100F162B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

BOOL _s11MusicJSCore13JSApplicationC21SharedWithYouMetadataV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v9 = &v23 - v8;
  sub_10010FC20(&qword_10118F0F0, &unk_100EDF690);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v13 = *(v12 + 56);
  sub_1000089F8(a1, &v23 - v10, &qword_101188C20, &qword_100EC2030);
  sub_1000089F8(a2, &v11[v13], &qword_101188C20, &qword_100EC2030);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) == 1)
  {
    if (v14(&v11[v13], 1, v4) == 1)
    {
      sub_1000095E8(v11, &qword_101188C20, &qword_100EC2030);
      goto LABEL_9;
    }

LABEL_6:
    sub_1000095E8(v11, &qword_10118F0F0, &unk_100EDF690);
    return 0;
  }

  sub_1000089F8(v11, v9, &qword_101188C20, &qword_100EC2030);
  if (v14(&v11[v13], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v11[v13], v4);
  sub_100D5CED4(&qword_10118F0F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v9, v4);
  sub_1000095E8(v11, &qword_101188C20, &qword_100EC2030);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  v18 = *(type metadata accessor for JSApplication.SharedWithYouMetadata(0) + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if ((v20 & 1) == 0)
  {
    if (*v19 != *v21)
    {
      v22 = 1;
    }

    return (v22 & 1) == 0;
  }

  return (v22 & 1) != 0;
}

uint64_t sub_100D5C878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_100D56A0C(a1, v4, v5, v6);
}

uint64_t sub_100D5C92C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011C0598, &unk_100F162B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t _s11MusicJSCore13JSApplicationC29SubscriptionFlowConfigurationV9PlacementO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010FB530, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D5CA18()
{
  result = qword_1011C05A8;
  if (!qword_1011C05A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C05A8);
  }

  return result;
}

unint64_t sub_100D5CA70()
{
  result = qword_1011C05B0;
  if (!qword_1011C05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011C05B0);
  }

  return result;
}

void sub_100D5CAEC(uint64_t a1)
{
  sub_100D5CDDC(319, &qword_1011C05F0, type metadata accessor for JSApplication.SharedWithYouMetadata);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}