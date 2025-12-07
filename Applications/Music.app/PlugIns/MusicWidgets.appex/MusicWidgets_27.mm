unint64_t Player.ReplaceCommand.description.getter(void *a1, uint64_t a2)
{
  sub_100573ED8(44);

  v3 = a1;
  v4 = [v3 description];
  v5 = sub_1005728D8();
  v7 = v6;

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_100572A98(v9);

  v10._object = 0x80000001005B45B0;
  v10._countAndFlagsBits = 0xD000000000000010;
  sub_100572A98(v10);
  type metadata accessor for MPCPlayerTracklistReplaceIntent(0);
  v11._countAndFlagsBits = sub_100572978();
  sub_100572A98(v11);

  v12._countAndFlagsBits = 10537;
  v12._object = 0xE200000000000000;
  sub_100572A98(v12);
  return 0xD000000000000016;
}

id sub_1002CDAE4(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = [a1 tracklist];
  v5 = [v4 resetCommand];

  if (!v5)
  {
    return 0;
  }

  v6 = [v5 replaceWithPlaybackIntent:v2 replaceIntent:v3];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t static Player.MoveCommand.Location.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  return sub_100573A58() & 1;
}

uint64_t sub_1002CDC1C(uint64_t *a1, uint64_t *a2)
{
  if (a1[1])
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else if (a2[1])
  {
    return 0;
  }

  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  return sub_100573A58() & 1;
}

id Player.MoveCommand.request(from:)(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = [a1 tracklist];
  v9 = [v8 reorderCommand];

  if ((a4 & 1) == 0)
  {
    if (v9)
    {
      v10 = [v9 moveItem:a2 beforeItem:v7];
      goto LABEL_6;
    }

LABEL_7:

    return 0;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = [v9 moveItem:a2 afterItem:v7];
LABEL_6:
  v11 = v10;
  swift_unknownObjectRelease();

  return v11;
}

BOOL static Player.LeaveSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 leaveSession];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id Player.LeaveSessionCommand.request(from:)(void *a1)
{
  v1 = [a1 leaveSession];

  return v1;
}

uint64_t Player.BuildSharedSessionCommand.init(intentHandler:)()
{
  v0 = objc_allocWithZone(ICLiveLinkIdentity);
  v4[4] = CFRange.init(_:);
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1001D65E4;
  v4[3] = &unk_100698330;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if ((result & 1) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

BOOL static Player.BuildSharedSessionCommand.isAvailable(in:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 playingItem];

  if (v2)
  {
  }

  return v2 != 0;
}

id Player.BuildSharedSessionCommand.request(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100012988;
  v9[3] = &unk_100698358;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:a2 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id sub_1002CE048(void *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v9[4] = v3;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100012988;
  v9[3] = &unk_100699248;
  v6 = _Block_copy(v9);

  v7 = [a1 createSharedSessionWithIdentity:v4 intentHandler:v6];
  _Block_release(v6);
  return v7;
}

id Player.SeekCommand.request(from:)(void *a1, uint64_t a2, char a3)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  if (!v6)
  {
    return 0;
  }

  v7 = [v6 seekCommand];

  if (!v7)
  {
    return 0;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = [v7 changePositionToElapsedInterval:*&a2];
    }

    else
    {
      v8 = [v7 endSeek];
    }
  }

  else
  {
    v8 = [v7 beginSeekWithDirection:a2];
  }

  v10 = v8;
  swift_unknownObjectRelease();
  return v10;
}

void Player.JumpCommand.resolvedTimeInterval(for:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a1)
  {
    v5 = [a1 tracklist];
    v6 = [v5 playingItem];

    v7 = [v6 seekCommand];
    v8 = a3;
    if (!a3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v8 = a3;
    if (!a3)
    {
LABEL_6:
      swift_unknownObjectRelease();
      return;
    }
  }

  if (v8 == 1)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    if (v7)
    {
      v9 = [v7 preferredForwardJumpIntervals];
      sub_1000D3B98(0, &qword_1006E8048, NSNumber_ptr);
      v10 = sub_100572D28();

      if (v10 >> 62)
      {
        if (!sub_100574178())
        {
          goto LABEL_27;
        }

        goto LABEL_12;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        if ((v10 & 0xC000000000000001) != 0)
        {
          goto LABEL_28;
        }

        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_20:
          v12 = *(v10 + 32);
LABEL_21:
          v13 = v12;

          sub_100573048();
          swift_unknownObjectRelease();

          return;
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_27:
      swift_unknownObjectRelease();
    }
  }

  else if (v7)
  {
    v11 = [v7 preferredBackwardJumpIntervals];
    sub_1000D3B98(0, &qword_1006E8048, NSNumber_ptr);
    v10 = sub_100572D28();

    if (v10 >> 62)
    {
LABEL_26:
      if (!sub_100574178())
      {
        goto LABEL_27;
      }

      goto LABEL_18;
    }

    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v10 & 0xC000000000000001) == 0)
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        goto LABEL_20;
      }

LABEL_28:
      v12 = sub_100573F58();
      goto LABEL_21;
    }

    goto LABEL_27;
  }
}

BOOL sub_1002CE4EC(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 playingItem];

  v5 = [v4 *a2];
  if (v5)
  {
    swift_unknownObjectRelease();
  }

  return v5 != 0;
}

id Player.JumpCommand.request(from:)(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = [a1 tracklist];
  v7 = [v6 playingItem];

  v8 = [v7 seekCommand];
  Player.JumpCommand.resolvedTimeInterval(for:)(a1, a2, a3);
  if (a3 != 1)
  {
    if (v8)
    {
      v9 = &selRef_jumpByInterval_;
      goto LABEL_6;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = &selRef_changePositionToElapsedInterval_;
LABEL_6:
  v10 = [v8 *v9];
  swift_unknownObjectRelease();
  return v10;
}

BOOL sub_1002CE678(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 playingItem];

  v7 = [v6 *a4];
  if (v7)
  {
    swift_unknownObjectRelease();
  }

  return v7 != 0;
}

BOOL sub_1002CE71C(void *a1, SEL *a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 *a2];

  if (v4)
  {
    swift_unknownObjectRelease();
  }

  return v4 != 0;
}

id Player.VocalsCommand.request(from:)(void *a1, uint64_t a2)
{
  v3 = [a1 tracklist];
  v4 = [v3 vocalsControlCommand];

  if (!v4)
  {
    return 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    v6 = [v4 activateVocalsControl:0];
  }

  else if ((a2 & 0x100000000) != 0)
  {
    v6 = [v4 activateVocalsControl:1];
  }

  else
  {
    LODWORD(v5) = a2;
    v6 = [v4 setVocalsLevel:v5];
  }

  v7 = v6;
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static Player.VocalsCommand.localizedDisablementMessage(for:)(uint64_t a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100572818();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v7 = qword_1006FC3B8;
  sub_10056CBC8();
  v8 = sub_100572948();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t Player.VocalsCommand.description.getter(uint64_t a1)
{
  strcpy(v3, "VocalCommand(");
  HIWORD(v3[1]) = -4864;
  if ((a1 & 0x10000000000) != 0)
  {
    v1._countAndFlagsBits = 6710895;
    v1._object = 0xE300000000000000;
LABEL_6:
    sub_100572A98(v1);
    goto LABEL_7;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v1._countAndFlagsBits = 28271;
    v1._object = 0xE200000000000000;
    goto LABEL_6;
  }

  v4._countAndFlagsBits = 2649711;
  v4._object = 0xE300000000000000;
  sub_100572A98(v4);
  sub_1005730C8();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  sub_100572A98(v5);
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_100572A98(v6);

LABEL_7:
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_100572A98(v7);
  return v3[0];
}

uint64_t static Player.VocalsCommand.Prepare.isAvailable(in:)(void *a1)
{
  v2 = [a1 tracklist];
  v3 = [v2 prepareVocalsControlCommand];

  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  v4 = [a1 tracklist];
  v5 = [v4 vocalsControlCommand];

  if (v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return 1;
}

id Player.VocalsCommand.Prepare.request(from:)(void *a1)
{
  v1 = [a1 tracklist];
  v2 = [v1 prepareVocalsControlCommand];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 prepare];
  swift_unknownObjectRelease();
  return v3;
}

BOOL static Player.VocalsCommand.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x10000000000) != 0)
  {
    return (a2 & 0x10000000000) != 0;
  }

  if ((a2 & 0x10000000000) != 0)
  {
    return 0;
  }

  if ((a1 & 0x100000000) != 0)
  {
    return (a2 & 0x100000000) != 0;
  }

  return (a2 & 0x100000000) == 0 && *&a1 == *&a2;
}

BOOL sub_1002CECE8(unsigned int *a1, unsigned int *a2)
{
  if (*(a1 + 5))
  {
    return (*(a2 + 5) & 1) != 0;
  }

  if (*(a2 + 5))
  {
    return 0;
  }

  v3 = *a2 | (*(a2 + 4) << 32);
  v4 = *a1;
  if (((v4 | (*(a1 + 4) << 32)) & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) != 0)
    {
      return 1;
    }
  }

  else if ((v3 & 0x100000000) == 0 && *&v4 == *a2)
  {
    return 1;
  }

  return 0;
}

BOOL sub_1002CED80(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = [a1 tracklist];
  v6 = [v5 *a4];

  if (v6)
  {
    swift_unknownObjectRelease();
  }

  return v6 != 0;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(any:)(Swift::OpaquePointer any)
{
  v2 = sub_1002CEF24(any._rawValue);
  if (!v2)
  {
    v10 = 0;
LABEL_11:
    LOBYTE(v2) = v10;
    return v2;
  }

  v3 = v2;
  v4 = v2[2];
  if (!v4)
  {
LABEL_7:

    v10 = 0;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
LABEL_10:
    sub_1002CF7F0(v16);
    goto LABEL_11;
  }

  v5 = 0;
  v6 = (v2 + 4);
  while (v5 < v3[2])
  {
    sub_10002EA8C(v6, &v13);
    v7 = v14;
    v8 = v15;
    sub_10000C8CC(&v13, v14);
    v9 = (*(v8 + 24))(v1, v7, v8);
    if (v9)
    {
      v11 = v9;

      sub_10002EA74(&v13, v16);
      v10 = 1;
      goto LABEL_10;
    }

    ++v5;
    LOBYTE(v2) = sub_100010474(&v13);
    v6 += 40;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return v2;
}

void *sub_1002CEF24(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_1000CC6C4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_10002EA8C(i, v10);
      sub_100009DCC(&qword_1006EAF80, &qword_100590010);
      sub_100009DCC(&qword_1006EBF00, &unk_100591420);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_10002EA74(v8, v11);
      sub_10002EA74(v11, v10);
      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000CC6C4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      sub_10002EA74(v10, &v3[5 * v6 + 4]);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1002CF7F0(v8);
    return 0;
  }

  return v3;
}

Swift::Bool __swiftcall MPCPlayerResponse.canPerform(all:)(Swift::OpaquePointer all)
{
  v2 = sub_1002CEF24(all._rawValue);
  if (v2)
  {
    v3 = v2;
    v4 = v2[2];
    if (v4)
    {
      v5 = 0;
      v6 = (v2 + 4);
      while (v5 < v3[2])
      {
        sub_10002EA8C(v6, v11);
        v7 = v12;
        v8 = v13;
        sub_10000C8CC(v11, v12);
        v9 = (*(v8 + 24))(v1, v7, v8);
        if (!v9)
        {

          sub_100010474(v11);
          LOBYTE(v2) = 0;
          return v2;
        }

        ++v5;

        LOBYTE(v2) = sub_100010474(v11);
        v6 += 40;
        if (v4 == v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      LOBYTE(v2) = 1;
    }
  }

  return v2;
}

uint64_t MPCPlayerResponse.perform(_:issuance:options:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 152) = a4;
  *(v5 + 104) = a3;
  *(v5 + 112) = v4;
  *(v5 + 88) = a1;
  *(v5 + 96) = a2;
  return _swift_task_switch(sub_1002CF1B0, 0, 0);
}

uint64_t sub_1002CF1B0()
{
  v1 = *(v0 + 88);
  sub_100009DCC(&unk_1006EAF50, &unk_1005854E0);
  inited = swift_initStackObject();
  *(v0 + 120) = inited;
  *(inited + 16) = xmmword_10057B510;
  sub_10002EA8C(v1, inited + 32);
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1002CF2A4;
  v4 = *(v0 + 104);
  v5 = *(v0 + 152);
  v6 = *(v0 + 96);

  return sub_1002CFAC0(inited, v6, v4, v5);
}

uint64_t sub_1002CF2A4(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  if (v1)
  {
    v4 = sub_1002CF4B0;
  }

  else
  {
    v5 = v3[15];
    swift_setDeallocating();
    sub_100010474((v5 + 32));
    v4 = sub_1002CF3CC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002CF3CC()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    result = sub_100574178();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100573F58();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 136) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1002CF4B0()
{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  sub_100010474((v1 + 32));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002CF520(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    result = sub_100574178();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_100573F58();
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(a1 + 32);
  }

  v6 = v5;
  v7 = [v5 error];

  if (v7)
  {
    sub_1002A858C();
    v8 = swift_allocError();
    *v9 = v7;
    v9[1] = a1;
    sub_100009DCC(&qword_1006E9B60, &qword_1005857E0);
    swift_allocError();
    *v10 = v8;

    return swift_continuation_throwingResumeWithError();
  }

LABEL_11:
  **(*(a2 + 64) + 40) = a1;

  return swift_continuation_throwingResume();
}

uint64_t sub_1002CF684(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1000D3B98(0, &qword_1006EB670, MPCPlayerCommandStatus_ptr);
  v3 = sub_100572D28();

  v2(v3);
}

id Artwork.Placeholder.background.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id MPCPlayerResponse.isPlayingItemFavorited.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 likeCommand];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 value];
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1002CF7F0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EBF08, &qword_100591320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Player.CommandIssuance(uint64_t a1)
{
  result = qword_1006EC0D0;
  if (!qword_1006EC0D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL _s9MusicCore6PlayerC13ChangeCommandO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, unint64_t a2)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return !a2;
      case 1:
        return a2 == 1;
      case 2:
        return a2 == 2;
    }

LABEL_16:
    if (a2 >= 6)
    {
      sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
      return sub_100573A58() & 1;
    }

    return 0;
  }

  if (a1 == 3)
  {
    return a2 == 3;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      return a2 == 5;
    }

    goto LABEL_16;
  }

  return a2 == 4;
}

