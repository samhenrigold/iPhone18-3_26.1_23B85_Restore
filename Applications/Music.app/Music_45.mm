objc_class *sub_100514BDC()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(0);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10051921C;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

uint64_t sub_100514DE0@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v9 = v30 - v8;
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v15 = v30 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v30[1] = v3;
    v31 = a2;
    v18 = type metadata accessor for MusicVideo();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    v19 = *(*&v17[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
    v20 = *(*v19 + 96);
    swift_beginAccess();
    sub_100518E64(v19 + v20, v7, _s11MusicVideosVMa);
    sub_1006FD384(v15, v9);
    sub_100518FE8(v7, _s11MusicVideosVMa);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000095E8(v9, &unk_10118CDB0, &unk_100EC0360);
      v21 = 1;
      v22 = v31;
    }

    else
    {
      (*(v11 + 32))(v13, v9, v10);
      (*(v11 + 16))(v5, v13, v10);
      swift_storeEnumTagMultiPayload();
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      v32[0] = v17;
      v25 = v17;
      v26 = String.init<A>(reflecting:)();
      v32[3] = &type metadata for Player.CommandIssuerIdentity;
      v32[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v32[0] = v26;
      v32[1] = v27;
      v28 = v25;
      v22 = v31;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v33, 3, 0, 0, 1, 0, 1, v31, v17, v32);
      (*(v11 + 8))(v13, v10);
      v21 = 0;
    }

    v29 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v29 - 8) + 56))(v22, v21, 1, v29);

    return sub_1000095E8(v15, &unk_1011846B0, &unk_100ECB630);
  }

  else
  {
    v23 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }
}

objc_class *sub_100515290()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(1);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1005192C8;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

id sub_100515494()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_100514BDC();
    *(v4 + 40) = sub_100515290();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100EBC6D0;
    v7 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem);
    v8 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem);
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    v9 = v7;
    v10 = v8;
    v11.value._countAndFlagsBits = 0;
    v11.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v6, v9, v11).super.super.isa;
    v13 = objc_allocWithZone(UIBarButtonItemGroup);
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v13 initWithBarButtonItems:v14 representativeItem:isa];

    v16 = *(v5 + v1);
    *(v5 + v1) = v15;
    v3 = v15;

    v2 = 0;
  }

  v17 = v2;
  return v3;
}

void *sub_10051561C()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_100515494();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100515694()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A6764();
    *(v4 + 40) = sub_100514870();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_1005157C4(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v16[-v6];
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v9 = &v16[-v8];
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem) = 0;
  v10 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &unk_1011846B0, &unk_100ECB630);
  type metadata accessor for MusicVideo();
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  v11 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v9, &unk_1011846B0, &unk_100ECB630);
  if ((v11 & 1) != 0 && (v12 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, swift_beginAccess(), sub_1000089F8(v1 + v12, v7, &unk_10118BCE0, &qword_100EC6450), (*(v3 + 48))(v7, 1, v2) != 1))
  {
    (*(v3 + 32))(v5, v7, v2);
    v13 = sub_100508068();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    (*(v3 + 8))(v5, v2);
    sub_10050423C(&OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, sub_100508068, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView);
  }

  else
  {
    sub_10050A588();
  }
}

uint64_t sub_100515AE4(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_10118BCE0, &qword_100EC6450);
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v11, &unk_10118BCE0, &qword_100EC6450);
  swift_endAccess();
  sub_1000089F8(v10, v8, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_1000095E8(a1, &unk_10118BCE0, &qword_100EC6450);
    sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
    v10 = v8;
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    v12 = sub_100508068();
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    (*(v4 + 16))(v14 + v13, v6, v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 reconfigureItemsAtIndexPaths:isa];

    sub_1000095E8(a1, &unk_10118BCE0, &qword_100EC6450);
    (*(v4 + 8))(v6, v3);
  }

  return sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_100515DF4(uint64_t a1)
{
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v18[-v5];
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MusicVideo();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v8 + 88))(v10, v7) != enum case for Track.musicVideo(_:))
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 96))(v10, v7);
  (*(v12 + 32))(v15, v10, v11);
  (*(v12 + 16))(v6, v15, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v16 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(v1 + v16, v4, &unk_1011846B0, &unk_100ECB630);
  swift_beginAccess();
  sub_1002190E0(v6, v1 + v16, &unk_1011846B0, &unk_100ECB630);
  swift_endAccess();
  sub_1005157C4(v4);
  sub_1000095E8(v4, &unk_1011846B0, &unk_100ECB630);
  sub_1000095E8(v6, &unk_1011846B0, &unk_100ECB630);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_100516134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[5] = swift_task_alloc();
  v7 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v6[6] = v7;
  v6[7] = *(v7 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_10051624C, 0, 0);
}

uint64_t sub_10051624C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_100505184(v0[3], v2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000089F8(v2, v1, &unk_10118BCE0, &qword_100EC6450);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_10003D17C(v1, v9 + v8, &unk_10118BCE0, &qword_100EC6450);
  sub_1001F4CB8(0, 0, v4, &unk_100ED1418, v9);

  sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005163F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005164C8, v7, v6);
}

uint64_t sub_1005164C8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    sub_1000089F8(v0[9], v3, &unk_10118BCE0, &qword_100EC6450);
    sub_100515AE4(v3);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10050423C(&OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath, sub_100508068, &OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView);
  }

  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for LibraryMusicVideosViewController(uint64_t a1)
{
  result = qword_101193A68;
  if (!qword_101193A68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005168C4(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184590, &unk_101193A80, &unk_100ED1360);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &unk_1011845A0, &unk_101193A90, &qword_100EC02D0);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &unk_1011849E0, &unk_101193AA0, &unk_100EC0380);
        if (v4 <= 0x3F)
        {
          sub_100039720(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
          if (v5 <= 0x3F)
          {
            sub_100039720(319, &unk_101193AB0, &type metadata accessor for MusicVideo);
            if (v6 <= 0x3F)
            {
              sub_100039720(319, &unk_101192480, &type metadata accessor for IndexPath);
              if (v7 <= 0x3F)
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

uint64_t sub_100516BBC()
{
  v1 = v0;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v3 = v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBE260;
  v5 = sub_10031E9F8(xmmword_100EBE260);
  isa = sub_100597E50().super.super.isa;
  v7 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v8;
  v10 = sub_10031EA10(v9);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v36[3] = v11;
  v36[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_100518E64(v17 + v18, v3, _s11MusicVideosVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v21 = sub_100211A30(sub_100517254, v19, v20);

  sub_100518FE8(v3, _s11MusicVideosVMa);

  if (v21)
  {
    v22 = [v21 children];

    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v4 + 64) = v15;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = v21;
  v24 = sub_10031EA10(v23);
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v36[0] = v25;
  v36[1] = v27;
  v28._countAndFlagsBits = 0x7265746C69462ELL;
  v28._object = 0xE700000000000000;
  String.append(_:)(v28);
  v29 = String._bridgeToObjectiveC()();

  v30 = *(v16 + 48);
  v31 = *(*v30 + 96);
  swift_beginAccess();
  sub_100518E64(v30 + v31, v3, _s11MusicVideosVMa);
  v32 = swift_allocObject();
  swift_weakInit();

  v33.super.super.isa = sub_1003977C4(sub_100517260, v32).super.super.isa;

  sub_100518FE8(v3, _s11MusicVideosVMa);

  if (v33.super.super.isa)
  {
    v34 = [(objc_class *)v33.super.super.isa children];

    v33.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v29 = 0;
  }

  *(v4 + 96) = v29;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = v33;
  return v4;
}

uint64_t sub_100516FB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&unk_101193AA0, &unk_100EC0380) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicVideo() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_100516134(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_100517144(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005163F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100517268(char *a1)
{
  _s11MusicVideosVMa(0);
  *&v2 = __chkstk_darwin().n128_u64[0];
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v6 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v7 = sub_10049CB78();

  v8 = *(v5 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_100518E64(v8 + v9, v4, _s11MusicVideosVMa);
  v4[16] = v7 & 1;
  return sub_100377E84(v4);
}

uint64_t sub_1005173A4(char *a1)
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s11MusicVideosVMa(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v9 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v10 = v20[1];
  v11 = *(v8 + 48);
  v12 = *(*v11 + 96);
  swift_beginAccess();
  sub_100518E64(v11 + v12, v7, _s11MusicVideosVMa);

  *(v7 + 1) = v10;
  v13 = &v7[*(v4 + 40)];
  v14 = *v13;
  if (v13[1])
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  sub_100375F28(v15 | v14);
  if ((v16 & 0xFF00) == 0x200)
  {
    sub_100518E64(&v7[*(v4 + 28)], v3, _s11MusicVideosV5ScopeOMa);
    v17 = type metadata accessor for Artist();
    if ((*(*(v17 - 8) + 48))(v3, 1, v17) == 1)
    {
      LOBYTE(v16) = 0;
      v18 = 256;
    }

    else
    {
      sub_100518FE8(v3, _s11MusicVideosV5ScopeOMa);
      v18 = 256;
      LOBYTE(v16) = 4;
    }
  }

  else
  {
    v18 = v16 & 0x100;
  }

  sub_1006FCB18(v18 | v16);
  return sub_100377E84(v7);
}

double sub_100517608(void *a1)
{
  v2 = sub_100508068();
  v3 = sub_100508460();
  [v2 setCollectionViewLayout:v3];

  sub_100508EB8();
  v4 = sub_100509210();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];

  return result;
}

uint64_t sub_1005176C4()
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846C0, &unk_100ED13F0);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D1E0, &unk_100EC03B0);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1005178C8(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_1011846C0, &unk_100ED13F0);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118D1E0, &unk_100EC03B0);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C260, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

id sub_100517CE4(uint64_t a1)
{
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v3 = &v39 - v2;
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v55 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v39 - v7;
  __chkstk_darwin();
  v10 = &v39 - v9;
  v11 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v15 = __chkstk_darwin();
  v16 = &v39 - v12;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v53 = v10;
  v54 = v11;
  v17 = *(v11 + 16);
  v18 = *(v11 + 80);
  v56 = v13;
  v50 = v17;
  v51 = v14;
  (v17)(&v39 - v12, a1 + ((v18 + 32) & ~v18), v13, v15);
  sub_10037B658(v16, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    (*(v54 + 8))(v16, v56);
    sub_1000095E8(v3, &unk_1011846B0, &unk_100ECB630);
    return 0;
  }

  v45 = ~v18;
  v52 = v16;
  v20 = v5;
  v49 = *(v5 + 32);
  v40 = v18;
  v21 = v8;
  v22 = v5 + 32;
  v23 = v53;
  v49(v53, v3, v4);
  v43 = v22;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v48 = v20;
  v41 = *(v20 + 16);
  v41(v21, v23, v4);
  v24 = *(v20 + 80);
  v25 = v4;
  v42 = v24 | 7;
  v44 = swift_allocObject();
  v49((v44 + ((v24 + 16) & ~v24)), v21, v4);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = v55;
  v27 = v25;
  v46 = v25;
  v41(v55, v23, v25);
  v28 = v51;
  v29 = v56;
  v50(v51, v52, v56);
  v30 = (v24 + 24) & ~v24;
  v31 = (v6 + v40 + v30) & v45;
  v32 = swift_allocObject();
  *(v32 + 16) = v39;
  v49((v32 + v30), v26, v27);
  v33 = v54;
  (*(v54 + 32))(v32 + v31, v28, v29);
  v34 = objc_opt_self();
  v61 = sub_100518D2C;
  v62 = v44;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747E6C;
  v60 = &unk_1010B0360;
  v35 = _Block_copy(&aBlock);

  v61 = sub_100518D8C;
  v62 = v32;
  aBlock = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100747EBC;
  v60 = &unk_1010B0388;
  v36 = _Block_copy(&aBlock);

  v37 = isa;
  v38 = [v34 configurationWithIdentifier:isa previewProvider:v35 actionProvider:v36];

  _Block_release(v36);
  _Block_release(v35);
  (*(v48 + 8))(v53, v46);
  (*(v33 + 8))(v52, v56);

  return v38;
}

id sub_100518300(void *a1, void *a2)
{
  v35 = a2;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v5 = &v30 - v4;
  v6 = type metadata accessor for MusicVideo();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v33 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v30 - v9;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    v32 = v2;
    sub_10037B658(v16, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v13 + 8))(v16, v12);
      sub_1000095E8(v5, &unk_1011846B0, &unk_100ECB630);
    }

    else
    {
      v19 = v34;
      v31 = *(v7 + 32);
      v31(v34, v5, v6);
      sub_1007BA8CC(v19);
      v20 = MusicVideo.supportsContainerNavigation(itemState:)();

      if (v20)
      {
        v21 = sub_10003169C();
        if (v21)
        {
          v22 = v21;
          v23 = v7;
          v30 = v7;
          v24 = *(v7 + 16);
          v25 = v33;
          v24(v33, v34, v6);
          v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
          v27 = swift_allocObject();
          *(v27 + 16) = v22;
          v31((v27 + v26), v25, v6);
          aBlock[4] = sub_100518BD0;
          aBlock[5] = v27;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002BC98;
          aBlock[3] = &unk_1010B02C0;
          v28 = _Block_copy(aBlock);

          [v35 addAnimations:v28];
          _Block_release(v28);

          (*(v30 + 8))(v34, v6);
          return (*(v13 + 8))(v16, v12);
        }

        (*(v7 + 8))(v34, v6);
      }

      else
      {
        (*(v7 + 8))(v19, v6);
      }

      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    v18(v11, 1, 1, v12);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
  }

  return [v35 setPreferredCommitStyle:0];
}

void sub_100518828()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  v6 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  v8 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView) = 0;
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController;
  v10 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v9) = sub_10003AAD8(0xD000000000000022, 0x8000000100E4E9D0);
  v11 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_response;
  v12 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController) = 0;
  v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  v14 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  v15 = (v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  v17 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v18 = type metadata accessor for MusicVideo();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem) = 0;
  v19 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  v20 = type metadata accessor for IndexPath();
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  *(v1 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100518BD0()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1005131FC(v2, v3);
}

uint64_t sub_100518C34(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1005133F8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100518D2C()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100511C10(v2);
}

unint64_t sub_100518D8C(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicVideo() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_100511CD0(a1, v7, (v1 + v4), v8);
}

uint64_t sub_100518E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100518EFC(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicVideo() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_10050E270(a1, v4, v5, v6);
}

uint64_t sub_100518F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100518FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100519084()
{
  v1 = *(sub_10010FC20(&qword_101184718, &qword_100EC03D0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100509960(v2, v3, v4, v5);
}

double sub_1005190F8()
{
  v1 = *(sub_10010FC20(&qword_101184718, &qword_100EC03D0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10050A1B8(v2, v3);
}

unint64_t sub_100519168()
{
  result = qword_101193C50;
  if (!qword_101193C50)
  {
    sub_1001109D0(&qword_101193AF0, &unk_100EC0370);
    sub_100519250(&unk_101193C58, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193C50);
  }

  return result;
}

uint64_t sub_100519250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1005192F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a3;
  v43 = type metadata accessor for MusicLibrary.DownloadAction();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_101183E08, &unk_100ED18D0);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v36 - v6;
  v7 = type metadata accessor for MusicLibrary.AddAction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v46 = a2;
  v17 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  v47 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Track();
  v19 = v44;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 32))(v14, v16, v11);
  v20 = (*(v12 + 88))(v14, v11);
  v21 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v12 + 8))(v14, v11);
  if (v20 == v21)
  {
    v22 = v46;
    sub_10051A6A0(v19, v46, &type metadata accessor for Track, &unk_1010B0FE8, sub_100533FF4, &unk_1010B1000);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v23 = v39;
    static MusicLibraryAction<>.download.getter();
    v24 = v37;
    v25 = v43;
    v26 = v46;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v41 + 8))(v23, v25);
    v27 = v40;
    v28 = v38;
    v29 = v42;
    (*(v40 + 32))(v38, v24, v42);
    LODWORD(v25) = (*(v27 + 88))(v28, v29);
    (*(v27 + 8))(v28, v29);
    v22 = v26;
    if (v25 == v21)
    {
      v30 = v45;
      sub_10051AAB4(v19, v26, v45, &type metadata accessor for Track, &unk_1010B1060, sub_100534348, &unk_1010B1078);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v31 = v30;
      goto LABEL_11;
    }
  }

  v31 = v45;
LABEL_11:
  v32 = sub_10051AEB8(v19, v22, v31);
  if (v32)
  {
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [objc_opt_self() configurationWithActions:isa];

  [v35 _setSwipeActionsStyle:1];
  return v35;
}

id sub_100519980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a3;
  v43 = type metadata accessor for MusicLibrary.DownloadAction();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_101183E08, &unk_100ED18D0);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v36 - v6;
  v7 = type metadata accessor for MusicLibrary.AddAction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v46 = a2;
  v17 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  v47 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for MusicVideo();
  v19 = v44;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 32))(v14, v16, v11);
  v20 = (*(v12 + 88))(v14, v11);
  v21 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v12 + 8))(v14, v11);
  if (v20 == v21)
  {
    v22 = v46;
    sub_10051A6A0(v19, v46, &type metadata accessor for MusicVideo, &unk_1010B0D90, sub_100533650, &unk_1010B0DA8);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v23 = v39;
    static MusicLibraryAction<>.download.getter();
    v24 = v37;
    v25 = v43;
    v26 = v46;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v41 + 8))(v23, v25);
    v27 = v40;
    v28 = v38;
    v29 = v42;
    (*(v40 + 32))(v38, v24, v42);
    LODWORD(v25) = (*(v27 + 88))(v28, v29);
    (*(v27 + 8))(v28, v29);
    v22 = v26;
    if (v25 == v21)
    {
      v30 = v45;
      sub_10051AAB4(v19, v26, v45, &type metadata accessor for MusicVideo, &unk_1010B0E08, sub_100533884, &unk_1010B0E20);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v31 = v30;
      goto LABEL_11;
    }
  }

  v31 = v45;
LABEL_11:
  v32 = sub_10051B6F0(v19, v22, v31);
  if (v32)
  {
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [objc_opt_self() configurationWithActions:isa];

  [v35 _setSwipeActionsStyle:1];
  return v35;
}

