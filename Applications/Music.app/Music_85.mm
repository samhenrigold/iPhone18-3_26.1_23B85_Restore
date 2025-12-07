uint64_t sub_100969A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011A7F00, &qword_100EEDE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00, &qword_100EEDE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&unk_1011AA8A8, &qword_100EF28B0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&unk_1011AA8A8, &qword_100EF28B0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100969D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000089F8(a3, v24 - v9, &qword_1011A7F00, &qword_100EEDE10);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00, &qword_100EEDE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_10010FC20(&unk_1011AA5A0, &qword_100EF28D0);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000095E8(a3, &qword_1011A7F00, &qword_100EEDE10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_10010FC20(&unk_1011AA5A0, &qword_100EF28D0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_10096A060(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (Hasher.init(_seed:)(), ActionType.rawValue.getter(a1), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = ActionType.rawValue.getter(*(*(a2 + 48) + v6));
      v10 = v9;
      if (v8 == ActionType.rawValue.getter(a1) && v10 == v11)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10096A1B0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioVariant();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10097576C(&qword_1011AA8B8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10097576C(&qword_1011AA8C0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10096A3C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, Hasher.init(_seed:)(), Library.Menu.Identifier.rawValue.getter(v3), String.hash(into:)(), , v4 = Hasher._finalize()(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "nt";
      switch(*(*(a2 + 48) + v6))
      {
        case 1:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v8 = 0xD000000000000023;
          v9 = "LibraryView.Playlists";
          break;
        case 3:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.Artists";
          break;
        case 4:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Albums";
          break;
        case 5:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Songs";
          break;
        case 6:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.MadeForYou";
          break;
        case 7:
          v8 = 0xD000000000000022;
          v9 = "LibraryView.MusicVideos";
          break;
        case 8:
          v8 = 0xD000000000000028;
          v9 = "LibraryView.Genres";
          break;
        case 9:
          v8 = 0xD000000000000025;
          v9 = "LibraryView.Compilations";
          break;
        case 0xA:
          v8 = 0xD000000000000021;
          v9 = "LibraryView.Composers";
          break;
        case 0xB:
          v8 = 0xD000000000000026;
          v9 = "LibraryView.Shows";
          break;
        case 0xC:
          v8 = 0xD000000000000027;
          v9 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v10 = v9 | 0x8000000000000000;
      v11 = 0xD000000000000029;
      v12 = "nt";
      switch(v3)
      {
        case 1:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v11 = 0xD000000000000023;
          v12 = "LibraryView.Playlists";
          break;
        case 3:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.Artists";
          break;
        case 4:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Albums";
          break;
        case 5:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Songs";
          break;
        case 6:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.MadeForYou";
          break;
        case 7:
          v11 = 0xD000000000000022;
          v12 = "LibraryView.MusicVideos";
          break;
        case 8:
          v11 = 0xD000000000000028;
          v12 = "LibraryView.Genres";
          break;
        case 9:
          v11 = 0xD000000000000025;
          v12 = "LibraryView.Compilations";
          break;
        case 10:
          v11 = 0xD000000000000021;
          v12 = "LibraryView.Composers";
          break;
        case 11:
          v11 = 0xD000000000000026;
          v12 = "LibraryView.Shows";
          break;
        case 12:
          v11 = 0xD000000000000027;
          v12 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v8 == v11 && v10 == (v12 | 0x8000000000000000))
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v13 & 1;
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_10096A744(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v3);
  String.hash(into:)();

  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(a2 + 48) + v6);
    v9 = v8 >> 6;
    if (v8 >> 6 > 1)
    {
      break;
    }

    if (v9)
    {
      if ((v3 & 0xC0) == 0x40)
      {
        if (((v8 ^ v3) & 0x3F) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }
    }

    else if (v3 < 0x40u)
    {
      if (((v8 ^ v3) & 1) == 0)
      {
        return 1;
      }

      goto LABEL_5;
    }

LABEL_18:
    Hasher.init(_seed:)();
    String.hash(into:)();

    v10 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();

    if (v10 == Hasher._finalize()())
    {
      return 1;
    }

LABEL_5:
    v6 = (v6 + 1) & v7;
    if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  if (v9 == 2 || v8 != 192 || v3 != 192)
  {
    goto LABEL_18;
  }

  return 1;
}

uint64_t Playlist.hasActiveCollaboration.getter()
{
  sub_10010FC20(&qword_1011AA600, &qword_100EF24A0);
  __chkstk_darwin();
  v1 = &v16 - v0;
  sub_10010FC20(&qword_1011AA608, &qword_100EF24A8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  Playlist.collaboration.getter();
  v6 = type metadata accessor for Playlist.Collaboration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_1011AA600, &qword_100EF24A0);
    v8 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v7 + 8))(v1, v6);
  v9 = type metadata accessor for Playlist.Collaborator.Status();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  sub_1000089F8(v5, v3, &qword_1011AA608, &qword_100EF24A8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:) && v11 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:
  sub_1000095E8(v5, &qword_1011AA608, &qword_100EF24A8);
  return v14;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  sub_10010FC20(&qword_1011AA610, &qword_100EF24B0);
  __chkstk_darwin();
  v1 = v6 - v0;
  Playlist.Collaboration.pendingCollaborators.getter();
  v2 = sub_10010FC20(&qword_1011AA618, &qword_100EF24B8);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(v1, &qword_1011AA610, &qword_100EF24B0);
    return 0;
  }

  else
  {
    sub_100020674(&unk_1011AA620, &qword_1011AA618, &qword_100EF24B8, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v4 = v6[1] != v6[0];
    (*(v3 + 8))(v1, v2);
  }

  return v4;
}

uint64_t static Collaboration.Setup.contextualImageName(active:hasPendingCollaborators:)(char a1)
{
  if (a1)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_10096B190()
{
  type metadata accessor for Collaboration.ArtworkCachingReference();
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000027;
  *(v0 + 24) = 0x8000000100E5A5D0;
  v1 = objc_opt_self();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCacheLimit:100 forCacheIdentifier:v2 cacheReference:v0];

  static Collaboration.artworkCaching = v0;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (qword_1011A68F8 != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

double static Collaboration.artworkCaching.getter()
{
  if (qword_1011A68F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (qword_1011A68F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;

  return result;
}

uint64_t (*static Collaboration.artworkCaching.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1011A68F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t static Collaboration.Setup.imageName(active:hasPendingCollaborators:)(char a1, char a2)
{
  v2 = 0x322E6E6F73726570;
  v3 = 0xD000000000000013;
  if ((a2 & 1) == 0)
  {
    v3 = 0x322E6E6F73726570;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t Collaboration.Error.errorDescription.getter(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v9 = 0;
    if (a3)
    {
      _StringGuts.grow(_:)(17);
      v5 = 0x74694B636973754DLL;
      v4 = 0xEF3D726F72726520;
    }

    else
    {
      _StringGuts.grow(_:)(25);
      v4 = 0x8000000100E5D9C0;
      v5 = 0xD000000000000017;
    }

    String.append(_:)(*&v5);
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    _print_unlocked<A, B>(_:_:)();
    return v9;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(38);

    v9 = 0xD000000000000024;
    v7._countAndFlagsBits = a1;
    v7._object = a2;
    String.append(_:)(v7);
    return v9;
  }

  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 ^ 5 | a2)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000016;
      }
    }

    else if (a1 ^ 7 | a2)
    {
      if (a1 ^ 8 | a2)
      {
        return 0x73736F7020746F4ELL;
      }

      else
      {
        return 0xD000000000000032;
      }
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else if (a1 <= 1)
  {
    if (a1 | a2)
    {
      return 0xD000000000000017;
    }

    else
    {
      return 0x636120726F6E694DLL;
    }
  }

  else if (a1 ^ 2 | a2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000024;
  }
}

void static Collaboration.Error.tapToRadarAlert()()
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v1 = &v33 - v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v36 = v1;
    v15 = sub_1000294C0(_swiftEmptyArrayStorage);
    sub_1009AC87C(0xD00000000000001FLL, 0x8000000100E5DA70, 0xD000000000000032, 0x8000000100E5DA90, _swiftEmptyArrayStorage, v15, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v14, 1u);

    sub_1000089F8(v14, v12, &qword_1011A77F0, &unk_100EEAA20);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_1000095E8(v14, &qword_1011A77F0, &unk_100EEAA20);
      v16 = v12;
    }

    else
    {
      v17 = *(v7 + 32);
      v17(v10, v12, v6);
      v18 = [objc_opt_self() sharedApplication];
      URL._bridgeToObjectiveC()(v19);
      v21 = v20;
      v22 = [v18 canOpenURL:v20];

      if (v22)
      {
        v23 = v37;
        (*(v7 + 16))(v37, v10, v6);
        v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
        v25 = swift_allocObject();
        v17((v25 + v24), v23, v6);
        v26 = v33;
        UUID.init()();
        v27 = UUID.uuidString.getter();
        v29 = v28;
        (*(v34 + 8))(v26, v35);
        (*(v7 + 8))(v10, v6);
        sub_1000095E8(v14, &qword_1011A77F0, &unk_100EEAA20);
        v30 = type metadata accessor for TaskPriority();
        v31 = v36;
        (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
        v32 = swift_allocObject();
        *(v32 + 16) = 0;
        *(v32 + 24) = 0;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        strcpy((v32 + 48), "File a Radar");
        *(v32 + 61) = 0;
        *(v32 + 62) = -5120;
        *(v32 + 64) = 2;
        *(v32 + 65) = *v38;
        *(v32 + 68) = *&v38[3];
        *(v32 + 72) = &unk_100EF4AC0;
        *(v32 + 80) = v25;
        sub_100969440(0, 0, v31, &unk_100EF24C8, v32);

        return;
      }

      (*(v7 + 8))(v10, v6);
      v16 = v14;
    }

    sub_1000095E8(v16, &qword_1011A77F0, &unk_100EEAA20);
  }
}

uint64_t sub_10096BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 32) = 0u;
  v5 = *(a4 + 40);
  if (v5)
  {
    v10 = (v5 + *v5);
    v7 = swift_task_alloc();
    *(v4 + 88) = v7;
    *v7 = v4;
    v7[1] = sub_10096BE74;

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_10096BE74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100059A8C(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter()
{
  v0 = [objc_opt_self() shared];
  v1 = [v0 activeUserState];

  v2 = [v1 music];
  v3 = [v2 userProfile];

  return v3;
}

uint64_t sub_10096C0E4(__n128 a1)
{
  v1 = type metadata accessor for Playlist.EditableComponents();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011AA950, &qword_100EEEBB0);
  __chkstk_darwin();
  v6 = &v10 - v5;
  Playlist.editableComponents.getter();
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_1000095E8(v6, &unk_1011AA950, &qword_100EEEBB0);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_10097576C(&qword_1011A8B80, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v7 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v8 = *(v2 + 8);
    v8(v4, v1);
    v8(v6, v1);
    if (v7)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v6[4] = v5[4];
  v6[5] = v5[5];
  v6[6] = v5[6];
  v6[7] = v5[7];
  v6[0] = v5[0];
  v6[1] = v5[1];
  v6[2] = v5[2];
  v6[3] = v5[3];
  if ((BYTE8(v5[0]) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v6[0]) != 1)
  {
    v0 = 6;
    goto LABEL_10;
  }

  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = [result isInitialImport];

    if ((v3 & 1) == 0)
    {
      return sub_100014984(v6);
    }

    v0 = 7;
LABEL_10:
    sub_10097507C();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return sub_100014984(v6);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.collaboration);
}

uint64_t sub_10096C6EC(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

double sub_10096C750(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;

  return result;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = unk_1011AA5E8, , v4 = sub_100019C28(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    v11 = _findStringSwitchCase(cases:string:)(&off_1010C76B8, v10);

    if (v11 == 1)
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
    }

    else
    {
      v12.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
    }

    if (v11)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 2;
  }
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C76B8, v2);

  if (v3 == 1)
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_pending;
  }

  else
  {
    v4.value = MusicCore_Collaboration_Manager_DeepLinkType_unknownDefault;
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

uint64_t Collaboration.Manager.DeepLinkType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 1852403562;
  }
}

uint64_t sub_10096C96C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 1852403562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E69646E6570;
  }

  else
  {
    v5 = 1852403562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
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

Swift::Int sub_10096CA0C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10096CA88(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10096CAF0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10096CB68(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C76B8, *a1);

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

void sub_10096CBC8(uint64_t *a1@<X8>)
{
  v2 = 1852403562;
  if (*v1)
  {
    v2 = 0x676E69646E6570;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *Collaboration.Manager.queryItemsDictionary(for:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011AA638, &qword_100EF2518);
  __chkstk_darwin();
  v2 = &v18 - v1;
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(v2, &qword_1011AA638, &qword_100EF2518);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = sub_100015A48(&off_1010C7708);
  swift_arrayDestroy();
  swift_beginAccess();
  if (!v7[2] || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = unk_1011AA5E8, , v11 = sub_100019C28(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (v7[7] + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = sub_10048C9BC(v15, v16, v8);

  (*(v4 + 8))(v6, v3);
  if ((v15 & 1) == 0)
  {

    return 0;
  }

  return v7;
}

uint64_t Collaboration.Manager.start(_:isOpen:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 200) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  sub_10010FC20(&qword_1011AA600, &qword_100EF24A0);
  *(v3 + 40) = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  *(v3 + 48) = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  started = type metadata accessor for MusicCollaborativePlaylist.StartCollaborationRequest();
  *(v3 + 112) = started;
  *(v3 + 120) = *(started - 8);
  *(v3 + 128) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 136) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(sub_10096D0D8, v8, v7);
}

uint64_t sub_10096D0D8()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 160) = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 200);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start called - isOpenInvite=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v12 = *(v0 + 200);
  v13 = *(v0 + 32);

  v14 = *(v8 + 16);
  *(v0 + 168) = v14;
  *(v0 + 176) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v6, v13, v7);
  v15 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v12)
  {
    v15 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v10 + 104))(v9, *v15, v11);
  MusicCollaborativePlaylist.StartCollaborationRequest.init(playlist:invitationMode:)();
  v16 = swift_task_alloc();
  *(v0 + 184) = v16;
  *v16 = v0;
  v16[1] = sub_10096D2E8;
  v17 = *(v0 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v17);
}

uint64_t sub_10096D2E8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10096D9D4;
  }

  else
  {
    v5 = sub_10096D424;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096D424()
{
  v47 = v0;
  v1 = v0[5];

  Playlist.collaboration.getter();
  v2 = type metadata accessor for Playlist.Collaboration();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_1000095E8(v0[5], &qword_1011AA600, &qword_100EF24A0);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    Playlist.Collaboration.invitationURL.getter();
    (*(v3 + 8))(v6, v2);
    v8 = type metadata accessor for URL();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_1000095E8(v43, &qword_1011A77F0, &unk_100EEAA20);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_1000095E8(v0[6], &qword_1011A77F0, &unk_100EEAA20);
  v9(v10, v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[11];
  v16 = v0[12];
  v18 = v0[10];
  if (v15)
  {
    v19 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v19 = 136446210;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_100010678(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    sub_10000959C(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_10097507C();
  v29 = swift_allocError();
  *v30 = xmmword_100EE94C0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v35 = String.init<A>(describing:)();
    v37 = sub_100010678(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    sub_10000959C(v34);
  }

  v39 = v0[15];
  v38 = v0[16];
  v40 = v0[14];
  swift_allocError();
  *v41 = v29;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  swift_willThrow();
  (*(v39 + 8))(v38, v40);

  v42 = v0[1];
LABEL_11:

  return v42();
}

uint64_t sub_10096D9D4()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v10 + 8))(v9, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.validate(_:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for Playlist();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_10096DDAC, v8, v7);
}

uint64_t sub_10096DDAC()
{
  v29 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10097576C(&qword_1011AA648, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100010678(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Validate called with url=%{public}s", v13, 0xCu);
    sub_10000959C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[5];
  (*(v0[7] + 16))(v0[8], v0[4], v0[6]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_10096E088;
  v24 = v0[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v24);
}

uint64_t sub_10096E088()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096E27C;
  }

  else
  {
    v5 = sub_10096E1C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096E1C4()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096E27C()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v12 = v0[21];
  sub_10097507C();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.join(_:url:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.JoinRequest();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_10096E648, v7, v6);
}

uint64_t sub_10096E648()
{
  v29 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[19] = sub_1000060E4(v5, static Logger.collaboration);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v12 = v0[12];
  v11 = v0[13];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136446210;
    sub_10097576C(&qword_1011AA648, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v26 = v8;
    v14 = v6;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_100010678(v18, v17, &v28);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v26, "Join called with url=%{public}s", v13, 0xCu);
    sub_10000959C(v27);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[14];
  v21 = v0[12];
  v22 = v0[4];
  (*(v0[6] + 16))(v0[8], v0[3], v0[5]);
  v6(v20, v22, v21);
  MusicCollaborativePlaylist.JoinRequest.init(playlist:invitationURL:)();
  v23 = swift_task_alloc();
  v0[20] = v23;
  *v23 = v0;
  v23[1] = sub_10096E924;
  v24 = v0[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v24);
}

uint64_t sub_10096E924()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10096EB1C;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_10096EA50;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10096EA50()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096EB1C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.end(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.EndCollaborationRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_10096EE80, v6, v5);
}

uint64_t sub_10096EE80()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "End called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.EndCollaborationRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_10096F018;
  v10 = v0[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v10);
}

uint64_t sub_10096F018()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_10096F154;
  }

  else
  {
    v5 = sub_1009757C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096F154()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.moderate(_:collaborator:in:)(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 193) = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 128) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_10096F508, v8, v7);
}

uint64_t sub_10096F508()
{
  v44 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000060E4(v9, static Logger.collaboration);
  v42 = *(v3 + 16);
  v42(v1, v8, v2);
  v41 = *(v6 + 16);
  v41(v4, v7, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 120);
  v15 = *(v0 + 96);
  v14 = *(v0 + 104);
  v16 = *(v0 + 88);
  v18 = *(v0 + 64);
  v17 = *(v0 + 72);
  if (v12)
  {
    v40 = v11;
    v19 = *(v0 + 193);
    log = v10;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v20 = 136446722;
    *(v0 + 192) = v19 & 1;
    v21 = String.init<A>(describing:)();
    v23 = sub_100010678(v21, v22, &v43);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2082;
    sub_10097576C(&unk_1011AA650, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v14 + 8))(v13, v15);
    v27 = sub_100010678(v24, v26, &v43);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v17 + 8))(v16, v18);
    v31 = sub_100010678(v28, v30, &v43);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v40, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v17 + 8))(v16, v18);
    (*(v14 + 8))(v13, v15);
  }

  v32 = *(v0 + 80);
  v33 = *(v0 + 64);
  v34 = *(v0 + 32);
  v35 = *(v0 + 193);
  v42(*(v0 + 112), *(v0 + 24), *(v0 + 96));
  v41(v32, v34, v33);
  MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.init(collaborator:playlist:)();
  if (v35)
  {
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_10096FBA0;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v37 = swift_task_alloc();
    *(v0 + 160) = v37;
    *v37 = v0;
    v37[1] = sub_10096F998;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_10096F998()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096FCDC;
  }

  else
  {
    v5 = sub_10096FAD4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096FAD4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10096FBA0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_10096FEEC;
  }

  else
  {
    v5 = sub_1009757B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10096FCDC()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10096FEEC()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_10097507C();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t Collaboration.Manager.remove(collaborator:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicCollaborativePlaylist.RemoveCollaboratorRequest();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Collaborator();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_1009702C4, v8, v7);
}

