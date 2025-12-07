id sub_100390A90(void *a1, void *a2, void *a3)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v26 - v13;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if (v15)
  {
    v16(v7, 0, 1, v8);
    v26 = a1;
    v17 = *(v9 + 32);
    v17(v14, v7, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v11, v14, v8);
    v19 = *(v9 + 80);
    v27 = a3;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    v22 = v26;
    *(v21 + 16) = v18;
    *(v21 + 24) = v22;
    v17((v21 + v20), v11, v8);
    aBlock[4] = sub_1003C0CD8;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A9BC0;
    v23 = _Block_copy(aBlock);
    v24 = v22;

    [v27 addAnimations:v23];
    _Block_release(v23);
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    v16(v7, 1, 1, v8);
    sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_100390DD8(uint64_t a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10038E0AC(a2, a3);
  }
}

id sub_100390EE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_100391164()
{
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_10118CDC0, &unk_100EC89D0);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118CDD0, &unk_100EC89E0);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007D8F40(v9);
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

uint64_t sub_1003914F4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v30 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v5 = &v30 - v4;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v7 = &v30 - v6;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*&v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v17 = *(*v16 + 96);
  swift_beginAccess();
  sub_1003C16C8(v16 + v17, v9, _s9PlaylistsVMa);
  v18 = &v2[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
  swift_beginAccess();
  v19 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(&v18[*(v19 + 20)], v7, &unk_10118F670, &unk_100EC89B0);
  v20 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_1001920C4(v7, v5, v11);
  sub_1000095E8(v5, &qword_1011831B0, &qword_100ED2570);
  sub_1000095E8(v7, &unk_10118F670, &unk_100EC89B0);
  sub_1003C1730(v9, _s9PlaylistsVMa);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118CDB0, &unk_100EC0360);
    v21 = 1;
    v22 = v32;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v23 = v31;
    (*(v13 + 16))(v31, v15, v12);
    swift_storeEnumTagMultiPayload();
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33[0] = v2;
    v24 = v2;
    v25 = String.init<A>(reflecting:)();
    v33[3] = &type metadata for Player.CommandIssuerIdentity;
    v33[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v33[0] = v25;
    v33[1] = v26;
    v27 = v24;
    v22 = v32;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v23, v34, 3, 0, 0, 1, 0, 1, v32, v2, v33);
    (*(v13 + 8))(v15, v12);
    v21 = 0;
  }

  v28 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v28 - 8) + 56))(v22, v21, 1, v28);
}

void sub_1003919F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationItem];

    v4 = [v3 searchController];
    if (v4)
    {
      v5 = [v4 searchBar];

      [v5 resignFirstResponder];
    }
  }
}

uint64_t sub_100391AB0@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v4 = &v22 - v3;
  v5 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_10118CEE0, &qword_100EC8AF8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___pageProperties;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &qword_10118CEE0, &qword_100EC8AF8);
  v13 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return sub_10003D17C(v11, a1, &unk_1011839D0, &qword_100EBF430);
  }

  sub_1000095E8(v11, &qword_10118CEE0, &qword_100EC8AF8);
  v15 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v15, v7, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v16 = sub_1000060E4(v5, qword_101218730);
  v17 = sub_1001982EC(v7, v16);
  sub_1003C1730(v7, _s9PlaylistsV5ScopeVMa);
  if (v17)
  {
    v18 = type metadata accessor for URL();
    (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
    MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0x59726F466564614DLL, 0xEA0000000000756FLL, 0x7972617262694CLL, 0xE700000000000000, v4, 0, 0, 0, a1);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v21 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v21 - 8) + 56))(a1, v19, 1, v21);
  sub_1000089F8(a1, v9, &unk_1011839D0, &qword_100EBF430);
  (*(v14 + 56))(v9, 0, 1, v13);
  swift_beginAccess();
  sub_10006B010(v9, v1 + v12, &qword_10118CEE0, &qword_100EC8AF8);
  return swift_endAccess();
}

unint64_t sub_100391EC8(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v6 = &v28 - v5;
  v7 = type metadata accessor for Playlist.Folder.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v28 - v11;
  sub_10037AA20(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_1011831B0, &qword_100ED2570);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v12, v6, v7);
    (*(v8 + 16))(v10, v12, v7);
    if ((*(v8 + 88))(v10, v7) == enum case for Playlist.Folder.Item.playlist(_:))
    {
      (*(v8 + 96))(v10, v7);
      v14 = v30;
      v15 = v10;
      v16 = v31;
      (*(v30 + 32))(v4, v15, v31);
      v17 = sub_10037FC08();
      v18 = UICollectionView.globalIndex(for:)();
      v20 = v19;

      if (v20)
      {
        (*(v14 + 8))(v4, v16);
        (*(v8 + 8))(v12, v7);
        return 0;
      }

      else
      {
        sub_10010FC20(&unk_1011839E0, &unk_100EBF440);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EC6C60;
        v32[0] = 25705;
        v32[1] = 0xE200000000000000;
        v29 = v18;
        AnyHashable.init<A>(_:)();
        v23 = Playlist.id.getter();
        *(inited + 96) = &type metadata for String;
        *(inited + 72) = v23;
        *(inited + 80) = v24;
        v32[0] = 0x6973736572706D69;
        v32[1] = 0xEF7865646E496E6FLL;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Int;
        *(inited + 144) = v29;
        strcpy(v32, "impressionType");
        HIBYTE(v32[1]) = -18;
        AnyHashable.init<A>(_:)();
        *(inited + 240) = &type metadata for String;
        *(inited + 216) = 0x6D6574497473694CLL;
        *(inited + 224) = 0xE800000000000000;
        v32[0] = 1684957547;
        v32[1] = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        *(inited + 312) = &type metadata for String;
        *(inited + 288) = 0x7473696C79616C70;
        *(inited + 296) = 0xE800000000000000;
        v32[0] = 1701667182;
        v32[1] = 0xE400000000000000;
        AnyHashable.init<A>(_:)();
        v25 = Playlist.name.getter();
        *(inited + 384) = &type metadata for String;
        *(inited + 360) = v25;
        *(inited + 368) = v26;
        v27 = sub_100060CB0(inited);
        swift_setDeallocating();
        sub_10010FC20(&qword_1011801C8, &unk_100EBA510);
        swift_arrayDestroy();
        (*(v14 + 8))(v4, v31);
        (*(v8 + 8))(v12, v7);
        return v27;
      }
    }

    else
    {
      v21 = *(v8 + 8);
      v21(v12, v7);
      v21(v10, v7);
      return 0;
    }
  }
}

uint64_t sub_1003923F8()
{
  v1 = v0;
  v2 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v1 + v5, v4, _s9PlaylistsV5ScopeVMa);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v6 = sub_1000060E4(v2, qword_101218730);
  v7 = sub_1001982EC(v4, v6);
  sub_1003C1730(v4, _s9PlaylistsV5ScopeVMa);
  type metadata accessor for MusicLibrary();
  v8 = [v1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  static MusicLibrary.shared.getter();
  LOBYTE(v8) = static MusicLibrary.== infix(_:_:)();

  if ((v8 & 1) != 0 && (v9 = [v1 traitCollection], sub_100217F14(), UITraitCollection.subscript.getter(), v9, LOBYTE(v9) = sub_10049CB78(), , (v9 & 1) == 0))
  {
    v10 = v7 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

id sub_10039260C()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1003BC694, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_1003926F0(uint64_t a1)
{
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v62 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v7 = &v53 - v6;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v9 = &v53 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
    return v11;
  }

  v61 = v2;
  v12 = Strong;
  v13 = sub_10003169C();

  if (v13)
  {
    v14 = type metadata accessor for IndexPath();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    sub_100376BEC(v9, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, v64);
    sub_1000095E8(v9, &unk_10118BCE0, &qword_100EC6450);
    v15 = &v12[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    v57 = &v12[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v58 = _s9PlaylistsV5ScopeVMa(0);
    sub_1000089F8(&v15[*(v58 + 20)], v7, &unk_10118F670, &unk_100EC89B0);
    v16 = String.init<A>(describing:)();
    v54 = v17;
    v55 = v16;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10012B7A8(v64, v63);
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    sub_10012B828(v63, v19 + 24);
    v59 = v13;
    *(v19 + 120) = v13;
    v20 = v12;
    v60 = v12;
    v21 = v62;
    v22 = v20;

    UUID.init()();
    v23 = UUID.uuidString.getter();
    v24 = v3;
    v56 = v3;
    v26 = v25;
    v62 = v21[1];
    (v62)(v5, v24);
    v72._object = v54;
    v72._countAndFlagsBits = v55;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v67, v72, v23, v26, sub_1003BC6A8, v19);

    v27 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109A978, 0);
    v71 = v67[0];
    sub_100015BB0(&v71);
    v70 = v67[1];
    sub_100015BB0(&v70);

    sub_1000089F8(&v57[*(v58 + 20)], v7, &unk_10118F670, &unk_100EC89B0);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10012B7A8(v64, v63);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    sub_10012B828(v63, v32 + 24);

    UUID.init()();
    v33 = UUID.uuidString.getter();
    v35 = v34;
    (v62)(v5, v56);
    v12 = v60;
    v73._countAndFlagsBits = v28;
    v73._object = v30;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v68, v73, v33, v35, sub_1003BC6B8, v32);

    v36 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
    v63[0] = v68[0];
    sub_100015BB0(v63);
    v69 = v68[1];
    sub_100015BB0(&v69);

    sub_10012BA6C(v64);
  }

  else
  {
    v36 = 0;
    v27 = 0;
  }

  v66[4] = v27;
  v37 = v27;
  v38 = sub_10037FC08();
  v39 = v38[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v39)
  {
    isa = 0;
  }

  else
  {

    isa = sub_100597E50().super.super.isa;
  }

  v66[5] = isa;
  v41 = *(*&v12[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController] + 48);
  v42 = *(*v41 + 96);
  swift_beginAccess();
  v43 = v41 + v42;
  v44 = v61;
  sub_1003C16C8(v43, v61, _s9PlaylistsVMa);
  v45 = swift_allocObject();
  swift_weakInit();

  v46 = sub_100211D00(sub_1003BC69C, v45).super.super.isa;

  sub_1003C1730(v44, _s9PlaylistsVMa);

  v66[6] = v46;
  v66[7] = v36;
  v11 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  result = v36;
  v48 = result;
  v49 = 0;
LABEL_9:
  if (v49 <= 4)
  {
    v50 = 4;
  }

  else
  {
    v50 = v49;
  }

  while (1)
  {
    if (v49 == 4)
    {
      sub_10010FC20(&qword_10118CE10, &qword_100ED1950);
      swift_arrayDestroy();

      return v11;
    }

    if (v50 == v49)
    {
      break;
    }

    v51 = v66[v49++ + 4];
    if (v51)
    {
      v52 = v51;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v11 = v65;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100392E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v6 = v22 - v5 + 32;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
    v9 = Strong;
    swift_beginAccess();
    v10 = _s9PlaylistsV5ScopeVMa(0);
    sub_1000089F8(v8 + *(v10 + 20), v6, &unk_10118F670, &unk_100EC89B0);
  }

  else
  {
    v11 = type metadata accessor for Playlist.Folder();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 traitCollection];

    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v15 = v22[0];
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v15 = static MusicLibrary.shared.getter();
  }

  v22[3] = &type metadata for PlaylistPicker.Presenter;
  v22[4] = &off_1010AD928;
  v22[0] = a3;

  v16 = static MusicActions.folderActions(folder:library:presentationSource:folderPickerPresenter:onCreateFolder:)(v6, v15, a2, v22, 0, 0);

  sub_1000095E8(v6, &unk_10118F670, &unk_100EC89B0);
  sub_10000959C(v22);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v16;
  v18 = inited + 32;
  v19 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v18, &unk_10118AB80, &qword_100EBF3B0);
  return v19;
}

uint64_t sub_100393100(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v4 = v28 - v3;
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v28 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  v28[0] = a2;
  v12 = Strong + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  v13 = Strong;
  swift_beginAccess();
  v14 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v12 + *(v14 + 20), v4, &unk_10118F670, &unk_100EC89B0);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_1000095E8(v4, &unk_10118F670, &unk_100EC89B0);
    v19 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_9;
  }

  (*(v6 + 32))(v10, v4, v5);
  (*(v6 + 16))(v8, v10, v5);
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 traitCollection];

    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v18 = *&v38[0];
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v18 = static MusicLibrary.shared.getter();
  }

  sub_10012B7A8(v28[0], v38);
  Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(v8, v18, v38, &v37);
  static Actions.DeleteFolder.action(context:)(&v37, v38);

  v33 = v38[4];
  v34 = v38[5];
  v35 = v38[6];
  v29 = v38[0];
  v30 = v38[1];
  v31 = v38[2];
  v32 = v38[3];
  v20 = static ActionBuilder.buildExpression<A, B>(_:)(&v29, &type metadata for Actions.DeleteFolder.Context, (&type metadata for () + 1), &protocol witness table for Actions.DeleteFolder.Context);
  v36[4] = v33;
  v36[5] = v34;
  v36[6] = v35;
  v36[0] = v29;
  v36[1] = v30;
  v36[2] = v31;
  v36[3] = v32;
  sub_1000095E8(v36, &qword_10118CE18, &unk_100EC8A20);
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v20;
  v22 = inited + 32;
  v23 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v22, &unk_10118AB80, &qword_100EBF3B0);
  v19 = static ActionBuilder.buildIf(_:)(v23);

  (*(v6 + 8))(v10, v5);
LABEL_9:
  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_100EBC6B0;
  *(v24 + 32) = v19;
  v25 = v24 + 32;
  v26 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v25, &unk_10118AB80, &qword_100EBF3B0);
  return v26;
}

objc_class *sub_100393588()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___plusBarButtonItem);
  }

  else
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v4 = String.init(localized:table:bundle:locale:comment:)();
    v21 = v5;
    v22 = v4;
    v6 = String._bridgeToObjectiveC()();
    v7 = [objc_opt_self() systemImageNamed:v6];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v8.value = 0;
    v9 = v0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v8, 0, sub_1003BC460, v23).super.super.isa;
    v11 = AccessibilityIdentifier.playlistButton.unsafeMutableAddressor();
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    v16 = UIBarButtonItem.init(title:image:style:primaryAction:accessibilityIdentifier:)(v22, v21, v7, 0, isa, 1, v12, v13, v14, v15);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v17 = String._bridgeToObjectiveC()();

    [(objc_class *)v16 setAccessibilityLabel:v17];

    v18 = *(v9 + v1);
    *(v9 + v1) = v16;
    v3 = v16;

    v2 = 0;
  }

  v19 = v2;
  return v3;
}

void *sub_10039389C(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v5 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  UUID.init()();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  v18._countAndFlagsBits = 0;
  v18._object = 0;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v15, v18, v7, v9, sub_1003BC468, v5);

  v10 = _swiftEmptyArrayStorage;
  v11 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v17 = v15[0];
  sub_100015BB0(&v17);
  v16 = v15[1];
  sub_100015BB0(&v16);

  if (v11)
  {
    v12 = [v11 children];

    sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v10;
}

uint64_t sub_100393A9C(uint64_t a1)
{
  v1 = *(sub_10010FC20(&unk_10118F670, &unk_100EC89B0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v38 - v4;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v7 = &v38 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_100376BEC(v7, sub_10037FC08, &OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___collectionView, &v51);

    sub_1000095E8(v7, &unk_10118BCE0, &qword_100EC6450);
    sub_10012B828(&v51, v48);
    sub_10012B7A8(v48, v47);
    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      v13 = v11;
      swift_beginAccess();
      v14 = _s9PlaylistsV5ScopeVMa(0);
      sub_1000089F8(v12 + *(v14 + 20), v5, &unk_10118F670, &unk_100EC89B0);
    }

    else
    {
      v16 = type metadata accessor for Playlist.Folder();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    }

    v17 = (*(v1 + 80) + 112) & ~*(v1 + 80);
    v18 = swift_allocObject();
    sub_10012B828(v47, v18 + 16);
    sub_10003D17C(v5, v18 + v17, &unk_10118F670, &unk_100EC89B0);
    v19 = Actions.CreatePlaylist.Context.init(canCreatePlaylist:presentCreatePlaylistView:)(variable initialization expression of _NSRange.NSRangeIterator.current, 0, sub_1003BC470, v18);
    static Actions.CreatePlaylist.action(context:)(v19, v20, v21, v22, v49);

    v53 = v49[2];
    v54 = v49[3];
    v55 = v49[4];
    v56 = v49[5];
    v51 = v49[0];
    v52 = v49[1];
    v23 = static ActionBuilder.buildExpression<A, B>(_:)(&v51, &type metadata for Actions.CreatePlaylist.Context, (&type metadata for () + 1), &protocol witness table for Actions.CreatePlaylist.Context);
    v46[2] = v53;
    v46[3] = v54;
    v46[4] = v55;
    v46[5] = v56;
    v46[0] = v51;
    v46[1] = v52;
    sub_1000095E8(v46, &unk_10118CDF0, &qword_100EC89F0);
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
      v26 = v24;
      swift_beginAccess();
      v27 = _s9PlaylistsV5ScopeVMa(0);
      sub_1000089F8(v25 + *(v27 + 20), v3, &unk_10118F670, &unk_100EC89B0);
    }

    else
    {
      v28 = type metadata accessor for Playlist.Folder();
      (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
    }

    sub_10012B7A8(v48, &v51);
    sub_10012B7A8(v48, v45);
    v29 = swift_allocObject();
    sub_10012B828(v45, v29 + 16);
    type metadata accessor for MusicLibrary();
    v30 = static MusicLibrary.shared.getter();
    Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v3, 0, v30, &v51, &unk_100EC8A00, v29, &v50);
    static Actions.CreateFolder.action(context:)(&v50, &v51);

    v42 = v55;
    v43 = v56;
    v44 = v57;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v41 = v54;
    v31 = static ActionBuilder.buildExpression<A, B>(_:)(&v38, &type metadata for Actions.CreateFolder.Context, (&type metadata for () + 1), &protocol witness table for Actions.CreateFolder.Context);
    v45[4] = v42;
    v45[5] = v43;
    v45[6] = v44;
    v45[0] = v38;
    v45[1] = v39;
    v45[2] = v40;
    v45[3] = v41;
    sub_1000095E8(v45, &qword_10118B330, &qword_100EC6EE0);
    sub_10010FC20(&unk_101183940, &unk_100EC64D0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBDC20;
    *(v32 + 32) = v23;
    *(v32 + 40) = v31;
    v33 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_10010FC20(&unk_10118AB80, &qword_100EBF3B0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v15 = static ActionBuilder.buildIf(_:)(v33);

    sub_10012BA6C(v48);
  }

  else
  {
    v15 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_10010FC20(&unk_101183940, &unk_100EC64D0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100EBC6B0;
  *(v34 + 32) = v15;
  v35 = v34 + 32;
  v36 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v35, &unk_10118AB80, &qword_100EBF3B0);
  swift_deallocClassInstance();
  return v36;
}

uint64_t sub_100394130(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[16] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v2[19] = *(v4 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult(0);
  v2[22] = swift_task_alloc();
  v2[23] = type metadata accessor for MainActor();
  v2[24] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003942A0, v6, v5);
}

uint64_t sub_1003942A0()
{
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[14];

  sub_1003C16C8(v4, v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = v0[20];
    v6 = v0[21];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[17];
    v18 = v0[19];
    v10 = v0[15];
    v11 = *(v7 + 32);
    v19 = v6;
    v11(v6, v0[22], v9);
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    (*(v7 + 16))(v5, v6, v9);
    sub_10012B7A8(v10, (v0 + 2));
    v13 = static MainActor.shared.getter();
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = &protocol witness table for MainActor;
    v11(v15 + v14, v5, v9);
    sub_10012B828((v0 + 2), v15 + ((v18 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    sub_1001F4CB8(0, 0, v8, &unk_100EC8A10, v15);

    (*(v7 + 8))(v19, v9);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1003944F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = _s9PlaylistsV5ScopeVMa(0);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for AppInterfaceContext.Activity(0);
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v5[8] = *(v7 + 64);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100394638, v9, v8);
}

uint64_t sub_100394638()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, v3, v5);
  (*(v6 + 56))(v2 + v4, 0, 1, v5);
  if (qword_10117F5D8 != -1)
  {
    swift_once();
  }

  v7 = v0[11];
  v8 = v0[5];
  v9 = v0[4];
  *v8 = qword_101218AB8;
  *(v8 + *(v9 + 24)) = 0;
  v10 = objc_opt_self();

  v11 = [v10 currentTraitCollection];
  v12 = [v11 horizontalSizeClass];

  v13 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
  v14 = sub_10037E11C(v8, 0, v12 != 2);
  v15 = (v7 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
  v16 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v7 = v14;
  v17 = type metadata accessor for UITraitOverrides();
  (*(*(v17 - 8) + 56))(v7 + v16, 1, 1, v17);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *v15 = sub_100137E80;
  v15[1] = v18;
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = v14;
  if (Strong)
  {
    v21 = sub_10003169C();

    if (v21)
    {
      v22 = v0[10];
      v23 = v0[9];
      v24 = v0[7];
      sub_1003C16C8(v0[11], v22, type metadata accessor for AppInterfaceContext.Activity);
      sub_1003C16C8(v22, v23, type metadata accessor for AppInterfaceContext.Activity);
      v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = 0;
      *(v26 + 24) = 0;
      sub_1003C1790(v23, v26 + v25, type metadata accessor for AppInterfaceContext.Activity);
      sub_100706900(v22, sub_100115C18, v26);

      sub_1003C1730(v22, type metadata accessor for AppInterfaceContext.Activity);
    }
  }

  sub_1003C1730(v0[11], type metadata accessor for AppInterfaceContext.Activity);

  v27 = v0[1];

  return v27();
}

objc_class *sub_1003949FC()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);
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
    *(v10 + 16) = sub_1003BC444;
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

objc_class *sub_100394C00()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___shuffleBarButtonItem);
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
    *(v10 + 16) = sub_1003C18A8;
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

void sub_100394E04(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1003914F4(a2);
  }

  else
  {
    v5 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
  }
}

id sub_100394EA0()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroup);
  }

  else
  {
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBC6D0;
    v5 = v0;
    *(v4 + 32) = sub_1003949FC();
    *(v4 + 40) = sub_100394C00();
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v6 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playBarButtonItem);

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