id sub_10051A010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a3;
  v43 = type metadata accessor for MusicLibrary.DownloadAction();
  v41 = *(v43 - 8);
  __chkstk_darwin();
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&qword_101183E08, &unk_100ED18D0);
  v40 = *(v42 - 8);
  __chkstk_darwin();
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v36 - v6;
  v7 = type metadata accessor for MusicLibrary.AddAction();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101193E20, &qword_100EBF7D0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v36 - v15;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v46 = a2;
  v17 = static MusicLibrary.== infix(_:_:)();

  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

  v47 = _swiftEmptyArrayStorage;
  static MusicLibraryAction<>.add.getter();
  type metadata accessor for Song();
  v19 = v44;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 32))(v14, v16, v11);
  v20 = (*(v12 + 88))(v14, v11);
  v21 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v12 + 8))(v14, v11);
  if (v20 == v21)
  {
    v22 = v46;
    sub_10051A6A0(v19, v46, &type metadata accessor for Song, &unk_1010B0AE8, sub_100532E20, &unk_1010B0B00);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v23 = v39;
    static MusicLibraryAction<>.download.getter();
    v24 = v37;
    v25 = v43;
    v26 = v46;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v41 + 8))(v23, v25);
    v27 = v40;
    v28 = v38;
    v29 = v42;
    (*(v40 + 32))(v38, v24, v42);
    LODWORD(v25) = (*(v27 + 88))(v28, v29);
    (*(v27 + 8))(v28, v29);
    v22 = v26;
    if (v25 == v21)
    {
      v30 = v45;
      sub_10051AAB4(v19, v26, v45, &type metadata accessor for Song, &unk_1010B0B60, sub_100532FF8, &unk_1010B0B78);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v31 = v30;
      goto LABEL_11;
    }
  }

  v31 = v45;
LABEL_11:
  v32 = sub_10051BF28(v19, v22, v31);
  if (v32)
  {
    v33 = v32;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100009F78(0, &unk_1011A49F0, UIContextualAction_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v35 = [objc_opt_self() configurationWithActions:isa];

  [v35 _setSwipeActionsStyle:1];
  return v35;
}

id sub_10051A6A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v30[0] = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  v12 = __chkstk_darwin();
  v13 = a3(0, v12);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = v30 - v16;
  (*(v14 + 16))(v30 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  (*(v14 + 32))(v19 + v18, v17, v13);
  aBlock[4] = a5;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = a6;
  v20 = _Block_copy(aBlock);
  v21 = objc_opt_self();

  v22 = [v21 contextualActionWithStyle:0 title:0 handler:v20];
  _Block_release(v20);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v23 = qword_101183DF8;
  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  if (v25)
  {
    v26 = [v25 imageWithTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor() renderingMode:1];
  }

  else
  {
    v26 = 0;
  }

  [v22 setImage:v26];

  if (qword_10117F328 != -1)
  {
    swift_once();
  }

  [v22 setBackgroundColor:qword_101183E00];
  v27 = v22;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v28 = String._bridgeToObjectiveC()();

  [v27 setAccessibilityLabel:v28];

  return v27;
}

id sub_10051AAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33[0] = a7;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v33[1] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  v13 = __chkstk_darwin();
  v14 = a4(0, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin();
  v19 = v33 - v18;
  (*(v15 + 16))(v33 - v18, a1, v14, v17);
  sub_10012B7A8(a3, v35);
  v20 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v15 + 32))(v22 + v20, v19, v14);
  *(v22 + v21) = a2;
  sub_10012B828(v35, v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8));
  aBlock[4] = a6;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = v33[0];
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();

  v25 = [v24 contextualActionWithStyle:0 title:0 handler:v23];
  _Block_release(v23);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v26 = qword_101183DF8;
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27 withConfiguration:v26];

  [v25 setImage:v28];
  v29 = [objc_opt_self() systemBlueColor];
  [v25 setBackgroundColor:v29];

  v30 = v25;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v31 = String._bridgeToObjectiveC()();

  [v30 setAccessibilityLabel:v31];

  return v30;
}

id sub_10051AEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Track();
  v56 = *(v7 - 8);
  __chkstk_darwin();
  v54 = v8;
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v51 = *(v53 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v46 - v11;
  v12 = type metadata accessor for MusicLibrary.RemoveAction();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v46 - v20;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 32))(v19, v21, v16);
  LODWORD(v12) = (*(v17 + 88))(v19, v16);
  v22 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v17 + 8))(v19, v16);
  v23 = v12 == v22;
  v24 = a1;
  if (!v23)
  {
    v25 = v49;
    static MusicLibraryAction<>.removeDownload.getter();
    v26 = v47;
    v27 = v53;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v51 + 8))(v25, v27);
    v28 = v50;
    v29 = v48;
    v30 = v52;
    (*(v50 + 32))(v48, v26, v52);
    LODWORD(v25) = (*(v28 + 88))(v29, v30);
    (*(v28 + 8))(v29, v30);
    if (v25 != v22)
    {
      return 0;
    }
  }

  sub_10012B7A8(v57, v61);
  v31 = v56;
  v32 = v55;
  (*(v56 + 16))(v55, v24, v7);
  v33 = (*(v31 + 80) + 112) & ~*(v31 + 80);
  v34 = (v54 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10012B828(v61, v35 + 16);
  (*(v31 + 32))(v35 + v33, v32, v7);
  *(v35 + v34) = a2;
  aBlock[4] = sub_10053473C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B10F0;
  v36 = _Block_copy(aBlock);
  v37 = objc_opt_self();

  v38 = [v37 contextualActionWithStyle:0 title:0 handler:v36];
  _Block_release(v36);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v39 = qword_101183DF8;
  v40 = String._bridgeToObjectiveC()();
  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  [v38 setImage:v41];
  v42 = [objc_opt_self() systemRedColor];
  [v38 setBackgroundColor:v42];

  v43 = v38;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v44 = String._bridgeToObjectiveC()();

  [v43 setAccessibilityLabel:v44];

  return v43;
}

id sub_10051B6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicVideo();
  v56 = *(v7 - 8);
  __chkstk_darwin();
  v54 = v8;
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v51 = *(v53 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v46 - v11;
  v12 = type metadata accessor for MusicLibrary.RemoveAction();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v46 - v20;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 32))(v19, v21, v16);
  LODWORD(v12) = (*(v17 + 88))(v19, v16);
  v22 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v17 + 8))(v19, v16);
  v23 = v12 == v22;
  v24 = a1;
  if (!v23)
  {
    v25 = v49;
    static MusicLibraryAction<>.removeDownload.getter();
    v26 = v47;
    v27 = v53;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v51 + 8))(v25, v27);
    v28 = v50;
    v29 = v48;
    v30 = v52;
    (*(v50 + 32))(v48, v26, v52);
    LODWORD(v25) = (*(v28 + 88))(v29, v30);
    (*(v28 + 8))(v29, v30);
    if (v25 != v22)
    {
      return 0;
    }
  }

  sub_10012B7A8(v57, v61);
  v31 = v56;
  v32 = v55;
  (*(v56 + 16))(v55, v24, v7);
  v33 = (*(v31 + 80) + 112) & ~*(v31 + 80);
  v34 = (v54 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10012B828(v61, v35 + 16);
  (*(v31 + 32))(v35 + v33, v32, v7);
  *(v35 + v34) = a2;
  aBlock[4] = sub_100533B00;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B0E98;
  v36 = _Block_copy(aBlock);
  v37 = objc_opt_self();

  v38 = [v37 contextualActionWithStyle:0 title:0 handler:v36];
  _Block_release(v36);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v39 = qword_101183DF8;
  v40 = String._bridgeToObjectiveC()();
  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  [v38 setImage:v41];
  v42 = [objc_opt_self() systemRedColor];
  [v38 setBackgroundColor:v42];

  v43 = v38;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v44 = String._bridgeToObjectiveC()();

  [v43 setAccessibilityLabel:v44];

  return v43;
}

id sub_10051BF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v59 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v56 = *(v7 - 8);
  __chkstk_darwin();
  v54 = v8;
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v51 = *(v53 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v50 = *(v52 - 8);
  __chkstk_darwin();
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v46 - v11;
  v12 = type metadata accessor for MusicLibrary.RemoveAction();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v46 - v20;
  static MusicLibraryAction<>.remove.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 32))(v19, v21, v16);
  LODWORD(v12) = (*(v17 + 88))(v19, v16);
  v22 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v17 + 8))(v19, v16);
  v23 = v12 == v22;
  v24 = a1;
  if (!v23)
  {
    v25 = v49;
    static MusicLibraryAction<>.removeDownload.getter();
    v26 = v47;
    v27 = v53;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v51 + 8))(v25, v27);
    v28 = v50;
    v29 = v48;
    v30 = v52;
    (*(v50 + 32))(v48, v26, v52);
    LODWORD(v25) = (*(v28 + 88))(v29, v30);
    (*(v28 + 8))(v29, v30);
    if (v25 != v22)
    {
      return 0;
    }
  }

  sub_10012B7A8(v57, v61);
  v31 = v56;
  v32 = v55;
  (*(v56 + 16))(v55, v24, v7);
  v33 = (*(v31 + 80) + 112) & ~*(v31 + 80);
  v34 = (v54 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10012B828(v61, v35 + 16);
  (*(v31 + 32))(v35 + v33, v32, v7);
  *(v35 + v34) = a2;
  aBlock[4] = sub_100533188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010B0BF0;
  v36 = _Block_copy(aBlock);
  v37 = objc_opt_self();

  v38 = [v37 contextualActionWithStyle:0 title:0 handler:v36];
  _Block_release(v36);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v39 = qword_101183DF8;
  v40 = String._bridgeToObjectiveC()();
  v41 = [objc_opt_self() systemImageNamed:v40 withConfiguration:v39];

  [v38 setImage:v41];
  v42 = [objc_opt_self() systemRedColor];
  [v38 setBackgroundColor:v42];

  v43 = v38;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v44 = String._bridgeToObjectiveC()();

  [v43 setAccessibilityLabel:v44];

  return v43;
}

double sub_10051C760(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v26 = a4;
  v27 = a3;
  v24 = a8;
  v25 = a9;
  v11 = a7(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v24 - v14;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v17 = &v24 - v16;
  v18 = UIView.noticePresenter.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  (*(v12 + 16))(v15, a6, v11);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = a5;
  (*(v12 + 32))(&v22[v21], v15, v11);
  *&v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v18;
  sub_1001F4CB8(0, 0, v17, v25, v22);

  (v27)(1);

  return result;
}

uint64_t sub_10051C9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051CB4C, v9, v8);
}

uint64_t sub_10051CB4C()
{
  v1 = v0[5];
  sub_10010FC20(&qword_101193E80, &unk_100ECF120);
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_10119ED90, &unk_100ECF7A0);
  v8 = sub_100020674(&qword_101192820, &qword_10119ED90, &unk_100ECF7A0, &protocol conformance descriptor for [A]);
  *v6 = v0;
  v6[1] = sub_10051CD1C;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for Track);
}

uint64_t sub_10051CD1C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
    v6 = sub_100534EDC;
  }

  else
  {

    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
    v6 = sub_100534E7C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10051CE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051D018, v9, v8);
}

uint64_t sub_10051D018()
{
  v1 = v0[5];
  sub_10010FC20(&qword_101192078, &qword_100ECF280);
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_101193E70, &qword_100ED1970);
  v8 = sub_100020674(&qword_101193E78, &qword_101193E70, &qword_100ED1970, &protocol conformance descriptor for [A]);
  *v6 = v0;
  v6[1] = sub_10051D1E8;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for MusicVideo);
}

uint64_t sub_10051D1E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
    v6 = sub_10051D460;
  }

  else
  {

    v4 = *(v3 + 128);
    v5 = *(v3 + 136);
    v6 = sub_10051D338;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10051D338()
{
  v1 = v0[6];

  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[6];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_100532F98(v3, type metadata accessor for Notice.Variant);
    (*(*v4 + 200))(v2, 0);
    sub_100532F98(v2, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10051D460()
{
  v25 = v0;
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v3 + 16))(v1, v4, v2);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[20];
    v9 = v0[13];
    v8 = v0[14];
    v10 = v0[12];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to add item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[13];
    v16 = v0[14];
    v18 = v0[12];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[6];
  if (v19)
  {
    v20 = v0[10];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v20 = String.init(localized:table:bundle:locale:comment:)();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    (*(*v19 + 192))(v20, 1);

    sub_100532F98(v20, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10051D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for Locale();
  v6[7] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for Notice.Variant(0);
  v6[10] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[16] = v9;
  v6[17] = v8;

  return _swift_task_switch(sub_10051D8FC, v9, v8);
}

uint64_t sub_10051D8FC()
{
  v1 = v0[5];
  sub_10010FC20(&unk_101193E30, &qword_100ED18F0);
  v2 = type metadata accessor for Song();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[18] = v5;
  *(v5 + 16) = xmmword_100EBC6B0;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v0[2] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  v7 = sub_10010FC20(&qword_1011856C8, &qword_100EC1030);
  v8 = sub_100020674(&unk_101193E40, &qword_1011856C8, &qword_100EC1030, &protocol conformance descriptor for [A]);
  *v6 = v0;
  v6[1] = sub_10051CD1C;

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v7, v2, v8, &protocol witness table for Song);
}

uint64_t sub_10051DACC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10)
{
  v28 = a6;
  v32 = a4;
  v33 = a3;
  v30 = a9;
  v31 = a10;
  v13 = a8(0);
  v29 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v28 - v16;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v19 = &v28 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v17, a5, v13);
  sub_10012B7A8(a7, v34);
  type metadata accessor for MainActor();

  v21 = a2;
  v22 = static MainActor.shared.getter();
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = &protocol witness table for MainActor;
  (*(v14 + 32))(v26 + v23, v17, v29);
  *(v26 + v24) = v28;
  sub_10012B828(v34, v26 + v25);
  *(v26 + ((v25 + 103) & 0xFFFFFFFFFFFFFFF8)) = v21;
  sub_1001F4CB8(0, 0, v19, v31, v26);

  return (v33)(1);
}

uint64_t sub_10051DD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for Track();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051DF58, v11, v10);
}

uint64_t sub_10051DF58()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for Track, &protocol witness table for Track, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50, &qword_100EBF800);
  *v10 = v0;
  v10[1] = sub_10051E114;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

uint64_t sub_10051E114()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_100534E8C;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_100534ED8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10051E2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for MusicVideo();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051E4C0, v11, v10);
}

uint64_t sub_10051E4C0()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for MusicVideo, &protocol witness table for MusicVideo, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50, &qword_100EBF800);
  *v10 = v0;
  v10[1] = sub_10051E67C;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

uint64_t sub_10051E67C()
{
  v2 = *v1;
  *(*v1 + 768) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_10051E8BC;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50, &qword_100EBF800);
    v8 = *(v2 + 752);
    v9 = *(v2 + 744);
    v10 = sub_10051E808;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10051E808()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10051E8BC()
{
  v26 = v0;
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[85];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[96];
    v8 = v0[87];
    v9 = v0[86];
    v10 = v0[85];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[76] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to download item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v0[87];
    v17 = v0[86];
    v18 = v0[85];

    (*(v17 + 8))(v16, v18);
  }

  v19 = UIView.noticePresenter.getter();
  if (v19)
  {
    v20 = v19;
    v21 = v0[84];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v21 = String.init(localized:table:bundle:locale:comment:)();
    v21[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(*v20 + 192))(v21, 1);

    sub_100532F98(v21, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_10051EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[80] = a7;
  v7[79] = a6;
  v7[78] = a5;
  v7[77] = a4;
  type metadata accessor for Locale();
  v7[81] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v7[82] = swift_task_alloc();
  v7[83] = type metadata accessor for Notice.Variant(0);
  v7[84] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v7[85] = v8;
  v7[86] = *(v8 - 8);
  v7[87] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  v7[88] = swift_task_alloc();
  v9 = type metadata accessor for Song();
  v7[89] = v9;
  v7[90] = *(v9 - 8);
  v7[91] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[92] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[93] = v11;
  v7[94] = v10;

  return _swift_task_switch(sub_10051EE04, v11, v10);
}

uint64_t sub_10051EE04()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 632);
  v5 = *(v0 + 624);
  (*(*(v0 + 720) + 16))(v1, *(v0 + 616), v2);
  sub_10012B7A8(v4, v0 + 464);
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v5, v0 + 464, v3, v2, &protocol witness table for Song, &protocol witness table for Song, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v7 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v7;
  *(v0 + 224) = *(v0 + 112);
  v8 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v8;
  v9 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v9;
  v10 = swift_task_alloc();
  *(v0 + 760) = v10;
  v11 = sub_10010FC20(&unk_101193E50, &qword_100EBF800);
  *v10 = v0;
  v10[1] = sub_10051E114;

  return Action.execute(checkSupportedStatus:)(v11, 1, v11);
}

double sub_10051EFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void), uint64_t a9, uint64_t a10)
{
  v30 = a3;
  v31 = a10;
  v29[1] = a9;
  v14 = (a8)(0, a2);
  v29[0] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = v29 - v17;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v20 = v29 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_10012B7A8(a5, v32);
  (*(v15 + 16))(v18, a6, v14);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = (*(v15 + 80) + 128) & ~*(v15 + 80);
  v24 = (v16 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_10012B828(v32, v25 + 32);
  (*(v15 + 32))(v25 + v23, v18, v29[0]);
  *(v25 + v24) = a7;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v31;
  *v26 = v30;
  v26[1] = a4;
  sub_1001F4CB8(0, 0, v20, v27, v25);

  return result;
}

uint64_t sub_10051F214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F2B4, v10, v9);
}

uint64_t sub_10051F2B4()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_10051F634(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10051F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F414, v10, v9);
}

uint64_t sub_10051F414()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_100520150(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

uint64_t sub_10051F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  type metadata accessor for MainActor();
  v8[7] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10051F574, v10, v9);
}

uint64_t sub_10051F574()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_100520C6C(v4, v1, *(v3 + 48) == 0xFF);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v5, 1, 1, 0, 0);

  v2(1);
  v6 = v0[1];

  return v6();
}