uint64_t sub_1009702C4()
{
  v39 = v0;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[4];
  v7 = v0[5];
  v9 = type metadata accessor for Logger();
  v0[20] = sub_1000060E4(v9, static Logger.collaboration);
  v37 = *(v3 + 16);
  v37(v1, v8, v2);
  v10 = *(v6 + 16);
  v10(v4, v7, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  v18 = v0[10];
  v36 = v0[9];
  if (v13)
  {
    log = v11;
    v19 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v19 = 136446466;
    sub_10097576C(&unk_1011AA650, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v12;
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_100010678(v20, v22, &v38);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    sub_10097576C(&qword_1011AA640, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v18 + 8))(v17, v36);
    v27 = sub_100010678(v24, v26, &v38);

    *(v19 + 14) = v27;
    _os_log_impl(&_mh_execute_header, log, v34, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v18 + 8))(v17, v36);
    (*(v15 + 8))(v14, v16);
  }

  v28 = v0[11];
  v29 = v0[9];
  v30 = v0[5];
  v37(v0[15], v0[4], v0[13]);
  v10(v28, v30, v29);
  MusicCollaborativePlaylist.RemoveCollaboratorRequest.init(collaborator:playlist:)();
  v31 = swift_task_alloc();
  v0[21] = v31;
  *v31 = v0;
  v31[1] = sub_1009706A8;
  v32 = v0[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v32);
}

uint64_t sub_1009706A8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1009708B0;
  }

  else
  {
    v5 = sub_1009707E4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009707E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1009708B0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.resetInvitationURL(_:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for Playlist();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MusicCollaborativePlaylist.ResetInvitationLinkRequest();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_100970C14, v6, v5);
}

uint64_t sub_100970C14()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[14] = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Reset URL called", v4, 2u);
  }

  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];

  (*(v6 + 16))(v5, v8, v7);
  MusicCollaborativePlaylist.ResetInvitationLinkRequest.init(playlist:)();
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_100970DAC;
  v10 = v0[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v10);
}

uint64_t sub_100970DAC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100970F84;
  }

  else
  {
    v5 = sub_100970EE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100970EE8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100970F84()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_10097507C();
  swift_allocError();
  *v13 = v9;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  swift_willThrow();
  (*(v11 + 8))(v10, v12);

  v14 = v0[1];

  return v14();
}

uint64_t Collaboration.Manager.updateShareOption(_:for:)(char a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 168) = a1;
  v3 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  updated = type metadata accessor for MusicCollaborativePlaylist.UpdateInvitationModeRequest();
  *(v2 + 56) = updated;
  *(v2 + 64) = *(updated - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_10010FC20(&qword_1011AA600, &qword_100EF24A0);
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for Playlist.Collaboration();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_100971364, v7, v6);
}

uint64_t sub_100971364()
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 144) = sub_1000060E4(v1, static Logger.collaboration);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "updateShareOption called with isOpen=%{BOOL,public}d", v5, 8u);
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 80);

  Playlist.collaboration.getter();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = *(v0 + 80);

    sub_1000095E8(v9, &qword_1011AA600, &qword_100EF24A0);
    sub_10097507C();
    swift_allocError();
    *v10 = xmmword_100EE94E0;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v18 = *(v0 + 40);
    v17 = *(v0 + 48);
    v19 = *(v0 + 32);
    v20 = *(v0 + 168);
    (*(v16 + 32))(v14, *(v0 + 80), v15);
    (*(v16 + 16))(v13, v14, v15);
    v21 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v20)
    {
      v21 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v18 + 104))(v17, *v21, v19);
    MusicCollaborativePlaylist.UpdateInvitationModeRequest.init(collaboration:updatedInvitationMode:)();
    v22 = swift_task_alloc();
    *(v0 + 152) = v22;
    *v22 = v0;
    v22[1] = sub_10097167C;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

uint64_t sub_10097167C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1009718A4;
  }

  else
  {
    v5 = sub_1009717B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009717B8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1009718A4()
{
  v20 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v6 = String.init<A>(describing:)();
    v8 = sub_100010678(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    sub_10000959C(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_10097507C();
  swift_allocError();
  *v16 = v9;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
  (*(v12 + 8))(v10, v11);

  v17 = v0[1];

  return v17();
}

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, static Logger.collaboration);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Calling coordinator to handle error=%{public}@", v7, 0xCu);
    sub_1000095E8(v8, &qword_1011A9120, &qword_100EEF840);
  }

  swift_beginAccess();
  sub_100008FE4(v2 + 16, v13);
  v10 = v14;
  v11 = v15;
  sub_10000954C(v13, v14);
  (*(v11 + 8))(a1, v10, v11);
  return sub_10000959C(v13);
}

id Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    Playlist.name.getter();
    v10 = String._bridgeToObjectiveC()();

    [v9 setName:v10];

    Playlist.curatorName.getter();
    if (v11)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    Playlist.catalogID.getter();
    if (v13)
    {
      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_100972020();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_100EBC6C0;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009F78(0, &qword_1011AA668, NSItemProvider_ptr);
    v19 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_1009750D0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100972450;
    aBlock[3] = &unk_1010D3660;
    v23 = _Block_copy(aBlock);
    v24 = v5;

    [v21 setPerItemMetadataProvider:v23];
    _Block_release(v23);
    v25 = [objc_allocWithZone(UIActivityViewController) initWithActivityItemsConfiguration:v21];
    [v25 setAllowsProminentActivity:0];

    return v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100972020()
{
  v0 = type metadata accessor for Playlist();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v4 + 8))(v6, v3);
  v8 = String._bridgeToObjectiveC()();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_1009755A4;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100974A8C;
  aBlock[3] = &unk_1010D3990;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = String._bridgeToObjectiveC()();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    [objc_allocWithZone(LPImage) initWithItemProvider:v7 properties:0 placeholderImage:v14];
  }

  else
  {
    __break(1u);
  }
}

void sub_100972358(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  *(a3 + 24) = sub_100009F78(0, &qword_1011AA8C8, LPLinkMetadata_ptr);
  *a3 = a2;

  v10 = a2;
}

id sub_100972450(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    sub_10000954C(v14, v15);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v7);
    sub_10000959C(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  sub_10000959C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100972668()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.collaboration);
  sub_1000060E4(v0, static Logger.collaboration);
  sub_100009F78(0, &qword_1011AFB00, OS_os_log_ptr);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6900 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.collaboration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = type metadata accessor for Playlist.Collaboration.InvitationMode();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011AA670, &qword_100EF2560) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_10010FC20(&qword_1011AA678, &qword_100EF2568);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  Playlist.Collaboration.invitationMode.getter();
  (*(v1 + 104))(v9, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_1000089F8(v11, v5, &qword_1011AA678, &qword_100EF2568);
  sub_1000089F8(v9, &v5[v12], &qword_1011AA678, &qword_100EF2568);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_1000089F8(v5, v7, &qword_1011AA678, &qword_100EF2568);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10097576C(&qword_1011AA680, &type metadata accessor for Playlist.Collaboration.InvitationMode, &protocol conformance descriptor for Playlist.Collaboration.InvitationMode);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_1000095E8(v9, &qword_1011AA678, &qword_100EF2568);
      sub_1000095E8(v11, &qword_1011AA678, &qword_100EF2568);
      v17(v7, v0);
      sub_1000095E8(v5, &qword_1011AA678, &qword_100EF2568);
      return v14 & 1;
    }

    sub_1000095E8(v9, &qword_1011AA678, &qword_100EF2568);
    sub_1000095E8(v11, &qword_1011AA678, &qword_100EF2568);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_1000095E8(v9, &qword_1011AA678, &qword_100EF2568);
  sub_1000095E8(v11, &qword_1011AA678, &qword_100EF2568);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_1000095E8(v5, &qword_1011AA670, &qword_100EF2560);
    v14 = 0;
    return v14 & 1;
  }

  sub_1000095E8(v5, &qword_1011AA678, &qword_100EF2568);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = type metadata accessor for Playlist.Collaborator.Role();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_1011AA688, &qword_100EF2570) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_10010FC20(&qword_1011AA690, &qword_100EF2578);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  Playlist.Collaborator.role.getter();
  (*(v1 + 104))(v9, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_1000089F8(v11, v5, &qword_1011AA690, &qword_100EF2578);
  sub_1000089F8(v9, &v5[v12], &qword_1011AA690, &qword_100EF2578);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_1000089F8(v5, v7, &qword_1011AA690, &qword_100EF2578);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10097576C(&qword_1011AA698, &type metadata accessor for Playlist.Collaborator.Role, &protocol conformance descriptor for Playlist.Collaborator.Role);
      v14 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_1000095E8(v9, &qword_1011AA690, &qword_100EF2578);
      sub_1000095E8(v11, &qword_1011AA690, &qword_100EF2578);
      v17(v7, v0);
      sub_1000095E8(v5, &qword_1011AA690, &qword_100EF2578);
      return v14 & 1;
    }

    sub_1000095E8(v9, &qword_1011AA690, &qword_100EF2578);
    sub_1000095E8(v11, &qword_1011AA690, &qword_100EF2578);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_1000095E8(v9, &qword_1011AA690, &qword_100EF2578);
  sub_1000095E8(v11, &qword_1011AA690, &qword_100EF2578);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_1000095E8(v5, &qword_1011AA688, &qword_100EF2570);
    v14 = 0;
    return v14 & 1;
  }

  sub_1000095E8(v5, &qword_1011AA690, &qword_100EF2578);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  sub_10010FC20(&qword_1011AA600, &qword_100EF24A0);
  __chkstk_darwin();
  v1 = &v15 - v0;
  sub_10010FC20(&qword_1011AA608, &qword_100EF24A8);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  Playlist.collaboration.getter();
  v6 = type metadata accessor for Playlist.Collaboration();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &qword_1011AA600, &qword_100EF24A0);
    v8 = type metadata accessor for Playlist.Collaborator.Status();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  Playlist.Collaboration.collaboratorStatus.getter();
  (*(v7 + 8))(v1, v6);
  v9 = type metadata accessor for Playlist.Collaborator.Status();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  sub_1000089F8(v5, v3, &qword_1011AA608, &qword_100EF24A8);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  sub_1000095E8(v5, &qword_1011AA608, &qword_100EF24A8);
  return v13;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = type metadata accessor for Playlist.Entry();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_10010FC20(&unk_1011AA6A0, &qword_100EF2588);
  v1[13] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8888, &unk_100EF2590);
  v1[14] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011AA6B0, &qword_100EF4A40);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011AA6B8, &unk_100EF25A0);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA6C0, &qword_100EEF960);
  v1[22] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_1011AA6C8, &qword_100EF25B0);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_1009735FC, 0, 0);
}