void *sub_100394FE0()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups;
  if (*(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___playShuffleBarButtonGroups);
  }

  else
  {
    v3 = v0;
    v4 = sub_100394EA0();
    v2 = UIBarButtonItemGroup.split()();

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_100395058()
{
  v1 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup;
  v2 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController____lazy_storage___contextAndFilterBarButtonGroup);
  }

  else
  {
    v4 = sub_1003950BC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1003950BC()
{
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  *(v0 + 32) = sub_100393588();
  *(v0 + 40) = sub_10003DE24(&unk_1010A9040, sub_1003BC6C4);
  *(v0 + 48) = sub_10039260C();
  sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
  v1 = static UIBarButtonItem.contextBarButtonItem(representativeOf:)(v0);
  v2 = objc_allocWithZone(UIBarButtonItemGroup);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithBarButtonItems:isa representativeItem:v1];

  return v4;
}

BOOL sub_1003951D4()
{
  sub_10010FC20(&unk_10118CDC0, &unk_100EC89D0);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118CDD0, &unk_100EC89E0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118CDC0, &unk_100EC89D0);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118CDD0, &unk_100EC89E0);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_1003953C0()
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
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
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_1003955AC()
{
  sub_10010FC20(&qword_10118D1B8, &qword_100EC8ED8);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
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
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

BOOL sub_100395798()
{
  sub_10010FC20(&unk_1011846E0, &qword_100EC8E40);
  __chkstk_darwin();
  v1 = &v9 - v0;
  v2 = sub_10010FC20(&unk_10118F1E0, &qword_100EC03A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v9 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_101184700, &unk_100EC03C0);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_1011846E0, &qword_100EC8E40);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_101184700, &unk_100EC03C0);
    v7 = MusicLibrarySectionedResponse.isEmpty.getter(v2);
    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

void sub_100395984(uint64_t a1, uint64_t a2)
{
  v54 = _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v51 = &v49 - v5;
  v6 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v49 - v8;
  sub_10010FC20(&qword_10118D388, &qword_100EC90D8);
  __chkstk_darwin();
  v11 = &v49 - v10;
  sub_10010FC20(&qword_1011831B0, &qword_100ED2570);
  __chkstk_darwin();
  v13 = &v49 - v12;
  v14 = type metadata accessor for Playlist.Folder();
  v15 = *(v14 - 8);
  v52 = v14;
  v53 = v15;
  __chkstk_darwin();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v49 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_folderResponse;
    swift_beginAccess();
    if (!*&v20[v21] || (v50 = v4, , v22 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), , (v22 & 1) == 0))
    {

      return;
    }

    sub_1000089F8(a1, v11, &qword_10118D388, &qword_100EC90D8);
    v23 = sub_10010FC20(&unk_10118D390, &unk_100EC90E0);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v11, 1, v23) == 1)
    {
      sub_1000095E8(v11, &qword_10118D388, &qword_100EC90D8);
      v25 = type metadata accessor for Playlist.Folder.Item();
      (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
LABEL_8:
      sub_1000095E8(v13, &qword_1011831B0, &qword_100ED2570);
LABEL_9:
      v28 = v20;
      sub_1003FE034(1);

      return;
    }

    MusicLibraryResponse.items.getter();
    (*(v24 + 8))(v11, v23);
    sub_10034DF1C(v13);
    (*(v7 + 8))(v9, v6);
    v26 = type metadata accessor for Playlist.Folder.Item();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v13, 1, v26) == 1)
    {
      goto LABEL_8;
    }

    if ((*(v27 + 88))(v13, v26) != enum case for Playlist.Folder.Item.folder(_:))
    {
      (*(v27 + 8))(v13, v26);
      goto LABEL_9;
    }

    (*(v27 + 96))(v13, v26);
    v29 = v52;
    v30 = v55;
    v31 = v13;
    v32 = v53;
    (*(v53 + 32))(v55, v31, v52);
    v33 = &v20[OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope];
    swift_beginAccess();
    v34 = v54;
    v35 = *(v54 + 20);
    if ((*(v32 + 48))(v33 + v35, 1, v29))
    {
      Playlist.Folder.name.getter();
      v36 = v29;
    }

    else
    {
      v37 = *(v32 + 16);
      v37(v17, v33 + v35, v29);
      v49 = Playlist.Folder.name.getter();
      v45 = v44;
      v43 = *(v32 + 8);
      v43(v17, v29);
      v46 = Playlist.Folder.name.getter();
      v36 = v29;
      if (v45)
      {
        if (v49 == v46 && v45 == v47)
        {
        }

        else
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            v34 = v54;
            v30 = v55;
            v32 = v53;
            goto LABEL_15;
          }
        }

        v42 = v55;
        goto LABEL_16;
      }

      v34 = v54;
      v30 = v55;
      v32 = v53;
    }

    v37 = *(v32 + 16);
LABEL_15:
    v38 = v51;
    v37(v51, v30, v36);
    (*(v32 + 56))(v38, 0, 1, v36);
    swift_beginAccess();
    sub_10006B010(v38, v33 + *(v34 + 20), &unk_10118F670, &unk_100EC89B0);
    swift_endAccess();
    v39 = v50;
    sub_1003C16C8(v33, v50, _s9PlaylistsV5ScopeVMa);
    v40 = v20;
    sub_10037EDC4();
    sub_1003C1730(v39, _s9PlaylistsV5ScopeVMa);
    v41 = String._bridgeToObjectiveC()();

    [v40 setTitle:v41];

    v42 = v30;
    v43 = *(v32 + 8);
LABEL_16:
    v43(v42, v36);
  }
}

uint64_t type metadata accessor for LibraryPlaylistsViewController(uint64_t a1)
{
  result = qword_10118CCB8;
  if (!qword_10118CCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100396494(uint64_t a1)
{
  sub_100396818(319, &qword_10118CCC8, &type metadata accessor for Playlist.Folder.Item);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_10118CCD0, &qword_10118CCD8, &qword_100EC8898);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_10118CCE0, &qword_10118CCE8, &qword_100EC88A0);
        if (v4 <= 0x3F)
        {
          sub_10003920C(319, &qword_10118CCF0, &qword_10118CCF8, &qword_100EC88A8);
          if (v5 <= 0x3F)
          {
            sub_10003920C(319, &qword_10118CD00, &unk_10118CD08, &qword_100EC88B0);
            if (v6 <= 0x3F)
            {
              _s9PlaylistsV5ScopeVMa(319);
              if (v7 <= 0x3F)
              {
                sub_100396818(319, &qword_1011845B0, type metadata accessor for Actions.MetricsReportingContext);
                if (v8 <= 0x3F)
                {
                  sub_10003920C(319, &unk_10119E2F0, &unk_1011839D0, &qword_100EBF430);
                  if (v9 <= 0x3F)
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

void sub_100396818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10039686C(uint64_t *a1, uint64_t *a2)
{
  _s9PlaylistsV5ScopeVMa(0);
  __chkstk_darwin();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = *a1;
  v9 = *a2;
  v10 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v8 + v10, v7, _s9PlaylistsV5ScopeVMa);
  v11 = OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  sub_1003C16C8(v9 + v11, v5, _s9PlaylistsV5ScopeVMa);
  LOBYTE(a2) = sub_1001982EC(v7, v5);
  sub_1003C1730(v5, _s9PlaylistsV5ScopeVMa);
  sub_1003C1730(v7, _s9PlaylistsV5ScopeVMa);
  return a2 & 1;
}

uint64_t sub_1003969D8()
{
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = *v0;
  sub_10010FC20(&qword_1011978D0, &unk_100EC8B00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBC6B0;
  v5 = v3 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_scope;
  swift_beginAccess();
  v6 = _s9PlaylistsV5ScopeVMa(0);
  sub_1000089F8(v5 + *(v6 + 20), v2, &unk_10118F670, &unk_100EC89B0);
  *(v4 + 56) = type metadata accessor for ApplicationMainMenu.ParentFolderContext(0);
  *(v4 + 64) = &off_1010A66E8;
  v7 = sub_10001C8B8((v4 + 32));
  v8 = type metadata accessor for Playlist.Folder();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_10006B010(v2, v7, &unk_10118F670, &unk_100EC89B0);
  return v4;
}

uint64_t sub_100396B4C()
{
  v1 = v0;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
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

  v35[3] = v11;
  v35[4] = v13;
  v14._countAndFlagsBits = 0x74726F532ELL;
  v14._object = 0xE500000000000000;
  String.append(_:)(v14);
  v15 = String._bridgeToObjectiveC()();

  v16 = *(v1 + OBJC_IVAR____TtC5Music30LibraryPlaylistsViewController_responseController);
  v17 = *(v16 + 48);
  v18 = *(*v17 + 96);
  swift_beginAccess();
  sub_1003C16C8(v17 + v18, v3, _s9PlaylistsVMa);
  v19 = swift_allocObject();
  swift_weakInit();

  v20.super.super.isa = sub_100211D00(sub_1003C1888, v19).super.super.isa;

  sub_1003C1730(v3, _s9PlaylistsVMa);

  if (v20.super.super.isa)
  {
    v21 = [(objc_class *)v20.super.super.isa children];

    v20.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v15 = 0;
  }

  *(v4 + 64) = v15;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = v20;
  v23 = sub_10031EA10(v22);
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v35[0] = v24;
  v35[1] = v26;
  v27._countAndFlagsBits = 0x7265746C69462ELL;
  v27._object = 0xE700000000000000;
  String.append(_:)(v27);
  v28 = String._bridgeToObjectiveC()();

  v29 = *(v16 + 48);
  v30 = *(*v29 + 96);
  swift_beginAccess();
  sub_1003C16C8(v29 + v30, v3, _s9PlaylistsVMa);
  v31 = swift_allocObject();
  swift_weakInit();

  v32 = sub_1003972A8(sub_1003C18B0, v31);

  sub_1003C1730(v3, _s9PlaylistsVMa);

  if (v32)
  {
    v33 = [v32 children];

    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v28 = 0;
  }

  *(v4 + 96) = v28;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = v32;
  return v4;
}

uint64_t sub_100396F84(uint64_t a1)
{
  result = sub_10003D8C4(&unk_10118CD50, type metadata accessor for LibraryPlaylistsViewController, &unk_100EC8938);
  *(a1 + 16) = result;
  return result;
}

UIMenu sub_100396FDC(uint64_t a1, void *a2)
{
  v5 = *&v2[*(_s10TVEpisodesVMa(0) + 56)];
  if (!*(v5 + 16))
  {
    return 0;
  }

  sub_10045F2E0(*v2, 0);
  v6 = String._bridgeToObjectiveC()();

  v7 = [objc_opt_self() systemImageNamed:v6];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v18[0] = 0;
  v18[1] = 0;
  v9 = v2;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v11._object = 0x8000000100E48430;
  v11._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v11);

  v12 = String._bridgeToObjectiveC()();

  [v10 setAccessibilityIdentifier:v12];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v18[2] = v9;
  v18[3] = a1;
  v19 = a2;
  v19 = sub_10012BC18(sub_1003C03BC, v18, v5);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v21, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v20).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100EBC6D0;
  *(v15 + 32) = v10;
  *(v15 + 40) = isa;
  v19 = v15;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v22.value.super.isa = 0;
  v22.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v22, 0, 0xFFFFFFFFFFFFFFFFLL, v19, v20);
}

Class sub_1003972A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v7 = v35 - v6;
  if (*(v2 + 9))
  {
    v8 = _swiftEmptyArrayStorage;
  }

  else if (*(v2 + 8) == 1)
  {
    v8 = &off_101098F58;
  }

  else
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = &off_101098F58;
    if (v10 != 6)
    {
      v35[3] = *v3;
      type metadata accessor for MusicLibrary();

      v35[2] = static MusicLibrary.shared.getter();
      sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
      v11 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v11)
      {
        v8 = &off_101098F80;
      }

      else
      {
        v8 = &off_101098F58;
      }
    }
  }

  v12 = v8[2];

  result = 0;
  if (v12)
  {
    v14 = (v3 + *(_s9PlaylistsVMa(0) + 32));
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v15 = _s9PlaylistsV5ScopeVMa(0);
    v16 = sub_1000060E4(v15, qword_101218730);
    if (sub_1001982EC(v14, v16))
    {
      v17 = 6;
    }

    else
    {
      sub_1000089F8(v14 + *(v15 + 20), v7, &unk_10118F670, &unk_100EC89B0);
      v18 = type metadata accessor for Playlist.Folder();
      v19 = (*(*(v18 - 8) + 48))(v7, 1, v18);
      sub_1000095E8(v7, &unk_10118F670, &unk_100EC89B0);
      if (v19 == 1)
      {
        v17 = 9;
      }

      else
      {
        v17 = 4;
      }
    }

    sub_10045F2E0(v17, 0);
    v20 = String._bridgeToObjectiveC()();

    v21 = [objc_opt_self() systemImageNamed:v20];

    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    v22 = swift_allocObject();
    *(v22 + 16) = a1;
    *(v22 + 24) = a2;

    v32[0] = 0;
    v32[1] = 0;
    v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v24._object = 0x8000000100E48430;
    v24._countAndFlagsBits = 0xD00000000000001CLL;
    AccessibilityIdentifier.init(name:)(v24);

    v25 = String._bridgeToObjectiveC()();

    [v23 setAccessibilityIdentifier:v25];

    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v26 = sub_10018F5B8();
    __chkstk_darwin();
    v27 = sub_10012BC18(sub_1003BC6DC, v32, v26);

    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v36.value.super.isa = 0;
    v36.is_nil = 0;
    isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v36, 1, 0xFFFFFFFFFFFFFFFFLL, v27, v34).super.super.isa;
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100EBC6D0;
    *(v30 + 32) = v23;
    *(v30 + 40) = isa;
    v33 = v30;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v37.value.super.isa = 0;
    v37.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v37, 0, 0xFFFFFFFFFFFFFFFFLL, v33, v34).super.super.isa;
  }

  return result;
}

UIMenu sub_1003977C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11MusicVideosVMa(0);
  sub_1003C16C8(v2 + *(v8 + 28), v7, _s11MusicVideosV5ScopeOMa);
  v9 = type metadata accessor for Artist();
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    if (*(v2 + 16) == 1)
    {
      v10 = &off_101098FF8;
    }

    else
    {
      v25 = [objc_opt_self() currentDevice];
      v26 = [v25 userInterfaceIdiom];

      v10 = &off_101098FF8;
      if (v26 != 6)
      {
        v31[3] = *(v3 + 8);
        type metadata accessor for MusicLibrary();

        v31[2] = static MusicLibrary.shared.getter();
        sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();

        if (v27)
        {
          v10 = &off_101099020;
        }
      }
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_1003C1730(v7, _s11MusicVideosV5ScopeOMa);
  v11 = v10[2];

  if (!v11)
  {
    return 0;
  }

  sub_10045F2E0(*v3, 0);
  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() systemImageNamed:v12];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;

  v28[0] = 0;
  v28[1] = 0;
  v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v16._object = 0x8000000100E48430;
  v16._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v16);

  v17 = String._bridgeToObjectiveC()();

  [v15 setAccessibilityIdentifier:v17];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v18 = sub_1006FE4C0();
  __chkstk_darwin();
  v28[2] = v3;
  v28[3] = a1;
  v19 = sub_10012BC18(sub_1003BE9F0, v28, v18);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v30).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6D0;
  *(v22 + 32) = v15;
  *(v22 + 40) = isa;
  v29 = v22;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v33, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v30);
}

Class sub_100397C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v36 - v7;
  v9 = *(_s6AlbumsVMa(0) + 24);
  sub_1003C16C8(v2 + v9, v8, _s6AlbumsV5ScopeOMa);
  if (swift_getEnumCaseMultiPayload() - 1 >= 2)
  {
    if (*(v2 + 8) == 1)
    {
      v10 = &off_101098E90;
    }

    else
    {
      v11 = [objc_opt_self() currentDevice];
      v12 = a1;
      v13 = [v11 userInterfaceIdiom];

      v10 = &off_101098E90;
      v14 = v13 == 6;
      a1 = v12;
      if (!v14)
      {
        v40 = *v3;
        type metadata accessor for MusicLibrary();

        v37 = static MusicLibrary.shared.getter();
        v39 = v37;
        sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        a1 = v12;

        if (v15)
        {
          v10 = &off_101098EB8;
        }
      }
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  sub_1003C1730(v8, _s6AlbumsV5ScopeOMa);
  v16 = v10[2];

  if (!v16)
  {
    return 0;
  }

  sub_1003C16C8(v3 + v9, v6, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 3)
  {
    sub_1003C1730(v6, _s6AlbumsV5ScopeOMa);
LABEL_14:
    v32 = 0;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_14;
  }

  v32 = 3;
LABEL_15:
  sub_10045F2E0(v32, 0);
  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() systemImageNamed:v19];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v21 = swift_allocObject();
  v22 = v38;
  *(v21 + 16) = a1;
  *(v21 + 24) = v22;

  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v24._object = 0x8000000100E48430;
  v24._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v24);

  v25 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityIdentifier:v25];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v26 = sub_10028AAFC();
  __chkstk_darwin();
  v27 = sub_10012BC18(sub_1003BCB80, &v33, v26);

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v41.value.super.isa = 0;
  v41.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, 0, v41, 1, 0xFFFFFFFFFFFFFFFFLL, v27, v35).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6D0;
  *(v30 + 32) = v23;
  *(v30 + 40) = isa;
  v34 = v30;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v42.value.super.isa = 0;
  v42.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v31, 0, v42, 0, 0xFFFFFFFFFFFFFFFFLL, v34, v35).super.super.isa;
}

UIMenu sub_100398190(uint64_t a1, UIMenuElementSize a2)
{
  v5 = v2[3];
  v26 = v2[2];
  v27 = v5;
  v28 = v2[4];
  v6 = *v2;
  v25 = v2[1];
  v24 = v6;
  v36 = v26;
  v37 = v5;
  v38 = v28;
  v34 = v6;
  v35 = v25;
  v7 = sub_10030D078()[2];

  if (!v7)
  {
    return 0;
  }

  sub_10045F2E0(v34, 0);
  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() systemImageNamed:v8];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v21[0] = 0;
  v21[1] = 0;
  v11 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v12._object = 0x8000000100E48430;
  v12._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v12);

  v13 = String._bridgeToObjectiveC()();

  [v11 setAccessibilityIdentifier:v13];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v32 = v27;
  v33 = v28;
  v30 = v25;
  v31 = v26;
  v29 = v24;
  v14 = sub_10030D078();
  __chkstk_darwin();
  v21[2] = &v24;
  v21[3] = a1;
  v22 = a2;
  v15 = sub_10012BC18(sub_1003BEA48, v21, v14);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v39.value.super.isa = 0;
  v39.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v39, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v23).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6D0;
  *(v18 + 32) = v11;
  *(v18 + 40) = isa;
  v22 = v18;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v40, 0, 0xFFFFFFFFFFFFFFFFLL, v22, v23);
}

UIMenu sub_1003984DC(uint64_t a1, UIMenuElementSize a2, uint64_t a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, char *))
{
  v6 = *(v5 + 96);
  v30 = v6;
  v7 = *(v5 + 80);
  v29[4] = *(v5 + 64);
  v29[5] = v7;
  v8 = *(v5 + 48);
  v29[2] = *(v5 + 32);
  v29[3] = v8;
  v9 = *(v5 + 16);
  v29[0] = *v5;
  v29[1] = v9;
  if (!*(v6 + 16))
  {
    return 0;
  }

  v12 = *v5;
  v28 = a5;
  sub_10045F2E0(v12, 0);
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v25[0] = 0;
  v25[1] = 0;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17._object = 0x8000000100E48430;
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v18];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v25[2] = v29;
  v25[3] = a1;
  v26 = a2;

  v19 = sub_10012BC18(v28, v25, v6);

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v31, 1, 0xFFFFFFFFFFFFFFFFLL, v19, v27).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBC6D0;
  *(v22 + 32) = v16;
  *(v22 + 40) = isa;
  v26 = v22;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v23, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, v26, v27);
}

UIMenu sub_1003987B0(uint64_t a1, UIMenuElementSize a2)
{
  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  v24[4] = *(v2 + 64);
  v24[5] = v4;
  v5 = *(v2 + 48);
  v24[2] = *(v2 + 32);
  v24[3] = v5;
  v6 = *(v2 + 16);
  v24[0] = *v2;
  v24[1] = v6;
  if (!*(v3 + 16))
  {
    return 0;
  }

  sub_10045F2E0(*v2, 0);
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() systemImageNamed:v9];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;

  v21[0] = 0;
  v21[1] = 0;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v13._object = 0x8000000100E48430;
  v13._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v13);

  v14 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityIdentifier:v14];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  __chkstk_darwin();
  v21[2] = v24;
  v21[3] = a1;
  v22 = a2;

  v15 = sub_10012BC18(sub_1003BF034, v21, v3);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v25.value.super.isa = 0;
  v25.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v25, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v23).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6D0;
  *(v18 + 32) = v12;
  *(v18 + 40) = isa;
  v22 = v18;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v26.value.super.isa = 0;
  v26.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v26, 0, 0xFFFFFFFFFFFFFFFFLL, v22, v23);
}