id sub_10051F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v5 = type metadata accessor for Track();
  v77 = *(v5 - 8);
  __chkstk_darwin();
  v74 = v6;
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v81 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicLibrary.RemoveAction();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin();
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin();
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v65 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v65 - v23;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v24, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v25 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v26 = v68;
  static MusicLibraryAction<>.remove.getter();
  v27 = v66;
  v76 = a1;
  v78 = v5;
  v28 = v71;
  v79 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v72 + 8))(v26, v28);
  v30 = v69;
  v29 = v70;
  v31 = v67;
  (*(v69 + 32))(v67, v27, v70);
  v32 = (*(v30 + 88))(v31, v29);
  (*(v30 + 8))(v31, v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = String.init(localized:table:bundle:locale:comment:)();
  v72 = v33;
  v34 = String._bridgeToObjectiveC()();

  v35 = [objc_opt_self() alertControllerWithTitle:0 message:v34 preferredStyle:v73];

  v36 = &selRef__replacePlaceholderViewWithView_;
  v37 = &selRef__replacePlaceholderViewWithView_;
  if (v15 == v25)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v73 = String.init(localized:table:bundle:locale:comment:)();
    v38 = v77;
    v39 = v25;
    v40 = v35;
    v41 = v32;
    v42 = v75;
    v43 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v79;
    v46 = v42;
    v32 = v41;
    v35 = v40;
    v25 = v39;
    v47 = v43;
    v36 = &selRef__replacePlaceholderViewWithView_;
    (*(v38 + 32))(v45 + v44, v46, v47);

    v48 = String._bridgeToObjectiveC()();

    v86 = sub_100534B18;
    v87 = v45;
    v37 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B11B8;
    v49 = _Block_copy(&aBlock);

    v50 = [objc_opt_self() actionWithTitle:v48 style:2 handler:v49];
    _Block_release(v49);

    [v35 addAction:v50];
  }

  if (v32 == v25)
  {
    v51 = v37;
    v52 = v77;
    v53 = v36;
    v54 = v75;
    v55 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v79;
    v58 = v54;
    v36 = v53;
    (*(v52 + 32))(v57 + v56, v58, v55);
    v37 = v51;

    v59 = String._bridgeToObjectiveC()();

    v86 = sub_100534A04;
    v87 = v57;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B1168;
    v60 = _Block_copy(&aBlock);

    v61 = [objc_opt_self() v53[28]];
    _Block_release(v60);

    [v35 v51[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v62 = String._bridgeToObjectiveC()();

  v63 = [objc_opt_self() v36[28]];

  [v35 v37[33]];
  return v35;
}

id sub_100520150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v5 = type metadata accessor for MusicVideo();
  v77 = *(v5 - 8);
  __chkstk_darwin();
  v74 = v6;
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v81 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicLibrary.RemoveAction();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin();
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin();
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v65 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v65 - v23;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v24, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v25 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v26 = v68;
  static MusicLibraryAction<>.remove.getter();
  v27 = v66;
  v76 = a1;
  v78 = v5;
  v28 = v71;
  v79 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v72 + 8))(v26, v28);
  v30 = v69;
  v29 = v70;
  v31 = v67;
  (*(v69 + 32))(v67, v27, v70);
  v32 = (*(v30 + 88))(v31, v29);
  (*(v30 + 8))(v31, v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = String.init(localized:table:bundle:locale:comment:)();
  v72 = v33;
  v34 = String._bridgeToObjectiveC()();

  v35 = [objc_opt_self() alertControllerWithTitle:0 message:v34 preferredStyle:v73];

  v36 = &selRef__replacePlaceholderViewWithView_;
  v37 = &selRef__replacePlaceholderViewWithView_;
  if (v15 == v25)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v73 = String.init(localized:table:bundle:locale:comment:)();
    v38 = v77;
    v39 = v25;
    v40 = v35;
    v41 = v32;
    v42 = v75;
    v43 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v79;
    v46 = v42;
    v32 = v41;
    v35 = v40;
    v25 = v39;
    v47 = v43;
    v36 = &selRef__replacePlaceholderViewWithView_;
    (*(v38 + 32))(v45 + v44, v46, v47);

    v48 = String._bridgeToObjectiveC()();

    v86 = sub_100533DBC;
    v87 = v45;
    v37 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B0F60;
    v49 = _Block_copy(&aBlock);

    v50 = [objc_opt_self() actionWithTitle:v48 style:2 handler:v49];
    _Block_release(v49);

    [v35 addAction:v50];
  }

  if (v32 == v25)
  {
    v51 = v37;
    v52 = v77;
    v53 = v36;
    v54 = v75;
    v55 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v79;
    v58 = v54;
    v36 = v53;
    (*(v52 + 32))(v57 + v56, v58, v55);
    v37 = v51;

    v59 = String._bridgeToObjectiveC()();

    v86 = sub_100533D74;
    v87 = v57;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B0F10;
    v60 = _Block_copy(&aBlock);

    v61 = [objc_opt_self() v53[28]];
    _Block_release(v60);

    [v35 v51[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v62 = String._bridgeToObjectiveC()();

  v63 = [objc_opt_self() v36[28]];

  [v35 v37[33]];
  return v35;
}

id sub_100520C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v5 = type metadata accessor for Song();
  v77 = *(v5 - 8);
  __chkstk_darwin();
  v74 = v6;
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v81 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicLibrary.RemoveAction();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  __chkstk_darwin();
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101193E60, &qword_100EBF810);
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin();
  v67 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v65 - v14;
  v15 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&qword_101183E28, &unk_100ED1910);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v65 - v23;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v16 + 8))(v18, v15);
  (*(v20 + 32))(v22, v24, v19);
  LODWORD(v15) = (*(v20 + 88))(v22, v19);
  v25 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v20 + 8))(v22, v19);
  v26 = v68;
  static MusicLibraryAction<>.remove.getter();
  v27 = v66;
  v76 = a1;
  v78 = v5;
  v28 = v71;
  v79 = a2;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v72 + 8))(v26, v28);
  v30 = v69;
  v29 = v70;
  v31 = v67;
  (*(v69 + 32))(v67, v27, v70);
  v32 = (*(v30 + 88))(v31, v29);
  (*(v30 + 8))(v31, v29);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v71 = String.init(localized:table:bundle:locale:comment:)();
  v72 = v33;
  v34 = String._bridgeToObjectiveC()();

  v35 = [objc_opt_self() alertControllerWithTitle:0 message:v34 preferredStyle:v73];

  v36 = &selRef__replacePlaceholderViewWithView_;
  v37 = &selRef__replacePlaceholderViewWithView_;
  if (v15 == v25)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v73 = String.init(localized:table:bundle:locale:comment:)();
    v38 = v77;
    v39 = v25;
    v40 = v35;
    v41 = v32;
    v42 = v75;
    v43 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v44 = (*(v38 + 80) + 24) & ~*(v38 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v79;
    v46 = v42;
    v32 = v41;
    v35 = v40;
    v25 = v39;
    v47 = v43;
    v36 = &selRef__replacePlaceholderViewWithView_;
    (*(v38 + 32))(v45 + v44, v46, v47);

    v48 = String._bridgeToObjectiveC()();

    v86 = sub_100533360;
    v87 = v45;
    v37 = &selRef__replacePlaceholderViewWithView_;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B0CB8;
    v49 = _Block_copy(&aBlock);

    v50 = [objc_opt_self() actionWithTitle:v48 style:2 handler:v49];
    _Block_release(v49);

    [v35 addAction:v50];
  }

  if (v32 == v25)
  {
    v51 = v37;
    v52 = v77;
    v53 = v36;
    v54 = v75;
    v55 = v78;
    (*(v77 + 16))(v75, v76, v78);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = v79;
    v58 = v54;
    v36 = v53;
    (*(v52 + 32))(v57 + v56, v58, v55);
    v37 = v51;

    v59 = String._bridgeToObjectiveC()();

    v86 = sub_100533318;
    v87 = v57;
    aBlock = _NSConcreteStackBlock;
    v83 = 1107296256;
    v84 = sub_10027D328;
    v85 = &unk_1010B0C68;
    v60 = _Block_copy(&aBlock);

    v61 = [objc_opt_self() v53[28]];
    _Block_release(v60);

    [v35 v51[33]];
  }

  else
  {
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v62 = String._bridgeToObjectiveC()();

  v63 = [objc_opt_self() v36[28]];

  [v35 v37[33]];
  return v35;
}

char *sub_100521788(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  v10 = dispatch thunk of MusicItem.id.getter();
  v12 = v11;
  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  v13 = *(v1 + 48);
  if (*(v13 + 16) && (v14 = sub_1006BE598(v10, v12, 0, 0), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (v9)(v8, a1, v4);
    type metadata accessor for WaveformPlayer.ListenerToken(0);
    swift_allocObject();
    v16 = sub_1005219C0(v8);
    sub_10027317C(v16);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    sub_1006C5CBC(v16, v10, v12, 0, 0, isUniquelyReferenced_nonNull_native);

    *(v2 + 48) = v19;
    swift_endAccess();
    sub_1002732FC();
  }

  return v16;
}

char *sub_1005219C0(char *a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101193DF8, &unk_100ED1858);
  __chkstk_darwin();
  v27 = &v22 - v4;
  v5 = type metadata accessor for Song();
  v23 = *(v5 - 8);
  v6 = v23;
  v26 = *(v23 + 64);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCC5Music14WaveformPlayer13ListenerToken__displayState;
  v10 = type metadata accessor for WaveformState();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  ObservationRegistrar.init()();
  v11 = *(v6 + 16);
  v25 = a1;
  v11(v8, a1, v5);
  v12 = dispatch thunk of MusicItem.id.getter();
  v14 = v13;
  v24 = *(v6 + 8);
  v24(v8, v5);
  *(v2 + 2) = v12;
  *(v2 + 3) = v14;
  *(v2 + 4) = 0;
  *(v2 + 5) = 0;
  v15 = v27;
  v11(v27, a1, v5);
  v11(v8, v15, v5);
  v16 = v23;
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  v19 = *(v16 + 32);
  v19(v18 + v17, v8, v5);
  v24(v27, v5);
  *(v2 + 6) = sub_100532B30;
  *(v2 + 7) = v18;
  v19(v8, v25, v5);
  v20 = swift_allocObject();
  v19(v20 + v17, v8, v5);
  *(v2 + 8) = sub_100532BA0;
  *(v2 + 9) = v20;
  return v2;
}

uint64_t sub_100521C9C(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = __chkstk_darwin();
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  return String.init<A>(describing:)();
}

uint64_t sub_100521D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Track();
  *v8 = v5;
  v8[1] = sub_100521E9C;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for Track);
}

uint64_t sub_100521E9C()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100534E6C;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100521FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for MusicVideo();
  *v8 = v5;
  v8[1] = sub_1003FE8F8;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for MusicVideo);
}

uint64_t sub_10052212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Song();
  *v8 = v5;
  v8[1] = sub_100521E9C;

  return MusicLibrary.removeDownload<A>(_:)(a5, v9, &protocol witness table for Song);
}

double sub_100522260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - v11;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v14 = &v20 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(v12, a3, v9);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = v16;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = a2;
  (*(v10 + 32))(&v18[v17], v12, v9);
  sub_1001F4CB8(0, 0, v14, a6, v18);

  return result;
}

uint64_t sub_10052245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Track();
  *v8 = v5;
  v8[1] = sub_100522590;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for Track);
}

uint64_t sub_100522590()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100534E70;
  }

  else
  {
    v4 = sub_1003FFCA8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1005226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for MusicVideo();
  *v8 = v5;
  v8[1] = sub_1003FEF98;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for MusicVideo);
}

uint64_t sub_100522820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for Logger();
  v5[3] = v7;
  v5[4] = *(v7 - 8);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v5[8] = v8;
  v9 = type metadata accessor for Song();
  *v8 = v5;
  v8[1] = sub_100522590;

  return MusicLibrary.remove<A>(_:)(a5, v9, &protocol witness table for Song);
}

id sub_100522954(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v2[v5], 1, 1, v6);
  v7(&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration], 1, 1, v6);
  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  v9 = sub_10010FC20(&unk_101193D60, &qword_100ED16E8);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *&v2[v10] = sub_10026FF78();
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] = 0;
  v11 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController;
  v12 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v11] = sub_10003AAD8(0xD00000000000001CLL, 0x8000000100E4EAC0);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController] = 0;
  v13 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  v14 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  v15 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v16 = type metadata accessor for Song();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem] = 0;
  v17 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  v18 = type metadata accessor for IndexPath();
  (*(*(v18 - 8) + 56))(&v2[v17], 1, 1, v18);
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask] = 0;
  sub_1007B9FFC(v3, v32);
  sub_10010FC20(&unk_101193D88, &unk_100ED1770);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] = sub_1003A3538(v32);
  v31.receiver = v2;
  v31.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v31, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v20 = String._bridgeToObjectiveC()();

  [v19 setTitle:v20];

  UIViewController.playActivityFeatureIdentifier.setter(15);
  v21 = [v19 traitCollection];

  v22 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v24 = v23;

  if ((v24 & 1) == 0)
  {
    v25 = [v19 navigationItem];
    [v25 setLargeTitleDisplayMode:v22];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100EBC6B0;
  v27 = sub_100217F14();
  *(v26 + 32) = &type metadata for LibraryFilterTrait;
  *(v26 + 40) = v27;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  v29 = sub_100137E8C();
  *(v28 + 32) = &type metadata for MusicLibraryTrait;
  *(v28 + 40) = v29;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v19;
}

double sub_100522EF8()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "viewDidLoad");
  sub_1005233CC();
  v2 = sub_1005235FC();
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  [*(v2 + 32) setHidesNavigationBarDuringPresentation:v4 == 1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  *(v5 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v6 = sub_1005236A0();
  v7 = sub_100523A98();
  [v6 setCollectionViewLayout:v7];

  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView;
  v9 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] setPrefetchDataSource:v9];
  v10 = (v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v12 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v10 = sub_100530E40;
  v10[1] = 0;
  sub_100020438(v11, v12);
  v13 = (v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v15 = *(v9 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v13 = sub_100523E98;
  v13[1] = 0;
  sub_100020438(v14, v15);
  v16 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v16[2];
  v19 = v16[3];
  v16[2] = sub_100532C10;
  v16[3] = v17;

  sub_100020438(v18, v19);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v16[4];
  v22 = v16[5];
  v16[4] = sub_100532C18;
  v16[5] = v20;

  sub_100020438(v21, v22);

  v23 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 88);
  v26 = *(v23 + 96);
  *(v23 + 88) = sub_100532C20;
  *(v23 + 96) = v24;

  sub_100020438(v25, v26);

  v27 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v42[3] = v27;
  v28 = sub_10001C8B8(v42);
  sub_10052635C(v28);
  v43[3] = v27;
  v29 = sub_10001C8B8(v43);
  sub_1005265E0(v29);
  v44[3] = sub_10010FC20(&unk_101193D60, &qword_100ED16E8);
  v30 = sub_10001C8B8(v44);
  sub_100526868(v30);
  swift_arrayDestroy();
  v31 = *&v1[v8];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v33 = swift_allocObject();
  *(v33 + 24) = 0u;
  *(v33 + 40) = 0u;
  *(v33 + 56) = 0u;
  *(v33 + 72) = 0u;
  *(v33 + 88) = 1;
  *(v33 + 96) = 0;
  v34 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v35 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v35 - 8) + 56))(v33 + v34, 1, 1, v35);
  *(v33 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v33 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v33 + 16) = v31;
  *(v33 + 24) = sub_100532C28;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  v36 = *(v33 + 56);
  v37 = *(v33 + 64);
  *(v33 + 64) = 0;
  *(v33 + 48) = 0;
  *(v33 + 56) = 0;
  v38 = v31;
  swift_retain_n();
  sub_100020438(v36, v37);
  v39 = *(v33 + 72);
  v40 = *(v33 + 80);
  *(v33 + 72) = 0;
  *(v33 + 80) = 0;
  sub_100020438(v39, v40);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController] = v33;

  return result;
}

void sub_1005233CC()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_10052F4A8();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_1003955AC();
  }

  v5 = sub_10052F430();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v9 setHidden:v4 & 1];

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v12 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

uint64_t sub_1005235FC()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

id sub_1005236A0()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100523A98()
{
  v1 = sub_1005236A0();
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);

  v7 = [v6 init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (v3 == 1)
  {
    v9 = objc_opt_self();
    v10 = [v9 fractionalWidthDimension:1.0];
    v11 = [v9 estimatedDimension:65.0];
    v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

    UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

    v13 = String._bridgeToObjectiveC()();

    v14 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:v13 alignment:1];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100EBC6C0;
    *(v15 + 32) = v14;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v16 = v14;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 setBoundarySupplementaryItems:isa];

    v18 = *(v8 + 16);
    *(v8 + 16) = v16;
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v19;
  v20[5] = sub_100532E10;
  v20[6] = v4;
  v20[7] = sub_100532E18;
  v20[8] = v5;
  v20[9] = static MPCPlayerCommandRequest.isAvailable(in:);
  v20[10] = 0;
  v20[11] = v8;
  v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v25[4] = sub_1002193FC;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_1005A63A8;
  v25[3] = &unk_1010B0AB0;
  v22 = _Block_copy(v25);

  v23 = [v21 initWithSectionProvider:v22 configuration:v7];

  _Block_release(v22);

  return v23;
}

unint64_t sub_100523E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for Song();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101193E08, &qword_100ED18C8);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v31, &unk_101183F30, qword_100EBF960);
  if (!v32)
  {
    sub_1000095E8(v31, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &qword_101193E08, &qword_100ED18C8);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v23);
    Song.artwork.getter();
    (*(v25 + 8))(v13, v26);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

uint64_t sub_10052436C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin();
  v8 = &v40 - v7;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  v48 = *(sub_10010FC20(&qword_101193E08, &qword_100ED18C8) - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v15 = &v40 - v14;
  __chkstk_darwin();
  v45 = &v40 - v16;
  __chkstk_darwin();
  v50 = &v40 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v40 = v8;
  v41 = v15;
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  RequestResponse.Revision.content.getter(v12);
  v18 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v12, 1, v18) == 1)
  {
    sub_1000095E8(v12, &qword_10118D1B8, &qword_100EC8ED8);
    v20 = 1;
    v21 = v50;
    v23 = v46;
    v22 = v47;
  }

  else
  {
    v23 = v46;
    v22 = v47;
    v21 = v50;
    (v46[2].isa)(v50, v12, v47);
    sub_1000095E8(v12, &qword_10118D1C8, &unk_100EC8EE8);
    v20 = 0;
  }

  (v23[7].isa)(v21, v20, 1, v22);
  v47 = sub_1005236A0();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v19(v10, 1, v18) == 1)
  {
    sub_1000095E8(v10, &qword_10118D1B8, &qword_100EC8ED8);
    v46 = 0;
  }

  else
  {
    v25 = v40;
    (v23[2].isa)(v40, v10, v22);
    sub_1000095E8(v10, &qword_10118D1C8, &unk_100EC8EE8);
    v46 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v25, v22);
  }

  v26 = v45;
  sub_1000089F8(v21, v45, &qword_101193E08, &qword_100ED18C8);
  if ((v23[6].isa)(v26, 1, v22) == 1)
  {
    sub_1000095E8(v26, &qword_101193E08, &qword_100ED18C8);
    v45 = 0;
  }

  else
  {
    v45 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v26, v22);
  }

  v27 = Strong;
  v28 = [*(sub_1005235FC() + 32) searchBar];
  LODWORD(v40) = [v28 isFirstResponder];

  v29 = v50;
  v30 = v41;
  sub_1000089F8(v50, v41, &qword_101193E08, &qword_100ED18C8);
  v31 = *(v48 + 80);
  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = v43;
  v32[3] = v33;
  v32[4] = v27;
  sub_10003D17C(v30, v32 + ((v31 + 40) & ~v31), &qword_101193E08, &qword_100ED18C8);
  v34 = v42;
  sub_1000089F8(v29, v42, &qword_101193E08, &qword_100ED18C8);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  sub_10003D17C(v34, v35 + ((v31 + 24) & ~v31), &qword_101193E08, &qword_100ED18C8);
  v36 = v27;

  v37 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v38 = sub_100532D14();
  v39 = v47;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v46, v45, 0, 0, 1, v40 ^ 1, sub_100532C30, v32, sub_100524BD4, 0, sub_100524C64, 0, sub_100532CA4, v35, 0, 0, v37, v38);

  return sub_1000095E8(v29, &qword_101193E08, &qword_100ED18C8);
}