uint64_t _s9MusicCore6PlayerC14CommandOptionsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, int a2, void *a3, uint64_t a4, int a5, void *a6)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a3)
    {
      if (a6)
      {
        sub_1000D3B98(0, &qword_1006EBF48, MPAVRoute_ptr);
        v10 = a6;
        v11 = a3;
        v12 = sub_100573A58();

        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s9MusicCore6PlayerC15CommandIssuanceV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s9MusicCore15OptimisticValueV11TransactionV2eeoiySbAEyx_G_AGtFZ_0())
  {
    v4 = *(type metadata accessor for Player.CommandIssuance(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_100574498() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1002CFAC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 352) = a4;
  *(v5 + 304) = a3;
  *(v5 + 312) = v4;
  *(v5 + 288) = a1;
  *(v5 + 296) = a2;
  return _swift_task_switch(sub_1002CFAE8, 0, 0);
}

uint64_t sub_1002CFAE8()
{
  v1 = *(v0 + 288);
  v2 = *(v1 + 16);
  v43 = v2;
  if (v2)
  {
    v3 = v1 + 32;
    v4 = &qword_1006EAF80;
    do
    {
      sub_10002EA8C(v3, v0 + 144);
      sub_10002EA8C(v0 + 144, v0 + 248);
      sub_100009DCC(v4, &qword_100590010);
      sub_100009DCC(&qword_1006EBF00, &unk_100591420);
      if (swift_dynamicCast())
      {
        v5 = *(v0 + 312);
        v6 = v4;
        v7 = *(v0 + 232);
        v8 = *(v0 + 240);
        sub_10000C8CC((v0 + 208), v7);
        v9 = v7;
        v4 = v6;
        v10 = (*(v8 + 24))(v5, v9, v8);
        sub_100010474((v0 + 144));
        sub_100010474((v0 + 208));
        if (v10)
        {
          sub_100572CE8();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100572D68();
            v4 = v6;
          }

          sub_100572DB8();
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
        sub_100010474((v0 + 144));
        sub_1002CF7F0(v0 + 208);
      }

      v3 += 40;
      --v2;
    }

    while (v2);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_29;
  }

  v11 = v43;
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) != v43)
  {
LABEL_35:

    sub_1002C9D6C();
    swift_allocError();
    v42 = v28;
    if (!v11)
    {
LABEL_50:
      *v42 = _swiftEmptyArrayStorage;
      *(v42 + 40) = 1;
      swift_willThrow();
      v37 = *(v0 + 8);

      return v37();
    }

    v29 = *(v0 + 288) + 32;
    while (1)
    {
      sub_10002EA8C(v29, v0 + 144);
      sub_10002EA8C(v0 + 144, v0 + 248);
      sub_100009DCC(&qword_1006EAF80, &qword_100590010);
      sub_100009DCC(&qword_1006EBF00, &unk_100591420);
      if (!swift_dynamicCast())
      {
        break;
      }

      v30 = *(v0 + 312);
      v31 = *(v0 + 232);
      v32 = *(v0 + 240);
      sub_10000C8CC((v0 + 208), v31);
      v33 = (*(v32 + 24))(v30, v31, v32);
      sub_100010474((v0 + 208));
      if (!v33)
      {
        goto LABEL_42;
      }

      sub_100010474((v0 + 144));
LABEL_39:
      v29 += 40;
      if (!--v43)
      {
        goto LABEL_50;
      }
    }

    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    sub_1002CF7F0(v0 + 208);
LABEL_42:
    sub_10002EA74((v0 + 144), v0 + 208);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000CC654(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v35 = _swiftEmptyArrayStorage[2];
    v34 = _swiftEmptyArrayStorage[3];
    if (v35 >= v34 >> 1)
    {
      sub_1000CC654((v34 > 1), v35 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v35 + 1;
    sub_10002EA74((v0 + 208), &_swiftEmptyArrayStorage[5 * v35 + 4]);
    goto LABEL_39;
  }

  if (v43)
  {
    do
    {
      v12 = 0;
      v39 = kMRMediaRemoteOptionRemoteControlInterfaceIdentifier;
      v40 = v11;
      v41 = kMRMediaRemoteOptionCommandID;
      while (1)
      {
        if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
        {
          v13 = sub_100573F58();
        }

        else
        {
          if (v12 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v13 = _swiftEmptyArrayStorage[v12 + 4];
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        sub_10056CAB8();
        if (v43 < 2)
        {
          v16 = 0;
          v17 = 0xE000000000000000;
        }

        else
        {
          *(v0 + 144) = v12;
          v45._countAndFlagsBits = sub_100574408();
          sub_100572A98(v45);

          v46._countAndFlagsBits = 93;
          v46._object = 0xE100000000000000;
          sub_100572A98(v46);
          v16 = 23341;
          v17 = 0xE200000000000000;
        }

        v47._countAndFlagsBits = v16;
        v47._object = v17;
        sub_100572A98(v47);

        v18 = sub_100572898();

        if (!v41)
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return _swift_continuation_await(v19);
        }

        v20 = *(v0 + 296);
        [v14 setCommandOptionValue:v18 forKey:v41];

        if (*(v20 + *(type metadata accessor for Player.CommandIssuance(0) + 20) + 8))
        {
          v19 = sub_100572898();
          if (!v39)
          {
            goto LABEL_54;
          }

          v21 = v19;
          v22 = v39;
          [v14 setCommandOptionValue:v21 forKey:v22];
        }

        ++v12;
        if (v15 == v40)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v11 = v43;
      if (sub_100574178() != v43)
      {
        goto LABEL_35;
      }

      v11 = sub_100574178();
    }

    while (v11);
  }

LABEL_31:
  v23 = *(v0 + 352);
  v24 = *(v0 + 304);
  v25 = objc_allocWithZone(MPCPlayerChangeRequest);
  sub_1000D3B98(0, &qword_1006EC108, MPCPlayerCommandRequest_ptr);
  isa = sub_100572D08().super.isa;

  v27 = [v25 initWithCommandRequests:isa];
  *(v0 + 320) = v27;

  [v27 setOptions:v24];
  if (v23 != 1)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1002D05D8;
    v36 = swift_continuation_init();
    *(v0 + 200) = sub_100009DCC(&unk_1006EB680, &unk_100589E78);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_100192078;
    *(v0 + 168) = &unk_100699270;
    *(v0 + 176) = v36;
    [v27 performWithCompletion:v0 + 144];
    v19 = v0 + 16;

    return _swift_continuation_await(v19);
  }

  return _swift_task_switch(sub_1002D029C, 0, 0);
}

uint64_t sub_1002D029C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 18;
  v4 = v0 + 10;
  v5 = v0 + 26;
  v6 = v0[40];
  v1[10] = v2;
  v1[15] = v5;
  v1[11] = sub_1002D03E4;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v1[22] = sub_1002D1230;
  v1[23] = v8;
  v1[18] = _NSConcreteStackBlock;
  v1[19] = 1107296256;
  v1[20] = sub_1002CF684;
  v1[21] = &unk_1006992C0;
  v9 = _Block_copy(v3);

  [v6 performWithExtendedStatusCompletion:v9];
  _Block_release(v9);

  return _swift_continuation_await(v4);
}

uint64_t sub_1002D03E4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 328) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1002D0574;
  }

  else
  {
    *(v2 + 336) = *(v2 + 208);
    v4 = sub_1002D0508;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002D0508()
{
  v1 = *(v0 + 336);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1002D0574()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002D05D8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1002D0754;
  }

  else
  {
    v2 = sub_1002D06E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002D06E8()
{
  v1 = *(v0 + 8);

  return v1(_swiftEmptyArrayStorage);
}

uint64_t sub_1002D0754(uint64_t a1)
{
  v2 = *(v1 + 320);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1002D07C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1002D07E4()
{
  result = qword_1006EC000;
  if (!qword_1006EC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC000);
  }

  return result;
}

unint64_t sub_1002D086C()
{
  result = qword_1006EC018;
  if (!qword_1006EC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC018);
  }

  return result;
}

unint64_t sub_1002D08F4()
{
  result = qword_1006EC030;
  if (!qword_1006EC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC030);
  }

  return result;
}

unint64_t sub_1002D094C()
{
  result = qword_1006EC038;
  if (!qword_1006EC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC038);
  }

  return result;
}

unint64_t sub_1002D09D4()
{
  result = qword_1006EC050;
  if (!qword_1006EC050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC050);
  }

  return result;
}

unint64_t sub_1002D0A5C()
{
  result = qword_1006EC068;
  if (!qword_1006EC068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC068);
  }

  return result;
}

unint64_t sub_1002D0AB4()
{
  result = qword_1006EC070;
  if (!qword_1006EC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC070);
  }

  return result;
}

uint64_t sub_1002D0B18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002D0B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1002D0BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1002D0CCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1002D0D88(uint64_t a1)
{
  sub_10056CAE8();
  if (v1 <= 0x3F)
  {
    sub_10019B158();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002D0E1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D0E74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t sub_1002D0F2C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D0F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1002D1018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1002D1060(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13VocalsCommandOwCP(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s13VocalsCommandOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13VocalsCommandOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 6) = v3;
  return result;
}

uint64_t sub_1002D1168(uint64_t a1)
{
  if (*(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002D1184(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    *(result + 5) = 1;
  }

  else
  {
    *(result + 5) = 0;
  }

  return result;
}

uint64_t sub_1002D11C8(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t SampleReceiver.waveforms()()
{
  sub_100009DCC(&qword_1006EC128, &qword_1005921E8);
  v0 = __chkstk_darwin();
  *(&v4 - v1) = 1;
  (*(v2 + 104))(&v4 - v1, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v0);
  sub_100009DCC(&qword_1006EC130, &qword_1005921F0);
  return sub_100572F88();
}

double sub_1002D13A4(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - v4;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = sub_1002D1C98();
  v9 = sub_100572F48();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v8;
  (*(v3 + 32))(&v11[v10], v5, v2);
  sub_1001B3FAC(0, 0, v7, &unk_100592370, v11);

  return result;
}

uint64_t sub_1002D1598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100009DCC(&unk_1006EC5A0, &unk_10058F898);
  v5[7] = swift_task_alloc();
  v7 = sub_10056CAE8();
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002D16A8, a4, 0);
}

uint64_t sub_1002D16A8(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[8];
  v5 = v1[9];
  v7 = v1[6];
  v6 = v1[7];
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v8 = *(v5 + 16);
  v1[13] = v8;
  v1[14] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v2, v4);
  v9 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v1[15] = v9;
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, v7, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  swift_beginAccess();
  sub_100276E74(v6, v3);
  swift_endAccess();
  sub_1002D2100();

  return _swift_task_switch(sub_1002D1818, 0, 0);
}

uint64_t sub_1002D1818()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 40);
  (*(v0 + 104))(v2, v1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  (*(v4 + 32))(v7 + v6, v2, v3);

  sub_100572F58();
  (*(v4 + 8))(v1, v3);

  v8 = *(v0 + 8);

  return v8();
}

double sub_1002D195C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10056CAE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = sub_100572F48();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = a2;
  (*(v6 + 32))(&v12[v11], &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1001B3FAC(0, 0, v9, &unk_100592388, v12);

  return result;
}

uint64_t sub_1002D1B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_100009DCC(&unk_1006EC5A0, &unk_10058F898);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1BDC, a4, 0);
}

uint64_t sub_1002D1BDC()
{
  v2 = v0[6];
  v1 = v0[7];
  swift_beginAccess();
  sub_1002C6D14(v2, v1);
  sub_10001036C(v1, &unk_1006EC5A0, &unk_10058F898);
  swift_endAccess();
  sub_1002D2100();

  v3 = v0[1];

  return v3();
}

void *sub_1002D1C98()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_1002D2964();
    v3 = *(sub_1002D28E8() + 104);

    type metadata accessor for SampleReceiver.ContinuationStorage();
    v1 = swift_allocObject();
    swift_defaultActor_initialize();
    v1[16] = _swiftEmptyDictionarySingleton;
    v1[17] = 0;
    v1[14] = v2;
    v1[15] = v3;
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1002D1D30(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_100009DCC(&unk_1006EC578, &unk_100592348);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002D1E70, v1, 0);
}

void sub_1002D1E70()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  swift_beginAccess();
  v25 = v3;
  v4 = *(v3 + 128);
  v5 = v4 + 64;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 64);
  v9 = (63 - v7) >> 6;
  v26 = v1;
  v27 = v4;
  v23 = (v2 + 8);
  v24 = (v1 + 8);

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[11];
      (*(v26 + 16))(v12, *(v27 + 56) + *(v26 + 72) * (__clz(__rbit64(v8)) | (v11 << 6)), v14);
      (*(v26 + 32))(v13, v12, v14);
      v15 = *(v25 + 136);
      if (!v15)
      {
        (*v24)(v0[13], v0[11]);
        goto LABEL_13;
      }

      v16 = v15;
      v17 = [v16 isEnabled];
      v18 = v0[13];
      v19 = v0[11];
      if ((v17 & 1) == 0)
      {
        break;
      }

      v8 &= v8 - 1;
      v20 = v0[10];
      v21 = v0[8];
      v0[5] = v0[6];

      sub_100572F68();

      (*v23)(v20, v21);
      (*v24)(v18, v19);
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    (*v24)(v0[13], v0[11]);

LABEL_14:

    v22 = v0[1];

    v22();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_13:

        goto LABEL_14;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_1002D2100()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0[16] + 16);
  if (qword_1006E4FB0 != -1)
  {
    swift_once();
  }

  v3 = sub_10056DF88();
  sub_10000C49C(v3, qword_1006EC110);

  v4 = sub_10056DF68();
  v5 = sub_100573448();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v1[16] + 16);

    _os_log_impl(&_mh_execute_header, v4, v5, "SampleReceiver continuation count %ld", v6, 0xCu);

    v7 = v1[17];
    if (v2)
    {
LABEL_5:
      if (v7)
      {
        v8 = v7;
        v9 = v7;
      }

      else
      {
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:v1[15]];
        v9 = [objc_allocWithZone(MPCProcessAudioTap) initWithRefreshRate:v14 delegate:v1[14]];

        v8 = 0;
        v7 = v1[17];
      }

      v1[17] = v9;
      v13 = v9;
      v15 = v8;
      sub_1002D240C(v7);

      [v13 setEnabled:1];
      [v13 start];
      v16 = sub_10056DF68();
      v17 = sub_100573448();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "SampleReceiver audio tap active", v18, 2u);
      }

      goto LABEL_15;
    }
  }

  else
  {

    v7 = v1[17];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  [v7 stop];
  v10 = sub_10056DF68();
  v11 = sub_100573448();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "SampleReceiver audio tap inactive", v12, 2u);
  }

  v13 = v1[17];
  v1[17] = 0;
  sub_1002D240C(v13);
LABEL_15:
}

void sub_1002D240C(void *a1)
{
  v3 = *(v1 + 136);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_11;
  }

  if (a1)
  {
    v4 = v1;
    sub_1002D411C();
    v5 = v3;
    v6 = a1;
    v7 = sub_100573A58();

    if (v7)
    {
      return;
    }

    v3 = *(v4 + 136);
    if (!v3)
    {
LABEL_11:
      v17 = qword_1006E4FB0;
      v18 = v6;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = sub_10056DF88();
      sub_10000C49C(v19, qword_1006EC110);
      v11 = v18;
      oslog = sub_10056DF68();
      v12 = sub_100573448();

      if (!os_log_type_enabled(oslog, v12))
      {
        goto LABEL_16;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v11;
      *v14 = a1;
      v15 = v11;
      v16 = "Audio tap destroyed: %@";
      goto LABEL_15;
    }
  }

  v8 = qword_1006E4FB0;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10056DF88();
  sub_10000C49C(v10, qword_1006EC110);
  v11 = v9;
  oslog = sub_10056DF68();
  v12 = sub_100573448();

  if (!os_log_type_enabled(oslog, v12))
  {
    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 138412290;
  *(v13 + 4) = v11;
  *v14 = v3;
  v15 = v11;
  v16 = "Audio tap created: %@";
LABEL_15:
  _os_log_impl(&_mh_execute_header, oslog, v12, v16, v13, 0xCu);
  sub_10001036C(v14, &qword_1006E7640, &qword_100588890);

  v11 = oslog;
  oslog = v15;
LABEL_16:
}

uint64_t sub_1002D26B8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002D2700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1002D2720, 0, 0);
}

uint64_t sub_1002D2720()
{
  v0[4] = sub_1002D1C98();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1002D27C4;
  v2 = v0[3];

  return sub_1002D1D30(v2);
}

uint64_t sub_1002D27C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002D28E8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    type metadata accessor for SampleReceiver.SampleTransformer();
    v1 = swift_allocObject();
    sub_1002D3008(48000, 15);
    *(v2 + 24) = v1;
  }

  return v1;
}

id sub_1002D2964()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = type metadata accessor for SampleReceiver.TapDelegate();
    v4 = objc_allocWithZone(v3);
    swift_weakInit();
    swift_weakAssign();
    v9.receiver = v4;
    v9.super_class = v3;
    v5 = objc_msgSendSuper2(&v9, "init");
    v6 = *(v0 + 32);
    *(v0 + 32) = v5;
    v2 = v5;

    v1 = 0;
  }

  v7 = v1;
  return v2;
}

void sub_1002D2A04(float *a1, int a2)
{
  LODWORD(v3) = a2;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v6 = &v30 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v32 = Strong;
      v8 = sub_1002D28E8();
      swift_beginAccess();
      v9 = *(v8 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 24) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1000F2418(v9);
        *(v8 + 24) = v9;
      }

      swift_beginAccess();
      v11 = *(v8 + 32);
      v12 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 32) = v11;
      if ((v12 & 1) == 0)
      {
        v11 = sub_1000F2418(v11);
        *(v8 + 32) = v11;
      }

      swift_beginAccess();
      v13 = *(v8 + 40);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 40) = v13;
      if ((v14 & 1) == 0)
      {
        v13 = sub_1000F2418(v13);
        *(v8 + 40) = v13;
      }

      swift_beginAccess();
      v15 = *(v8 + 48);
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 48) = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_1000F2418(v15);
        *(v8 + 48) = v15;
      }

      v17 = *(v8 + 72);
      __Z.realp = (v9 + 32);
      __Z.imagp = (v11 + 32);
      if (v17 >= v3)
      {
        v3 = v3;
      }

      else
      {
        v3 = v17;
      }

      v34.realp = (v13 + 32);
      v34.imagp = (v15 + 32);
      if (v17 < 0)
      {
        __break(1u);
      }

      else
      {
        if (v17)
        {
          v18 = sub_100572D98();
          v18[2] = v17;
        }

        else
        {
          v18 = _swiftEmptyArrayStorage;
        }

        __B = 0;
        v36[0] = v18 + 4;
        v36[1] = v17;
        v19 = a1;
        a1 = 0;
        sub_1002D3464(v36, &__B, v19, v3, v8);
        if (v17 >= __B)
        {
          v18[2] = __B;
          v3 = *(v8 + 80);
          swift_beginAccess();
          sub_1002D3504(v18, v3, (v8 + 16));
          swift_endAccess();

          v20 = *(v8 + 16);
          v21 = *(v20 + 16);
          if (!(v21 >> 61))
          {
            v31 = v9;
            if (v21 >= 2)
            {
              v23 = v21 >> 1;
              v22 = sub_100302B10(v21 >> 1, 0);
              memcpy(&v22[4], (v20 + 32), 8 * v23);
            }

            else
            {
              v22 = _swiftEmptyArrayStorage;
            }

            v24 = v22[2];

            vDSP_ctoz(v22 + 4, 2, &__Z, 1, v24);

            sub_10056BF88();

            v25 = sub_1002D3974(v17, v8, &v34);

            v36[0] = v25;

            sub_1002D35A4(v26, v36);

            v2 = *(v8 + 64);
            a1 = v36[0];
            v3 = *(v36[0] + 2);

            v27 = a1;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }

LABEL_31:
          __break(1u);
LABEL_32:
          v27 = sub_1000F2418(a1);
LABEL_27:
          LODWORD(__B) = v2;
          vDSP_vsmul(a1 + 8, 1, &__B, v27 + 8, 1, v3);

          *(v8 + 48) = v15;
          swift_endAccess();
          *(v8 + 40) = v13;
          swift_endAccess();
          *(v8 + 32) = v11;
          swift_endAccess();
          *(v8 + 24) = v31;
          swift_endAccess();

          v28 = sub_100572F48();
          (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
          v29 = swift_allocObject();
          v29[2] = 0;
          v29[3] = 0;
          v29[4] = v32;
          v29[5] = v27;
          sub_1001B3FAC(0, 0, v6, &unk_100592340, v29);

          return;
        }
      }

      __break(1u);
      goto LABEL_31;
    }
  }
}