UIMenu sub_100398A98(uint64_t a1, UIMenuElementSize a2)
{
  v5 = *(v2 + 8);
  v6 = v2[1];
  v7 = v2[3];
  v32 = v2[2];
  v33 = v7;
  v34 = *(v2 + 64);
  v30 = *v2;
  v31 = v6;
  if (v5)
  {
    v8 = &off_101098FA8;
  }

  else
  {
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    v8 = &off_101098FA8;
    if (v10 != 6)
    {
      *&v35 = *v2;
      type metadata accessor for MusicLibrary();

      v29 = static MusicLibrary.shared.getter();
      sub_10003D8C4(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
      v11 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v11)
      {
        v8 = &off_101098FD0;
      }

      else
      {
        v8 = &off_101098FA8;
      }
    }
  }

  v12 = v8[2];

  if (!v12)
  {
    return 0;
  }

  sub_10045F2E0(*(v2 + 64), 0);
  v13 = String._bridgeToObjectiveC()();

  v14 = [objc_opt_self() systemImageNamed:v13];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;

  v26[0] = 0;
  v26[1] = 0;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17._object = 0x8000000100E48430;
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  AccessibilityIdentifier.init(name:)(v17);

  v18 = String._bridgeToObjectiveC()();

  [v16 setAccessibilityIdentifier:v18];

  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v37 = v32;
  v38 = v33;
  v39 = v34;
  v35 = v30;
  v36 = v31;
  v19 = sub_1007B9600();
  __chkstk_darwin();
  v26[2] = &v30;
  v26[3] = a1;
  v27 = a2;
  v20 = sub_10012BC18(sub_1003BEBF8, v26, v19);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v21, 0, v40, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v28).super.super.isa;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6D0;
  *(v23 + 32) = v16;
  *(v23 + 40) = isa;
  v27 = v23;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v41.value.super.isa = 0;
  v41.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v41, 0, 0xFFFFFFFFFFFFFFFFLL, v27, v28);
}

id sub_100398EA0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = _s10TVEpisodesVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v33 = a3;
    v35 = a4;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 0;
    }

    else
    {
      v15 = sub_10045F2E0(*a2, v8);
      v30[1] = v16;
      v30[2] = v15;
      v32 = v4;
      v31 = v8;
      v17 = sub_10048B9E8(v8, *&a2[*(v9 + 48)]);
      v18 = String._bridgeToObjectiveC()();

      v30[0] = [objc_opt_self() systemImageNamed:v18];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      sub_1003C16C8(a2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s10TVEpisodesVMa);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = v19 + v11;
      v21 = swift_allocObject();
      sub_1003C1790(v12, v21 + v19, _s10TVEpisodesVMa);
      v22 = (v21 + v20);
      *v22 = v17 & 1;
      v22[1] = v8;
      v23 = (v21 + ((v20 + 9) & 0xFFFFFFFFFFFFFFF8));
      v24 = v35;
      *v23 = v33;
      v23[1] = v24;

      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v26 = v25;
      _StringGuts.grow(_:)(27);

      v34._countAndFlagsBits = 0xD000000000000019;
      v34._object = 0x8000000100E48450;
      if (v31 == 2)
      {
        v27 = 0x64616F6C6E776F64;
      }

      else
      {
        v27 = 0x657469726F766166;
      }

      v28 = 0xE900000000000073;
      String.append(_:)(*&v27);

      AccessibilityIdentifier.init(name:)(v34);

      v29 = String._bridgeToObjectiveC()();

      [v26 setAccessibilityIdentifier:v29];

      return v26;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = _s9PlaylistsVMa(0);
  v44 = *(v9 - 8);
  v10 = *(v44 + 64);
  __chkstk_darwin();
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v13 = v38 - v12;
  if (v8)
  {
    v42 = a3;
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      return 0;
    }

    else
    {
      v40 = a4;
      v16 = (a2 + *(v9 + 32));
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v17 = _s9PlaylistsV5ScopeVMa(0);
      v18 = sub_1000060E4(v17, qword_101218730);
      v19 = sub_1001982EC(v16, v18);
      v41 = v4;
      if (v19)
      {
        v20 = 6;
      }

      else
      {
        sub_1000089F8(v16 + *(v17 + 20), v13, &unk_10118F670, &unk_100EC89B0);
        v21 = type metadata accessor for Playlist.Folder();
        v22 = (*(*(v21 - 8) + 48))(v13, 1, v21);
        sub_1000095E8(v13, &unk_10118F670, &unk_100EC89B0);
        if (v22 == 1)
        {
          v20 = 9;
        }

        else
        {
          v20 = 4;
        }
      }

      v23 = sub_10045F2E0(v20, v8);
      v38[2] = v24;
      v38[3] = v23;
      v39 = v8;
      v25 = sub_10048B9E8(v8, *(a2 + *(v9 + 40)));
      v26 = String._bridgeToObjectiveC()();

      v38[1] = [objc_opt_self() systemImageNamed:v26];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      sub_1003C16C8(a2, v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), _s9PlaylistsVMa);
      v27 = (*(v44 + 80) + 16) & ~*(v44 + 80);
      v28 = v27 + v10;
      v29 = swift_allocObject();
      sub_1003C1790(v11, v29 + v27, _s9PlaylistsVMa);
      v30 = (v29 + v28);
      *v30 = v25 & 1;
      v30[1] = v8;
      v31 = (v29 + ((v28 + 9) & 0xFFFFFFFFFFFFFFF8));
      v32 = v40;
      *v31 = v42;
      v31[1] = v32;

      v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v43._countAndFlagsBits = 0;
      v43._object = 0xE000000000000000;
      v34 = v33;
      _StringGuts.grow(_:)(27);

      v43._countAndFlagsBits = 0xD000000000000019;
      v43._object = 0x8000000100E48450;
      if (v39 == 2)
      {
        v35 = 0x64616F6C6E776F64;
      }

      else
      {
        v35 = 0x657469726F766166;
      }

      v36 = 0xE900000000000073;
      String.append(_:)(*&v35);

      AccessibilityIdentifier.init(name:)(v43);

      v37 = String._bridgeToObjectiveC()();

      [v34 setAccessibilityIdentifier:v37];

      return v34;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399718(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1;
  v9 = _s11MusicVideosVMa(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v33 = a3;
    v35 = a4;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return 0;
    }

    else
    {
      v15 = sub_10045F2E0(*a2, v8);
      v30[1] = v16;
      v30[2] = v15;
      v32 = v4;
      v31 = v8;
      v17 = sub_10048B9E8(v8, *&a2[*(v9 + 36)]);
      v18 = String._bridgeToObjectiveC()();

      v30[0] = [objc_opt_self() systemImageNamed:v18];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      sub_1003C16C8(a2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), _s11MusicVideosVMa);
      v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v20 = v19 + v11;
      v21 = swift_allocObject();
      sub_1003C1790(v12, v21 + v19, _s11MusicVideosVMa);
      v22 = (v21 + v20);
      *v22 = v17 & 1;
      v22[1] = v8;
      v23 = (v21 + ((v20 + 9) & 0xFFFFFFFFFFFFFFF8));
      v24 = v35;
      *v23 = v33;
      v23[1] = v24;

      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v26 = v25;
      _StringGuts.grow(_:)(27);

      v34._countAndFlagsBits = 0xD000000000000019;
      v34._object = 0x8000000100E48450;
      if (v31 == 2)
      {
        v27 = 0x64616F6C6E776F64;
      }

      else
      {
        v27 = 0x657469726F766166;
      }

      v28 = 0xE900000000000073;
      String.append(_:)(*&v27);

      AccessibilityIdentifier.init(name:)(v34);

      v29 = String._bridgeToObjectiveC()();

      [v26 setAccessibilityIdentifier:v29];

      return v26;
    }
  }

  else
  {

    return 0;
  }
}

id sub_100399AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v7 = a1;
  v8 = _s6AlbumsVMa(0);
  v36 = *(v8 - 8);
  v9 = *(v36 + 64);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v7)
  {

    return 0;
  }

  v35 = a4;
  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    return 0;
  }

  sub_1003C16C8(a2 + *(v8 + 24), v12, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v34 = v4;
  if (EnumCaseMultiPayload < 3)
  {
    sub_1003C1730(v12, _s6AlbumsV5ScopeOMa);
LABEL_9:
    v31 = 0;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_9;
  }

  v31 = 3;
LABEL_10:
  v16 = sub_10045F2E0(v31, v7);
  v32[2] = v17;
  v32[3] = v16;
  v33 = v7;
  v18 = sub_10048B9E8(v7, *(a2 + *(v8 + 32)));
  v19 = String._bridgeToObjectiveC()();

  v32[1] = [objc_opt_self() systemImageNamed:v19];

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  sub_1003C16C8(a2, v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), _s6AlbumsVMa);
  v20 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v21 = v20 + v9;
  v22 = swift_allocObject();
  sub_1003C1790(v10, v22 + v20, _s6AlbumsVMa);
  v23 = (v22 + v21);
  *v23 = v18 & 1;
  v23[1] = v7;
  v24 = (v22 + ((v21 + 9) & 0xFFFFFFFFFFFFFFF8));
  v25 = v35;
  *v24 = v38;
  v24[1] = v25;

  v26 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v27 = v26;
  _StringGuts.grow(_:)(27);

  v37._countAndFlagsBits = 0xD000000000000019;
  v37._object = 0x8000000100E48450;
  if (v33 == 2)
  {
    v28 = 0x64616F6C6E776F64;
  }

  else
  {
    v28 = 0x657469726F766166;
  }

  v29 = 0xE900000000000073;
  String.append(_:)(*&v28);

  AccessibilityIdentifier.init(name:)(v37);

  v30 = String._bridgeToObjectiveC()();

  [v27 setAccessibilityIdentifier:v30];

  return v27;
}

id sub_100399F04(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0(*a2, v4);
      v10 = *(a2 + 5);
      v22 = v4;
      v11 = sub_10048B9E8(v4, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v13 = swift_allocObject();
      v14 = *(a2 + 3);
      *(v13 + 48) = *(a2 + 2);
      *(v13 + 64) = v14;
      *(v13 + 80) = *(a2 + 4);
      v15 = *(a2 + 1);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v15;
      *(v13 + 96) = v11 & 1;
      *(v13 + 97) = v4;
      *(v13 + 104) = a3;
      *(v13 + 112) = a4;

      sub_10030DC78(a2, &v21);
      v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v17 = v16;
      _StringGuts.grow(_:)(27);

      v21._countAndFlagsBits = 0xD000000000000019;
      v21._object = 0x8000000100E48450;
      if (v22 == 2)
      {
        v18 = 0x64616F6C6E776F64;
      }

      else
      {
        v18 = 0x657469726F766166;
      }

      v19 = 0xE900000000000073;
      String.append(_:)(*&v18);

      AccessibilityIdentifier.init(name:)(v21);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:{v20, 0, 0, v11 & 1, sub_1003BEAA4, v13}];

      return v17;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A1E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unsigned __int8 *, Swift::String *), uint64_t a7)
{
  if (a1)
  {
    v7 = a1;
    v28 = a7;
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0(*a2, v7);
      v14 = sub_10048B9E8(v7, *(a2 + 9));
      v15 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v15];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v16 = swift_allocObject();
      v17 = *(a2 + 5);
      *(v16 + 80) = *(a2 + 4);
      *(v16 + 96) = v17;
      *(v16 + 112) = *(a2 + 12);
      v18 = *(a2 + 1);
      *(v16 + 16) = *a2;
      *(v16 + 32) = v18;
      v19 = *(a2 + 3);
      *(v16 + 48) = *(a2 + 2);
      *(v16 + 64) = v19;
      *(v16 + 120) = v14 & 1;
      *(v16 + 121) = v7;
      *(v16 + 128) = a3;
      *(v16 + 136) = a4;

      a6(a2, &v27);
      v26 = v16;
      v25 = v28;
      v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      v21 = v20;
      _StringGuts.grow(_:)(27);

      v27._countAndFlagsBits = 0xD000000000000019;
      v27._object = 0x8000000100E48450;
      if (v7 == 2)
      {
        v22 = 0x64616F6C6E776F64;
      }

      else
      {
        v22 = 0x657469726F766166;
      }

      v23 = 0xE900000000000073;
      String.append(_:)(*&v22);

      AccessibilityIdentifier.init(name:)(v27);

      v24 = String._bridgeToObjectiveC()();

      [v21 setAccessibilityIdentifier:{v24, 0, 0, v14 & 1, v25, v26}];

      return v21;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A4C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0(*a2, v4);
      v10 = *(a2 + 8);
      v23 = v4;
      v11 = sub_10048B9E8(v4, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v13 = swift_allocObject();
      v14 = *(a2 + 3);
      *(v13 + 48) = *(a2 + 2);
      *(v13 + 64) = v14;
      v15 = *(a2 + 5);
      *(v13 + 80) = *(a2 + 4);
      *(v13 + 96) = v15;
      v16 = *(a2 + 1);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v16;
      *(v13 + 112) = v11 & 1;
      *(v13 + 113) = v4;
      *(v13 + 120) = a3;
      *(v13 + 128) = a4;

      sub_1001103E0(a2, &v22);
      v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v22._countAndFlagsBits = 0;
      v22._object = 0xE000000000000000;
      v18 = v17;
      _StringGuts.grow(_:)(27);

      v22._countAndFlagsBits = 0xD000000000000019;
      v22._object = 0x8000000100E48450;
      if (v23 == 2)
      {
        v19 = 0x64616F6C6E776F64;
      }

      else
      {
        v19 = 0x657469726F766166;
      }

      v20 = 0xE900000000000073;
      String.append(_:)(*&v19);

      AccessibilityIdentifier.init(name:)(v22);

      v21 = String._bridgeToObjectiveC()();

      [v18 setAccessibilityIdentifier:{v21, 0, 0, v11 & 1, sub_1003BF090, v13}];

      return v18;
    }
  }

  else
  {

    return 0;
  }
}

id sub_10039A798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a1;
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      return 0;
    }

    else
    {
      sub_10045F2E0(*(a2 + 64), v4);
      v10 = *(a2 + 32);
      v22 = v4;
      v11 = sub_10048B9E8(v4, v10);
      v12 = String._bridgeToObjectiveC()();

      [objc_opt_self() systemImageNamed:v12];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      v13 = swift_allocObject();
      v14 = *(a2 + 48);
      *(v13 + 48) = *(a2 + 32);
      *(v13 + 64) = v14;
      *(v13 + 80) = *(a2 + 64);
      v15 = *(a2 + 16);
      *(v13 + 16) = *a2;
      *(v13 + 32) = v15;
      *(v13 + 81) = v11 & 1;
      *(v13 + 82) = v4;
      *(v13 + 88) = a3;
      *(v13 + 96) = a4;

      sub_10021817C(a2, &v21);
      v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v17 = v16;
      _StringGuts.grow(_:)(27);

      v21._countAndFlagsBits = 0xD000000000000019;
      v21._object = 0x8000000100E48450;
      if (v22 == 2)
      {
        v18 = 0x64616F6C6E776F64;
      }

      else
      {
        v18 = 0x657469726F766166;
      }

      v19 = 0xE900000000000073;
      String.append(_:)(*&v18);

      AccessibilityIdentifier.init(name:)(v21);

      v20 = String._bridgeToObjectiveC()();

      [v17 setAccessibilityIdentifier:{v20, 0, 0, v11 & 1, sub_1003BEC54, v13}];

      return v17;
    }
  }

  else
  {

    return 0;
  }
}

double sub_10039AA74(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s10TVEpisodesVMa(0) + 48));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);

  return result;
}

double sub_10039AB24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s9PlaylistsVMa(0) + 40));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);

  return result;
}

double sub_10039ABD4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s11MusicVideosVMa(0) + 36));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);

  return result;
}

double sub_10039AC84(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t))
{
  v10 = *(a2 + *(_s6AlbumsVMa(0) + 32));

  if (a3)
  {
    sub_100194E54(a4);
  }

  else
  {
    sub_1003B2924(&v9, a4);
  }

  a5(v10);

  return result;
}

void sub_10039AD34()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    do
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_18:
        swift_once();
        if (byte_101218F00)
        {
          return;
        }

LABEL_13:
        if (*(v0 + 145) == 1)
        {

          sub_10039C59C();
        }

        return;
      }

      v7 = *v4;
      v8 = qword_10117F808;
      swift_unknownObjectRetain();
      if (v8 == -1)
      {
        if (byte_101218F00)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (byte_101218F00)
        {
LABEL_8:
          v5 = 0;
          goto LABEL_4;
        }
      }

      v5 = *(v0 + 145);
LABEL_4:
      ++v3;
      ObjectType = swift_getObjectType();
      (*(v7 + 16))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
      v4 += 2;
    }

    while (v2 != v3);
  }

  if (qword_10117F808 != -1)
  {
    goto LABEL_18;
  }

  if ((byte_101218F00 & 1) == 0)
  {
    goto LABEL_13;
  }
}

void *sub_10039AEB8(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for Impressions.BagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_10010CF98(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_10010CFAC(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_10047E560();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_1003BCBD8;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1003ADC64;
  v19[3] = &unk_1010A9238;
  v12 = _Block_copy(v19);

  v13 = [v11 initWithScrollView:a2 changeHandler:v12];
  _Block_release(v12);

  v14 = v9[15];
  v9[15] = v13;

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 1, sub_1003BCC08, v15);

  if (a3)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_1003BCC10, v17);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

void *sub_10039B1E8(void *a1, void *a2, char a3, char a4)
{
  *(v4 + 80) = 0;
  type metadata accessor for Impressions.BagCoordinator();
  *(v4 + 88) = swift_initStaticObject();
  swift_unknownObjectWeakInit();
  *(v4 + 104) = sub_10010CFD0(_swiftEmptyArrayStorage);
  *(v4 + 112) = sub_10010CFE4(_swiftEmptyArrayStorage);
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 1;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 192) = 1;
  *(v4 + 200) = 0x3F9999999999999ALL;
  swift_unknownObjectWeakAssign();
  *(v4 + 81) = a4;
  v9 = sub_10047E560();
  swift_unknownObjectWeakAssign();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_allocWithZone(ScrollViewContentOffsetObserver);
  v19[4] = sub_1003C0764;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1003ADC64;
  v19[3] = &unk_1010A9AD0;
  v12 = _Block_copy(v19);

  v13 = [v11 initWithScrollView:a2 changeHandler:v12];
  _Block_release(v12);

  v14 = v9[15];
  v9[15] = v13;

  v15 = swift_allocObject();
  swift_weakInit();
  v16 = UIApplicationDidBecomeActiveNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  v9[17] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 1, sub_1003C0794, v15);

  if (a3)
  {
    v17 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();
    v9[16] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillResignActiveNotification, 0, 1, 1, sub_1003C079C, v17);

    if ((a4 & 1) == 0)
    {
      return v9;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    v9[19] = &_swiftEmptySetSingleton;
  }

  return v9;
}

double sub_10039B518(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10039EE88(a1, a3);
  }

  return result;
}

void sub_10039B58C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (qword_10117F808 != -1)
    {
      v20 = Strong;
      swift_once();
      Strong = v20;
    }

    if (byte_101218F00 != 1 && *(Strong + 145) == 1)
    {
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      *v11 = static OS_dispatch_queue.main.getter();
      (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
      v13 = _dispatchPreconditionTest(_:)();
      (*(v9 + 8))(v11, v8);
      if ((v13 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v14 = [objc_opt_self() sharedApplication];
      v15 = [v14 applicationState];

      if (!v15)
      {
        Date.init()();
        v16 = swift_allocObject();
        swift_weakInit();
        (*(v3 + 16))(v5, v7, v2);
        v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        (*(v3 + 32))(v18 + v17, v5, v2);
        v19 = swift_allocObject();
        *(v19 + 16) = sub_1003BE744;
        *(v19 + 24) = v18;

        sub_100535350(sub_1003BE75C, v19);

        (*(v3 + 8))(v7, v2);
      }
    }
  }
}

void sub_10039B940(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (qword_10117F808 != -1)
    {
      v19 = Strong;
      swift_once();
      Strong = v19;
    }

    if (byte_101218F00 != 1 && *(Strong + 145) == 1)
    {
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      *v11 = static OS_dispatch_queue.main.getter();
      (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
      v13 = _dispatchPreconditionTest(_:)();
      (*(v9 + 8))(v11, v8);
      if ((v13 & 1) == 0)
      {
        __break(1u);
        return;
      }

      v14 = [objc_opt_self() sharedApplication];
      v15 = [v14 applicationState];

      if (!v15)
      {
        Date.init()();
        v16 = swift_allocObject();
        swift_weakInit();
        (*(v3 + 16))(v5, v7, v2);
        v17 = (*(v3 + 80) + 24) & ~*(v3 + 80);
        v18 = swift_allocObject();
        *(v18 + 16) = v16;
        (*(v3 + 32))(v18 + v17, v5, v2);

        sub_100534EE4(sub_1003C0BFC, v18);

        (*(v3 + 8))(v7, v2);
      }
    }
  }
}

double sub_10039BCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v10 = &v18 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = v15;
    *(v17 + 3) = &protocol witness table for MainActor;
    *(v17 + 4) = v13;
    (*(v7 + 32))(&v17[v16], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    sub_1001F4CB8(0, 0, v10, a4, v17);
  }

  return result;
}

uint64_t sub_10039BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039BF7C, v7, v6);
}

uint64_t sub_10039BF7C()
{
  v1 = *(v0 + 24);

  sub_10039FBC0(v1, sub_10039EFB0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10039BFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039C094, v7, v6);
}

