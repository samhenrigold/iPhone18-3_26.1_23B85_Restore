uint64_t sub_1000FE800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1004BDBA4();
  sub_1004BBF84();
  v6 = sub_1004BDBF4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1004BD9C4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1000FE8F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004BB214();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10010A7D0(&qword_100603EA8, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant), v7 = sub_1004BBCD4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_10010A7D0(&qword_100603EB0, &type metadata accessor for AudioVariant, &protocol conformance descriptor for AudioVariant);
      v15 = sub_1004BBD84();
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

uint64_t sub_1000FEB10(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, sub_1004BDBA4(), Library.Menu.Identifier.rawValue.getter(v3), sub_1004BBF84(), , v4 = sub_1004BDBF4(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = 0xD000000000000029;
      v9 = "orites";
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
      v12 = "orites";
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

      v13 = sub_1004BD9C4();

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

uint64_t sub_1000FEEF4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004BDBA4();
  SortOptions.ContentType.identifier.getter(v3);
  sub_1004BBF84();

  v4 = sub_1004BDBF4();
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
    sub_1004BDBA4();
    sub_1004BBF84();

    v10 = sub_1004BDBF4();
    sub_1004BDBA4();
    sub_1004BBF84();

    if (v10 == sub_1004BDBF4())
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

BOOL sub_1000FF478(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_1004BDBA4();
  sub_1004BDBB4(v3);
  v4 = sub_1004BDBF4();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t Playlist.hasActiveCollaboration.getter()
{
  sub_100003ABC(&qword_100603BF0, &qword_1004CE230);
  __chkstk_darwin();
  v1 = &v16 - v0;
  sub_100003ABC(&qword_100603BF8, &qword_1004CE238);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v16 - v4;
  sub_1004BB854();
  v6 = sub_1004BB844();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_100007214(v1, &qword_100603BF0, &qword_1004CE230);
    v8 = sub_1004BB794();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  sub_1004BB814();
  (*(v7 + 8))(v1, v6);
  v9 = sub_1004BB794();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_13;
  }

  sub_10000F778(v5, v3, &qword_100603BF8, &qword_1004CE238);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:) && v11 != enum case for Playlist.Collaborator.Status.pending(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:
  sub_100007214(v5, &qword_100603BF8, &qword_1004CE238);
  return v14;
}

BOOL Playlist.Collaboration.hasPendingCollaborators.getter()
{
  sub_100003ABC(&qword_100603C00, &qword_1004CE240);
  __chkstk_darwin();
  v1 = v6 - v0;
  sub_1004BB824();
  v2 = sub_100003ABC(&qword_100603C08, &qword_1004CE248);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(v1, &qword_100603C00, &qword_1004CE240);
    return 0;
  }

  else
  {
    sub_1000206D4(&unk_100603C10, &qword_100603C08, &qword_1004CE248, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_1004BC724();
    sub_1004BC764();
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

uint64_t sub_1000FFA0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Collaboration.ArtworkCachingReference(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000027;
  *(v2 + 24) = 0x80000001004FC220;
  v3 = objc_opt_self();
  v4 = sub_1004BBE24();

  [v3 setCacheLimit:100 forCacheIdentifier:v4 cacheReference:v2];

  static Collaboration.artworkCaching = v2;
  return result;
}

uint64_t *Collaboration.artworkCaching.unsafeMutableAddressor()
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  return &static Collaboration.artworkCaching;
}

uint64_t static Collaboration.artworkCaching.getter()
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Collaboration.artworkCaching.setter(uint64_t a1)
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Collaboration.artworkCaching = a1;
}

uint64_t (*static Collaboration.artworkCaching.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1005FFEE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
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
    v7 = 0;
    if (a3)
    {
      sub_1004BD404(17);
      v4._countAndFlagsBits = 0x74694B636973754DLL;
      v4._object = 0xEF3D726F72726520;
    }

    else
    {
      sub_1004BD404(25);
      v4._object = 0x80000001004FFD60;
      v4._countAndFlagsBits = 0xD000000000000017;
    }

    sub_1004BC024(v4);
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    sub_1004BD5C4();
    return v7;
  }

  if (a3 == 2)
  {
    sub_1004BD404(38);

    v7 = 0xD000000000000024;
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_1004BC024(v8);
    return v7;
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
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v1 = &v33 - v0;
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004B6B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v33 - v9;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v33 - v13;
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    v33 = v5;
    v34 = v3;
    v35 = v2;
    v36 = v1;
    v15 = sub_10003D264(_swiftEmptyArrayStorage);
    sub_100144204(0xD00000000000001FLL, 0x80000001004FFE10, 0xD000000000000032, 0x80000001004FFE30, _swiftEmptyArrayStorage, v15, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v14, 1u);

    sub_10000F778(v14, v12, &qword_100600DE0, &unk_1004C66D0);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_100007214(v14, &qword_100600DE0, &unk_1004C66D0);
      v16 = v12;
    }

    else
    {
      v17 = *(v7 + 32);
      v17(v10, v12, v6);
      v18 = [objc_opt_self() sharedApplication];
      sub_1004B6A44(v19);
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
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v27 = sub_1004B6CE4();
        v29 = v28;
        (*(v34 + 8))(v26, v35);
        (*(v7 + 8))(v10, v6);
        sub_100007214(v14, &qword_100600DE0, &unk_1004C66D0);
        v30 = sub_1004BC4B4();
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
        *(v32 + 72) = &unk_1004D0880;
        *(v32 + 80) = v25;
        sub_1000FD6BC(0, 0, v31, &unk_1004CE258, v32);

        return;
      }

      (*(v7 + 8))(v10, v6);
      v16 = v14;
    }

    sub_100007214(v16, &qword_100600DE0, &unk_1004C66D0);
  }
}

uint64_t sub_1001005A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v7[1] = sub_1001006F0;

    return v10(a4, v4 + 16);
  }

  else
  {
    v9 = *(v4 + 8);

    return v9();
  }
}

uint64_t sub_1001006F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Collaboration.Manager.__allocating_init(coordinator:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_100013414(a1, v2 + 16);
  return v2;
}

id Collaboration.Manager.participantProfile.getter(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() shared];
  v3 = [v2 activeUserState];

  v4 = [v3 music];
  v5 = [v4 userProfile];

  return v5;
}

uint64_t sub_100100960()
{
  v0 = sub_1004BB8A4();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&unk_100603F40, &qword_1004CA8B0);
  __chkstk_darwin();
  v5 = &v9 - v4;
  sub_1004BB8B4();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    sub_100007214(v5, &unk_100603F40, &qword_1004CA8B0);
  }

  else
  {
    sub_1004BB894();
    sub_10010A7D0(&qword_100602170, &type metadata accessor for Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v6 = sub_1004BD2A4();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v5, v0);
    if (v6)
    {
      return [objc_opt_self() isRunningInStoreDemoMode] ^ 1;
    }
  }

  return 0;
}

id Collaboration.Manager.canCollaborate(for:)()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v13[4] = v9;
  v13[5] = v10;
  v13[6] = v11;
  v13[7] = v12;
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  if ((BYTE8(v5) & 1) == 0)
  {
    v0 = 3;
    goto LABEL_10;
  }

  if (BYTE2(v13[0]) != 1)
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
      return sub_100051DEC(v13);
    }

    v0 = 7;
LABEL_10:
    sub_100109E64();
    swift_allocError();
    *v4 = v0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 3;
    swift_willThrow();
    return sub_100051DEC(v13);
  }

  __break(1u);
  return result;
}

uint64_t Logger.collaboration.unsafeMutableAddressor(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1004B80B4();

  return sub_100007084(v2, static Logger.collaboration);
}

uint64_t sub_100100F68(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_100100FCC(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

MusicCore::Collaboration::Manager::DeepLinkType_optional __swiftcall Collaboration.Manager.DeepLinkType.init(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  if (*(a1._rawValue + 2) && (v2 = static Collaboration.Manager.DeepLinkType.actionKey, v3 = qword_100603BD8, , v4 = sub_1000346D4(v2, v3), v6 = v5, , (v6 & 1) != 0))
  {
    v7 = (*(a1._rawValue + 7) + 16 * v4);
    v8 = *v7;
    v9 = v7[1];

    v10._rawValue = &off_1005A5008;
    v14._countAndFlagsBits = v8;
    v14._object = v9;
    v11 = sub_1004BD764(v10, v14);

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
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005A5008;
  v6._object = object;
  v3 = sub_1004BD764(v2, v6);

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

uint64_t sub_1001011E8(_BYTE *a1, _BYTE *a2)
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
    v8 = sub_1004BD9C4();
  }

  return v8 & 1;
}

Swift::Int sub_100101288()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_100101304(uint64_t a1)
{
  sub_1004BBF84();
}

Swift::Int sub_10010136C()
{
  sub_1004BDBA4();
  sub_1004BBF84();

  return sub_1004BDBF4();
}

uint64_t sub_1001013E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005A5008;
  v8._object = v3;
  v5 = sub_1004BD764(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_100101444(uint64_t *a1@<X8>)
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
  sub_100003ABC(&qword_100603C28, &qword_1004CE2A8);
  __chkstk_darwin();
  v2 = &v18 - v1;
  v3 = sub_1004B66F4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6664();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100007214(v2, &qword_100603C28, &qword_1004CE2A8);
    return 0;
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = URLComponents.queryItemsDictionary.getter();
  if (!v7)
  {
    (*(v4 + 8))(v6, v3);
    return v7;
  }

  v8 = sub_100019B70(&off_1005A5058);
  swift_arrayDestroy();
  swift_beginAccess();
  if (!v7[2] || (v9 = static Collaboration.Manager.DeepLinkType.actionKey, v10 = qword_100603BD8, , v11 = sub_1000346D4(v9, v10), v13 = v12, , (v13 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    return 0;
  }

  v14 = (v7[7] + 16 * v11);
  v15 = *v14;
  v16 = v14[1];

  LOBYTE(v15) = sub_1000FE800(v15, v16, v8);

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
  sub_100003ABC(&qword_100603BF0, &qword_1004CE230);
  *(v3 + 40) = swift_task_alloc();
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  *(v3 + 48) = swift_task_alloc();
  v4 = sub_1004BB7F4();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = sub_1004BBA84();
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  v6 = sub_1004B7864();
  *(v3 + 112) = v6;
  *(v3 + 120) = *(v6 - 8);
  *(v3 + 128) = swift_task_alloc();
  sub_1004BC474();
  *(v3 + 136) = sub_1004BC464();
  v8 = sub_1004BC3E4();
  *(v3 + 144) = v8;
  *(v3 + 152) = v7;

  return _swift_task_switch(sub_100101954, v8, v7);
}

uint64_t sub_100101954(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  *(v2 + 160) = sub_100007084(v3, static Logger.collaboration);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 200);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Start called - isOpenInvite=%{BOOL,public}d", v7, 8u);
  }

  v8 = *(v2 + 104);
  v9 = *(v2 + 80);
  v10 = *(v2 + 88);
  v12 = *(v2 + 64);
  v11 = *(v2 + 72);
  v13 = *(v2 + 56);
  v14 = *(v2 + 200);
  v15 = *(v2 + 32);

  v16 = *(v10 + 16);
  *(v2 + 168) = v16;
  *(v2 + 176) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v8, v15, v9);
  v17 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
  if (!v14)
  {
    v17 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
  }

  (*(v12 + 104))(v11, *v17, v13);
  sub_1004B7844();
  v18 = swift_task_alloc();
  *(v2 + 184) = v18;
  *v18 = v2;
  v18[1] = sub_100101B64;
  v19 = *(v2 + 24);

  return MusicCollaborativePlaylist.StartCollaborationRequest.response()(v19);
}

uint64_t sub_100101B64()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100102250;
  }

  else
  {
    v5 = sub_100101CA0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100101CA0()
{
  v47 = v0;
  v1 = v0[5];

  sub_1004BB854();
  v2 = sub_1004BB844();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v6 = v0[5];
  v5 = v0[6];
  if (v4 == 1)
  {
    sub_100007214(v0[5], &qword_100603BF0, &qword_1004CE230);
    v7 = sub_1004B6B04();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  }

  else
  {
    sub_1004BB7E4();
    (*(v3 + 8))(v6, v2);
    v8 = sub_1004B6B04();
    if ((*(*(v8 - 8) + 48))(v5, 1, v8) != 1)
    {
      v43 = v0[6];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_100007214(v43, &qword_100600DE0, &unk_1004C66D0);

      v42 = v0[1];
      goto LABEL_11;
    }
  }

  v9 = v0[21];
  v10 = v0[12];
  v11 = v0[10];
  v12 = v0[3];
  sub_100007214(v0[6], &qword_100600DE0, &unk_1004C66D0);
  v9(v10, v12, v11);
  v13 = sub_1004B8094();
  v14 = sub_1004BC984();
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
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v20 = sub_1004BD934();
    v22 = v21;
    v23 = v18;
    v24 = *(v17 + 8);
    v24(v16, v23);
    v25 = sub_100012018(v20, v22, v46);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "invitationURL missing for=%{public}s", v19, 0xCu);
    sub_100004C6C(v45);
  }

  else
  {

    v26 = v18;
    v24 = *(v17 + 8);
    v24(v16, v26);
  }

  v27 = v0[10];
  v28 = v0[3];
  sub_100109E64();
  v29 = swift_allocError();
  *v30 = xmmword_1004C50E0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v24(v28, v27);
  swift_errorRetain();
  v31 = sub_1004B8094();
  v32 = sub_1004BC984();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v46[0] = v34;
    *v33 = 136446210;
    v0[2] = v29;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v35 = sub_1004BBF04();
    v37 = sub_100012018(v35, v36, v46);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Start failed with error=%{public}s", v33, 0xCu);
    sub_100004C6C(v34);
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

uint64_t sub_100102250()
{
  v16 = v0;

  v1 = v0[24];
  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v10 = v0[15];
  v9 = v0[16];
  v11 = v0[14];
  sub_100109E64();
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
  v4 = sub_1004BBA84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004B77D4();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_1004B6B04();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  sub_1004BC474();
  v3[16] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v3[17] = v8;
  v3[18] = v7;

  return _swift_task_switch(sub_100102628, v8, v7);
}

