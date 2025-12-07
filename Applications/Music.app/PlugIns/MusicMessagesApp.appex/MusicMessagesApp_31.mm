id sub_100301E80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void Lyrics.StateManager.tracklist.setter(void *a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      v6 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004D86AC();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100006F10(0, &qword_10063EB40, MPCPlayerResponseTracklist_ptr);
  v5 = v4;
  v6 = a1;
  v7 = sub_1004DE5FC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v1 + v3);
LABEL_8:
  *(v1 + v3) = a1;
  v9 = v6;

  sub_100301448();
}

void sub_100302104(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;

  sub_100301448();
}

uint64_t (*Lyrics.StateManager.tracklist.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100301D24(v4);
  return sub_1003022B4;
}

double sub_1003022C0(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v4 = &v30 - v3;
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_1004DC95C();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v36 = v2;
  v15 = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v33 = v14;
  v34 = v15;
  sub_1004D86BC();

  v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000108DC(&v2[v16], v8, &qword_10063EA08, &qword_10052A1A0);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_10001074C(v8, &qword_10063EA08, &qword_10052A1A0);
  }

  else
  {
    v30 = v4;
    v18 = *(v10 + 32);
    v18(v13, v8, v9);
    sub_1000108DC(v32, v6, &qword_10063EA08, &qword_10052A1A0);
    if (v17(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v13, v9);
      sub_10001074C(v6, &qword_10063EA08, &qword_10052A1A0);
    }

    else
    {
      v19 = v31;
      v18(v31, v6, v9);
      sub_10030D9EC(&qword_10063F120, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      if (sub_1004DC23C())
      {
        v20 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v13);
        v21 = _s11MusicCoreUI12LyricsLoaderC08supportsD03forSb0A3Kit4SongV_tFZ_0(v19);
        v22 = *(v10 + 8);
        v22(v19, v9);
        v22(v13, v9);
        v4 = v30;
        if (((v20 ^ v21) & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      v24 = *(v10 + 8);
      v24(v19, v9);
      v24(v13, v9);
    }

    v4 = v30;
  }

LABEL_10:
  swift_getKeyPath();
  v35 = v2;
  sub_1004D86BC();

  v25 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (*&v2[OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask])
  {

    sub_1004DDAFC();
    if (*&v2[v25])
    {
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v30 - 2) = v2;
      *(&v30 - 1) = 0;
      v35 = v2;
      sub_1004D86AC();
    }
  }

  v26 = sub_1004DDA8C();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  sub_1004DDA4C();

  v27 = sub_1004DDA3C();
  v28 = swift_allocObject();
  v28[2] = v27;
  v28[3] = &protocol witness table for MainActor;
  v28[4] = v2;
  sub_100302950(0, 0, v4, &unk_10052A878, v28);

  sub_100305D14(v29);

  return result;
}

uint64_t sub_1003028A4()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289D94;

  return sub_10030614C();
}

uint64_t sub_100302950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100643620, &qword_10052F9C0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100643620, &qword_10052F9C0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);

      return v22;
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

  sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100302C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100643620, &qword_10052F9C0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100643620, &qword_10052F9C0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100004CB8(&qword_10063F128, &qword_10052A840);
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

      sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);

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

  sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100004CB8(&qword_10063F128, &qword_10052A840);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100302F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_1000108DC(a3, v24 - v9, &qword_100643620, &qword_10052F9C0);
  v11 = sub_1004DDA8C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001074C(v10, &qword_100643620, &qword_10052F9C0);
  }

  else
  {
    sub_1004DDA7C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004DD9BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004DD52C() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100004CB8(&unk_100641880, &qword_10052A7A0);
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

      sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);

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

  sub_10001074C(a3, &qword_100643620, &qword_10052F9C0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100004CB8(&unk_100641880, &qword_10052A7A0);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void (*sub_100303278(uint64_t *a1))(char **a1, char a2)
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
  v5 = *(*(sub_100004CB8(&qword_10063EA08, &qword_10052A1A0) - 8) + 64);
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
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v4[12] = v6;
  v4[13] = v8;
  swift_beginAccess();
  sub_1000108DC(v1 + v8, v7, &qword_10063EA08, &qword_10052A1A0);
  return sub_1003033A8;
}

void sub_1003033A8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_1000108DC(*(*a1 + 12), v6, &qword_10063EA08, &qword_10052A1A0);
    sub_1000108DC(v7 + v4, v5, &qword_10063EA08, &qword_10052A1A0);
    swift_beginAccess();
    sub_1000613B8(v6, v7 + v4, &qword_10063EA08, &qword_10052A1A0);
    swift_endAccess();
    sub_1003022C0(v5);
    sub_10001074C(v5, &qword_10063EA08, &qword_10052A1A0);
  }

  else
  {
    sub_1000108DC(v7 + v4, v6, &qword_10063EA08, &qword_10052A1A0);
    swift_beginAccess();
    sub_1000613B8(v3, v7 + v4, &qword_10063EA08, &qword_10052A1A0);
    swift_endAccess();
    sub_1003022C0(v6);
  }

  sub_10001074C(v6, &qword_10063EA08, &qword_10052A1A0);
  sub_10001074C(v3, &qword_10063EA08, &qword_10052A1A0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_100303540(uint64_t a1)
{
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000108DC(a1, &v5 - v2, &qword_10063EA08, &qword_10052A1A0);
  return Lyrics.StateManager.song.setter(v3);
}

uint64_t Lyrics.StateManager.song.setter(uint64_t a1)
{
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000108DC(v1 + v7, v6, &qword_10063EA08, &qword_10052A1A0);
  v8 = sub_10030C5B8(v6, a1);
  sub_10001074C(v6, &qword_10063EA08, &qword_10052A1A0);
  if (v8)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004D86AC();
  }

  else
  {
    sub_1000108DC(a1, v6, &qword_10063EA08, &qword_10052A1A0);
    sub_1000108DC(v1 + v7, v4, &qword_10063EA08, &qword_10052A1A0);
    swift_beginAccess();
    sub_1000613B8(v6, v1 + v7, &qword_10063EA08, &qword_10052A1A0);
    swift_endAccess();
    sub_1003022C0(v4);
    sub_10001074C(v4, &qword_10063EA08, &qword_10052A1A0);
    sub_10001074C(v6, &qword_10063EA08, &qword_10052A1A0);
  }

  return sub_10001074C(a1, &qword_10063EA08, &qword_10052A1A0);
}

uint64_t sub_100303854(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v10[-v6];
  sub_1000108DC(a2, &v10[-v6], &qword_10063EA08, &qword_10052A1A0);
  v8 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000108DC(a1 + v8, v5, &qword_10063EA08, &qword_10052A1A0);
  swift_beginAccess();
  sub_1000613B8(v7, a1 + v8, &qword_10063EA08, &qword_10052A1A0);
  swift_endAccess();
  sub_1003022C0(v5);
  sub_10001074C(v5, &qword_10063EA08, &qword_10052A1A0);
  return sub_10001074C(v7, &qword_10063EA08, &qword_10052A1A0);
}

uint64_t (*Lyrics.StateManager.song.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100303278(v4);
  return sub_100303AEC;
}

uint64_t (*Lyrics.StateManager.showTranslationButton.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100303AF8(v4);
  return sub_100303CA4;
}

uint64_t sub_100303D24(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_100303DD8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t (*Lyrics.StateManager.needsLyricsReset.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100303CB0(v4);
  return sub_100303FD8;
}

uint64_t (*Lyrics.StateManager.currentTranslation.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100303FE4(v4);
  return sub_1003041D0;
}

uint64_t sub_100304260@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v10 = *a2;
  swift_beginAccess();
  return sub_1000108DC(v12 + v10, a5, a3, a4);
}

uint64_t sub_100304340@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v11 = *a3;
  swift_beginAccess();
  return sub_1000108DC(v10 + v11, a6, a4, a5);
}

uint64_t sub_100304454(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_1000613B8(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

uint64_t (*Lyrics.StateManager.currentTransliteration.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_1003041DC(v4);
  return sub_10030460C;
}

uint64_t sub_10030469C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_100004CB8(a5, a6);
  __chkstk_darwin();
  v13 = &v16[-v12];
  sub_1000108DC(a1, &v16[-v12], a5, a6);
  v14 = *a2;
  swift_getKeyPath();
  v17 = v14;
  v18 = v13;
  v19 = v14;
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86AC();

  return sub_10001074C(v13, a5, a6);
}

uint64_t sub_100304810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86AC();

  return sub_10001074C(a1, a4, a5);
}

uint64_t (*Lyrics.StateManager.metricsPage.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1004D86DC();

  v4[7] = sub_100304618(v4);
  return sub_100304A28;
}

void sub_100304A34(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1004D86CC();

  free(v3);
}

Swift::Void __swiftcall Lyrics.StateManager.retryLoadingLyrics()()
{
  v1 = v0;
  sub_100004CB8(&qword_100643620, &qword_10052F9C0);
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = sub_1004DDA8C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1004DDA4C();

  v5 = sub_1004DDA3C();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v1;
  sub_100302950(0, 0, v3, &unk_10052A4F0, v6);
}

uint64_t sub_100304BEC()
{
  v0[2] = sub_1004DDA4C();
  v0[3] = sub_1004DDA3C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100289BA8;

  return sub_10030614C();
}

uint64_t sub_100304C98()
{
  v1 = sub_1004D9CEC();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin();
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v25 = type metadata accessor for Lyrics.StateManager.State(0);
  v8 = *(v25 + 24);
  sub_1000108DC(v0 + v8, v7, &qword_100641C40, &qword_10052EA60);
  v9 = sub_1004D826C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = v7;
  v13 = v0;
  sub_10001074C(v12, &qword_100641C40, &qword_10052EA60);
  if (v11 == 1)
  {
    sub_10030C464(v0, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10030D7EC(*v4, *(v4 + 1), *(v4 + 2), *(v4 + 3), v4[32]);
      v14 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
      v15 = sub_1004DC95C();
      (*(*(v15 - 8) + 8))(&v4[v14], v15);
      v16 = v26;
      v17 = v0 + *(v25 + 20);
      v19 = v27;
      v18 = v28;
      (*(v27 + 104))(v26, enum case for ScenePhase.active(_:), v28);
      LOBYTE(v14) = sub_1004D9CDC();
      (*(v19 + 8))(v16, v18);
      if (v14)
      {
        v20 = type metadata accessor for Lyrics.StateManager.State.Display(0);
        if (*(v17 + *(v20 + 20)) == 1 && *(v17 + *(v20 + 24)) == 1)
        {
          v21 = v24;
          sub_1004D823C();
          (*(v10 + 56))(v21, 0, 1, v9);
          return sub_10030DBA0(v21, v13 + v8);
        }
      }
    }

    else
    {
      sub_10030C4CC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    }
  }

  sub_10001074C(v13 + v8, &qword_100641C40, &qword_10052EA60);
  return (*(v10 + 56))(v13 + v8, 1, 1, v9);
}