uint64_t sub_1009735FC()
{
  v1 = v0[22];
  v2 = v0[7];
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v3 = type metadata accessor for Playlist();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10097576C(&qword_1011AA6D0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  sub_1000095E8(v1, &qword_1011AA6C0, &qword_100EEF960);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1009737C4;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_1009737C4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100973D10;
  }

  else
  {
    v2 = sub_1009738D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1009738D8()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  MusicLibraryResponse.items.getter();
  (*(v2 + 16))(v3, v1, v4);
  sub_100020674(&qword_1011AA6D8, &qword_1011AA6B0, &qword_100EF4A40, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v7 = *(v5 + 36);
  sub_100020674(&qword_1011AA6E0, &qword_1011AA6B0, &qword_100EF4A40, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  v47 = v0;
  if (*(v6 + v7) == v0[6])
  {
LABEL_5:
    v19 = v47[24];
    v18 = v47[25];
    v20 = v47[23];
    v22 = v47[20];
    v21 = v47[21];
    v24 = v47[18];
    v23 = v47[19];
    v25 = v47[15];
    v26 = v47[16];
    sub_1000095E8(v47[13], &unk_1011AA6A0, &qword_100EF2588);
    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    (*(v19 + 8))(v18, v20);
    v27 = 0;
    v28 = 1;
  }

  else
  {
    v8 = v0[9];
    v43 = (v8 + 16);
    v46 = (v8 + 32);
    v41 = (v8 + 8);
    while (1)
    {
      v9 = v47[10];
      v10 = v47[11];
      v11 = v47[8];
      v12 = v7;
      v13 = dispatch thunk of Collection.subscript.read();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      dispatch thunk of Collection.formIndex(after:)();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      Playlist.Entry.catalogID.getter();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      dispatch thunk of Collection.endIndex.getter();
      if (*(v6 + v12) == v47[6])
      {
        goto LABEL_5;
      }
    }

    v29 = v47[24];
    v30 = v47[25];
    v32 = v47[20];
    v31 = v47[21];
    v34 = v47[18];
    v33 = v47[19];
    v36 = v47[15];
    v35 = v47[16];
    v44 = v47[14];
    v45 = v47[23];
    v37 = v47[10];
    v42 = v47[8];
    sub_1000095E8(v47[13], &unk_1011AA6A0, &qword_100EF2588);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_1000095E8(v38, &qword_1011A8888, &unk_100EF2590);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_100973D10()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = sub_10010FC20(&qword_1011A91C0, &qword_100EEF9A8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011AA6F0, &unk_100EEF9C0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100973F34, 0, 0);
}

uint64_t sub_100973F34()
{
  static MusicLibraryPlaylistRequest.duplicatingPlaylist<>(_:)();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100973FDC;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100973FDC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100974190;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_100974108;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100974108()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100974190()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

double sub_100974218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *&result = __chkstk_darwin().n128_u64[0];
  v13 = &v18 - v12;
  if (a1)
  {
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    (*(v9 + 32))(v16 + v15, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a1;
    v17[1] = a2;

    sub_100969440(0, 0, v13, &unk_100EF28F0, v16);
  }

  return result;
}

uint64_t sub_100974418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&qword_1011AA930, &qword_100EF28F8);
  v6[5] = swift_task_alloc();
  sub_10010FC20(&qword_1011AA938, &qword_100EF2900);
  v6[6] = swift_task_alloc();
  sub_10010FC20(&unk_1011AA940, &unk_100EF2908);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100974528, 0, 0);
}

uint64_t sub_100974528(uint64_t a1)
{
  v2 = *(v1 + 56);
  Playlist.artwork.getter();
  v3 = type metadata accessor for Artwork();
  *(v1 + 64) = v3;
  v4 = *(v3 - 8);
  *(v1 + 72) = v4;
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000095E8(*(v1 + 56), &unk_1011AA940, &unk_100EF2908);
    (*(v1 + 24))(0, 0);

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 40);
    v8 = *(v1 + 48);
    v9 = type metadata accessor for Artwork.CropStyle();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = type metadata accessor for Artwork.ImageFormat();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_task_alloc();
    *(v1 + 80) = v11;
    *v11 = v1;
    v11[1] = sub_100974748;
    v12 = *(v1 + 48);
    v13 = *(v1 + 40);
    v14.n128_u64[0] = 0x4072C00000000000;
    v15.n128_u64[0] = 1.0;
    v16.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v12, v13, 0, 0, v14, v16, v15);
  }
}

uint64_t sub_100974748(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_1000095E8(v4, &qword_1011AA930, &qword_100EF28F8);
    sub_1000095E8(v5, &qword_1011AA938, &qword_100EF2900);
    v7 = sub_1009749EC;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_1000095E8(v3[5], &qword_1011AA930, &qword_100EF28F8);
    sub_1000095E8(v11, &qword_1011AA938, &qword_100EF2900);
    (*(v9 + 8))(v10, v8);
    v7 = sub_1009748F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1009748F8()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002C064(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 88);
  (*(v0 + 24))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1009749EC()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

double sub_100974A8C(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_100446558;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_100020438(v7, v8);

  return result;
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v7 = qword_101219808;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_100974DA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_10096BD24(a1, v4, v5, v1 + 32);
}

uint64_t sub_100974E58()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v11 = v7[4];
  *v12 = v7[5];
  v13 = v7[6];
  v14 = v7[7];
  v8[0] = v7[0];
  v8[1] = v7[1];
  v9 = v7[2];
  v10 = v7[3];
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v8[0]) != 1)
    {
      sub_10097507C();
      swift_allocError();
      v5 = xmmword_100EC78D0;
      goto LABEL_13;
    }

    if ((sub_10096C0E4(v0) & 1) == 0)
    {
      sub_10097507C();
      swift_allocError();
      v5 = xmmword_100EE94F0;
LABEL_13:
      *v4 = v5;
      v3 = v4 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_10048BBDC(3, v9) & 1) == 0)
  {
    sub_10097507C();
    swift_allocError();
    v5 = xmmword_100EE9500;
    goto LABEL_13;
  }

  if (v12[1] && ([v12[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v8[0]))
    {
      return sub_100014984(v8);
    }

    sub_10097507C();
    swift_allocError();
    v5 = xmmword_100EE94D0;
    goto LABEL_13;
  }

  sub_10097507C();
  swift_allocError();
  v2 = v1;
  v3 = (v1 + 16);
  *v2 = 0;
  v2[1] = 0;
LABEL_14:
  *v3 = 3;
  swift_willThrow();
  return sub_100014984(v8);
}

unint64_t sub_10097507C()
{
  result = qword_1011AA630;
  if (!qword_1011AA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA630);
  }

  return result;
}

unint64_t sub_1009750E0()
{
  result = qword_1011AA6F8;
  if (!qword_1011AA6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA6F8);
  }

  return result;
}

unint64_t sub_100975138()
{
  result = qword_1011AA700;
  if (!qword_1011AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AA700);
  }

  return result;
}

uint64_t sub_1009751AC(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1009751C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100975234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1009752EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_1009753A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_10097545C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_1001F91D8(a1, v4);
}

uint64_t sub_100975514(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

double sub_1009755A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Playlist() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_100974218(a1, a2, a3, a4, v10);
}