uint64_t sub_100102628(uint64_t a1, uint64_t a2)
{
  v31 = v2;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = v2[15];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[5];
  v7 = sub_1004B80B4();
  v2[19] = sub_100007084(v7, static Logger.collaboration);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v2[15];
  v14 = v2[12];
  v13 = v2[13];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v15 = 136446210;
    sub_10010A7D0(&qword_100603C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = v10;
    v16 = v8;
    v17 = sub_1004BD934();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = v17;
    v8 = v16;
    v21 = sub_100012018(v20, v19, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v28, "Validate called with url=%{public}s", v15, 0xCu);
    sub_100004C6C(v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v2[14];
  v23 = v2[12];
  v24 = v2[5];
  (*(v2[7] + 16))(v2[8], v2[4], v2[6]);
  v8(v22, v24, v23);
  sub_1004B77A4();
  v25 = swift_task_alloc();
  v2[20] = v25;
  *v25 = v2;
  v25[1] = sub_100102904;
  v26 = v2[3];

  return MusicCollaborativePlaylist.JoinRequest.validate()(v26);
}

uint64_t sub_100102904()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100102AF8;
  }

  else
  {
    v5 = sub_100102A40;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100102A40()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100102AF8()
{
  v17 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v9 = sub_1004BBF04();
    v11 = sub_100012018(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Validate failed with error=%{public}s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  v12 = v0[21];
  sub_100109E64();
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
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_1004B77D4();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_1004B6B04();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  sub_1004BC474();
  v2[16] = sub_1004BC464();
  v7 = sub_1004BC3E4();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_100102EC4, v7, v6);
}

uint64_t sub_100102EC4(uint64_t a1, uint64_t a2)
{
  v31 = v2;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = v2[15];
  v4 = v2[12];
  v5 = v2[13];
  v6 = v2[4];
  v7 = sub_1004B80B4();
  v2[19] = sub_100007084(v7, static Logger.collaboration);
  v8 = *(v5 + 16);
  v8(v3, v6, v4);
  v9 = sub_1004B8094();
  v10 = sub_1004BC9A4();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v2[15];
  v14 = v2[12];
  v13 = v2[13];
  if (v11)
  {
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v15 = 136446210;
    sub_10010A7D0(&qword_100603C38, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v28 = v10;
    v16 = v8;
    v17 = sub_1004BD934();
    v19 = v18;
    (*(v13 + 8))(v12, v14);
    v20 = v17;
    v8 = v16;
    v21 = sub_100012018(v20, v19, &v30);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v28, "Join called with url=%{public}s", v15, 0xCu);
    sub_100004C6C(v29);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v22 = v2[14];
  v23 = v2[12];
  v24 = v2[4];
  (*(v2[6] + 16))(v2[8], v2[3], v2[5]);
  v8(v22, v24, v23);
  sub_1004B77A4();
  v25 = swift_task_alloc();
  v2[20] = v25;
  *v25 = v2;
  v25[1] = sub_1001031A0;
  v26 = v2[7];

  return MusicCollaborativePlaylist.JoinRequest.response()(v26);
}

uint64_t sub_1001031A0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_100103398;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = v2[17];
    v4 = v2[18];
    v5 = sub_1001032CC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001032CC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100103398()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[21];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Join failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[21];
  v11 = v0[10];
  v10 = v0[11];
  v12 = v0[9];
  sub_100109E64();
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
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004B7804();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004BC474();
  v2[11] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_1001036FC, v6, v5);
}

uint64_t sub_1001036FC(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v2[14] = sub_100007084(v3, static Logger.collaboration);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "End called", v6, 2u);
  }

  v8 = v2[6];
  v7 = v2[7];
  v10 = v2[4];
  v9 = v2[5];

  (*(v8 + 16))(v7, v10, v9);
  sub_1004B77E4();
  v11 = swift_task_alloc();
  v2[15] = v11;
  *v11 = v2;
  v11[1] = sub_100103894;
  v12 = v2[3];

  return MusicCollaborativePlaylist.EndCollaborationRequest.response()(v12);
}

uint64_t sub_100103894()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1001039D0;
  }

  else
  {
    v5 = sub_10010A878;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001039D0()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "End failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_100109E64();
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
  v4 = sub_1004B7904();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = sub_1004BBA84();
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = sub_1004BB7D4();
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_1004BC474();
  *(v3 + 128) = sub_1004BC464();
  v8 = sub_1004BC3E4();
  *(v3 + 136) = v8;
  *(v3 + 144) = v7;

  return _swift_task_switch(sub_100103D84, v8, v7);
}

uint64_t sub_100103D84(uint64_t a1, uint64_t a2)
{
  v46 = v2;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 120);
  v4 = *(v2 + 96);
  v5 = *(v2 + 104);
  v6 = *(v2 + 88);
  v7 = *(v2 + 64);
  v8 = *(v2 + 72);
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  v11 = sub_1004B80B4();
  *(v2 + 152) = sub_100007084(v11, static Logger.collaboration);
  v44 = *(v5 + 16);
  v44(v3, v10, v4);
  v43 = *(v8 + 16);
  v43(v6, v9, v7);
  v12 = sub_1004B8094();
  v13 = sub_1004BC9A4();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v2 + 120);
  v17 = *(v2 + 96);
  v16 = *(v2 + 104);
  v18 = *(v2 + 88);
  v20 = *(v2 + 64);
  v19 = *(v2 + 72);
  if (v14)
  {
    v42 = v13;
    v21 = *(v2 + 193);
    log = v12;
    v22 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v22 = 136446722;
    *(v2 + 192) = v21 & 1;
    v23 = sub_1004BBF04();
    v25 = sub_100012018(v23, v24, &v45);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2082;
    sub_10010A7D0(&unk_100603C40, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v26 = sub_1004BD934();
    v28 = v27;
    (*(v16 + 8))(v15, v17);
    v29 = sub_100012018(v26, v28, &v45);

    *(v22 + 14) = v29;
    *(v22 + 22) = 2082;
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v30 = sub_1004BD934();
    v32 = v31;
    (*(v19 + 8))(v18, v20);
    v33 = sub_100012018(v30, v32, &v45);

    *(v22 + 24) = v33;
    _os_log_impl(&_mh_execute_header, log, v42, "    Moderate called for:\n        - type=%{public}s\n        - collaborator=%{public}s\n        - playlist=%{public}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
  }

  v34 = *(v2 + 80);
  v35 = *(v2 + 64);
  v36 = *(v2 + 32);
  v37 = *(v2 + 193);
  v44(*(v2 + 112), *(v2 + 24), *(v2 + 96));
  v43(v34, v36, v35);
  sub_1004B78D4();
  if (v37)
  {
    v38 = swift_task_alloc();
    *(v2 + 176) = v38;
    *v38 = v2;
    v38[1] = sub_10010441C;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.reject()();
  }

  else
  {
    v39 = swift_task_alloc();
    *(v2 + 160) = v39;
    *v39 = v2;
    v39[1] = sub_100104214;

    return MusicCollaborativePlaylist.PendingCollaboratorDecisionRequest.approve()();
  }
}

uint64_t sub_100104214()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100104558;
  }

  else
  {
    v5 = sub_100104350;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100104350()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010441C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_100104768;
  }

  else
  {
    v5 = sub_10010A854;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100104558()
{
  v16 = v0;
  v1 = v0[21];

  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_100109E64();
  swift_allocError();
  *v12 = v1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 1;
  swift_willThrow();
  (*(v9 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100104768()
{
  v16 = v0;
  v1 = v0[23];

  swift_errorRetain();
  v2 = sub_1004B8094();
  v3 = sub_1004BC984();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v15);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Moderate failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];
  sub_100109E64();
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
  v4 = sub_1004B7834();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_1004BBA84();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = sub_1004BB7D4();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  sub_1004BC474();
  v3[17] = sub_1004BC464();
  v8 = sub_1004BC3E4();
  v3[18] = v8;
  v3[19] = v7;

  return _swift_task_switch(sub_100104B40, v8, v7);
}

uint64_t sub_100104B40(uint64_t a1, uint64_t a2)
{
  v41 = v2;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = v2[16];
  v4 = v2[13];
  v5 = v2[14];
  v6 = v2[12];
  v7 = v2[9];
  v8 = v2[10];
  v10 = v2[4];
  v9 = v2[5];
  v11 = sub_1004B80B4();
  v2[20] = sub_100007084(v11, static Logger.collaboration);
  v39 = *(v5 + 16);
  v39(v3, v10, v4);
  v12 = *(v8 + 16);
  v12(v6, v9, v7);
  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v2[16];
  v18 = v2[13];
  v17 = v2[14];
  v19 = v2[12];
  v20 = v2[10];
  v38 = v2[9];
  if (v15)
  {
    log = v13;
    v21 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v21 = 136446466;
    sub_10010A7D0(&unk_100603C40, &type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    v22 = sub_1004BD934();
    v36 = v14;
    v24 = v23;
    (*(v17 + 8))(v16, v18);
    v25 = sub_100012018(v22, v24, &v40);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_10010A7D0(&qword_100603C30, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
    v26 = sub_1004BD934();
    v28 = v27;
    (*(v20 + 8))(v19, v38);
    v29 = sub_100012018(v26, v28, &v40);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, log, v36, "    Remove called for:\n        - collaborator=%{public}s\n        - playlist=%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v20 + 8))(v19, v38);
    (*(v17 + 8))(v16, v18);
  }

  v30 = v2[11];
  v31 = v2[9];
  v32 = v2[5];
  v39(v2[15], v2[4], v2[13]);
  v12(v30, v32, v31);
  sub_1004B7814();
  v33 = swift_task_alloc();
  v2[21] = v33;
  *v33 = v2;
  v33[1] = sub_100104F24;
  v34 = v2[3];

  return MusicCollaborativePlaylist.RemoveCollaboratorRequest.response()(v34);
}

uint64_t sub_100104F24()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_10010512C;
  }

  else
  {
    v5 = sub_100105060;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100105060()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10010512C()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[22];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Remove failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[22];
  v11 = v0[7];
  v10 = v0[8];
  v12 = v0[6];
  sub_100109E64();
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
  v3 = sub_1004BBA84();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1004B7894();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1004BC474();
  v2[11] = sub_1004BC464();
  v6 = sub_1004BC3E4();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_100105490, v6, v5);
}

uint64_t sub_100105490(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v2[14] = sub_100007084(v3, static Logger.collaboration);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Reset URL called", v6, 2u);
  }

  v8 = v2[6];
  v7 = v2[7];
  v10 = v2[4];
  v9 = v2[5];

  (*(v8 + 16))(v7, v10, v9);
  sub_1004B7874();
  v11 = swift_task_alloc();
  v2[15] = v11;
  *v11 = v2;
  v11[1] = sub_100105628;
  v12 = v2[3];

  return MusicCollaborativePlaylist.ResetInvitationLinkRequest.response()(v12);
}

uint64_t sub_100105628()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_100105800;
  }

  else
  {
    v5 = sub_100105764;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100105764()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100105800()
{
  v17 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[16];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v16);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Reset failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[16];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  sub_100109E64();
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
  v3 = sub_1004BB7F4();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  v4 = sub_1004B78C4();
  *(v2 + 56) = v4;
  *(v2 + 64) = *(v4 - 8);
  *(v2 + 72) = swift_task_alloc();
  sub_100003ABC(&qword_100603BF0, &qword_1004CE230);
  *(v2 + 80) = swift_task_alloc();
  v5 = sub_1004BB844();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  sub_1004BC474();
  *(v2 + 120) = sub_1004BC464();
  v7 = sub_1004BC3E4();
  *(v2 + 128) = v7;
  *(v2 + 136) = v6;

  return _swift_task_switch(sub_100105BE0, v7, v6);
}

uint64_t sub_100105BE0(uint64_t a1, uint64_t a2)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  *(v2 + 144) = sub_100007084(v3, static Logger.collaboration);
  v4 = sub_1004B8094();
  v5 = sub_1004BC9A4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v2 + 168);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "updateShareOption called with isOpen=%{BOOL,public}d", v7, 8u);
  }

  v8 = *(v2 + 88);
  v9 = *(v2 + 96);
  v10 = *(v2 + 80);

  sub_1004BB854();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v2 + 80);

    sub_100007214(v11, &qword_100603BF0, &qword_1004CE230);
    sub_100109E64();
    swift_allocError();
    *v12 = xmmword_1004C5140;
    *(v12 + 16) = 3;
    swift_willThrow();

    v13 = *(v2 + 8);

    return v13();
  }

  else
  {
    v15 = *(v2 + 104);
    v16 = *(v2 + 112);
    v17 = *(v2 + 88);
    v18 = *(v2 + 96);
    v20 = *(v2 + 40);
    v19 = *(v2 + 48);
    v21 = *(v2 + 32);
    v22 = *(v2 + 168);
    (*(v18 + 32))(v16, *(v2 + 80), v17);
    (*(v18 + 16))(v15, v16, v17);
    v23 = &enum case for Playlist.Collaboration.InvitationMode.open(_:);
    if (!v22)
    {
      v23 = &enum case for Playlist.Collaboration.InvitationMode.requiresApproval(_:);
    }

    (*(v20 + 104))(v19, *v23, v21);
    sub_1004B78A4();
    v24 = swift_task_alloc();
    *(v2 + 152) = v24;
    *v24 = v2;
    v24[1] = sub_100105EF8;

    return MusicCollaborativePlaylist.UpdateInvitationModeRequest.response()();
  }
}

uint64_t sub_100105EF8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_100106120;
  }

  else
  {
    v5 = sub_100106034;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100106034()
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

uint64_t sub_100106120()
{
  v20 = v0;

  swift_errorRetain();
  v1 = sub_1004B8094();
  v2 = sub_1004BC984();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136446210;
    v0[2] = v3;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v6 = sub_1004BBF04();
    v8 = sub_100012018(v6, v7, &v19);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "updateShareOption failed with error=%{public}s", v4, 0xCu);
    sub_100004C6C(v5);
  }

  v9 = v0[20];
  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  sub_100109E64();
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

uint64_t Collaboration.Manager.handleError(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1004B80B4();
  sub_100007084(v5, static Logger.collaboration);
  swift_errorRetain();
  v6 = sub_1004B8094();
  v7 = sub_1004BC9A4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Calling coordinator to handle error=%{public}@", v8, 0xCu);
    sub_100007214(v9, &qword_100602710, &qword_1004CB540);
  }

  swift_beginAccess();
  sub_10001342C(v3 + 16, v14);
  v11 = v15;
  v12 = v16;
  sub_100009178(v14, v15);
  (*(v12 + 8))(a1, v11, v12);
  return sub_100004C6C(v14);
}

id Collaboration.Manager.activityViewController(for:url:)()
{
  v0 = objc_allocWithZone(NSItemProvider);
  sub_1004B6A44(v1);
  v3 = v2;
  v4 = [v0 initWithContentsOfURL:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(LPLinkMetadata) init];
    sub_1004B6A44(v6);
    v8 = v7;
    [v5 setURL:v7];

    v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
    sub_1004BB994();
    v10 = sub_1004BBE24();

    [v9 setName:v10];

    sub_1004BB954();
    if (v11)
    {
      v12 = sub_1004BBE24();
    }

    else
    {
      v12 = 0;
    }

    [v9 setCurator:v12];

    sub_1004BB944();
    if (v13)
    {
      v14 = sub_1004BBE24();
    }

    else
    {
      v14 = 0;
    }

    [v9 setStoreIdentifier:v14];

    sub_10010689C();
    v16 = v15;
    [v9 setArtwork:v15];

    [v5 setSpecialization:v9];
    sub_100003ABC(&qword_100603C50, &unk_1004CB550);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1004C4D40;
    *(v17 + 32) = v4;
    v18 = objc_allocWithZone(UIActivityItemsConfiguration);
    sub_100009130(0, &qword_100603C58, NSItemProvider_ptr);
    v19 = v4;
    isa = sub_1004BC284().super.isa;

    v21 = [v18 initWithItemProviders:isa];

    v22 = swift_allocObject();
    *(v22 + 16) = v5;
    aBlock[4] = sub_100109EF0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100106CCC;
    aBlock[3] = &unk_1005B0FB0;
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
    result = sub_1004BD624();
    __break(1u);
  }

  return result;
}