uint64_t sub_100524A18(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101193E08, &qword_100ED18C8);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController);
  sub_1000089F8(a4, v9, &qword_101193E08, &qword_100ED18C8);
  v11 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &qword_101193E08, &qword_100ED18C8);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_100524BD4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Song();
  sub_100532DC8(&qword_101185748, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_100524C64()
{
  v0 = type metadata accessor for MusicFavoriteStatus();
  v54 = *(v0 - 8);
  v55 = v0;
  __chkstk_darwin();
  v53 = &v49[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v52 = &v49[-v2];
  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  __chkstk_darwin();
  v51 = &v49[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v8 = &v49[-v7];
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v12 = &v49[-v11];
  __chkstk_darwin();
  v14 = &v49[-v13];
  v15 = Song.title.getter();
  v17 = v16;
  if (v15 == Song.title.getter() && v17 == v18)
  {
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v20 = Song.artistName.getter();
  v22 = v21;
  if (v20 == Song.artistName.getter() && v22 == v23)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v25 = Song.albumTitle.getter();
  v27 = v26;
  v28 = Song.albumTitle.getter();
  if (v27)
  {
    if (v29)
    {
      if (v25 == v28 && v27 == v29)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_19;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v29)
  {
    goto LABEL_15;
  }

LABEL_19:
  v33 = COERCE_DOUBLE(Song.duration.getter());
  v35 = v34;
  v36 = COERCE_DOUBLE(Song.duration.getter());
  if (v35)
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((v37 & 1) != 0 || v33 != v36)
  {
    goto LABEL_16;
  }

  Song.artwork.getter();
  Song.artwork.getter();
  v38 = *(v6 + 48);
  sub_1000089F8(v14, v8, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v12, &v8[v38], &unk_101188920, &qword_100EBCC50);
  v39 = v56;
  v40 = *(v57 + 48);
  if (v40(v8, 1, v56) == 1)
  {
    sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    if (v40(&v8[v38], 1, v39) == 1)
    {
      sub_1000095E8(v8, &unk_101188920, &qword_100EBCC50);
LABEL_31:
      v45 = v52;
      Song.favoriteStatus.getter();
      v46 = v53;
      Song.favoriteStatus.getter();
      v30 = static MusicFavoriteStatus.== infix(_:_:)();
      v47 = v55;
      v48 = *(v54 + 8);
      v48(v46, v55);
      v48(v45, v47);
      return v30 & 1;
    }

    goto LABEL_29;
  }

  sub_1000089F8(v8, v10, &unk_101188920, &qword_100EBCC50);
  if (v40(&v8[v38], 1, v39) == 1)
  {
    sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    (*(v57 + 8))(v10, v39);
LABEL_29:
    sub_1000095E8(v8, &unk_101191420, &unk_100EC9120);
    goto LABEL_16;
  }

  v41 = v57;
  v42 = &v8[v38];
  v43 = v51;
  (*(v57 + 32))(v51, v42, v39);
  sub_100532DC8(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v41 + 8);
  v44(v43, v39);
  sub_1000095E8(v12, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
  v44(v10, v39);
  sub_1000095E8(v8, &unk_101188920, &qword_100EBCC50);
  if (v50)
  {
    goto LABEL_31;
  }

LABEL_16:
  v30 = 0;
  return v30 & 1;
}

double sub_100525334(char *a1, uint64_t a2)
{
  sub_10010FC20(&qword_101193E08, &qword_100ED18C8);
  __chkstk_darwin();
  v5 = &v27 - v4;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_1005233CC();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v12 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &qword_10118D1B8, &qword_100EC8ED8);
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v7, v8);
    sub_1000095E8(v7, &qword_10118D1C8, &unk_100EC8EE8);
    v14 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v11, v8);
    v13 = !v14;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v15 = sub_1005236A0();
  [v15 setBouncesVertically:v13 & 1];

  [*&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v13 & 1];
  v16 = sub_1005235FC();
  sub_1000089F8(a2, v5, &qword_101193E08, &qword_100ED18C8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &qword_101193E08, &qword_100ED18C8);
  }

  else
  {
    v17 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v5, v8);
    if (!v17)
    {
      v26 = *(v16 + 64);
      *(v16 + 64) = 1;
      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v18 = (*(*&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v19 = v18[1];
  if (!v19)
  {
    v25 = *(v16 + 64);
    *(v16 + 64) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 != 0;
  v23 = *(v16 + 64);
  *(v16 + 64) = v22;
  if (v23 != v22)
  {
LABEL_12:
    sub_10043EAB8();
  }

LABEL_13:

  return sub_100525704();
}

double sub_100525704()
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v57 = &v44 - v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v56 = &v44 - v2;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v53 = &v44 - v3;
  v4 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin();
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v44 - v6;
  __chkstk_darwin();
  v58 = &v44 - v7;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v9 = &v44 - v8;
  v10 = type metadata accessor for Song();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  v15 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  v16 = v0 + v15;
  v17 = v10;
  v18 = v11;
  sub_1000089F8(v16, v9, &unk_101183960, &unk_100EBCF90);
  if ((*(v11 + 48))(v9, 1, v17) == 1)
  {
    sub_1000095E8(v9, &unk_101183960, &unk_100EBCF90);
LABEL_5:
    v23 = type metadata accessor for IndexPath();
    v24 = v57;
    (*(*(v23 - 8) + 56))(v57, 1, 1, v23);
    sub_10052F8CC(v24);
    return result;
  }

  v19 = *(v11 + 32);
  v19(v14, v9, v17);
  v20 = v0;
  RequestResponse.Controller.revision.getter();
  v21 = v53;
  RequestResponse.Revision.content.getter(v53);

  v22 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_1000095E8(v21, &qword_10118D1B8, &qword_100EC8ED8);
    (*(v18 + 8))(v14, v17);
    goto LABEL_5;
  }

  v47 = v19;
  v48 = v18 + 32;
  v49 = v17;
  v57 = v14;
  v27 = v54;
  v26 = v55;
  v28 = v50;
  v29 = *(v54 + 16);
  v29(v50, v21, v55);
  sub_1000095E8(v21, &qword_10118D1C8, &unk_100EC8EE8);
  v30 = *(v27 + 32);
  v50 = (v27 + 32);
  v46 = v30;
  v30(v58, v28, v26);
  v31 = v20;
  v53 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask;
  if (*(v20 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask))
  {

    Task.cancel()();
  }

  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v52;
  v45 = v31;
  v34 = v55;
  v29(v52, v58, v55);
  v35 = v51;
  v36 = v49;
  (*(v18 + 16))(v51, v57, v49);
  v37 = v54;
  v38 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v39 = (v5 + *(v18 + 80) + v38) & ~*(v18 + 80);
  v40 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v46(v41 + v38, v33, v34);
  v47(v41 + v39, v35, v36);
  *(v41 + v40) = v44;
  v42 = v56;
  v43 = sub_10035EB10(0, 0, v56, &unk_100ED1758, v41);
  sub_1000095E8(v42, &unk_101181520, &qword_100EBCC60);
  (*(v37 + 8))(v58, v34);
  (*(v18 + 8))(v57, v36);
  *(v45 + v53) = v43;

  return result;
}

double sub_100525E1C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v3 = &v14[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v7 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_1000095E8(v3, &qword_10118D1B8, &qword_100EC8ED8);
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      v8 = *&v3[*(v7 + 36)];

      sub_1000095E8(v3, &qword_10118D1C8, &unk_100EC8EE8);
    }

    v9 = v8[2];

    v10 = sub_100526124();
    swift_getKeyPath();
    v15 = v10;
    sub_100532DC8(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 48);

    if ((v9 == 0) == v11)
    {
    }

    else
    {
      v12 = *&v6[OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource];
      v13 = v9 == 0;
      if (((v9 == 0) ^ *(v12 + 48)))
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *&v14[-16] = v12;
        v14[-8] = v13;
        v15 = v12;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v12 + 48) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_100526124()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_100534EE0;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_100526248(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController);
    v8 = Strong;

    if (a2)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    if (a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    v11 = *(v7 + 48);
    swift_beginAccess();
    v12 = *(v11 + 48);
    v17[1] = *(v11 + 32);
    v17[2] = v12;
    v13 = *(v11 + 64);
    v18 = *(v11 + 80);
    v17[3] = v13;
    v17[0] = *(v11 + 16);
    v14 = *(v11 + 64);
    v22 = *(v11 + 48);
    v23 = v14;
    v15 = *(v11 + 16);
    v24 = v18;
    v19 = v15;

    sub_10021817C(v17, &v16);

    v20 = v9;
    v21 = v10;
    sub_100379CC8(&v19);
  }

  return result;
}

uint64_t sub_10052635C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1005265E0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_100526868@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&unk_101193D98, &qword_100ED17B8);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &unk_101193D98, &qword_100ED17B8);
  v9 = sub_10010FC20(&unk_101193D60, &qword_100ED16E8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &unk_101193D98, &qword_100ED17B8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for Song();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &unk_101193D98, &qword_100ED17B8);
  return swift_endAccess();
}

char *sub_100526B08(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v40 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v5 = &v36 - v4;
  v6 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v11 = &v36 - v10;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v36 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v38 = v7;
    v37 = v3;
    v20 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(v42, v11);

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {

      sub_1000095E8(v11, &unk_101183960, &unk_100EBCF90);
      return 0;
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
      v21 = *(*&v19[v20] + 48);
      swift_beginAccess();
      v22 = *(v21 + 48);
      v46[1] = *(v21 + 32);
      v46[2] = v22;
      v46[3] = *(v21 + 64);
      v47 = *(v21 + 80);
      v46[0] = *(v21 + 16);
      sub_10021817C(v46, v44);
      sub_1007B8D40(v5);
      sub_1003BECBC(v46);
      v23 = v38;
      if ((*(v38 + 48))(v5, 1, v6) == 1)
      {
        sub_1000095E8(v5, &unk_10118CDB0, &unk_100EC0360);
        v24 = 0;
      }

      else
      {
        v25 = v41;
        (*(v23 + 32))(v41, v5, v6);
        v26 = v23;
        v27 = v37;
        (*(v23 + 16))(v37, v25, v6);
        swift_storeEnumTagMultiPayload();
        v45 = 0;
        memset(v44, 0, sizeof(v44));
        v43[0] = v19;
        v28 = v19;
        v29 = String.init<A>(reflecting:)();
        v43[3] = &type metadata for Player.CommandIssuerIdentity;
        v43[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v43[0] = v29;
        v43[1] = v30;
        v31 = v28;
        v32 = v39;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v27, v44, 3, 0, 0, 1, 0, 1, v39, v19, v43);
        (*(v26 + 8))(v41, v6);
        v24 = PlaybackIntentDescriptor.intent.getter();
        sub_100532F98(v32, type metadata accessor for PlaybackIntentDescriptor);
      }

      v33 = sub_10079AF28(v24);
      v34 = sub_100797240(&off_10109B8B0, v33);

      (*(v13 + 16))(v15, v17, v12);
      v35 = sub_10079D968(v34, v15);

      (*(v13 + 8))(v17, v12);
      return v35;
    }
  }

  return result;
}

void sub_100527148(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_1005236A0();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA9B8(v2, v5);
  }
}