uint64_t sub_10039C094()
{
  v1 = *(v0 + 24);

  sub_10039FBC0(v1, sub_10039F3F0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_10039C118()
{
  swift_beginAccess();
  *(v0 + 104) = _swiftEmptyDictionarySingleton;

  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      ObjectType = swift_getObjectType();
      v7 = *(v5 + 104);
      swift_unknownObjectRetain();
      v7(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

void sub_10039C204(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, char *, uint64_t, double), void (*a5)(uint64_t *), double a6)
{
  v39 = a4;
  v40 = a1;
  v9 = v6;
  v41 = a3;
  v11 = sub_10010FC20(a2, a3);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v37 = a5;
    swift_beginAccess();
    v19 = *(v9 + 112);
    v38 = v9;
    swift_weakInit();
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 64);
    swift_bridgeObjectRetain_n();
    swift_beginAccess();
    v23 = 0;
    v24 = (v20 + 63) >> 6;
    while (v22)
    {
LABEL_11:
      v26 = __clz(__rbit64(v22)) | (v23 << 6);
      v27 = *(v19 + 48);
      v28 = type metadata accessor for IndexPath();
      (*(*(v28 - 8) + 16))(v13, v27 + *(*(v28 - 8) + 72) * v26, v28);
      v29 = *(*(v19 + 56) + 8 * v26);
      *&v13[*(v11 + 48)] = v29;
      Strong = swift_weakLoadStrong();

      if (Strong)
      {
        v39(v29, v13, v40, a6);
      }

      v22 &= v22 - 1;
      sub_1000095E8(v13, a2, v41);
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v25 >= v24)
      {
        break;
      }

      v22 = *(v19 + 64 + 8 * v25);
      ++v23;
      if (v22)
      {
        v23 = v25;
        goto LABEL_11;
      }
    }

    swift_weakDestroy();
    v31 = v38;
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = v32;
      v34 = UIScrollView.isScrolling.getter();

      if ((v34 & 1) == 0)
      {
        v35 = *(v31 + 48);
        __chkstk_darwin();
        *(&v36 - 2) = v40;
        *(&v36 - 1) = a6;

        sub_100377034(v37, (&v36 - 4), v35);
      }
    }
  }

  else
  {
LABEL_18:
    __break(1u);
  }
}

void sub_10039C59C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(type metadata accessor for DispatchPredicate() - 8);
  __chkstk_darwin();
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v19 = v8;
    swift_once();
    v8 = v19;
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {
    v11 = v8;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    *v10 = static OS_dispatch_queue.main.getter();
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v11);
    v12 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v11);
    if (v12)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 applicationState];

      if (!v14)
      {
        Date.init()();
        v15 = swift_allocObject();
        swift_weakInit();
        (*(v2 + 16))(v4, v6, v1);
        v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v2 + 32))(v17 + v16, v4, v1);
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1003C18AC;
        *(v18 + 24) = v17;

        sub_100535350(sub_1003C1840, v18);

        (*(v2 + 8))(v6, v1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10039C918()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v19 - v5;
  v7 = *(type metadata accessor for DispatchPredicate() - 8);
  __chkstk_darwin();
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10117F808 != -1)
  {
    v18 = v8;
    swift_once();
    v8 = v18;
  }

  if ((byte_101218F00 & 1) == 0 && *(v0 + 145) == 1)
  {
    v11 = v8;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    *v10 = static OS_dispatch_queue.main.getter();
    (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v11);
    v12 = _dispatchPreconditionTest(_:)();
    (*(v7 + 8))(v10, v11);
    if (v12)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 applicationState];

      if (!v14)
      {
        Date.init()();
        v15 = swift_allocObject();
        swift_weakInit();
        (*(v2 + 16))(v4, v6, v1);
        v16 = (*(v2 + 80) + 24) & ~*(v2 + 80);
        v17 = swift_allocObject();
        *(v17 + 16) = v15;
        (*(v2 + 32))(v17 + v16, v4, v1);

        sub_100534EE4(sub_1003C18B8, v17);

        (*(v2 + 8))(v6, v1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10039CCD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, char *, uint64_t, double), void (*a6)(uint64_t *), double a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10039C204(a2, a3, a4, a5, a6, a7);
  }
}

void sub_10039CDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, void), uint64_t (*a5)(uint64_t, __n128), uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t), double a7)
{
  v67 = a6;
  v68 = a2;
  v69 = a5;
  v70 = a3;
  v73 = a4;
  v74 = a1;
  v8 = type metadata accessor for Date();
  v71 = *(v8 - 8);
  v72 = v8;
  __chkstk_darwin();
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = (&v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  *v14 = static OS_dispatch_queue.main.getter();
  v15 = enum case for DispatchPredicate.onQueue(_:);
  v16 = *(v12 + 104);
  v16(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = _dispatchPreconditionTest(_:)();
  v18 = *(v12 + 8);
  v18(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (qword_10117F808 != -1)
  {
LABEL_42:
    swift_once();
  }

  if ((byte_101218F00 & 1) != 0 || *(v75 + 145) != 1)
  {
    return;
  }

  *v14 = static OS_dispatch_queue.main.getter();
  v16(v14, v15, v11);
  v19 = _dispatchPreconditionTest(_:)();
  v18(v14, v11);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_44:
    swift_once();
LABEL_21:
    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_101218DD0);
    v23 = Logger.logObject.getter();
    v54 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v23, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v23, v54, "Paused tracking.  Container view was deallocated", v55, 2u);
    }

    goto LABEL_23;
  }

  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 applicationState];

  if (v21)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_10117F790 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

  v23 = Strong;
  v24 = v74;
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_23:

    return;
  }

  v26 = v75;
  sub_10039D910();
  v27 = v23;
  v28 = sub_10039DAF8(v24, v23, v73, a7);

  v29 = sub_100431E88(*(v24 + 16));
  v31 = v30;
  swift_beginAccess();
  v32 = *(v26 + 104);
  if (*(v32 + 16) && (, v33 = sub_100019C10(v29, v31), v35 = v34, , (v35 & 1) != 0))
  {
    v36 = *(*(v32 + 56) + 8 * v33);

    swift_beginAccess();
    v37 = *(v36 + 48);
    v40 = *(v37 + 16);
    v38 = v37 + 16;
    v39 = v40;
    if (v40)
    {
      v41 = *(v38 + 16 * v39 + 8);
      v42 = v41 == 2;
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_26:
      if (!v42 && (v41 & 1) == 0)
      {
        goto LABEL_34;
      }

      v43 = (v69)(v24);
      v56 = v71;
      v57 = v72;
      (*(v71 + 16))(v10, v70, v72);
      Date.timeIntervalSince1970.getter();
      v59 = v58;
      (*(v56 + 8))(v10, v57);
      swift_beginAccess();
      v48 = *(v43 + 48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v43 + 48) = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v67(0, *(v48 + 16) + 1, 1, v48);
        *(v43 + 48) = v48;
      }

      v62 = *(v48 + 16);
      v61 = *(v48 + 24);
      if (v62 >= v61 >> 1)
      {
        v48 = v67(v61 > 1, v62 + 1, 1, v48);
      }

      *(v48 + 16) = v62 + 1;
      v63 = v48 + 16 * v62;
      *(v63 + 32) = v59;
      *(v63 + 40) = 0;
      goto LABEL_33;
    }
  }

  else
  {

    v36 = 0;
  }

  LOBYTE(v41) = 2;
  v42 = 1;
  if (v28)
  {
    goto LABEL_26;
  }

LABEL_13:
  if (v42 || (v41 & 1) != 0)
  {
    goto LABEL_34;
  }

  v43 = (v69)(v24);
  v44 = v71;
  v45 = v72;
  (*(v71 + 16))(v10, v70, v72);
  Date.timeIntervalSince1970.getter();
  v47 = v46;
  (*(v44 + 8))(v10, v45);
  swift_beginAccess();
  v48 = *(v43 + 48);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + 48) = v48;
  if ((v49 & 1) == 0)
  {
    v48 = v67(0, *(v48 + 16) + 1, 1, v48);
    *(v43 + 48) = v48;
  }

  v51 = *(v48 + 16);
  v50 = *(v48 + 24);
  if (v51 >= v50 >> 1)
  {
    v48 = v67(v50 > 1, v51 + 1, 1, v48);
  }

  *(v48 + 16) = v51 + 1;
  v52 = v48 + 16 * v51;
  *(v52 + 32) = v47;
  *(v52 + 40) = 1;
LABEL_33:
  *(v43 + 48) = v48;
  swift_endAccess();

LABEL_34:
  v64 = *(v75 + 152);
  if (!v64)
  {

    goto LABEL_38;
  }

  if (v36)
  {

    v65 = sub_10048C5C4(v68, v64);

    *(v36 + 41) = v65 & 1;
LABEL_38:

    return;
  }
}

uint64_t sub_10039D4E0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_100431E88(v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_100019C10(v5, v7);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      goto LABEL_11;
    }
  }

  if (*(a1 + 32))
  {
    v12 = qword_10117F810;

    if (v12 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v13 = qword_101193E90;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  sub_10010FC20(&unk_10118CEA8, &unk_100EC8AD0);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 513;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 16) = v4;
  *(v11 + 24) = v13;

  v14 = sub_100431E88(v4);
  v16 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_1006C6130(v11, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v2 + 104) = v19;
  swift_endAccess();
LABEL_11:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v11 + 32) = *(v2 + 64);
    *(v11 + 40) = 0;
  }

  return v11;
}

uint64_t sub_10039D6F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = sub_100431E88(v4);
  v7 = v6;
  swift_beginAccess();
  v8 = *(v1 + 104);
  if (*(v8 + 16))
  {

    v9 = sub_100019C10(v5, v7);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      goto LABEL_11;
    }
  }

  if (*(a1 + 32))
  {
    v12 = qword_10117F810;

    if (v12 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v13 = qword_101193E90;
  }

  else
  {
    v13 = *(a1 + 24);
  }

  sub_10010FC20(&unk_10118D040, &qword_100EC8D58);
  v11 = swift_allocObject();
  *(v11 + 32) = 0;
  *(v11 + 40) = 513;
  *(v11 + 48) = _swiftEmptyArrayStorage;
  *(v11 + 16) = v4;
  *(v11 + 24) = v13;

  v14 = sub_100431E88(v4);
  v16 = v15;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 104);
  *(v2 + 104) = 0x8000000000000000;
  sub_1006C6158(v11, v14, v16, isUniquelyReferenced_nonNull_native);

  *(v2 + 104) = v19;
  swift_endAccess();
LABEL_11:
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v11 + 32) = *(v2 + 64);
    *(v11 + 40) = 0;
  }

  return v11;
}

void sub_10039D910()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
LABEL_2:

    swift_unknownObjectRelease();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v2 = [Strong parentViewController];
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      v6 = v0;
      v7 = v3;
LABEL_14:

      ObjectType = swift_getObjectType();
      (*(v5 + 8))(ObjectType, v5);
      v12 = v11;
      v13 = v6;
      v14 = swift_unknownObjectWeakLoadStrong();
      *(v13 + 24) = v12;
      swift_unknownObjectWeakAssign();
      sub_10047DDD0(v14);

      swift_unknownObjectRelease();
      goto LABEL_2;
    }

    v7 = v3;
    while (1)
    {
      v8 = v7;

      v7 = [v7 parentViewController];
      if (!v7)
      {
        break;
      }

      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v5 = v9;
        v6 = v0;
        goto LABEL_14;
      }
    }
  }
}

uint64_t sub_10039DAF8(uint64_t a1, void *a2, uint64_t (*a3)(id, uint64_t, void), double a4)
{
  if (a2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = a2;
      if ([v9 isHidden] & 1) == 0 && objc_msgSend(v9, "_isInAWindow") && (v11 = swift_unknownObjectWeakLoadStrong(), v12 = a3(v10, v11, *(v4 + 24)), swift_unknownObjectRelease(), (v12))
      {
        [v10 visibleBounds];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        [v10 adjustedContentInset];
        sub_100058728(v14, v16, v18, v20, v21, v22);
        [v9 frame];
        v45 = v23;
        v24 = CGRect.isContained(in:percentage:)();
        if (*(a1 + 48) > 1u)
        {
          if (*(a1 + 48) != 2)
          {
            [v9 frame];
            [v9 convertRect:v10 toCoordinateSpace:?];
            [v10 visibleBounds];
            v25 = CGRect.isContained(in:percentage:)();
            goto LABEL_17;
          }

          v43 = [v9 superview];
          if (!v43)
          {
            goto LABEL_22;
          }

          v44 = v43;
          [v9 frame];
          [v44 convertRect:v10 toCoordinateSpace:?];
          v25 = CGRect.isContained(in:percentage:)();

          v10 = v9;
          v9 = v44;
        }

        else
        {
          v25 = v24;
          if (*(a1 + 48))
          {
            if (v24)
            {
              if (swift_unknownObjectWeakLoadStrong())
              {
                v26 = *(v4 + 24);
                ObjectType = swift_getObjectType();
                v28 = (*(v26 + 88))(ObjectType, v26);
                swift_unknownObjectRelease();
                if (v28)
                {
                  if (v28 != a2 && (v29 = swift_unknownObjectWeakLoadStrong()) != 0 && (v30 = v29, v31 = [v29 superview], v30, v31))
                  {
                    [v28 visibleBounds];
                    v33 = v32;
                    v35 = v34;
                    v37 = v36;
                    v39 = v38;
                    [v28 adjustedContentInset];
                    sub_100058728(v33, v35, v37, v39, v40, v41);
                    [v9 frame];
                    [v31 convertRect:v28 toCoordinateSpace:?];
                    v25 = CGRect.isContained(in:percentage:)();

                    v10 = v28;
                    v9 = v31;
                  }

                  else
                  {

                    v25 = 1;
                    v10 = v28;
                  }

                  goto LABEL_17;
                }
              }
            }

LABEL_22:
            v25 = 1;
          }
        }
      }

      else
      {
        v25 = 0;
      }

LABEL_17:

      return v25 & 1;
    }
  }

  v25 = 0;
  return v25 & 1;
}

uint64_t sub_10039DEEC(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, uint64_t))
{
  if (!a2)
  {
    return 1;
  }

  ObjectType = swift_getObjectType();
  v8 = (*(a3 + 88))(ObjectType, a3);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = a1;
  v11 = [v10 superview];
  if (v11)
  {
    while (1)
    {

      if (v10)
      {
        v13 = [v10 superview];
        if (v13)
        {
          v14 = v13;

          if (v14 == v9)
          {
            break;
          }
        }
      }

      v12 = [v10 superview];

      v11 = [v12 superview];
      v10 = v12;
      if (!v11)
      {
        goto LABEL_10;
      }
    }
  }

  v12 = v10;
LABEL_10:
  [v9 visibleBounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = [v9 adjustedContentInset];
  if (v12)
  {
    v26 = sub_100058728(v16, v18, v20, v22, v24, v25);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v12 frame];
    v42.origin.x = v33;
    v42.origin.y = v34;
    v42.size.width = v35;
    v42.size.height = v36;
    v41.origin.x = v26;
    v41.origin.y = v28;
    v41.size.width = v30;
    v41.size.height = v32;
    if (CGRectIntersectsRect(v41, v42))
    {
      v37 = swift_getObjectType();
      v38 = (*(a3 + 32))(v37, a3);
      v40 = a4(v9, v38, v39);

      swift_unknownObjectRelease();
      return v40 & 1;
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039E110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v5 = type metadata accessor for Date();
  v55 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v9 = &v53 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v9, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_10118BCE0, &qword_100EC6450);
    return;
  }

  (*(v11 + 32))(v13, v9, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_25;
  }

  v15 = Strong;
  v16 = sub_100391EC8(v13);

  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = sub_100431E88(v16);
  v19 = v18;
  swift_beginAccess();
  if (*(v3[13] + 16))
  {

    sub_100019C10(v17, v19);
    v21 = v20;

    if (v21)
    {

LABEL_25:
      (*(v11 + 8))(v13, v10);
      return;
    }
  }

  swift_beginAccess();
  v22 = v3[14];
  if (!*(v22 + 16))
  {
LABEL_16:
    v36 = qword_10117F810;

    if (v36 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003BE72C);
    v37 = qword_101193E90;
    sub_10010FC20(&unk_10118CEA8, &unk_100EC8AD0);
    v38 = swift_allocObject();
    *(v38 + 32) = 0;
    *(v38 + 40) = 513;
    *(v38 + 48) = _swiftEmptyArrayStorage;
    v39 = (v38 + 48);
    v53 = v16;
    *(v38 + 16) = v16;
    *(v38 + 24) = v37;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v38 + 32) = v3[8];
      *(v38 + 40) = 0;
    }

    v40 = v55;
    (*(v55 + 16))(v7, v54, v5);
    Date.timeIntervalSince1970.getter();
    v42 = v41;
    (*(v40 + 8))(v7, v5);
    swift_beginAccess();
    v43 = *v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v43 = sub_100499F10(0, *(v43 + 2) + 1, 1, v43);
      *v39 = v43;
    }

    v46 = *(v43 + 2);
    v45 = *(v43 + 3);
    v47 = v53;
    if (v46 >= v45 >> 1)
    {
      v43 = sub_100499F10((v45 > 1), v46 + 1, 1, v43);
    }

    *(v43 + 2) = v46 + 1;
    v48 = &v43[16 * v46];
    *(v48 + 4) = v42;
    v48[40] = 0;
    *(v38 + 48) = v43;
    swift_endAccess();
    v49 = sub_100431E88(v47);
    v51 = v50;

    swift_beginAccess();

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v3[13];
    v3[13] = 0x8000000000000000;
    sub_1006C6130(v38, v49, v51, v52);

    v3[13] = v56;
    swift_endAccess();

    goto LABEL_25;
  }

  v23 = sub_1006BE9F0(v13);
  if ((v24 & 1) == 0)
  {

    goto LABEL_16;
  }

  v25 = v23;

  v26 = *(*(v22 + 56) + 8 * v25);

  v27 = sub_10039D4E0(v26);
  v28 = v55;
  (*(v55 + 16))(v7, v54, v5);
  Date.timeIntervalSince1970.getter();
  v30 = v29;
  (*(v28 + 8))(v7, v5);
  swift_beginAccess();
  v31 = *(v27 + 48);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 48) = v31;
  if ((v32 & 1) == 0)
  {
    v31 = sub_100499F10(0, *(v31 + 2) + 1, 1, v31);
    *(v27 + 48) = v31;
  }

  v34 = *(v31 + 2);
  v33 = *(v31 + 3);
  if (v34 >= v33 >> 1)
  {
    v31 = sub_100499F10((v33 > 1), v34 + 1, 1, v31);
  }

  *(v31 + 2) = v34 + 1;
  v35 = &v31[16 * v34];
  *(v35 + 4) = v30;
  v35[40] = 0;
  *(v27 + 48) = v31;
  swift_endAccess();

  (*(v11 + 8))(v13, v10);
}

void sub_10039E78C(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v63 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v8 = &v60 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v8, &unk_10118BCE0, &qword_100EC6450);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_10118BCE0, &qword_100EC6450);
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_28;
  }

  v60 = v5;
  v61 = v4;
  v62 = v2;
  v14 = (Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
  v15 = Strong;
  swift_beginAccess();
  v16 = *v14;
  v17 = v14[1];
  ObjectType = swift_getObjectType();
  v66[0] = v16;
  v19 = v12;
  v20 = *(v17 + 448);
  swift_unknownObjectRetain();
  v21 = v20(v19, ObjectType, v17);
  swift_unknownObjectRelease();

  if (!v21)
  {
    (*(v10 + 8))(v19, v9);
    return;
  }

  v22 = sub_100431E88(v21);
  v24 = v23;
  v25 = v62;
  swift_beginAccess();
  v12 = v19;
  if (*(v25[13] + 16))
  {

    sub_100019C10(v22, v24);
    v27 = v26;

    v29 = v60;
    v28 = v61;
    if (v27)
    {

LABEL_28:
      (*(v10 + 8))(v12, v9);
      return;
    }
  }

  else
  {

    v29 = v60;
    v28 = v61;
  }

  swift_beginAccess();
  v30 = v25[14];
  if (!*(v30 + 16))
  {
LABEL_19:
    v44 = qword_10117F810;

    if (v44 != -1)
    {
      swift_once();
    }

    UnfairLock.locked<A>(_:)(sub_1003C18BC);
    v45 = qword_101193E90;
    sub_10010FC20(&unk_10118D040, &qword_100EC8D58);
    v46 = swift_allocObject();
    *(v46 + 32) = 0;
    *(v46 + 40) = 513;
    *(v46 + 48) = _swiftEmptyArrayStorage;
    v47 = (v46 + 48);
    *(v46 + 16) = v21;
    *(v46 + 24) = v45;
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      *(v46 + 32) = v25[8];
      *(v46 + 40) = 0;
    }

    v48 = v63;
    (*(v29 + 16))(v63, v64, v28);
    Date.timeIntervalSince1970.getter();
    v50 = v49;
    (*(v29 + 8))(v48, v28);
    swift_beginAccess();
    v51 = *v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v47 = v51;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v51 = sub_100499F24(0, *(v51 + 2) + 1, 1, v51);
      *v47 = v51;
    }

    v54 = *(v51 + 2);
    v53 = *(v51 + 3);
    if (v54 >= v53 >> 1)
    {
      v51 = sub_100499F24((v53 > 1), v54 + 1, 1, v51);
    }

    *(v51 + 2) = v54 + 1;
    v55 = &v51[16 * v54];
    *(v55 + 4) = v50;
    v55[40] = 0;
    *(v46 + 48) = v51;
    swift_endAccess();
    v56 = sub_100431E88(v21);
    v58 = v57;

    swift_beginAccess();

    v59 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v25[13];
    v25[13] = 0x8000000000000000;
    sub_1006C6158(v46, v56, v58, v59);

    v25[13] = v65;
    swift_endAccess();

    goto LABEL_28;
  }

  v31 = sub_1006BE9F0(v12);
  if ((v32 & 1) == 0)
  {

    goto LABEL_19;
  }

  v33 = v31;

  v34 = *(*(v30 + 56) + 8 * v33);

  v35 = sub_10039D6F8(v34);
  v36 = v63;
  (*(v29 + 16))(v63, v64, v28);
  Date.timeIntervalSince1970.getter();
  v38 = v37;
  (*(v29 + 8))(v36, v28);
  swift_beginAccess();
  v39 = *(v35 + 48);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *(v35 + 48) = v39;
  if ((v40 & 1) == 0)
  {
    v39 = sub_100499F24(0, *(v39 + 2) + 1, 1, v39);
    *(v35 + 48) = v39;
  }

  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  if (v42 >= v41 >> 1)
  {
    v39 = sub_100499F24((v41 > 1), v42 + 1, 1, v39);
  }

  *(v39 + 2) = v42 + 1;
  v43 = &v39[16 * v42];
  *(v43 + 4) = v38;
  v43[40] = 0;
  *(v35 + 48) = v39;
  swift_endAccess();

  (*(v10 + 8))(v12, v9);
}