void sub_10010689C()
{
  v0 = sub_1004BBA84();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v3 = sub_1004B7F64();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSItemProvider) init];
  sub_1004B7F44();
  sub_1004B7F34();
  (*(v4 + 8))(v6, v3);
  v8 = sub_1004BBE24();

  (*(v1 + 16))(v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v15[1], v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  aBlock[4] = sub_10010A4EC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109308;
  aBlock[3] = &unk_1005B12E0;
  v11 = _Block_copy(aBlock);

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  v12 = sub_1004BBE24();
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

id sub_100106BD4@<X0>(void *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = sub_1004BBE64();
  v6 = v5;
  if (v4 == sub_1004BBE64() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1004BD9C4();

    if ((v9 & 1) == 0)
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  *(a3 + 24) = sub_100009130(0, &qword_100603EB8, LPLinkMetadata_ptr);
  *a3 = a2;

  return a2;
}

id sub_100106CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(v14, a2, v6);

  v7 = v15;
  if (v15)
  {
    sub_100009178(v14, v15);
    v8 = *(v7 - 8);
    v9 = __chkstk_darwin();
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1004BD9A4();
    (*(v8 + 8))(v11, v7);
    sub_100004C6C(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t Collaboration.Manager.__deallocating_deinit()
{
  sub_100004C6C((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t Collaboration.ArtworkCachingReference.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100106EE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, static Logger.collaboration);
  sub_100007084(v2, static Logger.collaboration);
  sub_100009130(0, &qword_1006090F0, OS_os_log_ptr);
  sub_1004BD164();
  return sub_1004B80C4();
}

uint64_t static Logger.collaboration.getter@<X0>(uint64_t a2@<X8>)
{
  if (qword_1005FFEF0 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  v4 = sub_100007084(v3, static Logger.collaboration);
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, v4, v3);
}

uint64_t Playlist.Collaboration.isOpenInvitation.getter()
{
  v0 = sub_1004BB7F4();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100603C60, &qword_1004CE2F0) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100003ABC(&qword_100603C68, &qword_1004CE2F8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_1004BB804();
  (*(v1 + 104))(v9, enum case for Playlist.Collaboration.InvitationMode.open(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_10000F778(v11, v5, &qword_100603C68, &qword_1004CE2F8);
  sub_10000F778(v9, &v5[v12], &qword_100603C68, &qword_1004CE2F8);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_10000F778(v5, v7, &qword_100603C68, &qword_1004CE2F8);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10010A7D0(&qword_100603C70, &type metadata accessor for Playlist.Collaboration.InvitationMode, &protocol conformance descriptor for Playlist.Collaboration.InvitationMode);
      v14 = sub_1004BBD84();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_100007214(v9, &qword_100603C68, &qword_1004CE2F8);
      sub_100007214(v11, &qword_100603C68, &qword_1004CE2F8);
      v17(v7, v0);
      sub_100007214(v5, &qword_100603C68, &qword_1004CE2F8);
      return v14 & 1;
    }

    sub_100007214(v9, &qword_100603C68, &qword_1004CE2F8);
    sub_100007214(v11, &qword_100603C68, &qword_1004CE2F8);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_100007214(v9, &qword_100603C68, &qword_1004CE2F8);
  sub_100007214(v11, &qword_100603C68, &qword_1004CE2F8);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_100007214(v5, &qword_100603C60, &qword_1004CE2F0);
    v14 = 0;
    return v14 & 1;
  }

  sub_100007214(v5, &qword_100603C68, &qword_1004CE2F8);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.Collaborator.isHost.getter()
{
  v0 = sub_1004BB764();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003ABC(&qword_100603C78, &qword_1004CE300) - 8;
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100003ABC(&qword_100603C80, &qword_1004CE308);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  __chkstk_darwin();
  v11 = &v19 - v10;
  sub_1004BB784();
  (*(v1 + 104))(v9, enum case for Playlist.Collaborator.Role.host(_:), v0);
  (*(v1 + 56))(v9, 0, 1, v0);
  v12 = *(v3 + 56);
  sub_10000F778(v11, v5, &qword_100603C80, &qword_1004CE308);
  sub_10000F778(v9, &v5[v12], &qword_100603C80, &qword_1004CE308);
  v13 = *(v1 + 48);
  if (v13(v5, 1, v0) != 1)
  {
    sub_10000F778(v5, v7, &qword_100603C80, &qword_1004CE308);
    if (v13(&v5[v12], 1, v0) != 1)
    {
      v15 = &v5[v12];
      v16 = v20;
      (*(v1 + 32))(v20, v15, v0);
      sub_10010A7D0(&qword_100603C88, &type metadata accessor for Playlist.Collaborator.Role, &protocol conformance descriptor for Playlist.Collaborator.Role);
      v14 = sub_1004BBD84();
      v17 = *(v1 + 8);
      v17(v16, v0);
      sub_100007214(v9, &qword_100603C80, &qword_1004CE308);
      sub_100007214(v11, &qword_100603C80, &qword_1004CE308);
      v17(v7, v0);
      sub_100007214(v5, &qword_100603C80, &qword_1004CE308);
      return v14 & 1;
    }

    sub_100007214(v9, &qword_100603C80, &qword_1004CE308);
    sub_100007214(v11, &qword_100603C80, &qword_1004CE308);
    (*(v1 + 8))(v7, v0);
    goto LABEL_6;
  }

  sub_100007214(v9, &qword_100603C80, &qword_1004CE308);
  sub_100007214(v11, &qword_100603C80, &qword_1004CE308);
  if (v13(&v5[v12], 1, v0) != 1)
  {
LABEL_6:
    sub_100007214(v5, &qword_100603C78, &qword_1004CE300);
    v14 = 0;
    return v14 & 1;
  }

  sub_100007214(v5, &qword_100603C80, &qword_1004CE308);
  v14 = 1;
  return v14 & 1;
}

uint64_t Playlist.hasJoinedCollaboration.getter()
{
  sub_100003ABC(&qword_100603BF0, &qword_1004CE230);
  __chkstk_darwin();
  v1 = &v15 - v0;
  sub_100003ABC(&qword_100603BF8, &qword_1004CE238);
  __chkstk_darwin();
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v15 - v4;
  sub_1004BB854();
  v6 = sub_1004BB844();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v1, 1, v6) == 1)
  {
    sub_100007214(v1, &qword_100603BF0, &qword_1004CE230);
    v8 = sub_1004BB794();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  sub_1004BB814();
  (*(v7 + 8))(v1, v6);
  v9 = sub_1004BB794();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    goto LABEL_10;
  }

  sub_10000F778(v5, v3, &qword_100603BF8, &qword_1004CE238);
  v11 = (*(v10 + 88))(v3, v9);
  if (v11 != enum case for Playlist.Collaborator.Status.host(_:) && v11 != enum case for Playlist.Collaborator.Status.joined(_:))
  {
    (*(v10 + 8))(v3, v9);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_11:
  sub_100007214(v5, &qword_100603BF8, &qword_1004CE238);
  return v13;
}

uint64_t Playlist.hasUnsupportedContent.getter()
{
  v1[7] = v0;
  v2 = sub_1004BBA44();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_100003ABC(&unk_100603C90, &qword_1004CE318);
  v1[13] = swift_task_alloc();
  sub_100003ABC(&qword_100601E78, &unk_1004CE320);
  v1[14] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100603CA0, &qword_1004D0800);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = sub_100003ABC(&qword_100603CA8, &unk_1004CE330);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  sub_100003ABC(&qword_100603CB0, &qword_1004CB660);
  v1[22] = swift_task_alloc();
  v5 = sub_100003ABC(&qword_100603CB8, &qword_1004CE340);
  v1[23] = v5;
  v1[24] = *(v5 - 8);
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_100107E78, 0, 0);
}

uint64_t sub_100107E78()
{
  v1 = v0[22];
  v2 = v0[7];
  sub_1004BAB34();
  swift_getKeyPath();
  v3 = sub_1004BBA84();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  sub_10010A7D0(&qword_100603CC0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
  sub_1004BAAF4();

  sub_100007214(v1, &qword_100603CB0, &qword_1004CB660);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100108040;
  v6 = v0[23];
  v7 = v0[21];

  return MusicLibraryRequest.response()(v7, v6);
}

uint64_t sub_100108040()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_10010858C;
  }

  else
  {
    v2 = sub_100108154;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100108154()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  sub_1004BAB84();
  (*(v2 + 16))(v3, v1, v4);
  sub_1000206D4(&qword_100603CC8, &qword_100603CA0, &qword_1004D0800, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC124();
  v7 = *(v5 + 36);
  sub_1000206D4(&qword_100603CD0, &qword_100603CA0, &qword_1004D0800, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1004BC764();
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
    sub_100007214(v47[13], &unk_100603C90, &qword_1004CE318);
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
      v13 = sub_1004BC844();
      (*v43)(v10);
      v13(v47 + 2, 0);
      v7 = v12;
      sub_1004BC774();
      v14 = *v46;
      (*v46)(v9, v10, v11);
      sub_1004BB9E4();
      if (!v15)
      {
        break;
      }

      v16 = v47[10];
      v17 = v47[8];

      (*v41)(v16, v17);
      sub_1004BC764();
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
    sub_100007214(v47[13], &unk_100603C90, &qword_1004CE318);
    (*(v35 + 8))(v34, v36);
    (*(v32 + 8))(v31, v33);
    (*(v29 + 8))(v30, v45);
    v14(v44, v37, v42);
    v28 = 0;
    v27 = 1;
  }

  v38 = v47[14];
  (*(v47[9] + 56))(v38, v28, 1, v47[8]);
  sub_100007214(v38, &qword_100601E78, &unk_1004CE320);

  v39 = v47[1];

  return v39(v27);
}

uint64_t sub_10010858C()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1(0);
}

uint64_t Playlist.duplicate()()
{
  v1[2] = v0;
  v2 = sub_100003ABC(&qword_1006027B0, &qword_1004CB6A8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100003ABC(&qword_100603CE0, &unk_1004CB6C0);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1001087B0, 0, 0);
}

uint64_t sub_1001087B0()
{
  sub_1004B7914();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100108858;
  v2 = *(v0 + 40);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

uint64_t sub_100108858()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100108A0C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_100108984;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100108984()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100108A0C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

void sub_100108A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1004BBA84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v12 = &v17 - v11;
  if (a1)
  {
    v13 = sub_1004BC4B4();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    (*(v9 + 16))(&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v8);
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    (*(v9 + 32))(v15 + v14, &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v16 = (v15 + ((v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v16 = a1;
    v16[1] = a2;

    sub_1000FD6BC(0, 0, v12, &unk_1004CE690, v15);
  }
}

uint64_t sub_100108C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100003ABC(&qword_100603F20, &qword_1004CE698);
  v6[5] = swift_task_alloc();
  sub_100003ABC(&qword_100603F28, &qword_1004CE6A0);
  v6[6] = swift_task_alloc();
  sub_100003ABC(&unk_100603F30, &unk_1004CE6A8);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100108DA4, 0, 0);
}

uint64_t sub_100108DA4()
{
  v1 = *(v0 + 56);
  sub_1004BBA64();
  v2 = sub_1004BB6C4();
  *(v0 + 64) = v2;
  v3 = *(v2 - 8);
  *(v0 + 72) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_100007214(*(v0 + 56), &unk_100603F30, &unk_1004CE6A8);
    (*(v0 + 24))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    v8 = sub_1004BB634();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = sub_1004BB594();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v10[1] = sub_100108FC4;
    v11 = *(v0 + 48);
    v12 = *(v0 + 40);
    v13.n128_u64[0] = 0x4072C00000000000;
    v14.n128_u64[0] = 1.0;
    v15.n128_u64[0] = 0x4072C00000000000;

    return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v11, v12, 0, 0, v13, v15, v14);
  }
}

uint64_t sub_100108FC4(uint64_t a1)
{
  v3 = *v2;
  (*v2)[11] = a1;

  if (v1)
  {
    v6 = v3 + 5;
    v4 = v3[5];
    v5 = v6[1];

    sub_100007214(v4, &qword_100603F20, &qword_1004CE698);
    sub_100007214(v5, &qword_100603F28, &qword_1004CE6A0);
    v7 = sub_100109268;
  }

  else
  {
    v8 = v3[8];
    v9 = v3[9];
    v11 = v3[6];
    v10 = v3[7];
    sub_100007214(v3[5], &qword_100603F20, &qword_1004CE698);
    sub_100007214(v11, &qword_100603F28, &qword_1004CE6A0);
    (*(v9 + 8))(v10, v8);
    v7 = sub_100109174;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100109174()
{
  v1 = UIImagePNGRepresentation(*(v0 + 88));
  if (v1)
  {
    v2 = v1;
    v3 = sub_1004B6B74();
    v5 = v4;

    v6.super.isa = sub_1004B6B64().super.isa;
    sub_100004D90(v3, v5);
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

uint64_t sub_100109268()
{
  (*(*(v0 + 72) + 8))(*(v0 + 56), *(v0 + 64));
  (*(v0 + 24))(0, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100109308(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_10010A5BC;
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
    a4 = sub_1004BBC44();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_10003CC4C(v7, v8);
}

void sub_100109410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1004B69A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100109480(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000513EC;

  return v6(a1);
}

void *sub_100109578(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1001095EC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_10010961C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100109710;

  return v5(v2 + 32);
}

uint64_t sub_100109710()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s9MusicCore13CollaborationO5SetupO5title6activeSSSb_tFZ_0(char a1)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v1 = sub_1004BBE14();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_1004BBDA4();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v7 = qword_100617118;
  sub_1004B6DF4();
  v8 = sub_1004BBED4();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t sub_100109A50(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1004B6B04() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010D1F4(a1, a2, v2 + v7);
}

uint64_t sub_100109B30()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100109B88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001384C;

  return sub_1001005A0(a1, v4, v5, v1 + 32);
}

uint64_t sub_100109C38()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v17 = v10;
  *v18 = v11;
  v19 = v12;
  v20 = v13;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  v16 = v9;
  if ((Playlist.hasActiveCollaboration.getter() & 1) == 0)
  {
    if (BYTE1(v14[0]) != 1)
    {
      sub_100109E64();
      swift_allocError();
      v4 = xmmword_1004C4F70;
      goto LABEL_13;
    }

    if ((sub_100100960() & 1) == 0)
    {
      sub_100109E64();
      swift_allocError();
      v4 = xmmword_1004C5150;
LABEL_13:
      *v3 = v4;
      v2 = v3 + 1;
      goto LABEL_14;
    }
  }

  if ((sub_1000FE42C(3u, v15) & 1) == 0)
  {
    sub_100109E64();
    swift_allocError();
    v4 = xmmword_1004C5160;
    goto LABEL_13;
  }

  if (v18[1] && ([v18[1] isMinorAccountHolder] & 1) == 0)
  {
    if (BYTE8(v14[0]))
    {
      return sub_100051DEC(v14);
    }

    sub_100109E64();
    swift_allocError();
    v4 = xmmword_1004C50F0;
    goto LABEL_13;
  }

  sub_100109E64();
  swift_allocError();
  v1 = v0;
  v2 = (v0 + 16);
  *v1 = 0;
  v1[1] = 0;
LABEL_14:
  *v2 = 3;
  swift_willThrow();
  return sub_100051DEC(v14);
}

unint64_t sub_100109E64()
{
  result = qword_100603C20;
  if (!qword_100603C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603C20);
  }

  return result;
}

uint64_t sub_100109EB8()
{

  return swift_deallocObject();
}

uint64_t sub_100109EF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100109F60()
{
  result = qword_100603CE8;
  if (!qword_100603CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603CE8);
  }

  return result;
}

unint64_t sub_100109FB8()
{
  result = qword_100603CF0;
  if (!qword_100603CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100603CF0);
  }

  return result;
}

uint64_t sub_10010A02C(uint64_t a1)
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

uint64_t sub_10010A048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10010A090(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_10010A0D4(uint64_t result, unsigned int a2)
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

uint64_t sub_10010A164(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A21C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A2D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A38C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_10010961C(a1, v4);
}

uint64_t sub_10010A45C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

void sub_10010A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1004BBA84() - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_100108A94(a1, a2, a3, a4, v10);
}

uint64_t sub_10010A584()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10010A5C4()
{
  v1 = sub_1004BBA84();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10010A6A0(uint64_t a1)
{
  v4 = *(sub_1004BBA84() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000136EC;

  return sub_100108C94(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10010A7D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010A818()
{

  return swift_deallocObject();
}

__n128 static Alert.explicitRestrictedAlert(traitCollection:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100114418(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 static Alert.confirmDelete(for:library:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_100009178(a1, v5);
  sub_10010D3C0(v7, a2, v5, v6, v10);
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
  sub_100115724(a1, a2, v6);
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
  sub_1001151F0(a1, a2, a3, a4, v8);
  v6 = v8[3];
  *(a5 + 32) = v8[2];
  *(a5 + 48) = v6;
  *(a5 + 64) = v9;
  result = v8[1];
  *a5 = v8[0];
  *(a5 + 16) = result;
  return result;
}

double static Alert.Action.cancel.getter@<D0>(uint64_t a2@<X8>)
{
  sub_100114F58(v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

__n128 static Alert.enableCloudLibraryAlert(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100115C5C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6;
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

void static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v13 = sub_1004B6D14();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v41 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004B6B04();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v40 - v19;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v40 - v23;
  if (qword_1006006D8 != -1)
  {
    swift_once();
  }

  v25 = 0uLL;
  if (static DeviceCapabilities.isInternalInstall == 1)
  {
    sub_100144204(a1, a2, v44, v45, v46, v47, v48, v49, v24, a10 & 1);
    sub_1000C8C40(v24, v22);
    if ((*(v16 + 48))(v22, 1, v15) == 1)
    {
      sub_10000F7E0(v24);
      v26 = v22;
LABEL_10:
      sub_10000F7E0(v26);
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
    sub_1004B6A44(v33);
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
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v27 = sub_1004B6CE4();
    v28 = v39;
    (*(v42 + 8))(v38, v43);
    (*(v16 + 8))(v20, v15);
    sub_10000F7E0(v24);
    v25 = xmmword_1004C5170;
    v30 = &unk_1004D0880;
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
  sub_100115F10(a2, v5);
  v3 = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6;
  result = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = result;
  return result;
}

id sub_10010AF28(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v4 = result;
    [result setVideoCellularStreamingAllowed:1];

    v5 = *(v2 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10010AFDC(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v4 = result;
    [result setMusicCellularStreamingAllowed:1];

    v5 = *(v2 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 static Alert.networkUnavailableAlert(model:traitCollection:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, void *a3@<X1>)
{
  sub_100116DD0(a2, a3, v6);
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
  v3 = sub_1004B6D14();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_1004BBDA4();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  v13 = qword_100617118;
  sub_1004B6DF4();
  v56 = v13;
  v14 = sub_1004BBED4();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_1004BBDA4();
  v11(v8, v10, v5);
  sub_1004B6DF4();
  v17 = sub_1004BBED4();
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
    sub_1004BBDA4();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_1004B6DF4();
    v49 = v12;
    v21 = sub_1004BBED4();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_1004B6CE4();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_1000183D4((v26 > 1), v27 + 1, 1, v19);
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
    *(v28 + 9) = &unk_1004CE6D8;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_1004BBDA4();
  v11(v8, v10, v5);
  v31 = v56;
  sub_1004B6DF4();
  v32 = sub_1004BBED4();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_1004B6CE4();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000183D4(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_1000183D4((v40 > 1), v41 + 1, 1, v19);
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

id sub_10010B6C0(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v4 = result;
    LSApplicationWorkspace.openSettings()();

    v5 = *(v2 + 8);

    return v5();
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
  v3 = sub_1004B6D14();
  v58 = *(v3 - 8);
  v59 = v3;
  __chkstk_darwin();
  v57 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v5 = sub_1004BBE14();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v45 - v9;
  sub_1004BBDA4();
  v11 = *(v6 + 16);
  v11(v8, v10, v5);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  v13 = qword_100617118;
  sub_1004B6DF4();
  v56 = v13;
  v14 = sub_1004BBED4();
  v54 = v15;
  v55 = v14;
  v16 = *(v6 + 8);
  v16(v10, v5);
  sub_1004BBDA4();
  v11(v8, v10, v5);
  sub_1004B6DF4();
  v17 = sub_1004BBED4();
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
    sub_1004BBDA4();
    v50 = v11;
    v11(v8, v10, v5);
    v20 = v56;
    sub_1004B6DF4();
    v49 = v12;
    v21 = sub_1004BBED4();
    v47 = v22;
    v48 = v21;
    v16(v10, v5);
    v23 = v57;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v24 = sub_1004B6CE4();
    v45 = v25;
    v46 = v24;
    (*(v58 + 8))(v23, v59);
    v19 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = *(v19 + 2);
    v26 = *(v19 + 3);
    if (v27 >= v26 >> 1)
    {
      v19 = sub_1000183D4((v26 > 1), v27 + 1, 1, v19);
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
    *(v28 + 9) = &unk_1004CE6E0;
    *(v28 + 10) = 0;
    v11 = v50;
  }

  sub_1004BBDA4();
  v11(v8, v10, v5);
  v31 = v56;
  sub_1004B6DF4();
  v32 = sub_1004BBED4();
  v34 = v33;
  v51(v10, v5);
  v35 = v57;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v36 = sub_1004B6CE4();
  v38 = v37;
  (*(v58 + 8))(v35, v59);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000183D4(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
  }

  v41 = *(v19 + 2);
  v40 = *(v19 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_1000183D4((v40 > 1), v41 + 1, 1, v19);
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

id sub_10010BD28()
{
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

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
  sub_100051DEC(v0 + 16);
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v6 = result;
    sub_1004BBE64();
    v7 = sub_1004BBE24();

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

uint64_t sub_10010BEBC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() defaultWorkspace];
  if (v3)
  {
    v4 = v3;
    LSApplicationWorkspace.openRestrictions()();
  }

  v5 = *(v2 + 8);

  return v5();
}

double static Alert.contentUnavailableAlert()@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6D14();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin();
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  sub_1004BBDA4();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = v11;
  v13 = sub_1004BBED4();
  v26 = v14;
  v27 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1004BBDA4();
  v10(v7, v9, v4);
  sub_1004B6DF4();
  v16 = sub_1004BBED4();
  v18 = v17;
  v15(v9, v4);
  v19 = v28;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v20 = sub_1004B6CE4();
  v22 = v21;
  (*(v29 + 8))(v19, v30);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v23 = swift_allocObject();
  *&result = 1;
  *(v23 + 16) = xmmword_1004C50A0;
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
  v2 = sub_1004B6D14();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin();
  v33 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v29 - v8;
  sub_1004BBDA4();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  sub_1004B6DF4();
  v12 = v11;
  v13 = sub_1004BBED4();
  v31 = v14;
  v32 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  sub_1004BBDA4();
  v10(v7, v9, v4);
  sub_1004B6DF4();
  v16 = sub_1004BBED4();
  v29 = v17;
  v30 = v16;
  v15(v9, v4);
  sub_1004BBDA4();
  v10(v7, v9, v4);
  sub_1004B6DF4();
  v18 = sub_1004BBED4();
  v20 = v19;
  v15(v9, v4);
  v21 = v33;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v22 = sub_1004B6CE4();
  v24 = v23;
  (*(v34 + 8))(v21, v35);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v25 = swift_allocObject();
  *&result = 1;
  *(v25 + 16) = xmmword_1004C50A0;
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
  sub_100117524(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010C744()
{
  if (qword_1005FFFB0 != -1)
  {
    swift_once();
  }

  CloudLibrary.StatusObserver.enableCloudLibrary(completion:)(0, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010C7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010C804, 0, 0);
}

uint64_t sub_10010C804()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v1(0);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10010C874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010C894, 0, 0);
}

id sub_10010C894(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedNetworkObserver];
  if (result)
  {
    v4 = result;
    v5 = *(v2 + 16);
    [result setMusicCellularDownloadingAllowed:1];

    if (v5)
    {
      (*(v2 + 16))(1);
    }

    v6 = *(v2 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return _swift_task_switch(sub_10010C964, 0, 0);
}

uint64_t sub_10010C964()
{
  v1 = *(v0 + 24);
  v3 = v1[3];
  v2 = v1[4];
  v4 = sub_100009178(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_10010CA20;

  return MusicLibrary.remove<A>(_:)(v4, v3, v2);
}

uint64_t sub_10010CA20()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10010CB54, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10010CB54(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  if (qword_1005FFD38 != -1)
  {
    swift_once();
  }

  v3 = sub_1004B80B4();
  sub_100007084(v3, static Logger.actions);
  swift_errorRetain();
  v4 = sub_1004B8094();
  v5 = sub_1004BC984();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v2[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v2[2] = v7;
    swift_errorRetain();
    sub_100003ABC(&qword_100604C30, &qword_1004C8490);
    v10 = sub_1004BBF04();
    v12 = sub_100012018(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to delete item=%s", v8, 0xCu);
    sub_100004C6C(v9);
  }

  else
  {
  }

  v13 = v2[1];

  return v13();
}

uint64_t sub_10010CD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010CD44, 0, 0);
}

uint64_t sub_10010CD44(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = [objc_opt_self() standardUserDefaults];
  [v4 setPrefersSpatialDownloads:1];

  v7 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v2;
  v5[1] = sub_10010CE70;

  return v7(1);
}

uint64_t sub_10010CE70()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10010CF64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000136EC;

  return v6(0);
}

__n128 static Alert.downloadPinsAlert(completion:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  sub_100117828(a2, a3, v6);
  v4 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010D0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010D0C0, 0, 0);
}

uint64_t sub_10010D0C0()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10010D128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10010D148, 0, 0);
}

id sub_10010D148(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v4 = result;
    v5 = *(v2 + 16);
    [result enableAutomaticDownloadsForPinnedLibraryEntities];

    v5(1);
    v6 = *(v2 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010D1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  sub_1004BC474();
  *(v3 + 24) = sub_1004BC464();
  v5 = sub_1004BC3E4();

  return _swift_task_switch(sub_10010D28C, v5, v4);
}

uint64_t sub_10010D28C()
{

  v1 = [objc_opt_self() sharedApplication];
  sub_1004B6A44(v2);
  v4 = v3;
  sub_10003D128(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1001183C4(&qword_100600FD0, type metadata accessor for OpenExternalURLOptionsKey, &unk_1004C7654);
  isa = sub_1004BBC24().super.isa;

  [v1 openURL:v4 options:isa completionHandler:0];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10010D3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a2;
  v9 = sub_1004B6D14();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v12 = sub_1004BBE14();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v32 - v16;
  v37[3] = a3;
  v37[4] = a4;
  v36 = a4;
  v18 = sub_1000133B0(v37);
  (*(*(a3 - 8) + 16))(v18, a1, a3);
  sub_1004BBDA4();
  (*(v13 + 16))(v15, v17, v12);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v19 = qword_100617118;
  sub_1004B6DF4();
  v32 = sub_1004BBED4();
  v21 = v20;
  (*(v13 + 8))(v17, v12);
  sub_10001342C(v37, v38);
  v22 = swift_allocObject();
  sub_100013414(v38, v22 + 16);
  *(v22 + 56) = v33;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v23 = sub_1004B6CE4();
  v25 = v24;
  (*(v34 + 8))(v11, v35);
  v26 = sub_100112EA8(v18, a3, v36);
  v28 = v27;
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1004C50C0;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v32;
  *(v29 + 56) = v21;
  *(v29 + 64) = 1;
  *(v29 + 72) = &unk_1004CE778;
  *(v29 + 80) = v22;

  sub_100114F58(v38);
  v30 = v38[1];
  *(v29 + 88) = v38[0];
  *(v29 + 104) = v30;
  *(v29 + 120) = v38[2];
  *(v29 + 136) = v39;

  result = sub_100004C6C(v37);
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

uint64_t sub_10010D7E8(uint64_t a1)
{
  v115 = a1;
  v94 = sub_1004BB4D4();
  v88 = *(v94 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v82 - v2;
  __chkstk_darwin();
  v89 = &v82 - v3;
  v91 = sub_1004BB9B4();
  v90 = *(v91 - 8);
  __chkstk_darwin();
  v92 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004BBA44();
  v95 = *(v98 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v82 - v6;
  v100 = sub_1004B7CF4();
  v97 = *(v100 - 8);
  __chkstk_darwin();
  v82 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v82 - v8;
  v102 = sub_1004B7C94();
  v99 = *(v102 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1004B7A34();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v82 - v11;
  v12 = sub_1004BB384();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v82 - v15;
  v111 = sub_1004BBA84();
  v108 = *(v111 - 8);
  __chkstk_darwin();
  v110 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004BAD04();
  v112 = *(v17 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v82 - v19;
  sub_1004B6E64();
  __chkstk_darwin();
  v114 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004BBE14();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v82 - v26;
  v28 = sub_1004BB434();
  v113 = *(v28 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v12;
  v117[4] = &protocol witness table for Song;
  v31 = sub_1000133B0(v117);
  v105 = v13;
  v32 = *(v13 + 16);
  v33 = v115;
  v115 = v12;
  v32(v31, v33, v12);
  sub_10001342C(v117, &v116);
  sub_100003ABC(&qword_100603FB8, &qword_1004CE780);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v34 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v23 + 8))(v27, v22);
    v36 = *(v113 + 8);
    v37 = v30;
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v39 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v23 + 8))(v27, v22);
    (*(v112 + 8))(v20, v17);
    goto LABEL_15;
  }

  v41 = v110;
  v40 = v111;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v42 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v23 + 8))(v27, v22);
    v36 = *(v108 + 8);
    v37 = v41;
    v38 = v40;
    goto LABEL_14;
  }

  v28 = v115;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v44 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v23 + 8))(v27, v22);
    v36 = *(v105 + 8);
    v37 = v109;
    goto LABEL_5;
  }

  v28 = v106;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v45 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v23 + 8))(v27, v22);
    v36 = *(v103 + 8);
    v37 = v107;
    goto LABEL_5;
  }

  v28 = v102;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
    sub_100004C6C(&v116);
LABEL_16:
    sub_100004C6C(v117);
    return v35;
  }

  v28 = v100;
  v48 = v23;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v23 + 16))(v25, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v49 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
        v74 = sub_10010D7E8(v73);
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
        v35 = sub_10010ED30(v79);
        (*(v78 + 8))(v79, v17);
        goto LABEL_46;
      }

      v80 = *(v68 + 8);
      v80(v69, v64);
      v80(v70, v64);
    }

LABEL_55:
    sub_100004C6C(&v116);
    sub_1004BBDA4();
    (*(v48 + 16))(v66, v27, v22);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v81 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v48 + 8))(v27, v22);
    goto LABEL_16;
  }

  v52 = v95;
  v53 = v93;
  (*(v95 + 32))(v93, v50, v51);
  v54 = v92;
  sub_1004BB9C4();
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
    v61 = sub_1001102FC(v59);
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
    v35 = sub_10010ED30(v77);
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
    v61 = sub_10010D7E8(v59);
    goto LABEL_37;
  }

  if (v57 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v55 + 96))(v54, v56);
    v58 = v97;
    v59 = v82;
    v60 = v100;
    (*(v97 + 32))(v82, v54, v100);
    v61 = sub_1001118B4(v59);
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
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_10010ED30(uint64_t a1)
{
  v120 = a1;
  v97 = sub_1004BB4D4();
  v93 = *(v97 - 8);
  __chkstk_darwin();
  v91 = &v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v87 - v2;
  __chkstk_darwin();
  v94 = &v87 - v3;
  v95 = sub_1004BB9B4();
  v99 = *(v95 - 8);
  __chkstk_darwin();
  v96 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1004BBA44();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v100 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v87 - v6;
  v106 = sub_1004B7CF4();
  v102 = *(v106 - 8);
  __chkstk_darwin();
  v87 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = &v87 - v8;
  v107 = sub_1004B7C94();
  v104 = *(v107 - 8);
  __chkstk_darwin();
  v109 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1004B7A34();
  v108 = *(v112 - 8);
  __chkstk_darwin();
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v87 - v11;
  v115 = sub_1004BB384();
  v110 = *(v115 - 8);
  __chkstk_darwin();
  v89 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v87 - v13;
  v118 = sub_1004BBA84();
  v113 = *(v118 - 8);
  __chkstk_darwin();
  v117 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1004BAD04();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v88 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v87 - v18;
  sub_1004B6E64();
  __chkstk_darwin();
  v119 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004BBE14();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v87 - v25;
  v27 = sub_1004BB434();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122[3] = v15;
  v122[4] = &protocol witness table for MusicVideo;
  v31 = sub_1000133B0(v122);
  v116 = v16;
  (*(v16 + 16))(v31, v120, v15);
  sub_10001342C(v122, &v121);
  sub_100003ABC(&qword_100603FB8, &qword_1004CE780);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v32 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v34 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v116 + 8))(v19, v15);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v35 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v113 + 8))(v117, v118);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v36 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v110 + 8))(v114, v115);
    goto LABEL_29;
  }

  v37 = v26;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v38 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v108 + 8))(v111, v112);
    goto LABEL_29;
  }

  v39 = v107;
  v40 = v21;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v37, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v41 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v22 + 8))(v37, v21);
    (*(v104 + 8))(v109, v39);
    goto LABEL_29;
  }

  v42 = v105;
  v43 = v106;
  v44 = v22;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v37, v40);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v45 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
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
        v71 = sub_10010D7E8(v69);
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
        v78 = sub_10010ED30(v77);
        (*(v76 + 8))(v77, v15);
        v33 = v78;
        goto LABEL_42;
      }

      v84 = *(v64 + 8);
      v84(v65, v61);
      v84(v66, v61);
    }