uint64_t sub_100527268(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_100532A34(v8, v6, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v6, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_100532F98(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_100527580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10010FC20(&unk_10118D330, &qword_100ED15D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;

  v11 = sub_1006E6C64();

  if (v11)
  {

LABEL_4:
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_100526124();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v13 + 1) = v5;
  v14 = sub_100020674(&unk_10118D340, &unk_10118D330, &qword_100ED15D0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(&v12);
  UIHostingConfiguration.margins(_:_:)();

  (*(v6 + 8))(v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_10052777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &qword_10118D1B8, &qword_100EC8ED8);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &qword_10118D1C8, &unk_100EC8EE8);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_100527B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&qword_101193DA8, &qword_100ED17C0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v21 - v12;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21[0] = v21;
    __chkstk_darwin();
    v21[-4] = a3;
    v21[-3] = v14;
    v21[-2] = a1;
    v21[-1] = a5;
    v15 = v14;
    sub_10010FC20(&qword_101193DB0, &qword_100ED17C8);
    v21[1] = a1;
    v16 = sub_1001109D0(&qword_101193DB8, &unk_100ED17D0);
    v17 = sub_100020674(&qword_101193DC0, &qword_101193DB8, &unk_100ED17D0, &unk_100ED74E8);
    v22[0] = v16;
    v22[1] = v17;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v9 + 8);
    v18(v11, v8);
    static Edge.Set.vertical.getter();
    v19 = [v15 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v22[3] = v8;
    v22[4] = sub_100020674(&qword_101193DC8, &qword_101193DA8, &qword_100ED17C0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v22);
    UIHostingConfiguration.margins(_:_:)();
    v18(v13, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100527E7C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v90 = a4;
  v85 = a2;
  v5 = type metadata accessor for Song();
  v70 = v5;
  v91 = *(v5 - 8);
  __chkstk_darwin();
  v87 = v6;
  v88 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v70 - v8;
  v73 = type metadata accessor for MusicFavoriteStatus();
  v9 = *(v73 - 8);
  __chkstk_darwin();
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v71 = &v70 - v11;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v15 = &v70 - v14;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&qword_101193DB8, &unk_100ED17D0);
  __chkstk_darwin();
  v20 = &v70 - v19;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for Song, v15);
  ArtworkImage.Size.init(cgSize:)(0x4048000000000000, 0x4048000000000000, 0, v92);
  v21 = Corner.small.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v25 - 8) + 56))(v13, 1, 11, v25);
  v86 = v17;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v15, v13, 0, 1, v92, v22, v23, v24, v17);
  v26 = Song.title.getter();
  v82 = v27;
  v83 = v26;
  v81 = Song.artistName.getter();
  v80 = v28;
  v79 = Song.albumTitle.getter();
  v78 = v29;
  Song.duration.getter();
  v76 = static Duration.seconds(_:)();
  v75 = v30;
  v31 = v71;
  Song.favoriteStatus.getter();
  v32 = v72;
  v33 = v73;
  (*(v9 + 104))(v72, enum case for MusicFavoriteStatus.favorited(_:), v73);
  v34 = v32;
  v74 = static MusicFavoriteStatus.== infix(_:_:)();
  v35 = *(v9 + 8);
  v35(v34, v33);
  v35(v31, v33);
  Song.contentRating.getter();
  v36 = v91;
  v37 = v77;
  v38 = v70;
  v71 = *(v91 + 16);
  (v71)(v77, a1, v70);
  v39 = v38;
  (*(v36 + 56))(v37, 0, 1, v38);
  v40 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v41 = v85;
  swift_beginAccess();
  v42 = v41 + v40;
  v43 = v39;
  v44 = v84;
  sub_1000089F8(v42, v84, &unk_101183960, &unk_100EBCF90);
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  LODWORD(v72) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v44, &unk_101183960, &unk_100EBCF90);
  sub_1000095E8(v37, &unk_101183960, &unk_100EBCF90);
  v73 = sub_1007BAB4C(a1);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v77 = Player.state<A>(for:)(a1, v39, &protocol witness table for Song);
  v84 = sub_100521788(a1);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v88;
  (v71)(v88, a1, v39);
  v47 = v91;
  v48 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  v50 = v89;
  *(v49 + 24) = v89;
  (*(v47 + 32))(v49 + v48, v46, v43);

  v51 = v50;
  v52 = sub_1005236A0();
  v53 = *&v52[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100518F70(v86, v20, type metadata accessor for ArtworkImage.Info);
  v54 = &v20[v18[11]];
  v55 = v82;
  *v54 = v83;
  *(v54 + 1) = v55;
  v56 = &v20[v18[12]];
  v57 = v80;
  *v56 = v81;
  v56[1] = v57;
  v58 = &v20[v18[13]];
  v59 = v78;
  *v58 = v79;
  v58[1] = v59;
  v60 = &v20[v18[14]];
  v61 = v75;
  *v60 = v76;
  v60[1] = v61;
  v20[v18[15]] = v74 & 1;
  v20[v18[17]] = v72 & 1;
  v62 = &v20[v18[18]];
  sub_10010FC20(&qword_101193DD0, &unk_100EE3A50);
  sub_100020674(&qword_101193DD8, &qword_101193DD0, &unk_100EE3A50, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *v62 = ObservedObject.init(wrappedValue:)();
  v62[1] = v63;
  v64 = &v20[v18[19]];
  sub_10010FC20(&qword_101193DE0, &qword_100ED17E0);
  sub_100020674(&unk_101193DE8, &qword_101193DE0, &qword_100ED17E0, &protocol conformance descriptor for MusicItemState<A>);
  *v64 = ObservedObject.init(wrappedValue:)();
  v64[1] = v65;
  *&v20[v18[20]] = v84;
  v66 = &v20[v18[21]];
  *v66 = sub_100532ABC;
  v66[1] = v49;
  *&v20[v18[22]] = v53;
  v67 = v18[23];
  *&v20[v67] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v68 = v18[24];
  *&v20[v68] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();

  sub_100532DC8(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100020674(&qword_101193DC0, &qword_101193DB8, &unk_100ED17D0, &unk_100ED74E8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v20, &qword_101193DB8, &unk_100ED17D0);
}

char *sub_1005288B8(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t, void *))
{
  v137 = a4;
  v158 = a3;
  v4 = type metadata accessor for UUID();
  v147 = *(v4 - 8);
  __chkstk_darwin();
  v146 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v140 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = v6;
  __chkstk_darwin();
  v157 = &v125 - v7;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v138 = &v125 - v8;
  v141 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v142 = v9;
  v143 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v125 - v10;
  v150 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v152 = *(v150 - 1);
  __chkstk_darwin();
  v134 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v13 = &v125 - v12;
  v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v135 = *(v14 - 8);
  v136 = v14;
  __chkstk_darwin();
  v133 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v132 = &v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v139 = &v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v125 - v18;
  __chkstk_darwin();
  v151 = &v125 - v20;
  __chkstk_darwin();
  v149 = &v125 - v21;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v148 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v125 - v23;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v25 = &v125 - v24;
  v26 = type metadata accessor for Song();
  v153 = *(v26 - 8);
  v154 = v26;
  __chkstk_darwin();
  v28 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for IndexPath();
  v29 = *(v160 - 8);
  __chkstk_darwin();
  v31 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v159 = &v125 - v32;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    v131 = v4;
    v35 = sub_1005236A0();
    v36 = [v35 indexPathForCell:v158];

    if (v36)
    {
      v129 = v19;
      v158 = v28;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v159;
      v38 = v160;
      (*(v29 + 32))(v159, v31, v160);
      v39 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

      sub_10037BC74(v37, v25);

      v41 = v153;
      v40 = v154;
      if ((*(v153 + 48))(v25, 1, v154) == 1)
      {
        (*(v29 + 8))(v37, v38);

        sub_1000095E8(v25, &unk_101183960, &unk_100EBCF90);
        return 0;
      }

      else
      {
        v130 = v29;
        v42 = v158;
        (*(v41 + 32))(v158, v25, v40);
        sub_10010FC20(&unk_101183900, &unk_100EC1680);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_100EBC6B0;
        *(v43 + 56) = v40;
        *(v43 + 64) = &protocol witness table for Song;
        v127 = v43;
        v44 = sub_10001C8B8((v43 + 32));
        (*(v41 + 16))(v44, v42, v40);
        v45 = [v34 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v128 = v175;
        v46 = *(*&v34[v39] + 48);
        swift_beginAccess();
        v47 = *(v46 + 48);
        v185[1] = *(v46 + 32);
        v185[2] = v47;
        v185[3] = *(v46 + 64);
        v186 = *(v46 + 80);
        v185[0] = *(v46 + 16);
        sub_10021817C(v185, &v175);
        sub_1007B8D40(v13);
        sub_1003BECBC(v185);
        v49 = v135;
        v48 = v136;
        if ((*(v135 + 48))(v13, 1, v136) == 1)
        {
          sub_1000095E8(v13, &unk_10118CDB0, &unk_100EC0360);
          v50 = 1;
          v51 = v130;
          v53 = v149;
          v52 = v150;
        }

        else
        {
          v54 = v133;
          (*(v49 + 32))(v133, v13, v48);
          v55 = v134;
          (*(v49 + 16))(v134, v54, v48);
          v52 = v150;
          swift_storeEnumTagMultiPayload();
          v177 = 0;
          v175 = 0u;
          v176 = 0u;
          *&v171 = v34;
          v56 = v34;
          v57 = String.init<A>(reflecting:)();
          v172 = &type metadata for Player.CommandIssuerIdentity;
          v173 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v171 = v57;
          *(&v171 + 1) = v58;
          v59 = v56;
          v60 = v132;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v55, &v175, 3, 0, 0, 1, 0, 1, v132, v34, &v171);
          (*(v49 + 8))(v54, v48);
          v53 = v149;
          sub_100532A34(v60, v149, type metadata accessor for PlaybackIntentDescriptor.IntentType);
          sub_100532F98(v60, type metadata accessor for PlaybackIntentDescriptor);
          v50 = 0;
          v51 = v130;
        }

        v61 = v152[7];
        v152 += 7;
        v137 = v61;
        v61(v53, v50, 1, v52);
        v177 = 0;
        v175 = 0u;
        v176 = 0u;
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v62 = qword_101218AD8;
        sub_1000089F8(v53, v151, &unk_1011838E0, &unk_100EC1670);
        v63 = v62;
        v64 = UIViewController.playActivityInformation.getter();
        v65 = v34;
        v67 = v66;
        v69 = v68;
        v71 = v70;
        sub_1000089F8(&v175, &v167, &unk_101183910, &unk_100EBDD00);
        v72 = v65;
        if (*(&v168 + 1))
        {
          sub_100059A8C(&v167, &v171);
        }

        else
        {
          *&v178 = v65;
          sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
          v73 = v65;
          sub_10010FC20(&unk_101183920, &unk_100EC0330);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v181, &v171);
          }

          else
          {
            v183 = 0;
            v181 = 0u;
            v182 = 0u;
            *&v171 = v73;
            v74 = v73;
            v75 = String.init<A>(reflecting:)();
            v172 = &type metadata for Player.CommandIssuerIdentity;
            v173 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v171 = v75;
            *(&v171 + 1) = v76;
            if (*(&v182 + 1))
            {
              sub_1000095E8(&v181, &unk_101183910, &unk_100EBDD00);
            }
          }

          v53 = v149;
          if (*(&v168 + 1))
          {
            sub_1000095E8(&v167, &unk_101183910, &unk_100EBDD00);
          }
        }

        v77 = v155;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v63, v151, v64, v67, v69, v71, &v171, v155);
        sub_1000095E8(&v175, &unk_101183910, &unk_100EBDD00);
        sub_1000095E8(v53, &unk_1011838E0, &unk_100EC1670);
        v78 = type metadata accessor for Actions.PlaybackContext(0);
        v79 = *(v78 - 8);
        (*(v79 + 56))(v77, 0, 1, v78);
        v80 = type metadata accessor for PlaylistContext(0);
        (*(*(v80 - 8) + 56))(v156, 1, 1, v80);
        v81 = v138;
        v82 = v160;
        (*(v51 + 16))(v138, v159, v160);
        (*(v51 + 56))(v81, 0, 1, v82);
        sub_100376EBC(v81, &v175);
        sub_1000095E8(v81, &unk_10118BCE0, &qword_100EC6450);
        v83 = v157;
        sub_100529EE4(v157);
        v84 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
        sub_100008FE4(v127 + 32, v174);

        sub_1000089F8(&v175, &v167, &unk_1011845E0, &unk_100EBF3A0);
        if (v170 == 1)
        {
          v183 = 0;
          v181 = 0u;
          v182 = 0u;
          v184 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v72, &v181, &v171);
          v85 = v148;
          if (v170 != 1)
          {
            sub_1000095E8(&v167, &unk_1011845E0, &unk_100EBF3A0);
          }
        }

        else
        {
          sub_10012B828(&v167, &v171);
          v85 = v148;
        }

        swift_getObjectType();
        v86 = swift_conformsToProtocol2();
        if (v86)
        {
          v138 = v86;
          v87 = v72;
          v149 = v72;
        }

        else
        {
          v149 = 0;
          v138 = 0;
        }

        v151 = swift_allocBox();
        v89 = v88;
        sub_1000089F8(v155, v85, &unk_10118AB20, &unk_100EBF390);
        v90 = *(v79 + 48);
        if (v90(v85, 1, v78) == 1)
        {
          v91 = v129;
          v137(v129, 1, 1, v150);
          v169 = 0;
          v167 = 0u;
          v168 = 0u;
          sub_1000089F8(v91, v139, &unk_1011838E0, &unk_100EC1670);
          v152 = v63;
          v92 = UIViewController.playActivityInformation.getter();
          v150 = v93;
          v136 = v95;
          v137 = v94;
          sub_1000089F8(&v167, &v165, &unk_101183910, &unk_100EBDD00);
          if (v166)
          {
            sub_100059A8C(&v165, &v178);
          }

          else
          {
            v164 = v72;
            sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
            v96 = v72;
            sub_10010FC20(&unk_101183920, &unk_100EC0330);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v161, &v178);
              v85 = v148;
            }

            else
            {
              v163 = 0;
              v161 = 0u;
              v162 = 0u;
              *&v178 = v96;
              v97 = v96;
              v98 = String.init<A>(reflecting:)();
              *(&v179 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v180 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v178 = v98;
              *(&v178 + 1) = v99;
              v85 = v148;
              if (*(&v162 + 1))
              {
                sub_1000095E8(&v161, &unk_101183910, &unk_100EBDD00);
              }
            }

            if (v166)
            {
              sub_1000095E8(&v165, &unk_101183910, &unk_100EBDD00);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v152, v139, v92, v150, v137, v136, &v178, v89);
          sub_1000095E8(&v167, &unk_101183910, &unk_100EBDD00);
          sub_1000095E8(v129, &unk_1011838E0, &unk_100EC1670);
          if (v90(v85, 1, v78) != 1)
          {
            sub_1000095E8(v85, &unk_10118AB20, &unk_100EBF390);
          }
        }

        else
        {
          sub_100518F70(v85, v89, type metadata accessor for Actions.PlaybackContext);
        }

        v100 = &v89[*(v78 + 28)];
        sub_1000089F8(v100, &v178, &unk_101183910, &unk_100EBDD00);
        if (*(&v179 + 1))
        {
          sub_100059A8C(&v178, &v167);
        }

        else
        {
          *&v167 = v72;
          v101 = v72;
          v102 = String.init<A>(reflecting:)();
          *(&v168 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v169 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v167 = v102;
          *(&v167 + 1) = v103;
          if (*(&v179 + 1))
          {
            sub_1000095E8(&v178, &unk_101183910, &unk_100EBDD00);
          }
        }

        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_100EBDC20;
        *(v104 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v104 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v104 + 32) = 0x4D747865746E6F43;
        *(v104 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v167, v104 + 72);
        v105 = static Player.CommandIssuer<>.combining(_:)(v104);
        v107 = v106;

        sub_10000959C(&v167);
        *(&v168 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v169 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v167 = v105;
        *(&v167 + 1) = v107;
        sub_10006B010(&v167, v100, &unk_101183910, &unk_100EBDD00);
        sub_100008FE4(v174, &v167);
        sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
        v152 = String.init<A>(describing:)();
        v150 = v108;
        v148 = swift_allocObject();
        v126 = v72;
        swift_unknownObjectWeakInit();
        sub_100008FE4(v174, &v165);
        sub_10012B7A8(&v171, &v167);
        v109 = v140;
        sub_1000089F8(v157, v140, &unk_1011838D0, &unk_100EC0320);
        v110 = v143;
        sub_1000089F8(v156, v143, &unk_1011845D0, &unk_100EBF380);
        v111 = (*(v144 + 80) + 160) & ~*(v144 + 80);
        v112 = (v145 + v111 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
        v114 = (*(v141 + 80) + v113 + 8) & ~*(v141 + 80);
        v145 = (v114 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
        v115 = (v114 + v142 + 31) & 0xFFFFFFFFFFFFFFF8;
        v116 = swift_allocObject();
        sub_100059A8C(&v165, v116 + 16);
        *(v116 + 56) = v128;
        sub_10012B828(&v167, v116 + 64);
        sub_10003D17C(v109, v116 + v111, &unk_1011838D0, &unk_100EC0320);
        *(v116 + v112) = v148;
        *(v116 + v113) = v151;
        sub_10003D17C(v110, v116 + v114, &unk_1011845D0, &unk_100EBF380);
        v117 = v116 + v145;
        v118 = v138;
        *v117 = v149;
        *(v117 + 8) = v118;
        *(v117 + 16) = 2;
        v119 = (v116 + v115);
        *v119 = variable initialization expression of Library.Context.playlistVariants;
        v119[1] = 0;
        swift_unknownObjectRetain();

        v120 = v146;
        UUID.init()();
        v121 = UUID.uuidString.getter();
        v123 = v122;
        (*(v147 + 8))(v120, v131);
        v187._countAndFlagsBits = v152;
        v187._object = v150;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v178, v187, v121, v123, sub_10021953C, v116);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v171);
        sub_10000959C(v174);

        v124 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v171 = v178;
        sub_100015BB0(&v171);
        v167 = v179;
        sub_100015BB0(&v167);

        sub_1000095E8(v157, &unk_1011838D0, &unk_100EC0320);
        sub_1000095E8(&v175, &unk_1011845E0, &unk_100EBF3A0);
        sub_1000095E8(v156, &unk_1011845D0, &unk_100EBF380);
        sub_1000095E8(v155, &unk_10118AB20, &unk_100EBF390);
        (*(v153 + 8))(v158, v154);
        (*(v130 + 8))(v159, v160);
        return v124;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100529EE4@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_100518F70(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.librarySongsList.unsafeMutableAddressor();
  sub_100532A34(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_100532A34(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

char *sub_10052A2F4(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v3 = &v35 - v2;
  v38 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v39 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v6 = &v35 - v5;
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v41 = *(v7 - 8);
  __chkstk_darwin();
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v37 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v35 - v10;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v13 = &v35 - v12;
  v14 = type metadata accessor for Song();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v35 = v11;
    v36 = v3;
    v20 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(v42, v13);

    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {

      sub_1000095E8(v13, &unk_101183960, &unk_100EBCF90);
      return 0;
    }

    (*(v15 + 32))(v17, v13, v14);
    v21 = *(*&v19[v20] + 48);
    swift_beginAccess();
    v22 = *(v21 + 48);
    v45[1] = *(v21 + 32);
    v45[2] = v22;
    v45[3] = *(v21 + 64);
    v46 = *(v21 + 80);
    v45[0] = *(v21 + 16);
    sub_10021817C(v45, v43);
    sub_1007B8D40(v6);
    sub_1003BECBC(v45);
    v23 = v41;
    if ((*(v41 + 48))(v6, 1, v7) == 1)
    {
      sub_1000095E8(v6, &unk_10118CDB0, &unk_100EC0360);
      (*(v15 + 8))(v17, v14);

      return 0;
    }

    v24 = v40;
    (*(v23 + 32))(v40, v6, v7);
    v25 = v39;
    (*(v23 + 16))(v39, v24, v7);
    swift_storeEnumTagMultiPayload();
    memset(v43, 0, 40);
    v44[0] = v19;
    v26 = v19;
    v27 = String.init<A>(reflecting:)();
    v44[3] = &type metadata for Player.CommandIssuerIdentity;
    v44[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v44[0] = v27;
    v44[1] = v28;
    v29 = v26;
    v30 = v37;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v25, v43, 3, 0, 0, 1, 0, 1, v37, v19, v44);
    (*(v23 + 8))(v40, v7);
    v31 = v35;
    sub_100518F70(v30, v35, type metadata accessor for PlaybackIntentDescriptor);
    v32 = type metadata accessor for IndexPath();
    v33 = v36;
    (*(*(v32 - 8) + 56))(v36, 1, 1, v32);
    sub_100376EBC(v33, v43);
    sub_1000095E8(v33, &unk_10118BCE0, &qword_100EC6450);
    v34 = sub_1007F6318(v17, v31, v43);

    sub_10012BA6C(v43);
    sub_100532F98(v31, type metadata accessor for PlaybackIntentDescriptor);
    (*(v15 + 8))(v17, v14);
    return v34;
  }

  return result;
}

char *sub_10052A934(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = v18 - v3;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = type metadata accessor for Song();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController;

    sub_10037BC74(a1, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1000095E8(v6, &unk_101183960, &unk_100EBCF90);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = *(*&v12[v13] + 48);
      swift_beginAccess();
      v15 = *(v14 + 16);
      v16 = type metadata accessor for IndexPath();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);

      sub_100376EBC(v4, v18);
      sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
      v17 = sub_10051A010(v10, v15, v18);

      sub_10012BA6C(v18);
      (*(v8 + 8))(v10, v7);
      return v17;
    }
  }

  return result;
}

uint64_t sub_10052AF20(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v12 != a3)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_14:
        sub_1005265E0(v9);
        goto LABEL_15;
      }

      strcpy(v18, "Unknown kind=");
      v18[7] = -4864;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_10052635C(v9);
LABEL_15:
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_10052B280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10010FC20(&unk_101193D60, &qword_100ED16E8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v24 - v7;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v24 - v11;
  __chkstk_darwin();
  v14 = &v24 - v13;
  sub_10037BC74(a2, &v24 - v13);
  sub_100526868(v8);
  v15 = sub_1007FBE84(v8, a2, v14);
  (*(v6 + 8))(v8, v5);
  v16 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v3 + v16, v12, &unk_101183960, &unk_100EBCF90);
  v17 = type metadata accessor for Song();
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  LOBYTE(v16) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v12, &unk_101183960, &unk_100EBCF90);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16 & 1;
  *(v19 + 24) = v18;
  v20 = v15;

  UICollectionViewCell.configurationUpdateHandler.setter();

  sub_1000089F8(v14, v10, &unk_101183960, &unk_100EBCF90);
  v21 = *(v17 - 8);
  if ((*(v21 + 48))(v10, 1, v17) == 1)
  {
    sub_1000095E8(v10, &unk_101183960, &unk_100EBCF90);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  else
  {
    *(&v25 + 1) = v17;
    v26 = &protocol witness table for Song;
    v22 = sub_10001C8B8(&v24);
    (*(v21 + 32))(v22, v10, v17);
  }

  sub_1000095E8(v14, &unk_101183960, &unk_100EBCF90);
  sub_1000095E8(&v24, &qword_1011A3DD0, &unk_100EC03F0);
  return v20;
}

void sub_10052B654(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v21 - v7;
  v9 = [a1 contentView];
  if (a3)
  {
    v10 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
  }

  else
  {
    v10 = 0;
  }

  [v9 setBackgroundColor:v10];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong traitCollection];

    v14 = [v13 userInterfaceIdiom];
    if (v14 == 6)
    {
      v15 = [a1 contentView];
      [v15 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];

      v16 = [a1 contentView];
      if (a3)
      {
        v17 = UIView.Corner.large.unsafeMutableAddressor();
        v18 = type metadata accessor for UIView.Corner();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v8, v17, v18);
        (*(v19 + 56))(v8, 0, 1, v18);
      }

      else
      {
        v20 = type metadata accessor for UIView.Corner();
        (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      }

      UIView.corner.setter();
    }
  }
}

BOOL sub_10052BA00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