void sub_10039EE88(void *a1, void (*a2)(void))
{
  if (qword_10117F808 != -1)
  {
    v18 = a1;
    v19 = a2;
    swift_once();
    a2 = v19;
    a1 = v18;
  }

  if ((byte_101218F00 & 1) == 0 && *(v2 + 145) == 1)
  {
    if ((*(v2 + 192) & 1) != 0 || ((v4 = *(v2 + 176), v3 = *(v2 + 184), v5 = a1, v6 = a2, [a1 contentOffset], a2 = v6, a1 = v5, v4 == v8) ? (v9 = v3 == v7) : (v9 = 0), !v9))
    {
      v10 = a1;
      if (*(v2 + 168))
      {
        a2();
        Current = CFAbsoluteTimeGetCurrent();
      }

      else
      {
        v12 = *(v2 + 160);
        v13 = a2;
        v14 = CFAbsoluteTimeGetCurrent();
        if (v14 - v12 <= 0.025)
        {
          return;
        }

        v15 = v14;
        v13();
        Current = v15;
      }

      *(v2 + 160) = Current;
      *(v2 + 168) = 0;
      [v10 contentOffset];
      *(v2 + 176) = v16;
      *(v2 + 184) = v17;
      *(v2 + 192) = 0;
    }
  }
}

uint64_t sub_10039EFB0(unsigned __int16 a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for DispatchTime();
  v36 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v16 = 1;
  }

  else
  {
    v16 = (a1 & 4) == 0;
  }

  if (v16)
  {
    v33 = a1;
    sub_10039E110(a3, a2);
    v17 = dispatch_semaphore_create(1);
    v35 = v8;
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v32[1] = v19 + 16;
    v34 = *(v4 + 88);
    v20 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = v33;
    *(v23 + 24) = v19;
    *(v23 + 32) = v20;
    (*(v12 + 32))(v23 + v21, v14, v11);
    *(v23 + v22) = v18;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1003BCD40;
    *(v24 + 24) = v23;

    v25 = v18;

    sub_100535350(sub_1003BCD7C, v24);

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter(v26);
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v36 + 8))(v10, v35);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v27 = *(v19 + 16);

      return v27;
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000060E4(v28, qword_101218DD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Semaphore returned a non-success code.  No impressions were generated", v31, 2u);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10039F3F0(unsigned __int16 a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = type metadata accessor for DispatchTime();
  v35 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = 0;
  if (*(*(v4 + 104) + 16))
  {
    v16 = 1;
  }

  else
  {
    v16 = (a1 & 4) == 0;
  }

  if (v16)
  {
    v33 = a1;
    sub_10039E78C(a3, a2);
    v17 = dispatch_semaphore_create(1);
    v34 = v8;
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = _swiftEmptyArrayStorage;
    v20 = *(v4 + 88);
    v32[1] = v19 + 16;
    v32[2] = v20;
    v21 = swift_allocObject();
    swift_weakInit();
    (*(v12 + 16))(v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
    v22 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = swift_allocObject();
    *(v24 + 16) = v33;
    *(v24 + 24) = v19;
    *(v24 + 32) = v21;
    (*(v12 + 32))(v24 + v22, v14, v11);
    *(v24 + v23) = v18;

    v25 = v18;
    sub_100535104(sub_1003C0A78, v24);

    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    static OS_dispatch_queue.UIFeedbackDeadline.getter(v26);
    OS_dispatch_semaphore.wait(timeout:)();
    (*(v35 + 8))(v10, v34);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {

      swift_beginAccess();
      v27 = *(v19 + 16);

      return v27;
    }

    else
    {
      if (qword_10117F790 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_1000060E4(v28, qword_101218DD0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Semaphore returned a non-success code.  No impressions were generated", v31, 2u);
      }

      return 0;
    }
  }

  return result;
}

void sub_10039F7F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t), double a9, void (*a10)(__int128 *))
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v19 = &v41 - v18;
  v20 = (a2 + 16);
  if ((a1 & 4) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      v42 = a5;
      swift_beginAccess();
      v32 = *(v31 + 104);

      if (a1)
      {
        v34 = sub_1003BA23C(v32, a6, a7);

        v32 = v34;
      }

      __chkstk_darwin();
      *(&v41 - 32) = a1 & 1;
      *(&v41 - 3) = a4;
      *(&v41 - 2) = a9;
      sub_1003BB29C(v32, a8);
      v33 = v35;
    }

    else
    {
      v33 = 0;
    }

    swift_beginAccess();
    *v20 = v33;

    goto LABEL_17;
  }

  swift_beginAccess();
  v21 = swift_weakLoadStrong();
  if (!v21)
  {
LABEL_17:
    OS_dispatch_semaphore.signal()();
    return;
  }

  v22 = v21;
  v42 = a5;
  swift_retain_n();
  swift_getObjectType();
  v23 = &off_1010ADC50;
  v24 = sub_100481AB4();
  v26 = v25;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v24)
  {
    do
    {
      v23 = v26;
      swift_unknownObjectRelease();
      ObjectType = swift_getObjectType();
      v28 = (*(v26 + 32))(ObjectType, v26);
      v26 = v29;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }

    while (v28);
  }

  swift_beginAccess();
  if (*v20)
  {
    v36 = a1 | 4u;
    v37 = swift_getObjectType();
    v38 = type metadata accessor for IndexPath();
    (*(*(v38 - 8) + 56))(v19, 1, 1, v38);
    v39 = sub_100431F44(v36, a4, v19, v37, v23);
    sub_1000095E8(v19, &unk_10118BCE0, &qword_100EC6450);
    if (v39)
    {
      sub_1001254E4(v39);
    }

    v40 = (v23[7])(v37, v23);
    __chkstk_darwin();
    *(&v41 - 4) = v22;
    *(&v41 - 12) = v36;
    *(&v41 - 2) = a4;
    *(&v41 - 1) = v20;
    sub_100376F9C(a10, (&v41 - 6), v40);

    swift_endAccess();
    swift_unknownObjectRelease();

    goto LABEL_17;
  }

  __break(1u);
}

void sub_10039FBC0(uint64_t a1, uint64_t (*a2)(uint64_t, char *, char *))
{
  sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  __chkstk_darwin();
  v5 = &v35 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = &v35 - v10;
  if (qword_10117F808 != -1)
  {
    swift_once();
  }

  if ((byte_101218F00 & 1) == 0 && *(v2 + 145) == 1)
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    Date.init()();
    v13 = a2(2, v9, v11);
    (*(v7 + 8))(v9, v6);
    sub_1000095E8(v11, &unk_10118BCE0, &qword_100EC6450);
    if (v13)
    {
      if (!*(v13 + 16))
      {

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v15 = Strong;
        ObjectType = swift_getObjectType();
        v17 = swift_conformsToProtocol2();
        if (!v17)
        {
          __break(1u);
          return;
        }

        (*(v17 + 16))(ObjectType, v17);
      }

      else
      {
        v18 = type metadata accessor for MetricsPageProperties(0);
        (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      }

      v19 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v20 = *(v13 + 16);
      if (v20)
      {
        v35 = v19;
        v36 = _swiftEmptyArrayStorage;
        v21 = v19;
        sub_10066CB8C(0, v20, 0);
        v22 = 32;
        v23 = v36;
        do
        {
          v24 = *(v13 + v22);
          v36 = v23;
          v26 = v23[2];
          v25 = v23[3];

          if (v26 >= v25 >> 1)
          {
            sub_10066CB8C((v25 > 1), v26 + 1, 1);
            v23 = v36;
          }

          v23[2] = v26 + 1;
          v23[v26 + 4] = v24;
          v22 += 8;
          --v20;
        }

        while (v20);

        v19 = v35;
      }

      else
      {
        v27 = v19;

        v23 = _swiftEmptyArrayStorage;
      }

      v28 = sub_10053771C();
      v30 = v29;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v31 = qword_101218AD0;
      v32 = GroupActivitiesManager.hasJoined.getter();
      v33 = GroupActivitiesManager.participantsCount.getter();
      v34 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      (*((swift_isaMask & *v19) + 0xA8))(v23, v5, v28, v30, v32 & 1, v33, *(v31 + v34));

      sub_10039C118();
      sub_1000095E8(v5, &unk_1011839D0, &qword_100EBF430);
    }
  }
}

uint64_t sub_1003A0064(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t *, double))
{
  v12 = *(a4 + 16);
  strcpy(&v27, "impressionId");
  BYTE13(v27) = 0;
  HIWORD(v27) = -5120;

  AnyHashable.init<A>(_:)();
  v13 = *(a4 + 24);
  v28 = &type metadata for Int;
  *&v27 = v13;
  sub_100016270(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10006800C(v26, v29, isUniquelyReferenced_nonNull_native);
  sub_10001621C(v29);
  v15 = v12;
  v30 = v12;
  if ((*(a4 + 40) & 1) == 0)
  {
    v16 = *(a4 + 32);
    *&v27 = 0xD000000000000012;
    *(&v27 + 1) = 0x8000000100E484A0;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Int;
    *&v27 = v16;
    sub_100016270(&v27, v26);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v17);
    sub_10001621C(v29);
    v30 = v15;
  }

  v18 = *(a4 + 41);
  if (v18 != 2)
  {
    strcpy(&v27, "motionActive");
    BYTE13(v27) = 0;
    HIWORD(v27) = -5120;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Bool;
    LOBYTE(v27) = v18 & 1;
    sub_100016270(&v27, v26);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v19);
    sub_10001621C(v29);
    *&v27 = 0x76416E6F69746F6DLL;
    *(&v27 + 1) = 0xEF656C62616C6961;
    AnyHashable.init<A>(_:)();
    v28 = &type metadata for Bool;
    LOBYTE(v27) = v18 & 1;
    sub_100016270(&v27, v26);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v20);
    sub_10001621C(v29);
    v30 = v15;
  }

  if (a5)
  {
    *&v27 = 0x6973736572706D69;
    *(&v27 + 1) = 0xEF73656D69546E6FLL;
    AnyHashable.init<A>(_:)();
    sub_10010FC20(&qword_10118CE90, &qword_100EC8AB8);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6B0;
    Date.timeIntervalSince1970.getter();
    *(v21 + 32) = Double.toMillisecondsInServerTime.getter(v22);
    v28 = sub_10010FC20(&qword_10118CE98, &qword_100EC8AC0);
    *&v27 = v21;
    sub_100016270(&v27, v26);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_10006800C(v26, v29, v23);
    sub_10001621C(v29);
    return v15;
  }

  else
  {
    swift_beginAccess();

    a7(v25, a6, &v30, a1);

    return v30;
  }
}

void sub_1003A0418(uint64_t a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a2.n128_f64[0];
    v8 = 0.0;
    v9 = a2.n128_f64[0];
    v10 = (a1 + 40);
    v11 = _swiftEmptyArrayStorage;
    v12 = 0.0;
    v13 = 1;
    v14 = 1;
    v15 = _swiftEmptyArrayStorage;
    while (1)
    {
      v16 = *(v10 - 1);
      if (*v10)
      {
        if ((v14 & 1) == 0)
        {
          v8 = *(v10 - 1);
        }

        v13 &= v14;
        goto LABEL_6;
      }

      if (v14)
      {
        v14 = 0;
        v12 = *(v10 - 1);
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          if (v16 - v8 >= 0.0166666667)
          {
            if (v8 - v12 > 0.0166666667)
            {
              v17 = sub_1005369B8(v12, v8);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v11 = sub_100499EEC(0, v11[2] + 1, 1, v11);
              }

              v19 = v11[2];
              v18 = v11[3];
              if (v19 >= v18 >> 1)
              {
                v11 = sub_100499EEC((v18 > 1), v19 + 1, 1, v11);
              }

              v11[2] = v19 + 1;
              v11[v19 + 4] = v17;
              if (!*(v17 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v11 = sub_100499EEC(0, v11[2] + 1, 1, v11);
LABEL_42:
                v31 = v11[2];
                v30 = v11[3];
                v19 = v31 + 1;
                if (v31 >= v30 >> 1)
                {
                  v11 = sub_100499EEC((v30 > 1), v31 + 1, 1, v11);
                }

                v11[2] = v19;
                v11[v31 + 4] = v17;
                if (*(v17 + 16))
                {
                  v32 = sub_100019C10(100, 0xE100000000000000);
                  if (v33)
                  {
                    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v7 > -1.0)
                      {
                        if (v7 < 1.84467441e19)
                        {
                          if (*(*(v17 + 56) + 8 * v32) > v9)
                          {
                            if (*(v17 + 16))
                            {
                              v34 = sub_100019C10(115, 0xE100000000000000);
                              if (v35)
                              {
                                v19 = *(*(v17 + 56) + 8 * v34);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v15 = sub_100499DDC(0, *(v15 + 2) + 1, 1, v15);
LABEL_53:
                              v37 = *(v15 + 2);
                              v36 = *(v15 + 3);
                              if (v37 >= v36 >> 1)
                              {
                                v15 = sub_100499DDC((v36 > 1), v37 + 1, 1, v15);
                              }

                              *(v15 + 2) = v37 + 1;
                              *&v15[8 * v37 + 32] = v19;
LABEL_56:
                              if (!v11[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v11[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v15 + 2))
                          {
                            goto LABEL_61;
                          }

LABEL_58:
                          *&v43 = 0x6973736572706D69;
                          *(&v43 + 1) = 0xEF73656D69546E6FLL;
                          AnyHashable.init<A>(_:)();
                          v44 = sub_10010FC20(&qword_10118CE98, &qword_100EC8AC0);
                          *&v43 = v15;
                          sub_100016270(&v43, v42);
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v41 = *a5;
                          sub_10006800C(v42, v45, isUniquelyReferenced_nonNull_native);
                          sub_10001621C(v45);
                          *a5 = v41;
                          return;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v20 = sub_100019C10(100, 0xE100000000000000);
              if ((v21 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (v7 <= -1.0)
              {
                goto LABEL_65;
              }

              if (v7 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v17 + 56) + 8 * v20) > v9)
              {
                if (!*(v17 + 16))
                {
                  goto LABEL_73;
                }

                v22 = sub_100019C10(115, 0xE100000000000000);
                if ((v23 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v24 = *(*(v17 + 56) + 8 * v22);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v15 = sub_100499DDC(0, *(v15 + 2) + 1, 1, v15);
                }

                v26 = *(v15 + 2);
                v25 = *(v15 + 3);
                if (v26 >= v25 >> 1)
                {
                  v15 = sub_100499DDC((v25 > 1), v26 + 1, 1, v15);
                }

                v8 = 0.0;
                v14 = 0;
                *(v15 + 2) = v26 + 1;
                *&v15[8 * v26 + 32] = v24;
                goto LABEL_34;
              }
            }

            v8 = 0.0;
            v14 = 0;
LABEL_34:
            v13 = 1;
            v12 = v16;
            goto LABEL_6;
          }

          v8 = 0.0;
        }

        v14 = 0;
        v13 = 1;
      }

LABEL_6:
      v10 += 2;
      if (!--v6)
      {
        if ((v14 & 1) == 0)
        {
          if (v13)
          {
            v27 = v12;
            Date.timeIntervalSince1970.getter();
            v29 = v28;
            v12 = v27;
          }

          else
          {
            v29 = v8;
          }

          v17 = sub_1005369B8(v12, v29);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  *(&v43 + 1) = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v44 = sub_10010FC20(&qword_10118CEA0, &qword_100EC8AC8);
  *&v43 = v11;
  sub_100016270(&v43, v42);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *a5;
  sub_10006800C(v42, v45, v38);
  sub_10001621C(v45);
  *a5 = v40;
  if (*(v15 + 2))
  {
    goto LABEL_58;
  }

LABEL_61:
}

void sub_1003A09E0(uint64_t isUniquelyReferenced_nonNull_native, __n128 a2, __n128 a3)
{
  v3 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v3)
  {
    v4 = a2.n128_f64[0];
    v5 = 0.0;
    v6 = a2.n128_f64[0];
    v7 = (isUniquelyReferenced_nonNull_native + 40);
    v8 = _swiftEmptyArrayStorage;
    v9 = 0.0;
    v10 = 1;
    v11 = 1;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      v13 = *(v7 - 1);
      if (*v7)
      {
        if ((v11 & 1) == 0)
        {
          v5 = *(v7 - 1);
        }

        v10 &= v11;
        goto LABEL_6;
      }

      if (v11)
      {
        v11 = 0;
        v9 = *(v7 - 1);
      }

      else
      {
        if ((v10 & 1) == 0)
        {
          if (v13 - v5 >= 0.0166666667)
          {
            if (v5 - v9 > 0.0166666667)
            {
              v14 = sub_1005369B8(v9, v5);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = sub_100499EEC(0, v8[2] + 1, 1, v8);
              }

              v16 = v8[2];
              v15 = v8[3];
              if (v16 >= v15 >> 1)
              {
                v8 = sub_100499EEC((v15 > 1), v16 + 1, 1, v8);
              }

              v8[2] = v16 + 1;
              v8[v16 + 4] = v14;
              if (!*(v14 + 16))
              {
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                v8 = sub_100499EEC(0, v8[2] + 1, 1, v8);
LABEL_42:
                v28 = v8[2];
                v27 = v8[3];
                v16 = v28 + 1;
                if (v28 >= v27 >> 1)
                {
                  v8 = sub_100499EEC((v27 > 1), v28 + 1, 1, v8);
                }

                v8[2] = v16;
                v8[v28 + 4] = v14;
                if (*(v14 + 16))
                {
                  v29 = sub_100019C10(100, 0xE100000000000000);
                  if (v30)
                  {
                    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v4 > -1.0)
                      {
                        if (v4 < 1.84467441e19)
                        {
                          if (*(*(v14 + 56) + 8 * v29) > v6)
                          {
                            if (*(v14 + 16))
                            {
                              v31 = sub_100019C10(115, 0xE100000000000000);
                              if (v32)
                              {
                                v16 = *(*(v14 + 56) + 8 * v31);

                                if (swift_isUniquelyReferenced_nonNull_native())
                                {
                                  goto LABEL_53;
                                }

                                goto LABEL_77;
                              }

LABEL_76:
                              __break(1u);
LABEL_77:
                              v12 = sub_100499DDC(0, *(v12 + 2) + 1, 1, v12);
LABEL_53:
                              v34 = *(v12 + 2);
                              v33 = *(v12 + 3);
                              if (v34 >= v33 >> 1)
                              {
                                v12 = sub_100499DDC((v33 > 1), v34 + 1, 1, v12);
                              }

                              *(v12 + 2) = v34 + 1;
                              *&v12[8 * v34 + 32] = v16;
LABEL_56:
                              if (!v8[2])
                              {
                                goto LABEL_60;
                              }

                              goto LABEL_57;
                            }

LABEL_75:
                            __break(1u);
                            goto LABEL_76;
                          }

                          if (v8[2])
                          {
                            goto LABEL_57;
                          }

LABEL_60:

                          if (!*(v12 + 2))
                          {
                            goto LABEL_61;
                          }

LABEL_58:
                          v35 = 0x6973736572706D69;
                          v36 = 0xEF73656D69546E6FLL;
                          AnyHashable.init<A>(_:)();
                          v37 = sub_10010FC20(&qword_10118CE98, &qword_100EC8AC0);
                          v35 = v12;
                          sub_1004078C4(&v35, v38);
                          return;
                        }

LABEL_72:
                        __break(1u);
LABEL_73:
                        __break(1u);
LABEL_74:
                        __break(1u);
                        goto LABEL_75;
                      }

LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_70:
                    __break(1u);
                    goto LABEL_71;
                  }
                }

                else
                {
                  __break(1u);
                }

                __break(1u);
                goto LABEL_70;
              }

              v17 = sub_100019C10(100, 0xE100000000000000);
              if ((v18 & 1) == 0)
              {
                goto LABEL_63;
              }

              if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_64;
              }

              if (v4 <= -1.0)
              {
                goto LABEL_65;
              }

              if (v4 >= 1.84467441e19)
              {
                goto LABEL_66;
              }

              if (*(*(v14 + 56) + 8 * v17) > v6)
              {
                if (!*(v14 + 16))
                {
                  goto LABEL_73;
                }

                v19 = sub_100019C10(115, 0xE100000000000000);
                if ((v20 & 1) == 0)
                {
                  goto LABEL_74;
                }

                v21 = *(*(v14 + 56) + 8 * v19);

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v12 = sub_100499DDC(0, *(v12 + 2) + 1, 1, v12);
                }

                v23 = *(v12 + 2);
                v22 = *(v12 + 3);
                if (v23 >= v22 >> 1)
                {
                  v12 = sub_100499DDC((v22 > 1), v23 + 1, 1, v12);
                }

                v5 = 0.0;
                v11 = 0;
                *(v12 + 2) = v23 + 1;
                *&v12[8 * v23 + 32] = v21;
                goto LABEL_34;
              }
            }

            v5 = 0.0;
            v11 = 0;
LABEL_34:
            v10 = 1;
            v9 = v13;
            goto LABEL_6;
          }

          v5 = 0.0;
        }

        v11 = 0;
        v10 = 1;
      }

LABEL_6:
      v7 += 2;
      if (!--v3)
      {
        if ((v11 & 1) == 0)
        {
          if (v10)
          {
            v24 = v9;
            Date.timeIntervalSince1970.getter();
            v26 = v25;
            v9 = v24;
          }

          else
          {
            v26 = v5;
          }

          v14 = sub_1005369B8(v9, v26);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_67;
          }

          goto LABEL_42;
        }

        goto LABEL_56;
      }
    }
  }

  v8 = _swiftEmptyArrayStorage;
  v12 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_60;
  }

LABEL_57:
  v36 = 0xEA00000000006F66;
  AnyHashable.init<A>(_:)();
  v37 = sub_10010FC20(&qword_10118CEA0, &qword_100EC8AC8);
  v35 = v8;
  sub_1004078C4(&v35, v38);
  if (*(v12 + 2))
  {
    goto LABEL_58;
  }

LABEL_61:
}

uint64_t sub_1003A0F90(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118D050, &qword_100EC8D68);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30[-v6];
  v8 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&qword_10118D058, &qword_100EC8D70) - 8;
  __chkstk_darwin();
  v13 = &v30[-v12];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v10, _s10TVEpisodesVMa);
  sub_1003C16C8(v10, v13, _s10TVEpisodesVMa);
  v14 = sub_10003D8C4(&qword_10118D060, _s10TVEpisodesVMa, &unk_100ED9FE0);
  (*(v14 + 48))(v8, v14);
  sub_100020674(&qword_10118D068, &qword_10118D050, &qword_100EC8D68, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v15 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  sub_1003C1730(v10, _s10TVEpisodesVMa);
  *&v13[*(v11 + 44)] = v15;
  sub_10010FC20(&unk_10118D070, &qword_100EC8D98);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v13, v16, v17, v18);
  sub_1003A38C8();
  sub_1003A454C();
  sub_1003A5634();
  sub_1003C1730(a1, _s10TVEpisodesVMa);
  v19 = *(v2 + 48);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = (v19 + *(*v19 + 120));
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  *v21 = sub_1003BC908;
  v21[1] = v20;

  sub_100020438(v22, v23);

  v24 = *(v2 + 48);
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = (v24 + *(*v24 + 128));
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = sub_1003BC938;
  v26[1] = v25;

  sub_100020438(v27, v28);

  return v2;
}