uint64_t Lyrics.StateManager.State.loading.setter(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v9 - v5;
  sub_10030C464(v1, &v9 - v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030CBB8(a1, v1, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030C464(v1, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  v7 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
  sub_10030C4CC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((v7 & 1) == 0)
  {
    sub_100304C98();
  }

  sub_10030C4CC(a1, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_10030C4CC(v6, type metadata accessor for Lyrics.StateManager.State.Loading);
}

void (*Lyrics.StateManager.State.loading.modify(void *a1))(uint64_t **a1, char a2)
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
  *v3 = v1;
  v5 = *(*(type metadata accessor for Lyrics.StateManager.State.Loading(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v5);
    v4[2] = malloc(v5);
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  sub_10030C464(v1, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
  return sub_100305308;
}

void sub_100305308(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v4 = v2[3];
    v7 = *v2;
    v6 = v2[1];
    sub_10030C464((*a1)[5], v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v7, v6, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v5, v7, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v7, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    v8 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v4, v6);
    sub_10030C4CC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v8 & 1) == 0)
    {
      sub_100304C98();
    }

    v10 = v2[4];
    v9 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    sub_10030C4CC(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    v14 = v13;
    v15 = v9;
  }

  else
  {
    v17 = v2[3];
    v16 = v2[4];
    v18 = *v2;
    sub_10030C464(*v2, v16, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v3, v18, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v18, v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    v19 = _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v17, v16);
    sub_10030C4CC(v17, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((v19 & 1) == 0)
    {
      sub_100304C98();
    }

    v9 = v2[4];
    v14 = v2[5];
    v12 = v2[2];
    v11 = v2[3];
    v13 = v2[1];
    v15 = v14;
    v10 = v9;
  }

  sub_10030C4CC(v14, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030C4CC(v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  free(v15);
  free(v10);
  free(v11);
  free(v12);
  free(v13);

  free(v2);
}

uint64_t Lyrics.StateManager.State.display.setter(uint64_t a1)
{
  v3 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *(type metadata accessor for Lyrics.StateManager.State(0) + 20);
  sub_10030C464(v1 + v8, v7, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_10030CBB8(a1, v1 + v8, type metadata accessor for Lyrics.StateManager.State.Display);
  sub_10030C464(v1 + v8, v5, type metadata accessor for Lyrics.StateManager.State.Display);
  if ((sub_1004D9CDC() & 1) != 0 && v5[*(v3 + 20)] == v7[*(v3 + 20)])
  {
    v10 = v5[*(v3 + 24)];
    sub_10030C4CC(v5, type metadata accessor for Lyrics.StateManager.State.Display);
    if (v10 == v7[*(v3 + 24)])
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_10030C4CC(v5, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  sub_100304C98();
LABEL_5:
  sub_10030C4CC(a1, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_10030C4CC(v7, type metadata accessor for Lyrics.StateManager.State.Display);
}

void (*Lyrics.StateManager.State.display.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for Lyrics.StateManager.State.Display(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[2] = v4;
  v6 = type metadata accessor for Lyrics.StateManager.State(0);
  sub_10030C464(v1 + *(v6 + 20), v5, type metadata accessor for Lyrics.StateManager.State.Display);
  return sub_1003057AC;
}

void sub_1003057AC(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_10030C464(*(a1 + 16), v2, type metadata accessor for Lyrics.StateManager.State.Display);
    Lyrics.StateManager.State.display.setter(v2);
    sub_10030C4CC(v3, type metadata accessor for Lyrics.StateManager.State.Display);
  }

  else
  {
    Lyrics.StateManager.State.display.setter(*(a1 + 16));
  }

  free(v3);

  free(v2);
}

uint64_t Lyrics.StateManager.State.Loading.lyricsType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10030C464(v2, v5, type metadata accessor for Lyrics.StateManager.State.Loading);
  result = swift_getEnumCaseMultiPayload();
  v7 = 0uLL;
  if (!result)
  {
    result = sub_10030C4CC(v5, type metadata accessor for Lyrics.StateManager.State.Loading);
    v7 = 0uLL;
    goto LABEL_5;
  }

  if (result != 1)
  {
LABEL_5:
    v9 = -1;
    v12 = 0uLL;
    goto LABEL_6;
  }

  v8 = *v5;
  v13 = *(v5 + 1);
  v14 = v8;
  v9 = v5[32];
  v10 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
  v11 = sub_1004DC95C();
  result = (*(*(v11 - 8) + 8))(&v5[v10], v11);
  v12 = v13;
  v7 = v14;
LABEL_6:
  *a1 = v7;
  *(a1 + 16) = v12;
  *(a1 + 32) = v9;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004D9CEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Lyrics.StateManager.State.Display.scenePhase.setter(uint64_t a1)
{
  v3 = sub_1004D9CEC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Lyrics.StateManager.State.Display.sceneIsVisible.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t Lyrics.StateManager.State.Display.hasAppeared.setter(char a1)
{
  result = type metadata accessor for Lyrics.StateManager.State.Display(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t static Lyrics.StateManager.State.Display.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1004D9CDC() & 1) != 0 && (v4 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    v5 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_100305C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1004D9CDC() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_100305CA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v5, v7) & 1;
}

double sub_100305D14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask;
  if (!*(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentLyricsTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
    sub_1004D86AC();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = sub_1004DDADC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;

  return result;
}

double sub_100305EB8(uint64_t a1)
{
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  return result;
}

double sub_100305F5C@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  *a4 = *(v6 + *a3);

  return result;
}

double sub_10030603C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86AC();

  return result;
}

uint64_t sub_10030614C()
{
  v1[74] = v0;
  sub_100004CB8(&qword_10063EB50, &qword_10052A4B0);
  v1[75] = swift_task_alloc();
  sub_100004CB8(&qword_10063EB48, &qword_10052A480);
  v1[76] = swift_task_alloc();
  v2 = sub_1004D966C();
  v1[77] = v2;
  v1[78] = *(v2 - 8);
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  type metadata accessor for Lyrics.StateManager.State(0);
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v1[87] = swift_task_alloc();
  v1[88] = swift_task_alloc();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = swift_task_alloc();
  v1[107] = swift_task_alloc();
  v1[108] = swift_task_alloc();
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v3 = sub_1004DC95C();
  v1[111] = v3;
  v1[112] = *(v3 - 8);
  v1[113] = swift_task_alloc();
  v1[114] = swift_task_alloc();
  v1[115] = swift_task_alloc();
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v1[118] = swift_task_alloc();
  sub_1004DDA4C();
  v1[119] = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  v1[120] = v5;
  v1[121] = v4;

  return _swift_task_switch(sub_100306524, v5, v4);
}

uint64_t sub_100306524()
{
  v68 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[74];
  swift_getKeyPath();
  v0[122] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v0[41] = v4;
  v0[123] = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v5 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  v0[124] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song;
  swift_beginAccess();
  sub_1000108DC(v4 + v5, v3, &qword_10063EA08, &qword_10052A1A0);
  v6 = *(v1 + 48);
  v0[125] = v6;
  v0[126] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v6(v3, 1, v2) == 1)
  {
    v7 = v0[110];
    v8 = v0[98];
    v66 = v0[97];
    v9 = v0[85];
    v10 = v0[74];

    sub_10001074C(v7, &qword_10063EA08, &qword_10052A1A0);
    *v8 = 0;
    *(v8 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[73] = v10;
    sub_1004D86BC();

    v0[69] = v10;
    swift_getKeyPath();
    sub_1004D86DC();

    v11 = v10 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_10030C464(v11, v9, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v9, v66, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v8, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v9, v66) & 1) == 0)
    {
      sub_100304C98();
    }

    v12 = v0[98];
    v13 = v0[90];
    v14 = v0[85];
    v15 = v0[74];
    sub_10030C4CC(v0[97], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v12, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v11, v13, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v14, v11, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v13);
    sub_10030C4CC(v13, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v14, type metadata accessor for Lyrics.StateManager.State);
    v0[63] = v15;
    swift_getKeyPath();
    sub_1004D86CC();

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[118];
    v19 = v0[112];
    v20 = v0[111];
    v21 = v0[110];
    v22 = v0[108];
    v63 = v0[107];
    v23 = v0[91];
    v24 = v0[74];
    v25 = *(v19 + 32);
    v0[127] = v25;
    v0[128] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v25(v18, v21, v20);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v0[58] = v24;
    sub_1004D86BC();

    v0[55] = v24;
    swift_getKeyPath();
    sub_1004D86DC();

    v26 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    v0[129] = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
    swift_beginAccess();
    sub_10030C464(v24 + v26, v23, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v23, v63, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v22, v23, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v23, v63) & 1) == 0)
    {
      sub_100304C98();
    }

    v61 = v0[117];
    v64 = v0[118];
    v27 = v0[112];
    v28 = v0[108];
    v29 = v0[91];
    v30 = v0[90];
    v56 = v0[82];
    v31 = v0[78];
    v57 = v0[77];
    v59 = v0[111];
    v32 = v0[74];
    sub_10030C4CC(v0[107], type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v28, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v24 + v26, v30, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v29, v24 + v26, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v30);
    sub_10030C4CC(v30, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v29, type metadata accessor for Lyrics.StateManager.State);
    v0[52] = v32;
    swift_getKeyPath();
    sub_1004D86CC();

    v33 = Logger.lyrics.unsafeMutableAddressor();
    v0[130] = v33;
    v34 = *(v31 + 16);
    v0[131] = v34;
    v0[132] = (v31 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v34(v56, v33, v57);
    v35 = *(v27 + 16);
    v0[133] = v35;
    v0[134] = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v35(v61, v64, v59);
    v36 = sub_1004D964C();
    v37 = sub_1004DDF9C();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v0[117];
    v40 = v0[112];
    v41 = v0[111];
    v42 = v0[82];
    v43 = v0[78];
    v44 = v0[77];
    if (v38)
    {
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v45 = 136446210;
      sub_10030D9EC(&qword_10063F118, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v60 = v44;
      v62 = v42;
      v46 = sub_1004DEFFC();
      v48 = v47;
      v58 = v37;
      v49 = *(v40 + 8);
      v49(v39, v41);
      v50 = sub_1002E5CC4(v46, v48, &v67);

      *(v45 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v36, v58, "[State] Loading lyrics song %{public}s", v45, 0xCu);
      sub_100008D24(v65);

      v51 = *(v43 + 8);
      v51(v62, v60);
    }

    else
    {

      v49 = *(v40 + 8);
      v49(v39, v41);
      v51 = *(v43 + 8);
      v51(v42, v44);
    }

    v0[136] = v49;
    v0[135] = v51;
    v52 = v0[74];
    swift_getKeyPath();
    v0[50] = v52;
    sub_1004D86BC();

    v53 = *(v52 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
    v0[137] = v53;
    v53;
    v54 = swift_task_alloc();
    v0[138] = v54;
    *v54 = v0;
    v54[1] = sub_100306FEC;
    v55 = v0[118];

    return LyricsLoader.loadLyrics(for:)(v55);
  }
}

uint64_t sub_100306FEC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  *(v5 + 1112) = a1;
  *(v5 + 1120) = a2;
  *(v5 + 323) = a3;
  *(v5 + 1128) = v3;

  if (v3)
  {
    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_100308728;
  }

  else
  {

    v6 = *(v5 + 968);
    v7 = *(v5 + 960);
    v8 = sub_10030711C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10030711C()
{
  v163 = v0;

  if (sub_1004DDB0C())
  {
    v1 = *(v0 + 1120);
    v2 = *(v0 + 1112);
    v3 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_100051E10(v2, v1, v3 & 1);
    goto LABEL_36;
  }

  v4 = *(v0 + 1000);
  v5 = *(v0 + 992);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);
  v8 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 424) = v8;
  sub_1004D86BC();

  sub_1000108DC(v8 + v5, v7, &qword_10063EA08, &qword_10052A1A0);
  if (v4(v7, 1, v6) == 1)
  {
    v9 = *(v0 + 1120);
    v10 = *(v0 + 1112);
    v11 = *(v0 + 872);
    v12 = *(v0 + 323);
    (*(v0 + 1088))(*(v0 + 944), *(v0 + 888));
    sub_100051E10(v10, v9, v12 & 1);
    sub_10001074C(v11, &qword_10063EA08, &qword_10052A1A0);
    goto LABEL_36;
  }

  (*(v0 + 1016))(*(v0 + 928), *(v0 + 872), *(v0 + 888));
  sub_10030D9EC(&qword_10063F120, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  v13 = sub_1004DC23C();
  v14 = *(v0 + 323);
  v15 = *(v0 + 1120);
  v16 = *(v0 + 1112);
  if ((v13 & 1) == 0)
  {
    v53 = *(v0 + 1088);
    v54 = *(v0 + 944);
    v55 = *(v0 + 928);
    v56 = *(v0 + 888);
    sub_100051E10(*(v0 + 1112), *(v0 + 1120), v14 & 1);
    v53(v55, v56);
    v53(v54, v56);
    goto LABEL_36;
  }

  v17 = *(v0 + 1064);
  v18 = *(v0 + 944);
  v19 = *(v0 + 920);
  v20 = *(v0 + 888);
  (*(v0 + 1048))(*(v0 + 648), *(v0 + 1040), *(v0 + 616));
  v17(v19, v18, v20);
  sub_100051E00(v16, v15, v14 & 1);
  v21 = sub_1004D964C();
  v22 = sub_1004DDF9C();
  sub_100051E10(v16, v15, v14 & 1);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = *(v0 + 1112);
    v24 = *(v0 + 920);
    v130 = *(v0 + 1088);
    v25 = *(v0 + 888);
    v149 = *(v0 + 648);
    v156 = *(v0 + 1080);
    v134 = *(v0 + 1120);
    v143 = *(v0 + 616);
    v132 = *(v0 + 323);
    v26 = swift_slowAlloc();
    v162[0] = swift_slowAlloc();
    *v26 = 136446466;
    sub_10030D9EC(&qword_10063F118, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v27 = sub_1004DEFFC();
    v29 = v28;
    v130(v24, v25);
    v30 = sub_1002E5CC4(v27, v29, v162);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2082;
    *(v0 + 304) = v23;
    *(v0 + 312) = v134;
    *(v0 + 320) = v132 & 1;
    sub_100051E00(v23, v134, v132 & 1);
    v31 = sub_1004DD4DC();
    v33 = sub_1002E5CC4(v31, v32, v162);

    *(v26 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "[State] Successfully loaded lyrics for song %{public}s with result %{public}s", v26, 0x16u);
    swift_arrayDestroy();

    v156(v149, v143);
    if ((*(v0 + 323) & 1) == 0)
    {
LABEL_8:
      v34 = *(v0 + 1120);
      v35 = *(v0 + 1112);
      v36 = *(v0 + 1064);
      v150 = *(v0 + 1032);
      v37 = *(v0 + 944);
      v38 = *(v0 + 888);
      v39 = *(v0 + 848);
      v157 = *(v0 + 840);
      v40 = *(v0 + 712);
      v41 = *(v0 + 592);
      v42 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
      *v39 = v35;
      *(v39 + 8) = v34;
      *(v39 + 16) = _swiftEmptyArrayStorage;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0;
      v36(v39 + v42, v37, v38);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 568) = v41;

      sub_1004D86BC();

      *(v0 + 576) = v41;
      swift_getKeyPath();
      sub_1004D86DC();

      sub_10030C464(v41 + v150, v40, type metadata accessor for Lyrics.StateManager.State);
      sub_10030C464(v40, v157, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030CBB8(v39, v40, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v40, v157) & 1) == 0)
      {
        sub_100304C98();
      }

      v43 = *(v0 + 1088);
      v44 = *(v0 + 1032);
      v151 = *(v0 + 1120);
      v158 = *(v0 + 944);
      v138 = *(v0 + 1112);
      v144 = *(v0 + 928);
      v45 = *(v0 + 888);
      v46 = *(v0 + 848);
      v47 = *(v0 + 720);
      v48 = *(v0 + 712);
      v49 = *(v0 + 592);
      sub_10030C4CC(*(v0 + 840), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030C4CC(v46, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030C464(v49 + v44, v47, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_10030CBB8(v48, v49 + v44, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002FFFC4(v47);
      sub_10030C4CC(v47, type metadata accessor for Lyrics.StateManager.State);
      sub_10030C4CC(v48, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 336) = v49;
      swift_getKeyPath();
      sub_1004D86CC();

      v50 = v138;
      v51 = v151;
      v52 = 0;
LABEL_31:
      sub_100051E10(v50, v51, v52);
      v43(v144, v45);
      v43(v158, v45);
      goto LABEL_36;
    }
  }

  else
  {
    v57 = *(v0 + 1088);
    v58 = *(v0 + 1080);
    v59 = *(v0 + 920);
    v60 = *(v0 + 888);
    v61 = *(v0 + 648);
    v62 = *(v0 + 616);

    v57(v59, v60);
    v58(v61, v62);
    if ((*(v0 + 323) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v63 = *(v0 + 1112);
  v64 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 432) = v64;
  sub_1004D86BC();

  v65 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v66 = *(v64 + v65);
  if (v66)
  {
    v67 = v66;
    if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0)
    {
      v110 = *(v0 + 1112);
      v133 = *(v0 + 1120);
      v129 = *(v0 + 1064);
      v147 = *(v0 + 1032);
      v111 = *(v0 + 944);
      v112 = *(v0 + 888);
      v113 = *(v0 + 832);
      v154 = *(v0 + 824);
      v161 = v67;
      v114 = *(v0 + 704);
      v115 = *(v0 + 592);
      v116 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
      v117 = (*(*v63 + 384))();
      v118 = *&v63[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
      *v113 = v117;
      *(v113 + 8) = v119;
      *(v113 + 16) = v118;
      *(v113 + 24) = v110;
      *(v113 + 32) = 0;
      v129(v113 + v116, v111, v112);
      swift_storeEnumTagMultiPayload();
      swift_getKeyPath();
      *(v0 + 536) = v115;
      sub_100051E00(v110, v133, 1);

      sub_1004D86BC();

      *(v0 + 544) = v115;
      swift_getKeyPath();
      sub_1004D86DC();

      sub_10030C464(v115 + v147, v114, type metadata accessor for Lyrics.StateManager.State);
      sub_10030C464(v114, v154, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030CBB8(v113, v114, type metadata accessor for Lyrics.StateManager.State.Loading);
      if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v114, v154) & 1) == 0)
      {
        sub_100304C98();
      }

      v120 = *(v0 + 1088);
      v121 = *(v0 + 1032);
      v148 = *(v0 + 1120);
      v155 = *(v0 + 944);
      v137 = *(v0 + 1112);
      v142 = *(v0 + 928);
      v122 = *(v0 + 888);
      v123 = *(v0 + 832);
      v124 = *(v0 + 720);
      v125 = *(v0 + 704);
      v126 = *(v0 + 592);
      sub_10030C4CC(*(v0 + 824), type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030C4CC(v123, type metadata accessor for Lyrics.StateManager.State.Loading);
      sub_10030C464(v126 + v121, v124, type metadata accessor for Lyrics.StateManager.State);
      swift_beginAccess();
      sub_10030CBB8(v125, v126 + v121, type metadata accessor for Lyrics.StateManager.State);
      swift_endAccess();
      sub_1002FFFC4(v124);
      sub_10030C4CC(v124, type metadata accessor for Lyrics.StateManager.State);
      sub_10030C4CC(v125, type metadata accessor for Lyrics.StateManager.State);
      *(v0 + 560) = v126;
      swift_getKeyPath();
      sub_1004D86CC();

      sub_100051E10(v137, v148, 1);
      v120(v142, v122);
      v120(v155, v122);
      goto LABEL_36;
    }
  }

  v68 = v63;
  if (v63[56] - 1 > 1)
  {
    v95 = *(v0 + 1112);
    v136 = *(v0 + 1120);
    v131 = *(v0 + 1064);
    v152 = *(v0 + 1032);
    v96 = *(v0 + 944);
    v97 = *(v0 + 888);
    v98 = *(v0 + 800);
    v160 = *(v0 + 792);
    v99 = *(v0 + 688);
    v100 = *(v0 + 592);
    v101 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
    v102 = (*(*v68 + 384))();
    v103 = *&v68[OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters];
    *v98 = v102;
    *(v98 + 8) = v104;
    *(v98 + 16) = v103;
    *(v98 + 24) = v95;
    *(v98 + 32) = 0;
    v131(v98 + v101, v96, v97);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 448) = v100;
    sub_100051E00(v95, v136, 1);

    sub_1004D86BC();

    *(v0 + 456) = v100;
    swift_getKeyPath();
    sub_1004D86DC();

    sub_10030C464(v100 + v152, v99, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v99, v160, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v98, v99, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v99, v160) & 1) == 0)
    {
      sub_100304C98();
    }

    v43 = *(v0 + 1088);
    v105 = *(v0 + 1032);
    v153 = *(v0 + 1120);
    v158 = *(v0 + 944);
    v141 = *(v0 + 1112);
    v144 = *(v0 + 928);
    v45 = *(v0 + 888);
    v106 = *(v0 + 800);
    v107 = *(v0 + 720);
    v108 = *(v0 + 688);
    v109 = *(v0 + 592);
    sub_10030C4CC(*(v0 + 792), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v106, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v109 + v105, v107, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v108, v109 + v105, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v107);
    sub_10030C4CC(v107, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v108, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 472) = v109;
    swift_getKeyPath();
    sub_1004D86CC();

    v50 = v141;
    v51 = v153;
    v52 = 1;
    goto LABEL_31;
  }

  v69 = *(**LyricsOptionsManager.shared.unsafeMutableAddressor() + 248);

  if (v69(0))
  {
    v70 = *(v0 + 608);
    v71 = *(v0 + 592);
    (*(*v63 + 288))();
    swift_getKeyPath();
    v72 = swift_task_alloc();
    *(v72 + 16) = v71;
    *(v72 + 24) = v70;
    *(v0 + 528) = v71;
    sub_1004D86AC();

    sub_10001074C(v70, &qword_10063EB48, &qword_10052A480);
  }

  v73 = *(v0 + 592);
  swift_getKeyPath();
  *(v0 + 480) = v73;
  sub_1004D86BC();

  v74 = *(v64 + v65);
  if (v74 && (v75 = [v74 vocalsControlCommand]) != 0 && (v76 = objc_msgSend(v75, "isActive"), swift_unknownObjectRelease(), v76) && (v69(2) & 1) == 0 || (v69(1) & 1) != 0)
  {
    v77 = *(v0 + 600);
    v78 = *(v0 + 592);
    (*(*v63 + 312))();
    swift_getKeyPath();
    v79 = swift_task_alloc();
    *(v79 + 16) = v78;
    *(v79 + 24) = v77;
    *(v0 + 520) = v78;
    sub_1004D86AC();

    sub_10001074C(v77, &qword_10063EB50, &qword_10052A4B0);
  }

  v80 = *(v0 + 1112);
  v81 = *(v0 + 1064);
  v139 = *(v0 + 1032);
  v82 = *(v0 + 944);
  v83 = *(v0 + 888);
  v84 = *(v0 + 816);
  v145 = *(v0 + 808);
  v85 = *(v0 + 696);
  v86 = *(v0 + 592);
  v87 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
  *v84 = v80;
  *(v84 + 8) = 0;
  *(v84 + 16) = 0;
  *(v84 + 24) = 0;
  *(v84 + 32) = 1;
  v81(v84 + v87, v82, v83);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  *(v0 + 488) = v86;

  sub_1004D86BC();

  *(v0 + 496) = v86;
  swift_getKeyPath();
  sub_1004D86DC();

  sub_10030C464(v86 + v139, v85, type metadata accessor for Lyrics.StateManager.State);
  sub_10030C464(v85, v145, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030CBB8(v84, v85, type metadata accessor for Lyrics.StateManager.State.Loading);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v85, v145) & 1) == 0)
  {
    sub_100304C98();
  }

  v88 = *(v0 + 1088);
  v89 = *(v0 + 1032);
  v159 = *(v0 + 944);
  v140 = *(v0 + 928);
  v146 = *(v0 + 1120);
  v135 = *(v0 + 1112);
  v90 = *(v0 + 888);
  v91 = *(v0 + 816);
  v92 = *(v0 + 720);
  v93 = *(v0 + 696);
  v94 = *(v0 + 592);
  sub_10030C4CC(*(v0 + 808), type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030C4CC(v91, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030C464(v94 + v89, v92, type metadata accessor for Lyrics.StateManager.State);
  swift_beginAccess();
  sub_10030CBB8(v93, v94 + v89, type metadata accessor for Lyrics.StateManager.State);
  swift_endAccess();
  sub_1002FFFC4(v92);
  sub_10030C4CC(v92, type metadata accessor for Lyrics.StateManager.State);
  sub_10030C4CC(v93, type metadata accessor for Lyrics.StateManager.State);
  *(v0 + 512) = v94;
  swift_getKeyPath();
  sub_1004D86CC();

  sub_100051E10(v135, v146, 1);
  v88(v140, v90);
  v88(v159, v90);
LABEL_36:

  v127 = *(v0 + 8);

  return v127();
}

uint64_t sub_100308728()
{
  v87 = v0;
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1096);

  *(v0 + 360) = v1;
  swift_errorRetain();
  sub_100004CB8(&qword_100643610, &qword_10052F9E0);
  v3 = swift_dynamicCast();
  v77 = *(v0 + 1064);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  v6 = *(v0 + 944);
  v7 = *(v0 + 888);
  v8 = *(v0 + 616);
  if (v3)
  {
    v9 = *(v0 + 912);
    v10 = *(v0 + 640);

    v74 = *(v0 + 321);
    v4(v10, v5, v8);
    v77(v9, v6, v7);
    v11 = sub_1004D964C();
    v12 = sub_1004DDF9C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 1088);
    v15 = *(v0 + 1080);
    v16 = *(v0 + 912);
    v17 = *(v0 + 888);
    v18 = *(v0 + 640);
    v19 = *(v0 + 616);
    if (v13)
    {
      v78 = *(v0 + 640);
      v20 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v20 = 136446466;
      sub_10030D9EC(&qword_10063F118, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v69 = v19;
      v71 = v15;
      v21 = sub_1004DEFFC();
      v23 = v22;
      v14(v16, v17);
      v24 = sub_1002E5CC4(v21, v23, v86);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v0 + 322) = v74;
      v25 = sub_1004DD4DC();
      v27 = sub_1002E5CC4(v25, v26, v86);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v11, v12, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v71(v78, v69);
    }

    else
    {

      v14(v16, v17);
      v15(v18, v19);
    }

    v82 = *(v0 + 1032);
    v42 = *(v0 + 768);
    v43 = *(v0 + 760);
    v44 = *(v0 + 672);
    v45 = *(v0 + 592);
    *v42 = v74;
    *(v42 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 384) = v45;
    sub_1004D86BC();

    *(v0 + 392) = v45;
    swift_getKeyPath();
    sub_1004D86DC();

    sub_10030C464(v45 + v82, v44, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v44, v43, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v42, v44, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v44, v43) & 1) == 0)
    {
      sub_100304C98();
    }

    v46 = *(v0 + 1032);
    v80 = *(v0 + 944);
    v83 = *(v0 + 1088);
    v75 = *(v0 + 888);
    v47 = *(v0 + 768);
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);
    v50 = *(v0 + 592);
    sub_10030C4CC(*(v0 + 760), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v47, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v50 + v46, v48, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v49, v50 + v46, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v48);
    sub_10030C4CC(v48, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v49, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 408) = v50;
    swift_getKeyPath();
    sub_1004D86CC();

    v83(v80, v75);
  }

  else
  {
    v28 = *(v0 + 904);
    v29 = *(v0 + 632);

    v4(v29, v5, v8);
    v77(v28, v6, v7);
    swift_errorRetain();
    v30 = sub_1004D964C();
    v31 = sub_1004DDF9C();

    if (os_log_type_enabled(v30, v31))
    {
      v68 = *(v0 + 1088);
      v70 = *(v0 + 1128);
      v32 = *(v0 + 904);
      v33 = *(v0 + 888);
      v79 = *(v0 + 632);
      v81 = *(v0 + 1080);
      v72 = *(v0 + 616);
      v34 = swift_slowAlloc();
      v86[0] = swift_slowAlloc();
      *v34 = 136446466;
      sub_10030D9EC(&qword_10063F118, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v35 = sub_1004DEFFC();
      v37 = v36;
      v68(v32, v33);
      v38 = sub_1002E5CC4(v35, v37, v86);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      *(v0 + 376) = v70;
      swift_errorRetain();
      v39 = sub_1004DD4DC();
      v41 = sub_1002E5CC4(v39, v40, v86);

      *(v34 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v31, "[State] Failed to load lyrics for song %{public}s — Error = %{public}s", v34, 0x16u);
      swift_arrayDestroy();

      v81(v79, v72);
    }

    else
    {
      v51 = *(v0 + 1088);
      v52 = *(v0 + 1080);
      v53 = *(v0 + 904);
      v54 = *(v0 + 888);
      v55 = *(v0 + 632);
      v56 = *(v0 + 616);

      v51(v53, v54);
      v52(v55, v56);
    }

    v84 = *(v0 + 1032);
    v57 = *(v0 + 752);
    v58 = *(v0 + 744);
    v59 = *(v0 + 664);
    v60 = *(v0 + 592);
    *v57 = 1;
    *(v57 + 8) = 2;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    *(v0 + 344) = v60;
    sub_1004D86BC();

    *(v0 + 352) = v60;
    swift_getKeyPath();
    sub_1004D86DC();

    sub_10030C464(v60 + v84, v59, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C464(v59, v58, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030CBB8(v57, v59, type metadata accessor for Lyrics.StateManager.State.Loading);
    if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(v59, v58) & 1) == 0)
    {
      sub_100304C98();
    }

    v85 = *(v0 + 1088);
    v61 = *(v0 + 1032);
    v73 = *(v0 + 888);
    v76 = *(v0 + 944);
    v62 = *(v0 + 752);
    v63 = *(v0 + 720);
    v64 = *(v0 + 664);
    v65 = *(v0 + 592);
    sub_10030C4CC(*(v0 + 744), type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C4CC(v62, type metadata accessor for Lyrics.StateManager.State.Loading);
    sub_10030C464(v65 + v61, v63, type metadata accessor for Lyrics.StateManager.State);
    swift_beginAccess();
    sub_10030CBB8(v64, v65 + v61, type metadata accessor for Lyrics.StateManager.State);
    swift_endAccess();
    sub_1002FFFC4(v63);
    sub_10030C4CC(v63, type metadata accessor for Lyrics.StateManager.State);
    sub_10030C4CC(v64, type metadata accessor for Lyrics.StateManager.State);
    *(v0 + 368) = v65;
    swift_getKeyPath();
    sub_1004D86CC();

    v85(v76, v73);
  }

  v66 = *(v0 + 8);

  return v66();
}

id sub_100309334(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v4 = *(v2 + *a2);

  return v4;
}

id sub_1003093E4@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v7 = *(v6 + *a3);
  *a4 = v7;

  return v7;
}

uint64_t sub_1003094A8()
{
  v1 = v0;
  sub_100004CB8(&qword_10063DF60, &qword_100528BE0);
  __chkstk_darwin();
  v48 = &v42[-v2];
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v4 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100004CB8(&qword_10063EB58, &qword_10052A4E0);
  __chkstk_darwin();
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v42[-v7];
  v9 = type metadata accessor for MetricsEvent.Page(0);
  v49 = *(*(v9 - 8) + 56);
  v49(v8, 1, 1, v9);
  swift_getKeyPath();
  v10 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  *&v52 = v1;
  sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  v50 = v10;
  sub_1004D86BC();

  v11 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state;
  swift_beginAccess();
  sub_10030C464(v1 + v11, v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *(v4 + 1);
      v14 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v4[32] != 1)
      {
        sub_10030D7EC(*v4, v13, v14, v15, 0);
        sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
        v19 = sub_1004D809C();
        v20 = *(*(v19 - 8) + 56);
        goto LABEL_24;
      }

      v44 = *v4;
      v45 = v13;
      v46 = v14;
      v47 = v15;
      swift_getKeyPath();
      *&v52 = v1;
      sub_1004D86BC();

      v16 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
      swift_beginAccess();
      v17 = *(v1 + v16);
      if (v17 && (v18 = [v17 vocalsControlCommand]) != 0)
      {
        v43 = [v18 isDisabled];
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 1;
      }

      swift_getKeyPath();
      *&v52 = v1;
      sub_1004D86BC();

      v21 = *(v1 + v16);
      if (v21)
      {
        v22 = [v21 playingItem];
        if (v22)
        {
          v23 = v22;
          v24 = [v22 metadataObject];

          if (v24)
          {
            v25 = [v24 innermostModelObject];

            objc_opt_self();
            v26 = swift_dynamicCastObjCClass();
            if (v26)
            {
              v27 = [v26 lyrics];

              if (v27)
              {
                v28 = [v27 hasStoreLyrics];

                v29 = v28 ^ 1;
LABEL_20:
                static ApplicationCapabilities.shared.getter(&v52);
                sub_100073E60(&v52);
                if (*(v44 + 56))
                {
                  v30 = (v53 == 1) & ~(v43 | v29);
                  if (*(v44 + 56) == 1)
                  {
                    sub_10030D7EC(v44, v45, v46, v47, 1);
                    sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
                    v31 = sub_1004D809C();
                    v32 = v48;
                    (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
                    v33 = 0x80000001004F5A00;
                    v41 = v30;
                    v34 = v6;
                    v35 = 0xD000000000000010;
                  }

                  else
                  {
                    sub_10030D7EC(v44, v45, v46, v47, 1);
                    sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
                    v37 = sub_1004D809C();
                    v32 = v48;
                    (*(*(v37 - 8) + 56))(v48, 1, 1, v37);
                    v41 = v30;
                    v35 = 0x795373636972794CLL;
                    v33 = 0xEE00656C62616C6CLL;
                    v34 = v6;
                  }

                  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v35, v33, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v32, 0, 0, 0, v34, 1, 0, 0, v41);
                  goto LABEL_27;
                }

                sub_10030D7EC(v44, v45, v46, v47, 1);
                sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
                v19 = sub_1004D809C();
                v20 = *(*(v19 - 8) + 56);
LABEL_24:
                v36 = v48;
                v20(v48, 1, 1, v19);
                MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x745373636972794CLL, 0xEC00000063697461, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v36, 0, 0, 0, v6, 1, 0, 0, 2);
LABEL_27:
                v49(v6, 0, 1, v9);
                sub_10030D8E8(v6, v8);
                v38 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
                v39 = sub_1004DC95C();
                (*(*(v39 - 8) + 8))(&v4[v38], v39);
                goto LABEL_28;
              }
            }

            else
            {
            }
          }
        }
      }

      v29 = 1;
      goto LABEL_20;
    }

    sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
  }

  else
  {
    sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
    sub_10030C4CC(v4, type metadata accessor for Lyrics.StateManager.State.Loading);
  }

  v49(v8, 1, 1, v9);
LABEL_28:
  sub_1000108DC(v8, v6, &qword_10063EB58, &qword_10052A4E0);
  swift_getKeyPath();
  __chkstk_darwin();
  v51 = v1;
  sub_1004D86AC();

  sub_10001074C(v8, &qword_10063EB58, &qword_10052A4E0);
  return sub_10001074C(v6, &qword_10063EB58, &qword_10052A4E0);
}

uint64_t sub_100309DCC(uint64_t a1)
{
  sub_100004CB8(&qword_10063F108, &qword_10052A7B0);
  __chkstk_darwin();
  v159 = &v151 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v160 = &v151 - v3;
  sub_100004CB8(&qword_10063EA78, &qword_10052A320);
  __chkstk_darwin();
  v5 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v151 - v6;
  sub_100004CB8(&qword_10063EB50, &qword_10052A4B0);
  __chkstk_darwin();
  v166 = &v151 - v8;
  sub_100004CB8(&qword_10063EB48, &qword_10052A480);
  __chkstk_darwin();
  v165 = &v151 - v9;
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v164 = &v151 - v10;
  v177 = type metadata accessor for Lyrics.StateManager.State(0);
  __chkstk_darwin();
  v178 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v176 = &v151 - v12;
  __chkstk_darwin();
  v162 = &v151 - v13;
  v181 = sub_1004D966C();
  v179 = *(v181 - 8);
  __chkstk_darwin();
  v180 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v168 = &v151 - v15;
  __chkstk_darwin();
  v163 = &v151 - v16;
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v169 = &v151 - v17;
  v173 = sub_1004D826C();
  v172 = *(v173 - 8);
  __chkstk_darwin();
  v171 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_1004D9CEC();
  v174 = *(v175 - 8);
  __chkstk_darwin();
  v20 = &v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v22 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004DC95C();
  v24 = *(v23 - 8);
  __chkstk_darwin();
  v26 = &v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_10030C464(a1, v22, type metadata accessor for Lyrics.StateManager.State.Loading);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10030C4CC(v22, type metadata accessor for Lyrics.StateManager.State.Loading);
LABEL_11:
    v43 = v181;
    v42 = v179;
LABEL_12:
    v45 = Logger.lyrics.unsafeMutableAddressor();
    v46 = v180;
    (*(v42 + 16))(v180, v45, v43);
    v47 = v178;
    sub_10030C464(v27, v178, type metadata accessor for Lyrics.StateManager.State);
    v48 = sub_1004D964C();
    v49 = sub_1004DDF9C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = v42;
      v52 = swift_slowAlloc();
      v185 = v52;
      *v50 = 136446210;
      sub_10030C464(v47, v176, type metadata accessor for Lyrics.StateManager.State);
      v53 = sub_1004DD4DC();
      v55 = v54;
      sub_10030C4CC(v47, type metadata accessor for Lyrics.StateManager.State);
      v56 = sub_1002E5CC4(v53, v55, &v185);

      *(v50 + 4) = v56;
      _os_log_impl(&_mh_execute_header, v48, v49, "Skipping Reporting lyrics for state=%{public}s", v50, 0xCu);
      sub_100008D24(v52);

      return (*(v51 + 8))(v180, v181);
    }

    else
    {

      sub_10030C4CC(v47, type metadata accessor for Lyrics.StateManager.State);
      return (*(v42 + 8))(v46, v43);
    }
  }

  v152 = v7;
  v151 = v5;
  v28 = *(v22 + 1);
  v167 = *v22;
  v161 = v28;
  v29 = *(v22 + 2);
  v30 = *(v22 + 3);
  v31 = v22[32];
  v32 = sub_100004CB8(&qword_10063EB38, &qword_10052A400);
  (*(v24 + 32))(v26, &v22[*(v32 + 48)], v23);
  if ((sub_1004DC94C() & 1) == 0)
  {
    (*(v24 + 8))(v26, v23);
    sub_10030D7EC(v167, v161, v29, v30, v31);
    goto LABEL_11;
  }

  v153 = v29;
  v154 = v30;
  v156 = v31;
  v157 = v26;
  v155 = v24;
  v158 = v23;
  v33 = v27 + *(v177 + 20);
  v34 = v174;
  v35 = v175;
  (v174[13])(v20, enum case for ScenePhase.active(_:), v175);
  v36 = sub_1004D9CDC();
  v34[1](v20, v35);
  if ((v36 & 1) == 0 || (v37 = type metadata accessor for Lyrics.StateManager.State.Display(0), *(v33 + *(v37 + 20)) != 1) || *(v33 + *(v37 + 24)) != 1)
  {
    v44 = sub_10030D7EC(v167, v161, v153, v154, v156);
    (*(v155 + 8))(v157, v158, v44);
    goto LABEL_11;
  }

  v38 = v169;
  sub_1000108DC(v27 + *(v177 + 24), v169, &qword_100641C40, &qword_10052EA60);
  v39 = v172;
  v40 = v173;
  v41 = (*(v172 + 48))(v38, 1, v173);
  v42 = v179;
  if (v41 == 1)
  {
    (*(v155 + 8))(v157, v158);
    sub_10030D7EC(v167, v161, v153, v154, v156);
    sub_10001074C(v38, &qword_100641C40, &qword_10052EA60);
    v43 = v181;
    goto LABEL_12;
  }

  (*(v39 + 32))(v171, v38, v40);
  v58 = Logger.lyrics.unsafeMutableAddressor();
  v59 = *(v42 + 16);
  v60 = v163;
  v175 = v58;
  v61 = v181;
  v174 = v59;
  v169 = v42 + 16;
  (v59)(v163);
  v62 = v162;
  sub_10030C464(v27, v162, type metadata accessor for Lyrics.StateManager.State);
  v63 = sub_1004D964C();
  v64 = sub_1004DDF9C();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v185 = v66;
    *v65 = 136446210;
    sub_10030C464(v62, v176, type metadata accessor for Lyrics.StateManager.State);
    v67 = sub_1004DD4DC();
    v69 = v68;
    v61 = v181;
    sub_10030C4CC(v62, type metadata accessor for Lyrics.StateManager.State);
    v70 = v67;
    v42 = v179;
    v71 = sub_1002E5CC4(v70, v69, &v185);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "Reporting lyrics for state=%{public}s", v65, 0xCu);
    sub_100008D24(v66);
  }

  else
  {

    sub_10030C4CC(v62, type metadata accessor for Lyrics.StateManager.State);
  }

  v177 = *(v42 + 8);
  (v177)(v60, v61);
  v72 = v154;
  sub_1004D820C();
  v74 = -v73;
  v75 = [objc_allocWithZone(MPCReportingLyricsViewEvent) init];
  v76 = v155;
  v77 = v164;
  v78 = v158;
  (*(v155 + 16))(v164, v157, v158);
  (*(v76 + 56))(v77, 0, 1, v78);
  sub_1004DE38C();
  swift_getKeyPath();
  v79 = v170;
  v185 = v170;
  v178 = sub_10030D9EC(&qword_10063EB30, type metadata accessor for Lyrics.StateManager, &protocol conformance descriptor for Lyrics.StateManager);
  sub_1004D86BC();

  v80 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__tracklist;
  swift_beginAccess();
  v81 = *(v79 + v80);
  if (v81)
  {
    v82 = v81;
    MPCPlayerResponseTracklist.currentPlayEvent.getter();
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  [v75 setModelPlayEvent:v84];

  [v75 setVisibleDuration:v74];
  swift_getKeyPath();
  v180 = v75;
  v85 = v170;
  v184[4] = v170;
  sub_1004D86BC();

  v86 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation;
  swift_beginAccess();
  v87 = v165;
  sub_1000108DC(v85 + v86, v165, &qword_10063EB48, &qword_10052A480);
  v88 = type metadata accessor for Lyrics.Translation(0);
  v89 = (*(*(v88 - 8) + 48))(v87, 1, v88) != 1;
  sub_10001074C(v87, &qword_10063EB48, &qword_10052A480);
  [v180 setDisplayTranslationEnabled:v89];
  swift_getKeyPath();
  v184[1] = v85;
  sub_1004D86BC();

  v90 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration;
  swift_beginAccess();
  v91 = v85 + v90;
  v92 = v166;
  sub_1000108DC(v91, v166, &qword_10063EB50, &qword_10052A4B0);
  v93 = type metadata accessor for Lyrics.Transliteration(0);
  v94 = (*(*(v93 - 8) + 48))(v92, 1, v93) != 1;
  v95 = v180;
  sub_10001074C(v92, &qword_10063EB50, &qword_10052A4B0);
  [v95 setDisplayTransliterationEnabled:v94];
  if (v156)
  {
    v96 = v167;
    v97 = v181;
    if (*(v167 + 24))
    {
      sub_10030D88C(v167, v161, v153, v72, 1);

      v98 = sub_1004DD3FC();
    }

    else
    {

      v98 = 0;
    }

    v107 = v160;
    [v180 setLyricsID:v98];

    (*(*v96 + 232))();
    v108 = sub_1004D83DC();
    v109 = *(v108 - 8);
    if ((*(v109 + 48))(v107, 1, v108) == 1)
    {
      sub_10001074C(v107, &qword_10063F108, &qword_10052A7B0);
      v110 = 0;
      v111 = v153;
      v112 = v161;
    }

    else
    {
      v113 = v152;
      sub_1004D83AC();
      (*(v109 + 8))(v107, v108);
      v114 = sub_1004D82FC();
      v115 = *(v114 - 8);
      if ((*(v115 + 48))(v113, 1, v114) == 1)
      {
        sub_10001074C(v113, &qword_10063EA78, &qword_10052A320);
        v110 = 0;
      }

      else
      {
        sub_1004D82DC();
        (*(v115 + 8))(v113, v114);
        v110 = sub_1004DD3FC();
      }

      v72 = v154;
      v111 = v153;
      v112 = v161;
      v97 = v181;
    }

    v95 = v180;
    [v180 setLanguage:v110];

    v119 = v167;
    [v95 setDisplayType:*(v167 + 56)];
    sub_10030D7EC(v119, v112, v111, v72, 1);
    v99 = v168;
  }

  else
  {
    v99 = v168;
    v97 = v181;
    if (v72 && v72[3])
    {

      v100 = sub_1004DD3FC();
    }

    else
    {

      v100 = 0;
    }

    [v95 setLyricsID:v100];

    if (v72)
    {
      v101 = *(*v72 + 232);

      v103 = v159;
      v101(v102);

      v104 = sub_1004D83DC();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) == 1)
      {
        sub_10001074C(v103, &qword_10063F108, &qword_10052A7B0);
        v106 = 0;
        v99 = v168;
        v97 = v181;
      }

      else
      {
        v116 = v151;
        sub_1004D83AC();
        (*(v105 + 8))(v103, v104);
        v117 = sub_1004D82FC();
        v118 = *(v117 - 8);
        if ((*(v118 + 48))(v116, 1, v117) == 1)
        {
          sub_10001074C(v116, &qword_10063EA78, &qword_10052A320);
          v106 = 0;
        }

        else
        {
          sub_1004D82DC();
          (*(v118 + 8))(v116, v117);
          v106 = sub_1004DD3FC();
        }

        v99 = v168;
        v72 = v154;
        v95 = v180;
        v97 = v181;
      }
    }

    else
    {
      v106 = 0;
    }

    [v95 setLanguage:v106];

    [v95 setDisplayType:0];
  }

  v120 = sub_1004DD3FC();
  [v95 setFeatureName:v120];

  [v95 setUserPreferenceSyllable:2];
  swift_getKeyPath();
  v121 = v170;
  v182 = v170;
  sub_1004D86BC();

  [*(v121 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) recordLyricsViewEvent:v95];
  (v174)(v99, v175, v97);
  v122 = v95;
  v123 = sub_1004D964C();
  v124 = sub_1004DDF9C();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v184[0] = swift_slowAlloc();
    *v125 = 136446978;
    v182 = [v122 displayType];
    type metadata accessor for MPCReportingLyricsViewEventDisplayType(0);
    v126 = sub_1004DD4DC();
    v128 = sub_1002E5CC4(v126, v127, v184);

    *(v125 + 4) = v128;
    *(v125 + 12) = 2082;
    v129 = [v122 lyricsID];
    if (v129)
    {
      v130 = v129;
      v131 = sub_1004DD43C();
      v133 = v132;
    }

    else
    {
      v131 = 0;
      v133 = 0;
    }

    v182 = v131;
    v183 = v133;
    sub_100004CB8(&qword_100644AB0, &qword_100531B80);
    v136 = sub_1004DD4DC();
    v138 = sub_1002E5CC4(v136, v137, v184);

    *(v125 + 14) = v138;
    *(v125 + 22) = 2082;
    [v122 visibleDuration];
    v139 = sub_1004DDB9C();
    v141 = sub_1002E5CC4(v139, v140, v184);

    *(v125 + 24) = v141;
    *(v125 + 32) = 2082;
    v142 = [v122 modelSong];
    if (v142)
    {
      v143 = v142;
      v144 = [v142 humanDescription];

      v145 = sub_1004DD43C();
      v147 = v146;
    }

    else
    {
      v145 = 0;
      v147 = 0;
    }

    v182 = v145;
    v183 = v147;
    v148 = sub_1004DD4DC();
    v150 = sub_1002E5CC4(v148, v149, v184);

    *(v125 + 34) = v150;
    _os_log_impl(&_mh_execute_header, v123, v124, "Recorded PAF Event of type=%{public}s; id=%{public}s; duration=%{public}ss; song=%{public}s", v125, 0x2Au);
    swift_arrayDestroy();

    sub_10030D7EC(v167, v161, v153, v154, v156);
    v134 = v168;
    v135 = v181;
  }

  else
  {

    sub_10030D7EC(v167, v161, v153, v72, v156);
    v134 = v99;
    v135 = v97;
  }

  (v177)(v134, v135);
  (*(v172 + 8))(v171, v173);
  return (*(v155 + 8))(v157, v158);
}