uint64_t sub_10052BAF4(void *a1, char *a2)
{
  v3 = v2;
  v106 = a2;
  v107 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v94 = &v83 - v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v90 = &v83 - v5;
  v85 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v87 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v93 = &v83 - v7;
  v97 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v95 = *(v97 - 8);
  __chkstk_darwin();
  v86 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v98 = &v83 - v9;
  v96 = type metadata accessor for PlaybackIntentDescriptor(0);
  v99 = *(v96 - 8);
  __chkstk_darwin();
  v88 = v10;
  v89 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v83 - v11;
  v13 = type metadata accessor for GenericMusicItem();
  v102 = *(v13 - 8);
  v103 = v13;
  __chkstk_darwin();
  v100 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v109 = *(v105 - 8);
  __chkstk_darwin();
  v101 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v83 - v16;
  v17 = type metadata accessor for Song();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v108 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v92 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v83 - v21;
  __chkstk_darwin();
  v24 = &v83 - v23;
  v25 = __chkstk_darwin();
  v27 = &v83 - v26;
  v110 = v18;
  v111 = v17;
  v91 = *(v18 + 56);
  v91(&v83 - v26, 1, 1, v17, v25);
  v28 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(&v3[v28], v24, &unk_101183960, &unk_100EBCF90);
  swift_beginAccess();
  sub_1002190E0(v27, &v3[v28], &unk_101183960, &unk_100EBCF90);
  swift_endAccess();
  sub_10052F5D8(v24);
  v29 = v24;
  v30 = v106;
  sub_1000095E8(v29, &unk_101183960, &unk_100EBCF90);
  sub_1000095E8(v27, &unk_101183960, &unk_100EBCF90);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v107 deselectItemAtIndexPath:isa animated:1];

  v32 = [v3 navigationItem];
  v33 = [v32 searchController];

  if (v33)
  {
    v34 = [v33 searchBar];

    [v34 resignFirstResponder];
  }

  v35 = *&v3[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  sub_10037BC74(v30, v22);
  v37 = v110;
  v36 = v111;
  if ((*(v110 + 48))(v22, 1, v111) == 1)
  {
    v38 = &unk_101183960;
    v39 = &unk_100EBCF90;
    v40 = v22;
    return sub_1000095E8(v40, v38, v39);
  }

  v106 = v12;
  v107 = v3;
  v42 = v108;
  (*(v37 + 32))(v108, v22, v36);
  v43 = v100;
  v84 = *(v37 + 16);
  v84(v100, v42, v36);
  v45 = v102;
  v44 = v103;
  (*(v102 + 104))(v43, enum case for GenericMusicItem.song(_:), v103);
  v46 = v104;
  sub_100538C48(v43, v104);
  (*(v45 + 8))(v43, v44);
  v47 = v109;
  v48 = v101;
  v49 = v105;
  (*(v109 + 104))(v101, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v105);
  LOBYTE(v44) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v52 = *(v47 + 8);
  v50 = v47 + 8;
  v51 = v52;
  v52(v48, v49);
  if (v44)
  {
    v103 = v51;
    v109 = v50;
    v53 = v92;
    v54 = v108;
    v55 = v111;
    v84(v92, v108, v111);
    (v91)(v53, 0, 1, v55);
    v56 = *(v35 + 48);
    swift_beginAccess();
    v57 = *(v56 + 48);
    v115[1] = *(v56 + 32);
    v115[2] = v57;
    v115[3] = *(v56 + 64);
    v116 = *(v56 + 80);
    v115[0] = *(v56 + 16);
    sub_10021817C(v115, v113);
    v58 = v93;
    sub_1007B8774(v53, v93);
    sub_1003BECBC(v115);
    v59 = v95;
    v60 = v97;
    if ((*(v95 + 48))(v58, 1, v97) == 1)
    {
      sub_1000095E8(v58, &unk_10118CDB0, &unk_100EC0360);
      v61 = 1;
      v62 = v104;
      v63 = v106;
      v64 = v98;
      v65 = v99;
    }

    else
    {
      v69 = v86;
      (*(v59 + 32))(v86, v58, v60);
      v70 = v87;
      (*(v59 + 16))(v87, v69, v60);
      swift_storeEnumTagMultiPayload();
      v114 = 0;
      memset(v113, 0, sizeof(v113));
      v71 = v107;
      v112[0] = v107;
      v72 = v107;
      v73 = String.init<A>(reflecting:)();
      v112[3] = &type metadata for Player.CommandIssuerIdentity;
      v112[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v112[0] = v73;
      v112[1] = v74;
      v75 = v72;
      v64 = v98;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v70, v113, 3, 0, 0, 1, 0, 1, v98, v71, v112);
      (*(v59 + 8))(v69, v60);
      v61 = 0;
      v62 = v104;
      v63 = v106;
      v65 = v99;
    }

    v76 = v96;
    (*(v65 + 56))(v64, v61, 1, v96);
    sub_1000095E8(v53, &unk_101183960, &unk_100EBCF90);
    if ((*(v65 + 48))(v64, 1, v76) == 1)
    {
      v103(v62, v105);
      (*(v110 + 8))(v54, v111);
      v38 = &qword_1011848A0;
      v39 = &unk_100EC64F0;
      v40 = v64;
      return sub_1000095E8(v40, v38, v39);
    }

    sub_100518F70(v64, v63, type metadata accessor for PlaybackIntentDescriptor);
    v77 = type metadata accessor for TaskPriority();
    v78 = v90;
    (*(*(v77 - 8) + 56))(v90, 1, 1, v77);
    v79 = v89;
    sub_100532A34(v63, v89, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v80 = static MainActor.shared.getter();
    v81 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = v80;
    *(v82 + 24) = &protocol witness table for MainActor;
    sub_100518F70(v79, v82 + v81, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v78, &unk_100ECA700, v82);

    sub_100532F98(v63, type metadata accessor for PlaybackIntentDescriptor);
    v103(v62, v105);
    return (*(v110 + 8))(v54, v111);
  }

  else
  {
    v66 = type metadata accessor for IndexPath();
    v67 = v94;
    (*(*(v66 - 8) + 56))(v94, 1, 1, v66);
    sub_100376EBC(v67, v115);
    sub_1000095E8(v67, &unk_10118BCE0, &qword_100EC6450);
    v68 = v108;
    sub_10085FC04(v46, v108, v115);
    sub_10012BA6C(v115);
    v51(v46, v49);
    return (*(v110 + 8))(v68, v111);
  }
}

unint64_t sub_10052C8C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v125 = a4;
  v123 = a3;
  v4 = type metadata accessor for UUID();
  v133 = *(v4 - 8);
  v134 = v4;
  __chkstk_darwin();
  v132 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v130 = v6;
  v131 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v117 - v7;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v124 = &v117 - v8;
  v127 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v139 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v9;
  __chkstk_darwin();
  v142 = &v117 - v10;
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v16 = &v117 - v15;
  v17 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v119 = (&v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v121 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v126 = &v117 - v23;
  __chkstk_darwin();
  v135 = &v117 - v24;
  __chkstk_darwin();
  v138 = &v117 - v25;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v136 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v117 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v29 = Strong;
  v137 = v12;
  v122 = v11;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  v31 = type metadata accessor for Song();
  *(v30 + 56) = v31;
  *(v30 + 64) = &protocol witness table for Song;
  v117 = v30;
  v32 = sub_10001C8B8((v30 + 32));
  (*(*(v31 - 8) + 16))(v32, v123, v31);
  v33 = [v29 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v118 = v157;
  v34 = *(*&v29[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] + 48);
  swift_beginAccess();
  v35 = *(v34 + 48);
  v167[1] = *(v34 + 32);
  v167[2] = v35;
  v167[3] = *(v34 + 64);
  v168 = *(v34 + 80);
  v167[0] = *(v34 + 16);
  sub_10021817C(v167, &v157);
  sub_1007B8D40(v16);
  sub_1003BECBC(v167);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v36 = v29;
    sub_1000095E8(v16, &unk_10118CDB0, &unk_100EC0360);
    v37 = 1;
    v38 = v122;
    v39 = v138;
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    (*(v18 + 16))(v14, v20, v17);
    v38 = v122;
    swift_storeEnumTagMultiPayload();
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    *&v153 = v29;
    v41 = v29;
    v42 = String.init<A>(reflecting:)();
    v154 = &type metadata for Player.CommandIssuerIdentity;
    v155 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v153 = v42;
    *(&v153 + 1) = v43;
    v44 = v41;
    v36 = v29;
    v45 = v119;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v14, &v157, 3, 0, 0, 1, 0, 1, v119, v29, &v153);
    (*(v18 + 8))(v20, v17);
    v39 = v138;
    sub_100532A34(v45, v138, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100532F98(v45, type metadata accessor for PlaybackIntentDescriptor);
    v37 = 0;
  }

  v46 = v137[7];
  v137 += 7;
  v119 = v46;
  (v46)(v39, v37, 1, v38);
  v159 = 0;
  v157 = 0u;
  v158 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v47 = qword_101218AD8;
  v48 = v135;
  sub_1000089F8(v39, v135, &unk_1011838E0, &unk_100EC1670);
  v123 = v47;
  v49 = v36;
  v50 = UIViewController.playActivityInformation.getter();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_1000089F8(&v157, &v149, &unk_101183910, &unk_100EBDD00);
  if (*(&v150 + 1))
  {
    sub_100059A8C(&v149, &v153);
  }

  else
  {
    *&v160 = v36;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v57 = v36;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v163, &v153);
    }

    else
    {
      v165 = 0;
      v163 = 0u;
      v164 = 0u;
      *&v153 = v57;
      v58 = v57;
      v59 = String.init<A>(reflecting:)();
      v154 = &type metadata for Player.CommandIssuerIdentity;
      v155 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v153 = v59;
      *(&v153 + 1) = v60;
      if (*(&v164 + 1))
      {
        sub_1000095E8(&v163, &unk_101183910, &unk_100EBDD00);
      }
    }

    v48 = v135;
    if (*(&v150 + 1))
    {
      sub_1000095E8(&v149, &unk_101183910, &unk_100EBDD00);
    }
  }

  v61 = v141;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v123, v48, v50, v52, v54, v56, &v153, v141);
  sub_1000095E8(&v157, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v138, &unk_1011838E0, &unk_100EC1670);
  v62 = type metadata accessor for Actions.PlaybackContext(0);
  v63 = *(v62 - 8);
  (*(v63 + 56))(v61, 0, 1, v62);
  v64 = type metadata accessor for PlaylistContext(0);
  (*(*(v64 - 8) + 56))(v142, 1, 1, v64);
  v65 = type metadata accessor for IndexPath();
  v66 = *(v65 - 8);
  v67 = v124;
  (*(v66 + 16))(v124, v125, v65);
  (*(v66 + 56))(v67, 0, 1, v65);
  sub_100376EBC(v67, &v157);
  sub_1000095E8(v67, &unk_10118BCE0, &qword_100EC6450);
  v68 = v140;
  sub_100529EE4(v140);
  v69 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  sub_100008FE4(v117 + 32, v156);

  sub_1000089F8(&v157, &v149, &unk_1011845E0, &unk_100EBF3A0);
  if (v152 == 1)
  {
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v166 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v36, &v163, &v153);
    v70 = v136;
    if (v152 != 1)
    {
      sub_1000095E8(&v149, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v149, &v153);
    v70 = v136;
  }

  swift_getObjectType();
  v71 = swift_conformsToProtocol2();
  if (v71)
  {
    v125 = v71;
    v72 = v36;
    v135 = v36;
  }

  else
  {
    v135 = 0;
    v125 = 0;
  }

  v138 = swift_allocBox();
  v74 = v73;
  sub_1000089F8(v141, v70, &unk_10118AB20, &unk_100EBF390);
  v75 = *(v63 + 48);
  v76 = v75(v70, 1, v62);
  v120 = v36;
  if (v76 == 1)
  {
    v77 = v126;
    (v119)(v126, 1, 1, v122);
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v78 = v77;
    v79 = v121;
    sub_1000089F8(v78, v121, &unk_1011838E0, &unk_100EC1670);
    v137 = v123;
    v80 = UIViewController.playActivityInformation.getter();
    v123 = v82;
    v124 = v81;
    v84 = v83;
    sub_1000089F8(&v149, &v147, &unk_101183910, &unk_100EBDD00);
    if (v148)
    {
      sub_100059A8C(&v147, &v160);
      v85 = v136;
    }

    else
    {
      v146 = v49;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v86 = v49;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v143, &v160);
        v85 = v136;
      }

      else
      {
        v145 = 0;
        v143 = 0u;
        v144 = 0u;
        *&v160 = v86;
        v87 = v86;
        v88 = String.init<A>(reflecting:)();
        *(&v161 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v162 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v160 = v88;
        *(&v160 + 1) = v89;
        v85 = v136;
        if (*(&v144 + 1))
        {
          sub_1000095E8(&v143, &unk_101183910, &unk_100EBDD00);
        }
      }

      v49 = v120;
      v79 = v121;
      if (v148)
      {
        sub_1000095E8(&v147, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v137, v79, v80, v124, v123, v84, &v160, v74);
    sub_1000095E8(&v149, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v126, &unk_1011838E0, &unk_100EC1670);
    if (v75(v85, 1, v62) != 1)
    {
      sub_1000095E8(v85, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100518F70(v70, v74, type metadata accessor for Actions.PlaybackContext);
  }

  v90 = *(v62 + 28);
  sub_1000089F8(&v74[v90], &v160, &unk_101183910, &unk_100EBDD00);
  if (*(&v161 + 1))
  {
    sub_100059A8C(&v160, &v149);
  }

  else
  {
    *&v149 = v49;
    v91 = v49;
    v92 = String.init<A>(reflecting:)();
    *(&v150 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v151 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v149 = v92;
    *(&v149 + 1) = v93;
    if (*(&v161 + 1))
    {
      sub_1000095E8(&v160, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_100EBDC20;
  *(v94 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v94 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v94 + 32) = 0x4D747865746E6F43;
  *(v94 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v149, v94 + 72);
  v95 = static Player.CommandIssuer<>.combining(_:)(v94);
  v97 = v96;

  sub_10000959C(&v149);
  *(&v150 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v151 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v149 = v95;
  *(&v149 + 1) = v97;
  sub_10006B010(&v149, &v74[v90], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v156, &v149);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v98 = String.init<A>(describing:)();
  v136 = v99;
  v137 = v98;
  v100 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v156, &v147);
  sub_10012B7A8(&v153, &v149);
  v101 = v131;
  sub_1000089F8(v140, v131, &unk_1011838D0, &unk_100EC0320);
  sub_1000089F8(v142, v139, &unk_1011845D0, &unk_100EBF380);
  v102 = (*(v129 + 80) + 160) & ~*(v129 + 80);
  v103 = (v130 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
  v105 = (*(v127 + 80) + v104 + 8) & ~*(v127 + 80);
  v130 = (v105 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = (v105 + v128 + 31) & 0xFFFFFFFFFFFFFFF8;
  v107 = swift_allocObject();
  sub_100059A8C(&v147, v107 + 16);
  *(v107 + 56) = v118;
  sub_10012B828(&v149, v107 + 64);
  sub_10003D17C(v101, v107 + v102, &unk_1011838D0, &unk_100EC0320);
  *(v107 + v103) = v100;
  v108 = v139;
  *(v107 + v104) = v138;
  sub_10003D17C(v108, v107 + v105, &unk_1011845D0, &unk_100EBF380);
  v109 = v107 + v130;
  v110 = v125;
  *v109 = v135;
  *(v109 + 8) = v110;
  *(v109 + 16) = 2;
  v111 = (v107 + v106);
  *v111 = variable initialization expression of Library.Context.playlistVariants;
  v111[1] = 0;
  swift_unknownObjectRetain();

  v112 = v132;
  UUID.init()();
  v113 = UUID.uuidString.getter();
  v115 = v114;
  (*(v133 + 8))(v112, v134);
  v169._object = v136;
  v169._countAndFlagsBits = v137;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v160, v169, v113, v115, sub_100217D28, v107);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v153);
  sub_10000959C(v156);

  v40 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v153 = v160;
  sub_100015BB0(&v153);
  v149 = v161;
  sub_100015BB0(&v149);

  sub_1000095E8(v140, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v157, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v142, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v141, &unk_10118AB20, &unk_100EBF390);
  return v40;
}

double sub_10052DD9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = &protocol witness table for MainActor;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], v7, v4);
  sub_1001F4CB8(0, 0, v9, &unk_100ED1788, v13);

  return result;
}

uint64_t sub_10052DF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v9;
  v5[12] = v8;

  return _swift_task_switch(sub_10052E0E8, v9, v8);
}

uint64_t sub_10052E0E8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for Song();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.song(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1005136A8;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

id sub_10052E2E0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_10052E440()
{
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &qword_10118D1B8, &qword_100EC8ED8);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &qword_10118D1C8, &unk_100EC8EE8);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DB404(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

id sub_10052E7D0()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100533648, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_10052E8B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(*(Strong + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController) + 48);
    swift_beginAccess();
    v5 = *(v4 + 48);
    v12[1] = *(v4 + 32);
    v12[2] = v5;
    v12[3] = *(v4 + 64);
    v13 = *(v4 + 80);
    v12[0] = *(v4 + 16);
    v6 = swift_allocObject();
    swift_weakInit();

    sub_10021817C(v12, v10);
    v7.super.super.isa = sub_100211B68(sub_100534E88, v6).super.super.isa;

    sub_1003BECBC(v12);

    isa = v7.super.super.isa;
    v10[0] = _swiftEmptyArrayStorage;
    if (v7.super.super.isa)
    {
      v8 = v7.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v10[0];
    }

    sub_1000095E8(&isa, &qword_10118CE10, &qword_100ED1950);
  }

  return v2;
}

objc_class *sub_10052EA5C()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(0);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10053362C;
    *(v10 + 24) = v4;
    *(v10 + 32) = 0;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(0);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

uint64_t sub_10052EC60@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v4 = &v28[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v6 = &v28[-1] - v5;
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v12 = &v28[-1] - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v27 = a2;
    v15 = type metadata accessor for Song();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = *(*&v14[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController] + 48);
    swift_beginAccess();
    v17 = *(v16 + 48);
    v31[1] = *(v16 + 32);
    v31[2] = v17;
    v31[3] = *(v16 + 64);
    v32 = *(v16 + 80);
    v31[0] = *(v16 + 16);
    sub_10021817C(v31, v29);
    sub_1007B8774(v12, v6);
    sub_1003BECBC(v31);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000095E8(v6, &unk_10118CDB0, &unk_100EC0360);
      v18 = 1;
      v19 = v27;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      (*(v8 + 16))(v4, v10, v7);
      swift_storeEnumTagMultiPayload();
      v30 = 0;
      memset(v29, 0, sizeof(v29));
      v28[0] = v14;
      v22 = v14;
      v23 = String.init<A>(reflecting:)();
      v28[3] = &type metadata for Player.CommandIssuerIdentity;
      v28[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v28[0] = v23;
      v28[1] = v24;
      v25 = v22;
      v19 = v27;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v29, 3, 0, 0, 1, 0, 1, v27, v14, v28);
      (*(v8 + 8))(v10, v7);
      v18 = 0;
    }

    v26 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v26 - 8) + 56))(v19, v18, 1, v26);

    return sub_1000095E8(v12, &unk_101183960, &unk_100EBCF90);
  }

  else
  {
    v20 = type metadata accessor for PlaybackIntentDescriptor(0);
    return (*(*(v20 - 8) + 56))(a2, 1, 1, v20);
  }
}

objc_class *sub_10052F0EC()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);

    v5 = SymbolButton.Intent.title.getter(1);
    v7 = v6;
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v10 = swift_allocObject();
    *(v10 + 16) = sub_100534EE0;
    *(v10 + 24) = v4;
    *(v10 + 32) = 1;

    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v13 = SymbolButton.Intent.accessibilityIdentifier.getter(1);
    v17 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v5, v7, v9, 0, v12, 0, v13, v14, v15, v16);

    v18 = *(v11 + v1);
    *(v11 + v1) = v17;
    v3 = v17;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