uint64_t sub_1003A13B8(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = sub_10010FC20(&qword_1011828F8, &qword_100EBE238);
  v31 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v31 - v7;
  v9 = _s9PlaylistsVMa(0) - 8;
  __chkstk_darwin();
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118CE40, &qword_100EC8A40) - 8;
  __chkstk_darwin();
  v14 = &v31 - v13;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v11, _s9PlaylistsVMa);
  sub_1003C16C8(v11, v14, _s9PlaylistsVMa);
  type metadata accessor for TitledSection();
  type metadata accessor for Playlist.Folder.Item();
  sub_10003D8C4(&unk_101182930, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  sub_10018E714(v6);
  sub_10018ECCC();
  sub_10018EFFC();
  MusicLibrarySectionedRequest.filterItems(text:)(*&v11[*(v9 + 44)]);
  MusicLibrarySectionedRequest.limit.setter();
  v15 = v31;
  (*(v31 + 32))(v8, v6, v4);
  sub_100020674(&qword_10118CE50, &qword_1011828F8, &qword_100EBE238, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v16 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v15 + 8))(v8, v4);
  sub_1003C1730(v11, _s9PlaylistsVMa);
  *&v14[*(v12 + 44)] = v16;
  sub_10010FC20(&qword_10118CE68, &qword_100EC8A68);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v14, v17, v18, v19);
  sub_1003A3AF8();
  sub_1003A47BC();
  sub_1003A58A4();
  sub_1003C1730(v32, _s9PlaylistsVMa);
  v20 = *(v2 + 48);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = (v20 + *(*v20 + 120));
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = sub_1003BC908;
  v22[1] = v21;

  sub_100020438(v23, v24);

  v25 = *(v2 + 48);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = (v25 + *(*v25 + 128));
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  *v27 = sub_1003BC938;
  v27[1] = v26;

  sub_100020438(v28, v29);

  return v2;
}

uint64_t sub_1003A18B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Artist();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118CEE8, &qword_100EC8B10);
  v40 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v36 - v9;
  v11 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10010FC20(&qword_10118CEF0, &qword_100EC8B18);
  __chkstk_darwin();
  v15 = &v36 - v14;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v41 = a1;
  v16 = a1;
  v17 = v37;
  sub_1003C16C8(v16, v13, _s11MusicVideosVMa);
  v39 = v15;
  sub_1003C16C8(v13, v15, _s11MusicVideosVMa);
  type metadata accessor for TitledSection();
  type metadata accessor for MusicVideo();
  MusicLibrarySectionedRequest.init()();

  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  MusicLibrarySectionedRequest.filterItems(text:)(*&v13[v11[8]]);
  sub_1003C16C8(&v13[v11[7]], v7, _s11MusicVideosV5ScopeOMa);
  v18 = v4;
  if ((*(v17 + 48))(v7, 1, v4) != 1)
  {
    v19 = v36;
    (*(v17 + 32))(v36, v7, v18);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

    (*(v17 + 8))(v19, v18);
  }

  sub_1006FDE90();
  sub_1006FF31C(*&v13[v11[9]], v10);
  sub_100020674(&qword_10118CEF8, &qword_10118CEE8, &qword_100EC8B10, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v20 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v40 + 8))(v10, v8);
  sub_1003C1730(v13, _s11MusicVideosVMa);
  v21 = v39;
  *&v39[*(v38 + 36)] = v20;
  sub_10010FC20(&qword_10118CF00, &qword_100EC8B68);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v21, v22, v23, v24);
  sub_1003A3D20();
  sub_1003A4B5C();
  sub_1003A5C44();
  sub_1003C1730(v41, _s11MusicVideosVMa);
  v25 = *(v2 + 48);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = (v25 + *(*v25 + 120));
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  *v27 = sub_1003BC908;
  v27[1] = v26;

  sub_100020438(v28, v29);

  v30 = *(v2 + 48);
  v31 = swift_allocObject();
  swift_weakInit();

  v32 = (v30 + *(*v30 + 128));
  swift_beginAccess();
  v33 = *v32;
  v34 = v32[1];
  *v32 = sub_1003BC938;
  v32[1] = v31;

  sub_100020438(v33, v34);

  return v2;
}

uint64_t sub_1003A1E94(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CE70, &qword_100EC8A70);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v30[-v6];
  v8 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&qword_10118CE78, &qword_100EC8A78) - 8;
  __chkstk_darwin();
  v13 = &v30[-v12];
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  sub_1003C16C8(a1, v10, _s6AlbumsVMa);
  sub_1003C16C8(v10, v13, _s6AlbumsVMa);
  v14 = sub_10003D8C4(&qword_10118CE80, _s6AlbumsVMa, &unk_100EC48EC);
  (*(v14 + 48))(v8, v14);
  sub_100020674(&qword_10118CE88, &qword_10118CE70, &qword_100EC8A70, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v15 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  sub_1003C1730(v10, _s6AlbumsVMa);
  *&v13[*(v11 + 44)] = v15;
  sub_10010FC20(&qword_10118CF08, &unk_100EC8B70);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(v13, v16, v17, v18);
  sub_1003A3F48();
  sub_1003A4FF0();
  sub_1003A60D8();
  sub_1003C1730(a1, _s6AlbumsVMa);
  v19 = *(v2 + 48);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = (v19 + *(*v19 + 120));
  swift_beginAccess();
  v22 = *v21;
  v23 = v21[1];
  *v21 = sub_1003BC908;
  v21[1] = v20;

  sub_100020438(v22, v23);

  v24 = *(v2 + 48);
  v25 = swift_allocObject();
  swift_weakInit();

  v26 = (v24 + *(*v24 + 128));
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  *v26 = sub_1003BC938;
  v26[1] = v25;

  sub_100020438(v27, v28);

  return v2;
}

uint64_t sub_1003A22BC(__int128 *a1)
{
  v2 = v1;
  v29 = sub_10010FC20(&qword_10118B098, &qword_100EC8B80);
  v4 = *(v29 - 8);
  __chkstk_darwin();
  v6 = &v29 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v7 = a1[3];
  v32 = a1[2];
  v33 = v7;
  v34 = a1[4];
  v8 = a1[1];
  v30 = *a1;
  v31 = v8;
  v36[0] = v30;
  v36[3] = v7;
  v36[4] = v34;
  v36[1] = v8;
  v36[2] = v32;
  v9 = sub_1003BEAB8();
  v10 = *(v9 + 48);
  sub_10030DC78(v36, v37);
  v10(&_s7ArtistsVN, v9);
  v37[2] = v32;
  v37[3] = v33;
  v37[4] = v34;
  v37[0] = v30;
  v37[1] = v31;
  sub_10030DCB0(v37);
  sub_100020674(&qword_10118CF18, &qword_10118B098, &qword_100EC8B80, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v11 = v29;
  v12 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v11);
  v13 = a1[3];
  v32 = a1[2];
  v33 = v13;
  v34 = a1[4];
  v14 = a1[1];
  v30 = *a1;
  v31 = v14;
  v35 = v12;
  sub_10010FC20(&qword_10118CF78, &qword_100EC8BF0);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v30, v15, v16, v17);
  sub_1003A4170();
  sub_1003A524C();
  sub_1003A6334();
  v18 = *(v2 + 48);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = (v18 + *(*v18 + 120));
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  *v20 = sub_1003BC908;
  v20[1] = v19;

  sub_100020438(v21, v22);

  v23 = *(v2 + 48);
  v24 = swift_allocObject();
  swift_weakInit();

  v25 = (v23 + *(*v23 + 128));
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  *v25 = sub_1003BC938;
  v25[1] = v24;

  sub_100020438(v26, v27);

  return v2;
}

uint64_t sub_1003A2630(__int128 *a1)
{
  v2 = v1;
  v32 = sub_10010FC20(&unk_10118CF80, &qword_100EC8C08);
  v4 = *(v32 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v39 = *(a1 + 12);
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = a1[3];
  v35 = a1[2];
  v36 = v9;
  v41[0] = v33;
  v41[1] = v8;
  v42 = v39;
  v41[4] = v37;
  v41[5] = v7;
  v41[2] = v35;
  v41[3] = v9;
  v10 = sub_1003BF19C();
  v11 = *(v10 + 48);
  sub_100363198(v41, v43);
  v11(&_s9ComposersVN, v10);
  v43[4] = v37;
  v43[5] = v38;
  v44 = v39;
  v43[0] = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  sub_1003BF1F0(v43);
  sub_100020674(&qword_10118CF90, &unk_10118CF80, &qword_100EC8C08, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v12 = v32;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v37 = a1[4];
  v38 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v33 = *a1;
  v34 = v16;
  v17 = a1[3];
  v35 = a1[2];
  v36 = v17;
  v39 = v15;
  v40 = v13;
  sub_10010FC20(&qword_10118CF98, &qword_100EC8C30);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v33, v18, v19, v20);
  sub_10003DD5C(&unk_1010A96A8, sub_1003BF470);
  sub_10003E4A4(&unk_1010A96A8, sub_1003BF378);
  sub_1003A647C(&unk_1010A96A8, sub_1003BF244);
  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = (v21 + *(*v21 + 120));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_1003BC908;
  v23[1] = v22;

  sub_100020438(v24, v25);

  v26 = *(v2 + 48);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = (v26 + *(*v26 + 128));
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = sub_1003BC938;
  v28[1] = v27;

  sub_100020438(v29, v30);

  return v2;
}

uint64_t sub_1003A2A04(__int128 *a1)
{
  v2 = v1;
  v32 = sub_10010FC20(&qword_10118CFA0, &qword_100EC8C38);
  v4 = *(v32 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v39 = *(a1 + 12);
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = a1[3];
  v35 = a1[2];
  v36 = v9;
  v41[0] = v33;
  v41[1] = v8;
  v42 = v39;
  v41[4] = v37;
  v41[5] = v7;
  v41[2] = v35;
  v41[3] = v9;
  v10 = sub_1003BF560();
  v11 = *(v10 + 48);
  sub_1003BF504(v41, v43);
  v11(&_s6GenresVN, v10);
  v43[4] = v37;
  v43[5] = v38;
  v44 = v39;
  v43[0] = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  sub_1003BF5B4(v43);
  sub_100020674(&qword_10118CFB0, &qword_10118CFA0, &qword_100EC8C38, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v12 = v32;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v37 = a1[4];
  v38 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v33 = *a1;
  v34 = v16;
  v17 = a1[3];
  v35 = a1[2];
  v36 = v17;
  v39 = v15;
  v40 = v13;
  sub_10010FC20(&qword_10118CFB8, &qword_100EC8C60);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v33, v18, v19, v20);
  sub_10003DD5C(&unk_1010A9770, sub_1003BF834);
  sub_10003E4A4(&unk_1010A9770, sub_1003BF73C);
  sub_1003A647C(&unk_1010A9770, sub_1003BF608);
  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = (v21 + *(*v21 + 120));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_1003BC908;
  v23[1] = v22;

  sub_100020438(v24, v25);

  v26 = *(v2 + 48);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = (v26 + *(*v26 + 128));
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = sub_1003BC938;
  v28[1] = v27;

  sub_100020438(v29, v30);

  return v2;
}

uint64_t sub_1003A2DD8(__int128 *a1)
{
  v2 = v1;
  v31 = sub_10010FC20(&qword_101180370, &qword_100EBA5E0);
  v4 = *(v31 - 8);
  __chkstk_darwin();
  v6 = &v31 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v7 = a1[3];
  v34 = a1[2];
  v35 = v7;
  v8 = a1[5];
  v36 = a1[4];
  v37 = v8;
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  v39[0] = v32;
  v39[1] = v9;
  v39[4] = v36;
  v39[5] = v8;
  v39[2] = v34;
  v39[3] = v7;
  v10 = sub_1003BEDFC();
  v11 = *(v10 + 48);
  sub_1001103E0(v39, v40);
  v11(&_s6MoviesVN, v10);
  v40[2] = v34;
  v40[3] = v35;
  v40[4] = v36;
  v40[5] = v37;
  v40[0] = v32;
  v40[1] = v33;
  sub_100110418(v40);
  sub_100020674(&unk_10118CF68, &qword_101180370, &qword_100EBA5E0, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v12 = v31;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[3];
  v34 = a1[2];
  v35 = v14;
  v15 = a1[5];
  v36 = a1[4];
  v37 = v15;
  v16 = a1[1];
  v32 = *a1;
  v33 = v16;
  v38 = v13;
  sub_10010FC20(&qword_10118CFD8, &qword_100EC8C90);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v32, v17, v18, v19);
  sub_1003A42EC();
  sub_1003A539C();
  sub_1003A647C(&unk_1010A95B8, sub_1003BEE50);
  v20 = *(v2 + 48);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = (v20 + *(*v20 + 120));
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  *v22 = sub_1003BC908;
  v22[1] = v21;

  sub_100020438(v23, v24);

  v25 = *(v2 + 48);
  v26 = swift_allocObject();
  swift_weakInit();

  v27 = (v25 + *(*v25 + 128));
  swift_beginAccess();
  v28 = *v27;
  v29 = v27[1];
  *v27 = sub_1003BC938;
  v27[1] = v26;

  sub_100020438(v28, v29);

  return v2;
}

uint64_t sub_1003A3164(__int128 *a1)
{
  v2 = v1;
  v32 = sub_10010FC20(&qword_10118CFC0, &qword_100EC8C68);
  v4 = *(v32 - 8);
  __chkstk_darwin();
  v6 = &v32 - v5;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = _swiftEmptyDictionarySingleton;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v39 = *(a1 + 12);
  v8 = a1[1];
  v33 = *a1;
  v34 = v8;
  v9 = a1[3];
  v35 = a1[2];
  v36 = v9;
  v41[0] = v33;
  v41[1] = v8;
  v42 = v39;
  v41[4] = v37;
  v41[5] = v7;
  v41[2] = v35;
  v41[3] = v9;
  v10 = sub_1003BF94C();
  v11 = *(v10 + 48);
  sub_1003BF8F0(v41, v43);
  v11(&_s7TVShowsVN, v10);
  v43[4] = v37;
  v43[5] = v38;
  v44 = v39;
  v43[0] = v33;
  v43[1] = v34;
  v43[2] = v35;
  v43[3] = v36;
  sub_1003BF9A0(v43);
  sub_100020674(&qword_10118CFD0, &qword_10118CFC0, &qword_100EC8C68, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v12 = v32;
  v13 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v4 + 8))(v6, v12);
  v14 = a1[5];
  v37 = a1[4];
  v38 = v14;
  v15 = *(a1 + 12);
  v16 = a1[1];
  v33 = *a1;
  v34 = v16;
  v17 = a1[3];
  v35 = a1[2];
  v36 = v17;
  v39 = v15;
  v40 = v13;
  sub_10010FC20(&qword_10118CFE0, &qword_100EC8C98);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v33, v18, v19, v20);
  sub_10003DD5C(&unk_1010A9838, sub_1003BFC20);
  sub_10003E4A4(&unk_1010A9838, sub_1003BFB28);
  sub_1003A647C(&unk_1010A9838, sub_1003BF9F4);
  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = (v21 + *(*v21 + 120));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_1003BC908;
  v23[1] = v22;

  sub_100020438(v24, v25);

  v26 = *(v2 + 48);
  v27 = swift_allocObject();
  swift_weakInit();

  v28 = (v26 + *(*v26 + 128));
  swift_beginAccess();
  v29 = *v28;
  v30 = v28[1];
  *v28 = sub_1003BC938;
  v28[1] = v27;

  sub_100020438(v29, v30);

  return v2;
}

uint64_t sub_1003A3538(__int128 *a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118CF20, &qword_100EC8B98);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v27 - v6;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = _swiftEmptyDictionarySingleton;
  v8 = a1[3];
  v30 = a1[2];
  v31 = v8;
  LOBYTE(v32) = *(a1 + 64);
  v9 = a1[1];
  v28 = *a1;
  v29 = v9;
  v35 = v32;
  v34[2] = v30;
  v34[3] = v8;
  v34[0] = v28;
  v34[1] = v9;
  LOBYTE(v42) = v32;
  v40 = v30;
  v41 = v8;
  v38 = v28;
  v39 = v9;
  v10 = sub_1003BEC68();
  v11 = *(v10 + 48);
  sub_10021817C(v34, v36);
  v11(&_s5SongsVN, v10);
  v36[2] = v30;
  v36[3] = v31;
  v37 = v32;
  v36[0] = v28;
  v36[1] = v29;
  sub_1003BECBC(v36);
  sub_100020674(&unk_10118CF30, &qword_10118CF20, &qword_100EC8B98, &protocol conformance descriptor for MusicLibrarySectionedRequest<A, B>);
  v12 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  (*(v5 + 8))(v7, v4);
  v30 = v40;
  v31 = v41;
  v28 = v38;
  v29 = v39;
  v32 = v42;
  v33 = v12;
  sub_10010FC20(&qword_10118CFE8, &qword_100EC8CA0);
  swift_allocObject();
  *(v2 + 48) = RequestResponse.Controller.init(request:)(&v28, v13, v14, v15);
  sub_1003A43D0();
  sub_1003A54E4();
  sub_1003A647C(&unk_1010A9568, sub_1003BED10);
  v16 = *(v2 + 48);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + *(*v16 + 120));
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = sub_1003BC908;
  v18[1] = v17;

  sub_100020438(v19, v20);

  v21 = *(v2 + 48);
  v22 = swift_allocObject();
  swift_weakInit();

  v23 = (v21 + *(*v21 + 128));
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = sub_1003BC938;
  v23[1] = v22;

  sub_100020438(v24, v25);

  return v2;
}