LABEL_52:
    sub_100004C6C(&v121);
    sub_1004BBDA4();
    (*(v44 + 16))(v62, v37, v40);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v86 = qword_100617118;
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
    (*(v44 + 8))(v37, v40);
    goto LABEL_30;
  }

  v49 = v98;
  v50 = v100;
  (*(v98 + 32))(v100, v47, v48);
  v51 = v96;
  sub_1004BB9C4();
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
    v58 = sub_1001102FC(v56);
LABEL_34:
    v59 = v57;
    v33 = v58;
    (*(v55 + 8))(v56, v59);
    (*(v49 + 8))(v50, v103);
LABEL_29:
    sub_100004C6C(&v121);
LABEL_30:
    sub_100004C6C(v122);
    return v33;
  }

  if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v99 + 96))(v51, v53);
    v73 = v116;
    v74 = v88;
    (*(v116 + 32))(v88, v51, v15);
    v75 = sub_10010ED30(v74);
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
    v82 = sub_10010D7E8(v80);
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
    v58 = sub_1001118B4(v56);
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
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001102FC(uint64_t a1)
{
  v114 = a1;
  v94 = sub_1004BB4D4();
  v89 = *(v94 - 8);
  __chkstk_darwin();
  v87 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v82 - v2;
  __chkstk_darwin();
  v90 = &v82 - v3;
  v92 = sub_1004BB9B4();
  v91 = *(v92 - 8);
  __chkstk_darwin();
  v93 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1004BBA44();
  v95 = *(v99 - 8);
  __chkstk_darwin();
  v96 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v82 - v6;
  v101 = sub_1004B7CF4();
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v82 - v8;
  v103 = sub_1004B7C94();
  v100 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004B7A34();
  v115 = *(v10 - 8);
  __chkstk_darwin();
  v86 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v82 - v12;
  v109 = sub_1004BB384();
  v105 = *(v109 - 8);
  __chkstk_darwin();
  v85 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v82 - v14;
  v110 = sub_1004BBA84();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v112 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BAD04();
  v111 = *(v16 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v82 - v18;
  sub_1004B6E64();
  __chkstk_darwin();
  v113 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004BBE14();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v82 - v25;
  v27 = sub_1004BB434();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117[3] = v10;
  v117[4] = sub_1001183C4(&qword_100603FC0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v31 = sub_1000133B0(v117);
  v32 = v114;
  v33 = *(v115 + 16);
  v114 = v10;
  v33(v31, v32, v10);
  sub_10001342C(v117, &v116);
  sub_100003ABC(&qword_100603FB8, &qword_1004CE780);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v34 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_16;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v37 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    v38 = *(v111 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_15:
    v38(v39, v40);
LABEL_16:
    sub_100004C6C(&v116);
LABEL_17:
    sub_100004C6C(v117);
    return v35;
  }

  v41 = v110;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v42 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    v38 = *(v105 + 8);
    v39 = v45;
    goto LABEL_9;
  }

  v41 = v114;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v47 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    v38 = *(v115 + 8);
    v39 = v106;
    goto LABEL_14;
  }

  v41 = v103;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v48 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v50 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
        v35 = sub_10010D7E8(v70);
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
        v35 = sub_10010ED30(v75);
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
    sub_100004C6C(&v116);
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v64, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v81 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v64, v21);
    goto LABEL_17;
  }

  v53 = v52;
  v54 = v95;
  v55 = v96;
  (*(v95 + 32))(v96, v51, v53);
  v56 = v93;
  sub_1004BB9C4();
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
    v35 = sub_1001102FC(v62);
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
    v35 = sub_10010ED30(v72);
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
    v79 = sub_10010D7E8(v77);
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
    v79 = sub_1001118B4(v77);
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
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_1001118B4(uint64_t a1)
{
  v125 = a1;
  v105 = sub_1004BB4D4();
  v100 = *(v105 - 8);
  __chkstk_darwin();
  v98 = &v93 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v99 = &v93 - v2;
  __chkstk_darwin();
  v101 = &v93 - v3;
  v103 = sub_1004BB9B4();
  v102 = *(v103 - 8);
  __chkstk_darwin();
  v104 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1004BBA44();
  v106 = *(v109 - 8);
  __chkstk_darwin();
  v107 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v108 = &v93 - v6;
  v7 = sub_1004B7CF4();
  v126 = *(v7 - 8);
  __chkstk_darwin();
  v94 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v93 - v9;
  v114 = sub_1004B7C94();
  v110 = *(v114 - 8);
  __chkstk_darwin();
  v113 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1004B7A34();
  v112 = *(v117 - 8);
  __chkstk_darwin();
  v97 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v93 - v12;
  v119 = sub_1004BB384();
  v115 = *(v119 - 8);
  __chkstk_darwin();
  v96 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v120 = &v93 - v14;
  v122 = sub_1004BBA84();
  v118 = *(v122 - 8);
  __chkstk_darwin();
  v121 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004BAD04();
  v123 = *(v16 - 8);
  __chkstk_darwin();
  v95 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v93 - v18;
  sub_1004B6E64();
  __chkstk_darwin();
  v124 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1004BBE14();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v93 - v25;
  v27 = sub_1004BB434();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128[3] = v7;
  v128[4] = sub_1001183C4(&qword_100603FC8, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v31 = sub_1000133B0(v128);
  v32 = v125;
  v33 = *(v126 + 16);
  v125 = v7;
  v33(v31, v32, v7);
  sub_10001342C(v128, &v127);
  sub_100003ABC(&qword_100603FB8, &qword_1004CE780);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v34 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v28 + 8))(v30, v27);
    goto LABEL_27;
  }

  v36 = v16;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v37 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    v38 = *(v123 + 8);
    v39 = v19;