uint64_t sub_10097563C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100974418(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10097576C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10097F360(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_10000954C(a1, v5);
  sub_100978308(v7, a2, v5, v6, v10);
  v8 = v10[3];
  *(a3 + 32) = v10[2];
  *(a3 + 48) = v8;
  *(a3 + 64) = v11;
  result = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.cellularDataDisallowedAlert(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10098066C(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

__n128 static Alert.dolbyAtmosDownloadsAlert(message:completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100980138(a1, a2, a3, a4, v9);
  v7 = v9[3];
  *(a5 + 32) = v9[2];
  *(a5 + 48) = v7;
  *(a5 + 64) = v10;
  result = v9[1];
  *a5 = v9[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a1@<X8>)
{
  sub_10097FEA0(v5);
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100980BA4(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

void static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, double (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v13 = type metadata accessor for UUID();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v40 - v23;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  v25 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_1009AC87C(a1, a2, v44, v45, v46, v47, v48, v49, v24, a10 & 1);
    sub_10093F768(v24, v22);
    if ((*(v16 + 48))(v22, 1, v15) == 1)
    {
      sub_100028B08(v24);
      v26 = v22;
LABEL_10:
      sub_100028B08(v26);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v25 = 0uLL;
      goto LABEL_11;
    }

    v48 = *(v16 + 32);
    v49 = v16 + 32;
    v48(v20, v22, v15);
    v32 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v33);
    v35 = v34;
    v36 = [v32 canOpenURL:v34];

    if (!v36)
    {
      (*(v16 + 8))(v20, v15);
      v26 = v24;
      goto LABEL_10;
    }

    (*(v16 + 16))(v18, v20, v15);
    v37 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v31 = swift_allocObject();
    v48((v31 + v37), v18, v15);
    v38 = v41;
    UUID.init()();
    v27 = UUID.uuidString.getter();
    v28 = v39;
    (*(v42 + 8))(v38, v43);
    (*(v16 + 8))(v20, v15);
    sub_100028B08(v24);
    v25 = xmmword_100EE9510;
    v30 = &unk_100EF4AC0;
    v29 = 2;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
  }

LABEL_11:
  *a9 = v27;
  *(a9 + 8) = v28;
  *(a9 + 16) = v25;
  *(a9 + 32) = v29;
  *(a9 + 40) = v30;
  *(a9 + 48) = v31;
}

__n128 static Alert.cellularRestrictedAlert(model:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100980DD0(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

id sub_100975E70()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setVideoCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100975F24()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    [result setMusicCellularStreamingAllowed:1];

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  sub_100981C90(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

char *static Alert.accountRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for UUID();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v12 = qword_101219808;
  v13 = qword_101219808;
  static Locale.current.getter();
  v56 = v13;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    static Locale.current.getter();
    v49 = v12;
    v21 = String.init(localized:table:bundle:locale:comment:)();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_10089CAD0((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_100EF2938;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  v31 = v56;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10089CAD0(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_10089CAD0((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_100976608()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    LSApplicationWorkspace.openSettings()();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *static Alert.subscriptionRequiredAlert(traitCollection:)@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = type metadata accessor for UUID();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v12 = qword_101219808;
  v13 = qword_101219808;
  static Locale.current.getter();
  v56 = v13;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v18;
  v53 = v17;
  v16(v10, v5);
  v51 = v16;
  if (v50 && [v50 userInterfaceIdiom] == 3)
  {
    v19 = _swiftEmptyArrayStorage;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    static Locale.current.getter();
    v49 = v12;
    v21 = String.init(localized:table:bundle:locale:comment:)();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_10089CAD0((v26 > 1), v27 + 1, 1, v19);
    }

    *(v19 + 2) = v27 + 1;
    v28 = &v19[56 * v27];
    v29 = v45;
    *(v28 + 4) = v46;
    *(v28 + 5) = v29;
    v30 = v47;
    *(v28 + 6) = v48;
    *(v28 + 7) = v30;
    v28[64] = 2;
    *(v28 + 9) = &unk_100EF2940;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  String.LocalizationValue.init(stringLiteral:)();
  v11(v8, v10, v5);
  v31 = v56;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10089CAD0(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_10089CAD0((v40 > 1), v41 + 1, 1, v19);
    v19 = result;
  }

  *(v19 + 2) = v41 + 1;
  v42 = &v19[56 * v41];
  *(v42 + 4) = v36;
  *(v42 + 5) = v38;
  *(v42 + 6) = v32;
  *(v42 + 7) = v34;
  v42[64] = 2;
  *(v42 + 9) = 0;
  *(v42 + 10) = 0;
  v43 = v54;
  *a2 = v55;
  *(a2 + 8) = v43;
  v44 = v52;
  *(a2 + 16) = v53;
  *(a2 + 24) = v44;
  *(a2 + 32) = 0;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v60;
  *(a2 + 52) = *&v60[3];
  *(a2 + 56) = v19;
  *(a2 + 64) = 0;
  return result;
}

id sub_100976C70()
{
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 144));

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100014984(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();

    [v6 setBoolValue:1 forSetting:v7];

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100976E04()
{
  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    v2 = v1;
    LSApplicationWorkspace.openRestrictions()();
  }

  v3 = *(v0 + 8);

  return v3();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v14;
  v27 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v17;
  v15(v9, v4);
  v19 = v28;
  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v29 + 8))(v19, v30);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_100EBC6B0;
  *(v23 + 32) = v20;
  *(v23 + 40) = v22;
  *(v23 + 48) = v16;
  *(v23 + 56) = v18;
  *(v23 + 64) = 2;
  *(v23 + 72) = 0;
  *(v23 + 80) = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  v25 = v26;
  *(a1 + 16) = v27;
  *(a1 + 24) = v25;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v32;
  *(a1 + 36) = *&v32[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v31;
  *(a1 + 52) = *&v31[3];
  *(a1 + 56) = v23;
  *(a1 + 64) = 0;
  return result;
}

double static Alert.userUploadRequiredAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v14;
  v32 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v17;
  v30 = v16;
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v15(v9, v4);
  v21 = v33;
  UUID.init()();
  v22 = UUID.uuidString.getter();
  v24 = v23;
  (*(v34 + 8))(v21, v35);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_100EBC6B0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v24;
  *(v25 + 48) = v18;
  *(v25 + 56) = v20;
  *(v25 + 64) = 2;
  *(v25 + 72) = 0;
  *(v25 + 80) = 0;
  v27 = v31;
  *a1 = v32;
  *(a1 + 8) = v27;
  v28 = v29;
  *(a1 + 16) = v30;
  *(a1 + 24) = v28;
  *(a1 + 32) = 0;
  *(a1 + 33) = *v37;
  *(a1 + 36) = *&v37[3];
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v36;
  *(a1 + 52) = *&v36[3];
  *(a1 + 56) = v25;
  *(a1 + 64) = 0;
  return result;
}

__n128 static Alert.ageVerificationFallbackAlert()@<Q0>(uint64_t a1@<X8>)
{
  sub_1009823E4(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10097768C()
{
  if (qword_1011A69C0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10097772C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10097774C, 0, 0);
}

uint64_t sub_10097774C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1009777BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1009777DC, 0, 0);
}

id sub_1009777DC()
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v3)
    {
      (*(v0 + 16))(1);
    }

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10097788C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_1009778AC, 0, 0);
}

uint64_t sub_1009778AC()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_10000954C(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100977968;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_100977968()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100977A9C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100977A9C()
{
  v14 = v0;
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v8 = String.init<A>(describing:)();
    v10 = sub_100010678(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete item=%s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100977C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100977C8C, 0, 0);
}

uint64_t sub_100977C8C()
{
  v1 = *(v0 + 16);
  v2 = [objc_opt_self() standardUserDefaults];
  [v2 setPrefersSpatialDownloads:1];

  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_100977DB8;

  return v5(1);
}

uint64_t sub_100977DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100977EAC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_10002F3F4;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_1009826E8(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100977FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100978008, 0, 0);
}

uint64_t sub_100978008()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100978070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100978090, 0, 0);
}

id sub_100978090()
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v3(1);
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10097813C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1009781D4, v5, v4);
}

uint64_t sub_1009781D4()
{

  v1 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  sub_1008BD18C(_swiftEmptyArrayStorage);
  _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
  sub_1009831C8(&qword_1011A79E0, _s3__C25OpenExternalURLOptionsKeyVMa_0, &unk_100EEB9A4);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100978308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v9 = type metadata accessor for UUID();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v37[3] = a3;
  v37[4] = a4;
  v36 = a4;
  v18 = sub_10001C8B8(v37);
  (*(*(a3 - 8) + 16))(v18, a1, a3);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v19 = qword_101219808;
  static Locale.current.getter();
  v32 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  (*(v13 + 8))(v17, v12);
  sub_100008FE4(v37, v38);
  v22 = swift_allocObject();
  sub_100059A8C(v38, v22 + 16);
  *(v22 + 56) = v33;

  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  (*(v34 + 8))(v11, v35);
  v26 = sub_10097DDF0(v18, a3, v36);
  v28 = v27;
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBDC20;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v32;
  *(v29 + 56) = v21;
  *(v29 + 64) = 1;
  *(v29 + 72) = &unk_100EF29D8;
  *(v29 + 80) = v22;

  sub_10097FEA0(v38);
  v30 = v38[1];
  *(v29 + 88) = v38[0];
  *(v29 + 104) = v30;
  *(v29 + 120) = v38[2];
  *(v29 + 136) = v39;

  result = sub_10000959C(v37);
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = v26;
  *(a5 + 24) = v28;
  *(a5 + 32) = 1;
  *(a5 + 33) = v38[0];
  *(a5 + 36) = *(v38 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = v37[0];
  *(a5 + 52) = *(v37 + 3);
  *(a5 + 56) = v29;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_100978730(uint64_t a1)
{
  v115 = a1;
  v94 = type metadata accessor for Track();
  v88 = *(v94 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v82 - v2;
  __chkstk_darwin();
  v89 = &v82 - v3;
  v91 = type metadata accessor for Playlist.Entry.InternalItem();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Playlist.Entry();
  v95 = *(v98 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v100 = type metadata accessor for TVEpisode();
  v97 = *(v100 - 8);
  __chkstk_darwin();
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v82 - v8;
  v102 = type metadata accessor for TVSeason();
  v99 = *(v102 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for MusicMovie();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v11;
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v82 - v15;
  v111 = type metadata accessor for Playlist();
  v108 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v112 = *(v17 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v82 - v19;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v114 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v82 - v26;
  v28 = type metadata accessor for Album();
  v113 = *(v28 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v12;
  v117[4] = &protocol witness table for Song;
  v31 = sub_10001C8B8(v117);
  v105 = v13;
  v32 = *(v13 + 16);
  v33 = v115;
  v115 = v12;
  v32(v31, v33, v12);
  sub_100008FE4(v117, &v116);
  sub_10010FC20(&qword_1011AA9C8, &qword_100EF29E0);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v34 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v113 + 8);
    v37 = v30;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v39 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    (*(v112 + 8))(v20, v17);
    goto LABEL_15;
  }

  v41 = v110;
  v40 = v111;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v42 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v108 + 8);
    v37 = v41;
    v38 = v40;
    goto LABEL_14;
  }

  v28 = v115;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v44 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v105 + 8);
    v37 = v109;
    goto LABEL_5;
  }

  v28 = v106;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v45 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v103 + 8);
    v37 = v107;
    goto LABEL_5;
  }

  v28 = v102;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v99 + 8);
    v47 = &v119;
LABEL_33:
    v37 = *(v47 - 32);
LABEL_5:
    v38 = v28;
LABEL_14:
    v36(v37, v38);
LABEL_15:
    sub_10000959C(&v116);
LABEL_16:
    sub_10000959C(v117);
    return v35;
  }

  v28 = v100;
  v48 = v23;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v49 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v23 + 8))(v27, v22);
    v36 = *(v97 + 8);
    v47 = &v118;
    goto LABEL_33;
  }

  v50 = v96;
  v51 = v98;
  if (!swift_dynamicCast())
  {
    v63 = v89;
    v64 = v94;
    v65 = swift_dynamicCast();
    v66 = v25;
    v67 = v115;
    if (v65)
    {
      v68 = v88;
      v69 = v87;
      (*(v88 + 32))(v87, v63, v64);
      v70 = v86;
      (*(v68 + 16))(v86, v69, v64);
      v71 = (*(v68 + 88))(v70, v64);
      if (v71 == enum case for Track.song(_:))
      {
        (*(v68 + 96))(v70, v64);
        v72 = v105;
        v73 = v84;
        (*(v105 + 32))(v84, v70, v67);
        v74 = sub_100978730(v73);
        v75 = v67;
        v35 = v74;
        (*(v72 + 8))(v73, v75);
LABEL_46:
        (*(v68 + 8))(v69, v64);
        goto LABEL_15;
      }

      if (v71 == enum case for Track.musicVideo(_:))
      {
        (*(v68 + 96))(v70, v64);
        v78 = v112;
        v79 = v83;
        (*(v112 + 32))(v83, v70, v17);
        v35 = sub_100979C78(v79);
        (*(v78 + 8))(v79, v17);
        goto LABEL_46;
      }

      v80 = *(v68 + 8);
      v80(v69, v64);
      v80(v70, v64);
    }

LABEL_55:
    sub_10000959C(&v116);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v48 + 16))(v66, v27, v22);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v81 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v48 + 8))(v27, v22);
    goto LABEL_16;
  }

  v52 = v95;
  v53 = v93;
  (*(v95 + 32))(v93, v50, v51);
  v54 = v92;
  Playlist.Entry.internalItem.getter();
  v55 = v90;
  v56 = v91;
  v57 = (*(v90 + 88))(v54, v91);
  if (v57 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v103;
    v59 = v85;
    v60 = v106;
    (*(v103 + 32))(v85, v54, v106);
    v61 = sub_10097B244(v59);
LABEL_37:
    v62 = v60;
    v35 = v61;
    (*(v58 + 8))(v59, v62);
LABEL_43:
    (*(v52 + 8))(v53, v98);
    goto LABEL_15;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v55 + 96))(v54, v56);
    v76 = v112;
    v77 = v83;
    (*(v112 + 32))(v83, v54, v17);
    v35 = sub_100979C78(v77);
    (*(v76 + 8))(v77, v17);
    goto LABEL_43;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v105;
    v59 = v84;
    v60 = v115;
    (*(v105 + 32))(v84, v54, v115);
    v61 = sub_100978730(v59);
    goto LABEL_37;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v97;
    v59 = v82;
    v60 = v100;
    (*(v97 + 32))(v82, v54, v100);
    v61 = sub_10097C7FC(v59);
    goto LABEL_37;
  }

  if (v57 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v57 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v52 + 8))(v53, v98);
    (*(v55 + 8))(v54, v56);
    v66 = v25;
    goto LABEL_55;
  }

  (*(v55 + 8))(v54, v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100979C78(uint64_t a1)
{
  v120 = a1;
  v97 = type metadata accessor for Track();
  v93 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v87 - v2;
  __chkstk_darwin();
  v94 = &v87 - v3;
  v95 = type metadata accessor for Playlist.Entry.InternalItem();
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Playlist.Entry();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v87 - v6;
  v106 = type metadata accessor for TVEpisode();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v87 - v8;
  v107 = type metadata accessor for TVSeason();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v109 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for MusicMovie();
  v108 = *(v112 - 8);
  __chkstk_darwin();
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v87 - v11;
  v115 = type metadata accessor for Song();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v13;
  v118 = type metadata accessor for Playlist();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicVideo();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v119 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v87 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = v15;
  v122[4] = &protocol witness table for MusicVideo;
  v31 = sub_10001C8B8(v122);
  v116 = v16;
  (*(v16 + 16))(v31, v120, v15);
  sub_100008FE4(v122, &v121);
  sub_10010FC20(&qword_1011AA9C8, &qword_100EF29E0);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v32 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v34 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v116 + 8))(v19, v15);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v35 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v113 + 8))(v117, v118);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v36 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v110 + 8))(v114, v115);
    goto LABEL_29;
  }

  v37 = v26;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v38 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v108 + 8))(v111, v112);
    goto LABEL_29;
  }

  v39 = v107;
  v40 = v21;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v37, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v41 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v37, v21);
    (*(v104 + 8))(v109, v39);
    goto LABEL_29;
  }

  v42 = v105;
  v43 = v106;
  v44 = v22;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v37, v40);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v45 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v37, v40);
    (*(v102 + 8))(v42, v43);
    goto LABEL_29;
  }

  v47 = v101;
  v48 = v103;
  if (!swift_dynamicCast())
  {
    v60 = v94;
    v61 = v97;
    v62 = v24;
    if (swift_dynamicCast())
    {
      v63 = v60;
      v64 = v93;
      v65 = v92;
      (*(v93 + 32))(v92, v63, v61);
      v66 = v91;
      (*(v64 + 16))(v91, v65, v61);
      v67 = (*(v64 + 88))(v66, v61);
      if (v67 == enum case for Track.song(_:))
      {
        (*(v64 + 96))(v66, v61);
        v68 = v110;
        v69 = v89;
        v70 = v115;
        (*(v110 + 32))(v89, v66, v115);
        v71 = sub_100978730(v69);
        v72 = v70;
        v33 = v71;
        (*(v68 + 8))(v69, v72);
LABEL_42:
        (*(v64 + 8))(v65, v61);
        goto LABEL_29;
      }

      if (v67 == enum case for Track.musicVideo(_:))
      {
        (*(v64 + 96))(v66, v61);
        v76 = v116;
        v77 = v88;
        (*(v116 + 32))(v88, v66, v15);
        v78 = sub_100979C78(v77);
        (*(v76 + 8))(v77, v15);
        v33 = v78;
        goto LABEL_42;
      }

      v84 = *(v64 + 8);
      v84(v65, v61);
      v84(v66, v61);
    }

LABEL_52:
    sub_10000959C(&v121);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v44 + 16))(v62, v37, v40);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v86 = qword_101219808;
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    (*(v44 + 8))(v37, v40);
    goto LABEL_30;
  }

  v49 = v98;
  v50 = v100;
  (*(v98 + 32))(v100, v47, v48);
  v51 = v96;
  Playlist.Entry.internalItem.getter();
  v52 = v99;
  v53 = v95;
  v54 = (*(v99 + 88))(v51, v95);
  if (v54 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v52 + 96))(v51, v53);
    v55 = v108;
    v56 = v90;
    v57 = v112;
    (*(v108 + 32))(v90, v51, v112);
    v58 = sub_10097B244(v56);
LABEL_34:
    v59 = v57;
    v33 = v58;
    (*(v55 + 8))(v56, v59);
    (*(v49 + 8))(v50, v103);
LABEL_29:
    sub_10000959C(&v121);
LABEL_30:
    sub_10000959C(v122);
    return v33;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v99 + 96))(v51, v53);
    v73 = v116;
    v74 = v88;
    (*(v116 + 32))(v88, v51, v15);
    v75 = sub_100979C78(v74);
    (*(v73 + 8))(v74, v15);
    v33 = v75;
LABEL_45:
    (*(v49 + 8))(v100, v103);
    goto LABEL_29;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v99 + 96))(v51, v53);
    v79 = v110;
    v80 = v89;
    v81 = v115;
    (*(v110 + 32))(v89, v51, v115);
    v82 = sub_100978730(v80);
    v83 = v81;
    v33 = v82;
    (*(v79 + 8))(v80, v83);
    goto LABEL_45;
  }

  v85 = v99;
  v50 = v100;
  if (v54 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v99 + 96))(v51, v53);
    v55 = v102;
    v56 = v87;
    v57 = v106;
    (*(v102 + 32))(v87, v51, v106);
    v58 = sub_10097C7FC(v56);
    goto LABEL_34;
  }

  if (v54 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v54 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v49 + 8))(v100, v103);
    (*(v85 + 8))(v51, v53);
    v62 = v24;
    goto LABEL_52;
  }

  (*(v99 + 8))(v51, v53);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097B244(uint64_t a1)
{
  v114 = a1;
  v94 = type metadata accessor for Track();
  v89 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v2;
  __chkstk_darwin();
  v90 = &v82 - v3;
  v92 = type metadata accessor for Playlist.Entry.InternalItem();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist.Entry();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v82 - v6;
  v101 = type metadata accessor for TVEpisode();
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v82 - v8;
  v103 = type metadata accessor for TVSeason();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicMovie();
  v115 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v82 - v12;
  v109 = type metadata accessor for Song();
  v105 = *(v109 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v82 - v14;
  v110 = type metadata accessor for Playlist();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v112 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  v111 = *(v16 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v82 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v113 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v82 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v10;
  v117[4] = sub_1009831C8(&qword_1011AA9D0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v31 = sub_10001C8B8(v117);
  v32 = v114;
  v33 = *(v115 + 16);
  v114 = v10;
  v33(v31, v32, v10);
  sub_100008FE4(v117, &v116);
  sub_10010FC20(&qword_1011AA9C8, &qword_100EF29E0);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v34 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_16;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v37 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v111 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_15:
    v38(v39, v40);
LABEL_16:
    sub_10000959C(&v116);
LABEL_17:
    sub_10000959C(v117);
    return v35;
  }

  v41 = v110;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v42 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v107 + 8);
    v39 = v112;
    goto LABEL_14;
  }

  v44 = v36;
  v45 = v108;
  v36 = v109;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v105 + 8);
    v39 = v45;
    goto LABEL_9;
  }

  v41 = v114;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v47 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v115 + 8);
    v39 = v106;
    goto LABEL_14;
  }

  v41 = v103;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v48 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v100 + 8);
    v49 = &v119;
LABEL_34:
    v39 = *(v49 - 32);