uint64_t Lyrics.StateManager.deinit()
{
  sub_10030C4CC(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__state, type metadata accessor for Lyrics.StateManager.State);

  sub_10001074C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__song, &qword_10063EA08, &qword_10052A1A0);
  sub_10001074C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTranslation, &qword_10063EB48, &qword_10052A480);
  sub_10001074C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__currentTransliteration, &qword_10063EB50, &qword_10052A4B0);
  sub_10001074C(v0 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__metricsPage, &qword_10063EB58, &qword_10052A4E0);

  v1 = OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager___observationRegistrar;
  v2 = sub_1004D86FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t Lyrics.StateManager.__deallocating_deinit()
{
  Lyrics.StateManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10030B854(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10030DF24;

  return v6(a1);
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[4])
  {
    if (*(a2 + 32))
    {
      return *a2 == v3;
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = v3 == *a2 && a1[1] == *(a2 + 8);
  if (!v9 && (sub_1004DF08C() & 1) == 0 || (sub_10034B14C(v5, v7) & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    v10 = v6 == v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v6)
  {
    return v11;
  }

  else
  {
    return v8 == 0;
  }
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO5ErrorO21__derived_enum_equalsySbAL_ALtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 == 1)
      {
        sub_100006F10(0, &unk_100644F40, NSObject_ptr);
        return sub_1004DE5FC() & 1;
      }

      return 0;
    }

    if (a1)
    {
      return a4 == 2 && a3 == 1;
    }

    return a4 == 2 && !a3;
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    return a3 == a1;
  }
}