LABEL_9:
    v40 = v36;
LABEL_26:
    v38(v39, v40);
LABEL_27:
    sub_100004C6C(&v127);
LABEL_28:
    sub_100004C6C(v128);
    return v35;
  }

  v42 = v121;
  v41 = v122;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v43 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v118 + 8))(v42, v41);
    goto LABEL_27;
  }

  v44 = v119;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v45 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v115 + 8))(v120, v44);
    goto LABEL_27;
  }

  v46 = v24;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v47 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v26, v21);
    (*(v112 + 8))(v116, v117);
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v48 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
    sub_1004BBDA4();
    (*(v22 + 16))(v24, v26, v21);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v50 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
        v75 = sub_10010D7E8(v74);
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
        v84 = sub_10010ED30(v83);
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
    sub_100004C6C(&v127);
    sub_1004BBDA4();
    (*(v22 + 16))(v46, v68, v67);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v92 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v22 + 8))(v68, v67);
    goto LABEL_28;
  }

  v53 = v106;
  v54 = v107;
  (*(v106 + 32))(v107, v51, v52);
  v55 = v104;
  sub_1004BB9C4();
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
    v62 = sub_1001102FC(v60);
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
    v79 = sub_10010ED30(v78);
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
    v89 = sub_10010D7E8(v87);
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
    v89 = sub_1001118B4(v87);
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
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_100112EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v111 = a3;
  v112 = a1;
  v90 = sub_1004BB4D4();
  v84 = *(v90 - 8);
  __chkstk_darwin();
  v82 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v77 - v5;
  __chkstk_darwin();
  v85 = &v77 - v6;
  v87 = sub_1004BB9B4();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v88 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1004BBA44();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v89 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v77 - v9;
  v96 = sub_1004B7CF4();
  v94 = *(v96 - 8);
  __chkstk_darwin();
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v77 - v11;
  v100 = sub_1004B7C94();
  v95 = *(v100 - 8);
  __chkstk_darwin();
  v99 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1004B7A34();
  v98 = *(v103 - 8);
  __chkstk_darwin();
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v77 - v14;
  v105 = sub_1004BB384();
  v101 = *(v105 - 8);
  __chkstk_darwin();
  v80 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v106 = &v77 - v16;
  v108 = sub_1004BBA84();
  v104 = *(v108 - 8);
  __chkstk_darwin();
  v107 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004BAD04();
  v109 = *(v18 - 8);
  __chkstk_darwin();
  v79 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v77 - v20;
  sub_1004B6E64();
  __chkstk_darwin();
  v110 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004BBE14();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v77 - v27;
  v29 = sub_1004BB434();
  v30 = *(v29 - 8);
  __chkstk_darwin();
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114[3] = a2;
  v114[4] = v111;
  v33 = sub_1000133B0(v114);
  (*(*(a2 - 8) + 16))(v33, v112, a2);
  sub_10001342C(v114, &v113);
  sub_100003ABC(&qword_100603FB8, &qword_1004CE780);
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v34 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v30 + 8))(v32, v29);
    goto LABEL_29;
  }

  v36 = v18;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v37 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v109 + 8))(v21, v18);
    goto LABEL_29;
  }

  v39 = v107;
  v38 = v108;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v40 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v104 + 8))(v39, v38);
    goto LABEL_29;
  }

  v41 = v105;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v42 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v101 + 8))(v106, v41);
    goto LABEL_29;
  }

  v43 = v28;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v44 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v98 + 8))(v102, v103);
    goto LABEL_29;
  }

  v45 = v23;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v23);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v46 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v24 + 8))(v28, v23);
    (*(v95 + 8))(v99, v100);
    goto LABEL_29;
  }

  v47 = v96;
  v48 = v24;
  if (swift_dynamicCast())
  {
    sub_1004BBDA4();
    (*(v24 + 16))(v26, v28, v45);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v49 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
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
        v35 = sub_10010D7E8(v71);
        (*(v70 + 8))(v71, v41);
LABEL_41:
        (*(v66 + 8))(v67, v65);
LABEL_29:
        sub_100004C6C(&v113);
LABEL_30:
        sub_100004C6C(v114);
        return v35;
      }

      if (v69 == enum case for Track.musicVideo(_:))
      {
        (*(v66 + 96))(v68, v65);
        v72 = v109;
        v73 = v79;
        v74 = v112;
        (*(v109 + 32))(v79, v68, v112);
        v35 = sub_10010ED30(v73);
        (*(v72 + 8))(v73, v74);
        goto LABEL_41;
      }

      v75 = *(v66 + 8);
      v75(v67, v65);
      v75(v68, v65);
    }

LABEL_51:
    sub_100004C6C(&v113);
    sub_1004BBDA4();
    (*(v48 + 16))(v26, v43, v45);
    if (qword_1005FFD30 != -1)
    {
      swift_once();
    }

    v76 = qword_100617118;
    sub_1004B6DF4();
    v35 = sub_1004BBED4();
    (*(v48 + 8))(v43, v45);
    goto LABEL_30;
  }

  v112 = v36;
  v53 = v51;
  v54 = v91;
  v55 = v89;
  (*(v91 + 32))(v89, v53, v52);
  v56 = v88;
  sub_1004BB9C4();
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
    v63 = sub_1001102FC(v61);
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
    v63 = sub_10010ED30(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v101;
    v61 = v80;
    v62 = v105;
    (*(v101 + 32))(v80, v56, v105);
    v63 = sub_10010D7E8(v61);
    goto LABEL_47;
  }

  if (v59 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v57 + 96))(v56, v58);
    v60 = v94;
    v61 = v78;
    v62 = v96;
    (*(v94 + 32))(v78, v56, v96);
    v63 = sub_1001118B4(v61);
    goto LABEL_47;
  }

  if (v59 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v59 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v54 + 8))(v55, v52);
    (*(v57 + 8))(v56, v58);
    goto LABEL_51;
  }

  (*(v57 + 8))(v56, v58);
  result = sub_1004BD624();
  __break(1u);
  return result;
}