LABEL_14:
    v40 = v41;
    goto LABEL_15;
  }

  v41 = v101;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v50 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v98 + 8);
    v49 = &v118;
    goto LABEL_34;
  }

  v51 = v97;
  v52 = v99;
  if (!swift_dynamicCast())
  {
    v63 = v94;
    v64 = v26;
    if (swift_dynamicCast())
    {
      v115 = v21;
      v65 = v89;
      v66 = v88;
      (*(v89 + 32))();
      v67 = v87;
      (*(v65 + 16))(v87, v66, v63);
      v68 = (*(v65 + 88))(v67, v63);
      if (v68 == enum case for Track.song(_:))
      {
        (*(v65 + 96))(v67, v63);
        v69 = v105;
        v70 = v85;
        (*(v105 + 32))(v85, v67, v36);
        v35 = sub_100978730(v70);
        (*(v69 + 8))(v70, v36);
        (*(v65 + 8))(v66, v63);
        goto LABEL_16;
      }

      if (v68 == enum case for Track.musicVideo(_:))
      {
        (*(v65 + 96))(v67, v63);
        v73 = v111;
        v74 = v66;
        v75 = v84;
        (*(v111 + 32))(v84, v67, v44);
        v35 = sub_100979C78(v75);
        (*(v73 + 8))(v75, v44);
        (*(v65 + 8))(v74, v63);
        goto LABEL_16;
      }

      v80 = *(v65 + 8);
      v80(v66, v63);
      v80(v67, v63);
      v21 = v115;
    }

LABEL_55:
    sub_10000959C(&v116);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v64, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v81 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v64, v21);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = v95;
  v55 = v96;
  (*(v95 + 32))(v96, v51, v53);
  v56 = v93;
  Playlist.Entry.internalItem.getter();
  v57 = v91;
  v58 = v92;
  v59 = (*(v91 + 88))(v56, v92);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v114;
    v61 = v115;
    v62 = v86;
    (*(v115 + 32))(v86, v56, v114);
    v35 = sub_10097B244(v62);
    (*(v61 + 8))(v62, v60);
    (*(v54 + 8))(v55, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v71 = v111;
    v72 = v84;
    (*(v111 + 32))(v84, v56, v44);
    v35 = sub_100979C78(v72);
    (*(v71 + 8))(v72, v44);
LABEL_51:
    (*(v54 + 8))(v96, v99);
    goto LABEL_16;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v105;
    v77 = v85;
    v78 = v109;
    (*(v105 + 32))(v85, v56, v109);
    v79 = sub_100978730(v77);
LABEL_50:
    v35 = v79;
    (*(v76 + 8))(v77, v78);
    goto LABEL_51;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v76 = v98;
    v77 = v83;
    v78 = v101;
    (*(v98 + 32))(v83, v56, v101);
    v79 = sub_10097C7FC(v77);
    goto LABEL_50;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v96, v99);
    (*(v57 + 8))(v56, v58);
    v64 = v26;
    goto LABEL_55;
  }

  (*(v57 + 8))(v56, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097C7FC(uint64_t a1)
{
  v125 = a1;
  v105 = type metadata accessor for Track();
  v100 = *(v105 - 8);
  __chkstk_darwin();
  v98 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v93 - v2;
  __chkstk_darwin();
  v101 = &v93 - v3;
  v103 = type metadata accessor for Playlist.Entry.InternalItem();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Entry();
  v106 = *(v109 - 8);
  __chkstk_darwin();
  v107 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v7 = type metadata accessor for TVEpisode();
  v126 = *(v7 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v9;
  v114 = type metadata accessor for TVSeason();
  v110 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for MusicMovie();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v93 - v12;
  v119 = type metadata accessor for Song();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v93 - v14;
  v122 = type metadata accessor for Playlist();
  v118 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  v123 = *(v16 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v93 - v25;
  v27 = type metadata accessor for Album();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = v7;
  v128[4] = sub_1009831C8(&qword_1011AA9D8, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v31 = sub_10001C8B8(v128);
  v32 = v125;
  v33 = *(v126 + 16);
  v125 = v7;
  v33(v31, v32, v7);
  sub_100008FE4(v128, &v127);
  sub_10010FC20(&qword_1011AA9C8, &qword_100EF29E0);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v34 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_27;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v37 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v123 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_26:
    v38(v39, v40);
LABEL_27:
    sub_10000959C(&v127);
LABEL_28:
    sub_10000959C(v128);
    return v35;
  }

  v42 = v121;
  v41 = v122;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v43 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v118 + 8))(v42, v41);
    goto LABEL_27;
  }

  v44 = v119;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v45 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v115 + 8))(v120, v44);
    goto LABEL_27;
  }

  v46 = v24;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v47 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    (*(v112 + 8))(v116, v117);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v48 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v110 + 8);
    v39 = v113;
    v40 = v114;
    goto LABEL_26;
  }

  v122 = v36;
  v36 = v125;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v50 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v26, v21);
    v38 = *(v126 + 8);
    v39 = v111;
    goto LABEL_9;
  }

  v51 = v108;
  v52 = v109;
  if (!swift_dynamicCast())
  {
    v65 = v101;
    v66 = v105;
    v67 = v21;
    v68 = v26;
    if (swift_dynamicCast())
    {
      v69 = v100;
      v70 = v99;
      (*(v100 + 32))(v99, v65, v66);
      v71 = v98;
      (*(v69 + 16))(v98, v70, v66);
      v72 = (*(v69 + 88))(v71, v66);
      if (v72 == enum case for Track.song(_:))
      {
        (*(v69 + 96))(v71, v66);
        v73 = v115;
        v74 = v96;
        (*(v115 + 32))(v96, v71, v44);
        v75 = sub_100978730(v74);
        (*(v73 + 8))(v74, v44);
        v35 = v75;
LABEL_43:
        (*(v69 + 8))(v70, v66);
        goto LABEL_27;
      }

      if (v72 == enum case for Track.musicVideo(_:))
      {
        (*(v69 + 96))(v71, v66);
        v81 = v122;
        v82 = v123;
        v83 = v95;
        (*(v123 + 32))(v95, v71, v122);
        v84 = sub_100979C78(v83);
        v85 = v81;
        v35 = v84;
        (*(v82 + 8))(v83, v85);
        goto LABEL_43;
      }

      v90 = *(v69 + 8);
      v90(v70, v66);
      v90(v71, v66);
    }

LABEL_54:
    sub_10000959C(&v127);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v22 + 16))(v46, v68, v67);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v92 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v22 + 8))(v68, v67);
    goto LABEL_28;
  }

  v53 = v106;
  v54 = v107;
  (*(v106 + 32))(v107, v51, v52);
  v55 = v104;
  Playlist.Entry.internalItem.getter();
  v56 = v102;
  v57 = v103;
  v58 = (*(v102 + 88))(v55, v103);
  if (v58 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v56 + 96))(v55, v57);
    v59 = v112;
    v60 = v97;
    v61 = v117;
    (*(v112 + 32))(v97, v55, v117);
    v62 = sub_10097B244(v60);
    (*(v59 + 8))(v60, v61);
    v63 = *(v53 + 8);
    v64 = v54;
LABEL_50:
    v91 = v52;
    v35 = v62;
    v63(v64, v91);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v56 + 96))(v55, v57);
    v76 = v122;
    v77 = v123;
    v78 = v95;
    (*(v123 + 32))(v95, v55, v122);
    v79 = sub_100979C78(v78);
    (*(v77 + 8))(v78, v76);
    v80 = v52;
    v35 = v79;
    (*(v53 + 8))(v107, v80);
    goto LABEL_27;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v56 + 96))(v55, v57);
    v86 = v115;
    v87 = v96;
    v88 = v119;
    (*(v115 + 32))(v96, v55, v119);
    v89 = sub_100978730(v87);
LABEL_49:
    v62 = v89;
    (*(v86 + 8))(v87, v88);
    v63 = *(v53 + 8);
    v64 = v107;
    goto LABEL_50;
  }

  if (v58 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v56 + 96))(v55, v57);
    v88 = v125;
    v86 = v126;
    v87 = v94;
    (*(v126 + 32))(v94, v55, v125);
    v89 = sub_10097C7FC(v87);
    goto LABEL_49;
  }

  if (v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v53 + 8))(v107, v52);
    (*(v56 + 8))(v55, v57);
    v67 = v21;
    v68 = v26;
    goto LABEL_54;
  }

  (*(v56 + 8))(v55, v57);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097DDF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v90 = type metadata accessor for Track();
  v84 = *(v90 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v5;
  __chkstk_darwin();
  v85 = &v77 - v6;
  v87 = type metadata accessor for Playlist.Entry.InternalItem();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Playlist.Entry();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v9;
  v96 = type metadata accessor for TVEpisode();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v100 = type metadata accessor for TVSeason();
  v95 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for MusicMovie();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v77 - v14;
  v105 = type metadata accessor for Song();
  v101 = *(v105 - 8);
  __chkstk_darwin();
  v80 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v77 - v16;
  v108 = type metadata accessor for Playlist();
  v104 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicVideo();
  v109 = *(v18 - 8);
  __chkstk_darwin();
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v77 - v20;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v110 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v77 - v27;
  v29 = type metadata accessor for Album();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a2;
  v114[4] = v111;
  v33 = sub_10001C8B8(v114);
  (*(*(a2 - 8) + 16))(v33, v112, a2);
  sub_100008FE4(v114, &v113);
  sub_10010FC20(&qword_1011AA9C8, &qword_100EF29E0);
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v34 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v30 + 8))(v32, v29);
    goto LABEL_29;
  }

  v36 = v18;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v37 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v109 + 8))(v21, v18);
    goto LABEL_29;
  }

  v39 = v107;
  v38 = v108;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v40 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v104 + 8))(v39, v38);
    goto LABEL_29;
  }

  v41 = v105;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v42 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v101 + 8))(v106, v41);
    goto LABEL_29;
  }

  v43 = v28;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v44 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v98 + 8))(v102, v103);
    goto LABEL_29;
  }

  v45 = v23;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v46 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v23);
    (*(v95 + 8))(v99, v100);
    goto LABEL_29;
  }

  v47 = v96;
  v48 = v24;
  if (swift_dynamicCast())
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v24 + 16))(v26, v28, v45);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v49 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v24 + 8))(v28, v45);
    (*(v94 + 8))(v97, v47);
    goto LABEL_29;
  }

  v51 = v92;
  v52 = v93;
  if (!swift_dynamicCast())
  {
    v64 = v85;
    v65 = v90;
    if (swift_dynamicCast())
    {
      v112 = v36;
      v66 = v84;
      v67 = v83;
      (*(v84 + 32))(v83, v64, v65);
      v68 = v82;
      (*(v66 + 16))(v82, v67, v65);
      v69 = (*(v66 + 88))(v68, v65);
      if (v69 == enum case for Track.song(_:))
      {
        (*(v66 + 96))(v68, v65);
        v70 = v101;
        v71 = v80;
        (*(v101 + 32))(v80, v68, v41);
        v35 = sub_100978730(v71);
        (*(v70 + 8))(v71, v41);
LABEL_41:
        (*(v66 + 8))(v67, v65);
LABEL_29:
        sub_10000959C(&v113);
LABEL_30:
        sub_10000959C(v114);
        return v35;
      }

      if (v69 == enum case for Track.musicVideo(_:))
      {
        (*(v66 + 96))(v68, v65);
        v72 = v109;
        v73 = v79;
        v74 = v112;
        (*(v109 + 32))(v79, v68, v112);
        v35 = sub_100979C78(v73);
        (*(v72 + 8))(v73, v74);
        goto LABEL_41;
      }

      v75 = *(v66 + 8);
      v75(v67, v65);
      v75(v68, v65);
    }

LABEL_51:
    sub_10000959C(&v113);
    String.LocalizationValue.init(stringLiteral:)();
    (*(v48 + 16))(v26, v43, v45);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v76 = qword_101219808;
    static Locale.current.getter();
    v35 = String.init(localized:table:bundle:locale:comment:)();
    (*(v48 + 8))(v43, v45);
    goto LABEL_30;
  }

  v112 = v36;
  v53 = v51;
  v54 = v91;
  v55 = v89;
  (*(v91 + 32))(v89, v53, v52);
  v56 = v88;
  Playlist.Entry.internalItem.getter();
  v57 = v86;
  v58 = v87;
  v59 = (*(v86 + 88))(v56, v87);
  if (v59 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v98;
    v61 = v81;
    v62 = v103;
    (*(v98 + 32))(v81, v56, v103);
    v63 = sub_10097B244(v61);
LABEL_47:
    v35 = v63;
    (*(v60 + 8))(v61, v62);
    (*(v54 + 8))(v55, v52);
    goto LABEL_29;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v109;
    v61 = v79;
    v62 = v112;
    (*(v109 + 32))(v79, v56, v112);
    v63 = sub_100979C78(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v101;
    v61 = v80;
    v62 = v105;
    (*(v101 + 32))(v80, v56, v105);
    v63 = sub_100978730(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v94;
    v61 = v78;
    v62 = v96;
    (*(v94 + 32))(v78, v56, v96);
    v63 = sub_10097C7FC(v61);
    goto LABEL_47;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v55, v52);
    (*(v57 + 8))(v56, v58);
    goto LABEL_51;
  }

  (*(v57 + 8))(v56, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10097F360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = type metadata accessor for UUID();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MusicRestrictions();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v89 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for String.LocalizationValue();
  v9 = *(v102 - 8);
  __chkstk_darwin();
  v103 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v87 - v11;
  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v106);

  v113[4] = v109;
  v113[5] = v110;
  v113[6] = v111;
  v113[7] = v112;
  v113[0] = v106[0];
  v113[1] = v106[1];
  v113[2] = v107;
  v113[3] = v108;
  v13 = *(&v107 + 1);

  sub_100014984(v113);
  LODWORD(v94) = sub_10048BBDC(7, v13);

  v14 = [objc_opt_self() allowAccountModifications];
  v100 = v8;
  if (v14)
  {
    if (a1)
    {
      v15 = [a1 userInterfaceIdiom] != 3;
    }

    else
    {
      v15 = 1;
    }

    LODWORD(v95) = v15;
  }

  else
  {
    LODWORD(v95) = 0;
  }

  v16 = v102;
  v17 = v103;
  String.LocalizationValue.init(stringLiteral:)();
  v104 = *(v9 + 16);
  v105 = v9 + 16;
  v104(v17, v12, v16);
  v18 = v12;
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v19 = qword_101219808;
  v20 = qword_101219808;
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v96 = v22;
  v97 = v21;
  v23 = v9 + 8;
  v24 = *(v9 + 8);
  v24(v18, v16);
  if (v95)
  {
    v25 = v20;
    v92 = v23;
    v93 = v24;
    v87[1] = v19;
    v88 = a2;
    if ((v94 & 1) != 0 || (v26 = v89, static MusicRestrictions.current.getter(), v27 = MusicRestrictions.allowsMusicVideos.getter(), (*(v90 + 8))(v26, v91), (v27 & 1) == 0))
    {
      v64 = v18;
      String.LocalizationValue.init(stringLiteral:)();
      v66 = v102;
      v65 = v103;
      v104(v103, v64, v102);
      v67 = v25;
      static Locale.current.getter();
      v68 = v67;
      v94 = String.init(localized:table:bundle:locale:comment:)();
      v95 = v69;
      v70 = v93;
      v93(v64, v66);
      sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100EBDC20;
      String.LocalizationValue.init(stringLiteral:)();
      v104(v65, v64, v66);
      static Locale.current.getter();
      v71 = String.init(localized:table:bundle:locale:comment:)();
      v90 = v72;
      v91 = v71;
      v70(v64, v66);
      v73 = v98;
      UUID.init()();
      v74 = UUID.uuidString.getter();
      v76 = v75;
      v99 = *(v99 + 8);
      (v99)(v73, v101);
      *(v36 + 32) = v74;
      *(v36 + 40) = v76;
      v77 = v90;
      *(v36 + 48) = v91;
      *(v36 + 56) = v77;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_100EF2A30;
      *(v36 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v78 = v66;
      v104(v65, v64, v66);
      static Locale.current.getter();
      v79 = String.init(localized:table:bundle:locale:comment:)();
      v81 = v80;
      v93(v64, v78);
      UUID.init()();
      v82 = UUID.uuidString.getter();
      v84 = v83;
      result = (v99)(v73, v101);
      *(v36 + 88) = v82;
      *(v36 + 96) = v84;
      *(v36 + 104) = v79;
      *(v36 + 112) = v81;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
      v32 = v94;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v28 = v103;
      v29 = v102;
      (v104)(v103, v18);
      v30 = v25;
      static Locale.current.getter();
      v31 = v30;
      v32 = String.init(localized:table:bundle:locale:comment:)();
      v95 = v33;
      v34 = v29;
      v35 = v93;
      v93(v18, v29);
      sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100EBDC20;
      String.LocalizationValue.init(stringLiteral:)();
      v104(v28, v18, v34);
      static Locale.current.getter();
      v94 = String.init(localized:table:bundle:locale:comment:)();
      v91 = v37;
      v35(v18, v34);
      v38 = v98;
      UUID.init()();
      v39 = UUID.uuidString.getter();
      v41 = v40;
      v99 = *(v99 + 8);
      (v99)(v38, v101);
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      v42 = v91;
      *(v36 + 48) = v94;
      *(v36 + 56) = v42;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_100EF2A38;
      *(v36 + 80) = 0;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v102;
      v104(v28, v18, v102);
      static Locale.current.getter();
      v44 = String.init(localized:table:bundle:locale:comment:)();
      v46 = v45;
      v93(v18, v43);
      UUID.init()();
      v47 = UUID.uuidString.getter();
      v49 = v48;
      result = (v99)(v38, v101);
      *(v36 + 88) = v47;
      *(v36 + 96) = v49;
      *(v36 + 104) = v44;
      *(v36 + 112) = v46;
      v51 = (v36 + 128);
      *(v36 + 120) = 2;
    }

    a2 = v88;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    v104(v17, v18, v16);
    v52 = v20;
    static Locale.current.getter();
    v53 = v52;
    v54 = v103;
    v94 = String.init(localized:table:bundle:locale:comment:)();
    v95 = v55;
    v56 = v16;
    v24(v18, v16);
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBC6B0;
    String.LocalizationValue.init(stringLiteral:)();
    v104(v54, v18, v56);
    static Locale.current.getter();
    v32 = v94;
    v57 = String.init(localized:table:bundle:locale:comment:)();
    v59 = v58;
    v24(v18, v56);
    v60 = v98;
    UUID.init()();
    v61 = UUID.uuidString.getter();
    v63 = v62;
    result = (*(v99 + 8))(v60, v101);
    *(v36 + 32) = v61;
    *(v36 + 40) = v63;
    *(v36 + 48) = v57;
    *(v36 + 56) = v59;
    v51 = (v36 + 72);
    *(v36 + 64) = 2;
  }

  *v51 = 0;
  v51[1] = 0;
  v85 = v96;
  *a2 = v97;
  *(a2 + 8) = v85;
  v86 = v95;
  *(a2 + 16) = v32;
  *(a2 + 24) = v86;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v36;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_10097FEA0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for Locale();
  __chkstk_darwin();
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v20[-v10];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v12 = qword_101219808;
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v13;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  return result;
}

void sub_100980138(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v60 = a1;
  v61 = a2;
  v66 = type metadata accessor for UUID();
  v59 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = type metadata accessor for String.LocalizationValue();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  String.LocalizationValue.init(stringLiteral:)();
  v15 = v10;
  v16 = *(v10 + 16);
  v65 = v10 + 16;
  v58 = v16;
  v16(v12, v14, v9);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v17 = qword_101219808;
  v18 = qword_101219808;
  v64 = v17;
  v19 = v18;
  static Locale.current.getter();
  v51 = v19;
  v20 = String.init(localized:table:bundle:locale:comment:)();
  v56 = v21;
  v57 = v20;
  v22 = *(v15 + 8);
  v62 = v15 + 8;
  v63 = v22;
  v22(v14, v9);
  v23 = swift_allocObject();
  v54 = v23;
  v24 = v55;
  *(v23 + 16) = v55;
  *(v23 + 24) = a4;

  UUID.init()();
  v25 = v12;
  v26 = v8;
  v27 = UUID.uuidString.getter();
  v52 = v28;
  v53 = v27;
  v29 = v24;
  v48 = *(v59 + 8);
  v48(v26, v66);
  String.LocalizationValue.init(stringLiteral:)();
  v30 = v58;
  v58(v25, v14, v9);
  static Locale.current.getter();
  v31 = v51;
  v59 = String.init(localized:table:bundle:locale:comment:)();
  v51 = v32;
  v63(v14, v9);
  v33 = swift_allocObject();
  v50 = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = a4;

  UUID.init()();
  v55 = UUID.uuidString.getter();
  v49 = v34;
  v48(v26, v66);
  String.LocalizationValue.init(stringLiteral:)();
  v30(v25, v14, v9);
  static Locale.current.getter();
  v35 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v36;
  v63(v14, v9);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_100EBDC20;
  v39 = v52;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  *(v38 + 64) = 2;
  v41 = v54;
  v42 = v55;
  *(v38 + 72) = &unk_100EF2998;
  *(v38 + 80) = v41;
  v43 = v49;
  *(v38 + 88) = v42;
  *(v38 + 96) = v43;
  v44 = v50;
  v45 = v51;
  *(v38 + 104) = v59;
  *(v38 + 112) = v45;
  *(v38 + 120) = 0;
  *(v38 + 128) = &unk_100EF29A8;
  *(v38 + 136) = v44;

  *a5 = v35;
  *(a5 + 8) = v37;
  *(a5 + 16) = v60;
  *(a5 + 24) = v46;
  *(a5 + 32) = 0;
  *(a5 + 33) = v68[0];
  *(a5 + 36) = *(v68 + 3);
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 49) = *v67;
  *(a5 + 52) = *&v67[3];
  *(a5 + 56) = v38;
  *(a5 + 64) = 0;
}