id sub_1002D2FC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleReceiver.TapDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002D3008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10056BF98();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10056BF68();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  v14 = log2f(ceilf(a1 / a2));
  if ((LODWORD(v14) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v14 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= 1.8447e19)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v14 >= 0x40)
  {
    v15 = 0;
  }

  else
  {
    v15 = (1 << v14) / 2;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v32 = v7;
  if (v15)
  {
    v16 = sub_100572D98();
    v31 = v6;
    v17 = v9;
    v18 = v16;
    *(v16 + 16) = v15;
    bzero((v16 + 32), 4 * v15);
    *(v3 + 16) = v18;
    v19 = sub_100572D98();
    *(v19 + 16) = v15;
    bzero((v19 + 32), 4 * v15);
    *(v3 + 24) = v19;
    v20 = sub_100572D98();
    *(v20 + 16) = v15;
    bzero((v20 + 32), 4 * v15);
    *(v3 + 32) = v20;
    v21 = sub_100572D98();
    *(v21 + 16) = v15;
    bzero((v21 + 32), 4 * v15);
    *(v3 + 40) = v21;
    v22 = sub_100572D98();
    *(v22 + 16) = v15;
    bzero((v22 + 32), 4 * v15);
    *(v3 + 48) = v22;
    v9 = v17;
    v6 = v31;
    v23 = sub_100572D98();
    v23[2] = v15;
    bzero(v23 + 4, 4 * v15);
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    *(v3 + 16) = _swiftEmptyArrayStorage;
    *(v3 + 24) = _swiftEmptyArrayStorage;
    *(v3 + 32) = _swiftEmptyArrayStorage;
    *(v3 + 40) = _swiftEmptyArrayStorage;
    *(v3 + 48) = _swiftEmptyArrayStorage;
  }

  *(v3 + 56) = v23;
  *(v3 + 64) = 2.0 / v15;
  (*(v11 + 104))(v13, enum case for vDSP.WindowSequence.hanningDenormalized(_:), v10);
  if (!v15)
  {
    goto LABEL_18;
  }

  __chkstk_darwin();
  *(&v30 - 4) = v13;
  *(&v30 - 24) = 0;
  v28 = v15;
  v24 = sub_1002D3874(v15, sub_1002D3B58);
  v25 = sub_10025B7F4(v24);

  (*(v11 + 8))(v13, v10);
  *(v3 + 72) = v15;
  *(v3 + 80) = v25;
  (*(v32 + 104))(v9, enum case for vDSP.Radix.radix2(_:), v6);
  type metadata accessor for DSPSplitComplex(0);
  sub_100009DCC(&qword_1006EC588, &qword_100592358);
  swift_allocObject();
  v26 = sub_10056BF78();
  if (v26)
  {
    *(v3 + 88) = v26;
    return v3;
  }

LABEL_19:
  v29 = 0;
  v28 = 177;
  result = sub_1005740F8();
  __break(1u);
  return result;
}

void sub_1002D3464(void **a1, void *a2, void *__src, char *a4, uint64_t a5)
{
  v7 = 0;
  v8 = *a1;
  if (a4)
  {
    v9 = a1[1];
    if (v9)
    {
      if (v9 >= a4)
      {
        v7 = a4;
      }

      else
      {
        v7 = a1[1];
      }

      memcpy(*a1, __src, 4 * v7);
    }
  }

  if (!v8)
  {
    goto LABEL_12;
  }

  v10 = *(a5 + 72);
  v11 = __OFSUB__(v10, v7);
  v12 = v10 - v7;
  if (v11)
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    if (v12)
    {
      bzero(&v8[4 * v7], 4 * v12);
    }

LABEL_12:
    *a2 = *(a5 + 72);
    return;
  }

  __break(1u);
}

void sub_1002D3504(uint64_t a1, uint64_t a2, char **a3)
{
  v6 = *a3;
  v7 = *(*a3 + 2);
  if (*(a1 + 16) != v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2;
  if (*(a2 + 16) != v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v6 = sub_1000F2418(v6);
  }

  vDSP_vmul((v5 + 32), 1, (v4 + 32), 1, v6 + 8, 1, v7);
  *v3 = v6;
}

void sub_1002D35A4(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != *(*a2 + 2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_1000F2418(v5);
  }

  vvsqrtf(v5 + 8, (v3 + 32), &v6);
  *v2 = v5;
}

void *sub_1002D365C()
{

  return v0;
}

uint64_t sub_1002D36B4()
{
  sub_1002D365C();

  return swift_deallocClassInstance();
}

uint64_t SampleReceiver.deinit()
{

  return v0;
}

uint64_t SampleReceiver.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002D37F0()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EC110);
  sub_10000C49C(v0, qword_1006EC110);
  return sub_10056DF78();
}

uint64_t sub_1002D3874(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_100572D98();
    v5[2] = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5 + 4;
  v8 = 0;
  v7[0] = v5 + 4;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        v5[2] = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      v5[2] = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

float *sub_1002D3974(int64_t a1, uint64_t a2, DSPSplitComplex *a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1)
  {
    v6 = sub_100572D98();
    *(v6 + 2) = a1;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  v7 = *(a2 + 72);
  v9 = *a3;
  vDSP_zvmags(&v9, 1, v6 + 8, 1, a1);
  if (v7 > a1)
  {
LABEL_8:
    __break(1u);
  }

  *(v6 + 2) = v7;
  return v6;
}

uint64_t sub_1002D3A50()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002D3A98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1002D2700(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D3B58(uint64_t a1, void *a2)
{
  v4 = *(v2 + 32);
  sub_100009DCC(&qword_1006EC590, &qword_100592360);
  sub_1002D3BE0();
  result = sub_10056BF58();
  *a2 = v4;
  return result;
}

unint64_t sub_1002D3BE0()
{
  result = qword_1006EC598;
  if (!qword_1006EC598)
  {
    sub_100010324(&qword_1006EC590, &qword_100592360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC598);
  }

  return result;
}

uint64_t sub_1002D3C44()
{
  v1 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D3D1C(uint64_t a1)
{
  v4 = *(sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1002D1598(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D3E20()
{
  v1 = sub_10056CAE8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_1002D3EE4(uint64_t a1)
{
  v3 = *(sub_10056CAE8() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1002D195C(a1, v4, v5);
}

uint64_t sub_1002D3F58()
{
  v1 = sub_10056CAE8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D4024(uint64_t a1)
{
  v4 = *(sub_10056CAE8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000116F0;

  return sub_1002D1B3C(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1002D411C()
{
  result = qword_1006EC5B0;
  if (!qword_1006EC5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EC5B0);
  }

  return result;
}

uint64_t SequentialVocalCommandsFilter.__allocating_init(playbackController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 124) = 0;
  *(v2 + 120) = 0;
  *(v2 + 126) = 1;
  *(v2 + 132) = 0;
  *(v2 + 128) = 0;
  *(v2 + 134) = 1;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t SequentialVocalCommandsFilter.init(playbackController:)(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 124) = 0;
  *(v2 + 120) = 0;
  *(v2 + 126) = 1;
  *(v2 + 132) = 0;
  *(v2 + 128) = 0;
  *(v2 + 134) = 1;
  *(v2 + 112) = a1;
  return v2;
}

void SequentialVocalCommandsFilter.append(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1006E4FB8 != -1)
  {
    swift_once();
  }

  v4 = a1 & 0xFFFFFFFFFFLL;
  v5 = a1 & 0x10000000000;
  v6 = sub_10056DF88();
  sub_10000C49C(v6, qword_1006EC5C0);
  v7 = sub_10056DF68();
  v8 = sub_100573448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v45[0] = v10;
    *v9 = 136446210;
    LOBYTE(v44) = v5 != 0;
    v11 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v13 = sub_1000C9784(v11, v12, v45);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "↪️ Queuing %{public}s", v9, 0xCu);
    sub_100010474(v10);

    v4 = a1 & 0xFFFFFFFFFFLL;
    v5 = a1 & 0x10000000000;
  }

  if (*(v1 + 134))
  {
    goto LABEL_6;
  }

  v22 = *(v1 + 128) | (*(v1 + 132) << 32);
  if (v5)
  {
    if ((v22 & 0x10000000000) != 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v22 & 0x10000000000) == 0)
  {
    if ((v4 & 0x100000000) != 0)
    {
      if ((v22 & 0x100000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((v22 & 0x100000000) != 0 || *&a1 != *(v1 + 128))
    {
      goto LABEL_6;
    }

LABEL_14:
    oslog = sub_10056DF68();
    v23 = sub_100573448();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136446210;
      LOBYTE(v44) = v5 != 0;
      v26 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
      v28 = sub_1000C9784(v26, v27, v45);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, oslog, v23, "↪️❌ Ignored %{public}s; already executing.", v24, 0xCu);
      sub_100010474(v25);
    }

    else
    {
    }

    return;
  }

LABEL_6:
  swift_beginAccess();
  if ((*(v1 + 126) & 1) == 0)
  {
    v14 = *(v1 + 120) | (*(v1 + 124) << 32);
    if ((v14 & 0x10000000000) != 0)
    {
      if (v5)
      {
        goto LABEL_9;
      }
    }

    else if (!v5)
    {
      if ((v14 & 0x100000000) != 0)
      {
        if ((v4 & 0x100000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else if ((v4 & 0x100000000) == 0 && *(v1 + 120) == *&a1)
      {
LABEL_9:
        v15 = sub_10056DF68();
        v16 = sub_100573448();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v44 = v18;
          *v17 = 136446210;
          v19 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
          v21 = sub_1000C9784(v19, v20, &v44);

          *(v17 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v15, v16, "↪️❌ Ignored %{public}s; Already enqueued.", v17, 0xCu);
          sub_100010474(v18);
        }

        return;
      }
    }

    v29 = sub_10056DF68();
    v30 = sub_100573448();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136446210;
      v33 = Player.VocalsCommand.description.getter(v14 & 0xFFFFFFFFFFLL | (((v14 >> 40) & 1) << 40));
      v35 = sub_1000C9784(v33, v34, &v44);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "↪️🫳 Dropping queued command %{public}s", v31, 0xCu);
      sub_100010474(v32);
    }
  }

  v36 = sub_10056DF68();
  v37 = sub_100573448();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44 = v39;
    *v38 = 136446210;
    v40 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | ((v5 != 0) << 40));
    v42 = sub_1000C9784(v40, v41, &v44);

    *(v38 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v36, v37, "↪️✅ Queued %{public}s", v38, 0xCu);
    sub_100010474(v39);
  }

  *(v2 + 120) = a1 | v5;
  *(v2 + 124) = (a1 & 0xFFFFFFFFFFLL | v5) >> 32;
  *(v2 + 126) = 0;
  sub_1002D4AF8();
}

double sub_1002D4838(unint64_t a1)
{
  if ((*(v1 + 134) & 1) == 0)
  {
    v12 = *(v1 + 128) | (*(v1 + 132) << 32);
    swift_beginAccess();
    if ((*(v1 + 126) & 1) == 0)
    {
      v13 = *(v1 + 120) | (*(v1 + 124) << 32);
      if ((v12 & 0x10000000000) == 0)
      {
        if ((v13 & 0x10000000000) != 0)
        {
          goto LABEL_17;
        }

        if ((v12 & 0x100000000) != 0)
        {
          if ((v13 & 0x100000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v13 & 0x100000000) != 0 || *&v12 != *(v1 + 120))
        {
          goto LABEL_17;
        }

        goto LABEL_10;
      }

      if ((v13 & 0x10000000000) != 0)
      {
LABEL_10:
        *(v1 + 124) = 0;
        *(v1 + 120) = 0;
        *(v1 + 126) = 1;
        sub_1002D4AF8();
      }
    }

LABEL_17:
    if (qword_1006E4FB8 != -1)
    {
      swift_once();
    }

    v14 = sub_10056DF88();
    sub_10000C49C(v14, qword_1006EC5C0);
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    v15 = Player.VocalsCommand.description.getter(v12 & 0xFFFFFFFFFFLL | (((v12 >> 40) & 1) << 40));
    v17 = sub_1000C9784(v15, v16, &v19);

    *(v6 + 4) = v17;
    v11 = "▶️ Executing %{public}s";
    goto LABEL_21;
  }

  if ((a1 & 0x1000000000000) == 0)
  {
    if (qword_1006E4FB8 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006EC5C0);
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136446210;
    v8 = Player.VocalsCommand.description.getter(a1 & 0xFFFFFFFFFFLL | (((a1 >> 40) & 1) << 40));
    v10 = sub_1000C9784(v8, v9, v20);

    *(v6 + 4) = v10;
    v11 = "✅ Finished executing %{public}s";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v4, v5, v11, v6, 0xCu);
    sub_100010474(v7);

LABEL_22:
  }

  return sub_1002D4AF8();
}

double sub_1002D4AF8()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  *&result = __chkstk_darwin().n128_u64[0];
  v4 = &v22 - v3;
  if (*(v0 + 134) == 1)
  {
    swift_beginAccess();
    if ((*(v0 + 126) & 1) == 0)
    {
      v5 = *(v0 + 120) | (*(v0 + 124) << 32);
      v6 = v5 & 0xFFFFFFFFFFLL;
      if (qword_1006E4FB8 != -1)
      {
        swift_once();
      }

      v7 = sub_10056DF88();
      sub_10000C49C(v7, qword_1006EC5C0);
      v8 = sub_10056DF68();
      v9 = sub_100573448();
      v10 = (v5 >> 40) & 1;
      if (os_log_type_enabled(v8, v9))
      {
        v11 = swift_slowAlloc();
        v22 = v5 & 0xFFFFFFFFFFLL;
        v12 = v11;
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 136446210;
        v14 = Player.VocalsCommand.description.getter(v5 & 0xFFFFFFFFFFLL | (v10 << 40));
        v16 = sub_1000C9784(v14, v15, &v23);

        *(v12 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v8, v9, "↪️ Dequeuing %{public}s", v12, 0xCu);
        sub_100010474(v13);

        v6 = v22;
      }

      v17 = *(v1 + 128) | (*(v1 + 132) << 32);
      v18 = *(v1 + 134);
      *(v1 + 128) = v5;
      *(v1 + 132) = WORD2(v5) & 0x1FF;
      *(v1 + 134) = 0;
      LOBYTE(v23) = v18;
      sub_1002D4838(v17 | (v18 << 48));
      v19 = sub_100572F48();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
      v20 = sub_1002D5670();
      v21 = swift_allocObject();
      *(v21 + 16) = v1;
      *(v21 + 24) = v20;
      *(v21 + 32) = v1;
      *(v21 + 44) = BYTE4(v6);
      *(v21 + 40) = v6;
      *(v21 + 45) = v10;
      swift_retain_n();
      sub_1001B3FAC(0, 0, v4, &unk_100592420, v21);
    }
  }

  return result;
}

uint64_t sub_1002D4DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return _swift_task_switch(sub_1002D4DEC, a4, 0);
}

uint64_t sub_1002D4DEC()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = *(*(v0 + 96) + 112);
  *(v0 + 40) = &type metadata for Player.VocalsCommand;
  *(v0 + 48) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 16) = v1;
  *(v0 + 20) = BYTE4(v1);
  *(v0 + 21) = BYTE5(v1) & 1;
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = 0x726564696C534156;
  *(v0 + 64) = 0xE800000000000000;
  *(v0 + 120) = sub_100572F08();
  *(v0 + 128) = sub_100572EF8();
  v3 = sub_100572E78();
  *(v0 + 136) = v3;
  *(v0 + 144) = v2;

  return _swift_task_switch(sub_1002D4EE4, v3, v2);
}

uint64_t sub_1002D4EE4()
{
  sub_100009DCC(&unk_1006EAF50, &unk_1005854E0);
  v1 = swift_allocObject();
  v0[19] = v1;
  *(v1 + 16) = xmmword_10057B510;
  sub_10002EA8C((v0 + 2), v1 + 32);
  v0[20] = sub_100572EF8();
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_1002D4FD8;

  return sub_10029AD70(v1, 0x10000, 1, 0, 0, (v0 + 7));
}

uint64_t sub_1002D4FD8(uint64_t a1)
{
  *(*v2 + 176) = a1;

  if (v1)
  {

    v3 = sub_100572E78();
    v5 = v4;
    v6 = sub_1002D52B4;
  }

  else
  {
    v3 = sub_100572E78();
    v5 = v7;
    v6 = sub_1002D5160;
  }

  return _swift_task_switch(v6, v3, v5);
}

uint64_t sub_1002D5160()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1002D51CC, v1, v2);
}

uint64_t sub_1002D51CC()
{
  v1 = v0[22];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!sub_100574178())
      {
        goto LABEL_9;
      }
    }

    sub_100573F58();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  v2 = v0[12];
  sub_1002D57E0((v0 + 7));
  sub_100010474(v0 + 2);

  return _swift_task_switch(sub_1002D5424, v2, 0);
}

uint64_t sub_1002D52B4()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1002D5318, v1, v2);
}

uint64_t sub_1002D5318()
{
  v1 = *(v0 + 96);

  return _swift_task_switch(sub_1002D5384, v1, 0);
}

uint64_t sub_1002D5384()
{
  sub_1002D57E0((v0 + 7));
  sub_100010474(v0 + 2);
  v1 = v0[12];
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  v4.n128_f64[0] = sub_1002D4838(v2 | (v3 << 48));
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1002D5424()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 128) | (*(v1 + 132) << 32);
  v3 = *(v1 + 134);
  *(v1 + 128) = 0;
  *(v1 + 132) = 0;
  *(v1 + 134) = 1;
  v4.n128_f64[0] = sub_1002D4838(v2 | (v3 << 48));
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t SequentialVocalCommandsFilter.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002D5514()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EC5C0);
  sub_10000C49C(v0, qword_1006EC5C0);
  return sub_10056DF78();
}

uint64_t sub_1002D5594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  v6 = *(v3 + 126);
  *(a2 + 4) = *(v3 + 124);
  *a2 = v5;
  *(a2 + 6) = v6;
  return result;
}

double sub_1002D55EC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 6);
  v5 = *a2;
  swift_beginAccess();
  *(v5 + 124) = v3;
  *(v5 + 120) = v2;
  *(v5 + 126) = v4;
  return sub_1002D4AF8();
}

unint64_t sub_1002D5670()
{
  result = qword_1006EC6D0;
  if (!qword_1006EC6D0)
  {
    type metadata accessor for SequentialVocalCommandsFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC6D0);
  }

  return result;
}

uint64_t sub_1002D56C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002D5704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40) | (*(v1 + 44) << 32) | (*(v1 + 45) << 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000CB98;

  return sub_1002D4DCC(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D57E0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E6B78, &unk_100592430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()
{
  if (qword_1006E4FC0 != -1)
  {
    swift_once();
  }

  return &static PlaylistCovers.ArtworkDataSource.shared;
}

__n128 PlaylistCovers.Recipe.init(_:)@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  v5 = sub_1002D7D48(a2, a3);
  v7 = v6;
  sub_10056C298();
  swift_allocObject();
  sub_10056C288();
  sub_1002D98EC();
  sub_10056C278();

  sub_10008246C(v5, v7);
  if (!v3)
  {
    *(a1 + 64) = v13;
    *(a1 + 80) = v14;
    *(a1 + 96) = v15;
    *a1 = v9;
    *(a1 + 16) = v10;
    result = v12;
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
  }

  return result;
}

void PlaylistCovers.Recipe.asCoverRepresentation(_:)(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v7 = *v3 == 3157553 && v3[1] == 0xE300000000000000;
  if (v7 || (sub_100574498() & 1) != 0)
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = v3[7];
    v11 = v3[8];
    v12 = v3[9];
    v13 = v3[10];
    v14 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v3[3], v3[4]);
    if (!v14)
    {
      v19 = 0;
      v20 = 0;
      goto LABEL_14;
    }

    v15 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v8, v9);
    if (!v15)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      goto LABEL_16;
    }

    v16 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v10, v11);
    if (!v16)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }

    v17 = _s9MusicCore14PlaylistCoversO5color4fromSo7UIColorCSgSS_tFZ_0(v12, v13);
    if (!v17)
    {

      v19 = 0;
      v20 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      goto LABEL_18;
    }

    v18 = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(v3[2]);
    if (v18 != 8)
    {
      v22 = v18;
      sub_1002D9940();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v29 = v14;
      v27 = v15;
      v24 = v16;
      v28 = v17;
      v25 = [ObjCClassFromMetadata preferredFormat];
      v20 = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v29, v27, v24, v28, v25, v22, a2, a3);
      v21 = v26;

      v19 = v22;
      goto LABEL_19;
    }
  }

  v19 = 0;
  v20 = 0;
  v14 = 0;