uint64_t _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DC95C();
  v37 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v36 - v7;
  type metadata accessor for Lyrics.StateManager.State.Loading(0);
  __chkstk_darwin();
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v36 - v10;
  sub_100004CB8(&qword_10063F130, &qword_10052A850);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v15 = &v36 + *(v14 + 56) - v12;
  sub_10030C464(a1, &v36 - v12, type metadata accessor for Lyrics.StateManager.State.Loading);
  sub_10030C464(a2, v15, type metadata accessor for Lyrics.StateManager.State.Loading);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10030C464(v13, v11, type metadata accessor for Lyrics.StateManager.State.Loading);
    v26 = *v11;
    v27 = v11[8];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10030DC40(v26, v27);
      goto LABEL_11;
    }

    v28 = *v15;
    v29 = v15[8];
    if (v27)
    {
      if (v27 == 1)
      {
        if (v29 == 1)
        {
          v30 = *v15;
          sub_100006F10(0, &unk_100644F40, NSObject_ptr);
          v31 = sub_1004DE5FC();
          sub_10030DC40(v30, 1);
          sub_10030DC40(v26, 1);
          if ((v31 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_9;
        }

        sub_10030DC40(v28, v29);
        v28 = v26;
        LOBYTE(v29) = 1;
      }

      else if (v26)
      {
        if (v29 == 2 && v28 == 1)
        {
          goto LABEL_9;
        }
      }

      else if (v29 == 2 && v28 == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v15[8])
    {
      if (v28 != v26)
      {
        goto LABEL_33;
      }

LABEL_9:
      sub_10030C4CC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
      v24 = 1;
      return v24 & 1;
    }

    sub_10030DC40(v28, v29);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_10001074C(v13, &qword_10063F130, &qword_10052A850);
LABEL_34:
    v24 = 0;
    return v24 & 1;
  }

  sub_10030C464(v13, v9, type metadata accessor for Lyrics.StateManager.State.Loading);
  v17 = *(v9 + 1);
  v38[0] = *v9;
  v38[1] = v17;
  v39 = v9[32];
  v18 = *(sub_100004CB8(&qword_10063EB38, &qword_10052A400) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v37 + 8))(&v9[v18], v4);
    sub_10030DC10(v38);
    goto LABEL_11;
  }

  v19 = *(v15 + 1);
  v40[0] = *v15;
  v40[1] = v19;
  v41 = v15[32];
  v20 = v37;
  v21 = *(v37 + 32);
  v22 = &v9[v18];
  v23 = v36;
  v21(v36, v22, v4);
  v21(v6, &v15[v18], v4);
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0A4TypeO2eeoiySbAH_AHtFZ_0(v38, v40) & 1) == 0)
  {
    sub_10030DC10(v40);
    sub_10030DC10(v38);
    v32 = *(v20 + 8);
    v32(v6, v4);
    v32(v23, v4);
LABEL_33:
    sub_10030C4CC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
    goto LABEL_34;
  }

  v24 = sub_1004DC8EC();
  sub_10030DC10(v40);
  sub_10030DC10(v38);
  v25 = *(v20 + 8);
  v25(v6, v4);
  v25(v23, v4);
  sub_10030C4CC(v13, type metadata accessor for Lyrics.StateManager.State.Loading);
  return v24 & 1;
}