id sub_10098066C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v45 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v40 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = v5;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v13(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v14 = qword_101219808;
  v49 = qword_101219808;
  static Locale.current.getter();
  v50 = v14;
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v46 = v16;
  v47 = v15;
  v44 = *(v10 + 8);
  v17 = v10 + 8;
  v44(v9, v4);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v19 = result;
    MobileGestalt_get_wapiCapability();

    v41 = a3;
    String.LocalizationValue.init(stringLiteral:)();
    v20 = v51;
    v51(v7, v9, v4);
    v21 = v49;
    static Locale.current.getter();
    v40[1] = v12;
    v22 = String.init(localized:table:bundle:locale:comment:)();
    v42 = v23;
    v43 = v22;
    v24 = v44;
    v40[2] = v17;
    v44(v9, v4);
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBDC20;
    String.LocalizationValue.init(stringLiteral:)();
    v20(v7, v9, v4);
    static Locale.current.getter();
    v26 = v49;
    v27 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v28;
    v24(v9, v4);
    v30 = swift_allocObject();
    v31 = v45;
    v32 = v48;
    *(v30 + 16) = v45;
    *(v30 + 24) = v32;
    *(v25 + 32) = 0x6C65636E6163;
    *(v25 + 40) = 0xE600000000000000;
    *(v25 + 48) = v27;
    *(v25 + 56) = v29;
    *(v25 + 64) = 0;
    *(v25 + 72) = &unk_100EF29B8;
    *(v25 + 80) = v30;
    sub_100030444(v31, v32);
    String.LocalizationValue.init(stringLiteral:)();
    v51(v7, v9, v4);
    static Locale.current.getter();
    v33 = String.init(localized:table:bundle:locale:comment:)();
    v35 = v34;
    v24(v9, v4);
    v36 = swift_allocObject();
    *(v36 + 16) = v31;
    *(v36 + 24) = v32;
    *(v25 + 88) = 0x6E4F6E727574;
    *(v25 + 96) = 0xE600000000000000;
    *(v25 + 104) = v33;
    *(v25 + 112) = v35;
    *(v25 + 120) = 2;
    *(v25 + 128) = &unk_100EF29C8;
    *(v25 + 136) = v36;
    result = sub_100030444(v31, v32);
    v37 = v46;
    v38 = v41;
    *v41 = v47;
    v38[1] = v37;
    v39 = v42;
    v38[2] = v43;
    v38[3] = v39;
    *(v38 + 32) = 0;
    *(v38 + 33) = v53[0];
    *(v38 + 9) = *(v53 + 3);
    v38[5] = 0;
    *(v38 + 48) = 1;
    *(v38 + 49) = *v52;
    *(v38 + 13) = *&v52[3];
    v38[7] = v25;
    v38[8] = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100980BA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A69B8 != -1)
  {
    swift_once();
  }

  v8 = static CloudLibrary.EnablementContext.action;

  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = CloudLibrary.EnablementContext.title.getter(v2);
  v14 = v13;
  v15 = CloudLibrary.EnablementContext.message.getter(v2);
  v17 = v16;
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBDC20;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v8;
  *(v18 + 64) = 2;
  *(v18 + 72) = &unk_100EF2988;
  *(v18 + 80) = 0;

  sub_10097FEA0(v21);
  v19 = v21[1];
  *(v18 + 88) = v21[0];
  *(v18 + 104) = v19;
  *(v18 + 120) = v21[2];
  *(v18 + 136) = v22;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 33) = v21[0];
  *(a2 + 36) = *(v21 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v23;
  *(a2 + 52) = *&v23[3];
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
}

id sub_100980DD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for String.LocalizationValue();
  v95 = *(v93 - 8);
  __chkstk_darwin();
  v10 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v81 - v11;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v89 = v7;
  v90 = v5;
  v91 = v4;
  v92 = a2;
  if (!a1)
  {
    goto LABEL_38;
  }

  objc_opt_self();
  v16 = v10;
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    if (wapiCapability)
    {
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_1011A6740 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v93;
      v18(v10, v12, v93);
      v20 = v10;
      if (qword_1011A6740 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v21 = v93;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    String.LocalizationValue.init(stringLiteral:)();
    v22 = v95;
    v23 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v12, v21);
    v24 = v16;
    if (qword_1011A6740 == -1)
    {
      goto LABEL_34;
    }

LABEL_53:
    swift_once();
    goto LABEL_34;
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (!v25)
  {
LABEL_38:
    v19 = v93;
    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v26 = v25;
  v27 = MPModelRelationshipMediaClipStaticAssets;
  v28 = a1;
  if (![v26 hasLoadedValueForKey:v27])
  {

    goto LABEL_38;
  }

  v29 = [v26 staticAssets];
  v19 = v93;
  if (!v29)
  {

    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      String.LocalizationValue.init(stringLiteral:)();
      v17 = v95;
      v18 = *(v95 + 16);
      v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v16, v12, v19);
      v20 = v16;
      if (qword_1011A6740 == -1)
      {
LABEL_43:
        v55 = qword_101219808;
        static Locale.current.getter();
        v56 = v55;
        v57 = String.init(localized:table:bundle:locale:comment:)();
        v87 = v58;
        v88 = v57;
        v59 = *(v17 + 8);
        v59(v12, v19);
        String.LocalizationValue.init(stringLiteral:)();
        v18(v20, v12, v19);
        static Locale.current.getter();
        v60 = String.init(localized:table:bundle:locale:comment:)();
        v85 = v61;
        v86 = v60;
        v59(v12, v19);
        v46 = v59;
        String.LocalizationValue.init(stringLiteral:)();
        v49 = v12;
        v62 = v12;
        v51 = v19;
        v18(v20, v62, v19);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v52 = v18;
        v82 = v56;
        static Locale.current.getter();
        v63 = String.init(localized:table:bundle:locale:comment:)();
        v93 = v64;
        v83 = v63;
        v84 = &unk_100EF2978;
        v48 = v20;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    String.LocalizationValue.init(stringLiteral:)();
    v17 = v95;
    v18 = *(v95 + 16);
    v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v16, v12, v19);
    v20 = v16;
    if (qword_1011A6740 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v30 = v29;
  v87 = v28;
  sub_100982E0C();
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
LABEL_56:
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v31;
  v16 = v10;
  if (!v32)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v34 = 0;
  v94 = MPModelPropertyStaticAssetMediaType;
  v88 = v31 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v34 >= *(v88 + 16))
      {
        goto LABEL_55;
      }

      v35 = *(v33 + 8 * v34 + 32);
    }

    v19 = v35;
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v35 hasLoadedValueForKey:v94])
    {
      break;
    }

LABEL_23:
    ++v34;
    v19 = v93;
    v33 = v31;
    if (v36 == v32)
    {
      goto LABEL_41;
    }
  }

  v37 = [v19 mediaType];

  v38 = v37 == 2;
  v16 = v10;
  if (!v38)
  {
    goto LABEL_23;
  }

  v21 = v93;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  String.LocalizationValue.init(stringLiteral:)();
  v22 = v95;
  v23 = *(v95 + 16);
  v94 = (v95 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16, v12, v21);
  v24 = v16;
  if (qword_1011A6740 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v39 = qword_101219808;
  static Locale.current.getter();
  v40 = v39;
  v41 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v42;
  v88 = v41;
  v43 = *(v22 + 8);
  v43(v12, v21);
  String.LocalizationValue.init(stringLiteral:)();
  v23(v24, v12, v21);
  static Locale.current.getter();
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v85 = v45;
  v86 = v44;
  v43(v12, v21);
  v46 = v43;
  v47 = v21;
  v48 = v24;
  String.LocalizationValue.init(stringLiteral:)();
  v49 = v12;
  v50 = v12;
  v51 = v47;
  v23(v24, v50, v47);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v52 = v23;
  v82 = v40;
  static Locale.current.getter();
  v53 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v54;
  v83 = v53;
  v84 = &unk_100EF2980;
LABEL_46:
  v81 = v46;
  v46(v49, v51);
  v65 = v89;
  UUID.init()();
  v95 = UUID.uuidString.getter();
  v67 = v66;
  v68 = v91;
  v69 = *(v90 + 8);
  v69(v65, v91);

  String.LocalizationValue.init(stringLiteral:)();
  v52(v48, v49, v51);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  static Locale.current.getter();
  v70 = String.init(localized:table:bundle:locale:comment:)();
  v96 = v71;
  v81(v49, v51);
  UUID.init()();
  v72 = UUID.uuidString.getter();
  v74 = v73;
  v69(v65, v68);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_100EBDC20;
  *(v75 + 32) = v95;
  *(v75 + 40) = v67;
  v76 = v84;
  *(v75 + 48) = v83;
  *(v75 + 56) = v93;
  *(v75 + 64) = 2;
  *(v75 + 72) = v76;
  *(v75 + 80) = 0;
  *(v75 + 88) = v72;
  *(v75 + 96) = v74;
  v77 = v96;
  *(v75 + 104) = v70;
  *(v75 + 112) = v77;
  *(v75 + 120) = 0;
  *(v75 + 128) = 0;
  *(v75 + 136) = 0;

  result = sub_100020438(v76, 0);
  v78 = v92;
  v79 = v87;
  *v92 = v88;
  v78[1] = v79;
  v80 = v85;
  v78[2] = v86;
  v78[3] = v80;
  *(v78 + 32) = 0;
  *(v78 + 33) = v98[0];
  *(v78 + 9) = *(v98 + 3);
  v78[5] = 0;
  *(v78 + 48) = 1;
  *(v78 + 49) = *v97;
  *(v78 + 13) = *&v97[3];
  v78[7] = v75;
  v78[8] = 0;
  return result;
}