id sub_10052F2F0()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_10052EA5C();
    *(v4 + 40) = sub_10052F0EC();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem);

    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    isa = UIBarButtonItem.init(representativeOf:configuredAfter:menuTitle:)(v4, v7, v8).super.super.isa;
    v10 = objc_allocWithZone(UIBarButtonItemGroup);
    v11 = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 initWithBarButtonItems:v11 representativeItem:isa];

    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void *sub_10052F430()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_10052F2F0();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_10052F4A8()
{
  v1 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003A67C4();
    *(v4 + 40) = sub_10052E7D0();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v4);
    v7 = objc_allocWithZone(UIBarButtonItemGroup);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [v7 initWithBarButtonItems:isa representativeItem:v6];

    v10 = *(v5 + v1);
    *(v5 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

void sub_10052F5D8(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v16[-v6];
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v9 = &v16[-v8];
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem) = 0;
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v9, &unk_101183960, &unk_100EBCF90);
  type metadata accessor for Song();
  sub_100532DC8(&qword_101193D80, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v11 = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v9, &unk_101183960, &unk_100EBCF90);
  if ((v11 & 1) != 0 && (v12 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath, swift_beginAccess(), sub_1000089F8(v1 + v12, v7, &unk_10118BCE0, &qword_100EC6450), (*(v3 + 48))(v7, 1, v2) != 1))
  {
    (*(v3 + 32))(v5, v7, v2);
    v13 = sub_1005236A0();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v15 = [v13 cellForItemAtIndexPath:isa];

    (*(v3 + 8))(v5, v2);
    sub_10050420C();
  }

  else
  {
    sub_100525704();
  }
}

uint64_t sub_10052F8CC(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v17[-v9];
  v11 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_10118BCE0, &qword_100EC6450);
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v11, &unk_10118BCE0, &qword_100EC6450);
  swift_endAccess();
  sub_1000089F8(v10, v8, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v4 + 48))(v8, 1, v3) == 1)
  {
    sub_1000095E8(a1, &unk_10118BCE0, &qword_100EC6450);
    sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
    v10 = v8;
  }

  else
  {
    (*(v4 + 32))(v6, v8, v3);
    v12 = sub_1005236A0();
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100EBC6B0;
    (*(v4 + 16))(v14 + v13, v6, v3);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 reconfigureItemsAtIndexPaths:isa];

    sub_1000095E8(a1, &unk_10118BCE0, &qword_100EC6450);
    (*(v4 + 8))(v6, v3);
  }

  return sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
}

uint64_t sub_10052FBDC(uint64_t a1)
{
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v18[-v5];
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v10, a1, v7, v13);
  if ((*(v8 + 88))(v10, v7) != enum case for Track.song(_:))
  {
    return (*(v8 + 8))(v10, v7);
  }

  (*(v8 + 96))(v10, v7);
  (*(v12 + 32))(v15, v10, v11);
  (*(v12 + 16))(v6, v15, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  v16 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  swift_beginAccess();
  sub_1000089F8(v1 + v16, v4, &unk_101183960, &unk_100EBCF90);
  swift_beginAccess();
  sub_1002190E0(v6, v1 + v16, &unk_101183960, &unk_100EBCF90);
  swift_endAccess();
  sub_10052F5D8(v4);
  sub_1000095E8(v4, &unk_101183960, &unk_100EBCF90);
  sub_1000095E8(v6, &unk_101183960, &unk_100EBCF90);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_10052FF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[5] = swift_task_alloc();
  v7 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v6[6] = v7;
  v6[7] = *(v7 + 64);
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100530034, 0, 0);
}

uint64_t sub_100530034()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  sub_100505BE0(v0[3], v2);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_1000089F8(v2, v1, &unk_10118BCE0, &qword_100EC6450);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v5;
  sub_10003D17C(v1, v9 + v8, &unk_10118BCE0, &qword_100EC6450);
  sub_1001F4CB8(0, 0, v4, &unk_100ED1768, v9);

  sub_1000095E8(v2, &unk_10118BCE0, &qword_100EC6450);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1005301E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  v5[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005302B0, v7, v6);
}

uint64_t sub_1005302B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = v0[10];
    sub_1000089F8(v0[9], v3, &unk_10118BCE0, &qword_100EC6450);
    sub_10052F8CC(v3);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_10050420C();
  }

  v6 = v0[1];

  return v6();
}

uint64_t type metadata accessor for LibrarySongsViewController(uint64_t a1)
{
  result = qword_101193D48;
  if (!qword_101193D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100530618(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101193D58, &unk_101193D60, &qword_100ED16E8);
    if (v2 <= 0x3F)
    {
      sub_100039774(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
      if (v3 <= 0x3F)
      {
        sub_100039774(319, &unk_101193D70, &type metadata accessor for Song);
        if (v4 <= 0x3F)
        {
          sub_100039774(319, &unk_101192480, &type metadata accessor for IndexPath);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_10053085C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBDC20;
  v3 = sub_10031EA10(xmmword_100EBDC20);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v31[0] = v4;
  *(&v31[0] + 1) = v6;
  v7._countAndFlagsBits = 0x74726F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  v9 = *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController);
  v10 = *(v9 + 48);
  swift_beginAccess();
  v11 = *(v10 + 48);
  v31[1] = *(v10 + 32);
  v31[2] = v11;
  v31[3] = *(v10 + 64);
  v32 = *(v10 + 80);
  v31[0] = *(v10 + 16);
  v12 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v31, v29);
  v13.super.super.isa = sub_100211B68(sub_100530EAC, v12).super.super.isa;

  sub_1003BECBC(v31);

  if (v13.super.super.isa)
  {
    v14 = [(objc_class *)v13.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v13.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v8 = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v13;
  v16 = sub_10031EA10(v15);
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v29[0] = v17;
  *(&v29[0] + 1) = v19;
  v20._countAndFlagsBits = 0x7265746C69462ELL;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  v22 = *(v9 + 48);
  swift_beginAccess();
  v23 = *(v22 + 48);
  v29[1] = *(v22 + 32);
  v29[2] = v23;
  v29[3] = *(v22 + 64);
  v30 = *(v22 + 80);
  v29[0] = *(v22 + 16);
  v24 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v29, v28);
  v25.super.super.isa = sub_100398A98(sub_100530EB8, v24).super.super.isa;

  sub_1003BECBC(v29);

  if (v25.super.super.isa)
  {
    v26 = [(objc_class *)v25.super.super.isa children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v25.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v21 = 0;
  }

  *(v2 + 64) = v21;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = v25;
  return v2;
}

uint64_t sub_100530B9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Song() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10052FF1C(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_100530D30(uint64_t a1)
{
  v4 = *(sub_10010FC20(&unk_10118BCE0, &qword_100EC6450) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005301E0(a1, v6, v7, v8, v1 + v5);
}

double sub_100530E40()
{
  v0 = [objc_opt_self() currentTraitCollection];
  [v0 displayScale];

  return 48.0;
}

uint64_t sub_100530EC0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v3 = sub_10049CB78();

  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v19[0] = *(v4 + 16);
  v19[1] = v5;
  v6 = *(v4 + 48);
  v7 = *(v4 + 64);
  v20 = *(v4 + 80);
  v19[3] = v7;
  v19[2] = v6;
  v13 = *&v19[0];
  v14 = v3 & 1;
  v8 = *(v4 + 25);
  v9 = *(v4 + 41);
  v10 = *(v4 + 57);
  v18 = *(v4 + 73);
  v17 = v10;
  v16 = v9;
  v15 = v8;
  sub_10021817C(v19, v12);
  return sub_100379CC8(&v13);
}

uint64_t sub_100530FD4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music26LibrarySongsViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v33[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 32);
  v34 = *(v4 + 48);
  v33[0] = *(v4 + 16);
  v33[1] = v5;
  v6 = *(v4 + 64);
  v36 = *(v4 + 80);
  v35 = v6;
  v7 = BYTE9(v34);
  v8 = BYTE8(v34);
  v21 = *(v4 + 24);
  v22 = *(v4 + 40);
  v9 = BYTE9(v34);
  *&v20[15] = *(v4 + 73);
  *v20 = *(v4 + 58);
  sub_10021817C(v33, &v27);

  v27 = v3;
  v28 = v21;
  v29 = v22;
  v30 = v8;
  v31 = v9;
  *v32 = *v20;
  if (v7)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *&v32[15] = *&v20[15];
  sub_100376548(v10 | v8);
  if ((v11 & 0xFF00) == 0x200)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if ((v11 & 0xFF00) == 0x200)
  {
    v13 = 1;
  }

  else
  {
    v13 = (v11 >> 8) & 1;
  }

  if (sub_1006B8B0C(v12, v8) & 1) == 0 || ((v7 ^ v13))
  {
    v14 = objc_opt_self();
    v15 = [v14 standardUserDefaults];
    *&v25 = &_s11ContentSortVN;
    *(&v25 + 1) = sub_100110448();
    v26[0] = sub_10011049C();
    LOBYTE(v23) = v12;
    BYTE1(v23) = v13;
    NSUserDefaults.encodeValue(_:forKey:)(&v23);

    sub_10000959C(&v23);
    v16 = [v14 standardUserDefaults];
    if (v13)
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = sub_10045E2D4(v17 & 0xFF00u | v12);
    NSUserDefaults.setSortType(_:for:keyDomain:)(v18, 192, 0, 0);
  }

  v23 = v3;
  v24 = v21;
  v25 = v22;
  LOBYTE(v26[0]) = v12;
  BYTE1(v26[0]) = v13;
  *(v26 + 2) = *v20;
  *(&v26[2] + 1) = *&v20[15];
  return sub_100379CC8(&v23);
}

double sub_100531228(void *a1)
{
  v2 = sub_1005236A0();
  v3 = sub_100523A98();
  [v2 setCollectionViewLayout:v3];

  sub_1005233CC();
  v4 = sub_1005235FC();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [*(v4 + 32) setHidesNavigationBarDuringPresentation:v6 == 1];

  return result;
}

uint64_t sub_1005312E4()
{
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_10118D1B8, &qword_100EC8ED8);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &qword_10118D1C8, &unk_100EC8EE8);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1005314E8(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&qword_10118D1C8, &unk_100EC8EE8);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &qword_10118D1B8, &qword_100EC8ED8);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &qword_10118D1C8, &unk_100EC8EE8);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_10118C2A0, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

id sub_100531904(uint64_t a1)
{
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v4 = &v44 - v3;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v44 - v8;
  v10 = *(type metadata accessor for IndexPath() - 8);
  __chkstk_darwin();
  v14 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  isa = v7;
  v56 = v13;
  v57 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v9;
  v15 = *(v10 + 80);
  v16 = &v44 - v11;
  v17 = v12;
  v54 = *(v10 + 16);
  v54(v14);
  v58 = v1;
  sub_10037BC74(v16, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v10 + 8))(v16, v17);
    sub_1000095E8(v4, &unk_101183960, &unk_100EBCF90);
    return 0;
  }

  v52 = v10;
  v49 = v17;
  v50 = v15;
  v45 = ~v15;
  v59 = v6;
  v60 = v5;
  v19 = *(v6 + 32);
  v20 = v61;
  v47 = v6 + 32;
  v46 = v19;
  v19(v61, v4, v5);
  v21 = sub_1007BAB4C(v20);
  v22 = sub_100248BF8();
  v51 = v21;
  v23 = v21;
  v24 = v22;
  v25 = Song.supportsContainerNavigation(itemState:)(v23);
  v53 = v24;
  if (v25 == *(v24 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron))
  {
    *(v53 + OBJC_IVAR____TtCV5Music17ContextualPreview4Data__showChevron) = v25;
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v26 = v53;
    *(&v44 - 2) = v53;
    *(&v44 - 8) = v25;
    aBlock = v26;
    sub_100532DC8(&unk_101189DB0, type metadata accessor for ContextualPreview.Data, &unk_100EC1EA8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v27 = isa;
  v28 = v16;
  v48 = v16;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v29 = swift_allocObject();
  v44 = v29;
  swift_unknownObjectWeakInit();
  v30 = v60;
  v31 = v59;
  v32 = v57;
  (*(v59 + 16))(v57, v61, v60);
  v33 = v56;
  v34 = v49;
  (v54)(v56, v28, v49);
  v35 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v36 = (v27 + v50 + v35) & v45;
  v37 = swift_allocObject();
  *(v37 + 16) = v29;
  v46(v37 + v35, v32, v30);
  v38 = v52;
  (*(v52 + 32))(v37 + v36, v33, v34);
  v39 = objc_opt_self();
  v66 = sub_100218654;
  v67 = v53;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747E6C;
  v65 = &unk_1010B0830;
  v40 = _Block_copy(&aBlock);
  swift_retain_n();

  v66 = sub_10053295C;
  v67 = v37;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_100747EBC;
  v65 = &unk_1010B0858;
  v41 = _Block_copy(&aBlock);

  v42 = isa;
  v43 = [v39 configurationWithIdentifier:isa previewProvider:v40 actionProvider:v41];

  _Block_release(v41);
  _Block_release(v40);

  (*(v59 + 8))(v61, v60);
  (*(v38 + 8))(v48, v34);

  return v43;
}

id sub_100531FD0(void *a1, void *a2)
{
  v36 = a2;
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v5 = &v31 - v4;
  v6 = type metadata accessor for Song();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v31 - v9;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = &v31 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v11, 0, 1, v12);
    (*(v13 + 32))(v16, v11, v12);
    v33 = v2;
    sub_10037BC74(v16, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      (*(v13 + 8))(v16, v12);
      sub_1000095E8(v5, &unk_101183960, &unk_100EBCF90);
    }

    else
    {
      v19 = v35;
      v32 = *(v7 + 32);
      v32(v35, v5, v6);
      v20 = sub_1007BAB4C(v19);
      v21 = Song.supportsContainerNavigation(itemState:)(v20);

      if (v21)
      {
        v22 = sub_10003169C();
        if (v22)
        {
          v23 = v22;
          v24 = v7;
          v31 = v7;
          v25 = *(v7 + 16);
          v26 = v34;
          v25(v34, v35, v6);
          v27 = (*(v24 + 80) + 24) & ~*(v24 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = v23;
          v32((v28 + v27), v26, v6);
          aBlock[4] = sub_100532800;
          aBlock[5] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10002BC98;
          aBlock[3] = &unk_1010B07B8;
          v29 = _Block_copy(aBlock);

          [v36 addAnimations:v29];
          _Block_release(v29);

          (*(v31 + 8))(v35, v6);
          return (*(v13 + 8))(v16, v12);
        }

        (*(v7 + 8))(v35, v6);
      }

      else
      {
        (*(v7 + 8))(v19, v6);
      }

      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    v18(v11, 1, 1, v12);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
  }

  return [v36 setPreferredCommitStyle:0];
}

void sub_1005324F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___listCellRegistration;
  v6 = sub_10010FC20(&unk_101193D60, &qword_100ED16E8);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_waveformPlayer;
  type metadata accessor for WaveformPlayer();
  swift_allocObject();
  *(v1 + v7) = sub_10026FF78();
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___collectionView) = 0;
  v8 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prefetchingController;
  v9 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v8) = sub_10003AAD8(0xD00000000000001CLL, 0x8000000100E4EAC0);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___searchController) = 0;
  v10 = OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___actionMetricsReportingContext;
  v11 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleHeaderDataSource) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___shuffleBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroup) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___playShuffleBarButtonGroups) = 0;
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController____lazy_storage___contextAndFilterBarButtonGroup) = 0;
  v12 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_highlightedSong;
  v13 = type metadata accessor for Song();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_hasScrolledToProminentItem) = 0;
  v14 = OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentItemIndexPath;
  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC5Music26LibrarySongsViewController_prominentIndexPathTask) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100532800()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10052DD9C(v2, v3);
}