BOOL _s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V23__derived_struct_equalsySbAH_AHtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  __chkstk_darwin();
  v9 = &v25 - v8;
  v10 = sub_100004CB8(&qword_100642270, &qword_10052F200);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if ((_s7LyricsX0A0C11MusicCoreUIE12StateManagerC0E0V7LoadingO21__derived_enum_equalsySbAJ_AJtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v26 = v5;
  v13 = type metadata accessor for Lyrics.StateManager.State(0);
  v14 = *(v13 + 20);
  v15 = a1 + v14;
  v16 = a2 + v14;
  if ((sub_1004D9CDC() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  if (*(v15 + *(v17 + 20)) != *(v16 + *(v17 + 20)) || *(v15 + *(v17 + 24)) != *(v16 + *(v17 + 24)))
  {
    return 0;
  }

  v18 = *(v13 + 24);
  v19 = *(v10 + 48);
  sub_1000108DC(a1 + v18, v12, &qword_100641C40, &qword_10052EA60);
  sub_1000108DC(a2 + v18, &v12[v19], &qword_100641C40, &qword_10052EA60);
  v20 = v26;
  v21 = *(v26 + 48);
  if (v21(v12, 1, v4) == 1)
  {
    if (v21(&v12[v19], 1, v4) == 1)
    {
      sub_10001074C(v12, &qword_100641C40, &qword_10052EA60);
      return 1;
    }

    goto LABEL_10;
  }

  sub_1000108DC(v12, v9, &qword_100641C40, &qword_10052EA60);
  if (v21(&v12[v19], 1, v4) == 1)
  {
    (*(v20 + 8))(v9, v4);
LABEL_10:
    sub_10001074C(v12, &qword_100642270, &qword_10052F200);
    return 0;
  }

  (*(v20 + 32))(v7, &v12[v19], v4);
  sub_10030D9EC(&qword_1006422A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v23 = sub_1004DD35C();
  v24 = *(v20 + 8);
  v24(v7, v4);
  v24(v9, v4);
  sub_10001074C(v12, &qword_100641C40, &qword_10052EA60);
  return (v23 & 1) != 0;
}

uint64_t sub_10030C464(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10030C4CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_10030C530(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  Lyrics.StateManager.tracklist.setter(v1);
}

uint64_t sub_10030C5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DC95C();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063EA08, &qword_10052A1A0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_100004CB8(&qword_10063F138, &qword_10052A880);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v13 = *(v12 + 56);
  sub_1000108DC(a1, &v19 - v10, &qword_10063EA08, &qword_10052A1A0);
  sub_1000108DC(a2, &v11[v13], &qword_10063EA08, &qword_10052A1A0);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    sub_1000108DC(v11, v9, &qword_10063EA08, &qword_10052A1A0);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v13], v4);
      sub_10030D9EC(&qword_10063F120, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v16 = sub_1004DD35C();
      v17 = *(v5 + 8);
      v17(v7, v4);
      v17(v9, v4);
      sub_10001074C(v11, &qword_10063EA08, &qword_10052A1A0);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    (*(v5 + 8))(v9, v4);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    sub_10001074C(v11, &qword_10063F138, &qword_10052A880);
    v15 = 1;
    return v15 & 1;
  }

  sub_10001074C(v11, &qword_10063EA08, &qword_10052A1A0);
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_10030CB04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035B28;

  return sub_100304BEC();
}

uint64_t sub_10030CBB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_10030CC28(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State(319);
  if (v1 <= 0x3F)
  {
    sub_10030D1FC(319, &qword_10063EB98, &type metadata accessor for Song);
    if (v2 <= 0x3F)
    {
      sub_10030D1FC(319, &qword_10063EBA0, type metadata accessor for Lyrics.Translation);
      if (v3 <= 0x3F)
      {
        sub_10030D1FC(319, &qword_10063EBA8, type metadata accessor for Lyrics.Transliteration);
        if (v4 <= 0x3F)
        {
          sub_10030D1FC(319, &unk_10063EBB0, type metadata accessor for MetricsEvent.Page);
          if (v5 <= 0x3F)
          {
            sub_1004D86FC();
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

uint64_t sub_10030CE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10030CFEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Lyrics.StateManager.State.Display(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10030D144(uint64_t a1)
{
  type metadata accessor for Lyrics.StateManager.State.Loading(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Lyrics.StateManager.State.Display(319);
    if (v2 <= 0x3F)
    {
      sub_10030D1FC(319, &unk_10063EF88, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10030D1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10030D250(uint64_t a1)
{
  sub_10030D2BC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_10030D2BC(uint64_t a1)
{
  if (!qword_10063F040)
  {
    sub_1004DC95C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10063F040);
    }
  }
}

uint64_t sub_10030D324(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10030D364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D9CEC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10030D444(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D9CEC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10030D4FC(uint64_t a1)
{
  result = sub_1004D9CEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 initializeWithCopy for HitMyRectButton.HitRectAdjustment(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for HitMyRectButton.HitRectAdjustment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_10030D644()
{

  return swift_deallocObject();
}

uint64_t sub_10030D67C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

uint64_t sub_10030D734(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035B28;

  return sub_10012B324(a1, v4);
}

double sub_10030D7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {

    v5 = vars8;
  }

  return result;
}

double sub_10030D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_10030D8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063EB58, &qword_10052A4E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10030D958()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__lyricsReportingController) = v2;
  v4 = v2;
}

uint64_t sub_10030D9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10030DAA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t sub_10030DAE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B4C0(a1, v4);
}

uint64_t sub_10030DBA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100641C40, &qword_10052EA60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10030DC40(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_10030DC54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10030B854(a1, v4);
}

uint64_t sub_10030DD10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_1003028A4();
}

uint64_t sub_10030DDC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10030DE28(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_10030DE6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x80000001004F5A20);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v10, v11, v14, v12, v13);
  if (qword_10063D770 != -1)
  {
    swift_once();
  }

  v15 = qword_1006734A0;
  LOBYTE(v53[0]) = 1;
  *&v36 = 0x6F68706F7263694DLL;
  *(&v36 + 1) = 0xEA0000000000656ELL;
  *&v37 = qword_1006734A0;
  *(&v37 + 1) = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  *&v42 = 0;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = v36;
  v47 = v37;
  v52 = 1;
  v50 = v42;
  v51 = 0u;
  v16 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v48 = 0u;
  v49 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 2);
  v34[1] = *(v16 + 1);
  v34[2] = v18;
  v34[0] = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  v35 = v16[96];
  v34[4] = v20;
  v34[5] = v21;
  v34[3] = v19;
  v23 = *(v16 + 4);
  v22 = *(v16 + 5);
  v24 = *(v16 + 3);
  v54 = v16[96];
  v53[4] = v23;
  v53[5] = v22;
  v53[3] = v24;
  v25 = *v16;
  v26 = *(v16 + 2);
  v53[1] = *(v16 + 1);
  v53[2] = v26;
  v53[0] = v25;
  v27 = v51;
  *(v16 + 4) = v50;
  *(v16 + 5) = v27;
  v16[96] = v52;
  v28 = v47;
  *v16 = v46;
  *(v16 + 1) = v28;
  v29 = v49;
  *(v16 + 2) = v48;
  *(v16 + 3) = v29;
  v30 = v15;
  sub_10030E2D4(v34, v32);
  sub_1002DBB8C(&v36, v32);
  sub_10030E344(v53);
  sub_1003E80D8(v34);
  sub_10030E344(v34);
  sub_1002DCF18(&v36);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t sub_10030E2D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F148, &qword_10052A890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10030E344(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063F148, &qword_10052A890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030E3D0()
{
  sub_10030FAEC();
  result = sub_1004D9FCC();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (qword_10063D8D8 != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

double static AnyTransition.glowTextReveal.getter()
{
  if (qword_10063D8D8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (sub_1004DA38C())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = sub_100004CB8(&qword_10063F178, &qword_10052A8D0);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = sub_100004CB8(&qword_10063F180, &qword_10052A8D8);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_10030FB40;
}

void GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v59 = a2;
  v58 = sub_1004DA2AC();
  v52 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100004CB8(&qword_10063F188, &qword_10052A8E0);
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v45 - v6;
  v67 = sub_1004DB2CC();
  v51 = *(v67 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v8;
  sub_100004CB8(&qword_10063F190, &qword_10052A8E8);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v45 - v11);
  v13 = sub_1004DB2DC();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063F198, &qword_10052A8F0);
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = sub_100004CB8(&qword_10063F1A0, &qword_10052A8F8) - 8;
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v20.n128_f64[0] = a3;
  v64 = sub_10030EDA0(a1, v20);
  (*(v14 + 16))(v18, a1, v13);
  v23 = v18;
  v24 = v22;
  v25.n128_f64[0] = (*(v14 + 32))(v16, v23, v13);
  sub_10030F1B0(&qword_10063F1A8, &protocol conformance descriptor for Text.Layout, v25);
  sub_1004DD6FC();
  v46 = *(v19 + 44);
  *&v22[v46] = 0;
  v26 = *(sub_100004CB8(&qword_10063F1B0, &qword_10052A900) + 36);
  v28 = sub_10030F1B0(&qword_10063F1B8, &protocol conformance descriptor for Text.Layout, v27);
  v62 = 0;
  v47 = (v51 + 16);
  v66 = (v51 + 32);
  v29 = v60;
  v60 += 6;
  v61 = (v29 + 7);
  v50 = (v52 + 8);
  v49 = (v51 + 8);
  v52 = v26;
  v51 = v28;
  v55 = v12;
  v54 = v13;
  v53 = v10;
  while (1)
  {
    sub_1004DDD3C();
    if (*(v24 + v26) == v69[0])
    {
      v30 = 1;
      v31 = v65;
      goto LABEL_6;
    }

    v32 = sub_1004DDE1C();
    v33 = v48;
    v34 = v67;
    (*v47)(v48);
    v32(v69, 0);
    sub_1004DDD4C();
    v31 = v65;
    v35 = v66;
    v36 = *(v65 + 48);
    v38 = v62;
    v37 = v63;
    *v63 = v62;
    (*v35)(&v37[v36], v33, v34);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v62 = v38 + 1;
    *(v24 + v46) = v38 + 1;
    sub_100047F38(v63, v10, &qword_10063F188, &qword_10052A8E0);
    v30 = 0;
LABEL_6:
    (*v61)(v10, v30, 1, v31);
    sub_100047F38(v10, v12, &qword_10063F190, &qword_10052A8E8);
    if ((*v60)(v12, 1, v31) == 1)
    {
      sub_10030F1F4(v24);

      return;
    }

    v39 = *v12;
    v40 = v12 + *(v31 + 48);
    v41 = v56;
    (*v66)(v56, v40, v67);
    v69[0] = *v59;
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    v42 = v64;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;

    sub_1004DA26C();
    v68 = v69[0];
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;
    v10 = v53;

    sub_1004DA26C();
    v43 = v57;
    sub_1004DA29C();
    sub_1004DA2DC();
    (*v50)(v43, v58);
    sub_1004DA27C();
    sub_1004DA27C();

    v44 = v41;
    v12 = v55;
    (*v49)(v44, v67);
    v26 = v52;
  }

  __break(1u);
}

char *sub_10030EDA0(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v34 = sub_1004DB2CC();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DB2DC();
  sub_10030F1B0(&qword_10063F1B8, &protocol conformance descriptor for Text.Layout, v7);
  v8 = sub_1004DDD0C();
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v35 = _swiftEmptyArrayStorage;
    sub_1003E1130(0, v8 & ~(v8 >> 63), 0);
    v9 = v35;
    sub_1004DDCFC();
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v33 = (v4 + 16);
    do
    {
      v11 = sub_1004DDE1C();
      v12 = v34;
      (*v33)(v6);
      v11(v41, 0);
      sub_1004DB2BC();
      v42.origin.x = v36;
      v42.size.width = v38;
      v42.origin.y = v37 - v39;
      v42.size.height = v39 + v40;
      Width = CGRectGetWidth(v42);
      (*(v4 + 8))(v6, v12);
      v35 = v9;
      v14 = a1;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        sub_1003E1130((v15 > 1), v16 + 1, 1);
        v9 = v35;
      }

      v9[2] = v16 + 1;
      *&v9[v16 + 4] = Width;
      sub_1004DDD4C();
      --v10;
      a1 = v14;
    }

    while (v10);
  }

  v17 = v9[2];
  if (!v17)
  {
    v19 = 0.0;
    goto LABEL_16;
  }

  if (v17 <= 3)
  {
    v18 = 0;
    v19 = 0.0;
LABEL_14:
    v22 = v17 - v18;
    v23 = &v9[v18 + 4];
    do
    {
      v24 = *v23++;
      v19 = v19 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_16;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v9 + 6);
  v19 = 0.0;
  v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v17 != v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  sub_100004CB8(&qword_10063F1F8, &unk_10052B3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511DA0;
  *(inited + 32) = 0;
  if (v17)
  {
    v26 = 0;
    while (v26 < v9[2])
    {
      v27 = *&v9[v26 + 4];
      v28 = v26 + 1;
      v29 = *(inited + 8 * v26 + 32);
      v30 = *(inited + 24);
      if (v26 + 1 >= v30 >> 1)
      {
        inited = sub_1003E0700((v30 > 1), v26 + 2, 1, inited);
      }

      *(inited + 16) = v26 + 2;
      *(inited + 8 * v26++ + 40) = v27 / v19 + v29;
      if (v17 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v41[0] = inited;
  v31 = sub_10030F388(0, v17, v41, v2);

  return v31;
}

uint64_t sub_10030F1B0(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    sub_1004DB2DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10030F1F4(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063F1A0, &qword_10052A8F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10030F2B4(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10030F334()
{
  result = qword_10063F1C0;
  if (!qword_10063F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F1C0);
  }

  return result;
}

char *sub_10030F388(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = sub_1003E1110(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        sub_1003E1110((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double sub_10030F51C(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_10030F528(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_10030F554;
}

double sub_10030F554(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t sub_10030F58C()
{
  result = qword_10063F1C8;
  if (!qword_10063F1C8)
  {
    sub_100008DE4(&qword_10063F180, &qword_10052A8D8);
    sub_100042B08(&qword_10063F1D0, &qword_10063F178, &qword_10052A8D0, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_100042B08(&qword_10063F1D8, &qword_10063F1E0, &qword_10052AA50, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F1C8);
  }

  return result;
}

uint64_t sub_10030F670(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1004DA2CC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063F1F0, &unk_10052AA60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1005126C0;
  *(v7 + 32) = sub_1004DB87C();
  *(v7 + 40) = sub_1004DB85C();
  sub_1004DBCBC();
  sub_1004DB2BC();
  sub_1004DB2BC();
  sub_1004DB2BC();
  *&v13.origin.x = v9[13];
  *&v13.size.width = v9[15];
  v13.origin.y = *&v9[14] - v10;
  v13.size.height = v10 + v11;
  CGRectInset(v13, -14.0, 0.0);
  sub_1004DB21C();
  sub_1004DA2BC();

  sub_1004DA28C();
  sub_10030FA98(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10030F84C(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_1004DA2CC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063F1E8, &qword_10052AA58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100511B10;
  sub_1004DB85C();
  *(v7 + 32) = sub_1004DBC9C();
  *(v7 + 40) = v8;
  sub_1004DB87C();
  *(v7 + 48) = sub_1004DBC9C();
  *(v7 + 56) = v9;
  sub_1004DB87C();
  *(v7 + 64) = sub_1004DBC9C();
  *(v7 + 72) = v10;
  sub_1004DB85C();
  *(v7 + 80) = sub_1004DBC9C();
  *(v7 + 88) = v11;
  sub_1004DBCAC();
  sub_1004DB2BC();
  sub_1004DB2BC();
  sub_1004DB2BC();
  *&v17.origin.x = v13[13];
  *&v17.size.width = v13[15];
  v17.origin.y = *&v13[14] - v14;
  v17.size.height = v14 + v15;
  CGRectInset(v17, -57.5, 0.0);
  sub_1004DB21C();
  sub_1004DA2BC();

  sub_1004DA28C();
  sub_10030FA98(v16);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10030FAEC()
{
  result = qword_10063F200;
  if (!qword_10063F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F200);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      sub_1004DD55C();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      sub_1004DF2AC(v5);
    }

    else
    {

      sub_1004DD55C();
    }
  }

  else
  {
    sub_1004DD55C();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    sub_1004DF2AC(v7);
    sub_1004DF27C(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  sub_1004DF26C();
  Corner.hash(into:)(v7, a1, a2, a3);
  return sub_1004DF2BC();
}

Swift::Int sub_10030FD74()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004DF26C();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004DF2BC();
}

Swift::Int sub_10030FDDC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1004DF26C();
  Corner.hash(into:)(v5, v1, v2, v3);
  return sub_1004DF2BC();
}

uint64_t sub_10030FE34(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  v7 = a2;
  v8 = sub_1004DB81C() & (a5 == a6);
  if (v7 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_1004DB83C();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  sub_1004DF2AC(*&v6);
  sub_1004DF27C(a4);
}

Swift::Int Border.hashValue.getter(uint64_t a1, unsigned __int8 a2, double a3)
{
  sub_1004DF26C();
  sub_1004DB83C();
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  sub_1004DF2AC(*&v5);
  sub_1004DF27C(a2);
  return sub_1004DF2BC();
}

void sub_10030FFD4(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1004DB83C();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  sub_1004DF2AC(*&v4);
  sub_1004DF27C(v3);
}

Swift::Int sub_100310034()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1004DF26C();
  sub_1004DB83C();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  sub_1004DF2AC(*&v3);
  sub_1004DF27C(v2);
  return sub_1004DF2BC();
}

BOOL sub_1003100B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_1004DB81C();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)(uint64_t a1)
{
  sub_1004DB83C();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = v1[2];
  v4 = v1[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004DF2AC(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  sub_1004DF2AC(*&v5);
  v6 = v1[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_1004DF2AC(*&v6);
}

Swift::Int Shadow.hashValue.getter()
{
  sub_1004DF26C();
  Shadow.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_10031026C()
{
  sub_1004DF26C();
  Shadow.hash(into:)(v1);
  return sub_1004DF2BC();
}

BOOL sub_1003102A8(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = sub_1004DB81C();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_100310360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = sub_100004CB8(&qword_10063F248, &qword_10052AEA8);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_100004CB8(&qword_10063F250, &qword_10052AEB0);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t sub_10031045C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  sub_1004D9E1C();

  v10 = sub_1004DBD1C();
  v12 = v11;
  v13 = sub_1004DBD1C();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = sub_100004CB8(&qword_10063F258, &qword_10052AEB8);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(sub_100004CB8(&qword_10063F260, &qword_10052AEC0) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  sub_1000108DC(&v27, &v23, &qword_10063F268, &qword_10052AEC8);
  return sub_10001074C(v35, &qword_10063F268, &qword_10052AEC8);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *v7 = *a1;
  *&v7[8] = *(a1 + 8);
  *&v7[24] = *(a1 + 24);
  *&v7[40] = a2;
  *&v7[48] = a3;
  v7[56] = a4;

  sub_1004DB6EC();
  v8[0] = *v7;
  v8[1] = *&v7[16];
  v9[0] = *&v7[32];
  *(v9 + 9) = *&v7[41];
  return sub_1003121F8(v8);
}

uint64_t sub_100310734@<X0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100004CB8(&qword_10063F290, &qword_10052AEF0) - 8;
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  v9 = *(a1 + 6);
  v37 = *(a1 + 5);
  v35 = *(a1 + 56);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  sub_1003128E4(a1, v47);
  v14 = sub_1004DAF2C();
  sub_1004D9C8C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v47[0]) = 0;
  v23 = *(v4 + 44);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = sub_1004DBDAC();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  v26 = v37;
  *v8 = v37;
  *(v8 + 1) = v9;
  v27 = v9;
  v36 = v9;
  LOBYTE(v9) = v35;
  v8[16] = v35;
  *(v8 + 3) = 0;
  sub_1000108DC(v8, v6, &qword_10063F290, &qword_10052AEF0);
  *&v40 = v26;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = v9;
  *(&v41 + 1) = *v39;
  HIDWORD(v41) = *&v39[3];
  v42 = 0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v38;
  DWORD1(v45) = *&v38[3];
  *(&v45 + 1) = v16;
  *&v46[0] = v18;
  *(&v46[0] + 1) = v20;
  *&v46[1] = v22;
  BYTE8(v46[1]) = 0;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  v29 = v43;
  v30 = v44;
  *(a2 + 89) = *(v46 + 9);
  v31 = v46[0];
  a2[4] = v45;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  v32 = sub_100004CB8(&qword_10063F298, &qword_10052AEF8);
  sub_1000108DC(v6, a2 + *(v32 + 48), &qword_10063F290, &qword_10052AEF0);
  sub_1000108DC(&v40, v47, &qword_10063F2A0, &qword_10052AF00);
  sub_10001074C(v8, &qword_10063F290, &qword_10052AEF0);
  sub_10001074C(v6, &qword_10063F290, &qword_10052AEF0);
  v47[0] = v37;
  v47[1] = v36;
  v48 = v9;
  *v49 = *v39;
  *&v49[3] = *&v39[3];
  v50 = 0;
  v51 = v10;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = 0;
  return sub_10001074C(v47, &qword_10063F2A0, &qword_10052AF00);
}

uint64_t sub_100310AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = sub_1004DBD1C();
  v8 = v7;
  v9 = (a2 + *(sub_100004CB8(&qword_10063F270, &qword_10052AED0) + 36));
  *v9 = sub_1004DBD1C();
  v9[1] = v10;
  v11 = sub_100004CB8(&qword_10063F278, &qword_10052AED8);
  sub_100310734(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(sub_100004CB8(&qword_10063F280, &qword_10052AEE0) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = sub_100004CB8(&qword_10063F288, &qword_10052AEE8);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t sub_100310C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v3 = sub_1004DAAFC();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_10063F2A8, &qword_10052AF08);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 3);
  v14 = v17 + *(v13 + 36) - v7;
  sub_100004CB8(&qword_10063F2B0, &qword_10052AF10);
  sub_1004DA48C();
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  *(v14 + 3) = -v12;
  v14[32] = 0;
  v15 = sub_100004CB8(&qword_10063F2B8, &qword_10052AF18);
  (*(*(v15 - 8) + 16))(v8, v17[0], v15);
  sub_1004DA4AC();
  sub_10031291C();
  sub_100312A00();
  sub_1004DB41C();
  (*(v4 + 8))(v6, v3);
  return sub_10001074C(v8, &qword_10063F2A8, &qword_10052AF08);
}

void sub_100310E9C(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v46) = a3;
  v44 = a2;
  *&v45 = a1;
  v47 = a4;
  sub_100004CB8(&qword_10063F370, qword_10052B090);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = sub_1004DAFDC();
  v41 = *(v16 - 8);
  __chkstk_darwin();
  v17 = sub_1004DA8EC();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004DA88C();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DBBEC();
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1004DA42C();
  v27 = __chkstk_darwin();
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v46)
  {
    v31 = v44;
    if (v44 == -1)
    {
      v38 = sub_1004DA43C();
      (*(v21 + 104))(&v29[*(v38 + 20)], enum case for RoundedCornerStyle.continuous(_:), v20);
      v39 = v45;
      *v29 = v45;
      *(v29 + 1) = v39;
      *&v29[*(v26 + 20)] = a9;
      sub_1004DA41C();
      v45 = v48;
      v46 = v49;
      v30 = v50;
      sub_100313078(v29, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v32 = *&v45;
      v52.origin.x = a5;
      v52.origin.y = a6;
      v52.size.width = a7;
      v52.size.height = a8;
      v53 = CGRectInset(v52, a9, a9);
      v33 = [objc_opt_self() bezierPathWithRoundedRect:v31 byRoundingCorners:v53.origin.x cornerRadii:{v53.origin.y, v53.size.width, v53.size.height, v32, v32}];
      v34 = [v33 CGPath];
      sub_1004DB22C();
      v45 = v48;
      v46 = v49;
      v30 = v50;
    }

    goto LABEL_8;
  }

  if (v46 == 1)
  {
    sub_1004DAFCC();
    (*(v41 + 56))(v15, 0, 1, v16);
    sub_1004DAFBC();
    sub_10001074C(v15, &qword_10063F370, qword_10052B090);
    sub_1004DA8DC();
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectInset(v51, a9, a9);
    sub_1004DA8CC();
    v45 = v48;
    v46 = v49;
    v30 = v50;
    (*(v42 + 8))(v19, v43);
LABEL_8:
    v37 = v45;
    v36 = v46;
    goto LABEL_9;
  }

  v35 = *(v21 + 104);
  v35(v25, enum case for RoundedCornerStyle.continuous(_:), v20, v27);
  (v35)(v23, enum case for RoundedCornerStyle.circular(_:), v20);
  sub_1004DA87C();
  (*(v21 + 8))(v23, v20);
  sub_100313078(v25, &type metadata accessor for Capsule);
  sub_1004DBBDC();
  v37 = v48;
  v36 = v49;
  v30 = v50;
LABEL_9:
  v40 = v47;
  *v47 = v37;
  v40[1] = v36;
  *(v40 + 32) = v30;
}

double sub_10031141C@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double sub_10031143C@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100310E9C(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_10031148C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1004D9C1C();
  return sub_1002D2FCC;
}

uint64_t sub_100311514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100312FCC();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100311578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100312FCC();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003115DC(uint64_t a1)
{
  v2 = sub_100312FCC();

  return Shape.body.getter(a1, v2);
}

void sub_100311628()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_10063F208 = v1 == 6;
}

uint64_t sub_10031168C()
{
  if (qword_10063D8E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4008000000000000;
  if (byte_10063F208)
  {
    v0 = 0x4018000000000000;
  }

  static Corner.extraSmall = v0;
  unk_100673820 = -1;
  byte_100673828 = 0;
  return result;
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (qword_10063D8E8 != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (qword_10063D8E8 != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t sub_1003117A8()
{
  if (qword_10063D8E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4014000000000000;
  if (byte_10063F208)
  {
    v0 = 0x4020000000000000;
  }

  static Corner.small = v0;
  *algn_100673838 = -1;
  byte_100673840 = 0;
  return result;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (qword_10063D8F0 != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (qword_10063D8F0 != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t sub_1003118C4()
{
  if (qword_10063D8E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4020000000000000;
  if (byte_10063F208)
  {
    v0 = 0x4024000000000000;
  }

  static Corner.medium = v0;
  unk_100673850 = -1;
  byte_100673858 = 0;
  return result;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (qword_10063D8F8 != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (qword_10063D8F8 != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t sub_1003119E0()
{
  if (qword_10063D8E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x4024000000000000;
  if (byte_10063F208)
  {
    v0 = 0x4030000000000000;
  }

  static Corner.large = v0;
  *algn_100673868 = -1;
  byte_100673870 = 0;
  return result;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (qword_10063D900 != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (qword_10063D900 != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t sub_100311AFC()
{
  if (qword_10063D8E0 != -1)
  {
    result = swift_once();
  }

  v0 = 0x402C000000000000;
  if (byte_10063F208)
  {
    v0 = 0x4038000000000000;
  }

  static Corner.extraLarge = v0;
  unk_100673880 = -1;
  byte_100673888 = 0;
  return result;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (qword_10063D908 != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (qword_10063D908 != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t sub_100311C18()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_100311CF4;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_1003BB590;
  v3[3] = &unk_1005EE3B0;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = sub_1004DB7EC();
  static Border.artwork = result;
  qword_100673898 = 0x3FE0000000000000;
  byte_1006738A0 = 0;
  return result;
}

id sub_100311CF4(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_1005271E0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (qword_10063D910 != -1)
  {
    swift_once();
  }

  v0 = *&qword_100673898;

  return v0;
}

double sub_100311E58()
{
  sub_1004DB84C();
  v0 = sub_1004DB88C();

  static Shadow.shallow = v0;
  unk_1006738B0 = xmmword_1005271F0;
  result = 2.0;
  unk_1006738C0 = xmmword_100527200;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (qword_10063D918 != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

double static Shadow.shallow.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063D918 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_1006738B0;
  *(a1 + 24) = unk_1006738C0;

  return result;
}

double sub_100311F8C()
{
  sub_1004DB84C();
  v0 = sub_1004DB88C();

  static Shadow.intermediate = v0;
  unk_1006738D8 = xmmword_100527210;
  result = 15.0;
  unk_1006738E8 = xmmword_100527220;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (qword_10063D920 != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

double static Shadow.intermediate.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063D920 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_1006738D8;
  *(a1 + 24) = unk_1006738E8;

  return result;
}

double sub_1003120C4()
{
  sub_1004DB84C();
  v0 = sub_1004DB88C();

  static Shadow.deep = v0;
  unk_100673900 = xmmword_100527230;
  result = 25.0;
  unk_100673910 = xmmword_100527240;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (qword_10063D928 != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

double static Shadow.deep.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_10063D928 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = unk_100673900;
  *(a1 + 24) = unk_100673910;

  return result;
}

unint64_t sub_10031222C()
{
  result = qword_10063F210;
  if (!qword_10063F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F210);
  }

  return result;
}

unint64_t sub_100312284()
{
  result = qword_10063F218;
  if (!qword_10063F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F218);
  }

  return result;
}

unint64_t sub_1003122DC()
{
  result = qword_10063F220;
  if (!qword_10063F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F220);
  }

  return result;
}

unint64_t sub_100312334()
{
  result = qword_10063F228;
  if (!qword_10063F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F228);
  }

  return result;
}

uint64_t sub_100312388(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_1003123D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100312414()
{
  result = qword_10063F230;
  if (!qword_10063F230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F230);
  }

  return result;
}

unint64_t sub_100312488()
{
  result = qword_100641D60;
  if (!qword_100641D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100641D60);
  }

  return result;
}

unint64_t sub_1003124FC()
{
  result = qword_10063F238;
  if (!qword_10063F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F238);
  }

  return result;
}

uint64_t sub_100312570(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1004DA32C();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_1003125E0()
{
  result = qword_10063F240;
  if (!qword_10063F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F240);
  }

  return result;
}

__n128 sub_100312634(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100312648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10031269C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1003126FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100312744(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1003127A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1003127B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100312800(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10031291C()
{
  result = qword_10063F2C0;
  if (!qword_10063F2C0)
  {
    sub_100008DE4(&qword_10063F2A8, &qword_10052AF08);
    sub_100042B08(&qword_10063F2C8, &qword_10063F2B8, &qword_10052AF18, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F2D0, &qword_10063F2B0, &qword_10052AF10, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F2C0);
  }

  return result;
}

unint64_t sub_100312A00()
{
  result = qword_10063F2D8;
  if (!qword_10063F2D8)
  {
    sub_1004DAAFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F2D8);
  }

  return result;
}

double sub_100312A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100312A70(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100312AB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100312B10()
{
  result = qword_10063F2E0;
  if (!qword_10063F2E0)
  {
    sub_100008DE4(&qword_10063F250, &qword_10052AEB0);
    sub_100312BC8();
    sub_100042B08(&qword_10063F300, &qword_10063F308, &qword_10052AF50, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F2E0);
  }

  return result;
}

unint64_t sub_100312BC8()
{
  result = qword_10063F2E8;
  if (!qword_10063F2E8)
  {
    sub_100008DE4(&qword_10063F2F0, &qword_10052AF48);
    sub_100042B08(&qword_10063F2F8, &qword_10063F248, &qword_10052AEA8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F2E8);
  }

  return result;
}

unint64_t sub_100312C84()
{
  result = qword_10063F310;
  if (!qword_10063F310)
  {
    sub_100008DE4(&qword_10063F260, &qword_10052AEC0);
    sub_100042B08(&qword_10063F318, &qword_10063F258, &qword_10052AEB8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F320, &qword_10063F268, &qword_10052AEC8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F310);
  }

  return result;
}

unint64_t sub_100312D6C()
{
  result = qword_10063F328;
  if (!qword_10063F328)
  {
    sub_100008DE4(&qword_10063F270, &qword_10052AED0);
    sub_100042B08(&qword_10063F330, &qword_10063F288, &qword_10052AEE8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F338, &qword_10063F280, &qword_10052AEE0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F328);
  }

  return result;
}

uint64_t sub_100312E50()
{
  sub_100008DE4(&qword_10063F2A8, &qword_10052AF08);
  sub_1004DAAFC();
  sub_10031291C();
  sub_100312A00();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100312F1C()
{
  result = qword_10063F350;
  if (!qword_10063F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F350);
  }

  return result;
}

unint64_t sub_100312F74()
{
  result = qword_10063F358;
  if (!qword_10063F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F358);
  }

  return result;
}

unint64_t sub_100312FCC()
{
  result = qword_10063F360;
  if (!qword_10063F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F360);
  }

  return result;
}

unint64_t sub_100313024()
{
  result = qword_10063F368;
  if (!qword_10063F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F368);
  }

  return result;
}

uint64_t sub_100313078(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1003130EC(uint64_t a1)
{
  v2 = sub_1004D809C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100004CB8(&qword_10063DF60, &qword_100528BE0);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1003E10D0(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1003E10D0((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_1002CEFA0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_100313320(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_1004DEBCC();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_1004D874C();
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_1003133C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1004DED5C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1003E10F0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1004DEB2C();
        _s3__C7CGColorCMa_0(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003E10F0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_100006F5C(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _s3__C7CGColorCMa_0(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1003E10F0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_100006F5C(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003135C8(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_10031709C(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = sub_1004DD89C();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  sub_1004DD98C();
  return v5;
}

double sub_100313774()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  sub_100004CB8(&qword_10063F1F8, &unk_10052B3D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005128C0;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100527250, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double sub_100313824(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  sub_100004CB8(&qword_10063F1F8, &unk_10052B3D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005128C0;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100527250, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *sub_10031391C(uint64_t a1, void *a2)
{
  v4 = sub_1003135C8(a1, a2);
  sub_100313824(a1, a2);
  v6 = sub_100313990(v4, v5);

  return v6;
}

void *sub_100313990(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = sub_1003E1150(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_1004DBC9C();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_1003E1150((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_1004DBC9C();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_1003E1150((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100313B9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  sub_1004D9E1C();
  sub_1004DB17C();
  sub_100317BF4(v24);
  v4 = sub_1004DB87C();
  sub_1004D9E1C();
  sub_1004DB17C();
  sub_100317BF4(v25);
  v5 = sub_1004DB87C();
  sub_1004D9E1C();
  sub_1004DB17C();
  sub_100317BF4(v26);
  v6 = sub_1004DB87C();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  sub_1000108DC(v30, v55, &qword_10063F6A0, &qword_10052B738);
  sub_1000108DC(v34, v55, &qword_10063F6A0, &qword_10052B738);
  sub_1000108DC(&v38, v55, &qword_10063F6A0, &qword_10052B738);
  sub_10001074C(v43, &qword_10063F6A0, &qword_10052B738);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  sub_10001074C(v49, &qword_10063F6A0, &qword_10052B738);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return sub_10001074C(v55, &qword_10063F6A0, &qword_10052B738);
}

double sub_100313E80@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18[0] = *v1;
  v18[1] = v3;
  v19 = v1[2].n128_u8[0];
  v4 = sub_1004DBD1C();
  v6 = v5;
  sub_100313B9C(v18, &v36);
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v20 = v36;
  v21 = v37;
  v34[10] = v46;
  v34[11] = v47;
  v34[12] = v48;
  v34[6] = v42;
  v34[7] = v43;
  v34[8] = v44;
  v34[9] = v45;
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v40;
  v34[5] = v41;
  v33 = v49;
  v35 = v49;
  v34[0] = v36;
  v34[1] = v37;
  sub_1000108DC(&v20, v17, &qword_10063F690, &qword_10052B728);
  sub_10001074C(v34, &qword_10063F690, &qword_10052B728);
  v46 = v30;
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v38 = v22;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v36 = v20;
  v37 = v21;
  v7 = *(sub_100004CB8(&qword_10063F698, &qword_10052B730) + 36);
  v8 = enum case for BlendMode.plusLighter(_:);
  v9 = sub_1004DBDAC();
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  *a1 = v4;
  *(a1 + 8) = v6;
  v10 = v47;
  *(a1 + 176) = v46;
  *(a1 + 192) = v10;
  *(a1 + 208) = v48;
  *(a1 + 224) = v49;
  v11 = v43;
  *(a1 + 112) = v42;
  *(a1 + 128) = v11;
  v12 = v45;
  *(a1 + 144) = v44;
  *(a1 + 160) = v12;
  v13 = v39;
  *(a1 + 48) = v38;
  *(a1 + 64) = v13;
  v14 = v41;
  *(a1 + 80) = v40;
  *(a1 + 96) = v14;
  result = *&v36;
  v16 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_100314084@<X0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  swift_getWitnessTable();
  sub_1004DABCC();
  sub_100008DE4(&qword_10063F6A8, &qword_10052B740);
  v5 = sub_1004DA32C();
  v15 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v18 = a2[1];
  v19 = v3;
  sub_1004DBD1C();
  sub_100004CB8(&qword_10063F6B0, &qword_10052B748);
  WitnessTable = swift_getWitnessTable();
  sub_100317934(&qword_10063F6B8, &qword_10063F6B0, &qword_10052B748, sub_100317C54);
  sub_1004DB62C();
  v11 = sub_100042B08(&qword_10063F6C8, &qword_10063F6A8, &qword_10052B740, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v20 = WitnessTable;
  v21 = v11;
  swift_getWitnessTable();
  sub_100339DC8();
  v12 = *(v15 + 8);
  v12(v7, v5);
  sub_100339DC8();
  return (v12)(v9, v5);
}

double sub_10031431C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_10031391C(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  sub_1004DBCAC();
  sub_1004DA12C();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t sub_10031448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1004DA88C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(sub_100004CB8(&qword_10063F410, &unk_10052B300) + 36));
  v13 = sub_1004DA43C();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(sub_100004CB8(&unk_1006429C0, &qword_10052F9A0) + 36)) = 256;
  v16 = sub_100004CB8(&qword_10063F418, &qword_10052B310);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v18 = (a2 + *(sub_100004CB8(&qword_10063F420, &qword_10052B318) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = sub_1004DBD1C();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  sub_1004DB1AC();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = sub_1004DB87C();
  v43 = v26;
  v27 = sub_1004DB85C();
  sub_1004DB87C();
  v28 = sub_1004DB88C();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = sub_100004CB8(&qword_10063F428, &qword_10052B320);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  sub_1000108DC(&v57, &v47, &qword_10063F430, &qword_10052B328);
  return sub_10001074C(v65, &qword_10063F430, &qword_10052B328);
}

__n128 sub_1003147FC@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 sub_100314808@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double sub_100314814@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double sub_100314820@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 48);

  return result;
}

double sub_10031482C@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_100314838(_OWORD *a1, _OWORD *a2)
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
  return sub_100317110(v7, v8) & 1;
}

uint64_t sub_1003148C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1004DA88C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_10063F460, &qword_10052B358);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin();
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  sub_1004DB1AC();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  sub_1004DB1AC();
  v13 = sub_1004DB87C();
  v14 = sub_1004DB85C();
  sub_1004DB87C();
  v15 = sub_1004DB88C();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  sub_100316DE8(v44, v33);
  sub_1004DB16C();
  sub_10030FA98(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 4);
  LOBYTE(v29) = *(a1 + 80);
  sub_100004CB8(&qword_100643290, &qword_10052B360);
  sub_1004DBB5C();
  v16 = swift_allocObject();
  v17 = *(a1 + 5);
  v16[5] = *(a1 + 4);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 3);
  v16[3] = *(a1 + 2);
  v16[4] = v19;
  sub_100316EBC(a1, &v28);
  sub_100004CB8(&qword_10063F468, &qword_10052B368);
  sub_100004CB8(&qword_10063F470, &qword_10052B370);
  sub_100316EF4();
  sub_100316F48();
  sub_100042B08(&qword_10063F4A8, &qword_10063F470, &qword_10052B370, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v20 = v24;
  sub_1004DB51C();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  sub_10031702C(&v28);
  sub_10030FA98(v39);
  v33[0] = *(a1 + 11);
  LOBYTE(v33[1]) = *(a1 + 104);
  sub_1004DBB5C();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = sub_100004CB8(&qword_10063F4B0, &qword_10052B388);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_100314D7C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = sub_100004CB8(&qword_10063F490, &qword_10052B378);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(sub_100004CB8(&qword_10063F468, &qword_10052B368) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return sub_100317064(v14, &v13);
}

uint64_t sub_100314E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_100004CB8(&qword_10063F470, &qword_10052B370);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v15 - v7;
  v15[1] = swift_getKeyPath();
  v18 = a1;
  sub_100004CB8(&qword_10063F4B8, &qword_10052B3B0);
  v8 = sub_100008DE4(&qword_10063F4C0, &qword_10052B3B8);
  v9 = sub_100008DE4(&qword_10063F4C8, &qword_10052B3C0);
  v10 = sub_100042B08(&qword_10063F4D0, &qword_10063F4C0, &qword_10052B3B8, &protocol conformance descriptor for MoveKeyframe<A>);
  v11 = sub_100042B08(&qword_10063F4D8, &qword_10063F4C8, &qword_10052B3C0, &protocol conformance descriptor for SpringKeyframe<A>);
  v19 = &type metadata for Double;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  swift_getOpaqueTypeConformance2();
  sub_1004DA00C();
  sub_100042B08(&qword_10063F4A8, &qword_10063F470, &qword_10052B370, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v12 = v16;
  sub_1004DA3BC();
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1004DA3DC();
  sub_1004DA3CC();
  v13(v6, v3);
  return (v13)(v12, v3);
}

uint64_t sub_100315130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1004DBAFC();
  __chkstk_darwin();
  v3 = sub_100004CB8(&qword_10063F4C8, &qword_10052B3C0);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  __chkstk_darwin();
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v20 - v6;
  v7 = sub_100004CB8(&qword_10063F4C0, &qword_10052B3B8);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v20 - v11;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  sub_100004CB8(&qword_10063F4E0, &qword_10052B3C8);
  sub_1004DBB5C();
  sub_1004D9EBC();
  sub_100042B08(&qword_10063F4D0, &qword_10063F4C0, &qword_10052B3B8, &protocol conformance descriptor for MoveKeyframe<A>);
  sub_1004DAD4C();
  v12 = *(v8 + 8);
  v22 = v8 + 8;
  v23 = v12;
  v12(v10, v7);
  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  sub_1004DBB5C();
  sub_1004DBAEC();
  *&v29 = 0;
  BYTE8(v29) = 0;
  v13 = v24;
  sub_1004DA1AC();
  sub_100042B08(&qword_10063F4D8, &qword_10063F4C8, &qword_10052B3C0, &protocol conformance descriptor for SpringKeyframe<A>);
  v15 = v25;
  v14 = v26;
  sub_1004DAD4C();
  v16 = *(v27 + 8);
  v16(v13, v14);
  v17 = v21;
  sub_1004DAD6C();
  sub_1004DAD5C();
  v18 = v23;
  v23(v10, v7);
  v16(v15, v14);
  return v18(v17, v7);
}

double sub_100315524@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_1004DB18C();
  *&v6 = COERCE_DOUBLE(sub_1004DB1BC());
  v8 = v7;
  v10 = v9;
  sub_10030FA98(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_1003155F0@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  sub_1004DB18C();
  *&v6 = COERCE_DOUBLE(sub_1004DB1BC());
  v8 = v7;
  v10 = v9;
  sub_10030FA98(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double sub_1003156BC@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

double sub_1003156C8@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

uint64_t sub_1003156D4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return sub_1003171AC(v8, v9) & 1;
}

uint64_t sub_100315730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(sub_100004CB8(&qword_10063F438, &qword_10052B330) + 36));
  v10 = *(sub_1004DA43C() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = sub_1004DA88C();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(sub_100004CB8(&unk_1006429C0, &qword_10052F9A0) + 36)] = 256;
  v13 = sub_100004CB8(&qword_10063F440, &qword_10052B338);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  sub_1004DBD1C();
  sub_1004D9F5C();
  v14 = (a2 + *(sub_100004CB8(&qword_10063F448, &qword_10052B340) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = sub_1004DBD1C();
  v17 = v16;
  v18 = a2 + *(sub_100004CB8(&qword_10063F450, &qword_10052B348) + 36);
  sub_1003148C4(v24, v18);
  result = sub_100004CB8(&qword_10063F458, &qword_10052B350);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *&v17 = a9;
  *(&v17 + 1) = a10;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a11;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a12;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v22[0] = a7;
  *&v22[8] = a8;
  *&v22[16] = a13;
  v22[24] = a14;

  sub_1004DB6EC();
  v23[4] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return sub_100315A38(v23);
}

void sub_100315A68(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  sub_100315D04(0.5, 0.5);
  sub_100315D04(1.0, 2.0);
  sub_100315D04(4.0, 6.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1003161E0(v32);
  sub_1003165D4(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  sub_1003161E0(v35);
  sub_1003165D4(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    sub_1003161E0(v38);
    sub_100004CB8(&qword_100642970, &qword_100529AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1005128B0;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    sub_1003165D4(v38);
    sub_1003133C8(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = sub_1004DD85C().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100315D04(double a1, double a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = UIView.forAutolayout.getter();

  v7 = [v6 layer];
  [v7 setBorderWidth:a1];

  v8 = [v6 layer];
  v9 = [objc_opt_self() whiteColor];
  v10 = [v9 CGColor];

  [v8 setBorderColor:v10];
  v11 = [v6 layer];
  [v11 setCornerCurve:kCACornerCurveContinuous];

  v12 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = sub_1004DDB7C().super.super.isa;
  [v12 setValue:isa forKey:kCAFilterInputRadius];

  v14 = [v6 layer];
  sub_100004CB8(&qword_10063F4F0, &unk_100532080);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100511DA0;
  *(v15 + 56) = sub_100006F10(0, &qword_10063F4F8, CAFilter_ptr);
  *(v15 + 32) = v12;
  v16 = v12;
  v17 = sub_1004DD85C().super.isa;

  [v14 setFilters:v17];

  v18 = [v6 layer];
  [v18 setCompositingFilter:kCAFilterPlusL];

  [v3 addSubview:v6];
  v19 = objc_opt_self();
  sub_100004CB8(&qword_100642970, &qword_100529AD0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100511D90;
  v21 = [v6 topAnchor];
  v22 = [v3 topAnchor];
  v23 = a1 * -0.5;
  v24 = [v21 constraintEqualToAnchor:v22 constant:a1 * -0.5];

  *(v20 + 32) = v24;
  v25 = [v6 bottomAnchor];
  v26 = [v3 bottomAnchor];
  v27 = a1 * 0.5;
  v28 = [v25 constraintEqualToAnchor:v26 constant:v27];

  *(v20 + 40) = v28;
  v29 = [v6 leadingAnchor];
  v30 = [v3 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:v23];

  *(v20 + 48) = v31;
  v32 = [v6 trailingAnchor];
  v33 = [v3 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:v27];

  *(v20 + 56) = v34;
  sub_100006F10(0, qword_10063F500, NSLayoutConstraint_ptr);
  v35 = sub_1004DD85C().super.isa;

  [v19 activateConstraints:v35];
}

__n128 sub_1003161E0@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1003161E0(v20);
  sub_1003165D4(v20);
  sub_1003161E0(v21);
  sub_1003165D4(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  sub_1003161E0(v22);
  sub_100313774();
  v15 = v14;
  sub_1003165D4(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    sub_1004DEBCC();
    sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
    v17 = 32;
    do
    {
      sub_1004DE5CC(*(v15 + v17));
      sub_1004DEB9C();
      sub_1004DEBDC();
      sub_1004DEBEC();
      sub_1004DEBAC();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  sub_100006F10(0, &qword_100640D40, NSNumber_ptr);
  isa = sub_1004DD85C().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = sub_1004DE4EC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100644A50, &qword_100528DC0);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = sub_1004DE53C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000108DC(a1, v7, &qword_100644A50, &qword_100528DC0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10001074C(v7, &qword_100644A50, &qword_100528DC0);
  }

  (*(v9 + 32))(v11, v7, v8);
  sub_1004DE50C();
  v13 = v27;
  [v27 bounds];
  sub_1004DE4DC();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16 = [v13 subviews];
  sub_100006F10(0, &qword_100644F50, UIView_ptr);
  v17 = sub_1004DD87C();

  v25 = v9;
  v26 = v8;
  v24 = v11;
  if (v17 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1004DEB2C();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [v20 layer];
      [v23 setCornerRadius:v15];

      ++v19;
      if (v22 == i)
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

  return (*(v25 + 8))(v24, v26);
}

id sub_1003169D4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id sub_1003169E0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id sub_1003169EC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t sub_1003169F8(_OWORD *a1, _OWORD *a2)
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
  return sub_10031727C(v7, v8) & 1;
}

unint64_t sub_100316A98()
{
  result = qword_10063F3A8;
  if (!qword_10063F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F3A8);
  }

  return result;
}

uint64_t sub_100316B0C(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_1004DA32C();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_100316B7C()
{
  result = qword_10063F3B0;
  if (!qword_10063F3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F3B0);
  }

  return result;
}

__n128 sub_100316BD0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100316BF4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100316C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_100316C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100316CE4(uint64_t a1)
{
  result = sub_100316A98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100316D0C(uint64_t a1)
{
  result = sub_100316B7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100316D34(uint64_t a1)
{
  result = sub_100316D5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100316D5C()
{
  result = qword_10063F408;
  if (!qword_10063F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F408);
  }

  return result;
}

uint64_t sub_100316E44()
{

  return swift_deallocObject();
}

unint64_t sub_100316EF4()
{
  result = qword_10063F478;
  if (!qword_10063F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F478);
  }

  return result;
}

unint64_t sub_100316F48()
{
  result = qword_10063F480;
  if (!qword_10063F480)
  {
    sub_100008DE4(&qword_10063F468, &qword_10052B368);
    sub_100042B08(&qword_10063F488, &qword_10063F490, &qword_10052B378, &protocol conformance descriptor for PlaceholderContentView<A>);
    sub_100042B08(&qword_10063F498, &qword_10063F4A0, &qword_10052B380, &unk_10052B684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F480);
  }

  return result;
}

uint64_t sub_10031709C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_100004CB8(&qword_100642970, &qword_100529AD0);
  }

  else
  {

    return sub_1004DF00C();
  }
}

uint64_t sub_100317110(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_1004DBE4C() & 1) == 0 || (sub_1004DBE4C() & 1) == 0 || (sub_1004DB81C() & 1) == 0 || (sub_1004DB81C() & 1) == 0)
  {
    return 0;
  }

  return sub_1004DB81C();
}

uint64_t sub_1003171AC(double *a1, double *a2)
{
  if (*a1 != *a2 || (sub_1004DB1CC() & 1) == 0 || a1[6] != a2[6] || (sub_1004DB81C() & 1) == 0 || (sub_1004DB81C() & 1) == 0)
  {
    return 0;
  }

  return sub_1004DB81C();
}

uint64_t sub_10031727C(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_s3__C7CGColorCMa_0(0), sub_10031736C(), (sub_1004D879C() & 1) != 0) && (sub_1004D879C() & 1) != 0)
  {
    return sub_1004D879C() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10031736C()
{
  result = qword_10063F4E8;
  if (!qword_10063F4E8)
  {
    _s3__C7CGColorCMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F4E8);
  }

  return result;
}

uint64_t sub_1003173C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100317414(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_100317474(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003174FC(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 sub_100317518(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100317534(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10031757C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003175E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100317628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_100317684()
{
  result = qword_10063F588;
  if (!qword_10063F588)
  {
    sub_100008DE4(&qword_10063F428, &qword_10052B320);
    sub_100317934(&qword_10063F590, &qword_10063F420, &qword_10052B318, sub_100317768);
    sub_100042B08(&qword_10063F5B0, &qword_10063F430, &qword_10052B328, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F588);
  }

  return result;
}

unint64_t sub_100317768()
{
  result = qword_10063F598;
  if (!qword_10063F598)
  {
    sub_100008DE4(&qword_10063F410, &unk_10052B300);
    sub_100042B08(&qword_10063F5A0, &qword_10063F418, &qword_10052B310, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F5A8, &unk_1006429C0, &qword_10052F9A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F598);
  }

  return result;
}

unint64_t sub_100317850()
{
  result = qword_10063F5B8;
  if (!qword_10063F5B8)
  {
    sub_100008DE4(&qword_10063F450, &qword_10052B348);
    sub_100317934(&qword_10063F5C0, &qword_10063F448, &qword_10052B340, sub_1003179B8);
    sub_100042B08(&qword_10063F5D8, &qword_10063F458, &qword_10052B350, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F5B8);
  }

  return result;
}

uint64_t sub_100317934(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003179B8()
{
  result = qword_10063F5C8;
  if (!qword_10063F5C8)
  {
    sub_100008DE4(&qword_10063F438, &qword_10052B330);
    sub_100042B08(&qword_10063F5D0, &qword_10063F440, &qword_10052B338, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F5A8, &unk_1006429C0, &qword_10052F9A0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F5C8);
  }

  return result;
}

unint64_t sub_100317A9C(uint64_t a1)
{
  result = sub_100317AC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100317AC4()
{
  result = qword_10063F630;
  if (!qword_10063F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F630);
  }

  return result;
}

unint64_t sub_100317B18(uint64_t a1)
{
  result = sub_100317B40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100317B40()
{
  result = qword_10063F688;
  if (!qword_10063F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F688);
  }

  return result;
}

unint64_t sub_100317C54()
{
  result = qword_10063F6C0;
  if (!qword_10063F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F6C0);
  }

  return result;
}

unint64_t sub_100317CAC()
{
  result = qword_10063F6D0;
  if (!qword_10063F6D0)
  {
    sub_100008DE4(&qword_10063F698, &qword_10052B730);
    sub_100042B08(&qword_10063F6D8, &qword_10063F6E0, &unk_10052B750, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F6D0);
  }

  return result;
}

uint64_t sub_100317D64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GradientMaskModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1004DABCC();
  sub_100008DE4(&qword_10063F6A8, &qword_10052B740);
  sub_1004DA32C();
  swift_getWitnessTable();
  sub_100042B08(&qword_10063F6C8, &qword_10063F6A8, &qword_10052B740, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_1004DB9DC();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_1003185F8(a1, a2, a3);
  sub_1004DB9DC();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene(uint64_t a1)
{
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_1004DB9DC();
  return v2;
}

uint64_t type metadata accessor for HostedScenePhaseModel(uint64_t a1)
{
  result = qword_10063F7B8;
  if (!qword_10063F7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model(uint64_t a1)
{
  type metadata accessor for HostedScenePhaseModel(0);
  sub_1004DB9DC();
  return v2;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = sub_100004CB8(&qword_10063F6F0, &qword_10052B768);
  v31 = v11;
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_1004DBD1C();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = sub_100004CB8(&qword_10063F6F8, &qword_10052B770);
  sub_1004DBA0C();
  v30 = v36;
  v17 = v37;
  v18 = sub_100004CB8(&qword_10063F700, &qword_10052B778);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(sub_100004CB8(&qword_10063F708, &qword_10052B780) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  sub_100004CB8(&qword_10063F710, &qword_10052B7B8);
  sub_1004DB9EC();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  sub_10031AFCC(&qword_10063F720, type metadata accessor for HostedScenePhaseModel, &unk_10052B8F8);
  sub_1004D86BC();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(sub_100004CB8(&qword_10063F730, &qword_10052B7E8) + 28);
  v25 = sub_1004D9CEC();
  (*(*(v25 - 8) + 16))(v23 + v24, &v21[v22], v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  sub_1004DB9EC();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_100319460();
  sub_1003195FC();
  sub_1004DB70C();

  return sub_10001074C(v13, &qword_10063F6F0, &qword_10052B768);
}

uint64_t sub_100318380(uint64_t a1)
{
  sub_1004D9CEC();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_1004DA50C();
}

void sub_100318448(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_100004CB8(&qword_10063F710, &qword_10052B7B8);
  sub_1004DB9EC();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_100319838(Strong);
}

double View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
  sub_1004DB9DC();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  sub_1003185F8(a1, a2, a3);
  sub_1004DB9DC();
  sub_1004DB6EC();

  return result;
}

uint64_t sub_1003185F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = sub_1004D9CEC();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v11 = sub_1004D966C();
  sub_100035430(v11, static Logger.scenes);
  v12 = sub_1004D964C();
  v13 = sub_1004DDF9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = sub_1004DEAEC();
    v18 = sub_1002E5CC4(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    sub_100008D24(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  return v4;
}

uint64_t sub_10031881C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004D9CEC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_10031AFCC(&qword_10063F918, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v13[0] = a1;
  LOBYTE(a1) = sub_1004DD35C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v13[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    sub_100318E44();
    v10(v7, v4);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v11 = v13[0];
    v13[-2] = v2;
    v13[-1] = v11;
    v13[1] = v2;
    sub_10031AFCC(&qword_10063F720, type metadata accessor for HostedScenePhaseModel, &unk_10052B8F8);
    sub_1004D86AC();
  }

  return (v10)(v13[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.scenes);
}

uint64_t sub_100318B3C()
{
  v1 = v0;
  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  sub_100035430(v2, static Logger.scenes);

  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_1004DEAEC();
    v9 = sub_1002E5CC4(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    sub_100008D24(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      sub_10000904C(v13, v20);
      v14 = [v12 defaultCenter];
      sub_100008C70(v20, v20[3]);
      [v14 removeObserver:sub_1004DF06C()];

      swift_unknownObjectRelease();
      sub_100008D24(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = sub_1004D9CEC();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = sub_1004D86FC();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t sub_100318DF0()
{
  sub_100318B3C();

  return swift_deallocClassInstance();
}

void sub_100318E44()
{
  v1 = v0;
  v2 = sub_1004D9CEC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v6 = sub_1004D966C();
  sub_100035430(v6, static Logger.scenes);

  v18 = sub_1004D964C();
  v7 = sub_1004DDF9C();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_1004DEAEC();
    v11 = sub_1002E5CC4(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    sub_10031AFCC(&qword_10063F720, type metadata accessor for HostedScenePhaseModel, &unk_10052B8F8);
    sub_1004D86BC();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = sub_1004DD4DC();
    v15 = sub_1002E5CC4(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t sub_100319140@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_10031AFCC(&qword_10063F720, type metadata accessor for HostedScenePhaseModel, &unk_10052B8F8);
  sub_1004D86BC();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = sub_1004D9CEC();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_100319238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10031AFCC(&qword_10063F720, type metadata accessor for HostedScenePhaseModel, &unk_10052B8F8);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = sub_1004D9CEC();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100319334(uint64_t a1)
{
  sub_1004D9CEC();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_10031881C(v4);
}

uint64_t sub_100319404()
{

  return swift_deallocObject();
}

unint64_t sub_100319460()
{
  result = qword_10063F738;
  if (!qword_10063F738)
  {
    sub_100008DE4(&qword_10063F6F0, &qword_10052B768);
    sub_100319518();
    sub_100042B08(&qword_10063F760, &qword_10063F730, &qword_10052B7E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F738);
  }

  return result;
}

unint64_t sub_100319518()
{
  result = qword_10063F740;
  if (!qword_10063F740)
  {
    sub_100008DE4(&qword_10063F708, &qword_10052B780);
    sub_100042B08(&qword_10063F748, &qword_10063F700, &qword_10052B778, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100042B08(&qword_10063F750, &qword_10063F758, &qword_10052B7F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F740);
  }

  return result;
}

unint64_t sub_1003195FC()
{
  result = qword_10063F768;
  if (!qword_10063F768)
  {
    sub_100008DE4(&qword_10063F6E8, &qword_10052B760);
    sub_10031AFCC(&qword_10063F770, sub_1003196B0, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F768);
  }

  return result;
}

unint64_t sub_1003196B0()
{
  result = qword_10063F778;
  if (!qword_10063F778)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10063F778);
  }

  return result;
}

uint64_t sub_1003196FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D9CEC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  sub_100318E44();
  return (*(v5 + 8))(v8, v4);
}

void sub_100319838(void *a1)
{
  sub_100004CB8(&qword_10063F920, &unk_10052B930);
  __chkstk_darwin();
  v3 = &v28 - v2;
  v4 = sub_1004D9CEC();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      sub_1003196B0();
      v10 = a1;
      v11 = sub_1004DE5FC();

      if (v11)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v12 = sub_1004D966C();
  sub_100035430(v12, static Logger.scenes);

  v13 = sub_1004D964C();
  v14 = sub_1004DDF9C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = sub_1004DEAEC();
    v29 = v3;
    v18 = sub_1002E5CC4(v16, v17, &v31);
    v28 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100004CB8(&qword_10063F6E8, &qword_10052B760);
    v20 = sub_1004DD4DC();
    v22 = sub_1002E5CC4(v20, v21, &v31);
    v3 = v29;

    *(v15 + 14) = v22;
    v7 = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 activationState];

    v26 = &enum case for ScenePhase.background(_:);
    v27 = &enum case for ScenePhase.active(_:);
    if (v25)
    {
      v27 = &enum case for ScenePhase.inactive(_:);
    }

    if (v25 != 2)
    {
      v26 = v27;
    }

    (*(v5 + 104))(v3, *v26, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    (*(v5 + 104))(v7, enum case for ScenePhase.inactive(_:), v4);
  }

  sub_10031881C(v7);
  sub_100319C40();
}

double sub_100319C40()
{
  v1 = v0;
  v2 = sub_1004D9CEC();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = sub_100004CB8(&qword_10063F900, &qword_10052B918);
  v4 = *(v93 - 8);
  __chkstk_darwin();
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_10063D930 != -1)
    {
      swift_once();
    }

    v8 = sub_1004D966C();
    sub_100035430(v8, static Logger.scenes);

    v9 = v7;
    v10 = sub_1004D964C();
    v11 = sub_1004DDF9C();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = sub_1004DEAEC();
      v17 = sub_1002E5CC4(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = sub_1004DD43C();
      v22 = v21;

      v23 = sub_1002E5CC4(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_100004CB8(&qword_10063F908, &qword_10052B920);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    sub_1003E10F0(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      sub_10031ADCC(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = sub_10031AF40;
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = sub_10031A890;
      ObjectType = &unk_1005EE950;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      sub_10001074C(v54, &qword_10063F900, &qword_10052B918);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        sub_1003E10F0((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      sub_100006F5C(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    sub_10031ACF8(v70);
  }

  else
  {
    if (qword_10063D930 != -1)
    {
      swift_once();
    }

    v72 = sub_1004D966C();
    sub_100035430(v72, static Logger.scenes);

    v73 = sub_1004D964C();
    v74 = sub_1004DDF9C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = sub_1004DEAEC();
      v80 = sub_1002E5CC4(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      sub_100008D24(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    sub_10031ACF8(v81);
  }

  return result;
}

double sub_10031A5D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1004D9CEC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_10063D930 != -1)
    {
      swift_once();
    }

    v11 = sub_1004D966C();
    sub_100035430(v11, static Logger.scenes);
    v12 = a3;

    v13 = sub_1004D964C();
    v14 = sub_1004DDF9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = sub_1004DEAEC();
      v27 = a4;
      v19 = sub_1002E5CC4(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      sub_100004CB8(&qword_10063F910, &qword_10052B928);
      v22 = sub_1004DD4DC();
      v24 = sub_1002E5CC4(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    sub_10031881C(v9);
  }

  return result;
}

uint64_t sub_10031A890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004D7B7C();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1004D7B4C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10031A984()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.scenes);
  sub_100035430(v0, static Logger.scenes);
  return static Logger.music(_:)(0x73656E656353, 0xE600000000000000);
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10063D930 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10031AAC0(uint64_t a1)
{
  result = sub_1004D9CEC();
  if (v2 <= 0x3F)
  {
    result = sub_1004D86FC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10031ABB0()
{
  sub_100008DE4(&qword_10063F6F0, &qword_10052B768);
  sub_100008DE4(&qword_10063F6E8, &qword_10052B760);
  sub_100319460();
  sub_1003195FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10031AC40(void *a1)
{
  sub_1004DA32C();
  sub_10031ACA4();
  return swift_getWitnessTable();
}

unint64_t sub_10031ACA4()
{
  result = qword_10063F8F8;
  if (!qword_10063F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F8F8);
  }

  return result;
}

uint64_t sub_10031ACF8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      sub_10000904C(v4, v6);
      v5 = [v3 defaultCenter];
      sub_100008C70(v6, v6[3]);
      [v5 removeObserver:sub_1004DF06C()];

      swift_unknownObjectRelease();
      result = sub_100008D24(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_10031ADCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063F900, &qword_10052B918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031AE3C(uint64_t a1, uint64_t a2)
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10031AE74()
{
  v1 = sub_1004D9CEC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_10031AF40(uint64_t a1)
{
  v3 = *(sub_1004D9CEC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10031A5D4(a1, v4, v5, v6);
}

double sub_10031AFB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10031AFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WindowSceneResolver.windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_10063F928, &qword_10052B940);
  sub_1004DBB5C();
  return v4;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = sub_100004CB8(&qword_10063F928, &qword_10052B940);
  sub_1004DBB5C();
  return sub_10031B19C;
}

void sub_10031B19C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    sub_1004DBB6C();
  }

  else
  {
    sub_1004DBB6C();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100004CB8(&qword_10063F928, &qword_10052B940);
  sub_1004DBB7C();
  return v4;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  sub_100004CB8(&qword_10063F928, &qword_10052B940);
  sub_1004DBB7C();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  sub_100004CB8(&qword_10063F928, &qword_10052B940);
  sub_1004DBB6C();
}

void sub_10031B61C()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t sub_10031B67C()
{
  result = qword_10063F938;
  if (!qword_10063F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F938);
  }

  return result;
}

uint64_t sub_10031B798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031B8AC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10031B7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10031B8AC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10031B860(uint64_t a1)
{
  sub_10031B8AC();
  sub_1004DAA7C();
  __break(1u);
}

__n128 initializeBufferWithCopyOfBuffer for SymbolButton.Animation(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

unint64_t sub_10031B8AC()
{
  result = qword_10063F968;
  if (!qword_10063F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063F968);
  }

  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  sub_10031CF00(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  _s9MusicCore18EnvironmentMonitorC22__observationRegistrar33_6CC8A35C601F3763940B11776112173411Observation0lF0Vvpfi_0();
  return v0;
}

uint64_t sub_10031BA20(uint64_t a1)
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v1 + v5, v4, &qword_10063F9A8, &qword_10052BB18);
  v6 = sub_100320D1C(v4, a1);
  sub_10001074C(v4, &qword_10063F9A8, &qword_10052BB18);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_1004D86AC();
  }

  else
  {
    sub_1000108DC(a1, v4, &qword_10063F9A8, &qword_10052BB18);
    swift_beginAccess();
    sub_100322330(v4, v1 + v5);
    swift_endAccess();
  }

  return sub_10001074C(a1, &qword_10063F9A8, &qword_10052BB18);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  sub_10031CF38(v1 + v3, v7);
  v4 = _s11MusicCoreUI15NoticePresenterC13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v7, a1);
  sub_100320B60(v7);
  if (v4)
  {
    sub_10031CF38(a1, v7);
    sub_10031CF38(v1 + v3, v6);
    swift_beginAccess();
    sub_100320C38(v7, v1 + v3);
    swift_endAccess();
    sub_10031CF70(v6);
    sub_100320B60(v6);
    sub_100320B60(v7);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v7[0] = v1;
    sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    sub_1004D86AC();
  }

  return sub_100320B60(a1);
}

double NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86AC();
  sub_10000DE74(a1, a2);

  return result;
}

uint64_t sub_10031BEAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_1000108DC(v3 + v4, a2, &qword_10063F9A8, &qword_10052BB18);
}

uint64_t sub_10031BF84(uint64_t a1)
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v3 = &v5 - v2;
  sub_1000108DC(a1, &v5 - v2, &qword_10063F9A8, &qword_10052BB18);
  return sub_10031BA20(v3);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return sub_1000108DC(v5 + v3, a1, &qword_10063F9A8, &qword_10052BB18);
}

uint64_t sub_10031C108(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1003223BC(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v5 = &v12[-v4];
  swift_getKeyPath();
  v14 = v1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(v2 + v6, v5, &qword_10063F9A8, &qword_10052BB18);
  v7 = type metadata accessor for Notice(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  sub_10001074C(v5, &qword_10063F9A8, &qword_10052BB18);
  if (v6 != 1)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v12[-16] = v2;
    *&v12[-8] = 0;
    v13 = v2;
    sub_1004D86AC();

    if (a1)
    {
      sub_1004DBD7C();
    }

    sub_1004DA0EC();

    swift_getKeyPath();
    v13 = v2;
    sub_1004D86BC();

    v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v9 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v13 = v2;
    sub_1004D86BC();

    if (*(v2 + v8))
    {
      sub_100006F10(0, &qword_100642240, OS_dispatch_queue_ptr);
      v10 = sub_1004DE14C();
      if (a1)
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 0.0;
      }

      OS_dispatch_queue.asyncAfter(_:block:)(sub_100320D14, v2, v11);
    }
  }
}

uint64_t sub_10031C4BC()
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  return sub_10031BA20(v1);
}

void sub_10031C584(uint64_t a1)
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v3 = v7 - v2;
  swift_getKeyPath();
  v7[1] = a1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  sub_1000108DC(a1 + v4, v3, &qword_10063F9A8, &qword_10052BB18);
  v5 = type metadata accessor for Notice(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_10001074C(v3, &qword_10063F9A8, &qword_10052BB18);
  if (v4 == 1)
  {
    sub_10031DD04(0, v6);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  _s11MusicCoreUI15NoticePresenterC7present_12internalOnlyy0aB00D0V_SbtF_0(v5, v2);
  return sub_10025AD60(v5);
}

void sub_10031C7A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11[0] = a1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v11[0] = a1;
    sub_1004D86BC();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    sub_10031CF38(a1 + v5, v11);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = sub_100320FBC(v7, v11);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    sub_10031DD04(v4, v10);
  }
}

void sub_10031C984(uint64_t a1, uint64_t a2)
{
  sub_100004CB8(&qword_10063F9A8, &qword_10052BB18);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_1003221DC(a2, &v18 - v4);
  v6 = type metadata accessor for Notice(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_10031BA20(v5);
  swift_getKeyPath();
  v19 = a1;
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v8 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v8)
  {
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 view];

        if (!v12)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v12 setNeedsLayout];
        v10 = v12;
      }
    }
  }

  swift_getKeyPath();
  v19 = a1;
  sub_1004D86BC();

  v13 = *(a1 + v7);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
LABEL_12:

        return;
      }

      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];
        v15 = v17;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

double sub_10031CC00()
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  return result;
}

double sub_10031CCAC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86BC();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);

  return result;
}

double sub_10031CD60(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_100322638(&qword_10063F9A0, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  sub_1004D86AC();

  return result;
}

double sub_10031CE2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;

  if (v2)
  {
    sub_1004DBF4C();
  }

  return result;
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a3, double a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}