void sub_100981C90(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  __chkstk_darwin();
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for String.LocalizationValue();
  v60 = *(v64 - 8);
  __chkstk_darwin();
  v61 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v51 - v11;
  v13 = MobileGestalt_get_current_device();
  if (v13)
  {
    v14 = v13;
    MobileGestalt_get_wapiCapability();

    v15 = MobileGestalt_get_current_device();
    if (v15)
    {
      v16 = v15;
      MobileGestalt_get_cellularDataCapability();

      v59 = v9;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v17 = v64;
        v18 = v61;
        v19 = v60;
      }

      else
      {
        v17 = v64;
        v19 = v60;
        v18 = v61;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v58 = *(v19 + 16);
      v58(v18, v12, v17);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v57 = qword_101219808;
      static Locale.current.getter();
      v20 = String.init(localized:table:bundle:locale:comment:)();
      v53 = v21;
      v54 = v20;
      v22 = *(v19 + 8);
      v22(v12, v17);
      v55 = v6;
      v56 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v23 = _swiftEmptyArrayStorage;
      }

      else
      {
        v52 = a3;
        String.LocalizationValue.init(stringLiteral:)();
        v58(v18, v12, v17);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v24 = v57;
        static Locale.current.getter();
        v25 = String.init(localized:table:bundle:locale:comment:)();
        v27 = v26;
        v22(v12, v17);
        v28 = v62;
        UUID.init()();
        v29 = UUID.uuidString.getter();
        v31 = v30;
        (*(v63 + 8))(v28, v6);
        v23 = sub_10089CAD0(0, 1, 1, _swiftEmptyArrayStorage);
        v33 = *(v23 + 2);
        v32 = *(v23 + 3);
        if (v33 >= v32 >> 1)
        {
          v23 = sub_10089CAD0((v32 > 1), v33 + 1, 1, v23);
        }

        *(v23 + 2) = v33 + 1;
        v34 = &v23[56 * v33];
        *(v34 + 4) = v29;
        *(v34 + 5) = v31;
        *(v34 + 6) = v25;
        *(v34 + 7) = v27;
        v34[64] = 2;
        *(v34 + 9) = &unk_100EF2970;
        *(v34 + 10) = 0;
        a3 = v52;
        v17 = v64;
        v18 = v61;
      }

      String.LocalizationValue.init(stringLiteral:)();
      v58(v18, v12, v17);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v35 = v57;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v37;
      v22(v12, v17);
      v39 = v62;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      (*(v63 + 8))(v39, v55);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_10089CAD0(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = v53;
      v43 = v54;
      v46 = *(v23 + 2);
      v45 = *(v23 + 3);
      if (v46 >= v45 >> 1)
      {
        v23 = sub_10089CAD0((v45 > 1), v46 + 1, 1, v23);
      }

      *(v23 + 2) = v46 + 1;
      v47 = &v23[56 * v46];
      *(v47 + 4) = v40;
      *(v47 + 5) = v42;
      *(v47 + 6) = v36;
      *(v47 + 7) = v38;
      v47[64] = 2;
      *(v47 + 9) = 0;
      *(v47 + 10) = 0;
      if (v56)
      {
        v48 = [v56 userInterfaceIdiom];

        if (v48 == 3)
        {
          v49 = 0;
          v50 = v44;
          v44 = 0;
LABEL_27:
          v65 = 1;
          *a3 = v49;
          *(a3 + 8) = v44;
          *(a3 + 16) = v43;
          *(a3 + 24) = v50;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v23;
          *(a3 + 64) = 0;
          return;
        }
      }

      else
      {
      }

      v50 = 0;
      v49 = v43;
      v43 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1009823E4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v9 = qword_101219808;
  static Locale.current.getter();
  v10 = v9;
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v23 = v12;
  v24 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v13(v7, v2);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EBC6B0;
  sub_10097FEA0(v25);
  result = *v25;
  v19 = v25[1];
  v20 = v25[2];
  *(v17 + 32) = v25[0];
  *(v17 + 48) = v19;
  *(v17 + 64) = v20;
  *(v17 + 80) = v26;
  v21 = v23;
  *a1 = v24;
  *(a1 + 8) = v21;
  *(a1 + 16) = v14;
  *(a1 + 24) = v16;
  *(a1 + 32) = 0;
  *(a1 + 33) = v25[0];
  *(a1 + 36) = *(v25 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 49) = *v27;
  *(a1 + 52) = *&v27[3];
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1009826E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v53 = a3;
  v57 = type metadata accessor for UUID();
  v54 = *(v57 - 8);
  __chkstk_darwin();
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v11 = qword_101219808;
  v12 = qword_101219808;
  static Locale.current.getter();
  v13 = v12;
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v51 = v15;
  v52 = v14;
  v16 = *(v5 + 8);
  v43 = v5 + 8;
  v16(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  v45 = v10;
  v47 = v5 + 16;
  static Locale.current.getter();
  v44 = v11;
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v49 = v18;
  v50 = v17;
  v19 = v16;
  v46 = v16;
  v16(v9, v4);
  sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBDC20;
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v21 = String.init(localized:table:bundle:locale:comment:)();
  v41 = v22;
  v42 = v21;
  v19(v9, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v55;

  v24 = v48;
  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v54 = *(v54 + 8);
  (v54)(v24, v57);
  *(v20 + 32) = v25;
  *(v20 + 40) = v27;
  v28 = v41;
  *(v20 + 48) = v42;
  *(v20 + 56) = v28;
  *(v20 + 64) = 2;
  *(v20 + 72) = &unk_100EF2958;
  *(v20 + 80) = v23;
  String.LocalizationValue.init(stringLiteral:)();
  v45(v7, v9, v4);
  static Locale.current.getter();
  v29 = String.init(localized:table:bundle:locale:comment:)();
  v31 = v30;
  v46(v9, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = v56;
  *(v32 + 24) = v55;

  UUID.init()();
  v33 = UUID.uuidString.getter();
  v35 = v34;
  result = (v54)(v24, v57);
  *(v20 + 88) = v33;
  *(v20 + 96) = v35;
  *(v20 + 104) = v29;
  *(v20 + 112) = v31;
  *(v20 + 120) = 2;
  *(v20 + 128) = &unk_100EF2968;
  *(v20 + 136) = v32;
  v37 = v53;
  v38 = v50;
  v39 = v51;
  *v53 = v52;
  v37[1] = v39;
  v37[2] = v38;
  v37[3] = v49;
  *(v37 + 32) = 0;
  *(v37 + 33) = v59[0];
  *(v37 + 9) = *(v59 + 3);
  v37[5] = 1;
  *(v37 + 48) = 0;
  *(v37 + 49) = *v58;
  *(v37 + 13) = *&v58[3];
  v37[7] = v20;
  v37[8] = 0;
  return result;
}

uint64_t sub_100982CAC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100977FE8(a1, a2, v7, v6);
}

uint64_t sub_100982D5C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_100978070(a1, a2, v7, v6);
}

unint64_t sub_100982E0C()
{
  result = qword_1011AA9C0;
  if (!qword_1011AA9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AA9C0);
  }

  return result;
}

uint64_t sub_100982E58(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_100977C6C(a1, a2, v7, v6);
}

uint64_t sub_100982F08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_100977EAC(a1, a2, v6);
}

uint64_t sub_100982FB8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_10097772C(a1, a2, v7, v6);
}

uint64_t sub_100983068(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F30;

  return sub_1009777BC(a1, a2, v7, v6);
}

uint64_t sub_100983118(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return sub_10097788C(a1, a2, v2 + 16, v6);
}