uint64_t sub_100532864(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10052DF98(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_10053295C(uint64_t a1)
{
  v3 = *(type metadata accessor for Song() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10052C8C8(a1, v7, (v1 + v4), v8);
}

uint64_t sub_100532A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100532ABC(uint64_t a1)
{
  v3 = *(type metadata accessor for Song() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1005288B8(a1, v4, v5, v6);
}

uint64_t sub_100532B30(uint64_t a1)
{
  v3 = *(type metadata accessor for Song() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002749A8(a1, v4);
}

uint64_t sub_100532BA0()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100521C9C(v2);
}

uint64_t sub_100532C30()
{
  v1 = *(sub_10010FC20(&qword_101193E08, &qword_100ED18C8) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_100524A18(v2, v3, v4, v5);
}

double sub_100532CA4()
{
  v1 = *(sub_10010FC20(&qword_101193E08, &qword_100ED18C8) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100525334(v2, v3);
}

unint64_t sub_100532D14()
{
  result = qword_101193E10;
  if (!qword_101193E10)
  {
    sub_1001109D0(&qword_10118D1B0, &qword_100EC8ED0);
    sub_100532DC8(&unk_10118D020, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193E10);
  }

  return result;
}

uint64_t sub_100532DC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100532E68(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051D750(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100532F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100533040(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051EBE4(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

uint64_t sub_1005331D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F4D4(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_10053343C(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10052212C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533534(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100522820(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533754(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051CE6C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1005338CC(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, __n128), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v16 = *(a5(0) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10051DACC(a1, a2, a3, a4, v8 + v17, *(v8 + v18), v8 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8), a6, a7, a8);
}

uint64_t sub_1005339B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051E2A0(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

double sub_100533B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  v16 = *(a5(0) - 8);
  v17 = (*(v16 + 80) + 112) & ~*(v16 + 80);
  return sub_10051EFC0(a1, a2, a3, a4, v8 + 16, v8 + v17, *(v8 + ((*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8)), a6, a7, a8);
}

uint64_t sub_100533C2C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for MusicVideo() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F374(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_100533E04(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100521FF8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100533EFC(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicVideo() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1005226EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10053403C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534124(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100008F30;

  return sub_10051C9A0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100534254(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + v5;
  swift_unknownObjectWeakDestroy();
  v7 = *(v1 + v5 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100534390(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  v6 = v1 + v5;
  swift_unknownObjectWeakDestroy();
  v7 = *(v1 + v5 + 48);
  if (v7 != 255)
  {
    sub_10012B804(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  if (*(v6 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1005344D8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Track() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + ((v8 + 103) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_10051DD38(a1, v9, v10, v1 + v6, v11, v1 + v8, v12);
}

uint64_t sub_100534620(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectWeakDestroy();
  v6 = *(v1 + 64);
  if (v6 != 255)
  {
    v5.n128_f64[0] = sub_10012B804(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v6);
  }

  if (*(v1 + 80))
  {
  }

  if (*(v1 + 96))
  {
  }

  (*(v3 + 8))(v1 + ((v4 + 112) & ~v4), v2, v5);

  return swift_deallocObject();
}

uint64_t sub_100534784(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v6 = *(v1 + 80);
  if (v6 != 255)
  {
    v5.n128_f64[0] = sub_10012B804(*(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v6);
  }

  if (*(v1 + 96))
  {
  }

  if (*(v1 + 112))
  {
  }

  (*(v3 + 8))(v1 + ((v4 + 128) & ~v4), v2, v5);

  return swift_deallocObject();
}

uint64_t sub_1005348BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Track() - 8);
  v6 = (*(v5 + 80) + 128) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_10051F214(a1, v10, v11, v1 + 32, v1 + v6, v9, v12, v13);
}

uint64_t sub_100534A4C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534B60(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100521D68(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100534C58(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_100534D2C(uint64_t a1)
{
  v4 = *(type metadata accessor for Track() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10052245C(a1, v6, v7, v8, v1 + v5);
}

void sub_100534EE4(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100027010();

  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_100536BB4;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_100536C7C, v14);
    }

    else
    {
      a1(v13, v3[4]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100535104(void (*a1)(uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_100027010();

  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = _dispatchPreconditionTest(_:)();
  v13 = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v14 = swift_allocObject();
      v14[2] = sub_1005368A8;
      v14[3] = v11;
      v14[4] = v3;
      v14[5] = v6;

      BagProvider.getBag(completion:)(sub_100536C7C, v14);
    }

    else
    {
      a1(v13, v3[2]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100535350(void (*a1)(uint64_t, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100027010();
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  v12 = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    if (v3[3] & 1) != 0 || (v3[5])
    {
      BagProvider.shared.unsafeMutableAddressor();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = a2;
      v13[4] = v3;
      v13[5] = v6;

      BagProvider.getBag(completion:)(sub_100535CB8, v13);
    }

    else
    {
      a1(v12, v3[2], v3[4]);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100535558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin();
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100027010();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = v21;
  aBlock[4] = sub_100535CC4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B12A0;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002473C();
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v22);
}

uint64_t sub_10053580C(void *a1, uint64_t (*a2)(__n128, __n128), uint64_t a3, uint64_t a4)
{
  v7 = String._bridgeToObjectiveC()();
  v8 = [a1 dictionaryForBagKey:v7];

  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v9 + 16))
  {
    goto LABEL_12;
  }

  v10 = sub_1000160B4(v23);
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DD18(*(v9 + 56) + 32 * v10, v24);
  sub_10001621C(v23);

  sub_10010FC20(&unk_1011BE660, &unk_100ECAF60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  AnyHashable.init<A>(_:)();
  if (!MEMORY[0x6973736572706D79])
  {
    goto LABEL_12;
  }

  v12 = sub_1000160B4(v23);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10000DD18(MEMORY[0x6973736572706DA1] + 32 * v12, v24);
  sub_10001621C(v23);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  AnyHashable.init<A>(_:)();
  if (!MEMORY[0x6973736572706D79] || (v14 = sub_1000160B4(v23), (v15 & 1) == 0))
  {
LABEL_12:

    sub_10001621C(v23);
    goto LABEL_13;
  }

  sub_10000DD18(MEMORY[0x6973736572706DA1] + 32 * v14, v24);
  sub_10001621C(v23);

  if (swift_dynamicCast())
  {
    v17.n128_u64[0] = 0xD000000000000012;
    *(a4 + 16) = 0xD000000000000011;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0xD000000000000012;
    *(a4 + 40) = 0;
    v16.n128_u64[0] = 0xD000000000000011;
    return a2(v16, v17);
  }

LABEL_13:
  if (qword_10117F790 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_101218DD0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Error serializing impression keys from bag.  Returning default values.", v21, 2u);
  }

  v16.n128_u64[0] = 0x408F400000000000;
  v17.n128_u64[0] = 0.5;
  return a2(v16, v17);
}

void sub_100535BC8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_100535C20();

  byte_101218F00 = v1 & 1;
}

uint64_t sub_100535C20()
{
  sub_100009838();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return 26;
    }
  }

  else
  {
    sub_100011DF0(&v1);
    return 0;
  }

  return result;
}

uint64_t sub_100535CD4(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  v10 = *a4;
  v11 = a4[2];
  strcpy(&v28, "impressionId");
  BYTE13(v28) = 0;
  HIWORD(v28) = -5120;

  AnyHashable.init<A>(_:)();
  v12 = a4[3];
  v29 = &type metadata for Int;
  *&v28 = v12;
  sub_100016270(&v28, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006800C(v27, v30, isUniquelyReferenced_nonNull_native);
  sub_10001621C(v30);
  v14 = v11;
  v31 = v11;
  if ((a4[5] & 1) == 0)
  {
    v15 = a4[4];
    *&v28 = 0xD000000000000012;
    *(&v28 + 1) = 0x8000000100E484A0;
    AnyHashable.init<A>(_:)();
    v29 = &type metadata for Int;
    *&v28 = v15;
    sub_100016270(&v28, v27);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v27, v30, v16);
    sub_10001621C(v30);
    v31 = v14;
  }

  v17 = *(a4 + 41);
  if (v17 != 2)
  {
    strcpy(&v28, "motionActive");
    BYTE13(v28) = 0;
    HIWORD(v28) = -5120;
    AnyHashable.init<A>(_:)();
    v29 = &type metadata for Bool;
    LOBYTE(v28) = v17 & 1;
    sub_100016270(&v28, v27);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v27, v30, v18);
    sub_10001621C(v30);
    *&v28 = 0x76416E6F69746F6DLL;
    *(&v28 + 1) = 0xEF656C62616C6961;
    AnyHashable.init<A>(_:)();
    v29 = &type metadata for Bool;
    LOBYTE(v28) = v17 & 1;
    sub_100016270(&v28, v27);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v27, v30, v19);
    sub_10001621C(v30);
    v31 = v14;
  }

  if (a5)
  {
    *&v28 = 0x6973736572706D69;
    *(&v28 + 1) = 0xEF73656D69546E6FLL;
    AnyHashable.init<A>(_:)();
    sub_10010FC20(&qword_10118CE90, &qword_100EC8AB8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100EBC6B0;
    Date.timeIntervalSince1970.getter();
    *(v20 + 32) = Double.toMillisecondsInServerTime.getter(v21);
    v29 = sub_10010FC20(&qword_10118CE98, &qword_100EC8AC0);
    *&v28 = v20;
    sub_100016270(&v28, v27);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v27, v30, v22);
    sub_10001621C(v30);
    return v14;
  }

  else
  {
    swift_beginAccess();
    v24 = *(v10 + 80);
    v25 = *(v10 + 88);

    sub_1005360B4(v26, a1, a6, &v31, v24, v25);

    return v31;
  }
}

void sub_1005360B4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for CollectionViewImpressionTracker.History.Event(0, a5, a6, a5);
  if (Array.endIndex.getter())
  {
    v41 = 0.0;
    v8 = 0;
    v38 = a2;
    v9 = a1 + 40;
    v10 = 0.0;
    v11 = 1;
    v12 = 1;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((IsNativeType & 1) == 0)
      {
        _ArrayBuffer._getElementSlowPath(_:)();
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v17 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_71;
      }

      v18 = *(v9 - 8);
      v19 = *v9;
      if (!static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v19, 0))
      {
        v13 = static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v19, 1);
        v14 = v18;
        v15 = v41;
        if (v12)
        {
          v14 = v41;
        }

        if (v13)
        {
          v15 = v14;
        }

        v41 = v15;
        if (v13)
        {
          v11 = v12 & v11;
        }

        else
        {
          v11 = v11;
        }

        goto LABEL_10;
      }

      if (v12)
      {
        v12 = 0;
        v10 = v18;
      }

      else if (v11)
      {
        v12 = 0;
        v11 = 1;
      }

      else
      {
        if (v18 - v41 >= 0.0166666667)
        {
          if (v41 - v10 > 0.0166666667)
          {
            IsNativeType = sub_1005369B8(v10, v41);

            v12 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100499EEC(0, v40[2] + 1, 1, v40);
            }

            v11 = *(v12 + 16);
            v20 = *(v12 + 24);
            if (v11 >= v20 >> 1)
            {
              v12 = sub_100499EEC((v20 > 1), v11 + 1, 1, v12);
            }

            *(v12 + 16) = v11 + 1;
            *(v12 + 8 * v11 + 32) = IsNativeType;
            if (!*(IsNativeType + 16))
            {
              goto LABEL_72;
            }

            v21 = sub_100019C10(100, 0xE100000000000000);
            if ((v22 & 1) == 0)
            {
              goto LABEL_73;
            }

            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_74;
            }

            if (a2 <= -1.0)
            {
              goto LABEL_75;
            }

            if (a2 >= 1.84467441e19)
            {
              goto LABEL_76;
            }

            v40 = v12;
            if (*(*(IsNativeType + 56) + 8 * v21) > v38)
            {
              if (!*(IsNativeType + 16))
              {
                goto LABEL_83;
              }

              v23 = sub_100019C10(115, 0xE100000000000000);
              if ((v24 & 1) == 0)
              {
                goto LABEL_84;
              }

              v37 = *(*(IsNativeType + 56) + 8 * v23);

              v25 = v39;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_100499DDC(0, *(v39 + 2) + 1, 1, v39);
              }

              v27 = *(v25 + 2);
              v26 = *(v25 + 3);
              if (v27 >= v26 >> 1)
              {
                v39 = sub_100499DDC((v26 > 1), v27 + 1, 1, v25);
              }

              else
              {
                v39 = v25;
              }

              v41 = 0.0;
              v12 = 0;
              *(v39 + 2) = v27 + 1;
              *&v39[8 * v27 + 32] = v37;
              goto LABEL_40;
            }
          }

          v41 = 0.0;
          v12 = 0;
LABEL_40:
          v11 = 1;
          v10 = v18;
          goto LABEL_10;
        }

        v41 = 0.0;
        v12 = 0;
        v11 = 1;
      }

LABEL_10:
      ++v8;
      v9 += 16;
      if (v17 == Array.endIndex.getter())
      {
        if (v12)
        {
          v11 = v39;
          v12 = v40;
          if (v40[2])
          {
            goto LABEL_47;
          }

          goto LABEL_44;
        }

        if (v11)
        {
          Date.timeIntervalSince1970.getter();
          v29 = v28;
        }

        else
        {
          v29 = v41;
        }

        v12 = v40;
        IsNativeType = sub_1005369B8(v10, v29);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_53:
          v9 = *(v12 + 16);
          v30 = *(v12 + 24);
          if (v9 >= v30 >> 1)
          {
            v12 = sub_100499EEC((v30 > 1), v9 + 1, 1, v12);
          }

          *(v12 + 16) = v9 + 1;
          *(v12 + 8 * v9 + 32) = IsNativeType;
          if (*(IsNativeType + 16))
          {
            v31 = sub_100019C10(100, 0xE100000000000000);
            if (v32)
            {
              if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (a2 > -1.0)
                {
                  if (a2 < 1.84467441e19)
                  {
                    if (*(*(IsNativeType + 56) + 8 * v31) <= v38)
                    {

                      v11 = v39;
                      if (*(v12 + 16))
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_44;
                    }

                    v11 = v39;
                    if (*(IsNativeType + 16))
                    {
                      v33 = sub_100019C10(115, 0xE100000000000000);
                      if (v34)
                      {
                        v9 = *(*(IsNativeType + 56) + 8 * v33);

                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_64;
                        }

LABEL_87:
                        v11 = sub_100499DDC(0, *(v11 + 16) + 1, 1, v11);
LABEL_64:
                        v36 = *(v11 + 16);
                        v35 = *(v11 + 24);
                        if (v36 >= v35 >> 1)
                        {
                          v11 = sub_100499DDC((v35 > 1), v36 + 1, 1, v11);
                        }

                        *(v11 + 16) = v36 + 1;
                        *(v11 + 8 * v36 + 32) = v9;
                        if (*(v12 + 16))
                        {
                          goto LABEL_47;
                        }

LABEL_44:

                        if (!*(v11 + 16))
                        {
                          goto LABEL_45;
                        }

LABEL_48:
                        v42 = 0x6973736572706D69;
                        v43 = 0xEF73656D69546E6FLL;
                        AnyHashable.init<A>(_:)();
                        v44 = sub_10010FC20(&qword_10118CE98, &qword_100EC8AC0);
                        v42 = v11;
                        sub_1004078C4(&v42, v45);
                        return;
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_80;
        }

LABEL_77:
        v12 = sub_100499EEC(0, *(v12 + 16) + 1, 1, v12);
        goto LABEL_53;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_44;
  }

LABEL_47:
  v43 = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v44 = sub_10010FC20(&qword_10118CEA0, &qword_100EC8AC8);
  v42 = v12;
  sub_1004078C4(&v42, v45);
  if (*(v11 + 16))
  {
    goto LABEL_48;
  }

LABEL_45:
}

uint64_t sub_10053675C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_101193E88 = result;
  return result;
}

void sub_10053679C()
{
  if (__OFADD__(qword_101193E90, 1))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_101193E90 != 0x7FFFFFFFFFFFFFFELL)
  {
    ++qword_101193E90;
    return;
  }

  qword_101193E90 = 0;
  if (qword_10117F790 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, qword_101218DD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Coordinator ID reached maximum value.  Reset to zero to avoid overflow.", v3, 2u);
  }
}

uint64_t sub_1005368D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  v14 = a1;
  v11[16] = a3;
  v12 = a2;
  v13 = a6;
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = sub_100536C20;
  v10[5] = v11;
  type metadata accessor for CollectionViewImpressionTracker.History(255, a4, a5, a4);
  v6 = type metadata accessor for Dictionary();
  WitnessTable = swift_getWitnessTable();
  return sub_100006A08(sub_100536C30, v10, v6, &_s7ElementVN, &type metadata for Never, WitnessTable, &protocol witness table for Never, v8);
}

uint64_t sub_1005369B8(double a1, double a2)
{
  v17 = Dictionary.init(minimumCapacity:)();
  sub_10010FC20(&qword_101191F20, &qword_100ECF088);
  Dictionary.reserveCapacity(_:)(3);
  v4 = Double.toMillisecondsInServerTime.getter(a1);
  v5 = Double.toMillisecondsInServerTime.getter(a2);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v13 = v17;
  }

  else
  {
    v7 = v5;
    if (qword_10117F790 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000060E4(v8, qword_101218DD0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = a2;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Overflow detected when subtracting %f %f. Reporting truncated duration value", v11, 0x16u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1006C6BE0(v7, 101, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
    v13 = v17;
  }

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6BE0(v4, 115, 0xE100000000000000, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1006C6BE0(v6, 100, 0xE100000000000000, v15);
  return v13;
}

uint64_t sub_100536BE0()
{

  return swift_deallocObject();
}

uint64_t sub_100536C30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v2 = *v1;
  sub_100030444(*v1, v1[1]);
  return v2;
}

uint64_t TintColorObservingView.tintColorDidChangeCallback.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_100020438(v6, v7);
}

Swift::Void __swiftcall TintColorObservingView.tintColorDidChange()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for TintColorObservingView();
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v1 = &v0[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 1);

    v4 = [v0 tintColor];
    if (v4)
    {
      v5 = v4;
      v2();

      sub_100020438(v2, v3);
    }

    else
    {
      __break(1u);
    }
  }
}

id TintColorObservingView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  v10 = type metadata accessor for TintColorObservingView();
  *v9 = 0;
  *(v9 + 1) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
}

id TintColorObservingView.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  v4 = type metadata accessor for TintColorObservingView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id TintColorObservingView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TintColorObservingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053718C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10010FC20(&unk_101193FC0, &qword_100EDB580);
  swift_storeEnumTagMultiPayload();
  result = _s14descr101092F61V17RootPlaylistsViewVMa(0);
  v3 = a1 + *(result + 20);
  *v3 = sub_100462628;
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = a1 + *(result + 24);
  *v4 = sub_100670CD8;
  *(v4 + 1) = 0;
  v4[16] = 0;
  return result;
}

id sub_100537268(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ClarityUISceneDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005372DC()
{
  v0 = sub_10010FC20(&qword_101193FA8, &qword_100ED1B00);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v5 - v2;
  _s14descr101092F61V17RootPlaylistsViewVMa(0);
  sub_1005373F8();
  AssistiveAccess.init(content:)();
  sub_100537450();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

unint64_t sub_1005373F8()
{
  result = qword_101193FB0;
  if (!qword_101193FB0)
  {
    _s14descr101092F61V17RootPlaylistsViewVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193FB0);
  }

  return result;
}

unint64_t sub_100537450()
{
  result = qword_101193FB8;
  if (!qword_101193FB8)
  {
    sub_1001109D0(&qword_101193FA8, &qword_100ED1B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193FB8);
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:locations:impressions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a1;
  v32 = a2;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v9 = &v28 - v8;
  sub_1005376AC(a3, &v28 - v8);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v10 = sub_10053771C();
  v29 = v11;
  v30 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(a3, &unk_1011838F0, &qword_100EC1070);
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v16 = *(v12 + v15);
  v17 = type metadata accessor for Actions.MetricsReportingContext(0);
  v18 = v17[5];
  v19 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v19 - 8) + 56))(&a6[v18], 1, 1, v19);
  v20 = v17[7];
  v21 = &a6[v17[6]];
  v22 = v17[8];
  v23 = v32;
  *a6 = v31;
  *(a6 + 1) = v23;
  result = sub_1005379F8(v9, &a6[v18]);
  v25 = v29;
  *v21 = v30;
  *(v21 + 1) = v25;
  v26 = v34;
  *&a6[v20] = v33;
  *&a6[v22] = v26;
  v27 = &a6[v17[9]];
  *v27 = v13 & 1;
  *(v27 + 1) = v14;
  *(v27 + 2) = v16;
  return result;
}

uint64_t sub_1005376AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10053771C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_100062364();
  sub_100061F5C();
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v2);
  v4 = v3;

  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_23:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = sub_1007E90D4(0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 delegate];

  if (!v8 || (sub_10010FC20(&unk_101184050, &unk_100EBFA30), sub_10010FC20(&unk_101184EB0, &qword_100ED56D0), (swift_dynamicCast() & 1) == 0))
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_14;
  }

  if (!*(&v20 + 1))
  {
LABEL_14:
    sub_1000095E8(&v19, &unk_101184EA0, &unk_100EBFA20);
    return 0;
  }

  v9 = *(*sub_10000954C(&v19, *(&v20 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v19);
  if (!v9)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = [Strong presentingViewController];
    if (v12)
    {
      v13 = v12;

      return 0x6979616C50776F4ELL;
    }
  }

  v14 = *(*(v9 + 24) + 16);
  if (v14)
  {
    v15 = [v14 selectedTab];
    if (!v15 || (v16 = v15, v17 = sub_10003F0FC(), v16, v17 == 7))
    {
      v17 = 1;
    }

    v18 = sub_100691570(v17);

    return v18;
  }

  else
  {

    return 0x6E776F6E6B6E55;
  }
}