void sub_1003A38C8()
{
  v1 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1003C03AC;
  v4 = sub_10003DE24(&unk_1010A99F0, sub_1003C03AC);
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
  v7 = *&v3[*(v1 + 56)];

  sub_1003C1730(v3, _s10TVEpisodesVMa);
  v8 = *(v7 + 16);

  [(objc_class *)v4 setHidden:v8 == 0];

  v9 = v1;
  v10 = sub_10003DE24(&unk_1010A99F0, v16);
  sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
  v11 = *&v3[*(v1 + 48)];

  sub_1003C1730(v3, _s10TVEpisodesVMa);
  v12 = *(v11 + 16);

  if (v12)
  {
    sub_1003C16C8(v5 + v6, v3, _s10TVEpisodesVMa);
    v13 = *&v3[*(v9 + 56)];

    sub_1003C1730(v3, _s10TVEpisodesVMa);
    v14 = *(v13 + 16);

    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  [(objc_class *)v10 setSelected:v15];
}

void sub_1003A3AF8()
{
  v1 = _s9PlaylistsVMa(0) - 8;
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1003BC6C4;
  v4 = sub_10003DE24(&unk_1010A9040, sub_1003BC6C4);
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v3, _s9PlaylistsVMa);
  v7 = sub_10018F5B8();
  sub_1003C1730(v3, _s9PlaylistsVMa);
  v8 = v7[2];

  [(objc_class *)v4 setHidden:v8 == 0];

  v9 = sub_10003DE24(&unk_1010A9040, v15);
  sub_1003C16C8(v5 + v6, v3, _s9PlaylistsVMa);
  v10 = *&v3[*(v1 + 48)];

  sub_1003C1730(v3, _s9PlaylistsVMa);
  v11 = *(v10 + 16);

  if (v11)
  {
    sub_1003C16C8(v5 + v6, v3, _s9PlaylistsVMa);
    v12 = sub_10018F5B8();
    sub_1003C1730(v3, _s9PlaylistsVMa);
    v13 = v12[2];

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  [(objc_class *)v9 setSelected:v14];
}

void sub_1003A3D20()
{
  v1 = _s11MusicVideosVMa(0) - 8;
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1003BE9E0;
  v4 = sub_10003DE24(&unk_1010A93B0, sub_1003BE9E0);
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v3, _s11MusicVideosVMa);
  v7 = sub_1006FE4C0();
  sub_1003C1730(v3, _s11MusicVideosVMa);
  v8 = v7[2];

  [(objc_class *)v4 setHidden:v8 == 0];

  v9 = sub_10003DE24(&unk_1010A93B0, v15);
  sub_1003C16C8(v5 + v6, v3, _s11MusicVideosVMa);
  v10 = *&v3[*(v1 + 44)];

  sub_1003C1730(v3, _s11MusicVideosVMa);
  v11 = *(v10 + 16);

  if (v11)
  {
    sub_1003C16C8(v5 + v6, v3, _s11MusicVideosVMa);
    v12 = sub_1006FE4C0();
    sub_1003C1730(v3, _s11MusicVideosVMa);
    v13 = v12[2];

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  [(objc_class *)v9 setSelected:v14];
}

void sub_1003A3F48()
{
  v1 = _s6AlbumsVMa(0) - 8;
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1003BCB70;
  v4 = sub_10003DE24(&unk_1010A9158, sub_1003BCB70);
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v3, _s6AlbumsVMa);
  v7 = sub_10028AAFC();
  sub_1003C1730(v3, _s6AlbumsVMa);
  v8 = v7[2];

  [(objc_class *)v4 setHidden:v8 == 0];

  v9 = sub_10003DE24(&unk_1010A9158, v15);
  sub_1003C16C8(v5 + v6, v3, _s6AlbumsVMa);
  v10 = *&v3[*(v1 + 40)];

  sub_1003C1730(v3, _s6AlbumsVMa);
  v11 = *(v10 + 16);

  if (v11)
  {
    sub_1003C16C8(v5 + v6, v3, _s6AlbumsVMa);
    v12 = sub_10028AAFC();
    sub_1003C1730(v3, _s6AlbumsVMa);
    v13 = v12[2];

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  [(objc_class *)v9 setSelected:v14];
}

void sub_1003A4170()
{
  v1 = sub_10003DE24(&unk_1010A94C8, sub_1003BEBE8);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v16[1] = *(v2 + 32);
  v16[2] = v3;
  v4 = *(v2 + 80);
  v16[3] = *(v2 + 64);
  v16[4] = v4;
  v16[0] = *(v2 + 16);
  sub_10030DC78(v16, v15);
  v5 = sub_10030D078();
  sub_10030DCB0(v16);
  v6 = v5[2];

  [(objc_class *)v1 setHidden:v6 == 0];

  v7 = sub_10003DE24(&unk_1010A94C8, sub_1003BEBE8);
  if (*(*(v2 + 56) + 16))
  {
    v8 = *(v2 + 48);
    v15[1] = *(v2 + 32);
    v9 = *(v2 + 64);
    v10 = *(v2 + 80);
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v10;
    v15[0] = *(v2 + 16);
    sub_10030DC78(v15, v14);
    v11 = sub_10030D078();
    sub_10030DCB0(v15);
    v12 = v11[2];

    v13 = v12 != 0;
  }

  else
  {
    v13 = 0;
  }

  [(objc_class *)v7 setSelected:v13];
}

void sub_1003A42EC()
{
  v1 = sub_10003DE24(&unk_1010A95B8, sub_1003BF024);
  v2 = *(v0 + 48);
  swift_beginAccess();
  [(objc_class *)v1 setHidden:*(*(v2 + 104) + 16) == 0];

  v3 = sub_10003DE24(&unk_1010A95B8, sub_1003BF024);
  v4 = v3;
  if (*(*(v2 + 80) + 16))
  {
    v5 = *(*(v2 + 104) + 16) != 0;
  }

  else
  {
    v5 = 0;
  }

  [(objc_class *)v3 setSelected:v5];
}

void sub_1003A43D0()
{
  v1 = sub_10003DE24(&unk_1010A9568, sub_1003BEDEC);
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v14[1] = *(v2 + 32);
  v14[2] = v3;
  v14[3] = *(v2 + 64);
  v15 = *(v2 + 80);
  v14[0] = *(v2 + 16);
  sub_10021817C(v14, v12);
  v4 = sub_1007B9600();
  sub_1003BECBC(v14);
  v5 = v4[2];

  [(objc_class *)v1 setHidden:v5 == 0];

  v6 = sub_10003DE24(&unk_1010A9568, sub_1003BEDEC);
  if (*(*(v2 + 48) + 16))
  {
    v7 = *(v2 + 48);
    v12[1] = *(v2 + 32);
    v12[2] = v7;
    v12[3] = *(v2 + 64);
    v13 = *(v2 + 80);
    v12[0] = *(v2 + 16);
    sub_10021817C(v12, &v11);
    v8 = sub_1007B9600();
    sub_1003BECBC(v12);
    v9 = v8[2];

    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  [(objc_class *)v6 setSelected:v10];
}

double sub_1003A454C()
{
  v1 = v0;
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v21[-1] - v5;
  v7 = *(v1 + 48);
  v8 = *(*v7 + 96);
  swift_beginAccess();
  sub_1003C16C8(v7 + v8, v6, _s10TVEpisodesVMa);
  v9 = &v6[*(v2 + 52)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_1003C1730(v6, _s10TVEpisodesVMa);

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    sub_1003C16C8(v7 + v8, v4, _s10TVEpisodesVMa);
    v13 = &v4[*(v2 + 52)];
    v14 = *v13;
    v15 = *(v13 + 1);

    sub_1003C1730(v4, _s10TVEpisodesVMa);
    v21[0] = v14;
    v21[1] = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003C026C, v16, &type metadata for String, v17);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 72) = v18;

  return result;
}

double sub_1003A47BC()
{
  v1 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v33 = v0;
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v4, _s9PlaylistsVMa);
  v31 = v1;
  v7 = *(v1 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v8 = _s9PlaylistsV5ScopeVMa(0);
  v9 = sub_1000060E4(v8, qword_101218730);
  v10 = sub_1001982EC(&v4[v7], v9);
  if (v10)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = 0xD000000000000010;
  }

  if (v10)
  {
    v12 = "LibraryPlaylists";
  }

  else
  {
    v12 = "v32@0:8@16@24";
  }

  v34 = v11;
  v35 = v12 | 0x8000000000000000;

  v13._countAndFlagsBits = 0x704F7265746C6946;
  v13._object = 0xEC0000006E6F6974;
  String.append(_:)(v13);

  v15 = v34;
  v14 = v35;
  sub_1003C1730(v4, _s9PlaylistsVMa);

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v32;
    sub_1003C16C8(v5 + v6, v32, _s9PlaylistsVMa);
    v18 = sub_1001982EC((v17 + *(v31 + 32)), v9);
    if (v18)
    {
      v19 = 0xD000000000000011;
    }

    else
    {
      v19 = 0xD000000000000010;
    }

    if (v18)
    {
      v20 = "LibraryPlaylists";
    }

    else
    {
      v20 = "v32@0:8@16@24";
    }

    v21 = v20 | 0x8000000000000000;
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v34 = v19;
    v35 = v21;

    v22._countAndFlagsBits = 0x704F7265746C6946;
    v22._object = 0xEC0000006E6F6974;
    String.append(_:)(v22);

    v23 = v34;
    v24 = v35;
    sub_1003C1730(v17, _s9PlaylistsVMa);
    v34 = v23;
    v35 = v24;
    v25 = swift_allocObject();
    v26 = v33;
    swift_weakInit();
    v27 = sub_100009838();

    v28 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v34, 0, 0, sub_1003BC810, v25, &type metadata for String, v27);
  }

  else
  {
    v28 = 0;
    v26 = v33;
  }

  *(v26 + 72) = v28;

  return result;
}

double sub_1003A4B5C()
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v36 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = v34 - v2;
  v4 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v34 - v6;
  v38 = v0;
  v8 = *(v0 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s11MusicVideosVMa);
  sub_1003C16C8(&v7[*(v4 + 28)], v3, _s11MusicVideosV5ScopeOMa);
  v10 = type metadata accessor for Artist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v34[1] = v11 + 48;
  v35 = v12;
  v13 = v12(v3, 1, v10);
  v14 = "impressionParentId";
  v15 = 0xD000000000000012;
  v16 = "impressionParentId";
  if (v13 != 1)
  {
    sub_1003C1730(v3, _s11MusicVideosV5ScopeOMa);
    v16 = "LibraryArtistDetail";
    v15 = 0xD000000000000013;
  }

  v39 = v15;
  v40 = v16 | 0x8000000000000000;

  v17._countAndFlagsBits = 0x704F7265746C6946;
  v17._object = 0xEC0000006E6F6974;
  String.append(_:)(v17);

  v19 = v39;
  v18 = v40;
  sub_1003C1730(v7, _s11MusicVideosVMa);

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v8 + v9;
    v22 = v37;
    sub_1003C16C8(v21, v37, _s11MusicVideosVMa);
    v23 = v22 + *(v4 + 28);
    v24 = v36;
    sub_1003C16C8(v23, v36, _s11MusicVideosV5ScopeOMa);
    v25 = 0xD000000000000012;
    if (v35(v24, 1, v10) != 1)
    {
      sub_1003C1730(v24, _s11MusicVideosV5ScopeOMa);
      v14 = "LibraryArtistDetail";
      v25 = 0xD000000000000013;
    }

    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v39 = v25;
    v40 = v14 | 0x8000000000000000;

    v26._countAndFlagsBits = 0x704F7265746C6946;
    v26._object = 0xEC0000006E6F6974;
    String.append(_:)(v26);

    v27 = v39;
    v28 = v40;
    sub_1003C1730(v22, _s11MusicVideosVMa);
    v39 = v27;
    v40 = v28;
    v29 = swift_allocObject();
    v30 = v38;
    swift_weakInit();
    v31 = sub_100009838();

    v32 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v39, 0, 0, sub_1003BE8E8, v29, &type metadata for String, v31);
  }

  else
  {
    v32 = 0;
    v30 = v38;
  }

  *(v30 + 72) = v32;

  return result;
}

double sub_1003A4FF0()
{
  v1 = v0;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = &v20[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v20[-1] - v4;
  v6 = *(v1 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v5, _s6AlbumsVMa);
  v8 = sub_10028A59C();
  v10 = v9;
  sub_1003C1730(v5, _s6AlbumsVMa);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    sub_1003C16C8(v6 + v7, v3, _s6AlbumsVMa);
    v12 = sub_10028A59C();
    v14 = v13;
    sub_1003C1730(v3, _s6AlbumsVMa);
    v20[0] = v12;
    v20[1] = v14;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = sub_100009838();

    v17 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v20, 0, 0, sub_1003BCA78, v15, &type metadata for String, v16);
  }

  else
  {
    v17 = 0;
  }

  *(v1 + 72) = v17;

  return result;
}

double sub_1003A524C()
{
  v1 = v0;
  if (("tonWrapper.swift" & 0x2F00000000000000) == 0x2000000000000000)
  {
    *(v0 + 72) = 0;
  }

  else
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v6[0] = 0xD000000000000013;
    v6[1] = 0x8000000100E46370;
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = sub_100009838();

    v5 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v6, 0, 0, sub_1003BF0A4, v3, &type metadata for String, v4);

    *(v1 + 72) = v5;
  }

  return result;
}

double sub_1003A539C()
{
  v1 = v0;
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v10[0] = v3;
    v10[1] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = sub_100009838();

    v8 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v10, 0, 0, sub_1003BEF2C, v6, &type metadata for String, v7);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 72) = v8;

  return result;
}

double sub_1003A54E4()
{
  v1 = v0;
  if (("LibraryMusicVideos" & 0x2F00000000000000) == 0x2000000000000000)
  {
    *(v0 + 72) = 0;
  }

  else
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v6[0] = 0xD000000000000011;
    v6[1] = 0x8000000100E484E0;
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = sub_100009838();

    v5 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v6, 0, 0, sub_1003BFCB4, v3, &type metadata for String, v4);

    *(v1 + 72) = v5;
  }

  return result;
}

double sub_1003A5634()
{
  v1 = v0;
  v2 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v21[-1] - v5;
  v7 = *(v1 + 48);
  v8 = *(*v7 + 96);
  swift_beginAccess();
  sub_1003C16C8(v7 + v8, v6, _s10TVEpisodesVMa);
  v9 = &v6[*(v2 + 40)];
  v11 = *v9;
  v10 = *(v9 + 1);

  sub_1003C1730(v6, _s10TVEpisodesVMa);

  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    sub_1003C16C8(v7 + v8, v4, _s10TVEpisodesVMa);
    v13 = &v4[*(v2 + 40)];
    v14 = *v13;
    v15 = *(v13 + 1);

    sub_1003C1730(v4, _s10TVEpisodesVMa);
    v21[0] = v14;
    v21[1] = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = sub_100009838();

    v18 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v21, 0, 0, sub_1003C0150, v16, &type metadata for String, v17);
  }

  else
  {
    v18 = 0;
  }

  *(v1 + 80) = v18;

  return result;
}

double sub_1003A58A4()
{
  v1 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v33 = v0;
  v5 = *(v0 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v4, _s9PlaylistsVMa);
  v31 = v1;
  v7 = *(v1 + 32);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v8 = _s9PlaylistsV5ScopeVMa(0);
  v9 = sub_1000060E4(v8, qword_101218730);
  v10 = sub_1001982EC(&v4[v7], v9);
  if (v10)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v11 = 0xD000000000000010;
  }

  if (v10)
  {
    v12 = "LibraryPlaylists";
  }

  else
  {
    v12 = "v32@0:8@16@24";
  }

  v34 = v11;
  v35 = v12 | 0x8000000000000000;

  v13._countAndFlagsBits = 0x53746E65746E6F43;
  v13._object = 0xEB0000000074726FLL;
  String.append(_:)(v13);

  v15 = v34;
  v14 = v35;
  sub_1003C1730(v4, _s9PlaylistsVMa);

  v16 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v16 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = v32;
    sub_1003C16C8(v5 + v6, v32, _s9PlaylistsVMa);
    v18 = sub_1001982EC((v17 + *(v31 + 32)), v9);
    if (v18)
    {
      v19 = 0xD000000000000011;
    }

    else
    {
      v19 = 0xD000000000000010;
    }

    if (v18)
    {
      v20 = "LibraryPlaylists";
    }

    else
    {
      v20 = "v32@0:8@16@24";
    }

    v21 = v20 | 0x8000000000000000;
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v34 = v19;
    v35 = v21;

    v22._countAndFlagsBits = 0x53746E65746E6F43;
    v22._object = 0xEB0000000074726FLL;
    String.append(_:)(v22);

    v23 = v34;
    v24 = v35;
    sub_1003C1730(v17, _s9PlaylistsVMa);
    v34 = v23;
    v35 = v24;
    v25 = swift_allocObject();
    v26 = v33;
    swift_weakInit();
    v27 = sub_100009838();

    v28 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v34, 0, 0, sub_1003BC734, v25, &type metadata for String, v27);
  }

  else
  {
    v28 = 0;
    v26 = v33;
  }

  *(v26 + 80) = v28;

  return result;
}

double sub_1003A5C44()
{
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v36 = v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v3 = v34 - v2;
  v4 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v37 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v34 - v6;
  v38 = v0;
  v8 = *(v0 + 48);
  v9 = *(*v8 + 96);
  swift_beginAccess();
  sub_1003C16C8(v8 + v9, v7, _s11MusicVideosVMa);
  sub_1003C16C8(&v7[*(v4 + 28)], v3, _s11MusicVideosV5ScopeOMa);
  v10 = type metadata accessor for Artist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v34[1] = v11 + 48;
  v35 = v12;
  v13 = v12(v3, 1, v10);
  v14 = "impressionParentId";
  v15 = 0xD000000000000012;
  v16 = "impressionParentId";
  if (v13 != 1)
  {
    sub_1003C1730(v3, _s11MusicVideosV5ScopeOMa);
    v16 = "LibraryArtistDetail";
    v15 = 0xD000000000000013;
  }

  v39 = v15;
  v40 = v16 | 0x8000000000000000;

  v17._countAndFlagsBits = 0x53746E65746E6F43;
  v17._object = 0xEB0000000074726FLL;
  String.append(_:)(v17);

  v19 = v39;
  v18 = v40;
  sub_1003C1730(v7, _s11MusicVideosVMa);

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    v21 = v8 + v9;
    v22 = v37;
    sub_1003C16C8(v21, v37, _s11MusicVideosVMa);
    v23 = v22 + *(v4 + 28);
    v24 = v36;
    sub_1003C16C8(v23, v36, _s11MusicVideosV5ScopeOMa);
    v25 = 0xD000000000000012;
    if (v35(v24, 1, v10) != 1)
    {
      sub_1003C1730(v24, _s11MusicVideosV5ScopeOMa);
      v14 = "LibraryArtistDetail";
      v25 = 0xD000000000000013;
    }

    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v39 = v25;
    v40 = v14 | 0x8000000000000000;

    v26._countAndFlagsBits = 0x53746E65746E6F43;
    v26._object = 0xEB0000000074726FLL;
    String.append(_:)(v26);

    v27 = v39;
    v28 = v40;
    sub_1003C1730(v22, _s11MusicVideosVMa);
    v39 = v27;
    v40 = v28;
    v29 = swift_allocObject();
    v30 = v38;
    swift_weakInit();
    v31 = sub_100009838();

    v32 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v39, 0, 0, sub_1003BE80C, v29, &type metadata for String, v31);
  }

  else
  {
    v32 = 0;
    v30 = v38;
  }

  *(v30 + 80) = v32;

  return result;
}

double sub_1003A60D8()
{
  v1 = v0;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = &v20[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v20[-1] - v4;
  v6 = *(v1 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v5, _s6AlbumsVMa);
  v8 = sub_100288A9C();
  v10 = v9;
  sub_1003C1730(v5, _s6AlbumsVMa);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    sub_1003C16C8(v6 + v7, v3, _s6AlbumsVMa);
    v12 = sub_100288A9C();
    v14 = v13;
    sub_1003C1730(v3, _s6AlbumsVMa);
    v20[0] = v12;
    v20[1] = v14;
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = sub_100009838();

    v17 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v20, 0, 0, sub_1003BC99C, v15, &type metadata for String, v16);
  }

  else
  {
    v17 = 0;
  }

  *(v1 + 80) = v17;

  return result;
}

double sub_1003A6334()
{
  v1 = v0;
  v2 = *(v0 + 48);
  swift_beginAccess();
  v3 = *(v2 + 72);
  v4 = *(v2 + 80);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v10[0] = v3;
    v10[1] = v4;
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = sub_100009838();

    v8 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v10, 0, 0, sub_1003BEB0C, v6, &type metadata for String, v7);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 80) = v8;

  return result;
}

double sub_1003A647C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *(v2 + 48);
  swift_beginAccess();
  v7 = *(v5 + 64);
  v6 = *(v5 + 72);
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
    v13[0] = v7;
    v13[1] = v6;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = sub_100009838();

    v11 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v13, 0, 0, a2, v9, &type metadata for String, v10);
  }

  else
  {
    v11 = 0;
  }

  *(v4 + 80) = v11;

  return result;
}

double sub_1003A65B8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, void (*a6)(void (*)(uint64_t, void (*)(void), uint64_t), uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);
    if (v11)
    {
      v12 = *(Strong + 24);

      v11(a2, a3, a4);

      a6(v11, v12);
    }

    else
    {
      a3();
    }
  }

  else
  {
    a3();
  }

  return result;
}

double sub_1003A6694(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void (*)(uint64_t, __n128), uint64_t))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10010C0FC(_swiftEmptyArrayStorage);
    swift_beginAccess();
    v8[11] = v9;

    v10 = v8[4];
    if (v10)
    {
      v11 = v8[5];

      (v10)(a2);
      a4(v10, v11);
    }
  }

  return result;
}

double sub_1003A67E4(uint64_t a1, uint64_t a2)
{
  v3 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v8 = *(Strong + 48);
    v9 = *(*v8 + 96);
    v10 = Strong;
    swift_beginAccess();
    sub_1003C16C8(v8 + v9, v5, _s10TVEpisodesVMa);
    v11 = *(v3 + 48);

    *&v5[v11] = a1;
    sub_10037745C(v5);
    *(v10 + 64) = 0;
  }

  return result;
}

double sub_1003A6918(uint64_t a1, uint64_t a2)
{
  v3 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v8 = *(Strong + 48);
    v9 = *(*v8 + 96);
    v10 = Strong;
    swift_beginAccess();
    sub_1003C16C8(v8 + v9, v5, _s9PlaylistsVMa);
    v11 = *(v3 + 40);
    v12 = *&v5[v11];
    *&v5[v11] = a1;

    sub_10018F6EC(v12);

    sub_1003777F4(v5);
    *(v10 + 64) = 0;
  }

  return result;
}

double sub_1003A6A54(uint64_t a1, uint64_t a2)
{
  v3 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v8 = *(Strong + 48);
    v9 = *(*v8 + 96);
    v10 = Strong;
    swift_beginAccess();
    sub_1003C16C8(v8 + v9, v5, _s11MusicVideosVMa);
    v11 = *(v3 + 36);
    v12 = *&v5[v11];
    *&v5[v11] = a1;

    sub_1006FE6C4(v12);

    sub_100377E84(v5);
    *(v10 + 64) = 0;
  }

  return result;
}

double sub_1003A6B90(uint64_t a1, uint64_t a2)
{
  v3 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(Strong + 64) = 1;
    v9 = *(Strong + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_1003C16C8(v9 + v10, v5, _s6AlbumsVMa);
    v11 = *(v3 + 32);
    v12 = *&v5[v11];
    *&v5[v11] = a1;

    if ((sub_10018FCA0(v13, v12) & 1) == 0)
    {
      v14 = [objc_opt_self() standardUserDefaults];
      v15[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v15[4] = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      v15[5] = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      v15[0] = a1;

      sub_10028A59C();
      NSUserDefaults.encodeValue(_:forKey:)(v15);

      sub_10000959C(v15);
    }

    sub_100378808(v5);
    *(v8 + 64) = 0;
  }

  return result;
}

double sub_1003A6DC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + 64) = 1;
    v6 = *(Strong + 48);
    swift_beginAccess();
    v7 = v6[3];
    v18[1] = v6[2];
    v8 = v6[5];
    v20 = v6[4];
    v21 = v8;
    v19 = v7;
    v9 = v6[2];
    v18[0] = v6[1];
    v10 = *(&v19 + 1);
    v15 = v6[1];
    v16 = v9;
    v17 = *(v6 + 6);
    v13 = v6[4];
    v14 = v6[5];
    sub_10030DC78(v18, &v22);

    if ((sub_10018FCA0(v11, v10) & 1) == 0)
    {
      v12 = [objc_opt_self() standardUserDefaults];
      *(&v23 + 1) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v24 = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      v25 = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      *&v22 = a1;

      NSUserDefaults.encodeValue(_:forKey:)(&v22);

      sub_10000959C(&v22);
    }

    v22 = v15;
    v23 = v16;
    v24 = v17;
    v25 = a1;
    v26 = v13;
    v27 = v14;
    sub_100378C30(&v22);
    *(v5 + 64) = 0;
  }

  return result;
}