LABEL_14:
  v15 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v17 = 0;
LABEL_18:
  v21 = 0;
LABEL_19:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v21;
}

id PlaylistCovers.ArtworkToken.__allocating_init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v9 = *(a1 + 16);
  *v8 = *a1;
  *(v8 + 1) = v9;
  *(v8 + 2) = *(a1 + 32);
  *(v8 + 6) = *(a1 + 48);
  v10 = &v7[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v10 = a2;
  *(v10 + 1) = a3;
  v12.receiver = v7;
  v12.super_class = v3;
  return objc_msgSendSuper2(&v12, "init");
}

id PlaylistCovers.ArtworkToken.init(coverRepresentation:playlistTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 6) = *(a1 + 48);
  v6 = &v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v6 = a2;
  *(v6 + 1) = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for PlaylistCovers.ArtworkToken();
  return objc_msgSendSuper2(&v8, "init");
}

void *PlaylistCovers.ArtworkToken.copy(with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v3 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8);
  v4 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v5 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24);
  v6 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v7 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40);
  v8 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  v10 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v9 = *(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);
  v11 = type metadata accessor for PlaylistCovers.ArtworkToken();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
  *v13 = v2;
  *(v13 + 1) = v3;
  *(v13 + 2) = v4;
  *(v13 + 3) = v5;
  *(v13 + 4) = v6;
  *(v13 + 5) = v7;
  *(v13 + 6) = v8;
  v14 = &v12[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  *v14 = v10;
  *(v14 + 1) = v9;
  v23.receiver = v12;
  v23.super_class = v11;
  v15 = v3;
  v16 = v4;
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v20 = v8;

  result = objc_msgSendSuper2(&v23, "init");
  a1[3] = v11;
  *a1 = result;
  return result;
}

Swift::String_optional __swiftcall PlaylistCovers.ArtworkToken.stringRepresentation()()
{
  v1 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v14[0] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v14[1] = v1;
  v14[2] = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v15 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_1002D99B0(v14, &v12);
  v2 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v4 = v3;
  sub_1002D9A0C(v14);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_100573ED8(19);

  v12 = 0xD000000000000011;
  v13 = 0x80000001005B4A90;
  v5 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v6 = *(v0 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8);

  v16._countAndFlagsBits = v5;
  v16._object = v6;
  sub_100572A98(v16);

  v7 = v12;
  v8 = v13;
  v12 = v2;
  v13 = v4;

  v17._countAndFlagsBits = v7;
  v17._object = v8;
  sub_100572A98(v17);

  v9 = v12;
  v10 = v13;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

id sub_1002D6094()
{
  result = [objc_allocWithZone(type metadata accessor for PlaylistCovers.ArtworkDataSource()) init];
  static PlaylistCovers.ArtworkDataSource.shared = result;
  return result;
}

id static PlaylistCovers.ArtworkDataSource.shared.getter()
{
  if (qword_1006E4FC0 != -1)
  {
    swift_once();
  }

  v1 = static PlaylistCovers.ArtworkDataSource.shared;

  return v1;
}

id PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(void *a1)
{
  v3 = [a1 token];
  sub_100573D58();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    [a1 fittingSize];
    v6 = sub_1002D9A60(v10, v4, v5);
    if (v6)
    {
      v7 = v6;
      v8 = [*(v1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) objectForKey:v6];

      return v8;
    }
  }

  return 0;
}

uint64_t PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  sub_10056CC38();
  v2[27] = swift_task_alloc();
  v3 = sub_100572888();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1002D636C, 0, 0);
}

uint64_t sub_1002D636C()
{
  v1 = [*(v0 + 200) token];
  sub_100573D58();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (!swift_dynamicCast())
  {
    v10 = *(v0 + 200);
    sub_100573ED8(58);
    *(v0 + 176) = 0;
    *(v0 + 184) = 0xE000000000000000;
    v71._countAndFlagsBits = 0x206E656B6F54;
    v71._object = 0xE600000000000000;
    sub_100572A98(v71);
    v11 = [v10 token];
    sub_100573D58();
    swift_unknownObjectRelease();
    sub_100574098();
    sub_100010474((v0 + 144));
    v72._object = 0x80000001005B4AD0;
    v72._countAndFlagsBits = 0xD000000000000032;
    sub_100572A98(v72);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    sub_1002D9C40();
    swift_allocError();
    *v14 = v12;
    v14[1] = v13;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v2 = *(v0 + 200);
  v3 = *(v0 + 192);
  [v2 fittingSize];
  v5 = v4;
  v7 = v6;
  v8 = PlaylistCovers.ArtworkDataSource.existingRepresentation(for:)(v2);
  if (v8)
  {
    v9 = v8;
LABEL_4:

    goto LABEL_28;
  }

  aBlock = (v0 + 16);
  v69 = v3;
  v17 = *(v0 + 200);
  v18 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 8];
  v19 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16];
  v20 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 24];
  v21 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32];
  v23 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 40];
  v22 = *&v3[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48];
  sub_1002D9940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v67 = v18;
  v63 = v19;
  v64 = v20;
  v65 = v21;
  v66 = v23;
  v25 = v22;
  v26 = [ObjCClassFromMetadata preferredFormat];
  [v17 destinationScale];
  [v26 setScale:?];
  [v17 fittingSize];
  v28 = v27;
  v30 = v29;
  v32 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
  v31 = *&v69[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle + 8];

  v33 = String.trim()();

  v34 = (v33._object >> 56) & 0xF;
  if ((v33._object & 0x2000000000000000) == 0)
  {
    v34 = v33._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    goto LABEL_13;
  }

  v36 = *(v0 + 240);
  v35 = *(v0 + 248);
  v38 = *(v0 + 224);
  v37 = *(v0 + 232);

  sub_100572818();
  (*(v37 + 16))(v36, v35, v38);
  if (qword_1006E4C60 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v39 = *(v0 + 248);
    v41 = *(v0 + 224);
    v40 = *(v0 + 232);
    v42 = qword_1006FC3B8;
    sub_10056CBC8();
    v32 = sub_100572948();
    v31 = v43;
    (*(v40 + 8))(v39, v41);
LABEL_13:

    v44 = sub_100572898();

    v45 = [v44 _containsEmoji];

    v46 = 270.0;
    if (v28 > 270.0)
    {
      v46 = v28;
    }

    if (v45)
    {
      v47 = v46;
    }

    else
    {
      v47 = v28;
    }

    if (v45)
    {
      v48 = v46;
    }

    else
    {
      v48 = v30;
    }

    v49 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v26 format:{v47, v48}];
    v50 = swift_allocObject();
    *(v50 + 16) = v47;
    *(v50 + 24) = v48;
    *(v50 + 32) = v67;
    *(v50 + 40) = v26;
    *(v50 + 48) = v32;
    *(v50 + 56) = v31;
    *(v50 + 64) = v25;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1002D9CE4;
    *(v51 + 24) = v50;
    *(v0 + 48) = sub_1001DA9E4;
    *(v0 + 56) = v51;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1001D65E4;
    *(v0 + 40) = &unk_100699410;
    v52 = _Block_copy(aBlock);
    v67 = v67;
    aBlock = v26;
    v26 = v25;

    v53 = v49;
    v25 = [v49 imageWithActions:v52];
    _Block_release(v52);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
      goto LABEL_33;
    }

    v73.width = v47;
    v73.height = v48;
    v74.width = v28;
    v74.height = v30;
    if (CGSizeEqualToSize(v73, v74))
    {

      goto LABEL_26;
    }

    v62 = v26;
    v54 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:aBlock format:{v28, v30}];
    v55 = swift_allocObject();
    *(v55 + 16) = v25;
    *(v55 + 24) = v28;
    *(v55 + 32) = v30;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1002D9D58;
    *(v56 + 24) = v55;
    *(v0 + 96) = sub_1001DB898;
    *(v0 + 104) = v56;
    *(v0 + 64) = _NSConcreteStackBlock;
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_1001D65E4;
    *(v0 + 88) = &unk_100699488;
    v57 = _Block_copy((v0 + 64));
    v26 = *(v0 + 104);
    v58 = v25;

    v25 = [v54 imageWithActions:v57];

    _Block_release(v57);
    LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

    if ((v58 & 1) == 0)
    {
      break;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v26 = v62;
LABEL_26:
  v3 = v69;
  v9 = [objc_opt_self() representationForVisualIdentity:v69 withSize:v25 image:{v5, v7}];
  v59 = sub_1002D9A60(v69, v5, v7);
  if (!v59)
  {

    goto LABEL_4;
  }

  v60 = v59;
  [*(*(v0 + 208) + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache) setObject:v9 forKey:v59];

LABEL_28:

  v61 = *(v0 + 8);

  return v61(v9);
}

uint64_t sub_1002D6DB4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1002D6E78;

  return PlaylistCovers.ArtworkDataSource.loadRepresentation(for:)(v6);
}

uint64_t sub_1002D6E78(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_10056C718();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t PlaylistCovers.ArtworkDataSource.visualIdenticalityIdentifier(for:)(void *a1)
{
  v1 = [a1 token];
  sub_100573D58();
  swift_unknownObjectRelease();
  type metadata accessor for PlaylistCovers.ArtworkToken();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id PlaylistCovers.ArtworkDataSource.init()()
{
  v1 = OBJC_IVAR____TtCO9MusicCore14PlaylistCovers17ArtworkDataSource_cache;
  *&v0[v1] = [objc_allocWithZone(NSCache) init];
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PlaylistCovers.ArtworkDataSource();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1002D722C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t PlaylistCovers.Recipe.textColor.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t PlaylistCovers.Recipe.textColor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t SharedListening.Reaction.senderID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SharedListening.Reaction.senderID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_1002D7394@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002D9E4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002D73BC(uint64_t a1)
{
  v2 = sub_1002D9DF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D73F8(uint64_t a1)
{
  v2 = sub_1002D9DF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.HexColors.encode(to:)(void *a1)
{
  v3 = sub_100009DCC(&qword_1006EC710, &qword_100592448);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8[-v5];
  sub_10000C8CC(a1, a1[3]);
  sub_1002D9DF8();
  sub_100574718();
  v8[15] = 0;
  sub_100574328();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100574328();
  v8[13] = 2;
  sub_100574328();
  v8[12] = 3;
  sub_100574328();
  return (*(v4 + 8))(v6, v3);
}

double PlaylistCovers.Recipe.HexColors.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1002D9FA0(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1002D7654(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v8) & 1;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PlaylistCovers.Recipe.rawJSONRepresentation()()
{
  sub_100572928();
  __chkstk_darwin();
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056C2C8();
  swift_allocObject();
  sub_10056C2B8();
  v5 = *(v0 + 80);
  v15[4] = *(v0 + 64);
  v15[5] = v5;
  v16 = *(v0 + 96);
  v6 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v6;
  v7 = *(v0 + 48);
  v15[2] = *(v0 + 32);
  v15[3] = v7;
  sub_1002DA294();
  v8 = sub_10056C2A8();
  if (v1)
  {
  }

  else
  {
    v10 = v8;
    v11 = v9;
    sub_100572918();
    v12 = sub_1005728F8();
    if (!v13)
    {
      __break(1u);
      goto LABEL_7;
    }

    v4 = v12;
    v2 = v13;
    sub_10008246C(v10, v11);
  }

  v12 = v4;
  v13 = v2;
LABEL_7:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_1002D77E0()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x666E49726F6C6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F6C6F4374786574;
  }

  if (*v0)
  {
    v1 = 0x6973736572707865;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002D7868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1002DA3C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002D7890(uint64_t a1)
{
  v2 = sub_1002DA2E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002D78CC(uint64_t a1)
{
  v2 = sub_1002DA2E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PlaylistCovers.Recipe.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006EC728, &qword_100592450);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v13[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_1002DA2E8();
  sub_100574718();
  LOBYTE(v16) = 0;
  sub_100574328();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_100574358();
    v10 = *(v3 + 24);
    v11 = *(v3 + 56);
    v20[1] = *(v3 + 40);
    v20[2] = v11;
    v20[3] = *(v3 + 72);
    v12 = *(v3 + 40);
    v16 = *(v3 + 24);
    v17 = v12;
    v18 = *(v3 + 56);
    v19 = *(v3 + 72);
    v20[0] = v10;
    v15 = 2;
    sub_1002D9D88(v20, v14);
    sub_1002DA33C();
    sub_100574368();
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_1002DA390(v14);
    v13[15] = 3;
    sub_100574328();
  }

  return (*(v6 + 8))(v8, v5);
}

__n128 PlaylistCovers.Recipe.init(from:)@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1002DA534(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1002D7C24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

void PlaylistCovers.Recipe.HexColors.init(from:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v21 = v11;
  v22 = v10;
  v20 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v14 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  v17 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v19 = v18;

  *a5 = v22;
  a5[1] = v21;
  a5[2] = v20;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
}

uint64_t sub_1002D7D48(uint64_t a1, unint64_t a2)
{
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_100009DCC(&qword_1006EC8A0, &qword_1005928F8);
  if (swift_dynamicCast())
  {
    sub_10002EA74(__src, &v43);
    sub_10000C8CC(&v43, v44);
    sub_10056C578();
    __src[0] = v42;
    sub_100010474(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_10001036C(__src, &qword_1006EC8A8, &qword_100592900);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_100573F98();
  }

  sub_1002D88B4(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1002D9244(v8);
  *(&__src[0] + 1) = v9;
  __chkstk_darwin();
  v34[2] = v39;
  sub_1002D897C(sub_1002DB110, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_10056C8E8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1002D8838(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_100572AB8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_100572AE8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_100573F98();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1002D8838(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_100572AC8();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_10056C8F8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_10056C8F8();
    sub_1000A79FC(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1000A79FC(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1000F54C8(*&__src[0], *(&__src[0] + 1));

  sub_10008246C(v32, *(&v32 + 1));
  return v32;
}

uint64_t PlaylistCovers.Recipe.init(from:)@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v29 = *a1 + 1;
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v12;
  v28 = v11;
  v13 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v25 = v14;
  v26 = v13;
  v15 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v17 = v16;
  v18 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v20 = v19;

  v21 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v23 = v22;
  result = sub_1002D9A0C(a1);
  *a2 = 3157553;
  a2[1] = 0xE300000000000000;
  a2[2] = v29;
  a2[3] = v28;
  a2[4] = v27;
  a2[5] = v26;
  a2[6] = v25;
  a2[7] = v15;
  a2[8] = v17;
  a2[9] = v18;
  a2[10] = v20;
  a2[11] = v21;
  a2[12] = v23;
  return result;
}

uint64_t sub_1002D837C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000116F0;

  return v6();
}

uint64_t sub_1002D8464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10000CB98;

  return v7();
}

uint64_t sub_1002D854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v10 = v22 - v9;
  sub_1000D8700(a3, v22 - v9);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10001036C(v10, &qword_1006E6420, &qword_100586E50);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100572F38();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_100572E78();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1005729C8() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);

    return v20;
  }

LABEL_8:
  sub_10001036C(a3, &qword_1006E6420, &qword_100586E50);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_1002D8838(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100572B08();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_100572AD8();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t *sub_1002D88B4@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1002D918C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_10056C4D8();
      swift_allocObject();
      v8 = sub_10056C488();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_10056C8D8();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1002D897C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_10008246C(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_100582540;
    sub_10008246C(0, 0xC000000000000000);
    sub_10056C8B8();
    sub_1002D8E20(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_10008246C(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_10008246C(v7, v6);
  *v4 = xmmword_100582540;
  sub_10008246C(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_10056C498() && __OFSUB__(v7, sub_10056C4C8()))
    {
LABEL_22:
      __break(1u);
    }

    sub_10056C4D8();
    swift_allocObject();
    v13 = sub_10056C478();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1002D8E20(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

_BYTE *sub_1002D8D20@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1002D918C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1002D92E4(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1002D9360(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1002D8DB4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1002D8E20(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_10056C498();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_10056C4C8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_10056C4B8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1002D8ED4@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_100573EE8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV9HexColorsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_100574498() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return sub_100574498();
}

uint64_t _s9MusicCore14PlaylistCoversO6RecipeV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if (a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v14 = a2[10];
  v15 = a2[9];
  if ((a1[3] != a2[3] || a1[4] != a2[4]) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if ((v5 != v9 || v6 != v10) && (sub_100574498() & 1) == 0 || (v7 != v11 || v8 != v12) && (sub_100574498() & 1) == 0 || (v17 != v15 || v16 != v14) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  if (a1[11] == a2[11] && a1[12] == a2[12])
  {
    return 1;
  }

  return sub_100574498();
}

uint64_t sub_1002D918C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1002D9244(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_10056C4D8();
      swift_allocObject();
      sub_10056C4A8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10056C8D8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1002D92E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10056C4D8();
  swift_allocObject();
  result = sub_10056C488();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10056C8D8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1002D9360(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_10056C4D8();
  swift_allocObject();
  result = sub_10056C488();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id _s9MusicCore14PlaylistCoversO12ArtworkTokenC7rawJSON13playlistTitleAESgSS_SStcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_1002D7D48(a1, a2);
  v10 = v9;
  sub_10056C298();
  swift_allocObject();
  sub_10056C288();
  sub_1002D98EC();
  sub_10056C278();

  sub_10008246C(v8, v10);
  v30[4] = v24;
  v30[5] = v25;
  v31 = v26;
  v30[0] = v20;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v23;
  PlaylistCovers.Recipe.asCoverRepresentation(_:)(&v20, 180.0, 180.0);
  sub_1002DB0E0(v30);
  v11 = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v12 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v13 = type metadata accessor for PlaylistCovers.ArtworkToken();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation];
    *v15 = v12;
    *(v15 + 1) = v11;
    v16 = v28;
    *(v15 + 1) = v27;
    *(v15 + 2) = v16;
    *(v15 + 6) = v29;
    v17 = &v14[OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle];
    *v17 = a3;
    *(v17 + 1) = a4;
    v19.receiver = v14;
    v19.super_class = v13;
    return objc_msgSendSuper2(&v19, "init");
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1002D98EC()
{
  result = qword_1006EC6E0;
  if (!qword_1006EC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC6E0);
  }

  return result;
}

unint64_t sub_1002D9940()
{
  result = qword_1006EC6E8;
  if (!qword_1006EC6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006EC6E8);
  }

  return result;
}

id sub_1002D9A60(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 16);
  v23[0] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation);
  v23[1] = v4;
  v23[2] = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 32);
  v24 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_coverRepresentation + 48);
  sub_1002D99B0(v23, &v21);
  v5 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v7 = v6;
  sub_1002D9A0C(v23);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_100573ED8(19);

  v21 = 0xD000000000000011;
  v22 = 0x80000001005B4A90;
  v8 = a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle;
  v9 = *(a1 + OBJC_IVAR____TtCO9MusicCore14PlaylistCovers12ArtworkToken_playlistTitle);
  v10 = *(v8 + 8);

  v25._countAndFlagsBits = v9;
  v25._object = v10;
  sub_100572A98(v25);

  v11 = v21;
  v12 = v22;
  v21 = v5;
  v22 = v7;

  v26._countAndFlagsBits = v11;
  v26._object = v12;
  sub_100572A98(v26);

  v14 = v21;
  v13 = v22;
  v21 = 0x203A657A6973202CLL;
  v22 = 0xE800000000000000;
  v27._countAndFlagsBits = sub_1005738B8();
  sub_100572A98(v27);

  v15 = v21;
  v16 = v22;
  v21 = v14;
  v22 = v13;

  v28._countAndFlagsBits = v15;
  v28._object = v16;
  sub_100572A98(v28);

  v17 = objc_allocWithZone(NSString);
  v18 = sub_100572898();

  v19 = [v17 initWithString:v18];

  return v19;
}

unint64_t sub_1002D9C40()
{
  result = qword_1006EC708;
  if (!qword_1006EC708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC708);
  }

  return result;
}

uint64_t sub_1002D9C94()
{

  return swift_deallocObject();
}

uint64_t sub_1002D9D08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002D9D20()
{

  return swift_deallocObject();
}

unint64_t sub_1002D9DF8()
{
  result = qword_1006EC718;
  if (!qword_1006EC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC718);
  }

  return result;
}

uint64_t sub_1002D9E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x31726F6C6F63 && a2 == 0xE600000000000000;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x32726F6C6F63 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x33726F6C6F63 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x34726F6C6F63 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1002D9FA0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006EC898, &qword_1005928F0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_1002D9DF8();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_100574298();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_100574298();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_100574298();
  v25 = v13;
  v33 = 3;
  v14 = sub_100574298();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  sub_1002D9D88(&v28, v32);
  sub_100010474(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  result = sub_1002DA390(v32);
  v21 = v29;
  *a2 = v28;
  a2[1] = v21;
  v22 = v31;
  a2[2] = v30;
  a2[3] = v22;
  return result;
}

unint64_t sub_1002DA294()
{
  result = qword_1006EC720;
  if (!qword_1006EC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC720);
  }

  return result;
}

unint64_t sub_1002DA2E8()
{
  result = qword_1006EC730;
  if (!qword_1006EC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC730);
  }

  return result;
}

unint64_t sub_1002DA33C()
{
  result = qword_1006EC738;
  if (!qword_1006EC738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC738);
  }

  return result;
}

uint64_t sub_1002DA3C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEC00000064496E6FLL || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E49726F6C6F63 && a2 == 0xE90000000000006FLL || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C6F4374786574 && a2 == 0xE900000000000072)
  {

    return 3;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1002DA534(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = sub_100009DCC(&qword_1006EC888, &qword_1005928E8);
  v5 = *(v42 - 8);
  __chkstk_darwin();
  v7 = &v19 - v6;
  sub_10000C8CC(a1, a1[3]);
  sub_1002DA2E8();
  sub_100574708();
  if (v2)
  {
    sub_100010474(a1);
  }

  else
  {
    LOBYTE(v25[0]) = 0;
    v8 = sub_100574298();
    v10 = v9;
    v21 = v8;
    LOBYTE(v25[0]) = 1;
    v20 = sub_1005742C8();
    v33 = 2;
    sub_1002DB054();
    sub_1005742D8();
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v32 = 3;
    v11 = sub_100574298();
    v12 = *(v5 + 8);
    v14 = v13;
    v12(v7, v42);
    v15 = v21;
    *&v22 = v21;
    *(&v22 + 1) = v10;
    *&v23[0] = v20;
    *(v23 + 8) = v38;
    *(&v23[1] + 8) = v39;
    *(&v23[2] + 8) = v40;
    *(&v23[3] + 8) = v41;
    *(&v23[4] + 1) = v11;
    v24 = v14;
    sub_1002DB0A8(&v22, v25);
    sub_100010474(a1);
    v25[0] = v15;
    v25[1] = v10;
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v25[2] = v20;
    v30 = v11;
    v31 = v14;
    sub_1002DB0E0(v25);
    v16 = v23[4];
    *(a2 + 64) = v23[3];
    *(a2 + 80) = v16;
    *(a2 + 96) = v24;
    v17 = v23[0];
    *a2 = v22;
    *(a2 + 16) = v17;
    v18 = v23[2];
    *(a2 + 32) = v23[1];
    *(a2 + 48) = v18;
  }
}

__n128 sub_1002DA85C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1002DA888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DA8D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002DA938(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002DA980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1002DAA14()
{
  result = qword_1006EC850;
  if (!qword_1006EC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC850);
  }

  return result;
}

unint64_t sub_1002DAA6C()
{
  result = qword_1006EC858;
  if (!qword_1006EC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC858);
  }

  return result;
}

unint64_t sub_1002DAAC4()
{
  result = qword_1006EC860;
  if (!qword_1006EC860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC860);
  }

  return result;
}

unint64_t sub_1002DAB1C()
{
  result = qword_1006EC868;
  if (!qword_1006EC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC868);
  }

  return result;
}

unint64_t sub_1002DAB74()
{
  result = qword_1006EC870;
  if (!qword_1006EC870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC870);
  }

  return result;
}

unint64_t sub_1002DABCC()
{
  result = qword_1006EC878;
  if (!qword_1006EC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC878);
  }

  return result;
}

uint64_t sub_1002DAC20()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1002DAC68()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000CB98;

  return sub_1002D6DB4(v2, v3, v4);
}

uint64_t sub_1002DAD20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000116F0;

  return sub_1002D837C(v2, v3, v4);
}

uint64_t sub_1002DADE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000116F0;

  return sub_1002D8464(a1, v4, v5, v6);
}

uint64_t sub_1002DAEAC()
{

  return swift_deallocObject();
}

uint64_t sub_1002DAEE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

uint64_t sub_1002DAF9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_10000C500(a1, v4);
}