uint64_t sub_1009831C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UInt32.formatName.getter(int a1)
{
  v10 = 0;
  memset(inSpecifier, 0, sizeof(inSpecifier));
  DWORD2(inSpecifier[0]) = a1;
  if (a1 == 1634492771)
  {
    return 1128352833;
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = AudioFormatGetProperty(0x666E616Du, 0x28u, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (Property == noErr.getter() || !outPropertyData)
  {
    if (qword_1011A6938 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000060E4(v4, static Logger.audioFormat);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = Property;
      _os_log_impl(&_mh_execute_header, v5, v6, "AudioFormatGetProperty kAudioFormatProperty_FormatName error: %d", v7, 8u);
    }

    return 0;
  }

  else
  {
    countAndFlagsBits = String.init(_:)(outPropertyData)._countAndFlagsBits;

    return countAndFlagsBits;
  }
}

char *sub_1009833D0()
{
  result = sub_1009833F0();
  static Datavault.music = result;
  return result;
}

char *sub_1009833F0()
{
  sub_10010FC20(&qword_1011AA9F8, &qword_100EF2A48);
  __chkstk_darwin();
  v1 = &v20 - v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier:v11];

  if (!v12)
  {
    return 0;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.appendingPathComponent(_:isDirectory:)();
  type metadata accessor for Datavault(0);
  (*(v3 + 16))(v5, v7, v2);
  v14 = Datavault.__allocating_init(url:storageClass:)(v5, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_1011A6910 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_1000060E4(v15, qword_1011AA9E0);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v1, v16, v15);
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  (*(v17 + 56))(v1, 0, 1, v15);
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_100983D38(v1, &v14[v19]);
  swift_endAccess();
  return v14;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

double static Datavault.music.getter()
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static Datavault.music.setter(uint64_t a1)
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;

  return result;
}

uint64_t (*static Datavault.music.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1011A6908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_100983C54()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AA9E0);
  sub_1000060E4(v0, qword_1011AA9E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100983CD0(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A9120, &qword_100EEF840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100983D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA9F8, &qword_100EF2A48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v1 = &v16 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v11, v8);
    sub_100984258(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v14 = v13;
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v7, v2);
    (*(v9 + 8))(v11, v8);
    return v14;
  }
}

uint64_t DateComponents.lastUpdatedDateString(relativeTo:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DateComponents.date.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100984258(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    Date.lastUpdatedDateString(relativeTo:)();
    v9 = v8;
    (*(v4 + 8))(v6, v3);
    return v9;
  }
}

uint64_t sub_100984258(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  sub_10010FC20(&qword_1011A9B20, &qword_100EF1560);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  static Date.now.getter();
  DateComponents.date.getter();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    sub_100984258(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    Date.lastUpdatedDateString(relativeTo:)();
    v10 = v9;
    v11 = *(v3 + 8);
    v11(v5, v2);
    v11(v7, v2);
    return v10;
  }
}

void Date.lastUpdatedDateString(relativeTo:)()
{
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  Date.timeIntervalSince(_:)();
  if (v6 <= 0.0)
  {
    return;
  }

  if (v6 < 3600.0)
  {
    v7 = v6 / 60.0;
    if (*&v7 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        v8 = v7;
        if (!v7)
        {
          String.LocalizationValue.init(stringLiteral:)();
          goto LABEL_21;
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v9._countAndFlagsBits = 0x2064657461647055;
        v9._object = 0xE800000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
        v24 = v8;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v10 = 9;
        goto LABEL_8;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v6 >= 86400.0)
  {
    if (v6 >= 604800.0)
    {
      if (v6 >= 2592000.0)
      {
        return;
      }

      v20 = v6 / 604800.0;
      if (*&v20 >> 52 <= 0x7FEuLL)
      {
        if (v20 > -9.22337204e18)
        {
          if (v20 < 9.22337204e18)
          {
            v21 = v20;
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v22._countAndFlagsBits = 0x2064657461647055;
            v22._object = 0xE800000000000000;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
            v24 = v21;
            String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
            v10 = 19;
LABEL_8:
            v11 = v10 | 0x6F67612064;
LABEL_19:
            v15 = 0xE500000000000000;
            goto LABEL_20;
          }

LABEL_42:
          __break(1u);
          return;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = v6 / 86400.0;
    if (*&v16 >> 52 <= 0x7FEuLL)
    {
      if (v16 > -9.22337204e18)
      {
        if (v16 < 9.22337204e18)
        {
          v17 = v16;
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v18._countAndFlagsBits = 0x2064657461647055;
          v18._object = 0xE800000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
          v24 = v17;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v11 = 0x6F67612064;
          goto LABEL_19;
        }

        goto LABEL_39;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = v6 / 3600.0;
  if (*&v12 >> 52 > 0x7FEuLL)
  {
    goto LABEL_34;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v12;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2064657461647055;
  v14._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  v24 = v13;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v11 = 0x6F6761207268;
  v15 = 0xE600000000000000;
LABEL_20:
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
  String.LocalizationValue.init(stringInterpolation:)();
LABEL_21:
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v19 = qword_101219808;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.lastUpdatedDateString(relativeTo:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v68 = a2;
  v67 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v66 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v59 - v11;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v12 = type metadata accessor for Calendar.Component();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Calendar();
  __chkstk_darwin();
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v10;
  if ((a4 & 1) != 0 || (v20 = *&a3, *&a3 <= 0.0))
  {
    v36 = 0;
    v38 = 0;
    if ((v68 & 1) == 0)
    {
LABEL_13:
      if (v38)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
        v73 = v67;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v40._countAndFlagsBits = 0x297328676E6F7320;
        v40._object = 0xEA0000000000202CLL;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
        v41._countAndFlagsBits = v36;
        v41._object = v38;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v41);

        v42 = 0;
        v43 = 0xE000000000000000;
LABEL_17:
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v42);
        v46 = v65;
        String.LocalizationValue.init(stringInterpolation:)();
        (*(v8 + 16))(v64, v46, v7);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v47 = qword_101219808;
        static Locale.current.getter();
        v36 = String.init(localized:table:bundle:locale:comment:)();
        (*(v8 + 8))(v46, v7);
        return v36;
      }

      v44 = v67;
      if (v67 >= 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v45._countAndFlagsBits = 0;
        v45._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v45);
        v73 = v44;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v42 = 0x297328676E6F7320;
        v43 = 0xE800000000000000;
        goto LABEL_17;
      }

      return 0;
    }

LABEL_9:
    if (v38)
    {
      return v36;
    }

    return 0;
  }

  v60 = v17;
  v61 = v7;
  v62 = v16;
  v63 = v8;
  static Calendar.current.getter();
  v21 = *(v13 + 104);
  v21(v15, enum case for Calendar.Component.second(_:), v12);
  Calendar.maximumRange(of:)();
  v59 = v22;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v15, v12);
  if (v24 & 1) != 0 || (v21(v15, enum case for Calendar.Component.minute(_:), v12), Calendar.maximumRange(of:)(), v27 = v26, v29 = v28, result = (v25)(v15, v12), (v29))
  {
    v8 = v63;
    goto LABEL_6;
  }

  v48 = v59 * v27;
  v8 = v63;
  if ((v59 * v27) >> 64 != (v59 * v27) >> 63)
  {
    __break(1u);
    goto LABEL_43;
  }

  if ((~a3 & 0x7FF0000000000000) == 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (*&a3 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&a3 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!v48)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v49 = *&a3;
  if (*&a3 == 0x8000000000000000 && v48 == -1)
  {
    goto LABEL_53;
  }

  v50 = v49 / v48 * v48;
  if ((v49 / v48 * v48) >> 64 != v50 >> 63)
  {
    goto LABEL_47;
  }

  v51 = v49 % v48;
  if (__OFSUB__(v49, v50))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v59)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v51 == 0x8000000000000000 && v59 == -1)
  {
    goto LABEL_54;
  }

  v53 = v51 / v59;
  v54 = v51 / v59 * v59;
  if ((v53 * v59) >> 64 != v54 >> 63)
  {
    goto LABEL_50;
  }

  v55 = __OFADD__(v50, v54);
  v56 = v50 + v54;
  if (v55)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v55 = __OFSUB__(v49, v56);
  v57 = v49 - v56;
  if (v55)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v57 < v59 / 2)
  {
    goto LABEL_6;
  }

  v55 = __OFSUB__(v59, v57);
  v58 = v59 - v57;
  if (!v55)
  {
    v20 = *&a3 + v58;
LABEL_6:
    v31 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v20];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v73 = v33;
      v74 = v35;
      v71 = 44;
      v72 = 0xE100000000000000;
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_10000988C();
      v36 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v38 = v37;

      (*(v60 + 8))(v19, v62);
    }

    else
    {
      (*(v60 + 8))(v19, v62);
      v36 = 0;
      v38 = 0;
    }

    v7 = v61;
    if ((v68 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

LABEL_55:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LSApplicationWorkspace.openSettings()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    URL._bridgeToObjectiveC()(v8);
    v10 = v9;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v45 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v46 = v38 - v8;
  v47 = type metadata accessor for URL();
  v9 = *(v47 - 8);
  __chkstk_darwin();
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = v38 - v12;
  sub_10010FC20(&qword_1011AA638, &qword_100EF2518);
  __chkstk_darwin();
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin();
  v17 = v38 - v16;
  v18 = *(v6 + 56);
  v18(v38 - v16, 1, 1, v5, v15);
  if (a1)
  {
    v19 = [a1 universalStore];
    if (v19)
    {
      v42 = a2;
      v41 = [v19 adamID];
      swift_unknownObjectRelease();
      if (qword_1011A68E8 != -1)
      {
        swift_once();
      }

      sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
      UnfairLock.locked<A>(_:)(sub_10000E338);
      v20 = v49;
      a2 = v42;
      if (v49)
      {
        v40 = v6;
        v21 = String._bridgeToObjectiveC()();
        v22 = v20;
        v23 = [v20 urlForBagKey:v21];

        if (v23)
        {
          v39 = v22;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v9 + 32))(v44, v11, v47);
          URLComponents.init(url:resolvingAgainstBaseURL:)();
          sub_1009874D4(v14, v17);
          v6 = v40;
          v24 = *(v40 + 48);
          v38[1] = v40 + 48;
          if (v24(v17, 1, v5) || (v25 = URLComponents.queryItems.getter()) == 0)
          {

            v25 = _swiftEmptyArrayStorage;
          }

          v49 = v25;
          sub_10010FC20(&qword_1011A7D38, &qword_100EFD9C0);
          type metadata accessor for URLQueryItem();
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_100EBDC20;
          v48 = v41;
          dispatch thunk of CustomStringConvertible.description.getter();
          URLQueryItem.init(name:value:)();

          URLQueryItem.init(name:value:)();
          sub_1008A6464(v37);
          if (v24(v17, 1, v5))
          {
          }

          else
          {
            URLComponents.queryItems.setter();
          }

          a2 = v42;
          v28 = v46;
          v27 = v47;
          (*(v9 + 8))(v44, v47);
          goto LABEL_15;
        }

        a2 = v42;
        v6 = v40;
      }
    }
  }

  URLComponents.init()();
  (v18)(v14, 0, 1, v5);
  sub_1009874D4(v14, v17);
  v24 = *(v6 + 48);
  if (!v24(v17, 1, v5))
  {
    URLComponents.scheme.setter();
  }

  v26 = v24(v17, 1, v5);
  v27 = v47;
  if (!v26)
  {
    URLComponents.host.setter();
  }

  v28 = v46;
LABEL_15:
  if (v24(v17, 1, v5))
  {
    (*(v9 + 56))(v28, 1, 1, v27);
  }

  else
  {
    v29 = v45;
    (*(v6 + 16))(v45, v17, v5);
    URLComponents.url.getter();
    (*(v6 + 8))(v29, v5);
    if ((*(v9 + 48))(v28, 1, v27) != 1)
    {
      (*(v9 + 32))(a2, v28, v27);
      URL._bridgeToObjectiveC()(v32);
      v34 = v33;
      sub_1008BC8D8(_swiftEmptyArrayStorage);
      v35 = a2;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v43 openSensitiveURL:v34 withOptions:isa];

      a2 = v35;
      v30 = 0;
      goto LABEL_19;
    }
  }

  sub_1000095E8(v28, &qword_1011A77F0, &unk_100EEAA20);
  v30 = 1;
LABEL_19:
  (*(v9 + 56))(a2, v30, 1, v27);
  return sub_1000095E8(v17, &qword_1011AA638, &qword_100EF2518);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URLComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v40 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v43 = v38 - v6;
  v7 = type metadata accessor for URL();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin();
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = v38 - v10;
  sub_10010FC20(&qword_1011AA638, &qword_100EF2518);
  __chkstk_darwin();
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = v38 - v14;
  v16 = *(v4 + 56);
  v16(v38 - v14, 1, 1, v3, v13);
  v17 = Album.catalogID.getter();
  v42 = v4;
  if (v18)
  {
    v38[1] = v17;
    v39 = a1;
    if (qword_1011A68E8 != -1)
    {
      swift_once();
    }

    sub_10010FC20(&qword_1011A9F70, &qword_100EE9590);
    UnfairLock.locked<A>(_:)(sub_100011404);
    v19 = v46;
    if (v46)
    {
      v20 = String._bridgeToObjectiveC()();
      v21 = [v19 urlForBagKey:v20];

      if (v21)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v44 + 32))(v41, v9, v45);
        URLComponents.init(url:resolvingAgainstBaseURL:)();
        sub_1009874D4(v12, v15);
        v22 = *(v42 + 48);
        if (v22(v15, 1, v3) || (v23 = URLComponents.queryItems.getter()) == 0)
        {

          v23 = _swiftEmptyArrayStorage;
        }

        v46 = v23;
        sub_10010FC20(&qword_1011A7D38, &qword_100EFD9C0);
        type metadata accessor for URLQueryItem();
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_100EBDC20;
        URLQueryItem.init(name:value:)();

        URLQueryItem.init(name:value:)();
        sub_1008A6464(v28);
        if (v22(v15, 1, v3))
        {
        }

        else
        {
          URLComponents.queryItems.setter();
        }

        v26 = v44;
        v25 = v45;
        v27 = v43;
        (*(v44 + 8))(v41, v45);
        a1 = v39;
        goto LABEL_20;
      }

      v4 = v42;
    }

    a1 = v39;
  }

  URLComponents.init()();
  (v16)(v12, 0, 1, v3);
  sub_1009874D4(v12, v15);
  v22 = *(v4 + 48);
  if (!v22(v15, 1, v3))
  {
    URLComponents.scheme.setter();
  }

  v24 = v22(v15, 1, v3);
  v26 = v44;
  v25 = v45;
  if (!v24)
  {
    URLComponents.host.setter();
  }

  v27 = v43;
LABEL_20:
  if (v22(v15, 1, v3))
  {
    (*(v26 + 56))(v27, 1, 1, v25);
  }

  else
  {
    v29 = v42;
    v30 = v40;
    (*(v42 + 16))(v40, v15, v3);
    URLComponents.url.getter();
    (*(v29 + 8))(v30, v3);
    if ((*(v26 + 48))(v27, 1, v25) != 1)
    {
      (*(v26 + 32))(a1, v27, v25);
      URL._bridgeToObjectiveC()(v33);
      v35 = v34;
      sub_1008BC8D8(_swiftEmptyArrayStorage);
      v36 = a1;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v38[2] openSensitiveURL:v35 withOptions:isa];

      a1 = v36;
      v31 = 0;
      goto LABEL_24;
    }
  }

  sub_1000095E8(v27, &qword_1011A77F0, &unk_100EEAA20);
  v31 = 1;
LABEL_24:
  (*(v26 + 56))(a1, v31, 1, v25);
  return sub_1000095E8(v15, &qword_1011AA638, &qword_100EF2518);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0x2F2F3A636973756DLL;
  v26 = 0xE800000000000000;
  if (value != 7)
  {
    v10 = 0x7972617262696CLL;
    v24._countAndFlagsBits = 0x6261743F2F626174;
    v24._object = 0xE90000000000003DLL;
    v11 = 0xE600000000000000;
    v12 = 0x736F65646976;
    if (value != 5)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE900000000000073;
    }

    v13 = 0xE500000000000000;
    v14 = 0x6F69646172;
    if (value != 3)
    {
      v14 = 0x686372616573;
      v13 = 0xE600000000000000;
    }

    if (value <= 4)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = 0xE900000000000077;
    v16 = 0x6F4E6E657473696CLL;
    if (value != 1)
    {
      v16 = 0x6573776F7262;
      v15 = 0xE600000000000000;
    }

    if (value)
    {
      v10 = v16;
    }

    else
    {
      v15 = 0xE700000000000000;
    }

    if (value <= 2)
    {
      v17 = v10;
    }

    else
    {
      v17 = v12;
    }

    if (value <= 2)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    String.append(contentsOf:)(v24);
  }

  URL.init(string:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &qword_1011A77F0, &unk_100EEAA20);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    URL._bridgeToObjectiveC()(v20);
    v22 = v21;
    sub_1008BC8D8(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 openSensitiveURL:v22 withOptions:isa];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1009874D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011AA638, &qword_100EF2518);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v2 = [v0 kindWithPlaylistEntryKind:v1 options:0];

  return v2;
}

id sub_1009875C0(void *a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  strcpy(v5, "showAllTVShows");
  v5[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v6);
  if (!v7)
  {
    sub_100011E58(&v6);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v5[0])
  {
    v2 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v2 = 2;
LABEL_8:
  v3 = [objc_opt_self() kindWithVariants:v2];

  return v3;
}

id static MPModelArtist.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = objc_opt_self();
  v2 = [objc_opt_self() kindWithVariants:3];
  v3 = [v1 kindWithSongKind:v2];

  v4 = [v0 kindWithAlbumKind:v3];
  return v4;
}

id static MPModelAlbum.defaultMusicKind.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_opt_self() kindWithVariants:3];
  v2 = [v0 kindWithSongKind:v1];

  return v2;
}

id static MPModelTVShow.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v8, "showAllTVShows");
  v8[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v9);
  if (!v10)
  {
    sub_100011E58(&v9);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v8[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:v1];
  v5 = [v3 kindWithEpisodeKind:v4];

  v6 = [v2 kindWithSeasonKind:v5];
  return v6;
}

id static MPModelTVSeason.defaultMusicKind.getter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  strcpy(v6, "showAllTVShows");
  v6[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v7);
  if (!v8)
  {
    sub_100011E58(&v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v6[0] & 1) == 0)
  {
LABEL_7:
    v1 = 2;
    goto LABEL_8;
  }

  v1 = 3;
LABEL_8:
  v2 = objc_opt_self();
  v3 = [objc_opt_self() kindWithVariants:v1];
  v4 = [v2 kindWithEpisodeKind:v3];

  return v4;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  sub_10010FC20(&qword_1011AA660, &unk_100EEF850);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_100011E58(&v11);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v10[0])
  {
    v3 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v3 = 2;
LABEL_8:
  *(v0 + 40) = [objc_opt_self() kindWithVariants:v3];
  v4 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_100011E58(&v11);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

    goto LABEL_14;
  }

  if ((v10[0] & 1) == 0)
  {
LABEL_14:
    v5 = 2;
    goto LABEL_15;
  }

  v5 = 3;
LABEL_15:
  v6 = objc_opt_self();
  *(v0 + 48) = [objc_opt_self() kindWithVariants:v5];
  sub_10010FC20(&unk_1011AAA00, &qword_100EF2A68);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 kindWithKinds:isa];

  return v8;
}

id MPModelPlaylistEntry.innermostModelObject.getter()
{
  v1 = [v0 type];
  if (v1 == 3)
  {
    v3 = [v5 movie];
LABEL_7:
    result = v3;
    v2 = v5;
    if (result)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v1 == 2)
  {
    v3 = [v5 tvEpisode];
    goto LABEL_7;
  }

  v2 = v5;
  if (v1 == 1)
  {
    v3 = [v5 song];
    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

id MPModelGenericObject.innermostModelObject.getter()
{
  switch([v0 type])
  {
    case 1uLL:
      result = [v5 song];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 2uLL:
      result = [v5 album];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 3uLL:
      result = [v5 artist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 4uLL:
      result = [v5 playlist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 5uLL:
      v2 = [v5 playlistEntry];
      if (!v2)
      {
        goto LABEL_37;
      }

      v3 = v2;
      v4 = [v2 innermostModelObject];

      result = v4;
      break;
    case 6uLL:
      result = [v5 tvEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 7uLL:
      result = [v5 season];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 8uLL:
      result = [v5 show];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 9uLL:
      result = [v5 movie];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xAuLL:
      result = [v5 mediaClip];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xBuLL:
      result = [v5 podcast];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xCuLL:
      result = [v5 podcastEpisode];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xDuLL:
      result = [v5 radioStation];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0xFuLL:
      result = [v5 genre];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x10uLL:
      result = [v5 curator];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x11uLL:
      result = [v5 socialPerson];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x13uLL:
      result = [v5 recordLabel];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    case 0x14uLL:
      result = [v5 creditsArtist];
      if (!result)
      {
        goto LABEL_37;
      }

      break;
    default:
LABEL_37:

      result = v5;
      break;
  }

  return result;
}