double sub_1003A6FC0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + 64) = 1;
    v6 = *(Strong + 48);
    swift_beginAccess();
    v7 = *(v6 + 48);
    v8 = *(v6 + 64);
    v9 = *(v6 + 96);
    v17[4] = *(v6 + 80);
    v10 = *(v6 + 16);
    v11 = *(v6 + 32);
    v17[5] = v9;
    v17[2] = v7;
    v17[3] = v8;
    v17[1] = v11;
    v17[0] = v10;
    v12 = *(v6 + 16);
    v13 = *(v6 + 32);
    v14 = *(v6 + 64);
    v18[2] = *(v6 + 48);
    v18[3] = v14;
    v18[0] = v12;
    v18[1] = v13;
    v15 = *(v6 + 88);
    v21 = *(v6 + 104);
    v20 = v15;
    sub_1001103E0(v17, v16);

    v19 = a1;
    sub_100379614(v18);
    *(v5 + 64) = 0;
  }

  return result;
}

double sub_1003A70BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    *(Strong + 64) = 1;
    v6 = *(Strong + 48);
    swift_beginAccess();
    v7 = *(v6 + 48);
    v15[1] = *(v6 + 32);
    v15[2] = v7;
    v8 = *(v6 + 64);
    v16 = *(v6 + 80);
    v15[3] = v8;
    v14 = *(v6 + 32);
    v15[0] = *(v6 + 16);
    v9 = v7;
    v13 = *(v6 + 16);
    *&v12[9] = *(v6 + 65);
    *v12 = *(v6 + 56);
    sub_10021817C(v15, &v17);

    if ((sub_10018FCA0(v10, v9) & 1) == 0)
    {
      v11 = [objc_opt_self() standardUserDefaults];
      *(&v18 + 1) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v19 = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      *&v20[0] = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      *&v17 = a1;

      NSUserDefaults.encodeValue(_:forKey:)(&v17);

      sub_10000959C(&v17);
    }

    v17 = v13;
    v18 = v14;
    v19 = a1;
    v20[0] = *v12;
    *(v20 + 9) = *&v12[9];
    sub_100379CC8(&v17);
    *(v5 + 64) = 0;
  }

  return result;
}

double sub_1003A72C4(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, uint64_t *), void (*a4)(_OWORD *, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 64) = 1;
    v9 = *(Strong + 48);
    v10 = Strong;
    swift_beginAccess();
    v11 = *(v9 + 64);
    v21[4] = *(v9 + 80);
    v12 = *(v9 + 16);
    v13 = *(v9 + 32);
    v14 = *(v9 + 48);
    v21[5] = *(v9 + 96);
    v22 = *(v9 + 112);
    v21[2] = v14;
    v21[3] = v11;
    v21[0] = v12;
    v21[1] = v13;
    v15 = *(v9 + 16);
    v16 = *(v9 + 32);
    v17 = *(v9 + 48);
    v18 = *(v9 + 64);
    v24 = *(v9 + 80);
    v23[2] = v17;
    v23[3] = v18;
    v23[0] = v15;
    v23[1] = v16;
    v19 = *(v9 + 96);
    v27 = *(v9 + 112);
    v26 = v19;
    a3(v21, &v20);

    v25 = a1;
    (a4)(v23);
    *(v10 + 64) = 0;
  }

  return result;
}

void *sub_1003A73E8(uint64_t a1)
{
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s10TVEpisodesVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7.super.super.isa = sub_100396FDC(sub_1003C03B4, v6).super.super.isa;

  sub_1003C1730(v2, _s10TVEpisodesVMa);

  if (!v7.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A75AC(uint64_t a1)
{
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s9PlaylistsVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_1003972A8(sub_1003BC6CC, v6);

  sub_1003C1730(v2, _s9PlaylistsVMa);

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7 children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7770(uint64_t a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s11MusicVideosVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7.super.super.isa = sub_1003977C4(sub_1003BE9E8, v6).super.super.isa;

  sub_1003C1730(v2, _s11MusicVideosVMa);

  if (!v7.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7934(uint64_t a1)
{
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = *(Strong + 48);
  v5 = *(*v4 + 96);
  swift_beginAccess();
  sub_1003C16C8(v4 + v5, v2, _s6AlbumsVMa);
  v6 = swift_allocObject();
  swift_weakInit();

  v7 = sub_100397C74(sub_1003BCB78, v6);

  sub_1003C1730(v2, _s6AlbumsVMa);

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7 children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A7AF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = v2[3];
  v11[1] = v2[2];
  v11[2] = v3;
  v4 = v2[5];
  v11[3] = v2[4];
  v11[4] = v4;
  v11[0] = v2[1];
  v5 = swift_allocObject();
  swift_weakInit();

  sub_10030DC78(v11, &v10);
  v6.super.super.isa = sub_100398190(sub_1003BEBF0, v5).super.super.isa;

  sub_10030DCB0(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void *sub_1003A7C58(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v11[3] = *(v2 + 64);
  v11[4] = v3;
  v11[5] = *(v2 + 96);
  v12 = *(v2 + 112);
  v4 = *(v2 + 32);
  v11[0] = *(v2 + 16);
  v11[1] = v4;
  v11[2] = *(v2 + 48);
  v5 = swift_allocObject();
  swift_weakInit();

  sub_100363198(v11, v10);
  v6.super.super.isa = sub_1003984DC(sub_1003BF478, v5, &unk_1010A9720, sub_1003C18D4, sub_1003BF4BC).super.super.isa;

  sub_1003BF1F0(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void *sub_1003A7DF8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v11[3] = *(v2 + 64);
  v11[4] = v3;
  v11[5] = *(v2 + 96);
  v12 = *(v2 + 112);
  v4 = *(v2 + 32);
  v11[0] = *(v2 + 16);
  v11[1] = v4;
  v11[2] = *(v2 + 48);
  v5 = swift_allocObject();
  swift_weakInit();

  sub_1003BF504(v11, v10);
  v6.super.super.isa = sub_1003984DC(sub_1003BF83C, v5, &unk_1010A97E8, sub_1003C18D4, sub_1003BF880).super.super.isa;

  sub_1003BF5B4(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void *sub_1003A7F98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = v2[4];
  v12[2] = v2[3];
  v12[3] = v3;
  v4 = v2[6];
  v12[4] = v2[5];
  v12[5] = v4;
  v5 = v2[2];
  v12[0] = v2[1];
  v12[1] = v5;
  v6 = swift_allocObject();
  swift_weakInit();

  sub_1001103E0(v12, &v11);
  v7.super.super.isa = sub_1003987B0(sub_1003BF02C, v6).super.super.isa;

  sub_100110418(v12);

  if (!v7.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = [(objc_class *)v7.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v9;
}

void *sub_1003A80F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v11[3] = *(v2 + 64);
  v11[4] = v3;
  v11[5] = *(v2 + 96);
  v12 = *(v2 + 112);
  v4 = *(v2 + 32);
  v11[0] = *(v2 + 16);
  v11[1] = v4;
  v11[2] = *(v2 + 48);
  v5 = swift_allocObject();
  swift_weakInit();

  sub_1003BF8F0(v11, v10);
  v6.super.super.isa = sub_1003984DC(sub_1003BFC28, v5, &unk_1010A98B0, sub_1003C18D4, sub_1003BFC6C).super.super.isa;

  sub_1003BF9A0(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

void *sub_1003A8298(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = *(v2 + 48);
  v10[1] = *(v2 + 32);
  v10[2] = v3;
  v10[3] = *(v2 + 64);
  v11 = *(v2 + 80);
  v10[0] = *(v2 + 16);
  v4 = swift_allocObject();
  swift_weakInit();

  sub_10021817C(v10, v9);
  v5.super.super.isa = sub_100398A98(sub_1003BEDF4, v4).super.super.isa;

  sub_1003BECBC(v10);

  if (!v5.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = [(objc_class *)v5.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1003A8400(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(Strong + 48);
  swift_beginAccess();
  v3 = *(v2 + 80);
  v11[3] = *(v2 + 64);
  v11[4] = v3;
  v11[5] = *(v2 + 96);
  v12 = *(v2 + 112);
  v4 = *(v2 + 32);
  v11[0] = *(v2 + 16);
  v11[1] = v4;
  v11[2] = *(v2 + 48);
  v5 = swift_allocObject();
  swift_weakInit();

  sub_10003D868(v11, v10);
  v6.super.super.isa = sub_1003984DC(sub_1003BFFE0, v5, &unk_1010A99A0, sub_1003C18D4, sub_1003C0024).super.super.isa;

  sub_10003D90C(v11);

  if (!v6.super.super.isa)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = [(objc_class *)v6.super.super.isa children];
  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

double sub_1003A85A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v7 = v17 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v10 = Strong;
      sub_1000089F8(a1, v18, &unk_101183F30, qword_100EBF960);
      if (!v18[3])
      {

        sub_1000095E8(v18, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v12 = v17[1];
        v11 = v17[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
        sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v13 = v18[0];
        v14 = type metadata accessor for TaskPriority();
        (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
        type metadata accessor for MainActor();

        v15 = static MainActor.shared.getter();
        v16 = swift_allocObject();
        v16[2] = v15;
        v16[3] = &protocol witness table for MainActor;
        v16[4] = v10;
        v16[5] = v13;
        sub_1001F4CB8(0, 0, v7, a4, v16);

        sub_10002C064(v12, v11);
      }
    }
  }

  return result;
}

uint64_t sub_1003A89B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s10TVEpisodesVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8A78, v7, v6);
}

uint64_t sub_1003A8A78()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v7 = *&v1[*(v3 + 56)];

  sub_1003C1730(v1, _s10TVEpisodesVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s10TVEpisodesVMa);
  v9 = *(v3 + 48);

  *&v1[v9] = v8;
  sub_10037745C(v1);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003A8BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s9PlaylistsVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8C8C, v7, v6);
}

uint64_t sub_1003A8C8C()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v7 = sub_10018F5B8();
  sub_1003C1730(v1, _s9PlaylistsVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s9PlaylistsVMa);
  v9 = *(v3 + 40);
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;
  sub_10018F6EC(v10);

  sub_1003777F4(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A8DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = _s11MusicVideosVMa(0);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A8EB0, v7, v6);
}

uint64_t sub_1003A8EB0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = *(v4 + 48);
  v6 = *(*v5 + 96);
  swift_beginAccess();
  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v7 = sub_1006FE4C0();
  sub_1003C1730(v1, _s11MusicVideosVMa);

  v8 = sub_1003AE5C4(v7, v2);

  sub_1003C16C8(v5 + v6, v1, _s11MusicVideosVMa);
  v9 = *(v3 + 36);
  v10 = *(v1 + v9);
  *(v1 + v9) = v8;
  sub_1006FE6C4(v10);

  sub_100377E84(v1);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003A900C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = _s6AlbumsVMa(0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A90E0, v7, v6);
}

uint64_t sub_1003A90E0()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v5 = v0[11];
  v4 = v0[12];

  v6 = *(v5 + 48);
  v7 = *(*v6 + 96);
  swift_beginAccess();
  sub_1003C16C8(v6 + v7, v1, _s6AlbumsVMa);
  v8 = sub_10028AAFC();
  sub_1003C1730(v1, _s6AlbumsVMa);

  v9 = sub_1003AE5C4(v8, v4);

  sub_1003C16C8(v6 + v7, v2, _s6AlbumsVMa);
  v10 = *(v3 + 32);
  v11 = *(v2 + v10);
  *(v2 + v10) = v9;
  if ((sub_10018FCA0(v9, v11) & 1) == 0)
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v0[5] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    v0[6] = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    v13 = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    v0[2] = v9;
    v0[7] = v13;

    sub_10028A59C();
    NSUserDefaults.encodeValue(_:forKey:)(v0 + 2);

    sub_10000959C(v0 + 2);
  }

  sub_100378808(v0[14]);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1003A9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[45] = a4;
  v5[46] = a5;
  type metadata accessor for MainActor();
  v5[47] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A93DC, v7, v6);
}

uint64_t sub_1003A93DC()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);

  v3 = *(v2 + 48);
  swift_beginAccess();
  *(v0 + 96) = v3[1];
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[5];
  *(v0 + 144) = v3[4];
  *(v0 + 160) = v6;
  *(v0 + 112) = v4;
  *(v0 + 128) = v5;
  sub_10030DC78(v0 + 96, v0 + 256);
  v7 = sub_10030D078();
  sub_10030DCB0(v0 + 96);

  v8 = sub_1003AE5C4(v7, v1);

  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[2];
  *(v0 + 48) = v3[3];
  v12 = v3[1];
  *(v0 + 64) = v9;
  *(v0 + 80) = v10;
  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v13 = *(v0 + 56);
  v17 = v3[1];
  v18 = v3[2];
  v19 = *(v3 + 6);
  v20 = v3[4];
  v21 = v3[5];
  sub_10030DC78(v0 + 16, v0 + 256);
  if ((sub_10018FCA0(v8, v13) & 1) == 0)
  {
    v14 = [objc_opt_self() standardUserDefaults];
    *(v0 + 280) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    *(v0 + 288) = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    *(v0 + 296) = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    *(v0 + 256) = v8;

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 256));

    sub_10000959C((v0 + 256));
  }

  *(v0 + 176) = v17;
  *(v0 + 192) = v18;
  *(v0 + 208) = v19;
  *(v0 + 216) = v8;
  *(v0 + 224) = v20;
  *(v0 + 240) = v21;
  sub_100378C30((v0 + 176));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A9620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A96B8, v7, v6);
}

uint64_t sub_1003A96B8()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_100363198(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100378EFC((v0 + 120));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9880, v7, v6);
}

uint64_t sub_1003A9880()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_1003BF504(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100379288((v0 + 120));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A99B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9A48, v7, v6);
}

uint64_t sub_1003A9A48()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 104);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 96);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 96) = v8;
  *(v0 + 48) = v6;
  *(v0 + 64) = v7;
  v10 = *(v3 + 64);
  v12 = *(v3 + 16);
  v11 = *(v3 + 32);
  *(v0 + 144) = *(v3 + 48);
  *(v0 + 160) = v10;
  *(v0 + 112) = v12;
  *(v0 + 128) = v11;
  v13 = *(v3 + 104);
  *(v0 + 184) = *(v3 + 88);
  *(v0 + 200) = v13;
  sub_1001103E0(v0 + 16, v0 + 208);

  *(v0 + 176) = v5;
  sub_100379614((v0 + 112));
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003A9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9BF0, v7, v6);
}

uint64_t sub_1003A9BF0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_1003BF8F0(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_10037993C((v0 + 120));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003A9D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  type metadata accessor for MainActor();
  v5[43] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A9DB8, v7, v6);
}

uint64_t sub_1003A9DB8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 328);

  v3 = *(v2 + 48);
  swift_beginAccess();
  *(v0 + 88) = *(v3 + 16);
  v4 = *(v3 + 32);
  v5 = *(v3 + 48);
  v6 = *(v3 + 64);
  *(v0 + 152) = *(v3 + 80);
  *(v0 + 136) = v6;
  *(v0 + 120) = v5;
  *(v0 + 104) = v4;
  sub_10021817C(v0 + 88, v0 + 232);
  v7 = sub_1007B9600();
  sub_1003BECBC(v0 + 88);

  v8 = sub_1003AE5C4(v7, v1);

  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  v11 = *(v3 + 32);
  *(v0 + 48) = *(v3 + 48);
  v12 = *(v3 + 16);
  *(v0 + 80) = v10;
  *(v0 + 64) = v9;
  *(v0 + 16) = v12;
  *(v0 + 32) = v11;
  v13 = *(v0 + 48);
  v17 = *(v3 + 16);
  v18 = *(v3 + 32);
  *&v19[9] = *(v3 + 65);
  *v19 = *(v3 + 56);
  sub_10021817C(v0 + 16, v0 + 232);
  if ((sub_10018FCA0(v8, v13) & 1) == 0)
  {
    v14 = [objc_opt_self() standardUserDefaults];
    *(v0 + 256) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
    *(v0 + 264) = sub_100178DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
    *(v0 + 272) = sub_100178DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
    *(v0 + 232) = v8;

    NSUserDefaults.encodeValue(_:forKey:)((v0 + 232));

    sub_10000959C((v0 + 232));
  }

  *(v0 + 160) = v17;
  *(v0 + 176) = v18;
  *(v0 + 192) = v8;
  *(v0 + 200) = *v19;
  *(v0 + 209) = *&v19[9];
  sub_100379CC8((v0 + 160));
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1003AA014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003AA0AC, v7, v6);
}

uint64_t sub_1003AA0AC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 352);

  v3 = *(v2 + 48);
  swift_beginAccess();
  v4 = *(v3 + 112);

  v5 = sub_1003AE5C4(v4, v1);

  v6 = *(v3 + 96);
  v7 = *(v3 + 112);
  v8 = *(v3 + 64);
  *(v0 + 80) = *(v3 + 80);
  v9 = *(v3 + 32);
  v10 = *(v3 + 48);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 32) = v9;
  *(v0 + 112) = v7;
  *(v0 + 96) = v6;
  *(v0 + 48) = v10;
  *(v0 + 64) = v8;
  *(v0 + 120) = *(v3 + 16);
  v12 = *(v3 + 48);
  v11 = *(v3 + 64);
  v13 = *(v3 + 80);
  *(v0 + 136) = *(v3 + 32);
  *(v0 + 184) = v13;
  *(v0 + 168) = v11;
  *(v0 + 152) = v12;
  v14 = *(v3 + 96);
  *(v0 + 216) = *(v3 + 112);
  *(v0 + 200) = v14;
  sub_10003D868(v0 + 16, v0 + 224);

  *(v0 + 192) = v5;
  sub_100379FBC(v0 + 120);
  v15 = *(v0 + 8);

  return v15();
}

double sub_1003AA1DC(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v22 - v3;
  _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v9 = Strong;
      sub_1000089F8(a1, v23, &unk_101183F30, qword_100EBF960);
      if (!v24)
      {

        sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v11 = v22[1];
        v10 = v22[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v23[0];
        v13 = v23[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v6, _s10TVEpisodesVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        sub_100375870(v16 | v12);
        v18 = v17;
        sub_1003C1730(v6, _s10TVEpisodesVMa);
        if ((v18 & 0xFF00) != 0x200)
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = &protocol witness table for MainActor;
          *(v21 + 32) = v9;
          *(v21 + 40) = v18;
          *(v21 + 41) = HIBYTE(v18) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8D80, v21);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

double sub_1003AA698(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v22 - v3;
  _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v9 = Strong;
      sub_1000089F8(a1, v23, &unk_101183F30, qword_100EBF960);
      if (!v24)
      {

        sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v11 = v22[1];
        v10 = v22[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v23[0];
        v13 = v23[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v6, _s9PlaylistsVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        sub_100375B90(v16 | v12);
        v18 = v17;
        sub_1003C1730(v6, _s9PlaylistsVMa);
        if ((v18 & 0xFF00) != 0x200)
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = &protocol witness table for MainActor;
          *(v21 + 32) = v9;
          *(v21 + 40) = v18;
          *(v21 + 41) = HIBYTE(v18) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8A50, v21);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

double sub_1003AAB54(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v22 - v3;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v9 = Strong;
      sub_1000089F8(a1, v23, &unk_101183F30, qword_100EBF960);
      if (!v24)
      {

        sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v11 = v22[1];
        v10 = v22[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v23[0];
        v13 = v23[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v6, _s11MusicVideosVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        sub_100375F40(v16 | v12, sub_1006FF1A8);
        v18 = v17;
        sub_1003C1730(v6, _s11MusicVideosVMa);
        if ((v18 & 0xFF00) != 0x200)
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = &protocol witness table for MainActor;
          *(v21 + 32) = v9;
          *(v21 + 40) = v18;
          *(v21 + 41) = HIBYTE(v18) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8B50, v21);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}

double sub_1003AB024(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v22 - v3;
  _s6AlbumsVMa(0);
  __chkstk_darwin();
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v9 = Strong;
      sub_1000089F8(a1, v23, &unk_101183F30, qword_100EBF960);
      if (!v24)
      {

        sub_1000095E8(v23, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v11 = v22[1];
        v10 = v22[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_100110448();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v12 = v23[0];
        v13 = v23[1];
        v14 = *(v9 + 48);
        v15 = *(*v14 + 96);
        swift_beginAccess();
        sub_1003C16C8(v14 + v15, v6, _s6AlbumsVMa);
        if (v13)
        {
          v16 = 256;
        }

        else
        {
          v16 = 0;
        }

        sub_100375F40(v16 | v12, sub_10028B3E0);
        v18 = v17;
        sub_1003C1730(v6, _s6AlbumsVMa);
        if ((v18 & 0xFF00) != 0x200)
        {
          v19 = type metadata accessor for TaskPriority();
          (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
          type metadata accessor for MainActor();

          v20 = static MainActor.shared.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = v20;
          *(v21 + 24) = &protocol witness table for MainActor;
          *(v21 + 32) = v9;
          *(v21 + 40) = v18;
          *(v21 + 41) = HIBYTE(v18) & 1;
          sub_1001F4CB8(0, 0, v4, &unk_100EC8A88, v21);
        }

        sub_10002C064(v11, v10);
      }
    }
  }

  return result;
}