unint64_t sub_1002DB054()
{
  result = qword_1006EC890;
  if (!qword_1006EC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC890);
  }

  return result;
}

void *sub_1002DB110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_1002D8DB4(sub_1002DB178, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t PlaylistCovers.Cover.Representation.stringRepresentation.getter()
{
  sub_100573ED8(68);
  v6._countAndFlagsBits = 0xD000000000000020;
  v6._object = 0x80000001005B4C60;
  sub_100572A98(v6);
  v7._countAndFlagsBits = sub_100574408();
  sub_100572A98(v7);

  v8._object = 0x80000001005B4C90;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_100572A98(v8);
  v9._countAndFlagsBits = PlaylistCovers.RecipeColors.description.getter(v0[2], v0[3], v0[4], v0[5]);
  sub_100572A98(v9);

  v10._countAndFlagsBits = 0x6F4374786574202CLL;
  v10._object = 0xED0000203A726F6CLL;
  sub_100572A98(v10);
  v1 = [v0[6] description];
  v2 = sub_1005728D8();
  v4 = v3;

  v11._countAndFlagsBits = v2;
  v11._object = v4;
  sub_100572A98(v11);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);
  return 0;
}

void static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(void *a1, char **a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7)
{
  v43 = a1;
  sub_10056CC38();
  __chkstk_darwin();
  v13 = sub_100572888();
  isEscapingClosureAtFileLocation = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v41 - v17;
  if (!a4)
  {
LABEL_7:
    sub_100572818();
    (*(isEscapingClosureAtFileLocation + 16))(v16, v18, v13);
    if (qword_1006E4C60 != -1)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v42 = a5;

  v19 = String.trim()();

  v20 = (v19._object >> 56) & 0xF;
  if ((v19._object & 0x2000000000000000) == 0)
  {
    v20 = v19._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    a5 = v42;
    goto LABEL_7;
  }

  a5 = v42;
  while (1)
  {
    v23 = sub_100572898();

    v24 = [v23 _containsEmoji];

    v25 = 270.0;
    if (a6 > 270.0)
    {
      v25 = a6;
    }

    v26 = v24 ? v25 : a6;
    v27 = v24 ? v25 : a7;
    v18 = &_s8MusicKit5AlbumVAA08PlayableA4ItemAAWP_ptr;
    v28 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{v26, v27}];
    v13 = swift_allocObject();
    *(v13 + 16) = v26;
    *(v13 + 24) = v27;
    v29 = v43;
    *(v13 + 32) = v43;
    *(v13 + 40) = a5;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    *(v13 + 64) = a2;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1002D9CE4;
    *(v30 + 24) = v13;
    v48 = sub_1002AA218;
    v49 = v30;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1001D65E4;
    v47 = &unk_100699888;
    v31 = _Block_copy(&aBlock);
    v32 = v29;
    a5 = a5;
    v33 = a2;

    a2 = &selRef_changeItemCommand;
    v34 = [v28 imageWithActions:v31];
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    swift_once();
LABEL_8:
    v21 = qword_1006FC3B8;
    sub_10056CBC8();
    a3 = sub_100572948();
    a4 = v22;
    (*(isEscapingClosureAtFileLocation + 8))(v18, v13);
  }

  v50.width = v26;
  v50.height = v27;
  v51.width = a6;
  v51.height = a7;
  if (CGSizeEqualToSize(v50, v51))
  {
  }

  else
  {
    v35 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = a6;
    *(v36 + 32) = a7;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1002DC604;
    *(v37 + 24) = v36;
    v48 = sub_1002DCE34;
    v49 = v37;
    aBlock = _NSConcreteStackBlock;
    v45 = 1107296256;
    v46 = sub_1001D65E4;
    v47 = &unk_100699900;
    v38 = _Block_copy(&aBlock);
    v39 = v34;

    [v35 imageWithActions:v38];

    _Block_release(v38);
    v40 = swift_isEscapingClosureAtFileLocation();

    if (v40)
    {
      __break(1u);
    }
  }
}

uint64_t PlaylistCovers.Cover.Representation.init(expression:backgroundImage:recipeColors:textColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t PlaylistCovers.Cover.accessibilityIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

void *PlaylistCovers.Cover.Representation.recipeColors.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v1;
  v6 = v2;
  v7 = v4;
  v8 = v3;
  return v1;
}

uint64_t PlaylistCovers.Cover.Representation.hash(into:)(uint64_t a1)
{
  sub_100574688(*v1 + 1);
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_100573A68();
}

Swift::Int PlaylistCovers.Cover.Representation.hashValue.getter()
{
  sub_100574678();
  sub_100574688(*v0 + 1);
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

uint64_t sub_1002DBAD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v5, v7) & 1;
}

Swift::Int sub_1002DBB34()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(v1 + 1);
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

uint64_t sub_1002DBBDC(uint64_t a1)
{
  sub_100574688(*v1 + 1);
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_100573A68();
}

Swift::Int sub_1002DBC6C(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(v2 + 1);
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

__n128 PlaylistCovers.Cover.init(image:representation:)@<Q0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 5);
  v22 = *(a2 + 6);
  v20 = *(a2 + 24);
  v21 = *(a2 + 8);
  sub_1002D99B0(a2, v23);
  v8 = PlaylistCovers.Cover.Representation.stringRepresentation.getter();
  v10 = v9;
  v11 = *a2;
  v12 = PlaylistCovers.Expression.accessibilityLabel.getter(*a2);
  v14 = v13;
  sub_1002D9A0C(a2);
  v15 = PlaylistCovers.Expression.accessibilityIdentifier.getter(v11);
  *a3 = a1;
  *(a3 + 8) = v8;
  *(a3 + 16) = v10;
  *(a3 + 24) = v6;
  result = v21;
  *(a3 + 32) = v21;
  *(a3 + 48) = v20;
  *(a3 + 64) = v7;
  *(a3 + 72) = v22;
  *(a3 + 80) = v12;
  *(a3 + 88) = v14;
  *(a3 + 96) = v15;
  *(a3 + 104) = v17;
  *(a3 + 112) = v18;
  *(a3 + 120) = v19;
  return result;
}

double PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  result = 0.0;
  *(a9 + 24) = 0u;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  return result;
}

double sub_1002DBE0C@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;

  return result;
}

uint64_t sub_1002DBE18(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14) & 1;
}

id sub_1002DBEA0()
{
  v0 = [objc_opt_self() whiteColor];
  sub_1000D3B98(0, &qword_1006EC8C0, UIColor_ptr);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 128, 128, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(255, 230, 230, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(250, 35, 59, 1.0);
  qword_1006FC918 = v0;
  unk_1006FC920 = v1;
  qword_1006FC928 = v2;
  unk_1006FC930 = result;
  return result;
}

id sub_1002DBF58()
{
  sub_1000D3B98(0, &qword_1006EC8C0, UIColor_ptr);
  v0 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(238, 238, 238, 1.0);
  v1 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(187, 187, 187, 1.0);
  v2 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(70, 70, 70, 1.0);
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(17, 17, 17, 1.0);
  qword_1006FC938 = v0;
  qword_1006FC940 = v1;
  qword_1006FC948 = v2;
  qword_1006FC950 = result;
  return result;
}

void sub_1002DC004(int a1, id a2, double a3, double a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  [a2 drawInRect:{0.0, 0.0, a3, a4}];
  v11 = sub_100572A28();
  v12 = objc_opt_self();
  [a5 scale];
  if (v11 <= 30)
  {
    v13 = 33.0;
  }

  else
  {
    v13 = 27.0;
  }

  sub_10056CF68();
  v14 = [v12 systemFontOfSize:? weight:?];
  v15 = [v14 fontDescriptor];

  v16 = kCTFontIgnoreLegibilityWeightAttribute;
  sub_100009DCC(&qword_1006EC8C8, &qword_100592B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10057B500;
  *(inited + 32) = v16;
  *(inited + 40) = 1;
  *(inited + 64) = &type metadata for Bool;
  *(inited + 72) = kCTFontOpticalSizeAttribute;
  *(inited + 104) = &type metadata for CGFloat;
  *(inited + 80) = v13;
  v18 = v16;
  v19 = kCTFontOpticalSizeAttribute;
  v45 = v18;
  v44 = v19;
  v20 = v15;
  sub_1000F507C(inited);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6AB8, &qword_100586898);
  swift_arrayDestroy();
  type metadata accessor for AttributeName(0);
  sub_1002DCDB4();
  isa = sub_100572688().super.isa;

  v42 = [v20 fontDescriptorByAddingAttributes:isa];

  v22 = [v12 fontWithDescriptor:v42 size:0.0];
  [a5 scale];
  sub_10056CF68();
  v24 = v23;
  v25 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v25 setMinimumLineHeight:v24];
  [v25 setMaximumLineHeight:v24];
  sub_100009DCC(&qword_1006EC8D0, &qword_100592B08);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10057BD80;
  *(v26 + 32) = NSFontAttributeName;
  v27 = sub_1000D3B98(0, &qword_1006EC8D8, UIFont_ptr);
  *(v26 + 40) = v22;
  *(v26 + 64) = v27;
  *(v26 + 72) = NSForegroundColorAttributeName;
  v28 = sub_1000D3B98(0, &qword_1006EC8C0, UIColor_ptr);
  *(v26 + 80) = a8;
  *(v26 + 104) = v28;
  *(v26 + 112) = NSKernAttributeName;
  *(v26 + 120) = -0.25 / (270.0 / a3);
  *(v26 + 144) = &type metadata for CGFloat;
  *(v26 + 152) = NSParagraphStyleAttributeName;
  *(v26 + 184) = sub_1000D3B98(0, &qword_1006EC8E0, NSMutableParagraphStyle_ptr);
  *(v26 + 160) = v25;
  v29 = NSFontAttributeName;
  v30 = v22;
  v31 = NSForegroundColorAttributeName;
  v32 = a8;
  v33 = NSKernAttributeName;
  v34 = NSParagraphStyleAttributeName;
  v35 = v25;
  sub_1000F50A0(v26);
  swift_setDeallocating();
  sub_100009DCC(&qword_1006E6AA8, &qword_100586888);
  swift_arrayDestroy();
  v36 = sub_10056E008();
  sub_10056DFF8();
  v37 = objc_allocWithZone(v36);

  v38 = sub_10056E018();
  v39 = sub_10056DFE8();

  [a5 scale];
  sub_10056CF68();
  sub_1005733C8();
  [v39 drawWithRect:1 options:0 context:{sub_1002DCE0C(0.0, 0.0, a3, a4, v40, v41)}];
}

uint64_t sub_1002DC534()
{

  return swift_deallocObject();
}