uint64_t sub_100114418@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v101 = sub_1004B6D14();
  v99 = *(v101 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004B7674();
  v90 = *(v5 - 8);
  v91 = v5;
  __chkstk_darwin();
  v89 = v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v8 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1004BBE14();
  v9 = *(v102 - 8);
  __chkstk_darwin();
  v103 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v87 - v11;
  if (qword_1005FFE10 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004B85A4();

  v114[4] = v110;
  v114[5] = v111;
  v114[6] = v112;
  v114[7] = v113;
  v114[0] = v106;
  v114[1] = v107;
  v114[2] = v108;
  v114[3] = v109;
  v13 = *(&v108 + 1);

  sub_100051DEC(v114);
  LODWORD(v94) = sub_1000FE42C(7u, v13);

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
  sub_1004BBDA4();
  v104 = *(v9 + 16);
  v105 = v9 + 16;
  v104(v17, v12, v16);
  v18 = v12;
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v19 = qword_100617118;
  v20 = qword_100617118;
  sub_1004B6DF4();
  v21 = sub_1004BBED4();
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
    if ((v94 & 1) != 0 || (v26 = v89, sub_1004B7664(), v27 = sub_1004B7654(), (*(v90 + 8))(v26, v91), (v27 & 1) == 0))
    {
      v64 = v18;
      sub_1004BBDA4();
      v66 = v102;
      v65 = v103;
      v104(v103, v64, v102);
      v67 = v25;
      sub_1004B6DF4();
      v68 = v67;
      v94 = sub_1004BBED4();
      v95 = v69;
      v70 = v93;
      v93(v64, v66);
      sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004C50C0;
      sub_1004BBDA4();
      v104(v65, v64, v66);
      sub_1004B6DF4();
      v71 = sub_1004BBED4();
      v90 = v72;
      v91 = v71;
      v70(v64, v66);
      v73 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v74 = sub_1004B6CE4();
      v76 = v75;
      v99 = *(v99 + 8);
      (v99)(v73, v101);
      *(v36 + 32) = v74;
      *(v36 + 40) = v76;
      v77 = v90;
      *(v36 + 48) = v91;
      *(v36 + 56) = v77;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_1004CE7D0;
      *(v36 + 80) = 0;
      sub_1004BBDA4();
      v78 = v66;
      v104(v65, v64, v66);
      sub_1004B6DF4();
      v79 = sub_1004BBED4();
      v81 = v80;
      v93(v64, v78);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v82 = sub_1004B6CE4();
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
      sub_1004BBDA4();
      v28 = v103;
      v29 = v102;
      (v104)(v103, v18);
      v30 = v25;
      sub_1004B6DF4();
      v31 = v30;
      v32 = sub_1004BBED4();
      v95 = v33;
      v34 = v29;
      v35 = v93;
      v93(v18, v29);
      sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1004C50C0;
      sub_1004BBDA4();
      v104(v28, v18, v34);
      sub_1004B6DF4();
      v94 = sub_1004BBED4();
      v91 = v37;
      v35(v18, v34);
      v38 = v98;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v39 = sub_1004B6CE4();
      v41 = v40;
      v99 = *(v99 + 8);
      (v99)(v38, v101);
      *(v36 + 32) = v39;
      *(v36 + 40) = v41;
      v42 = v91;
      *(v36 + 48) = v94;
      *(v36 + 56) = v42;
      *(v36 + 64) = 2;
      *(v36 + 72) = &unk_1004CE7D8;
      *(v36 + 80) = 0;
      sub_1004BBDA4();
      v43 = v102;
      v104(v28, v18, v102);
      sub_1004B6DF4();
      v44 = sub_1004BBED4();
      v46 = v45;
      v93(v18, v43);
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v47 = sub_1004B6CE4();
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
    sub_1004BBDA4();
    v104(v17, v18, v16);
    v52 = v20;
    sub_1004B6DF4();
    v53 = v52;
    v54 = v103;
    v94 = sub_1004BBED4();
    v95 = v55;
    v56 = v16;
    v24(v18, v16);
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1004C50A0;
    sub_1004BBDA4();
    v104(v54, v18, v56);
    sub_1004B6DF4();
    v32 = v94;
    v57 = sub_1004BBED4();
    v59 = v58;
    v24(v18, v56);
    v60 = v98;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v61 = sub_1004B6CE4();
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

uint64_t sub_100114F58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B6D14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1004B6E64();
  __chkstk_darwin();
  v6 = sub_1004BBE14();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v20[-v10];
  sub_1004BBDA4();
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v12 = qword_100617118;
  sub_1004B6DF4();
  v13 = sub_1004BBED4();
  v15 = v14;
  (*(v7 + 8))(v11, v6);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v16 = sub_1004B6CE4();
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

void sub_1001151F0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v60 = a1;
  v61 = a2;
  v66 = sub_1004B6D14();
  v59 = *(v66 - 8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v9 = sub_1004BBE14();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v47 - v13;
  sub_1004BBDA4();
  v15 = v10;
  v16 = *(v10 + 16);
  v65 = v10 + 16;
  v58 = v16;
  v16(v12, v14, v9);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v17 = qword_100617118;
  v18 = qword_100617118;
  v64 = v17;
  v19 = v18;
  sub_1004B6DF4();
  v51 = v19;
  v20 = sub_1004BBED4();
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

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = v12;
  v26 = v8;
  v27 = sub_1004B6CE4();
  v52 = v28;
  v53 = v27;
  v29 = v24;
  v48 = *(v59 + 8);
  v48(v26, v66);
  sub_1004BBDA4();
  v30 = v58;
  v58(v25, v14, v9);
  sub_1004B6DF4();
  v31 = v51;
  v59 = sub_1004BBED4();
  v51 = v32;
  v63(v14, v9);
  v33 = swift_allocObject();
  v50 = v33;
  *(v33 + 16) = v29;
  *(v33 + 24) = a4;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v55 = sub_1004B6CE4();
  v49 = v34;
  v48(v26, v66);
  sub_1004BBDA4();
  v30(v25, v14, v9);
  sub_1004B6DF4();
  v35 = sub_1004BBED4();
  v37 = v36;
  v63(v14, v9);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1004C50C0;
  v39 = v52;
  *(v38 + 32) = v53;
  *(v38 + 40) = v39;
  v40 = v56;
  *(v38 + 48) = v57;
  *(v38 + 56) = v40;
  *(v38 + 64) = 2;
  v41 = v54;
  v42 = v55;
  *(v38 + 72) = &unk_1004CE738;
  *(v38 + 80) = v41;
  v43 = v49;
  *(v38 + 88) = v42;
  *(v38 + 96) = v43;
  v44 = v50;
  v45 = v51;
  *(v38 + 104) = v59;
  *(v38 + 112) = v45;
  *(v38 + 120) = 0;
  *(v38 + 128) = &unk_1004CE748;
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

id sub_100115724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v45 = a1;
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v40 - v8;
  sub_1004BBDA4();
  v10 = v5;
  v13 = *(v5 + 16);
  v12 = v5 + 16;
  v11 = v13;
  v13(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v51 = v11;
  v14 = qword_100617118;
  v49 = qword_100617118;
  sub_1004B6DF4();
  v50 = v14;
  v15 = sub_1004BBED4();
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
    sub_1004BBDA4();
    v20 = v51;
    v51(v7, v9, v4);
    v21 = v49;
    sub_1004B6DF4();
    v40[1] = v12;
    v22 = sub_1004BBED4();
    v42 = v23;
    v43 = v22;
    v24 = v44;
    v40[2] = v17;
    v44(v9, v4);
    sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004C50C0;
    sub_1004BBDA4();
    v20(v7, v9, v4);
    sub_1004B6DF4();
    v26 = v49;
    v27 = sub_1004BBED4();
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
    *(v25 + 72) = &unk_1004CE758;
    *(v25 + 80) = v30;
    sub_10002F518(v31, v32);
    sub_1004BBDA4();
    v51(v7, v9, v4);
    sub_1004B6DF4();
    v33 = sub_1004BBED4();
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
    *(v25 + 128) = &unk_1004CE768;
    *(v25 + 136) = v36;
    result = sub_10002F518(v31, v32);
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

uint64_t sub_100115C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = sub_1004B6D14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005FFFA8 != -1)
  {
    swift_once();
  }

  v8 = static CloudLibrary.EnablementContext.action;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v9 = sub_1004B6CE4();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  v12 = CloudLibrary.EnablementContext.title.getter(v2);
  v14 = v13;
  v15 = CloudLibrary.EnablementContext.message.getter(v2);
  v17 = v16;
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004C50C0;
  *(v18 + 32) = v9;
  *(v18 + 40) = v11;
  *(v18 + 48) = v8;
  *(v18 + 64) = 2;
  *(v18 + 72) = &unk_1004CE728;
  *(v18 + 80) = 0;

  sub_100114F58(v22);
  v19 = v22[1];
  *(v18 + 88) = v22[0];
  *(v18 + 104) = v19;
  *(v18 + 120) = v22[2];
  *(v18 + 136) = v23;

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 24) = v17;
  *(a2 + 32) = 0;
  *(a2 + 33) = v22[0];
  *(a2 + 36) = *(v22 + 3);
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = *v24;
  *(a2 + 52) = *&v24[3];
  *(a2 + 56) = v18;
  *(a2 + 64) = 0;
  return result;
}

uint64_t sub_100115E88(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004B6B04();
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

id sub_100115F10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1004B6D14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v97 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1004BBE14();
  v96 = *(v94 - 8);
  __chkstk_darwin();
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  wapiCapability = MobileGestalt_get_wapiCapability();

  v90 = v7;
  v91 = v5;
  v92 = v4;
  v93 = a2;
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
      sub_1004BBDA4();
      v17 = v96;
      v18 = *(v96 + 16);
      v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v94;
      v18(v10, v12, v94);
      v20 = v10;
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      sub_1004BBDA4();
      v17 = v96;
      v18 = *(v96 + 16);
      v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v19 = v94;
      v18(v10, v12, v94);
      v20 = v10;
      if (qword_1005FFD30 == -1)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_51;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v21 = v94;
    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_13:
    sub_1004BBDA4();
    v22 = v96;
    v23 = *(v96 + 16);
    v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v16, v12, v21);
    v24 = v16;
    if (qword_1005FFD30 == -1)
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
    v19 = v94;
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
  v19 = v94;
  if (!v29)
  {

    v16 = v10;
    if ((wapiCapability & 1) == 0)
    {
LABEL_42:
      sub_1004BBDA4();
      v17 = v96;
      v18 = *(v96 + 16);
      v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v18(v16, v12, v19);
      v20 = v16;
      if (qword_1005FFD30 == -1)
      {
LABEL_43:
        v56 = qword_100617118;
        sub_1004B6DF4();
        v57 = v56;
        v58 = sub_1004BBED4();
        v88 = v59;
        v89 = v58;
        v60 = *(v17 + 8);
        v60(v12, v19);
        sub_1004BBDA4();
        v18(v20, v12, v19);
        sub_1004B6DF4();
        v61 = sub_1004BBED4();
        v86 = v62;
        v87 = v61;
        v60(v12, v19);
        v47 = v60;
        sub_1004BBDA4();
        v50 = v12;
        v63 = v12;
        v52 = v19;
        v18(v20, v63, v19);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v53 = v18;
        v83 = v57;
        sub_1004B6DF4();
        v64 = sub_1004BBED4();
        v94 = v65;
        v84 = v64;
        v85 = &unk_1004CE718;
        v49 = v20;
        goto LABEL_46;
      }

LABEL_51:
      swift_once();
      goto LABEL_43;
    }

LABEL_39:
    sub_1004BBDA4();
    v17 = v96;
    v18 = *(v96 + 16);
    v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v18(v16, v12, v19);
    v20 = v16;
    if (qword_1005FFD30 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v31 = v29;
  v88 = v28;
  sub_100117F4C(0, v30);
  v32 = sub_1004BC2A4();

  if (v32 >> 62)
  {
LABEL_56:
    v33 = sub_1004BD6A4();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v32;
  v16 = v10;
  if (!v33)
  {
LABEL_41:

    if ((wapiCapability & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  v35 = 0;
  v95 = MPModelPropertyStaticAssetMediaType;
  v89 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v36 = sub_1004BD484();
    }

    else
    {
      if (v35 >= *(v89 + 16))
      {
        goto LABEL_55;
      }

      v36 = *(v34 + 8 * v35 + 32);
    }

    v19 = v36;
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ([v36 hasLoadedValueForKey:v95])
    {
      break;
    }

LABEL_23:
    ++v35;
    v19 = v94;
    v34 = v32;
    if (v37 == v33)
    {
      goto LABEL_41;
    }
  }

  v38 = [v19 mediaType];

  v39 = v38 == 2;
  v16 = v10;
  if (!v39)
  {
    goto LABEL_23;
  }

  v21 = v94;
  if (wapiCapability)
  {
    goto LABEL_13;
  }

LABEL_33:
  sub_1004BBDA4();
  v22 = v96;
  v23 = *(v96 + 16);
  v95 = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v16, v12, v21);
  v24 = v16;
  if (qword_1005FFD30 != -1)
  {
    goto LABEL_53;
  }

LABEL_34:
  v40 = qword_100617118;
  sub_1004B6DF4();
  v41 = v40;
  v42 = sub_1004BBED4();
  v88 = v43;
  v89 = v42;
  v44 = *(v22 + 8);
  v44(v12, v21);
  sub_1004BBDA4();
  v23(v24, v12, v21);
  sub_1004B6DF4();
  v45 = sub_1004BBED4();
  v86 = v46;
  v87 = v45;
  v44(v12, v21);
  v47 = v44;
  v48 = v21;
  v49 = v24;
  sub_1004BBDA4();
  v50 = v12;
  v51 = v12;
  v52 = v48;
  v23(v24, v51, v48);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v53 = v23;
  v83 = v41;
  sub_1004B6DF4();
  v54 = sub_1004BBED4();
  v94 = v55;
  v84 = v54;
  v85 = &unk_1004CE720;
LABEL_46:
  v82 = v47;
  v47(v50, v52);
  v66 = v90;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v96 = sub_1004B6CE4();
  v68 = v67;
  v69 = v92;
  v70 = *(v91 + 8);
  v70(v66, v92);

  sub_1004BBDA4();
  v53(v49, v50, v52);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  sub_1004B6DF4();
  v71 = sub_1004BBED4();
  v97 = v72;
  v82(v50, v52);
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v73 = sub_1004B6CE4();
  v75 = v74;
  v70(v66, v69);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1004C50C0;
  *(v76 + 32) = v96;
  *(v76 + 40) = v68;
  v77 = v85;
  *(v76 + 48) = v84;
  *(v76 + 56) = v94;
  *(v76 + 64) = 2;
  *(v76 + 72) = v77;
  *(v76 + 80) = 0;
  *(v76 + 88) = v73;
  *(v76 + 96) = v75;
  v78 = v97;
  *(v76 + 104) = v71;
  *(v76 + 112) = v78;
  *(v76 + 120) = 0;
  *(v76 + 128) = 0;
  *(v76 + 136) = 0;

  result = sub_10003CC4C(v77, 0);
  v79 = v93;
  v80 = v88;
  *v93 = v89;
  v79[1] = v80;
  v81 = v86;
  v79[2] = v87;
  v79[3] = v81;
  *(v79 + 32) = 0;
  *(v79 + 33) = v99[0];
  *(v79 + 9) = *(v99 + 3);
  v79[5] = 0;
  *(v79 + 48) = 1;
  *(v79 + 49) = *v98;
  *(v79 + 13) = *&v98[3];
  v79[7] = v76;
  v79[8] = 0;
  return result;
}

id sub_100116DD0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004B6D14();
  v62 = *(v6 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1004BBE14();
  v59 = *(v63 - 8);
  __chkstk_darwin();
  v60 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v50 - v11;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v14 = result;
    MobileGestalt_get_wapiCapability();

    result = MobileGestalt_get_current_device();
    if (result)
    {
      v15 = result;
      MobileGestalt_get_cellularDataCapability();

      v58 = v9;
      if (a1)
      {
        objc_opt_self();
        swift_dynamicCastObjCClass();
        v16 = v63;
        v17 = v60;
        v18 = v59;
      }

      else
      {
        v16 = v63;
        v18 = v59;
        v17 = v60;
      }

      sub_1004BBDA4();
      v57 = *(v18 + 16);
      v57(v17, v12, v16);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v56 = qword_100617118;
      sub_1004B6DF4();
      v19 = sub_1004BBED4();
      v52 = v20;
      v53 = v19;
      v21 = *(v18 + 8);
      v21(v12, v16);
      v54 = v6;
      v55 = a2;
      if (a2 && [a2 userInterfaceIdiom] == 3)
      {
        v22 = _swiftEmptyArrayStorage;
      }

      else
      {
        v51 = a3;
        sub_1004BBDA4();
        v57(v17, v12, v16);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v23 = v56;
        sub_1004B6DF4();
        v24 = sub_1004BBED4();
        v26 = v25;
        v21(v12, v16);
        v27 = v61;
        _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
        v28 = sub_1004B6CE4();
        v30 = v29;
        (*(v62 + 8))(v27, v6);
        v22 = sub_1000183D4(0, 1, 1, _swiftEmptyArrayStorage);
        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        if (v32 >= v31 >> 1)
        {
          v22 = sub_1000183D4((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v33 = &v22[56 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        *(v33 + 6) = v24;
        *(v33 + 7) = v26;
        v33[64] = 2;
        *(v33 + 9) = &unk_1004CE710;
        *(v33 + 10) = 0;
        a3 = v51;
        v16 = v63;
        v17 = v60;
      }

      sub_1004BBDA4();
      v57(v17, v12, v16);
      if (qword_1005FFD30 != -1)
      {
        swift_once();
      }

      v34 = v56;
      sub_1004B6DF4();
      v35 = sub_1004BBED4();
      v37 = v36;
      v21(v12, v16);
      v38 = v61;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v39 = sub_1004B6CE4();
      v41 = v40;
      (*(v62 + 8))(v38, v54);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_1000183D4(0, *(v22 + 2) + 1, 1, v22);
      }

      v43 = v52;
      v42 = v53;
      v45 = *(v22 + 2);
      v44 = *(v22 + 3);
      if (v45 >= v44 >> 1)
      {
        v22 = sub_1000183D4((v44 > 1), v45 + 1, 1, v22);
      }

      *(v22 + 2) = v45 + 1;
      v46 = &v22[56 * v45];
      *(v46 + 4) = v39;
      *(v46 + 5) = v41;
      *(v46 + 6) = v35;
      *(v46 + 7) = v37;
      v46[64] = 2;
      *(v46 + 9) = 0;
      *(v46 + 10) = 0;
      if (v55)
      {
        v47 = [v55 userInterfaceIdiom];

        if (v47 == 3)
        {
          v48 = 0;
          v49 = v43;
          v43 = 0;
LABEL_27:
          v64 = 1;
          *a3 = v48;
          *(a3 + 8) = v43;
          *(a3 + 16) = v42;
          *(a3 + 24) = v49;
          *(a3 + 32) = 0;
          *(a3 + 40) = 0;
          *(a3 + 48) = 1;
          *(a3 + 56) = v22;
          *(a3 + 64) = 0;
          return result;
        }
      }

      else
      {
      }

      v49 = 0;
      v48 = v42;
      v42 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100117524@<D0>(uint64_t a1@<X8>)
{
  sub_1004B6E64();
  __chkstk_darwin();
  v2 = sub_1004BBE14();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  sub_1004BBDA4();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v9 = qword_100617118;
  sub_1004B6DF4();
  v10 = v9;
  v11 = sub_1004BBED4();
  v23 = v12;
  v24 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  sub_1004BBDA4();
  v8(v5, v7, v2);
  sub_1004B6DF4();
  v14 = sub_1004BBED4();
  v16 = v15;
  v13(v7, v2);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1004C50A0;
  sub_100114F58(v25);
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

uint64_t sub_100117828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a2;
  v56 = a1;
  v53 = a3;
  v57 = sub_1004B6D14();
  v54 = *(v57 - 8);
  __chkstk_darwin();
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6E64();
  __chkstk_darwin();
  v4 = sub_1004BBE14();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v40 - v8;
  sub_1004BBDA4();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v11 = qword_100617118;
  v12 = qword_100617118;
  sub_1004B6DF4();
  v13 = v12;
  v14 = sub_1004BBED4();
  v51 = v15;
  v52 = v14;
  v16 = *(v5 + 8);
  v43 = v5 + 8;
  v16(v9, v4);
  sub_1004BBDA4();
  v10(v7, v9, v4);
  v45 = v10;
  v47 = v5 + 16;
  sub_1004B6DF4();
  v44 = v11;
  v17 = sub_1004BBED4();
  v49 = v18;
  v50 = v17;
  v19 = v16;
  v46 = v16;
  v16(v9, v4);
  sub_100003ABC(&qword_1006011F0, &qword_1004C8160);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1004C50C0;
  sub_1004BBDA4();
  v10(v7, v9, v4);
  sub_1004B6DF4();
  v21 = sub_1004BBED4();
  v41 = v22;
  v42 = v21;
  v19(v9, v4);
  v23 = swift_allocObject();
  *(v23 + 16) = v56;
  *(v23 + 24) = v55;

  v24 = v48;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v25 = sub_1004B6CE4();
  v27 = v26;
  v54 = *(v54 + 8);
  (v54)(v24, v57);
  *(v20 + 32) = v25;
  *(v20 + 40) = v27;
  v28 = v41;
  *(v20 + 48) = v42;
  *(v20 + 56) = v28;
  *(v20 + 64) = 2;
  *(v20 + 72) = &unk_1004CE6F8;
  *(v20 + 80) = v23;
  sub_1004BBDA4();
  v45(v7, v9, v4);
  sub_1004B6DF4();
  v29 = sub_1004BBED4();
  v31 = v30;
  v46(v9, v4);
  v32 = swift_allocObject();
  *(v32 + 16) = v56;
  *(v32 + 24) = v55;

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v33 = sub_1004B6CE4();
  v35 = v34;
  result = (v54)(v24, v57);
  *(v20 + 88) = v33;
  *(v20 + 96) = v35;
  *(v20 + 104) = v29;
  *(v20 + 112) = v31;
  *(v20 + 120) = 2;
  *(v20 + 128) = &unk_1004CE708;
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

uint64_t sub_100117DEC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010D0A0(a1, a2, v7, v6);
}

uint64_t sub_100117E9C(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000136EC;

  return sub_10010D128(a1, a2, v7, v6);
}

unint64_t sub_100117F4C(uint64_t a1, uint64_t a2)
{
  result = qword_100603FB0;
  if (!qword_100603FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100603FB0);
  }

  return result;
}

uint64_t sub_100117F98()
{

  return swift_deallocObject();
}

uint64_t sub_100117FD0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010CD24(a1, a2, v7, v6);
}

uint64_t sub_100118080(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_10010CF64(a1, a2, v6);
}

uint64_t sub_100118134(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010C7E4(a1, a2, v7, v6);
}

uint64_t sub_1001181E4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100118224(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001384C;

  return sub_10010C874(a1, a2, v7, v6);
}

uint64_t sub_1001182D4()
{
  sub_100004C6C((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100118314(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 56);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001384C;

  return sub_10010C944(a1, a2, v2 + 16, v6);
}

uint64_t sub_1001183C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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
  if (Property == sub_1004B8484() || !outPropertyData)
  {
    if (qword_1005FFF28 != -1)
    {
      swift_once();
    }

    v4 = sub_1004B80B4();
    sub_100007084(v4, static Logger.audioFormat);
    v5 = sub_1004B8094();
    v6 = sub_1004BC984();
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
    v3 = sub_1004BBEE4(outPropertyData);

    return v3;
  }
}

char *sub_1001185E4()
{
  result = sub_100118604();
  static Datavault.music = result;
  return result;
}

char *sub_100118604()
{
  sub_100003ABC(&qword_100603FE8, &qword_1004CE7E8);
  __chkstk_darwin();
  v1 = &v20 - v0;
  v2 = sub_1004B6B04();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v20 - v6;
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1004BBE24();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier:v11];

  if (!v12)
  {
    return 0;
  }

  sub_1004B6A94();

  sub_1004B6A54();
  type metadata accessor for Datavault(0);
  (*(v3 + 16))(v5, v7, v2);
  v14 = Datavault.__allocating_init(url:storageClass:)(v5, 0x707041636973754DLL, 0xE800000000000000);
  if (qword_1005FFF00 != -1)
  {
    swift_once();
  }

  v15 = sub_1004B80B4();
  v16 = sub_100007084(v15, qword_100603FD0);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v1, v16, v15);
  v18 = *(v3 + 8);
  v18(v7, v2);
  v18(v9, v2);
  (*(v17 + 56))(v1, 0, 1, v15);
  v19 = OBJC_IVAR____TtC14MusicUtilities9Datavault_logger;
  swift_beginAccess();
  sub_100118F4C(v1, &v14[v19]);
  swift_endAccess();
  return v14;
}

uint64_t *Datavault.music.unsafeMutableAddressor()
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  return &static Datavault.music;
}

uint64_t static Datavault.music.getter()
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Datavault.music.setter(uint64_t a1)
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static Datavault.music = a1;
}

uint64_t (*static Datavault.music.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1005FFEF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_100118E68(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100603FD0);
  sub_100007084(v2, qword_100603FD0);
  return sub_1004B80A4();
}

uint64_t sub_100118EE4(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100602710, &qword_1004CB540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100118F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100603FE8, &qword_1004CE7E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NSDateComponents.lastUpdatedDateString.getter()
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v1 = &v16 - v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_1004B67C4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6784();
  sub_1004B6CA4();
  sub_1004B67A4();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    (*(v9 + 8))(v11, v8);
    sub_10011946C(v1);
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
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = sub_1004B6CD4();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B67A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_10011946C(v2);
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

uint64_t sub_10011946C(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DateComponents.lastUpdatedDateString.getter()
{
  sub_100003ABC(&qword_100603110, &qword_1004CD2B0);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = sub_1004B6CD4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  sub_1004B6CA4();
  sub_1004B67A4();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v3 + 8))(v7, v2);
    sub_10011946C(v1);
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
  sub_1004BBDF4();
  __chkstk_darwin();
  sub_1004B6E64();
  __chkstk_darwin();
  v0 = sub_1004BBE14();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_1004B6C04();
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
          sub_1004BBDA4();
          goto LABEL_21;
        }

        sub_1004BBDE4();
        v20._countAndFlagsBits = 0x2064657461647055;
        v20._object = 0xE800000000000000;
        sub_1004BBDD4(v20);
        v19 = v8;
        sub_1004BBDB4();
        v9 = 9;
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

      v16 = v6 / 604800.0;
      if (*&v16 >> 52 <= 0x7FEuLL)
      {
        if (v16 > -9.22337204e18)
        {
          if (v16 < 9.22337204e18)
          {
            v17 = v16;
            sub_1004BBDE4();
            v23._countAndFlagsBits = 0x2064657461647055;
            v23._object = 0xE800000000000000;
            sub_1004BBDD4(v23);
            v19 = v17;
            sub_1004BBDB4();
            v9 = 19;
LABEL_8:
            v10._countAndFlagsBits = v9 | 0x6F67612064;
LABEL_19:
            v10._object = 0xE500000000000000;
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

    v13 = v6 / 86400.0;
    if (*&v13 >> 52 <= 0x7FEuLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          v14 = v13;
          sub_1004BBDE4();
          v22._countAndFlagsBits = 0x2064657461647055;
          v22._object = 0xE800000000000000;
          sub_1004BBDD4(v22);
          v19 = v14;
          sub_1004BBDB4();
          v10._countAndFlagsBits = 0x6F67612064;
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

  v11 = v6 / 3600.0;
  if (*&v11 >> 52 > 0x7FEuLL)
  {
    goto LABEL_34;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = v11;
  sub_1004BBDE4();
  v21._countAndFlagsBits = 0x2064657461647055;
  v21._object = 0xE800000000000000;
  sub_1004BBDD4(v21);
  v19 = v12;
  sub_1004BBDB4();
  v10._countAndFlagsBits = 0x6F6761207268;
  v10._object = 0xE600000000000000;
LABEL_20:
  sub_1004BBDD4(v10);
  sub_1004BBE04();
LABEL_21:
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1005FFD30 != -1)
  {
    swift_once();
  }

  v15 = qword_100617118;
  sub_1004B6DF4();
  sub_1004BBED4();
  (*(v1 + 8))(v5, v0);
}

uint64_t Date.lastUpdatedDateString.getter()
{
  v0 = sub_1004B6CD4();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6CA4();
  Date.lastUpdatedDateString(relativeTo:)();
  v5 = v4;
  (*(v1 + 8))(v3, v0);
  return v5;
}

uint64_t static String.stringForTrackCountAndDuration(trackCount:duration:)(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v63 = a2;
  v62 = a1;
  sub_1004B6E64();
  __chkstk_darwin();
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004BBE14();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v54 - v11;
  sub_1004BBDF4();
  __chkstk_darwin();
  v12 = sub_1004B6F24();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6F34();
  __chkstk_darwin();
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v10;
  if ((a4 & 1) != 0 || (v20 = *&a3, *&a3 <= 0.0))
  {
    v36 = 0;
    v38 = 0;
    if ((v63 & 1) == 0)
    {
LABEL_13:
      if (v38)
      {
        sub_1004BBDE4();
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        sub_1004BBDD4(v70);
        v68 = v62;
        sub_1004BBDB4();
        v71._countAndFlagsBits = 0x297328676E6F7320;
        v71._object = 0xEA0000000000202CLL;
        sub_1004BBDD4(v71);
        v72._countAndFlagsBits = v36;
        v72._object = v38;
        sub_1004BBDC4(v72);

        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
LABEL_17:
        sub_1004BBDD4(v39);
        v41 = v60;
        sub_1004BBE04();
        (*(v8 + 16))(v59, v41, v7);
        if (qword_1005FFD30 != -1)
        {
          swift_once();
        }

        v42 = qword_100617118;
        sub_1004B6DF4();
        v36 = sub_1004BBED4();
        (*(v8 + 8))(v41, v7);
        return v36;
      }

      v40 = v62;
      if (v62 >= 1)
      {
        sub_1004BBDE4();
        v73._countAndFlagsBits = 0;
        v73._object = 0xE000000000000000;
        sub_1004BBDD4(v73);
        v68 = v40;
        sub_1004BBDB4();
        v39._countAndFlagsBits = 0x297328676E6F7320;
        v39._object = 0xE800000000000000;
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

  v55 = v17;
  v56 = v7;
  v57 = v16;
  v58 = v8;
  sub_1004B6EF4();
  v21 = *(v13 + 104);
  v21(v15, enum case for Calendar.Component.second(_:), v12);
  sub_1004B6EA4();
  v54 = v22;
  v24 = v23;
  v25 = *(v13 + 8);
  v25(v15, v12);
  if (v24 & 1) != 0 || (v21(v15, enum case for Calendar.Component.minute(_:), v12), sub_1004B6EA4(), v27 = v26, v29 = v28, result = (v25)(v15, v12), (v29))
  {
    v8 = v58;
    goto LABEL_6;
  }

  v43 = v54 * v27;
  v8 = v58;
  if ((v54 * v27) >> 64 != (v54 * v27) >> 63)
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

  if (!v43)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v44 = *&a3;
  if (*&a3 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_53;
  }

  v45 = v44 / v43 * v43;
  if ((v44 / v43 * v43) >> 64 != v45 >> 63)
  {
    goto LABEL_47;
  }

  v46 = v44 % v43;
  if (__OFSUB__(v44, v45))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!v54)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v46 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_54;
  }

  v48 = v46 / v54;
  v49 = v46 / v54 * v54;
  if ((v48 * v54) >> 64 != v49 >> 63)
  {
    goto LABEL_50;
  }

  v50 = __OFADD__(v45, v49);
  v51 = v45 + v49;
  if (v50)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v50 = __OFSUB__(v44, v51);
  v52 = v44 - v51;
  if (v50)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v52 < v54 / 2)
  {
    goto LABEL_6;
  }

  v50 = __OFSUB__(v54, v52);
  v53 = v54 - v52;
  if (!v50)
  {
    v20 = *&a3 + v53;
LABEL_6:
    v31 = [*NSDateFormatter.collectionsDurationFormatter.unsafeMutableAddressor() stringFromTimeInterval:v20];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1004BBE64();
      v35 = v34;

      v68 = v33;
      v69 = v35;
      v66 = 44;
      v67 = 0xE100000000000000;
      v64 = 0;
      v65 = 0xE000000000000000;
      sub_10000E7F4();
      v36 = sub_1004BD224();
      v38 = v37;

      (*(v55 + 8))(v19, v57);
    }

    else
    {
      (*(v55 + 8))(v19, v57);
      v36 = 0;
      v38 = 0;
    }

    v7 = v56;
    if ((v63 & 1) == 0)
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
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openRestrictions()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAudioQuality()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAtmos()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicSettings()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openAccountSettings()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

Swift::Bool __swiftcall LSApplicationWorkspace.openNotificationSettings()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v14 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v9);
    v11 = v10;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    v13 = [v1 openSensitiveURL:v11 withOptions:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusicHapticsSettings()()
{
  v1 = v0;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v3 = &v12 - v2;
  v4 = sub_1004B6B04();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6AC4();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100007214(v3, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1004B6A44(v8);
    v10 = v9;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v1 openSensitiveURL:v10 withOptions:isa];

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004B66F4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v45 = v37 - v7;
  v46 = sub_1004B6B04();
  v8 = *(v46 - 8);
  __chkstk_darwin();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v37 - v11;
  sub_100003ABC(&qword_100603C28, &qword_1004CE2A8);
  __chkstk_darwin();
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin();
  v16 = v37 - v15;
  v17 = *(v5 + 56);
  v17(v37 - v15, 1, 1, v4, v14);
  if (a1)
  {
    v18 = [a1 universalStore];
    if (v18)
    {
      v41 = a2;
      v40 = [v18 adamID];
      swift_unknownObjectRelease();
      if (qword_1005FFED8 != -1)
      {
        swift_once();
      }

      sub_100003ABC(&qword_100603560, &qword_1004C5240);
      UnfairLock.locked<A>(_:)(sub_10000E7D8);
      v19 = v48;
      a2 = v41;
      if (v48)
      {
        v39 = v5;
        v20 = sub_1004BBE24();
        v21 = v19;
        v22 = [v19 urlForBagKey:v20];

        if (v22)
        {
          v38 = v21;
          sub_1004B6A94();

          (*(v8 + 32))(v43, v10, v46);
          sub_1004B6664();
          sub_10011C6E8(v13, v16);
          v5 = v39;
          v23 = *(v39 + 48);
          v37[1] = v39 + 48;
          if (v23(v16, 1, v4) || (v24 = sub_1004B6644()) == 0)
          {

            v24 = _swiftEmptyArrayStorage;
          }

          v48 = v24;
          sub_100003ABC(&qword_100601328, &qword_1004D98B0);
          sub_1004B6634();
          v36 = swift_allocObject();
          *(v36 + 16) = xmmword_1004C50C0;
          v47 = v40;
          sub_1004BD934();
          sub_1004B6604();

          sub_1004B6604();
          sub_100023000(v36);
          if (v23(v16, 1, v4))
          {
          }

          else
          {
            sub_1004B6654();
          }

          a2 = v41;
          v27 = v45;
          v26 = v46;
          (*(v8 + 8))(v43, v46);
          goto LABEL_15;
        }

        a2 = v41;
        v5 = v39;
      }
    }
  }

  sub_1004B66E4();
  (v17)(v13, 0, 1, v4);
  sub_10011C6E8(v13, v16);
  v23 = *(v5 + 48);
  if (!v23(v16, 1, v4))
  {
    sub_1004B66C4();
  }

  v25 = v23(v16, 1, v4);
  v26 = v46;
  if (!v25)
  {
    sub_1004B6684();
  }

  v27 = v45;
LABEL_15:
  if (v23(v16, 1, v4))
  {
    (*(v8 + 56))(v27, 1, 1, v26);
  }

  else
  {
    v28 = v44;
    (*(v5 + 16))(v44, v16, v4);
    sub_1004B6674();
    (*(v5 + 8))(v28, v4);
    if ((*(v8 + 48))(v27, 1, v26) != 1)
    {
      (*(v8 + 32))(a2, v27, v26);
      sub_1004B6A44(v31);
      v33 = v32;
      sub_10003C58C(_swiftEmptyArrayStorage);
      v34 = a2;
      isa = sub_1004BBC24().super.isa;

      [v42 openSensitiveURL:v33 withOptions:isa];

      a2 = v34;
      v29 = 0;
      goto LABEL_19;
    }
  }

  sub_100007214(v27, &qword_100600DE0, &unk_1004C66D0);
  v29 = 1;
LABEL_19:
  (*(v8 + 56))(a2, v29, 1, v26);
  return sub_100007214(v16, &qword_100603C28, &qword_1004CE2A8);
}

uint64_t LSApplicationWorkspace.openiTunesStore(with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004B66F4();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v42 = v37 - v5;
  v6 = sub_1004B6B04();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin();
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v40 = v37 - v9;
  sub_100003ABC(&qword_100603C28, &qword_1004CE2A8);
  __chkstk_darwin();
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = v37 - v13;
  v15 = *(v3 + 56);
  v15(v37 - v13, 1, 1, v2, v12);
  v16 = sub_1004BB3D4();
  v41 = v3;
  if (v17)
  {
    v37[1] = v16;
    v38 = a1;
    if (qword_1005FFED8 != -1)
    {
      swift_once();
    }

    sub_100003ABC(&qword_100603560, &qword_1004C5240);
    UnfairLock.locked<A>(_:)(sub_1000F3384);
    v18 = v45;
    if (v45)
    {
      v19 = sub_1004BBE24();
      v20 = [v18 urlForBagKey:v19];

      if (v20)
      {
        sub_1004B6A94();

        (*(v43 + 32))(v40, v8, v44);
        sub_1004B6664();
        sub_10011C6E8(v11, v14);
        v21 = *(v41 + 48);
        if (v21(v14, 1, v2) || (v22 = sub_1004B6644()) == 0)
        {

          v22 = _swiftEmptyArrayStorage;
        }

        v45 = v22;
        sub_100003ABC(&qword_100601328, &qword_1004D98B0);
        sub_1004B6634();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1004C50C0;
        sub_1004B6604();

        sub_1004B6604();
        sub_100023000(v27);
        if (v21(v14, 1, v2))
        {
        }

        else
        {
          sub_1004B6654();
        }

        v25 = v43;
        v24 = v44;
        v26 = v42;
        (*(v43 + 8))(v40, v44);
        a1 = v38;
        goto LABEL_20;
      }

      v3 = v41;
    }

    a1 = v38;
  }

  sub_1004B66E4();
  (v15)(v11, 0, 1, v2);
  sub_10011C6E8(v11, v14);
  v21 = *(v3 + 48);
  if (!v21(v14, 1, v2))
  {
    sub_1004B66C4();
  }

  v23 = v21(v14, 1, v2);
  v25 = v43;
  v24 = v44;
  if (!v23)
  {
    sub_1004B6684();
  }

  v26 = v42;
LABEL_20:
  if (v21(v14, 1, v2))
  {
    (*(v25 + 56))(v26, 1, 1, v24);
  }

  else
  {
    v28 = v41;
    v29 = v39;
    (*(v41 + 16))(v39, v14, v2);
    sub_1004B6674();
    (*(v28 + 8))(v29, v2);
    if ((*(v25 + 48))(v26, 1, v24) != 1)
    {
      (*(v25 + 32))(a1, v26, v24);
      sub_1004B6A44(v32);
      v34 = v33;
      sub_10003C58C(_swiftEmptyArrayStorage);
      v35 = a1;
      isa = sub_1004BBC24().super.isa;

      [v37[2] openSensitiveURL:v34 withOptions:isa];

      a1 = v35;
      v30 = 0;
      goto LABEL_24;
    }
  }

  sub_100007214(v26, &qword_100600DE0, &unk_1004C66D0);
  v30 = 1;
LABEL_24:
  (*(v25 + 56))(a1, v30, 1, v24);
  return sub_100007214(v14, &qword_100603C28, &qword_1004CE2A8);
}

Swift::Void __swiftcall LSApplicationWorkspace.openMusic(tabIdentifier:)(MusicCore::TabIdentifier_optional tabIdentifier)
{
  v2 = v1;
  value = tabIdentifier.value;
  sub_100003ABC(&qword_100600DE0, &unk_1004C66D0);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = sub_1004B6B04();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0x2F2F3A636973756DLL;
  v25 = 0xE800000000000000;
  if (value != 7)
  {
    v10 = 0x7972617262696CLL;
    v23._countAndFlagsBits = 0x6261743F2F626174;
    v23._object = 0xE90000000000003DLL;
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
      v17._countAndFlagsBits = v10;
    }

    else
    {
      v17._countAndFlagsBits = v12;
    }

    if (value <= 2)
    {
      v18 = v15;
    }

    else
    {
      v18 = v11;
    }

    v17._object = v18;
    sub_1004BC024(v17);

    sub_1004BBFF4(v23);
  }

  sub_1004B6AC4();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100007214(v5, &qword_100600DE0, &unk_1004C66D0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_1004B6A44(v19);
    v21 = v20;
    sub_10003C58C(_swiftEmptyArrayStorage);
    isa = sub_1004BBC24().super.isa;

    [v2 openSensitiveURL:v21 withOptions:isa];

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10011C6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100603C28, &qword_1004CE2A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static MPModelPlaylist.defaultMusicKind.getter(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0();
  v4 = [v2 kindWithPlaylistEntryKind:v3 options:0];

  return v4;
}

id sub_10011C7D4(void *a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  strcpy(v6, "showAllTVShows");
  v6[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v7);
  if (!v8)
  {
    sub_10011CF58(&v7);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v6[0])
  {
    v3 = 3;
    goto LABEL_8;
  }

LABEL_7:
  v3 = 2;
LABEL_8:
  v4 = [objc_opt_self() kindWithVariants:v3];

  return v4;
}

id static MPModelArtist.defaultMusicKind.getter(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = objc_opt_self();
  v4 = [objc_opt_self() kindWithVariants:3];
  v5 = [v3 kindWithSongKind:v4];

  v6 = [v2 kindWithAlbumKind:v5];
  return v6;
}

id static MPModelAlbum.defaultMusicKind.getter(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [objc_opt_self() kindWithVariants:3];
  v4 = [v2 kindWithSongKind:v3];

  return v4;
}

id static MPModelTVShow.defaultMusicKind.getter(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_10011CF58(&v11);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if ((v10[0] & 1) == 0)
  {
LABEL_7:
    v3 = 2;
    goto LABEL_8;
  }

  v3 = 3;
LABEL_8:
  v4 = objc_opt_self();
  v5 = objc_opt_self();
  v6 = [objc_opt_self() kindWithVariants:v3];
  v7 = [v5 kindWithEpisodeKind:v6];

  v8 = [v4 kindWithSeasonKind:v7];
  return v8;
}

id static MPModelTVSeason.defaultMusicKind.getter(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  strcpy(v8, "showAllTVShows");
  v8[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(&v9);
  if (!v10)
  {
    sub_10011CF58(&v9);
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
    v3 = 2;
    goto LABEL_8;
  }

  v3 = 3;
LABEL_8:
  v4 = objc_opt_self();
  v5 = [objc_opt_self() kindWithVariants:v3];
  v6 = [v4 kindWithEpisodeKind:v5];

  return v6;
}

id _sSo20MPModelPlaylistEntryC9MusicCoreE07defaultD4KindSo0abcG0CvgZ_0()
{
  sub_100003ABC(&qword_100603C50, &unk_1004CB550);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004C5130;
  *(v0 + 32) = [objc_opt_self() kindWithVariants:7];
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  strcpy(v10, "showAllTVShows");
  v10[15] = -18;
  sub_10000E7F4();
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_10011CF58(v11);
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
  NSUserDefaults.subscript.getter(v11);
  if (!v12)
  {
    sub_10011CF58(v11);
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
  sub_100003ABC(&unk_100603FF0, &qword_1004CE808);
  isa = sub_1004BC284().super.isa;

  v8 = [v6 kindWithKinds:isa];

  return v8;
}

uint64_t sub_10011CF58(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100605110, &unk_1004CD280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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