uint64_t sub_1002DC594(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002DC5CC()
{

  return swift_deallocObject();
}

uint64_t sub_1002DC620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EC8B0, &qword_100592918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v4 = v3;
  v26 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v27 = v5;
  v25 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v29 = v6;
  v23 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v30 = v7;
  v8 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v10 = v9;
  v11 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v13 = v12;
  v24 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v28 = v14;
  v22 = _s9MusicCore14PlaylistCoversO17hexRepresentation3forSSSo7UIColorC_tFZ_0();
  v16 = v15;
  if (v2 == v8 && v4 == v10)
  {
  }

  else
  {
    v17 = sub_100574498();

    if ((v17 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v26 == v11 && v27 == v13)
  {
  }

  else
  {
    v18 = sub_100574498();

    if ((v18 & 1) == 0)
    {

      goto LABEL_21;
    }
  }

  if (v25 == v24 && v29 == v28)
  {

    goto LABEL_14;
  }

  v19 = sub_100574498();

  if ((v19 & 1) == 0)
  {
LABEL_21:

    return 0;
  }

LABEL_14:
  if (v23 == v22 && v30 == v16)
  {

LABEL_19:
    sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
    return sub_100573A58() & 1;
  }

  v20 = sub_100574498();

  if (v20)
  {
    goto LABEL_19;
  }

  return 0;
}

uint64_t _s9MusicCore14PlaylistCoversO5CoverV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
  if ((sub_100573A58() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_100574498() & 1) == 0)
  {
    goto LABEL_13;
  }

  v35 = *(a1 + 24);
  v5 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v5;
  v6 = *(a1 + 72);
  v38 = v6;
  v7 = *(a2 + 40);
  v32[0] = *(a2 + 24);
  v32[1] = v7;
  v33 = *(a2 + 56);
  v8 = *(a2 + 72);
  v34 = v8;
  v9 = v35;
  v10 = v36;
  v11 = v32[0];
  v12 = *(&v33 + 1);
  if (!*(&v35 + 1))
  {
    if (!*(&v32[0] + 1))
    {
      v18 = *(&v37 + 1);
      v19 = v36;
      v20 = v37;
      v21 = v35;
      v22 = *(&v36 + 1);
      sub_1002DC620(&v35, v43);
      sub_1002DC620(v32, v43);
      sub_1002DCD44(v21, 0, v19, v22, v20, v18, v6);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (!*(&v32[0] + 1))
  {
LABEL_12:
    v13 = *(&v37 + 1);
    v14 = v37;
    v26 = *(&v33 + 1);
    v28 = v7;
    v15 = *(&v36 + 1);
    v30 = v33;
    sub_1002DC620(&v35, v43);
    sub_1002DC620(v32, v43);
    sub_1002DCD44(v9, *(&v9 + 1), v10, v15, v14, v13, v6);
    sub_1002DCD44(v11, *(&v11 + 1), v28, *(&v28 + 1), v30, v26, v8);
    goto LABEL_13;
  }

  LOBYTE(v43[0]) = v32[0];
  v43[1] = *(&v32[0] + 1);
  v44 = v7;
  v45 = v33;
  v46 = v8;
  LOBYTE(v39[0]) = v35;
  v39[1] = *(&v35 + 1);
  v40 = v36;
  v41 = v37;
  v42 = v6;
  v25 = v37;
  v24 = *(&v36 + 1);
  v29 = v33;
  v27 = v7;
  sub_1002DC620(&v35, v31);
  sub_1002DC620(v32, v31);
  v23 = _s9MusicCore14PlaylistCoversO5CoverV14RepresentationV2eeoiySbAG_AGtFZ_0(v39, v43);
  sub_1002DCD44(v11, *(&v11 + 1), v27, *(&v27 + 1), v29, v12, v8);
  sub_1002DCD44(v9, *(&v9 + 1), v10, v24, v25, *(&v25 + 1), v6);
  if ((v23 & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    return v16 & 1;
  }

LABEL_16:
  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_100574498() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104))
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_100574498();
  }

  return v16 & 1;
}

unint64_t sub_1002DCBF0()
{
  result = qword_1006EC8B8;
  if (!qword_1006EC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC8B8);
  }

  return result;
}

uint64_t sub_1002DCC54(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1002DCC6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1002DCCB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002DCD44(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (a2)
  {
  }
}

unint64_t sub_1002DCDB4()
{
  result = qword_1006E5F20;
  if (!qword_1006E5F20)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E5F20);
  }

  return result;
}

uint64_t PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, unsigned __int8 a6, double a7, double a8)
{
  if (a6 > 3u)
  {
    if (a6 > 5u)
    {
      if (a6 == 6)
      {
        sub_1002E2BCC(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_1002DDFC0(a1, a2, a3, a4, a5, a7, a8);
    }

    else
    {
      if (a6 == 4)
      {
        sub_1002DDC18(a1, a2, a3, a4, a5, a7, a8);
        goto LABEL_12;
      }

      sub_1002DDDEC(a1, a2, a3, a4, a5, a7, a8);
    }

LABEL_17:
    v9 = v11;
    v10 = &selRef_whiteColor;
    goto LABEL_18;
  }

  if (a6 > 1u)
  {
    if (a6 == 2)
    {
      sub_1002DD870(a1, a2, a3, a4, a5, a7, a8);
      goto LABEL_12;
    }

    sub_1002DDA44(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  if (a6)
  {
    sub_1002DD690(a1, a2, a3, a4, a5, a7, a8);
    goto LABEL_17;
  }

  sub_1002DD4BC(a1, a2, a3, a4, a5, a7, a8);
LABEL_12:
  v9 = v8;
  v10 = &selRef_blackColor;
LABEL_18:
  v12 = [objc_opt_self() *v10];
  return v9;
}

uint64_t PlaylistCovers.Expression.accessibilityLabel.getter(unsigned __int8 a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_100572818();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v7 = qword_1006FC3B8;
  sub_10056CBC8();
  v8 = sub_100572948();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t PlaylistCovers.Expression.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        if (qword_1006E5520 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
      }

      else
      {
        if (qword_1006E5528 != -1)
        {
          swift_once();
        }

        v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
      }
    }

    else if (a1 == 4)
    {
      if (qword_1006E5510 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
    }

    else
    {
      if (qword_1006E5518 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      if (qword_1006E5500 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
    }

    else
    {
      if (qword_1006E5508 != -1)
      {
        swift_once();
      }

      v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
    }
  }

  else if (a1)
  {
    if (qword_1006E54F8 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
  }

  else
  {
    if (qword_1006E54F0 != -1)
    {
      swift_once();
    }

    v1 = &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
  }

  v2 = *v1;

  return v2;
}

id PlaylistCovers.Expression.textColor.getter(char a1)
{
  v1 = [objc_opt_self() *off_10069A100[a1]];

  return v1;
}

void sub_1002DD4BC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E32E0;
  *(v15 + 24) = v14;
  v21[4] = sub_1002AA218;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001D65E4;
  v21[3] = &unk_100699BB0;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002DD690(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  *(v14 + 64) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E3368;
  *(v15 + 24) = v14;
  v22[4] = sub_1002DCE34;
  v22[5] = v15;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_1001D65E4;
  v22[3] = &unk_100699C28;
  v16 = _Block_copy(v22);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v13;

  [v21 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }
}

void sub_1002DD870(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E339C;
  *(v15 + 24) = v14;
  v21[4] = sub_1002DCE34;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001D65E4;
  v21[3] = &unk_100699D18;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002DDA44(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E33B4;
  *(v15 + 24) = v14;
  v21[4] = sub_1002DCE34;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001D65E4;
  v21[3] = &unk_100699D90;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002DDC18(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E33CC;
  *(v15 + 24) = v14;
  v21[4] = sub_1002DCE34;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001D65E4;
  v21[3] = &unk_100699E08;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002DDDEC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v13 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002E33E4;
  *(v15 + 24) = v14;
  v21[4] = sub_1002DCE34;
  v21[5] = v15;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_1001D65E4;
  v21[3] = &unk_100699E80;
  v16 = _Block_copy(v21);
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;

  [v13 imageWithActions:v16];

  _Block_release(v16);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }
}

void sub_1002DDFC0(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v15 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6 * 1.1, a7 * 1.1}];
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  *(v16 + 48) = a6 * 1.1;
  *(v16 + 56) = a7 * 1.1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1002E3500;
  *(v17 + 24) = v16;
  v52 = sub_1002DCE34;
  v53 = v17;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1001D65E4;
  v51 = &unk_100699FE8;
  v18 = _Block_copy(&aBlock);
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v23 = [v15 imageWithActions:v18];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_8;
  }

  v46 = v21;
  v47 = v15;
  [v23 scale];
  v25 = v24;
  [v23 scale];
  v27 = v26;
  v28 = [v23 CGImage];
  if (!v28)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v29 = v28;
  v30 = v14;
  v55.size.height = v27 * a7;
  v55.origin.y = v27 * a7 * 0.05;
  v55.size.width = v25 * a6;
  v55.origin.x = v25 * a6 * 0.05;
  v31 = CGImageCreateWithImageInRect(v28, v55);

  if (v31)
  {
    v32 = [objc_allocWithZone(UIImage) initWithCGImage:v31];

    v54 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = a6;
    *(v33 + 24) = a7;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_1002E3530;
    *(v34 + 24) = v33;
    v52 = sub_1002DCE34;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1001D65E4;
    v51 = &unk_10069A060;
    v35 = _Block_copy(&aBlock);

    v36 = [v14 imageWithActions:v35];
    _Block_release(v35);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      v37 = swift_allocObject();
      *(v37 + 16) = v19;
      *(v37 + 24) = v20;
      *(v37 + 32) = v46;
      *(v37 + 40) = v22;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = a6;
      *(v37 + 72) = a7;
      *(v37 + 80) = v36;
      *(v37 + 88) = &v54;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_1002E3590;
      *(v38 + 24) = v37;
      v52 = sub_1002DCE34;
      v53 = v38;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_1001D65E4;
      v51 = &unk_10069A0D8;
      v39 = _Block_copy(&aBlock);
      v40 = v19;
      v41 = v20;
      v42 = v46;
      v43 = v22;
      v44 = v36;

      [v30 imageWithActions:v39];

      _Block_release(v39);
      LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

      if ((v39 & 1) == 0)
      {
        v45 = v54;

        return;
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
}

Swift::Int sub_1002DE514()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(v1 + 1);
  return sub_1005746C8();
}

Swift::Int sub_1002DE58C(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(v2 + 1);
  return sub_1005746C8();
}

uint64_t sub_1002DE5D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a3;
  *(v8 + 64) = a4;
  *(v8 + 40) = a1;
  *(v8 + 48) = a2;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  return _swift_task_switch(sub_1002DE648, 0, 0);
}

uint64_t sub_1002DE648()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = sub_100009DCC(&qword_1006EC8E8, &qword_100592B18);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 64);
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v7;
  *(v6 + 56) = v8;
  *(v6 + 72) = v1;
  v9 = sub_100009DCC(&qword_1006EC8F0, &qword_100592B30);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_1002DE788;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v5, v9, 0, 0, &unk_100592B28, v6, v5);
}

uint64_t sub_1002DE788()
{

  return _swift_task_switch(sub_1002DE8A0, 0, 0);
}

uint64_t sub_1002DE8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  *(v10 + 168) = a7;
  *(v10 + 176) = a8;
  *(v10 + 152) = a5;
  *(v10 + 160) = a6;
  *(v10 + 144) = a4;
  *(v10 + 128) = a9;
  *(v10 + 136) = a10;
  *(v10 + 112) = a2;
  *(v10 + 120) = a3;
  *(v10 + 104) = a1;
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  *(v10 + 184) = swift_task_alloc();
  *(v10 + 192) = swift_task_alloc();
  v11 = sub_100009DCC(&qword_1006EC910, &qword_100592C28);
  *(v10 + 200) = v11;
  *(v10 + 208) = *(v11 - 8);
  *(v10 + 216) = swift_task_alloc();

  return _swift_task_switch(sub_1002DE9DC, 0, 0);
}

uint64_t sub_1002DE9DC()
{
  v1 = *(v0 + 120);
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = **(v0 + 112);
    v3 = (v1 + 32);
    v38 = sub_100572F48();
    v4 = *(v38 - 8);
    v37 = *(v4 + 56);
    v36 = (v4 + 48);
    v35 = (v4 + 8);
    do
    {
      v40 = v2;
      v6 = *(v0 + 168);
      v5 = *(v0 + 176);
      v7 = *(v0 + 152);
      v8 = *(v0 + 160);
      v9 = *(v0 + 144);
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = v3 + 1;
      v13 = *v3;
      v41 = v12;
      v37(*(v0 + 192), 1, 1, v38);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 32) = v13;
      *(v14 + 40) = v11;
      *(v14 + 48) = v10;
      *(v14 + 56) = v9;
      *(v14 + 64) = v7;
      *(v14 + 72) = v8;
      *(v14 + 80) = v6;
      *(v14 + 88) = v5;
      v15 = v9;
      v16 = v7;
      v17 = v8;
      v18 = v6;
      v19 = v5;
      v20 = swift_taskGroup_addPending();
      v21 = *(v0 + 192);
      if (v20)
      {
        v22 = *(v0 + 184);
        sub_1000D8700(v21, v22);
        v23 = (*v36)(v22, 1, v38);
        v24 = *(v0 + 184);
        if (v23 == 1)
        {
          sub_1000DBD34(*(v0 + 184));
        }

        else
        {
          sub_100572F38();
          (*v35)(v24, v38);
        }

        v3 = v41;
        if (*(v14 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v25 = sub_100572E78();
          v27 = v26;
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0;
          v27 = 0;
        }

        v28 = swift_allocObject();
        *(v28 + 16) = &unk_100592C38;
        *(v28 + 24) = v14;

        sub_100009DCC(&qword_1006EC8E8, &qword_100592B18);
        v29 = v27 | v25;
        if (v27 | v25)
        {
          v29 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v25;
          *(v0 + 40) = v27;
        }

        v30 = *(v0 + 192);
        *(v0 + 72) = 1;
        *(v0 + 80) = v29;
        *(v0 + 88) = v39;
        swift_task_create();

        sub_1000DBD34(v30);
      }

      else
      {
        sub_1000DBD34(v21);

        v3 = v41;
      }

      v2 = v40 - 1;
    }

    while (v40 != 1);
  }

  sub_100009DCC(&qword_1006EC8E8, &qword_100592B18);
  sub_100572EB8();
  *(v0 + 224) = _swiftEmptyDictionarySingleton;
  v31 = sub_100010BC0(&qword_1006EC918, &qword_1006EC910, &qword_100592C28, &protocol conformance descriptor for TaskGroup<A>.Iterator);
  v32 = swift_task_alloc();
  *(v0 + 232) = v32;
  *v32 = v0;
  v32[1] = sub_1002DEDB4;
  v33 = *(v0 + 200);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 48, v33, v31);
}

uint64_t sub_1002DEDB4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 216);
    v6 = v2 + 200;
    v4 = *(v2 + 200);
    v5 = *(v6 + 8);

    (*(v5 + 8))(v3, v4);

    v7 = CFRange.init(_:);
  }

  else
  {
    v7 = sub_1002DEF04;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002DEF04()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 224);
  if (v1)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = *(v0 + 144);
    v5 = *(v0 + 152);
    v7 = *(v0 + 64);
    v8 = *(v0 + 48);
    v9 = v1;
    v10 = v7;
    v11 = v9;
    v12 = v10;
    v13 = v6;
    v14 = v5;
    v15 = v3;
    v16 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 96) = v2;
    v18 = sub_1000EBC1C(v8);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v3) = v19;
      if (*(*(v0 + 224) + 24) < v23)
      {
        sub_1000EEC68(v23, isUniquelyReferenced_nonNull_native);
        v18 = sub_1000EBC1C(v8);
        if ((v3 & 1) != (v24 & 1))
        {

          return sub_100574578();
        }

LABEL_21:
        v46 = *(v0 + 96);
        v48 = *(v0 + 160);
        v47 = *(v0 + 168);
        v50 = *(v0 + 144);
        v49 = *(v0 + 152);
        if (v3)
        {
          v51 = v46[7] + 56 * v18;
          v52 = *(v51 + 8);
          v53 = *(v51 + 16);
          v54 = *(v51 + 24);
          v55 = *(v51 + 32);
          v56 = *(v51 + 40);
          v57 = *(v51 + 48);
          *v51 = v8;
          *(v51 + 8) = v11;
          *(v51 + 16) = v50;
          *(v51 + 24) = v49;
          *(v51 + 32) = v48;
          *(v51 + 40) = v47;
          *(v51 + 48) = v12;
        }

        else
        {
          v46[(v18 >> 6) + 8] |= 1 << v18;
          *(v46[6] + v18) = v8;
          v58 = v46[7] + 56 * v18;
          *v58 = v8;
          *(v58 + 8) = v11;
          *(v58 + 16) = v50;
          *(v58 + 24) = v49;
          *(v58 + 32) = v48;
          *(v58 + 40) = v47;
          *(v58 + 48) = v12;

          v62 = v46[2];
          v22 = __OFADD__(v62, 1);
          v63 = v62 + 1;
          if (v22)
          {
            __break(1u);
            return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
          }

          v46[2] = v63;
        }

        *(v0 + 224) = v46;
        v64 = sub_100010BC0(&qword_1006EC918, &qword_1006EC910, &qword_100592C28, &protocol conformance descriptor for TaskGroup<A>.Iterator);
        v65 = swift_task_alloc();
        *(v0 + 232) = v65;
        *v65 = v0;
        v65[1] = sub_1002DEDB4;
        v60 = *(v0 + 200);
        v59 = v0 + 48;
        v61 = v64;

        return dispatch thunk of AsyncIteratorProtocol.next()(v59, v60, v61);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }
    }

    v66 = v18;
    sub_1000F1E2C();
    v18 = v66;
    goto LABEL_21;
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v67 = v0;
  do
  {
    if (*(v2 + 16))
    {
      v29 = sub_1000EBC1C(*(&off_100685220 + v26 + 32));
      if (v30)
      {
        v31 = *(v2 + 56) + 56 * v29;
        v69 = *v31;
        v32 = *(v31 + 16);
        v33 = *(v31 + 24);
        v34 = *(v31 + 32);
        v35 = *(v31 + 40);
        v36 = *(v31 + 48);
        v68 = *(v31 + 8);
        v37 = v32;
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v41 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1000D0010(0, *(v27 + 2) + 1, 1, v27);
        }

        v43 = *(v27 + 2);
        v42 = *(v27 + 3);
        if (v43 >= v42 >> 1)
        {
          v27 = sub_1000D0010((v42 > 1), v43 + 1, 1, v27);
        }

        *(v27 + 2) = v43 + 1;
        v28 = &v27[56 * v43];
        v28[32] = v69;
        v0 = v67;
        *(v28 + 5) = v68;
        *(v28 + 6) = v37;
        *(v28 + 7) = v38;
        *(v28 + 8) = v39;
        *(v28 + 9) = v40;
        *(v28 + 10) = v41;
      }
    }

    ++v26;
  }

  while (v26 != 8);
  v44 = *(v0 + 104);

  *v44 = v27;

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1002DF378(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 48) = a8;
  *(v10 + 56) = a9;
  *(v10 + 40) = a7;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 80) = a6;
  *(v10 + 16) = a1;
  return _swift_task_switch(sub_1002DF3B4, 0, 0);
}

uint64_t sub_1002DF3B4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);
  v9 = *(v0 + 80);
  *v8 = v9;
  *(v8 + 8) = PlaylistCovers.Expression.generate(size:colors:graphicsFormat:)(v5, v3, v4, v1, v2, v9, v6, v7);
  *(v8 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

CGColorSpaceRef sub_1002DF430()
{
  result = CGColorSpaceCreateDeviceRGB();
  qword_1006FC958 = result;
  return result;
}

void sub_1002DF450(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a2 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  [a1 fillRect:{0.0, 0.0, a4, a5}];
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v15 = qword_1006FC958;
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100582500;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v18 = CGGradientCreateWithColors(v15, isa, dbl_100685268);

  if (v18)
  {
    v19 = [a1 CGContext];
    v49.x = 0.0;
    v49.y = 0.0;
    v54.x = a4;
    v54.y = a5;
    CGContextDrawLinearGradient(v19, v18, v49, v54, 0);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100582490;
  *(v20 + 32) = [a7 CGColor];
  *(v20 + 40) = [a7 CGColor];
  v21 = [a7 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v20 + 48) = v22;
  v23 = sub_100572D08().super.isa;

  v24 = CGGradientCreateWithColors(v15, v23, dbl_100685298);

  if (v24)
  {
    v25 = [a1 CGContext];
    v50.x = a4;
    v50.y = a5;
    v55.x = a4;
    v55.y = a5;
    CGContextDrawRadialGradient(v25, v24, v50, 0.0, v55, a4, 0);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100582490;
  *(v26 + 32) = [a3 CGColor];
  v27 = [a3 colorWithAlphaComponent:0.0];
  v28 = [v27 CGColor];

  *(v26 + 40) = v28;
  v29 = [a3 colorWithAlphaComponent:0.0];
  v30 = [v29 CGColor];

  *(v26 + 48) = v30;
  v31 = sub_100572D08().super.isa;

  v32 = CGGradientCreateWithColors(v15, v31, dbl_1006852D0);

  if (v32)
  {
    v33 = [a1 CGContext];
    v51.x = 0.0;
    v56.x = 0.0;
    v51.y = a5;
    v56.y = a5;
    CGContextDrawRadialGradient(v33, v32, v51, 0.0, v56, a4, 0);
  }

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100582490;
  *(v34 + 32) = [a3 CGColor];
  v35 = [a3 colorWithAlphaComponent:0.0];
  v36 = [v35 CGColor];

  *(v34 + 40) = v36;
  v37 = [a3 colorWithAlphaComponent:0.0];
  v38 = [v37 CGColor];

  *(v34 + 48) = v38;
  v39 = sub_100572D08().super.isa;

  v40 = CGGradientCreateWithColors(v15, v39, dbl_100685308);

  if (v40)
  {
    v41 = [a1 CGContext];
    v52.y = 0.0;
    v57.y = 0.0;
    v52.x = a4;
    v57.x = a4;
    CGContextDrawRadialGradient(v41, v40, v52, 0.0, v57, a4, 0);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100582500;
  *(v42 + 32) = [a2 CGColor];
  v43 = [a2 colorWithAlphaComponent:0.0];
  v44 = [v43 CGColor];

  *(v42 + 40) = v44;
  v45 = sub_100572D08().super.isa;

  v46 = CGGradientCreateWithColors(v15, v45, dbl_100685340);

  if (v46)
  {
    v47 = [a1 CGContext];
    v53.x = 0.0;
    v53.y = 0.0;
    v58.x = 0.0;
    v58.y = 0.0;
    CGContextDrawRadialGradient(v47, v46, v53, 0.0, v58, a4, 0);
  }
}

void sub_1002DFAC0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, CGFloat a7, CGFloat a8)
{
  v121 = a6;
  v119 = a3;
  v127 = sub_10056CF48();
  v129 = *(v127 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a2;
  v17 = [a2 CGColor];
  v120 = a4;
  v18 = [a4 CGColor];
  v122 = a5;
  v19 = [a5 CGColor];
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v20 = qword_1006FC958;
  v126 = sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100582550;
  *(v21 + 32) = v19;
  *(v21 + 40) = v19;
  *(v21 + 48) = v17;
  *(v21 + 56) = v17;
  type metadata accessor for CGColor(0);
  v23 = v22;
  v24 = v19;
  v25 = v17;
  v26 = v24;
  v27 = v25;
  v123 = v23;
  isa = sub_100572D08().super.isa;

  v124 = v20;
  v29 = CGGradientCreateWithColors(v20, isa, dbl_100685370);

  if (v29)
  {
    v30 = [a1 CGContext];
    v134.x = 0.0;
    v134.y = 0.0;
    v137.x = a7;
    v137.y = a8;
    CGContextDrawLinearGradient(v30, v29, v134, v137, 0);
  }

  v31 = [a1 CGContext];
  CGContextSaveGState(v31);

  v32 = a7 * -0.235;
  v33 = a7 * 1.47;
  v139.origin.x = a7 * -0.235;
  v139.origin.y = a8 * 0.15;
  v139.size.width = a7 * 1.47;
  v139.size.height = a8 * 0.7;
  v34 = -CGRectGetMidX(v139);
  v140.origin.x = a7 * -0.235;
  v140.origin.y = a8 * 0.15;
  v140.size.width = a7 * 1.47;
  v140.size.height = a8 * 0.7;
  MidY = CGRectGetMidY(v140);
  CGAffineTransformMakeTranslation(&t1, v34, -MidY);
  tx = t1.tx;
  ty = t1.ty;
  v128 = *&t1.a;
  v125 = *&t1.c;
  *&v113 = 0xBFE0C152382D7365;
  CGAffineTransformMakeRotation(&t1, -0.523598776);
  v38 = *&t1.a;
  v39 = *&t1.c;
  v40 = *&t1.tx;
  *&t1.a = v128;
  *&t1.c = v125;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v38;
  *&t2.c = v39;
  *&t2.tx = v40;
  CGAffineTransformConcat(&v131, &t1, &t2);
  v41 = v131.tx;
  *&v128 = a7;
  v42 = v131.ty;
  v125 = *&v131.a;
  v117 = *&v131.c;
  v141.origin.x = v32;
  v141.origin.y = a8 * 0.15;
  v141.size.width = v33;
  v141.size.height = a8 * 0.7;
  MidX = CGRectGetMidX(v141);
  v142.origin.x = v32;
  v142.origin.y = a8 * 0.15;
  v142.size.width = v33;
  v142.size.height = a8 * 0.7;
  v44 = CGRectGetMidY(v142);
  CGAffineTransformMakeTranslation(&t1, MidX, v44);
  *&t2.a = v125;
  *&t2.c = v117;
  t2.tx = v41;
  t2.ty = v42;
  v45 = *&v128;
  v131 = t1;
  CGAffineTransformConcat(&t1, &t2, &v131);
  Mutable = CGPathCreateMutable();
  sub_1005734C8();
  v47 = [a1 CGContext];
  *&v117 = Mutable;
  CGContextAddPath(v47, Mutable);

  v48 = [a1 CGContext];
  v49 = v129;
  v50 = *(v129 + 104);
  v116 = enum case for CGPathFillRule.winding(_:);
  v51 = v127;
  v115 = v50;
  v50(v16);
  sub_100573378();

  v52 = *(v49 + 8);
  v112 = v16;
  v129 = v49 + 8;
  v114 = v52;
  v52(v16, v51);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100582560;
  *(v53 + 32) = v18;
  *(v53 + 40) = v18;
  *(v53 + 48) = v26;
  *(v53 + 56) = v26;
  *(v53 + 64) = v27;
  *(v53 + 72) = v27;
  *(v53 + 80) = v26;
  *(v53 + 88) = v26;
  *(v53 + 96) = v18;
  *(v53 + 104) = v18;
  *(v53 + 112) = v26;
  v54 = v26;
  v55 = v18;
  v56 = v54;
  v57 = v55;
  v58 = v56;
  v59 = v27;
  v60 = v57;
  v61 = v58;
  *&v125 = v59;
  v62 = v60;
  v63 = v61;
  v64 = v122;
  v65 = [v122 colorWithAlphaComponent:0.8];
  v66 = [v65 CGColor];

  *(v53 + 120) = v66;
  v67 = [v64 colorWithAlphaComponent:0.5];
  v68 = [v67 CGColor];

  *(v53 + 128) = v68;
  v69 = [v64 colorWithAlphaComponent:0.5];
  v70 = [v69 CGColor];

  *(v53 + 136) = v70;
  v71 = [v64 colorWithAlphaComponent:0.8];
  v72 = [v71 CGColor];

  *(v53 + 144) = v72;
  *(v53 + 152) = v63;
  *(v53 + 160) = v62;
  *(v53 + 168) = v62;
  v73 = v62;
  v74 = v63;
  v111 = v73;
  v75 = sub_100572D08().super.isa;

  v76 = v124;
  v77 = CGGradientCreateWithColors(v124, v75, dbl_1006853B0);

  if (v77)
  {
    v78 = [a1 CGContext];
    v135.x = v45 * 0.5;
    v135.y = a8 * 0.5;
    CGContextDrawConicGradient(v78, v77, v135, 0.0);
  }

  v79 = [a1 CGContext];
  CGContextRestoreGState(v79);

  v80 = v45 * 0.26375;
  v81 = v45 * 0.4725;
  v143.origin.x = v45 * 0.26375;
  v143.origin.y = a8 * 0.388888889;
  v143.size.width = v45 * 0.4725;
  v143.size.height = a8 * 0.2225;
  v82 = -CGRectGetMidX(v143);
  v144.origin.x = v45 * 0.26375;
  v144.origin.y = a8 * 0.388888889;
  v144.size.width = v45 * 0.4725;
  v144.size.height = a8 * 0.2225;
  v83 = CGRectGetMidY(v144);
  CGAffineTransformMakeTranslation(&t2, v82, -v83);
  v84 = t2.tx;
  v85 = t2.ty;
  v110 = *&t2.a;
  v109 = *&t2.c;
  CGAffineTransformMakeRotation(&t2, *&v113);
  v86 = *&t2.a;
  v87 = *&t2.c;
  v88 = *&t2.tx;
  *&t2.a = v110;
  *&t2.c = v109;
  t2.tx = v84;
  t2.ty = v85;
  *&v131.a = v86;
  *&v131.c = v87;
  *&v131.tx = v88;
  CGAffineTransformConcat(&v130, &t2, &v131);
  v89 = v130.tx;
  v90 = v130.ty;
  v113 = *&v130.a;
  v110 = *&v130.c;
  v145.origin.x = v80;
  v145.origin.y = a8 * 0.388888889;
  v145.size.width = v81;
  v145.size.height = a8 * 0.2225;
  v91 = CGRectGetMidX(v145);
  v146.origin.x = v80;
  v146.origin.y = a8 * 0.388888889;
  v146.size.width = v81;
  v146.size.height = a8 * 0.2225;
  v92 = CGRectGetMidY(v146);
  CGAffineTransformMakeTranslation(&t2, v91, v92);
  *&v131.c = v110;
  *&v131.a = v113;
  v131.tx = v89;
  v93 = *&v128;
  v131.ty = v90;
  v130 = t2;
  CGAffineTransformConcat(&t2, &v131, &v130);
  sub_1002E06A0(v121, v118, v119, v120, v64, &t2, v80, a8 * 0.388888889, v81, a8 * 0.2225);
  v95 = v94;
  [v94 drawInRect:{0.0, 0.0, v93, a8}];

  v96 = [a1 CGContext];
  CGContextSetFillColorWithColor(v96, v125);

  v97 = CGPathCreateMutable();
  sub_1005734C8();
  v98 = [a1 CGContext];
  CGContextAddPath(v98, v97);

  v99 = [a1 CGContext];
  v100 = v112;
  v101 = v127;
  v115(v112, v116, v127);
  sub_100573398();

  v114(v100, v101);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_100582500;
  *(v102 + 32) = v74;
  v103 = v74;
  v104 = [v64 colorWithAlphaComponent:0.0];
  v105 = [v104 CGColor];

  *(v102 + 40) = v105;
  v106 = sub_100572D08().super.isa;

  v107 = CGGradientCreateWithColors(v76, v106, dbl_100685460);

  if (v107)
  {
    v108 = [a1 CGContext];
    v136.y = 0.0;
    v138.y = 0.0;
    v136.x = v93 * 0.5;
    v138.x = v93 * 0.5;
    CGContextDrawRadialGradient(v108, v107, v136, 0.0, v138, v136.x, 0);

    v97 = v108;
  }

  else
  {
    v107 = v117;
  }
}

void sub_1002E06A0(void *a1, void *a2, void *a3, void *a4, void *a5, _OWORD *a6, double a7, double a8, double a9, double a10)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  *(v20 + 32) = a4;
  *(v20 + 40) = a5;
  *(v20 + 48) = a7;
  *(v20 + 56) = a8;
  *(v20 + 64) = a9;
  *(v20 + 72) = a10;
  v21 = a6[1];
  *(v20 + 80) = *a6;
  *(v20 + 96) = v21;
  *(v20 + 112) = a6[2];
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1002E3384;
  *(v22 + 24) = v20;
  v35[4] = sub_1002DCE34;
  v35[5] = v22;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 1107296256;
  v35[2] = sub_1001D65E4;
  v35[3] = &unk_100699CA0;
  v23 = _Block_copy(v35);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;

  v28 = [a1 imageWithActions:v23];
  _Block_release(v23);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    v29 = [v28 CGImage];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_allocWithZone(CIImage) initWithCGImage:v29];
      v32 = [v31 imageByClampingToExtent];
      v33 = [v32 imageByApplyingGaussianBlurWithSigma:20.0];
      [v31 extent];
      v34 = [v33 imageByCroppingToRect:?];
      [objc_allocWithZone(UIImage) initWithCIImage:v34];
    }

    else
    {
    }
  }
}

uint64_t sub_1002E0958(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  v12 = sub_10056CF48();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 CGContext];
  v18 = [a9 colorWithAlphaComponent:0.55];
  v19 = [v18 CGColor];

  CGContextSetFillColorWithColor(v17, v19);
  Mutable = CGPathCreateMutable();
  sub_1005734C8();
  v21 = [a1 CGContext];
  CGContextAddPath(v21, Mutable);

  v22 = [a1 CGContext];
  (*(v13 + 104))(v16, enum case for CGPathFillRule.winding(_:), v12);
  sub_100573398();

  return (*(v13 + 8))(v16, v12);
}

void sub_1002E0B5C(void *a1, void *a2, void *a3, void *a4, double a5, CGFloat a6)
{
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FC958;
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100582570;
  *(v13 + 32) = [a2 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  *(v13 + 56) = [a4 CGColor];
  *(v13 + 64) = [a3 CGColor];
  *(v13 + 72) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_100685490);

  if (v15)
  {
    v16 = [a1 CGContext];
    v31.x = 0.0;
    v31.y = 0.0;
    v34.x = 0.0;
    v34.y = a6;
    CGContextDrawLinearGradient(v16, v15, v31, v34, 0);
  }

  v17 = [a1 CGContext];
  CGContextSaveGState(v17);

  v18 = a5 * 0.5;
  [a1 clipToRect:{v18, 0.0, v18, a6}];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100582570;
  *(v19 + 32) = [a2 CGColor];
  *(v19 + 40) = [a2 CGColor];
  *(v19 + 48) = [a3 CGColor];
  *(v19 + 56) = [a4 CGColor];
  *(v19 + 64) = [a3 CGColor];
  *(v19 + 72) = [a3 CGColor];
  v20 = sub_100572D08().super.isa;

  v21 = CGGradientCreateWithColors(v12, v20, dbl_1006854E0);

  if (v21)
  {
    v22 = [a1 CGContext];
    v35.y = 0.0;
    v32.x = v18;
    v32.y = a6;
    v35.x = v18;
    CGContextDrawLinearGradient(v22, v21, v32, v35, 0);
  }

  v23 = [a1 CGContext];
  CGContextRestoreGState(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100582500;
  *(v24 + 32) = [a2 CGColor];
  v25 = [a2 colorWithAlphaComponent:0.0];
  v26 = [v25 CGColor];

  *(v24 + 40) = v26;
  v27 = sub_100572D08().super.isa;

  v28 = CGGradientCreateWithColors(v12, v27, dbl_100685530);

  if (v28)
  {
    v29 = [a1 CGContext];
    v36.y = a6 * 0.5;
    v33.x = 0.0;
    v33.y = 0.0;
    v36.x = 0.0;
    CGContextDrawLinearGradient(v29, v28, v33, v36, 0);
  }
}

void sub_1002E0FF4(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  v13 = [a1 CGContext];
  v14 = [a7 CGColor];
  CGContextSetFillColorWithColor(v13, v14);

  v15 = 0.0;
  [a1 fillRect:{0.0, 0.0, a4, a5}];
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100582490;
  *(v16 + 32) = [a2 CGColor];
  *(v16 + 40) = [a3 CGColor];
  v17 = [a7 colorWithAlphaComponent:0.0];
  v18 = [v17 CGColor];

  *(v16 + 48) = v18;
  type metadata accessor for CGColor(0);
  colors = sub_100572D08().super.isa;

  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v19 = 0;
  v20 = qword_1006FC958;
  v21 = a4 / 9.0;
  while (1)
  {
    v22 = *(&off_100685540 + v19 + 32);
    v23 = CGGradientCreateWithColors(v20, colors, *(&off_1006857D0 + v19 + 32) + 4);
    if (v23)
    {
      v24 = v23;
      v25 = v22 * a5;
      v26 = [a1 CGContext];
      CGContextSaveGState(v26);

      [a1 clipToRect:{v15, a5 - v25, v21, v25}];
      v27 = [a1 CGContext];
      v38.x = v15;
      v38.y = a5;
      v40.x = v15;
      v40.y = a5 - v25;
      CGContextDrawLinearGradient(v27, v24, v38, v40, 0);

      v28 = [a1 CGContext];
      CGContextRestoreGState(v28);
    }

    if (v19 == 64)
    {
      break;
    }

    v15 = v21 + v15;
    v19 += 8;
  }

  sub_100009DCC(&qword_1006EC920, &qword_100592C50);
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100582500;
  *(v29 + 32) = [a7 CGColor];
  v30 = [a7 colorWithAlphaComponent:0.0];
  v31 = [v30 CGColor];

  *(v29 + 40) = v31;
  isa = sub_100572D08().super.isa;

  v33 = CGGradientCreateWithColors(v20, isa, dbl_1006857C0);

  if (v33)
  {
    v34 = [a1 CGContext];
    v39.x = a4 * 0.145;
    v39.y = a5 * 0.23;
    v41.x = a4 * 0.145;
    v41.y = a5 * 0.23;
    CGContextDrawRadialGradient(v34, v33, v39, 0.0, v41, a4 * 0.3715, 0);

    v35 = v34;
  }

  else
  {
    v35 = colors;
  }
}

void sub_1002E1440(void *a1, void *a2, double a3, double a4, uint64_t a5, void *a6, void *a7)
{
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v13 = qword_1006FC958;
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100582570;
  *(v14 + 32) = [a2 CGColor];
  *(v14 + 40) = [a6 CGColor];
  *(v14 + 48) = [a7 CGColor];
  *(v14 + 56) = [a2 CGColor];
  *(v14 + 64) = [a6 CGColor];
  *(v14 + 72) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v16 = CGGradientCreateWithColors(v13, isa, dbl_100685858);

  if (v16)
  {
    v17 = [a1 CGContext];
    v27.x = a3 * 0.5;
    v27.y = a4 * 0.5;
    CGContextDrawConicGradient(v17, v16, v27, -0.77562432);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100582490;
  *(v18 + 32) = [a2 CGColor];
  v19 = [a2 colorWithAlphaComponent:0.7];
  v20 = [v19 CGColor];

  *(v18 + 40) = v20;
  v21 = [a2 colorWithAlphaComponent:0.0];
  v22 = [v21 CGColor];

  *(v18 + 48) = v22;
  v23 = sub_100572D08().super.isa;

  v24 = CGGradientCreateWithColors(v13, v23, dbl_1006858A8);

  if (v24)
  {
    v25 = [a1 CGContext];
    v29.y = a4 * 0.5;
    v28.x = 0.0;
    v28.y = 0.0;
    v29.x = 0.0;
    CGContextDrawLinearGradient(v25, v24, v28, v29, 0);
  }
}

void sub_1002E179C(void *a1, void *a2, void *a3, double a4, CGFloat a5, uint64_t a6, void *a7)
{
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v12 = qword_1006FC958;
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100582490;
  *(v13 + 32) = [a7 CGColor];
  *(v13 + 40) = [a2 CGColor];
  *(v13 + 48) = [a3 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v15 = CGGradientCreateWithColors(v12, isa, dbl_1006858E0);

  if (v15)
  {
    v16 = [a1 CGContext];
    v35.x = 0.0;
    v35.y = 0.0;
    v38.x = 0.0;
    v38.y = a5;
    CGContextDrawLinearGradient(v16, v15, v35, v38, 0);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100582490;
  *(v18 + 32) = [a7 CGColor];
  *(v18 + 40) = [a7 CGColor];
  v19 = [a7 colorWithAlphaComponent:0.0];
  v20 = [v19 CGColor];

  *(v18 + 48) = v20;
  v21 = sub_100572D08().super.isa;

  v22 = CGGradientCreateWithColors(DeviceRGB, v21, dbl_100685918);

  if (v22)
  {
    v23 = [a1 CGContext];
    v36.x = a4 * 0.5;
    v36.y = a5 * 0.907407407;
    v39.y = a5 * 0.5;
    v39.x = a4 * 0.5;
    CGContextDrawRadialGradient(v23, v22, v36, a4 * 0.0185185185, v39, a4 * 0.472222222, 3u);
  }

  v24 = CGColorSpaceCreateDeviceRGB();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100582550;
  *(v25 + 32) = [a2 CGColor];
  *(v25 + 40) = [a2 CGColor];
  v26 = [a7 colorWithAlphaComponent:0.0];
  v27 = [v26 CGColor];

  *(v25 + 48) = v27;
  v28 = [a7 colorWithAlphaComponent:0.0];
  v29 = [v28 CGColor];

  *(v25 + 56) = v29;
  v30 = sub_100572D08().super.isa;

  v31 = CGGradientCreateWithColors(v24, v30, dbl_100685950);

  if (v31)
  {
    v33 = [a1 CGContext];
    v37.x = a4 * 0.5;
    v37.y = a5 * 0.907407407;
    v40.y = a5 * 0.5;
    v40.x = a4 * 0.5;
    CGContextDrawRadialGradient(v33, v31, v37, a4 * 0.0185185185, v40, a4 * 0.472222222, 3u);
  }
}

void sub_1002E1C0C(double a1, double a2, double a3, double a4)
{
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v8 = qword_1006FC3B8;
  v9 = sub_100572898();
  v10 = [objc_opt_self() imageNamed:v9 inBundle:v8];

  if (v10)
  {
    [v10 drawInRect:{a1, a2, a3, a4}];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E1D24(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, uint64_t a10, void *a11, void *a12)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100582550;
  *(v24 + 32) = [a2 CGColor];
  *(v24 + 40) = [a2 CGColor];
  *(v24 + 48) = [a3 CGColor];
  *(v24 + 56) = [a11 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v26 = CGGradientCreateWithColors(DeviceRGB, isa, dbl_100685990);

  if (v26)
  {
    v27 = [a1 CGContext];
    v48.x = a4 * 0.324074074;
    v51.x = a4 * 0.724074074;
    v48.y = 0.0;
    v51.y = a5;
    CGContextDrawLinearGradient(v27, v26, v48, v51, 3u);
  }

  v28 = [a1 CGContext];
  CGContextSaveGState(v28);

  v29 = [a1 CGContext];
  CGContextTranslateCTM(v29, 0.0, a9);

  v30 = [a1 CGContext];
  CGContextScaleCTM(v30, 1.0, -1.0);

  v31 = [a1 CGContext];
  v32 = [a12 CGImage];
  if (v32)
  {
    v33 = v32;
    v54.origin.x = a6;
    v54.origin.y = a7;
    v54.size.width = a8;
    v54.size.height = a9;
    CGContextClipToMask(v31, v54, v32);

    v34 = CGColorSpaceCreateDeviceRGB();
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100582550;
    *(v35 + 32) = [a11 CGColor];
    *(v35 + 40) = [a3 CGColor];
    *(v35 + 48) = [a2 CGColor];
    *(v35 + 56) = [a2 CGColor];
    v36 = sub_100572D08().super.isa;

    v37 = CGGradientCreateWithColors(v34, v36, dbl_1006859D0);

    if (v37)
    {
      v38 = [a1 CGContext];
      v49.y = 0.0;
      v52.x = 0.0;
      v49.x = a4;
      v52.y = a5;
      CGContextDrawLinearGradient(v38, v37, v49, v52, 0);
    }

    v39 = [a1 CGContext];
    CGContextRestoreGState(v39);

    v40 = CGColorSpaceCreateDeviceRGB();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100582500;
    *(v41 + 32) = [a2 CGColor];
    v42 = [a3 colorWithAlphaComponent:0.0];
    v43 = [v42 CGColor];

    *(v41 + 40) = v43;
    v44 = sub_100572D08().super.isa;

    v45 = CGGradientCreateWithColors(v40, v44, dbl_100685A10);

    if (v45)
    {
      v46 = [a1 CGContext];
      v53.y = a5 * 0.5;
      v50.x = 0.0;
      v50.y = 0.0;
      v53.x = 0.0;
      CGContextDrawLinearGradient(v46, v45, v50, v53, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E2208(void *a1, void *a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v13 = [a1 CGContext];
  CGContextSetBlendMode(v13, kCGBlendModeNormal);

  [a2 setFill];
  [a1 fillRect:{0.0, 0.0, a3, a4}];
  if (qword_1006E4FD8 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC958;
  sub_100009DCC(&qword_1006E8B80, &unk_1005888A0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100582510;
  *(v15 + 32) = [a2 CGColor];
  *(v15 + 40) = [a2 CGColor];
  *(v15 + 48) = [a6 CGColor];
  v16 = [a7 colorWithAlphaComponent:0.9];
  v17 = [v16 CGColor];

  *(v15 + 56) = v17;
  *(v15 + 64) = [a7 CGColor];
  type metadata accessor for CGColor(0);
  isa = sub_100572D08().super.isa;

  v19 = CGGradientCreateWithColors(v14, isa, dbl_100685A40);

  if (v19)
  {
    v20 = [a1 CGContext];
    v30.x = 0.0;
    v30.y = 0.0;
    v28.x = a3;
    v28.y = a4;
    CGContextDrawLinearGradient(v20, v19, v28, v30, 3u);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100582500;
  *(v21 + 32) = [a7 CGColor];
  v22 = [a7 colorWithAlphaComponent:0.0];
  v23 = [v22 CGColor];

  *(v21 + 40) = v23;
  v24 = sub_100572D08().super.isa;

  v25 = CGGradientCreateWithColors(v14, v24, dbl_100685A88);

  if (v25)
  {
    v26 = [a1 CGContext];
    v31.y = a4 * 0.5;
    v29.x = 0.0;
    v29.y = 0.0;
    v31.x = 0.0;
    CGContextDrawLinearGradient(v26, v25, v29, v31, 3u);
  }
}

void sub_1002E256C(void *a1, double a2, double a3)
{
  v6 = sub_10056CF48();
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 / 3.0;
  if (a2 / 3.0 == 0.0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v11 = a2 >= 0.0;
  if (v10 > 0.0)
  {
    v11 = a2 <= 0.0;
  }

  if (!v11)
  {
    v12 = 0;
    v13 = a3 / 3.0;
    v14 = a3 >= 0.0;
    if (a3 / 3.0 > 0.0)
    {
      v14 = a3 <= 0.0;
    }

    v28 = v14;
    v30 = enum case for CGPathFillRule.winding(_:);
    v15 = (v7 + 104);
    v16 = (v7 + 8);
    v27 = a2;
    while (1)
    {
      v19 = __OFADD__(v12, 1);
      v20 = v12 + 1;
      if (v19)
      {
        break;
      }

      if (v13 == 0.0)
      {
        goto LABEL_23;
      }

      v29 = v20;
      if (!v28)
      {
        v21 = 0;
        while (!__OFADD__(v21, 1))
        {
          v22 = (v21 + 1) * v13 + 0.0;
          Mutable = CGPathCreateMutable();
          v32 = 0;
          v33 = 0;
          v31 = 0x3FF0000000000000;
          v34 = 0x3FF0000000000000;
          v35 = 0;
          v36 = 0;
          sub_1005734D8();
          v24 = [a1 CGContext];
          CGContextAddPath(v24, Mutable);

          v25 = [a1 CGContext];
          (*v15)(v9, v30, v6);
          sub_100573398();

          (*v16)(v9, v6);
          v26 = v22 <= a3;
          if (v13 > 0.0)
          {
            v26 = v22 >= a3;
          }

          ++v21;
          if (v26)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
        break;
      }

LABEL_9:
      v12 = v29;
      v17 = v29 * v10 + 0.0;
      v18 = v17 <= v27;
      if (v10 > 0.0)
      {
        v18 = v17 >= v27;
      }

      if (v18)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_1002E2838(void *a1, int a2, uint64_t a3, uint64_t a4, id a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, void *a10, id *a11)
{
  [a5 setFill];
  [a1 fillRect:0 blendMode:{a6, a7, a8, a9}];
  v18 = [a1 CGContext];
  CGContextSaveGState(v18);

  v19 = [a1 CGContext];
  v20 = [a10 CGImage];
  if (v20)
  {
    v21 = v20;
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    CGContextClipToMask(v19, v24, v20);

    [*a11 drawInRect:0 blendMode:a6 alpha:{a7, a8, a9, 1.0}];
    v22 = [a1 CGContext];
    CGContextRestoreGState(v22);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E29A8(uint64_t a1, int *a2)
{
  *(v2 + 40) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1002E2A9C;

  return v5(v2 + 16);
}

uint64_t sub_1002E2A9C()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v6 = *v0;

  v3 = *(v1 + 24);
  *v2 = *(v1 + 16);
  *(v2 + 8) = v3;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t _s9MusicCore14PlaylistCoversO10ExpressionO8rawValueAESgSi_tcfC_0(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

void sub_1002E2BCC(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6, double a7)
{
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:a5 format:{a6, a7}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a6;
  *(v13 + 40) = a7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002E340C;
  *(v14 + 24) = v13;
  v31 = sub_1002DCE34;
  v32 = v14;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001D65E4;
  v30 = &unk_100699EF8;
  v15 = _Block_copy(&aBlock);

  v16 = [v12 imageWithActions:v15];
  _Block_release(v15);
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
    goto LABEL_5;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *(v17 + 48) = a6;
  *(v17 + 56) = a7;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0;
  *(v17 + 80) = a6;
  *(v17 + 88) = a7;
  *(v17 + 96) = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002E3480;
  *(v18 + 24) = v17;
  v31 = sub_1002DCE34;
  v32 = v18;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1001D65E4;
  v30 = &unk_100699F70;
  v19 = _Block_copy(&aBlock);
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = v16;

  [v12 imageWithActions:v19];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t sub_1002E2EEC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = *(v2 + 6);
  v11 = *(v2 + 7);
  v12 = *(v2 + 8);
  v13 = *(v2 + 9);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000116F0;

  return sub_1002DE8B8(a1, a2, v6, v9, v10, v11, v12, v13, v7, v8);
}

unint64_t sub_1002E2FE4()
{
  result = qword_1006EC8F8;
  if (!qword_1006EC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EC8F8);
  }

  return result;
}

uint64_t sub_1002E308C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002E30EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10000CB98;

  return sub_1002DF378(a1, v6, v7, v4, v5, v12, v8, v9, v10, v11);
}

uint64_t sub_1002E31F0()
{

  return swift_deallocObject();
}

uint64_t sub_1002E3228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return sub_1002E29A8(a1, v4);
}

uint64_t sub_1002E32F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002E3310()
{

  return swift_deallocObject();
}

uint64_t sub_1002E3428()
{

  return swift_deallocObject();
}

uint64_t sub_1002E34A4(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1002E3538()
{

  return swift_deallocObject();
}

uint64_t Logger.playlistCovers.unsafeMutableAddressor()
{
  if (qword_1006E4FE0 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.playlistCovers);
}

uint64_t PlaylistCovers.RecipeColors.description.getter(void *a1, void *a2, void *a3, void *a4)
{
  sub_100573ED8(60);
  v25._object = 0x80000001005B4D30;
  v25._countAndFlagsBits = 0xD000000000000015;
  sub_100572A98(v25);
  v8 = [a1 description];
  v9 = sub_1005728D8();
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_100572A98(v26);

  v27._countAndFlagsBits = 0x32726F6C6F63202CLL;
  v27._object = 0xEA0000000000203ALL;
  sub_100572A98(v27);
  v12 = [a2 description];
  v13 = sub_1005728D8();
  v15 = v14;

  v28._countAndFlagsBits = v13;
  v28._object = v15;
  sub_100572A98(v28);

  v29._countAndFlagsBits = 0x33726F6C6F63202CLL;
  v29._object = 0xEA0000000000203ALL;
  sub_100572A98(v29);
  v16 = [a3 description];
  v17 = sub_1005728D8();
  v19 = v18;

  v30._countAndFlagsBits = v17;
  v30._object = v19;
  sub_100572A98(v30);

  v31._countAndFlagsBits = 0x34726F6C6F63202CLL;
  v31._object = 0xEA0000000000203ALL;
  sub_100572A98(v31);
  v20 = [a4 description];
  v21 = sub_1005728D8();
  v23 = v22;

  v32._countAndFlagsBits = v21;
  v32._object = v23;
  sub_100572A98(v32);

  v33._countAndFlagsBits = 41;
  v33._object = 0xE100000000000000;
  sub_100572A98(v33);
  return 0;
}

uint64_t static PlaylistCovers.RecipeColors.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_10019D680();
  if (sub_100573A58() & 1) != 0 && (sub_100573A58() & 1) != 0 && (sub_100573A58())
  {
    return sub_100573A58() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t PlaylistCovers.RecipeColors.hash(into:)(uint64_t a1)
{
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_100573A68();
}

Swift::Int PlaylistCovers.RecipeColors.hashValue.getter()
{
  sub_100574678();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

uint64_t sub_1002E3A50(uint64_t *a1, uint64_t *a2)
{
  sub_10019D680();
  if (sub_100573A58() & 1) != 0 && (sub_100573A58() & 1) != 0 && (sub_100573A58())
  {
    return sub_100573A58() & 1;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_1002E3AF0()
{
  sub_100574678();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

uint64_t sub_1002E3B70(uint64_t a1)
{
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_100573A68();
}

Swift::Int sub_1002E3BD4(uint64_t a1)
{
  sub_100574678();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  sub_100573A68();
  return sub_1005746C8();
}

uint64_t static PlaylistCovers.recipeColorsForSource(_:)(uint64_t a1)
{
  v1[17] = a1;
  v2 = sub_100572208();
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  v3 = sub_100572298();
  v1[21] = v3;
  v1[22] = *(v3 - 8);
  v1[23] = swift_task_alloc();
  sub_100009DCC(&unk_1006E8E60, &unk_10058B9F8);
  v1[24] = swift_task_alloc();
  v4 = sub_100571C48();
  v1[25] = v4;
  v1[26] = *(v4 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = sub_100009DCC(&qword_1006E6D20, &qword_100586FD0);
  v1[31] = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006E6D30, &qword_100586FE0);
  v1[32] = v5;
  v1[33] = *(v5 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = type metadata accessor for PlaylistCovers.Source(0);
  v1[36] = swift_task_alloc();

  return _swift_task_switch(sub_1002E3EEC, 0, 0);
}