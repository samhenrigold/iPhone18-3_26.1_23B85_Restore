char *sub_1001A7BB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574800, &qword_100401CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A7CBC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100168088(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1001A7DF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&unk_1005747C0, &unk_100401C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A7F00(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574840, &qword_1004066A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A801C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574830, &qword_100401CE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574838, &unk_100401CF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A8150(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_100574888, &qword_100401D40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574890, &unk_100401D48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A8298(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100168088(&qword_1005747B8, &unk_100401C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(&qword_100574230, &qword_100401FE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A83CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_100168088(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001A84E8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100168088(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1001A85E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(&qword_100574860, &qword_100401D10);
  v10 = *(sub_100168088(&qword_100574868, &qword_100401D18) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100168088(&qword_100574868, &qword_100401D18) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1001A87D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100168088(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100168088(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001A891C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100168088(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_1001A8AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NonFollowedShows = type metadata accessor for FetchNonFollowedShows();
  v20[3] = NonFollowedShows;
  v20[4] = &off_1004E6C88;
  v20[0] = a2;
  v19[3] = type metadata accessor for PodcastsStateCoordinator();
  v19[4] = sub_100018394(&qword_100573DA8, type metadata accessor for PodcastsStateCoordinator, &protocol conformance descriptor for PodcastsStateCoordinator);
  v19[0] = a3;
  v7 = type metadata accessor for NonFollowedShowsSyncStorage();
  v8 = objc_allocWithZone(v7);
  sub_100010C38(v20, NonFollowedShows);
  v9 = __chkstk_darwin();
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v11;
  v18[3] = NonFollowedShows;
  v18[4] = &off_1004E6C88;
  v18[0] = v13;
  *&v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_importContext] = a1;
  sub_100004428(v18, &v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows]);
  sub_100004428(v19, &v8[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_podcastsStateCoordinator]);
  v17.receiver = v8;
  v17.super_class = v7;
  v14 = objc_msgSendSuper2(&v17, "init");
  sub_100004590(v19);
  sub_100004590(v18);
  sub_100004590(v20);
  return v14;
}

id sub_1001A8CB4()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();
  v10 = v9;

  if (v10)
  {
    static Logger.cloudSync.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, v11, "[NonFollowedShows] We never synced before, so there are no old Implicit Follows to clean up.", v13, 2u);
    }

    (*(v1 + 8))(v3, v0);
    v14 = [objc_opt_self() falsePredicate];

    return v14;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v16 = kPodcastLastImplicitlyFollowedDate;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [objc_opt_self() predicateForDateKey:v16 isLessThanDate:isa];

    v19 = objc_opt_self();
    v20 = Array._bridgeToObjectiveC()().super.isa;
    v21 = [v19 predicateForImplicitlyFollowedPodcastsExcludingUUIDs:v20];

    v22 = [v21 AND:v18];
    (*(v5 + 8))(v7, v4);
    return v22;
  }
}

void *_s8Podcasts27NonFollowedShowsSyncStorageC045unsafeImplicitFollowsOnlyInLocalAndBeforeLastE014excludingUUIDs2inSaySo9MTPodcastCGSgSaySSG_So22NSManagedObjectContextCtF_0(uint64_t a1, void *a2)
{
  v3 = sub_1001A8CB4();
  v4 = kMTPodcastEntityName;
  v5 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [a2 objectsInEntity:v4 predicate:v5 sortDescriptors:isa];

  if (v7)
  {
    sub_100009F1C(0, &qword_1005739D0, NSManagedObject_ptr);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_10037F7EC(v8);
  }

  return v7;
}

uint64_t UpNextSplitMigrationStep.requiresMigration.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Podcasts();
  v17[3] = v7;
  v17[4] = sub_1001A9324();
  v8 = sub_10000E680(v17);
  (*(*(v7 - 8) + 104))(v8, enum case for Podcasts.upNextSplit(_:), v7);
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100004590(v17);
  if (v7)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    v11 = [v9 BOOLForKey:v10];

    return v11 ^ 1;
  }

  else
  {
    static Logger.database.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "[UpNextSplitMigrationStep] Feature flag is OFF, skipping migration for now", v15, 2u);
    }

    (*(v4 + 8))(v6, v3);
    return 0;
  }
}

unint64_t sub_1001A9324()
{
  result = qword_1005742C0;
  if (!qword_1005742C0)
  {
    type metadata accessor for Podcasts();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005742C0);
  }

  return result;
}

void sub_1001A9394(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 1);
  __chkstk_darwin();
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v8 = [objc_opt_self() predicateForSubscribedAndNotHidden];
  [v7 setPredicate:v8];

  [v7 setResultType:2];
  sub_100168088(&unk_1005747C0, &unk_100401C90);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100400790;
  v10 = kPodcastUuid;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v11;
  *(v9 + 40) = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setPropertiesToFetch:isa];

  sub_100009F1C(0, &qword_10057E7C0, NSDictionary_ptr);
  v14 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return;
  }

  v15 = v14;
  v43 = v10;
  v36 = a1;
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 >> 62)
  {
LABEL_35:
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31[1] = 0;
  v32 = v6;
  v33 = v7;
  v34 = v4;
  v35 = v3;
  if (!v17)
  {
    v37 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v6 = 0;
  v37 = _swiftEmptyArrayStorage;
  do
  {
    v18 = v6;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v19 = *(v15 + 8 * v18 + 32);
      }

      v3 = v19;
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *&v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v38 + 1) = v20;
      v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v7 = [v3 __swift_objectForKeyedSubscript:v4];
      swift_unknownObjectRelease();
      if (v7)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v38 = 0u;
        v39 = 0u;
      }

      v40[0] = v38;
      v40[1] = v39;
      if (*(&v39 + 1))
      {
        break;
      }

      sub_10016B3CC(v40);
LABEL_9:
      ++v18;
      if (v6 == v17)
      {
        goto LABEL_29;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v3 = v42;
    if (!v42)
    {
      goto LABEL_9;
    }

    v4 = v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_100243134(0, *(v37 + 2) + 1, 1, v37);
    }

    v7 = *(v37 + 2);
    v22 = *(v37 + 3);
    if (v7 >= v22 >> 1)
    {
      v37 = sub_100243134((v22 > 1), v7 + 1, 1, v37);
    }

    v23 = v37;
    *(v37 + 2) = v7 + 1;
    v24 = &v23[16 * v7];
    *(v24 + 4) = v4;
    *(v24 + 5) = v3;
  }

  while (v6 != v17);
LABEL_29:

  v25 = v32;
  static Logger.database.getter();
  v26 = v37;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = *(v26 + 2);

    _os_log_impl(&_mh_execute_header, v27, v28, "[UpNextSplitMigrationStep] Updating New Episode markers for %ld podcasts...", v29, 0xCu);
  }

  else
  {
  }

  v30 = v33;
  (*(v34 + 8))(v25, v35);
  type metadata accessor for NewEpisodesShelfUpdater();
  static NewEpisodesShelfUpdater.synchronouslyUpdateNewEpisodes(forPodcastsWithUUIDs:context:)();
}

uint64_t sub_1001A9898()
{
  if (*(v0 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return UpNextSplitMigrationStep.requiresMigration.getter(*v0, *(v0 + 8), v1 | *(v0 + 16));
}

void sub_1001A98B8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.database.getter();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[UpNextSplitMigrationStep] Starting migration...", v7, 2u);
  }

  (*(v2 + 8))(v4, v1);
  sub_100009F1C(0, &qword_1005735F0, MTDB_ptr);
  v8 = static MTDB.shared.getter();
  if (!v0)
  {
    v9 = v8;
    v10 = NSManagedObjectContextProvider.privateManagedObjectContext.getter();

    __chkstk_darwin();
    v11[-2] = v10;
    NSManagedObjectContext.performAndWait<A>(_:)();
  }
}

uint64_t sub_1001A9ACC()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001A9B30()
{
  v23 = *v0;
  v21 = type metadata accessor for ObserverQueue();
  v1 = *(v21 - 8);
  __chkstk_darwin();
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StationListOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_1005749B8, &qword_100401E98);
  v27 = *(v25 - 8);
  __chkstk_darwin();
  v22 = &v21 - v8;
  v24 = sub_100168088(&qword_1005749C0, &qword_100401EA0);
  v26 = *(v24 - 8);
  __chkstk_darwin();
  v10 = &v21 - v9;
  swift_getObjectType();
  static StationListOptions.list.getter();
  dispatch thunk of LibraryDataProviderProtocol.fetchStationsObserver(with:)();
  (*(v5 + 8))(v7, v4);
  v11 = v21;
  (*(v1 + 104))(v3, enum case for ObserverQueue.main(_:), v21);
  sub_100009FAC(&qword_1005749C8, &qword_1005749D0, &qword_100401EA8, &protocol conformance descriptor for AnyObserver<A>);
  v12 = Promise<A>.observerPublisher(receiveOn:)();

  (*(v1 + 8))(v3, v11);
  v28 = v12;
  v13 = v0[2];
  v14 = swift_allocObject();
  v15 = v23;
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;

  sub_100168088(&qword_1005749D8, &unk_100401EB0);
  sub_100009FAC(&qword_1005749E0, &qword_1005749D8, &unk_100401EB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v16 = v22;
  Publisher.map<A>(_:)();

  sub_100009FAC(&qword_1005749E8, &qword_1005749B8, &qword_100401E98, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = v25;
  Publisher.prepend(_:)();
  (*(v27 + 8))(v16, v17);
  sub_100009FAC(&unk_1005749F0, &qword_1005749C0, &qword_100401EA0, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  v18 = v24;
  v19 = Publisher.eraseToAnyPublisher()();
  (*(v26 + 8))(v10, v18);
  return v19;
}

uint64_t sub_1001AA020@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001AA3F8(*(v2 + 16), *a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

char *sub_1001AA058(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
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

  v12 = _swiftEmptyArrayStorage;
  result = sub_1001A7630(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1001AA250(i, a1);
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1001A7630((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_10016B7CC(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001A7630((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_10016B7CC(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AA250(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    if (swift_dynamicCastObjCProtocolConditional())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "CPListTemplateItem";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  if (swift_dynamicCastObjCProtocolConditional())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "libraryDataProvider";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x80000001004667A0;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1001AA3F8(uint64_t a1, unint64_t a2)
{
  type metadata accessor for CarPlayPageLoadCoordinator(0);
  swift_allocObject();

  sub_1002442DC(v3);

  v4 = BaseObjectGraph.satisfying<A>(_:with:)();
  if (a2 >> 62)
  {
LABEL_21:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(a2 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    sub_1001AA70C();
    v9 = sub_100372B24(v4, v7);

    ++v6;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v8;
    }
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {

      sub_100168088(&unk_100574A00, &unk_100401EC0);
      v10 = _bridgeCocoaArray<A>(_:)();

      goto LABEL_18;
    }

LABEL_24:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v10 = _swiftEmptyArrayStorage;
LABEL_18:

  v11 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v10);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithItems:isa];

  sub_100168088(&unk_100574680, &qword_100401740);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v13;

  return v14;
}

unint64_t sub_1001AA70C()
{
  result = qword_100577460;
  if (!qword_100577460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100577460);
  }

  return result;
}

uint64_t sub_1001AA758(unsigned __int8 *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    HomePageProvider.episodeOrderingFrozen.setter();
  }

  return result;
}

uint64_t sub_1001AA7C0()
{

  AnyCancellable.cancel()();

  return swift_deallocClassInstance();
}

uint64_t sub_1001AA858(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for ModernShelf();
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = ModernShelf.items.getter();
    v5 = sub_10037F960(v4);

    if (!v5)
    {
      v5 = _swiftEmptyArrayStorage;
    }

    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_34:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_17;
    }

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v26 = v7;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v26)
    {
      goto LABEL_38;
    }

    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_40;
      }

      sub_100009FAC(&qword_100574B60, &qword_100574B58, &qword_100401F98, &protocol conformance descriptor for [A]);
      for (i = 0; i != v14; ++i)
      {
        sub_100168088(&qword_100574B58, &qword_100401F98);
        v17 = sub_10037076C(v25, i, v5);
        v19 = *v18;

        (v17)(v25, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for LegacyEpisodeLockup();
      swift_arrayInitWithCopy();
    }

    if (v26 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v26);
      v22 = v20 + v26;
      if (v21)
      {
        goto LABEL_39;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v26 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_1001AABAC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x80000001004668C0;
  v1._object = 0x8000000100466890;
  v4._countAndFlagsBits = 0xD000000000000023;
  v1._countAndFlagsBits = 0xD000000000000021;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_100574A10 = v3;
}

uint64_t sub_1001AAC64()
{
  v26 = *v0;
  v1 = v26;
  v2 = sub_100168088(&unk_100578D90, &qword_1004047F0);
  v3 = *(v2 - 8);
  v28 = v2;
  v29 = v3;
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_100168088(&qword_100574AE0, &qword_100401F30);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v33 = sub_100168088(&qword_100574AE8, &qword_100401F38);
  v36 = *(v33 - 8);
  __chkstk_darwin();
  v27 = &v26 - v10;
  v11 = sub_100168088(&unk_100574AF0, &unk_100401F40);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  __chkstk_darwin();
  v32 = &v26 - v13;
  v37 = HomePageProvider.pageContent.getter();
  *(swift_allocObject() + 16) = v1;
  sub_100168088(&unk_100578DB0, &unk_100404810);
  sub_100009FAC(&unk_100574B00, &unk_100578DB0, &unk_100404810, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.removeDuplicates(by:)();

  sub_100009FAC(&unk_100577420, &unk_100578D90, &qword_1004047F0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);

  v14 = v28;
  Publisher.filter(_:)();

  (*(v29 + 8))(v5, v14);
  v37 = v0[5];
  sub_100168088(&qword_100574B10, &unk_100401F50);
  sub_100009FAC(&qword_100574B18, &qword_100574AE0, &qword_100401F30, &protocol conformance descriptor for Publishers.Filter<A>);
  sub_100009FAC(&unk_100574B20, &qword_100574B10, &unk_100401F50, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v15 = v27;
  v16 = v30;
  Publisher.combineLatest<A>(_:)();
  (*(v31 + 8))(v9, v16);
  v17 = v0[2];
  v18 = swift_allocObject();
  v19 = v26;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1001AB814;
  *(v20 + 24) = v18;

  static Subscribers.Demand.unlimited.getter();
  sub_100168088(&unk_100578B20, &unk_100405CB0);
  sub_100009FAC(&unk_100574B30, &qword_100574AE8, &qword_100401F38, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  sub_100009FAC(&qword_100578B30, &unk_100578B20, &unk_100405CB0, &protocol conformance descriptor for Future<A, B>);
  v22 = v32;
  v21 = v33;
  Publisher<>.flatMap<A>(maxPublishers:_:)();

  (*(v36 + 8))(v15, v21);
  sub_100009FAC(&unk_100574B40, &unk_100574AF0, &unk_100401F40, &protocol conformance descriptor for Publishers.FlatMap<A, B>);
  v23 = v34;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v35 + 8))(v22, v23);
  return v24;
}

uint64_t sub_1001AB278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for PageContent() - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  sub_100168088(&qword_100578010, &qword_100401F60);
  __chkstk_darwin();
  v9 = &v15 - v8;
  sub_100168088(&unk_100578B20, &unk_100405CB0);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1001AB84C(a1, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  sub_1001AD194(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, &type metadata accessor for PageContent);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_100401F70;
  *(v13 + 24) = v12;

  return Future<>.init(priority:unwrapping:)();
}

uint64_t sub_1001AB48C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AB524, v4, v3);
}

uint64_t sub_1001AB524()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = sub_1001ACCA8(v2, v1);
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001AB594(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1001AB680;

  return v5();
}

uint64_t sub_1001AB680(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_1001AB81C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1001AB84C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageContent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AB8B0()
{
  v2 = *(type metadata accessor for PageContent() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001AB9B8;

  return sub_1001AB48C(v4, v0 + v3);
}

uint64_t sub_1001AB9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_1001ABACC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001C51C;

  return sub_1001AB594(a1, v4);
}

void *sub_1001ABB84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100168088(&qword_100574B68, qword_100401FA0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v10 - v6;
  sub_100168088(&qword_100574B10, &unk_100401F50);
  swift_allocObject();
  v1[5] = CurrentValueSubject.init(_:)();
  v1[2] = a1;
  type metadata accessor for HomePageProvider();
  swift_allocObject();
  swift_retain_n();
  v1[4] = HomePageProvider.init(asPartOf:platformContext:)();

  HomePageProvider.loadPageContent()();

  type metadata accessor for FreezableContentSubject();
  BaseObjectGraph.inject<A>(_:)();
  sub_1001AD25C();
  sub_1001AD2B4();
  Publisher<>.removeDuplicates()();
  swift_allocObject();
  swift_weakInit();
  sub_100009FAC(&unk_100574B80, &qword_100574B68, qword_100401FA0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v8 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  v2[3] = v8;
  return v2;
}

char *sub_1001ABDBC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v30 - v6;
  v8 = type metadata accessor for ModernPage();
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  sub_1001AB84C(a1, v7);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v22 = v7;
LABEL_17:
    sub_1001AD1FC(v22, &type metadata accessor for PageContent);
    v23 = 0;
    return (v23 & 1);
  }

  sub_1001AD194(v7, v12, &type metadata accessor for ModernPage);
  sub_1001AB84C(a2, v5);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1001AD1FC(v12, &type metadata accessor for ModernPage);
    v22 = v5;
    goto LABEL_17;
  }

  sub_1001AD194(v5, v10, &type metadata accessor for ModernPage);
  v13 = sub_1001AA858(*&v12[*(v8 + 24)]);
  v14 = sub_1001AA858(*&v10[*(v8 + 24)]);
  if (v13 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v10;
  v31 = v12;
  if (v15)
  {
    v32 = _swiftEmptyArrayStorage;
    result = sub_1001A7578(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v17 = 0;
    v18 = v32;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v19 = LegacyLockup.adamId.getter();

      v32 = v18;
      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        sub_1001A7578((v20 > 1), v21 + 1, 1);
        v18 = v32;
      }

      ++v17;
      v18[2] = v21 + 1;
      v18[v21 + 4] = v19;
    }

    while (v15 != v17);

    v10 = v30;
    v12 = v31;
    if (!(v14 >> 62))
    {
LABEL_19:
      v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_20;
      }

LABEL_31:

      v26 = _swiftEmptyArrayStorage;
LABEL_32:
      v23 = sub_100195F50(v18, v26);

      sub_1001AD1FC(v10, &type metadata accessor for ModernPage);
      sub_1001AD1FC(v12, &type metadata accessor for ModernPage);
      return (v23 & 1);
    }
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
    if (!(v14 >> 62))
    {
      goto LABEL_19;
    }
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
    goto LABEL_31;
  }

LABEL_20:
  v32 = _swiftEmptyArrayStorage;
  result = sub_1001A7578(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v32;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v27 = LegacyLockup.adamId.getter();

      v32 = v26;
      v29 = v26[2];
      v28 = v26[3];
      if (v29 >= v28 >> 1)
      {
        sub_1001A7578((v28 > 1), v29 + 1, 1);
        v26 = v32;
      }

      ++v25;
      v26[2] = v29 + 1;
      v26[v29 + 4] = v27;
    }

    while (v24 != v25);

    v10 = v30;
    v12 = v31;
    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
  return result;
}

id sub_1001AC260(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v12._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5458454E5F5055;
  v7._object = 0xE700000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  v10[0] = 1;
  v11 = 6;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, v10, 2);
}

id sub_1001AC394(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._object = 0x80000001004668F0;
  v7._countAndFlagsBits = 0xD000000000000018;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 1;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 1);
}

id sub_1001AC4DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x736970452077654ELL;
  v7._object = 0xEC0000007365646FLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 3);
}

id sub_1001AC628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  sub_100009F1C(0, &qword_100574B50, CPListImageRowItem_ptr);
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v16._object = 0xE000000000000000;
  v7._object = 0x8000000100466910;
  v7._countAndFlagsBits = 0xD000000000000010;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v16);

  v10 = 4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  v15 = 10;

  return sub_1002B0E94(a1, v9._countAndFlagsBits, v9._object, a2, &v10, 4);
}

id sub_1001AC770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModernShelf();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _swiftEmptyArrayStorage;
  v8 = *(a2 + *(type metadata accessor for ModernPage() + 24));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = type metadata accessor for HomePageProvider();
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v49 = v12;
    v50 = v10;
    v13 = v8 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v47 = (v11 - 8);
    v48 = v14;
    v45 = _swiftEmptyArrayStorage;
    v46 = v11;
    while (1)
    {
      v15 = v4;
      v49(v7, v13, v4);
      v16 = ModernShelf.id.getter();
      v18 = v17;
      if (static HomePageProvider.upNextShelfID.getter() == v16 && v19 == v18)
      {
      }

      else
      {
        v20 = a1;
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          if (static HomePageProvider.recentlyPlayedShelfID.getter() == v16 && v25 == v18)
          {

            goto LABEL_17;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v26)
          {
LABEL_17:

            v27 = ModernShelf.items.getter();
            v28 = sub_10037F978(v27);

            if (!v28)
            {
              v28 = _swiftEmptyArrayStorage;
            }

            a1 = v20;
            v29 = sub_1001AC394(v20, v28);
          }

          else
          {
            if (static HomePageProvider.newEpisodesShelfID.getter() == v16 && v31 == v18)
            {
            }

            else
            {
              v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v32 & 1) == 0)
              {
                if (static HomePageProvider.continuePlayingShelfID.getter() == v16 && v35 == v18)
                {

                  a1 = v20;
                }

                else
                {
                  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  a1 = v20;
                  if ((v36 & 1) == 0)
                  {
                    goto LABEL_12;
                  }
                }

                v37 = ModernShelf.items.getter();
                v38 = sub_10037F978(v37);

                if (!v38)
                {
                  v38 = _swiftEmptyArrayStorage;
                }

                v29 = sub_1001AC628(a1, v38);
                goto LABEL_20;
              }
            }

            v33 = ModernShelf.items.getter();
            v34 = sub_10037F978(v33);

            if (!v34)
            {
              v34 = _swiftEmptyArrayStorage;
            }

            a1 = v20;
            v29 = sub_1001AC4DC(v20, v34);
          }

LABEL_20:
          v24 = v29;

          if (v24)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }

        a1 = v20;
      }

      v22 = ModernShelf.items.getter();
      v23 = sub_10037F978(v22);

      if (!v23)
      {
        v23 = _swiftEmptyArrayStorage;
      }

      v24 = sub_1001AC260(a1, v23);

      if (v24)
      {
LABEL_21:
        v30 = v24;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = v15;
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v4 = v15;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v47)(v7, v4);
        v45 = v51;
        goto LABEL_3;
      }

LABEL_12:
      v4 = v15;
      (*v47)(v7, v15);
LABEL_3:
      v13 += v48;
      if (!--v9)
      {
        goto LABEL_40;
      }
    }
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_40:
  v39 = v45;
  if (v45 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_42;
    }

LABEL_44:

    return 0;
  }

  if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

LABEL_42:
  v40 = objc_allocWithZone(CPListSection);
  sub_1001AA058(v39);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v42 = [v40 initWithItems:isa];

  return v42;
}

uint64_t sub_1001ACCA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModernPage();
  __chkstk_darwin();
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001AB84C(a2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_100572710 != -1)
      {
        swift_once();
      }

      v13 = xmmword_100574A10;

      sub_1001AD1FC(v10, &type metadata accessor for PageContent);
      return v13;
    }

    else
    {
      sub_1001AD194(v10, v4, &type metadata accessor for ModernPage);
      type metadata accessor for CarPlayPageLoadCoordinator(0);
      swift_allocObject();

      v20 = sub_1002442DC(v19);

      v28[1] = v20;
      v21 = BaseObjectGraph.satisfying<A>(_:with:)();
      v22 = sub_1001AC770(v21, v4);
      if (v22)
      {
        v23 = v22;
        v24 = [v23 items];
        sub_100168088(&unk_100574A00, &unk_100401EC0);
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v25 >> 62)
        {
          v26 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v26)
        {
          sub_100168088(&unk_100574680, &qword_100401740);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1004007B0;
          *(v27 + 32) = v23;

          sub_1001AD1FC(v4, &type metadata accessor for ModernPage);
          return v27;
        }

        sub_1001AD1FC(v4, &type metadata accessor for ModernPage);
      }

      else
      {
        sub_1001AD1FC(v4, &type metadata accessor for ModernPage);
      }

      return 0;
    }
  }

  else if (EnumCaseMultiPayload)
  {

    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Failed to load Home page: %@", v16, 0xCu);
      sub_100186264(v17);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1001AD194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001AD1FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001AD25C()
{
  result = qword_100574B70;
  if (!qword_100574B70)
  {
    type metadata accessor for FreezableContentSubject();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574B70);
  }

  return result;
}

unint64_t sub_1001AD2B4()
{
  result = qword_100574B78;
  if (!qword_100574B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574B78);
  }

  return result;
}

void sub_1001AD310(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MTPlayerItem) init];
  v5 = PendingPlaybackMetadata.adamId.getter();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  [v4 setEpisodeStoreId:v7];
  PendingPlaybackMetadata.uuid.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v4 setEpisodeUuid:v9];

  v10 = [objc_opt_self() mainBundle];
  v20._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0x474E4944414F4CLL;
  v11._object = 0xE700000000000000;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

  v13 = String._bridgeToObjectiveC()();

  [v4 setTitle:v13];

  [v4 setIsPlaceholder:1];
  PendingPlaybackMetadata.duration.getter();
  [v4 setDuration:?];
  PendingPlaybackMetadata.position.getter();
  [v4 setPlayhead:?];

  sub_100168088(&unk_100574680, &qword_100401740);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004007B0;
  *(v14 + 32) = v4;
  sub_1001AD650();
  v15 = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19.receiver = v2;
  v19.super_class = type metadata accessor for PlaceholderManifest();
  v17 = objc_msgSendSuper2(&v19, "initWithItems:", isa);

  if (v17)
  {
    v18 = type metadata accessor for PendingPlaybackMetadata();
    (*(*(v18 - 8) + 8))(a1, v18);

    return;
  }

LABEL_10:
  __break(1u);
}

id sub_1001AD5F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaceholderManifest();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1001AD650()
{
  result = qword_10057A130;
  if (!qword_10057A130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10057A130);
  }

  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.episodeUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LibraryEpisodePagePresenter.Configuration.episodeUUID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.stationUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LibraryEpisodePagePresenter.Configuration.stationUUID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.referenceTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t LibraryEpisodePagePresenter.Configuration.playerTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

void __swiftcall LibraryEpisodePagePresenter.Configuration.init(episodeUUID:stationUUID:referenceTime:playerTime:)(Podcasts::LibraryEpisodePagePresenter::Configuration *__return_ptr retstr, Swift::String episodeUUID, Swift::String_optional stationUUID, Swift::Double_optional referenceTime, Swift::Double_optional playerTime)
{
  retstr->episodeUUID = episodeUUID;
  retstr->stationUUID = stationUUID;
  retstr->referenceTime.value = *&referenceTime.is_nil;
  retstr->referenceTime.is_nil = playerTime.is_nil;
  *(&retstr->playerTime.value + 7) = v5;
  LOBYTE(retstr[1].episodeUUID._countAndFlagsBits) = v6 & 1;
}

uint64_t LibraryEpisodePagePresenter.__allocating_init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  LibraryEpisodePagePresenter.init(asPartOf:with:)(a1, a2);
  return v4;
}

void *LibraryEpisodePagePresenter.init(asPartOf:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2[10] = &_swiftEmptySetSingleton;
  *&v27 = _swiftEmptyArrayStorage;
  sub_100168088(&unk_100572950, &unk_1003FEB30);
  swift_allocObject();
  v2[29] = CurrentValueSubject.init(_:)();
  *v6 = 0;
  swift_storeEnumTagMultiPayload();
  sub_100168088(&unk_100578DB0, &unk_100404810);
  swift_allocObject();
  v2[30] = CurrentValueSubject.init(_:)();
  *&v27 = static PageHeader.none.getter();
  *(&v27 + 1) = v7;
  v28 = v8;
  v29 = v9;
  sub_100168088(&qword_100572960, &qword_1003FEB40);
  swift_allocObject();
  v2[31] = CurrentValueSubject.init(_:)();
  sub_100168088(&qword_100572968, &qword_1003FEB48);
  swift_allocObject();
  v2[32] = PassthroughSubject.init()();
  v10 = v2 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  *v10 = 0;
  v10[8] = 1;
  type metadata accessor for InteractionContext.Page();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  swift_storeEnumTagMultiPayload();
  v11 = static MetricsPageType.episode.getter();
  v13 = v12;
  v14 = static MetricsPageID.unknown.getter();
  v16 = v15;
  *&v27 = v11;
  *(&v27 + 1) = v13;
  v17._countAndFlagsBits = 95;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v14;
  v18._object = v16;
  String.append(_:)(v18);

  PageID.init(with:)();
  static PageMetrics.notInstrumented.getter();
  v19 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  *(v3 + v19) = static PageRenderContentTypes.unspecified.getter();
  v20 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
  v21 = type metadata accessor for ModernShelf();
  v22 = *(*(v21 - 8) + 56);
  v22(v3 + v20, 1, 1, v21);
  v22(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) = 0;
  v22(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf, 1, 1, v21);
  v22(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf, 1, 1, v21);
  *(v3 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = _swiftEmptyArrayStorage;
  v23 = a2[1];
  v3[2] = *a2;
  v3[3] = v23;
  v32 = *(a2 + 1);
  *(v3 + 2) = v32;
  v3[6] = a2[4];
  *(v3 + 56) = *(a2 + 40);
  v3[8] = a2[6];
  *(v3 + 72) = *(a2 + 56);
  v30 = type metadata accessor for EpisodeTextInfoProvider();
  v31 = &protocol witness table for EpisodeTextInfoProvider;
  sub_10000E680(&v27);

  sub_100010430(&v32, v26, &qword_100574230, &qword_100401FE0);
  EpisodeTextInfoProvider.init()();
  sub_1000109E4(&v27, (v3 + 11));
  sub_100168088(&qword_100574C58, &qword_100401FE8);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 8) = v27;
  sub_100168088(&unk_100575CF0, &qword_100401FF0);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 9) = v27;
  type metadata accessor for PageRenderController();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v3[20] = v27;
  sub_100168088(&qword_100574C60, &qword_100401FF8);
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + 21) = v27;
  sub_100168088(&unk_100578420, &unk_100402000);
  BaseObjectGraph.inject<A>(_:)();
  sub_1000109E4(&v27, (v3 + 23));
  type metadata accessor for EpisodeUpsellBannerProvider();
  swift_allocObject();
  v24 = EpisodeUpsellBannerProvider.init(graph:uuid:presentationType:)();
  sub_100009104(&v32, &qword_100574230, &qword_100401FE0);
  v3[28] = v24;
  return v3;
}

Swift::Void __swiftcall LibraryEpisodePagePresenter.viewDidLoad()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin();
  v46 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageRenderEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 256);
  *v7 = 1;
  v9 = enum case for PageRenderActivity.primaryDataFetchStarted(_:);
  v10 = type metadata accessor for PageRenderActivity();
  v11 = *(v10 - 8);
  v45 = *(v11 + 104);
  v43 = v11 + 104;
  v45(v7, v9, v10);
  v12 = *(v5 + 104);
  v42 = enum case for PageRenderEvent.activity(_:);
  v41 = v12;
  v12(v7);
  v40 = v8;
  PassthroughSubject.send(_:)();
  v15 = *(v5 + 8);
  v14 = v5 + 8;
  v13 = v15;
  v44 = v4;
  v15(v7, v4);
  swift_getObjectType();
  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  v18 = dispatch thunk of LibraryDataProviderProtocol.fetchEpisodeBlocking(with:)();
  if (v18)
  {
    v19 = v18;
    sub_1001AE1D4(v18);
  }

  else
  {
    v35 = v17;
    v36 = v16;
    v37 = v7;
    v38 = v13;
    v39 = v14;
    v20 = v10;
    v21 = v46;
    static Logger.database.getter();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136315138;
      v27 = v35;
      v26 = v36;
      *(v24 + 4) = sub_1000153E0(v35, v36, &v49);
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to fetch episode for UUID %s", v24, 0xCu);
      sub_100004590(v25);

      (*(v47 + 8))(v21, v48);
      v28 = v20;
      v29 = v44;
      v30 = v38;
      v31 = v37;
    }

    else
    {

      (*(v47 + 8))(v21, v48);
      v28 = v10;
      v29 = v44;
      v30 = v38;
      v26 = v36;
      v31 = v37;
      v27 = v35;
    }

    sub_1001AE180();
    v32 = swift_allocError();
    *v33 = v27;
    v33[1] = v26;
    *v31 = v32;
    v45(v31, enum case for PageRenderActivity.primaryDataFetchFailed(_:), v28);
    v41(v31, v42, v29);

    PassthroughSubject.send(_:)();
    v30(v31, v29);
  }
}

unint64_t sub_1001AE180()
{
  result = qword_100574C68;
  if (!qword_100574C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100574C68);
  }

  return result;
}

uint64_t sub_1001AE1D4(void *a1)
{
  v2 = v1;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PageID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractionContext.Page();
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 storeTrackId];
  v13 = AdamID.init(rawValue:)();
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  *v12 = v13;
  v12[8] = 0;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();

  sub_1001B8954(v12, v2 + v16);
  swift_endAccess();
  v29[1] = static MetricsPageType.episode.getter();
  v29[2] = v17;
  v18._countAndFlagsBits = 95;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v29[0] = v13;
  sub_10019BAC4();
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  PageID.init(with:)();
  v20 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  swift_beginAccess();
  (*(v7 + 40))(v2 + v20, v9, v6);
  swift_endAccess();
  v21 = [a1 bestTitle];
  if (v21)
  {
    v23 = v21;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  sub_1001AE520(v13, v24, v26, v22);

  sub_1001AEBC8(a1);
  sub_1001AF67C(a1);
  sub_1001AFB64(a1);
  sub_1001AFF90(a1);
  sub_1001B0448(a1, v27);
  sub_1001B08D0(v5);
  return CurrentValueSubject.value.setter();
}

uint64_t LibraryEpisodePagePresenter.interactionContextPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();
  return sub_1001B847C(v1 + v3, a1);
}

uint64_t sub_1001AE520(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v40 = type metadata accessor for PageRenderEvent();
  v39 = *(v40 - 8);
  __chkstk_darwin();
  v33 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ScalarDictionary();
  v30 = *(v34 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v30 - v11;
  v38 = type metadata accessor for MetricsPageFields();
  v36 = *(v38 - 8);
  __chkstk_darwin();
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for PageMetrics();
  v35 = *(v37 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsPageType.episode.getter();
  sub_100168088(&qword_100574EC8, &qword_100402430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100400790;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  sub_10016A574(inited);
  swift_setDeallocating();
  sub_100009104(inited + 32, &qword_100574ED0, &qword_100402438);
  swift_getObjectType();
  HighlightsProviderProtocol.isSharedContent(_:)();
  *&v41 = a1;
  sub_1000366D8();
  BinaryInteger.description.getter();
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0, &unk_100402440);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v17 = v30;
  v18 = v34;
  (*(v30 + 16))(v32, v12, v34);
  v19 = v31;
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v48 = v41;
  sub_100009104(&v48, &unk_100574650, &unk_1004023C0);
  v47 = v42;
  sub_100009104(&v47, &unk_100573A90, &unk_100401170);
  v46 = v43;
  sub_100009104(&v46, &unk_100574660, &unk_1004023D0);
  sub_100037470(v44, v45);
  (*(v17 + 8))(v12, v18);
  (*(v36 + 8))(v14, v38);
  v20 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  swift_beginAccess();
  v21 = v35;
  v22 = v37;
  (*(v35 + 40))(v5 + v20, v19, v37);
  swift_endAccess();
  static PageRenderContentTypes.primaryData.getter();
  v23 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  swift_beginAccess();
  *(v5 + v23) = PageRenderContentTypes.init(rawValue:)();
  swift_endAccess();
  v24 = v33;
  (*(v21 + 16))(v33, v5 + v20, v22);
  v25 = enum case for PageRenderActivity.primaryDataFetchCompleted(_:);
  v26 = type metadata accessor for PageRenderActivity();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  v27 = v39;
  v28 = v40;
  (*(v39 + 104))(v24, enum case for PageRenderEvent.activity(_:), v40);
  PassthroughSubject.send(_:)();
  return (*(v27 + 8))(v24, v28);
}

uint64_t sub_1001AEBC8(void *a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v8 = &v70 - v7;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v80 = &v70 - v9;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v84 = &v70 - v10;
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v12 = &v70 - v11;
  v82 = type metadata accessor for HeaderButtonItem();
  v13 = *(v82 - 8);
  __chkstk_darwin();
  v76 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = type metadata accessor for ModernShelf.ItemPresentation();
  v79 = *(v83 - 8);
  __chkstk_darwin();
  v78 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v70 - v16;
  v77 = a1;
  v18 = a1;
  v19 = v1;
  v20 = sub_1001B1478(v18);
  if (v20)
  {
    v21 = v20;
    v74 = v12;
    v75 = v8;
    *&v72 = sub_100168088(&qword_100574EB0, &qword_1004067C0);
    v22 = *(v13 + 72);
    v23 = *(v13 + 80);
    v81 = v17;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1004007C0;
    v26 = (v25 + v24);
    v27 = type metadata accessor for LibraryEpisodeLockup();
    v26[3] = v27;
    v28 = sub_1001B8618(&qword_100574EB8, &type metadata accessor for LibraryEpisodeLockup, &protocol conformance descriptor for LegacyLockup);
    v26[4] = v28;
    *v26 = v21;
    swift_storeEnumTagMultiPayload();
    v29 = (v25 + v24 + v22);
    v29[3] = v27;
    v29[4] = v28;
    *v29 = v21;
    swift_storeEnumTagMultiPayload();
    v30 = v19;
    *&v85 = v25;
    v73 = v21;
    swift_retain_n();
    CurrentValueSubject.send(_:)();

    LOBYTE(v85) = 1;
    v31 = v81;
    ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
    v71 = v22;
    v32 = swift_allocObject();
    v72 = xmmword_100400790;
    *(v32 + 16) = xmmword_100400790;
    v70 = v24;
    v33 = (v32 + v24);
    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    *v33 = v35;
    v33[1] = v34;
    v36 = enum case for BookmarkButtonPresenter.Data.uuid(_:);
    v37 = type metadata accessor for BookmarkButtonPresenter.Data();
    (*(*(v37 - 8) + 104))(v32 + v24, v36, v37);
    swift_storeEnumTagMultiPayload();

    v38 = v30;
    v39 = v31;
    if ([v77 isEntitled])
    {
      v40 = v76;
      *v76 = v35;
      *(v40 + 8) = v34;
      v41 = enum case for DownloadButtonPresenter.Data.uuid(_:);
      v42 = type metadata accessor for DownloadButtonPresenter.Data();
      (*(*(v42 - 8) + 104))(v40, v41, v42);
      swift_storeEnumTagMultiPayload();
      v43 = *(v32 + 16);
      v44 = *(v32 + 24);

      if (v43 >= v44 >> 1)
      {
        v32 = sub_1002434F8((v44 > 1), v43 + 1, 1, v32);
      }

      *(v32 + 16) = v43 + 1;
      sub_1001B8B68(v40, v32 + v70 + v43 * v71, &type metadata accessor for HeaderButtonItem);
    }

    v45 = type metadata accessor for EpisodeHeader();
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(44);

    *&v85 = 0xD000000000000029;
    *(&v85 + 1) = 0x8000000100466E40;

    v88 = LegacyLockup.adamId.getter();
    sub_10019BAC4();
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 93;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = EpisodeHeader.__allocating_init(lockup:headerButtonItems:shelfUniqueId:referenceTime:playerTime:)();
    v49 = LegacyLockup.title.getter();
    v51 = v50;

    v52 = EpisodeHeader.uberStyle.getter();
    if (v51)
    {
      v53 = v49;
    }

    else
    {
      v53 = 0;
    }

    if (v51)
    {
      v54 = v51;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    *&v85 = v53;
    *(&v85 + 1) = v54;
    BYTE4(v86) = 96;
    LODWORD(v86) = v52;
    CurrentValueSubject.value.setter();
    v82 = v38;
    if (qword_100572718 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Header();
    (*(*(v55 - 8) + 56))(v84, 1, 1, v55);
    v56 = v79;
    (*(v79 + 16))(v78, v39, v83);
    sub_100168088(&qword_1005748D8, &qword_100401D80);
    v57 = swift_allocObject();
    *(v57 + 16) = v72;
    *(v57 + 56) = v45;
    *(v57 + 64) = sub_1001B8618(&qword_100574EC0, &type metadata accessor for EpisodeHeader, &protocol conformance descriptor for EpisodeHeader);
    *(v57 + 32) = v48;
    v58 = type metadata accessor for URL();
    (*(*(v58 - 8) + 56))(v80, 1, 1, v58);
    v87 = 0;
    v85 = 0u;
    v86 = 0u;

    static MetricsTargetType.swoosh.getter();
    v59 = v75;
    static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

    v60 = type metadata accessor for ImpressionMetrics();
    (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
    v61 = v74;
    ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();

    (*(v56 + 8))(v81, v83);
    v62 = type metadata accessor for ModernShelf();
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
    v63 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
    v64 = v82;
    swift_beginAccess();
    sub_1001B89CC(v61, v64 + v63);
    return swift_endAccess();
  }

  else
  {
    static Logger.database.getter();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *&v85 = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_1000153E0(*(v19 + 16), *(v19 + 24), &v85);
      _os_log_impl(&_mh_execute_header, v66, v67, "episode is unavailable: %s", v68, 0xCu);
      sub_100004590(v69);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1001AF67C(void *a1)
{
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v3 = v19 - v2;
  v22 = sub_100168088(&qword_100574E88, &qword_100402418);
  v20 = *(v22 - 8);
  __chkstk_darwin();
  v5 = v19 - v4;
  v23 = sub_100168088(&qword_100574E90, &qword_100402420);
  v21 = *(v23 - 8);
  __chkstk_darwin();
  v7 = v19 - v6;
  v8 = swift_allocObject();
  swift_weakInit();
  [a1 storeTrackId];
  AdamID.init(rawValue:)();
  v9 = [a1 podcast];
  v10 = v9;
  if (v9)
  {
    [v9 storeCollectionId];
    AdamID.init(rawValue:)();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1001B8B24;
  *(v11 + 24) = v8;

  v12 = dispatch thunk of EpisodeUpsellBannerProvider.episodeUpsellBannerShelfPublisher(episodeAdamID:showAdamID:dismissalCompletion:)();

  v24 = v12;
  sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v26 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  sub_100168088(&qword_100574E98, &qword_100402428);
  v19[1] = v8;
  sub_100009FAC(&qword_100574EA0, &qword_100574E98, &qword_100402428, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1000179F8();
  Publisher.receive<A>(on:options:)();
  sub_100009104(v3, &qword_100575C10, &qword_100402E50);

  v15 = sub_100009FAC(&qword_100574EA8, &qword_100574E88, &qword_100402418, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v16 = v22;
  Publisher.emitPageRenderResourceEvents(using:onScreen:)();
  (*(v20 + 8))(v5, v16);
  swift_allocObject();
  swift_weakInit();
  v24 = v16;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v17 = v23;
  Publisher<>.sink(receiveValue:)();

  (*(v21 + 8))(v7, v17);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t sub_1001AFB64(void *a1)
{
  sub_100168088(&qword_100575C10, &qword_100402E50);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = sub_100168088(&qword_100574E60, &qword_100402400);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = sub_100168088(&qword_100574E68, &qword_100402408);
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin().n128_u64[0];
  v13 = &v19 - v12;
  [a1 storeTrackId];
  AdamID.init(rawValue:)();
  result = AdamID.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v21 = v6;
    v22 = v10;
    swift_getObjectType();
    v19 = v1;
    v23 = dispatch thunk of HighlightsProviderProtocol.pageHighlightShelfPublisherForId(adamId:)();
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    v15 = static OS_dispatch_queue.main.getter();
    v25 = v15;
    v16 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_100168088(&qword_100574E70, &qword_100402410);
    v20 = v9;
    sub_100009FAC(&qword_100574E78, &qword_100574E70, &qword_100402410, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_1000179F8();
    Publisher.receive<A>(on:options:)();
    sub_100009104(v4, &qword_100575C10, &qword_100402E50);

    v17 = sub_100009FAC(&qword_100574E80, &qword_100574E60, &qword_100402400, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    Publisher.emitPageRenderResourceEvents(using:onScreen:)();
    (*(v21 + 8))(v8, v5);
    swift_allocObject();
    swift_weakInit();
    v23 = v5;
    v24 = v17;
    swift_getOpaqueTypeConformance2();
    v18 = v20;
    Publisher<>.sink(receiveValue:)();

    (*(v22 + 8))(v13, v18);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1001AFF90(void *a1)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v4 = v25 - v3;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v6 = v25 - v5;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v8 = v25 - v7;
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v10 = v25 - v9;
  v11 = type metadata accessor for ModernShelf.ItemPresentation();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v25 - v15;
  sub_1001B2118(a1, &v28);
  if (!*(&v29 + 1))
  {
    return sub_100009104(&v28, &qword_100574E30, &qword_1004023E0);
  }

  v26 = v4;
  v27 = v1;
  sub_1000109E4(&v28, v31);
  LOBYTE(v28) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  if (qword_100572720 != -1)
  {
    swift_once();
  }

  v25[1] = xmmword_100574BC8;
  v17 = type metadata accessor for Header();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v12 + 16))(v14, v16, v11);
  sub_100168088(&qword_1005748D8, &qword_100401D80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100400790;
  sub_100004428(v31, v18 + 32);
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = type metadata accessor for ImpressionMetrics();
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);

  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  (*(v12 + 8))(v16, v11);
  sub_100004590(v31);
  v21 = type metadata accessor for ModernShelf();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v22 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf;
  v23 = v27;
  swift_beginAccess();
  sub_1001B89CC(v10, v23 + v22);
  return swift_endAccess();
}

uint64_t sub_1001B0448(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for PageRenderEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v10 = &v27[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001B2B60(a1);
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    swift_getObjectType();
    if (qword_100572738 != -1)
    {
      swift_once();
    }

    v12 = sub_100168088(&qword_100574E10, &unk_1004023A0);
    sub_1001825CC(v12, qword_100574BF8);
    Preferences.subscript.getter();
    if (LOBYTE(v27[0]) != 2 && (v27[0] & 1) != 0)
    {
      goto LABEL_7;
    }
  }

  [a1 storeTrackId];
  v13 = AdamID.init(rawValue:)();
  if (AdamID.isEmpty.getter())
  {
LABEL_7:
    *(v2 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = v11;

    sub_1001B08D0(v10);
    return CurrentValueSubject.value.setter();
  }

  else
  {
    v15 = [a1 podcast];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 channel];

      if (v17)
      {
        [v17 subscriptionActive];
      }
    }

    *v8 = 1;
    v18 = enum case for PageRenderActivity.resourceFetchStarted(_:);
    v19 = type metadata accessor for PageRenderActivity();
    (*(*(v19 - 8) + 104))(v8, v18, v19);
    (*(v6 + 104))(v8, enum case for PageRenderEvent.activity(_:), v5);
    PassthroughSubject.send(_:)();
    (*(v6 + 8))(v8, v5);
    sub_1000044A0((v3 + 184), *(v3 + 208));
    dispatch thunk of StoreDataProvider.fetchEpisodePageFooter(for:isSubscribed:)();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v11;
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v22;
    v23[4] = v11;
    v24 = sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);

    v25 = static OS_dispatch_queue.main.getter();
    v27[3] = v24;
    v27[4] = &protocol witness table for OS_dispatch_queue;
    v27[0] = v25;
    Promise.then(perform:orCatchError:on:)();

    sub_100004590(v27);
  }
}

uint64_t sub_1001B08D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for PageMetrics();
  v80 = *(v3 - 8);
  __chkstk_darwin();
  v79 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for PageID();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v78 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModernPage();
  __chkstk_darwin();
  v77 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v72 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v64 - v8;
  __chkstk_darwin();
  v10 = &v64 - v9;
  __chkstk_darwin();
  v12 = &v64 - v11;
  v13 = type metadata accessor for ModernShelf();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v74 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v64 - v16;
  __chkstk_darwin();
  v71 = &v64 - v17;
  __chkstk_darwin();
  v69 = &v64 - v18;
  __chkstk_darwin();
  v68 = &v64 - v19;
  __chkstk_darwin();
  v67 = &v64 - v20;
  __chkstk_darwin();
  v22 = &v64 - v21;
  __chkstk_darwin();
  v24 = &v64 - v23;
  v85 = _swiftEmptyArrayStorage;
  v25 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf;
  swift_beginAccess();
  sub_100010430(v2 + v25, v12, &qword_100578DE0, &unk_100405FB0);
  v84 = *(v14 + 48);
  v26 = v84(v12, 1, v13);
  v83 = v14;
  v82 = v14 + 48;
  if (v26 == 1)
  {
    sub_100009104(v12, &qword_100578DE0, &unk_100405FB0);
    v27 = _swiftEmptyArrayStorage;
    v28 = v3;
  }

  else
  {
    v66 = v3;
    v65 = *(v14 + 32);
    v65(v24, v12, v13);
    (*(v14 + 16))(v22, v24, v13);
    v27 = sub_100243668(0, 1, 1, _swiftEmptyArrayStorage);
    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_100243668((v29 > 1), v30 + 1, 1, v27);
    }

    v31 = v83 + 8;
    (*(v83 + 8))(v24, v13);
    *(v27 + 2) = v30 + 1;
    v65(&v27[((*(v31 + 72) + 32) & ~*(v31 + 72)) + *(v31 + 64) * v30], v22, v13);
    v85 = v27;
    v28 = v66;
  }

  v32 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
  swift_beginAccess();
  sub_100010430(v2 + v32, v10, &qword_100578DE0, &unk_100405FB0);
  v33 = v84(v10, 1, v13);
  v34 = v72;
  if (v33 == 1)
  {
    sub_100009104(v10, &qword_100578DE0, &unk_100405FB0);
  }

  else
  {
    v35 = *(v83 + 32);
    v36 = v67;
    v37 = v10;
    v38 = v83;
    v35(v67, v37, v13);
    (*(v38 + 16))(v68, v36, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100243668(0, *(v27 + 2) + 1, 1, v27);
    }

    v40 = *(v27 + 2);
    v39 = *(v27 + 3);
    if (v40 >= v39 >> 1)
    {
      v27 = sub_100243668((v39 > 1), v40 + 1, 1, v27);
    }

    (*(v38 + 8))(v67, v13);
    *(v27 + 2) = v40 + 1;
    v35(&v27[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v40], v68, v13);
    v85 = v27;
  }

  v41 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf;
  swift_beginAccess();
  v42 = v2 + v41;
  v43 = v70;
  sub_100010430(v42, v70, &qword_100578DE0, &unk_100405FB0);
  if (v84(v43, 1, v13) == 1)
  {
    sub_100009104(v43, &qword_100578DE0, &unk_100405FB0);
  }

  else
  {
    v44 = v83;
    v45 = *(v83 + 32);
    v46 = v69;
    v45(v69, v43, v13);
    (*(v44 + 16))(v71, v46, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100243668(0, *(v27 + 2) + 1, 1, v27);
    }

    v48 = *(v27 + 2);
    v47 = *(v27 + 3);
    if (v48 >= v47 >> 1)
    {
      v27 = sub_100243668((v47 > 1), v48 + 1, 1, v27);
    }

    (*(v44 + 8))(v69, v13);
    *(v27 + 2) = v48 + 1;
    v45(&v27[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v48], v71, v13);
    v85 = v27;
  }

  v49 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf;
  swift_beginAccess();
  sub_100010430(v2 + v49, v34, &qword_100578DE0, &unk_100405FB0);
  if (v84(v34, 1, v13) == 1)
  {
    sub_100009104(v34, &qword_100578DE0, &unk_100405FB0);
  }

  else
  {
    v50 = v83;
    v51 = *(v83 + 32);
    v52 = v73;
    v51(v73, v34, v13);
    (*(v50 + 16))(v74, v52, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100243668(0, *(v27 + 2) + 1, 1, v27);
    }

    v54 = *(v27 + 2);
    v53 = *(v27 + 3);
    if (v54 >= v53 >> 1)
    {
      v27 = sub_100243668((v53 > 1), v54 + 1, 1, v27);
    }

    (*(v50 + 8))(v73, v13);
    *(v27 + 2) = v54 + 1;
    v51(&v27[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v54], v74, v13);
    v85 = v27;
  }

  sub_1001C3D60(v55);
  v56 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  swift_beginAccess();
  (*(v75 + 16))(v78, v2 + v56, v76);
  v57 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  swift_beginAccess();
  (*(v80 + 16))(v79, v2 + v57, v28);
  v58 = v77;
  ModernPage.init(id:pageMetrics:shelves:)();
  v59 = *(sub_100168088(&qword_100574E08, &qword_100402398) + 48);
  v60 = v58;
  v61 = v81;
  sub_1001B8B68(v60, v81, &type metadata accessor for ModernPage);
  v62 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
  swift_beginAccess();
  *(v61 + v59) = *(v2 + v62);
  type metadata accessor for PageContent();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001B1478(void *a1)
{
  if (!*(v1 + 40))
  {
    type metadata accessor for Episode();
    v5 = a1;
    if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
    {
      goto LABEL_3;
    }

    return 0;
  }

  type metadata accessor for StationEpisode();
  v3 = a1;

  if (!StationEpisode.__allocating_init(from:stationUuid:)())
  {
    return 0;
  }

LABEL_3:

  v4 = dispatch thunk of Episode.playableLockupForEpisodeDetails.getter();

  return v4;
}

uint64_t sub_1001B153C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    sub_1001B18E0(v9);
  }

  else
  {
    sub_100009F1C(0, &qword_1005729D0, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001B8B60;
    *(v11 + 24) = v9;
    aBlock[4] = sub_10002D7F8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000F038;
    aBlock[3] = &unk_1004E2870;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001B8618(&qword_10057D380, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100168088(&unk_100575CD0, &unk_100400B50);
    v15 = v5;
    sub_100009FAC(&qword_10057D390, &unk_100575CD0, &unk_100400B50, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v13 = v16;
    v12 = v17;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v15);
  }
}

uint64_t sub_1001B18E0(uint64_t a1)
{
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v4 = &v9[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) = 1;
    v6 = result;
    v7 = type metadata accessor for ModernShelf();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
    swift_beginAccess();
    sub_1001B8AB4(v4, v6 + v8);
    swift_endAccess();
    sub_1001B08D0(v2);
    CurrentValueSubject.value.setter();
    sub_100009104(v4, &qword_100578DE0, &unk_100405FB0);
  }

  return result;
}

uint64_t sub_1001B1A88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v17[-v7];
  v9 = type metadata accessor for ModernShelf();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_100010430(a1, v8, &qword_100578DE0, &unk_100405FB0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100009104(v8, &qword_100578DE0, &unk_100405FB0);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      if ((*(v14 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerHasBeenDismissed) & 1) == 0)
      {
        (*(v10 + 16))(v6, v12, v9);
        (*(v10 + 56))(v6, 0, 1, v9);
        v16 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
        swift_beginAccess();
        sub_1001B8AB4(v6, v14 + v16);
        swift_endAccess();
        sub_1001B08D0(v4);
        CurrentValueSubject.value.setter();
        sub_100009104(v6, &qword_100578DE0, &unk_100405FB0);
        (*(v10 + 8))(v12, v9);
      }

      (*(v10 + 8))(v12, v9);
    }

    (*(v10 + 56))(v6, 1, 1, v9);
    v15 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf;
    swift_beginAccess();
    sub_1001B8AB4(v6, v14 + v15);
    swift_endAccess();
    sub_1001B08D0(v4);
    CurrentValueSubject.value.setter();
    sub_100009104(v6, &qword_100578DE0, &unk_100405FB0);
  }

  return result;
}

uint64_t sub_1001B1E18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v6 = &v17[-v5];
  v7 = type metadata accessor for ModernShelf();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v8 + 16);
  v12(v11, a1, v7, v9);
  ModernShelf.metricsName.setter();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v8 + 8))(v11, v7);
  }

  v14 = Strong;
  (v12)(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf;
  swift_beginAccess();
  sub_1001B8AB4(v6, v14 + v15);
  swift_endAccess();
  sub_1001B08D0(v4);
  CurrentValueSubject.value.setter();
  sub_100009104(v6, &qword_100578DE0, &unk_100405FB0);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001B20B4()
{
  ShelfIDBuilder.init(named:)();
  v0 = ShelfIDBuilder.build()();

  xmmword_100574BC8 = v0;
  return result;
}

double sub_1001B2118@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v71 = a2;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v60 = &v57 - v3;
  sub_100168088(&qword_100574E40, &qword_1004023E8);
  __chkstk_darwin();
  v59 = (&v57 - v4);
  v5 = type metadata accessor for EpisodeTextInfoContext();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v62 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EpisodeTextInfoDetail();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin();
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for LibraryEpisodeContextItem();
  v67 = *(v68 - 8);
  __chkstk_darwin();
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v57 - v13;
  __chkstk_darwin();
  v16 = &v57 - v15;
  __chkstk_darwin();
  v18 = &v57 - v17;
  __chkstk_darwin();
  v20 = &v57 - v19;
  sub_100009F1C(0, &qword_100574E48, off_1004D1AB8);
  v21 = [swift_getObjCClassFromMetadata() sharedInstance];
  v22 = [v21 descriptionForEpisode:a1 options:48];

  v23 = [a1 storeTrackId];
  v72 = v10;
  v73 = v20;
  if (!v23)
  {
    v30 = type metadata accessor for URL();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    goto LABEL_12;
  }

  [a1 storeTrackId];
  v24 = AdamID.init(rawValue:)();
  v25 = [a1 podcast];
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    v28 = [v25 shareURL];

    v58 = a1;
    if (v28)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v14, 0, 1, v29);
    }

    else
    {
      v29 = type metadata accessor for URL();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    }

    sub_1001B8A3C(v14, v16);
    type metadata accessor for URL();
    v31 = *(v29 - 8);
    if ((*(v31 + 48))(v16, 1, v29) != 1)
    {
      sub_100168088(&qword_100574E58, &unk_1004023F0);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_100400790;
      v74 = v26;
      sub_1000366D8();
      BinaryInteger.description.getter();
      v10 = v72;
      URLQueryItem.init(name:value:)();

      URL.appending(queryItems:)();

      (*(v31 + 8))(v16, v29);
      (*(v31 + 56))(v18, 0, 1, v29);
      v20 = v73;
      a1 = v58;
      goto LABEL_11;
    }

    sub_100009104(v16, &qword_100574040, &unk_100400AD0);
    v20 = v73;
    a1 = v58;
  }

  v32 = type metadata accessor for URL();
  (*(*(v32 - 8) + 56))(v18, 1, 1, v32);
LABEL_11:
  sub_1001B8A3C(v18, v20);
LABEL_12:
  v33 = [a1 itemDescription];
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v35 = [a1 itemDescriptionWithoutHTML];
  if (v35)
  {
    v36 = v35;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [a1 itemDescriptionHasHTML];
  v37 = a1;
  sub_100010430(v73, v12, &qword_100574040, &unk_100400AD0);
  v61 = v22;
  LibraryEpisodeContextItem.init(summary:cachedDescription:description:descriptionWithoutHTML:descriptionHasHTML:episodeShareURL:)();
  sub_1000044A0((v65 + 88), *(v65 + 112));
  v38 = v67;
  v39 = v68;
  v40 = v62;
  (*(v67 + 16))(v62, v10, v68);
  v41 = v63;
  v42 = v64;
  (*(v63 + 104))(v40, enum case for EpisodeTextInfoContext.library(_:), v64);
  v43 = v66;
  dispatch thunk of EpisodeTextInfoProviderProtocol.textInfoDetailForContext(_:)();
  (*(v41 + 8))(v40, v42);
  v44 = EpisodeTextInfoDetail.notes.getter();
  if (v44)
  {
    v45 = v44;
    v46 = v43;
    v47 = v59;
    *v59 = v37;
    v48 = type metadata accessor for ShareSheetContentSource();
    swift_storeEnumTagMultiPayload();
    (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
    v49 = type metadata accessor for ImpressionMetrics();
    (*(*(v49 - 8) + 56))(v60, 1, 1, v49);
    v50 = type metadata accessor for Paragraph();
    swift_allocObject();
    v51 = v45;
    v52 = v37;
    v53 = Paragraph.init(text:alignment:style:isCollapsed:isLinkDetectionEnabled:shareSheetContentSource:impressionMetrics:)();
    v54 = v71;
    v71[3] = v50;
    v54[4] = sub_1001B8618(&qword_100574E50, &type metadata accessor for Paragraph, &protocol conformance descriptor for Paragraph);

    *v54 = v53;
    (*(v69 + 8))(v46, v70);
    (*(v38 + 8))(v72, v39);
    sub_100009104(v73, &qword_100574040, &unk_100400AD0);
  }

  else
  {

    (*(v69 + 8))(v43, v70);
    (*(v38 + 8))(v72, v39);
    sub_100009104(v73, &qword_100574040, &unk_100400AD0);
    result = 0.0;
    v56 = v71;
    *v71 = 0u;
    *(v56 + 1) = 0u;
    v56[4] = 0;
  }

  return result;
}

char *sub_1001B2B60(void *a1)
{
  sub_100168088(&qword_100578DE0, &unk_100405FB0);
  __chkstk_darwin();
  v4 = &v20 - v3;
  v5 = type metadata accessor for ModernShelf();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __chkstk_darwin();
  v12 = &v20 - v11;
  type metadata accessor for RestrictionsController();
  if (static RestrictionsController.isExplicitContentAllowed.getter() & 1) == 0 && ([a1 isExplicit])
  {
    (*(v6 + 56))(v4, 1, 1, v5);
LABEL_6:
    sub_100009104(v4, &qword_100578DE0, &unk_100405FB0);
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  if ([a1 isEntitled])
  {
    sub_1001B5E38(a1, v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1001B7530(v4);
    (*(v6 + 56))(v4, 0, 1, v5);
  }

  v21 = a1;
  v22 = v1;
  v23 = v8;
  v14 = *(v6 + 32);
  v14(v12, v4, v5);
  (*(v6 + 16))(v10, v12, v5);
  v13 = sub_100243668(0, 1, 1, _swiftEmptyArrayStorage);
  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_100243668((v15 > 1), v16 + 1, 1, v13);
  }

  (*(v6 + 8))(v12, v5);
  *(v13 + 2) = v16 + 1;
  v14(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16], v10, v5);
  v8 = v23;
  a1 = v21;
LABEL_11:
  sub_1001B3660(a1, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_100243668(0, *(v13 + 2) + 1, 1, v13);
  }

  v18 = *(v13 + 2);
  v17 = *(v13 + 3);
  if (v18 >= v17 >> 1)
  {
    v13 = sub_100243668((v17 > 1), v18 + 1, 1, v13);
  }

  *(v13 + 2) = v18 + 1;
  (*(v6 + 32))(&v13[((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18], v8, v5);
  return v13;
}

uint64_t sub_1001B2F2C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageRenderEvent();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    static PageRenderContentTypes.resource.getter();
    v14 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageRenderContentTypes;
    swift_beginAccess();
    *(v13 + v14) = PageRenderContentTypes.init(rawValue:)();
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *v10 = 1;
    v15 = enum case for PageRenderActivity.resourceFetchCompleted(_:);
    v16 = type metadata accessor for PageRenderActivity();
    (*(*(v16 - 8) + 104))(v10, v15, v16);
    (*(v8 + 104))(v10, enum case for PageRenderEvent.activity(_:), v7);
    PassthroughSubject.send(_:)();

    (*(v8 + 8))(v10, v7);
  }

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = Array<A>.mapToModernShelves()();
    goto LABEL_12;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = a3;

LABEL_12:

  sub_1001B08D0(v6);
  CurrentValueSubject.value.setter();
}

uint64_t sub_1001B324C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  type metadata accessor for PageContent();
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageRenderEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v32 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Logger();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.js.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a4;
    v17 = v16;
    v28 = v16;
    v29 = swift_slowAlloc();
    v36[0] = v29;
    *v17 = 136315138;
    v35[0] = v31;
    sub_10019BAC4();
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v7;
    v21 = sub_1000153E0(v18, v19, v36);

    v22 = v28;
    *(v28 + 4) = v21;
    v7 = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch episode page footer content for %s.", v22, 0xCu);
    sub_100004590(v29);

    a4 = v30;
  }

  (*(v33 + 8))(v13, v34);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v23 = v32;
    *v32 = a1;
    *(v23 + 8) = 1;
    v24 = enum case for PageRenderActivity.resourceFetchFailed(_:);
    v25 = type metadata accessor for PageRenderActivity();
    (*(*(v25 - 8) + 104))(v23, v24, v25);
    (*(v9 + 104))(v23, enum case for PageRenderEvent.activity(_:), v8);
    swift_errorRetain();
    PassthroughSubject.send(_:)();

    (*(v9 + 8))(v23, v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_footerShelves) = a4;

    sub_1001B08D0(v7);
    CurrentValueSubject.value.setter();
  }

  return result;
}

uint64_t sub_1001B3660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v23 = a2;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v22 = &v19 - v2;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v21 = &v19 - v3;
  type metadata accessor for ModernShelf.ItemPresentation();
  __chkstk_darwin();
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v5 = &v19 - v4;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v7 = &v19 - v6;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v9 = &v19 - v8;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v10 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v11._object = 0x8000000100466C80;
  v11._countAndFlagsBits = 0xD000000000000011;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v27);

  if (qword_100572728 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for ActionMenu();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = type metadata accessor for Header.PrimaryAction();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = type metadata accessor for ArtworkModel();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  LOBYTE(v24) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  sub_1001B3BE8(v20);
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v21, 1, 1, v16);
  v17 = type metadata accessor for ImpressionMetrics();
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  (*(*(v17 - 8) + 56))(v22, 1, 1, v17);
  return ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
}

uint64_t sub_1001B3B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void **a5)
{
  ShelfIDBuilder.init(named:)();
  v7 = ShelfIDBuilder.build()();

  *a4 = v7._countAndFlagsBits;
  *a5 = v7._object;
  return result;
}

void *sub_1001B3BE8(void *a1)
{
  sub_1001B40B0(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    v2 = sub_100243520(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100243520((v3 > 1), v4 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v4 + 1;
    sub_1000109E4(&v16, &v2[5 * v4 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
    v2 = _swiftEmptyArrayStorage;
  }

  sub_1001B4A9C(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v6 = v2[2];
    v5 = v2[3];
    if (v6 >= v5 >> 1)
    {
      v2 = sub_100243520((v5 > 1), v6 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v6 + 1;
    sub_1000109E4(&v16, &v2[5 * v6 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
  }

  sub_1001B5424(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = sub_100243520((v7 > 1), v8 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v8 + 1;
    sub_1000109E4(&v16, &v2[5 * v8 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
  }

  sub_1001B56F8(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v10 = v2[2];
    v9 = v2[3];
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100243520((v9 > 1), v10 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v10 + 1;
    sub_1000109E4(&v16, &v2[5 * v10 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
  }

  sub_1001B5960(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v12 = v2[2];
    v11 = v2[3];
    if (v12 >= v11 >> 1)
    {
      v2 = sub_100243520((v11 > 1), v12 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v12 + 1;
    sub_1000109E4(&v16, &v2[5 * v12 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
  }

  sub_1001B5B98(a1, &v16);
  if (v17)
  {
    sub_1000109E4(&v16, v18);
    sub_100004428(v18, &v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100243520(0, v2[2] + 1, 1, v2);
    }

    v14 = v2[2];
    v13 = v2[3];
    if (v14 >= v13 >> 1)
    {
      v2 = sub_100243520((v13 > 1), v14 + 1, 1, v2);
    }

    sub_100004590(v18);
    v2[2] = v14 + 1;
    sub_1000109E4(&v16, &v2[5 * v14 + 4]);
  }

  else
  {
    sub_100009104(&v16, &qword_100574E30, &qword_1004023E0);
  }

  return v2;
}

void sub_1001B40B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v56 = v41 - v4;
  v51 = type metadata accessor for FlowPresentationContext();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v53 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = v41 - v6;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v52 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestinationPageHeader();
  v49 = *(v9 - 8);
  __chkstk_darwin();
  v55 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for FlowDestination() - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v54 = (v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 podcast];
  if (!v14)
  {
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 title];

  if (!v16)
  {
    goto LABEL_11;
  }

  v44 = v7;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  v45 = v17;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

LABEL_11:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v46 = v19;
  v21 = [objc_opt_self() mainBundle];
  v68._object = 0xE000000000000000;
  v22._countAndFlagsBits = 0x5449545F574F4853;
  v22._object = 0xEA0000000000454CLL;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0;
  v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v68);
  countAndFlagsBits = v24._countAndFlagsBits;
  object = v24._object;

  v25 = [a1 podcast];
  if (!v25)
  {
LABEL_13:

    goto LABEL_14;
  }

  v26 = v25;
  type metadata accessor for PodcastDetail();
  v27 = v26;
  v28 = PodcastDetail.__allocating_init(from:episodes:episodeToPlay:seasonToShow:)();
  if (!v28)
  {

    goto LABEL_13;
  }

  v29 = v28;

  v30 = Podcast.adamId.getter();
  v32 = v31;

  if (v32)
  {

    goto LABEL_13;
  }

  v42 = v27;
  v43 = "ts.information.channel-name";
  *v54 = v29;
  (*(v11 + 104))();
  (*(v49 + 104))(v55, enum case for FlowDestinationPageHeader.uber(_:), v9);
  *&v60 = v30;
  sub_1000366D8();
  v49 = v29;

  v41[1] = BinaryInteger.description.getter();
  static MetricsTargetType.button.getter();
  v34 = type metadata accessor for URL();
  v35 = v44;
  (*(*(v34 - 8) + 56))(v44, 1, 1, v34);
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_10057DC50, &unk_10040A590);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static MetricsActionType.navigate.getter();
  static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
  v67 = v60;
  sub_100009104(&v67, &unk_100574650, &unk_1004023C0);
  v66 = v61;
  sub_100009104(&v66, &unk_100573A90, &unk_100401170);
  v65 = v62;
  sub_100009104(&v65, &unk_100574660, &unk_1004023D0);
  sub_100037470(v63, v64);
  sub_100009104(v35, &qword_100574040, &unk_100400AD0);
  (*(v50 + 104))(v53, enum case for FlowPresentationContext.infer(_:), v51);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v37 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v37;
  v38 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v38;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v37)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v38)
  {
    Link.Presentation.init(rawValue:)();
  }

  v39 = v42;
  type metadata accessor for FlowAction();
  swift_allocObject();
  v40 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();

  if (v40)
  {
    *(&v58 + 1) = type metadata accessor for Action();
    v59 = sub_1001B8618(&qword_100578430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    *&v57 = v40;
    goto LABEL_15;
  }

LABEL_14:
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
LABEL_15:
  v33 = type metadata accessor for ImpressionMetrics();
  (*(*(v33 - 8) + 56))(v56, 1, 1, v33);
  *(a2 + 24) = type metadata accessor for Information();
  *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
  sub_10000E680(a2);
  Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
}

double sub_1001B4A9C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v49 = v39 - v4;
  v47 = type metadata accessor for FlowPresentationContext();
  v46 = *(v47 - 8);
  __chkstk_darwin();
  v48 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v7 = v39 - v6;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v51 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestinationPageHeader();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v50 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for FlowDestination() - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = (v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = [a1 podcast];
  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 channel];

  if (!v18)
  {
    goto LABEL_14;
  }

  if (![v18 isMultiShow] || (v19 = objc_msgSend(v18, "name")) == 0)
  {

LABEL_14:
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v43 = v7;
  v45 = v15;
  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  v44 = v21;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {

    goto LABEL_14;
  }

  v25 = [objc_opt_self() mainBundle];
  v63._object = 0xE000000000000000;
  v26._countAndFlagsBits = 0x5F4C454E4E414843;
  v26._object = 0xED0000454C544954;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0;
  v28 = NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v63);
  countAndFlagsBits = v28._countAndFlagsBits;
  object = v28._object;

  type metadata accessor for ChannelDetail();
  v40 = v18;
  v29 = ChannelDetail.__allocating_init(from:)();
  *v45 = v29;
  (*(v12 + 104))();
  (*(v10 + 104))(v50, enum case for FlowDestinationPageHeader.uber(_:), v9);

  v39[3] = v29;
  *&v55 = ChannelDetail.adamId.getter();
  sub_1000366D8();
  v39[2] = BinaryInteger.description.getter();
  v39[1] = static MetricsTargetType.link.getter();
  v30 = type metadata accessor for URL();
  v31 = v43;
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_10057DC50, &unk_10040A590);
  type metadata accessor for MetricsData();
  *(swift_allocObject() + 16) = xmmword_100400790;
  static MetricsActionType.navigate.getter();
  static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

  ScalarDictionary.init()();
  ActionMetrics.init(data:custom:)();
  v62 = v55;
  sub_100009104(&v62, &unk_100574650, &unk_1004023C0);
  v61 = v56;
  sub_100009104(&v61, &unk_100573A90, &unk_100401170);
  v60 = v57;
  sub_100009104(&v60, &unk_100574660, &unk_1004023D0);
  sub_100037470(v58, v59);
  sub_100009104(v31, &qword_100574040, &unk_100400AD0);
  (*(v46 + 104))(v48, enum case for FlowPresentationContext.infer(_:), v47);
  sub_100168088(&qword_1005742B0, &qword_100406C70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004007C0;
  v33 = static Link.Presentation.textFollowsTintColor.getter();
  *(inited + 32) = v33;
  v34 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
  *(inited + 33) = v34;
  Link.Presentation.init(rawValue:)();
  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v33)
  {
    Link.Presentation.init(rawValue:)();
  }

  Link.Presentation.init(rawValue:)();
  if (Link.Presentation.init(rawValue:)() != v34)
  {
    Link.Presentation.init(rawValue:)();
  }

  v35 = type metadata accessor for FlowAction();
  swift_allocObject();
  v36 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
  v53 = v35;
  v54 = sub_1001B8618(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
  v52 = v36;
  v37 = type metadata accessor for ImpressionMetrics();
  (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
  *(a2 + 24) = type metadata accessor for Information();
  *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
  sub_10000E680(a2);
  Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();

  return result;
}

uint64_t sub_1001B5424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v5 = v18 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 pubDate];
  Date.init(timeIntervalSinceReferenceDate:)();
  v11 = Date.verboseDisplayString()();
  (*(v7 + 8))(v10, v6);
  v12 = (v11._object >> 56) & 0xF;
  if ((v11._object & 0x2000000000000000) == 0)
  {
    v12 = v11._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = [objc_opt_self() mainBundle];
    v20._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0x454853494C425550;
    v14._object = 0xEF454C5449545F44;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v20);

    v16 = type metadata accessor for ImpressionMetrics();
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
    sub_10000E680(a2);
    return Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double sub_1001B56F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v18 - v5;
  [a1 duration];
  v7 = static Localization.duration(_:)();
  if (v8)
  {
    *&v18[0] = v7;
    *(&v18[0] + 1) = v8;
    sub_10019FA64();
    v9 = StringProtocol.localizedLowercase.getter();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = [objc_opt_self() mainBundle];
      v20._object = 0xE000000000000000;
      v14._countAndFlagsBits = 0x545F4854474E454CLL;
      v14._object = 0xEC000000454C5449;
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      v20._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v20);

      v16 = type metadata accessor for ImpressionMetrics();
      memset(v18, 0, sizeof(v18));
      v19 = 0;
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      *(a2 + 24) = type metadata accessor for Information();
      *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
      sub_10000E680(a2);
      Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
      return result;
    }
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_1001B5960@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v14 - v5;
  v7 = [a1 seasonNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() mainBundle];
    v16._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x545F4E4F53414553;
    v10._object = 0xEC000000454C5449;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v16);

    *&v14[0] = v8;
    dispatch thunk of CustomStringConvertible.description.getter();
    v12 = type metadata accessor for ImpressionMetrics();
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
    sub_10000E680(a2);
    Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1001B5B98@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574038, &unk_100401780);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = v14 - v5;
  v7 = [a1 episodeNumber];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() mainBundle];
    v16._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0x5F45444F53495045;
    v10._object = 0xED0000454C544954;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v16._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v16);

    *&v14[0] = v8;
    dispatch thunk of CustomStringConvertible.description.getter();
    v12 = type metadata accessor for ImpressionMetrics();
    memset(v14, 0, sizeof(v14));
    v15 = 0;
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    *(a2 + 24) = type metadata accessor for Information();
    *(a2 + 32) = sub_1001B8618(&qword_100574E38, &type metadata accessor for Information, &protocol conformance descriptor for Information);
    sub_10000E680(a2);
    Information.init(id:title:subtitle:description:clickAction:expanded:impressionMetrics:)();
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1001B5DD4()
{
  ShelfIDBuilder.init(named:)();
  v0 = ShelfIDBuilder.build()();

  xmmword_100574BE8 = v0;
  return result;
}

uint64_t sub_1001B5E38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v128 = &v106 - v4;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v125 = (&v106 - v5);
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v124 = &v106 - v6;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v8 = &v106 - v7;
  v9 = type metadata accessor for ModernShelf.ItemPresentation();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v129 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v130 = &v106 - v12;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v139 = &v106 - v13;
  v127 = type metadata accessor for TranscriptSnippet();
  v126 = *(v127 - 8);
  __chkstk_darwin();
  v140 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for FlowDestinationPageHeader();
  object = *(v121 - 8);
  __chkstk_darwin();
  v122 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for FlowPresentationContext();
  v116 = *(v117 - 8);
  __chkstk_darwin();
  v119 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScalarDictionary();
  __chkstk_darwin();
  v115 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v138 = &v106 - v18;
  type metadata accessor for ActionMetrics();
  __chkstk_darwin();
  v118 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574E18, &qword_100402A10);
  __chkstk_darwin();
  v21 = &v106 - v20;
  type metadata accessor for PageMetrics();
  __chkstk_darwin();
  *&v114 = type metadata accessor for FlowDestination();
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v134 = (&v106 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for TranscriptRequestInformation();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v24 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v106 - v25;
  sub_100168088(&qword_100574E20, &unk_1004023B0);
  __chkstk_darwin();
  v112 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v106 - v27;
  __chkstk_darwin();
  v29 = &v106 - v28;
  *&v30 = __chkstk_darwin().n128_u64[0];
  v32 = &v106 - v31;
  v33 = [a1 transcriptIdentifier];
  if (v33)
  {
    v109 = v8;
    v110 = v10;
    v133 = v9;
    v111 = a2;
    v34 = v33;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v35;

    [a1 storeTrackId];
    v36 = AdamID.init(rawValue:)();
    v37 = [a1 transcriptProvider];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v141 = v32;
    MetadataSource.init(rawValue:)();
    *&v145 = v36;
    sub_1000366D8();
    v38 = BinaryInteger.description.getter();
    v40 = [a1 title];
    if (v40)
    {
      v41 = v40;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v45 = [a1 podcast];
    v108 = a1;
    if (v45)
    {
      v46 = v45;
      v47 = [v45 title];

      if (v47)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    sub_100010430(v141, v29, &qword_100574E20, &unk_1004023B0);

    v48 = v135;
    TranscriptRequestInformation.init(episodeAdamId:episodeTitle:ttmlIdentifier:selectedTextTimeInterval:showName:source:)();
    (*(v136 + 16))(v24, v48, v137);
    static PageMetrics.notInstrumented.getter();
    v49 = type metadata accessor for EpisodeOffer();
    (*(*(v49 - 8) + 56))(v21, 1, 1, v49);
    type metadata accessor for TranscriptDetail();
    swift_allocObject();
    v50 = TranscriptDetail.init(transcriptRequestInformation:playerTime:referenceTime:pageMetrics:episodeLockup:episodeOffer:)();
    v51 = v134;
    *v134 = v50;
    (*(v113 + 104))(v51, enum case for FlowDestination.episodeDetailTranscript(_:), v114);
    static MetricsTargetID.viewTranscript.getter();
    static MetricsTargetType.button.getter();
    v52 = type metadata accessor for URL();
    v53 = *(v52 - 8);
    v54 = *(v53 + 56);
    v55 = v138;
    v113 = v52;
    v107 = v54;
    v106 = v53 + 56;
    (v54)(v138, 1, 1);
    static MetricsDataConfiguration.default.getter();
    sub_100168088(&unk_10057DC50, &unk_10040A590);
    type metadata accessor for MetricsData();
    v56 = swift_allocObject();
    v114 = xmmword_100400790;
    *(v56 + 16) = xmmword_100400790;
    static MetricsActionType.navigate.getter();
    static MetricsData.clickData(targetID:targetType:actionType:actionContext:actionResult:actionURL:fields:configuration:)();

    ScalarDictionary.init()();
    ActionMetrics.init(data:custom:)();
    v152 = v145;
    sub_100009104(&v152, &unk_100574650, &unk_1004023C0);
    v151 = v146;
    sub_100009104(&v151, &unk_100573A90, &unk_100401170);
    v150 = v147;
    sub_100009104(&v150, &unk_100574660, &unk_1004023D0);
    sub_100037470(v148, v149);
    sub_100009104(v55, &qword_100574040, &unk_100400AD0);
    (*(v116 + 104))(v119, enum case for FlowPresentationContext.infer(_:), v117);
    sub_100168088(&qword_1005742B0, &qword_100406C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004007C0;
    v58 = static Link.Presentation.textFollowsTintColor.getter();
    *(inited + 32) = v58;
    v59 = static Link.Presentation.hasDisclosureIndicatorCompactOnly.getter();
    *(inited + 33) = v59;
    Link.Presentation.init(rawValue:)();
    Link.Presentation.init(rawValue:)();
    if (Link.Presentation.init(rawValue:)() != v58)
    {
      Link.Presentation.init(rawValue:)();
    }

    Link.Presentation.init(rawValue:)();
    v60 = Link.Presentation.init(rawValue:)();
    v61 = v108;
    if (v60 != v59)
    {
      Link.Presentation.init(rawValue:)();
    }

    object[13](v122, enum case for FlowDestinationPageHeader.standard(_:), v121);
    v62 = type metadata accessor for FlowAction();
    swift_allocObject();
    v63 = FlowAction.init(_:id:title:presentationContext:animationBehavior:presentationStyle:destinationPageHeader:actionMetrics:)();
    v64 = [v61 transcriptSnippet];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *(&v143 + 1) = v62;
    v144 = sub_1001B8618(&unk_10057A0D0, &type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *&v142 = v63;
    v65 = type metadata accessor for ImpressionMetrics();
    v66 = *(v65 - 8);
    v67 = *(v66 + 56);
    v134 = v65;
    v122 = v67;
    v121 = v66 + 56;
    (v67)(v139, 1, 1);
    v68 = v63;

    TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)();
    v69 = objc_opt_self();
    v70 = [v69 mainBundle];
    v154._object = 0xE000000000000000;
    v71._countAndFlagsBits = 0x495243534E415254;
    v71._object = 0xEA00000000005450;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v154._countAndFlagsBits = 0;
    v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v154);
    countAndFlagsBits = v73._countAndFlagsBits;
    object = v73._object;

    v74 = v123;
    sub_100010430(v141, v123, &qword_100574E20, &unk_1004023B0);
    v75 = type metadata accessor for MetadataSource();
    v76 = *(v75 - 8);
    if ((*(v76 + 48))(v74, 1, v75) != 1)
    {
      v77 = v112;
      sub_100010430(v74, v112, &qword_100574E20, &unk_1004023B0);
      if ((*(v76 + 88))(v77, v75) == enum case for MetadataSource.provider(_:))
      {
        v78 = [v61 podcast];
        if (v78)
        {
          v79 = v78;
          v80 = [v78 title];

          if (v80)
          {
            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            v84 = [v69 mainBundle];
            v155._object = 0xE000000000000000;
            v85._object = 0x8000000100466C40;
            v85._countAndFlagsBits = 0xD000000000000015;
            v86._countAndFlagsBits = 0;
            v86._object = 0xE000000000000000;
            v155._countAndFlagsBits = 0;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v155);

            sub_100168088(&unk_100574670, &qword_100400AB0);
            v87 = swift_allocObject();
            *(v87 + 16) = v114;
            *(v87 + 56) = &type metadata for String;
            *(v87 + 64) = sub_100022C18();
            *(v87 + 32) = v81;
            *(v87 + 40) = v83;
            static String.localizedStringWithFormat(_:_:)();
          }
        }

        goto LABEL_21;
      }

      (*(v76 + 8))(v77, v75);
    }

    v88 = [v69 mainBundle];
    v156._object = 0xE000000000000000;
    v89._countAndFlagsBits = 0xD000000000000017;
    v89._object = 0x8000000100466C20;
    v90._countAndFlagsBits = 0;
    v90._object = 0xE000000000000000;
    v156._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v89, 0, v88, v90, v156);

LABEL_21:
    sub_100009104(v74, &qword_100574E20, &unk_1004023B0);
    LOBYTE(v142) = 1;
    v91 = v130;
    ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
    if (qword_100572730 != -1)
    {
      swift_once();
    }

    v123 = *(&xmmword_100574BE8 + 1);
    v131 = xmmword_100574BE8;
    v92 = type metadata accessor for ActionMenu();
    (*(*(v92 - 8) + 56))(v124, 1, 1, v92);
    v93 = v125;
    *v125 = v68;
    v119 = v68;
    v94 = enum case for Header.PrimaryAction.seeAll(_:);
    v95 = type metadata accessor for Header.PrimaryAction();
    v96 = *(v95 - 8);
    (*(v96 + 104))(v93, v94, v95);
    (*(v96 + 56))(v93, 0, 1, v95);
    v97 = type metadata accessor for ArtworkModel();
    (*(*(v97 - 8) + 56))(v128, 1, 1, v97);

    Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
    v98 = v110;
    (*(v110 + 16))(v129, v91, v133);
    sub_100168088(&qword_1005748D8, &qword_100401D80);
    v99 = swift_allocObject();
    *(v99 + 16) = v114;
    v100 = v127;
    *(v99 + 56) = v127;
    *(v99 + 64) = sub_1001B8618(&qword_100574E28, &type metadata accessor for TranscriptSnippet, &protocol conformance descriptor for TranscriptSnippet);
    v101 = sub_10000E680((v99 + 32));
    v102 = v126;
    v103 = v140;
    (*(v126 + 16))(v101, v140, v100);
    v107(v138, 1, 1, v113);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    (v122)(v139, 1, 1, v134);
    v104 = v111;
    ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();

    (*(v98 + 8))(v91, v133);
    (*(v102 + 8))(v103, v100);
    (*(v136 + 8))(v135, v137);
    sub_100009104(v141, &qword_100574E20, &unk_1004023B0);
    v105 = type metadata accessor for ModernShelf();
    return (*(*(v105 - 8) + 56))(v104, 0, 1, v105);
  }

  v42 = type metadata accessor for ModernShelf();
  v43 = *(*(v42 - 8) + 56);

  return v43(a2, 1, 1, v42);
}

uint64_t sub_1001B7530@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v47 = v41 - v1;
  sub_100168088(&qword_100574038, &unk_100401780);
  __chkstk_darwin();
  v46 = v41 - v2;
  sub_100168088(&unk_100578C10, &qword_100400B60);
  __chkstk_darwin();
  v44 = v41 - v3;
  sub_100168088(&qword_100574048, &qword_100401790);
  __chkstk_darwin();
  v43 = v41 - v4;
  sub_100168088(&unk_100574050, &qword_100401798);
  __chkstk_darwin();
  v6 = v41 - v5;
  sub_100168088(&qword_100577490, &qword_1004017A0);
  __chkstk_darwin();
  v49 = v41 - v7;
  v45 = type metadata accessor for ModernShelf.ItemPresentation();
  v42 = *(v45 - 8);
  __chkstk_darwin();
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v41 - v10;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v53._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x495243534E415254;
  v14._object = 0xEA00000000005450;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v53);
  v41[2] = v16._object;
  v41[3] = v16._countAndFlagsBits;

  v17 = MTEpisode.subscriptionName.getter();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    v21 = [v12 mainBundle];
    v54._object = 0xE000000000000000;
    v22._object = 0x8000000100466E00;
    v22._countAndFlagsBits = 0xD00000000000001DLL;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v54._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v54);

    sub_100168088(&unk_100574670, &qword_100400AB0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100400790;
    *(v24 + 56) = &type metadata for String;
    *(v24 + 64) = sub_100022C18();
    *(v24 + 32) = v19;
    *(v24 + 40) = v20;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    v25 = [v12 mainBundle];
    v55._object = 0xE000000000000000;
    v26._countAndFlagsBits = 0xD000000000000037;
    v26._object = 0x8000000100466DC0;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v55._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v55);
  }

  LOBYTE(v50) = 1;
  v28 = v11;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  if (qword_100572730 != -1)
  {
    swift_once();
  }

  v41[0] = *(&xmmword_100574BE8 + 1);
  v41[1] = xmmword_100574BE8;
  v29 = type metadata accessor for ActionMenu();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  v30 = type metadata accessor for Header.PrimaryAction();
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = type metadata accessor for ArtworkModel();
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v32 = v42;
  v33 = v11;
  v34 = v45;
  (*(v42 + 16))(v9, v33, v45);
  sub_100168088(&qword_1005748D8, &qword_100401D80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100400790;
  v36 = type metadata accessor for ImpressionMetrics();
  v50 = 0u;
  v51 = 0u;
  v52 = 0;
  v37 = *(*(v36 - 8) + 56);
  v38 = v46;
  v37(v46, 1, 1, v36);
  *(v35 + 56) = type metadata accessor for TranscriptSnippet();
  *(v35 + 64) = sub_1001B8618(&qword_100574E28, &type metadata accessor for TranscriptSnippet, &protocol conformance descriptor for TranscriptSnippet);
  sub_10000E680((v35 + 32));
  TranscriptSnippet.init(id:text:clickAction:impressionMetrics:)();
  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v37(v38, 1, 1, v36);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v32 + 8))(v28, v34);
}

char *LibraryEpisodePagePresenter.deinit()
{

  sub_100004590((v0 + 88));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_100004590((v0 + 184));

  sub_1001B84E0(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage);
  v1 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageID;
  v2 = type metadata accessor for PageID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_pageMetrics;
  v4 = type metadata accessor for PageMetrics();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_headerShelf, &qword_100578DE0, &unk_100405FB0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_upsellBannerShelf, &qword_100578DE0, &unk_100405FB0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_highlightShelf, &qword_100578DE0, &unk_100405FB0);
  sub_100009104(v0 + OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_descriptionShelf, &qword_100578DE0, &unk_100405FB0);

  return v0;
}

uint64_t LibraryEpisodePagePresenter.__deallocating_deinit()
{
  LibraryEpisodePagePresenter.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001B82C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8Podcasts27LibraryEpisodePagePresenter_interactionContextPage;
  swift_beginAccess();
  return sub_1001B847C(v3 + v4, a1);
}

uint64_t sub_1001B8404()
{
  v0 = sub_100168088(&qword_100574E10, &unk_1004023A0);
  sub_100182568(v0, qword_100574BF8);
  sub_1001825CC(v0, qword_100574BF8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1001B847C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext.Page();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B84E0(uint64_t a1)
{
  v2 = type metadata accessor for InteractionContext.Page();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LibraryEpisodePagePresenter(uint64_t a1)
{
  result = qword_100574CA8;
  if (!qword_100574CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B8618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001B8668(uint64_t a1)
{
  type metadata accessor for InteractionContext.Page();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PageMetrics();
      if (v3 <= 0x3F)
      {
        sub_1001B8828(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1001B8828(uint64_t a1)
{
  if (!qword_100574CB8)
  {
    type metadata accessor for ModernShelf();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100574CB8);
    }
  }
}

__n128 sub_1001B8880(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001B889C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1001B88E4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1001B8954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractionContext.Page();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B89CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578DE0, &unk_100405FB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040, &unk_100400AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100578DE0, &unk_100405FB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001B8BD0()
{

  v1 = OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayNextEpisodeContextAction(uint64_t a1)
{
  result = qword_100574F00;
  if (!qword_100574F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001B8CD8(uint64_t a1)
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1001B8D9C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x78654E2079616C50;
  v1._object = 0xE900000000000074;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001B8E58@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts28PlayNextEpisodeContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001B8ED0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.playEpisodeNext(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_1001B8FA8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() systemOrangeColor];
  v3 = [objc_opt_self() mainBundle];
  v7._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x78654E2079616C50;
  v4._object = 0xE900000000000074;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v7);

  *a1 = v2;
  *(a1 + 8) = 0xD000000000000029;
  *(a1 + 16) = 0x8000000100466EB0;
  *(a1 + 24) = v6;
}

uint64_t sub_1001B9094(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001B912C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1001B91C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001B9224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

BOOL sub_1001B9284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1002C3310(a1, WitnessTable);
}

uint64_t sub_1001B92D8(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575000, &unk_1004024B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B931C(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575008, &unk_100402510);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B9360(uint64_t a1)
{
  result = sub_1001B93A4(&qword_100575010, &unk_10040252C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001B93A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlayNextEpisodeContextAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlayPreviousChapterIntentImplementation.init(asPartOf:performing:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for PlaybackController();
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_1001B94A0;

  return BaseObjectGraph.inject<A>(_:)(v2 + 2, v3, v3);
}

uint64_t sub_1001B94A0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1001B9654;
  }

  else
  {
    v2 = sub_1001B95B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B95B4()
{
  v1 = v0[4];

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1001B9654()
{
  v1 = *(v0 + 32);

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t PlayPreviousChapterIntentImplementation.perform()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001B9784;

  return PlaybackController.seekToPreviousChapter()();
}

uint64_t sub_1001B9784(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1001B9888()
{
  result = qword_100575018;
  if (!qword_100575018)
  {
    type metadata accessor for PlayPreviousChapterIntent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575018);
  }

  return result;
}

uint64_t sub_1001B98E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for PlaybackController();
  v5 = swift_task_alloc();
  v3[6] = v5;
  *v5 = v3;
  v5[1] = sub_1001B9998;

  return BaseObjectGraph.inject<A>(_:)(v3 + 2, v4, v4);
}

uint64_t sub_1001B9998()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1001B9B54;
  }

  else
  {
    v2 = sub_1001B9AAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001B9AAC()
{
  v1 = v0[5];
  v2 = v0[3];

  v3 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v3 - 8) + 8))(v1, v3);
  *v2 = v0[2];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001B9B54()
{
  v1 = *(v0 + 40);

  v2 = type metadata accessor for PlayPreviousChapterIntent();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001B9BF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001B9C88;

  return PlaybackController.seekToPreviousChapter()();
}

uint64_t sub_1001B9C88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t CarPlayAlertActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[37] = a2;
  v3[38] = a3;
  v3[36] = a1;
  v4 = type metadata accessor for Logger();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for Models.AlertAction();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[47] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[48] = v7;
  v3[49] = v6;

  return _swift_task_switch(sub_1001B9F14, v7, v6);
}

uint64_t sub_1001B9F14()
{
  v41 = v0;
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v5 = v0[37];
  v4 = v0[38];
  sub_100009F1C(0, &qword_100575020, CPAlertTemplate_ptr);
  v6 = *(v3 + 16);
  v6(v1, v5, v2);

  v7 = sub_1003B22A8(v1, v4);
  v0[50] = v7;
  if (v7)
  {
    v8 = sub_100009F1C(0, &qword_100575D00, CPInterfaceController_ptr);
    v9 = swift_task_alloc();
    v0[51] = v9;
    *v9 = v0;
    v9[1] = sub_1001BA2E4;

    return BaseObjectGraph.inject<A>(_:)(v0 + 34, v8, v8);
  }

  else
  {
    v10 = v0[45];
    v11 = v0[43];
    v12 = v0[37];

    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    static OS_os_log.carPlay.getter();
    v6(v10, v12, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = v0[45];
      v16 = v0[46];
      v35 = v14;
      v18 = v0[43];
      v17 = v0[44];
      v37 = v0[40];
      v38 = v0[39];
      v39 = v0[42];
      v19 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v40 = v36;
      *v19 = 136315138;
      v6(v16, v15, v18);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      (*(v17 + 8))(v15, v18);
      v23 = sub_1000153E0(v20, v22, &v40);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v13, v35, "Unable to create alert template from action: %s", v19, 0xCu);
      sub_100004590(v36);

      (*(v37 + 8))(v39, v38);
    }

    else
    {
      v25 = v0[44];
      v24 = v0[45];
      v27 = v0[42];
      v26 = v0[43];
      v28 = v0[39];
      v29 = v0[40];

      (*(v25 + 8))(v24, v26);
      (*(v29 + 8))(v27, v28);
    }

    v30 = v0[36];
    v31 = enum case for ActionOutcome.unsupported(_:);
    v32 = type metadata accessor for ActionOutcome();
    (*(*(v32 - 8) + 104))(v30, v31, v32);

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_1001BA2E4()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 392);
  v4 = *(v2 + 384);
  if (v0)
  {
    v5 = sub_1001BAAC0;
  }

  else
  {
    v5 = sub_1001BA420;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA420()
{
  v1 = v0[34];
  v0[53] = v1;
  v2 = [v1 presentedTemplate];
  if (v2)
  {

    v0[10] = v0;
    v0[15] = v0 + 449;
    v0[11] = sub_1001BA640;
    v3 = swift_continuation_init();
    v0[33] = sub_100168088(&qword_100575028, &qword_100402648);
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1001BAE40;
    v0[29] = &unk_1004E29A0;
    v0[30] = v3;
    [v1 dismissTemplateAnimated:1 completion:v0 + 26];
    v4 = v0 + 10;
  }

  else
  {
    v5 = v0[53];
    v6 = v0[50];
    v0[2] = v0;
    v0[7] = v0 + 56;
    v0[3] = sub_1001BA8A0;
    v7 = swift_continuation_init();
    v0[25] = sub_100168088(&qword_100575028, &qword_100402648);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BAE40;
    v0[21] = &unk_1004E2978;
    v0[22] = v7;
    [v5 presentTemplate:v6 animated:1 completion:v0 + 18];
    v4 = v0 + 2;
  }

  return _swift_continuation_await(v4);
}

uint64_t sub_1001BA640()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 432) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001BAB58;
  }

  else
  {
    v5 = sub_1001BA770;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA770()
{
  v1 = v0[53];
  v2 = v0[50];
  v0[2] = v0;
  v0[7] = v0 + 56;
  v0[3] = sub_1001BA8A0;
  v3 = swift_continuation_init();
  v0[25] = sub_100168088(&qword_100575028, &qword_100402648);
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BAE40;
  v0[21] = &unk_1004E2978;
  v0[22] = v3;
  [v1 presentTemplate:v2 animated:1 completion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001BA8A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 392);
  v4 = *(v1 + 384);
  if (v2)
  {
    v5 = sub_1001BAC04;
  }

  else
  {
    v5 = sub_1001BA9D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001BA9D0()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 288);

  v3 = enum case for ActionOutcome.performed(_:);
  v4 = type metadata accessor for ActionOutcome();
  (*(*(v4 - 8) + 104))(v2, v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001BAAC0()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001BAB58()
{
  v1 = v0[53];
  v2 = v0[50];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1001BAC04()
{
  v20 = v0;

  swift_willThrow();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  static OS_os_log.carPlay.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[55];
    v5 = v0[40];
    v4 = v0[41];
    v6 = v0[39];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136315138;
    v0[35] = v3;
    swift_errorRetain();
    sub_100168088(&qword_100575C50, &unk_100402650);
    v9 = String.init<A>(describing:)();
    v11 = sub_1000153E0(v9, v10, &v19);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to present alert action: %s", v7, 0xCu);
    sub_100004590(v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v13 = v0[40];
    v12 = v0[41];
    v14 = v0[39];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[53];
  v16 = v0[50];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1001BAE40(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_1000044A0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100168088(&qword_100575C50, &unk_100402650);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1001BAF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001C51C;

  return CarPlayAlertActionImplementation.perform(_:asPartOf:)(a1, a2, a3);
}

uint64_t sub_1001BAFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001BB084();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_1001BB014()
{
  result = qword_100575030;
  if (!qword_100575030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575030);
  }

  return result;
}

unint64_t sub_1001BB084()
{
  result = qword_100575038;
  if (!qword_100575038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575038);
  }

  return result;
}

uint64_t sub_1001BB0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574040, &unk_100400AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BB150(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100400790;
  v7 = [objc_opt_self() shared];
  v8 = [v7 mainAppContext];

  v9 = [v8 objectID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100022C18();
  *(v6 + 32) = v10;
  *(v6 + 40) = v12;
  v19 = NSPredicate.init(format:_:)();
  sub_100009F1C(0, &unk_100575050, CLSContext_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() queryWithObjectType:ObjCClassFromMetadata predicate:v19];
  if (v14)
  {
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    aBlock[4] = sub_1001BB52C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001BB534;
    aBlock[3] = &unk_1004E2A10;
    v17 = _Block_copy(aBlock);
    v18 = v15;

    [v18 setCompletion:v17];
    _Block_release(v17);
    [v3 executeQuery:v18];
  }

  else
  {
  }
}

uint64_t sub_1001BB3F8(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a1)
  {
    v5 = *(a1 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v9 = a2;
      v11 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v7 = a1 + 32;
      do
      {
        sub_10001B944(v7, v10);
        sub_100009F1C(0, &unk_100575050, CLSContext_ptr);
        swift_dynamicCast();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += 32;
        --v5;
      }

      while (v5);
      v6 = v11;
      a2 = v9;
    }
  }

  else
  {
    v6 = 0;
  }

  (a3)(v6, a2);
}

uint64_t sub_1001BB534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1001BB5D0()
{

  return swift_deallocClassInstance();
}

void sub_1001BB608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v6 = *(type metadata accessor for DownloadJob(0) - 8);
  v7 = *(v6 + 64);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(v3 + 16) newBackgroundContext];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 privateQueueContext];

  sub_1001BE270(a1, v8);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  sub_1001BE0FC(v8, v15 + v12, type metadata accessor for DownloadJob);
  *(v15 + v13) = v11;
  *(v15 + v14) = v9;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = v21;
  v16[1] = a3;
  aBlock[4] = sub_1001BE2D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2AF0;
  v17 = _Block_copy(aBlock);

  v18 = v11;
  v19 = v9;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_1001BB854(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a4;
  v10 = *(type metadata accessor for DownloadJob(0) - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = String._bridgeToObjectiveC()();
  v13 = [a3 episodeForUuid:v12];

  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = [v13 assetURL];
  if (!v14)
  {

LABEL_5:
    v16 = 0;
    v18 = 0;
    goto LABEL_6;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

LABEL_6:
  sub_1001BE270(a2, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  sub_1001BE0FC(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19, type metadata accessor for DownloadJob);
  v23 = (v22 + v20);
  v24 = v28;
  *v23 = v27;
  v23[1] = a6;
  *(v22 + v21) = a1;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_1001BE380;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2B40;
  v25 = _Block_copy(aBlock);

  v26 = v24;

  [v26 performBlock:v25];
  _Block_release(v25);
}

uint64_t sub_1001BBAC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, void *a7)
{
  v57 = a4;
  v55 = a1;
  v53 = type metadata accessor for UUID();
  v11 = *(v53 - 8);
  __chkstk_darwin();
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100168088(&qword_100575240, &unk_100402818);
  __chkstk_darwin();
  v15 = (&v51 - v14);
  v16 = type metadata accessor for DownloadJob(0);
  __chkstk_darwin();
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v51 - v19;
  if (a2)
  {
    v54 = a5;

    v21 = static os_log_type_t.info.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v22 = static OS_os_log.downloads.getter();
    sub_1001BE270(a3, v20);
    if (os_log_type_enabled(v22, v21))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v58 = v24;
      *v23 = 136315138;
      sub_100010064(&qword_100575248, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_1001BE660(v20);
      v28 = sub_1000153E0(v25, v27, &v58);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v21, "Download job %s is for an episode that is already downloaded. This is invalid, so the job will not be saved.", v23, 0xCu);
      sub_100004590(v24);
    }

    else
    {

      sub_1001BE660(v20);
    }

    *v15 = v55;
    v15[1] = a2;
    type metadata accessor for JobStorageError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    goto LABEL_8;
  }

  v55 = v11;
  sub_1001BE42C(a3);
  v54 = a5;
  if (v29)
  {
    v52 = v29;
    v31 = static os_log_type_t.info.getter();
    sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
    v32 = static OS_os_log.downloads.getter();
    sub_1001BE270(a3, v18);
    if (os_log_type_enabled(v32, v31))
    {
      v33 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *v33 = 136315394;
      v34 = &v18[*(v16 + 20)];
      v35 = *v34;
      v36 = v34[1];

      sub_1001BE660(v18);
      v37 = sub_1000153E0(v35, v36, &v58);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = [v52 id];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100010064(&qword_100575248, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v39 = v53;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v55 + 8))(v13, v39);
      v43 = sub_1000153E0(v40, v42, &v58);

      *(v33 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v32, v31, "Found existing download job for episode %s, id: %s", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1001BE660(v18);
    }

    v48 = v52;
    sub_1001BC180(v48, v15);
    type metadata accessor for JobStorageError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v57(v15);
  }

  else
  {
    type metadata accessor for CDDownloadJob();
    v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a7];
    sub_1001BC6CC(a3);

    v58 = 0;
    v45 = [a7 save:&v58];
    v46 = v58;
    if (v45)
    {
      sub_1001BE270(a3, v15);
      swift_storeEnumTagMultiPayload();
      v47 = v46;
LABEL_8:
      v57(v15);
      return sub_100009104(v15, &qword_100575240, &unk_100402818);
    }

    v49 = v58;
    v50 = _convertNSErrorToError(_:)();

    swift_willThrow();
    *v15 = v50;
    type metadata accessor for JobStorageError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v57(v15);
  }

  return sub_100009104(v15, &qword_100575240, &unk_100402818);
}

uint64_t sub_1001BC180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v5 = &v51 - v4;
  v63 = type metadata accessor for URL();
  v60 = *(v63 - 8);
  __chkstk_darwin();
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EpisodeMetadata(0);
  __chkstk_darwin();
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v65 = *(v11 - 8);
  v66 = v11;
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 id];
  v64 = v14;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [a1 episodeUuid];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v18;
  v62 = v17;

  v19 = sub_1001BDBAC();
  v57 = v20;
  v58 = v19;
  v56 = v21;
  v55 = [a1 taskIdentifier];
  v22 = [a1 url];
  v59 = v7;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [a1 type];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  v54 = _findStringSwitchCase(cases:string:)(&off_1004DEDF0, v27);

  v28 = [a1 guid];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v31;
    v53 = v30;
  }

  else
  {
    v52 = 0;
    v53 = 0;
  }

  v32 = [a1 adamId];
  if (v32)
  {
    v51 = [a1 adamId];
  }

  else
  {
    v51 = 0;
  }

  v33 = [a1 podcastAdamId];
  if (v33)
  {
    v34 = [a1 podcastAdamId];
  }

  else
  {
    v34 = 0;
  }

  v35 = [a1 lastCacheDeletePurge];
  if (v35)
  {
    v36 = v35;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = type metadata accessor for Date();
  (*(*(v38 - 8) + 56))(v5, v37, 1, v38);
  v39 = v54 == 1;
  (*(v60 + 32))(&v10[v8[11]], v59, v63);
  v10[v8[12]] = v39;
  v40 = &v10[v8[13]];
  *v40 = 0;
  v40[8] = 1;
  *v10 = 0;
  *(v10 + 1) = 0;
  v41 = v52;
  *(v10 + 2) = v53;
  *(v10 + 3) = v41;
  *(v10 + 4) = v51;
  v10[40] = v32 == 0;
  *(v10 + 6) = v34;
  v10[56] = v33 == 0;
  *(v10 + 5) = 0u;
  *(v10 + 6) = 0u;
  *(v10 + 4) = 0u;
  v42 = &v10[v8[14]];
  *v42 = 0;
  v42[8] = 1;
  sub_100010498(v5, &v10[v8[15]], &qword_100574760, &unk_1003FEB60);
  v43 = [a1 creationDate];
  v44 = type metadata accessor for DownloadJob(0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v65 + 32))(a2, v64, v66);
  result = sub_1001BE0FC(v10, a2 + v44[9], type metadata accessor for EpisodeMetadata);
  *(a2 + v44[7]) = v55;
  v46 = a2 + v44[8];
  v47 = v57;
  *v46 = v58;
  *(v46 + 8) = v47;
  *(v46 + 16) = v56 & 1;
  v48 = (a2 + v44[5]);
  v49 = v61;
  *v48 = v62;
  v48[1] = v49;
  v50 = a2 + v44[10];
  *v50 = 0;
  *(v50 + 8) = 0;
  *(v50 + 16) = 0;
  *(v50 + 24) = 1;
  *(v50 + 32) = 0;
  *(v50 + 40) = 0;
  *(v50 + 48) = 0;
  return result;
}

void sub_1001BC6CC(uint64_t a1)
{
  v2 = v1;
  sub_100168088(&qword_100574760, &unk_1003FEB60);
  __chkstk_darwin();
  v5 = &v23 - v4;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v2 setId:isa];

  v7 = type metadata accessor for DownloadJob(0);
  v8 = a1 + v7[8];
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);

  sub_1001BDF00(v9, v10, v11);
  v12 = a1 + v7[9];
  v13 = type metadata accessor for EpisodeMetadata(0);
  v14 = String._bridgeToObjectiveC()();

  [v2 setType:v14];

  v15 = String._bridgeToObjectiveC()();
  [v2 setEpisodeUuid:v15];

  v16 = Date._bridgeToObjectiveC()().super.isa;
  [v2 setCreationDate:v16];

  [v2 setTaskIdentifier:*(a1 + v7[7])];
  URL._bridgeToObjectiveC()(*(v13 + 44));
  v18 = v17;
  [v2 setUrl:v17];

  if (*(v12 + 24))
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  [v2 setGuid:v19];

  sub_100010430(v12 + *(v13 + 60), v5, &qword_100574760, &unk_1003FEB60);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v5, 1, v20) != 1)
  {
    v22 = Date._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v5, v20);
  }

  [v2 setLastCacheDeletePurge:v22];
}

void sub_1001BC9A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = [*(v4 + 16) newBackgroundContext];
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v14 = v13 + ((v12 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v14 = v11;
  *(v14 + 8) = a2;
  v15 = (v13 + ((v12 + v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v19;
  v15[1] = a4;
  aBlock[4] = sub_1001BE164;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F038;
  aBlock[3] = &unk_1004E2AA0;
  v16 = _Block_copy(aBlock);
  v17 = v11;

  [v17 performBlock:v16];
  _Block_release(v16);
}

uint64_t sub_1001BCBAC(uint64_t a1, void *a2, char a3, void (*a4)(uint64_t *))
{
  sub_100168088(&qword_100575228, &qword_100402810);
  __chkstk_darwin();
  v8 = (&v27[-1] - v7);
  v9 = objc_allocWithZone(NSFetchRequest);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithEntityName:v10];

  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004007C0;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = sub_100022C18();
  *(v12 + 32) = 25705;
  *(v12 + 40) = 0xE200000000000000;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  *(v12 + 96) = sub_100009F1C(0, &qword_100575230, NSUUID_ptr);
  *(v12 + 104) = sub_1001BE208();
  *(v12 + 72) = isa;
  v14 = NSPredicate.init(format:_:)();
  [v11 setPredicate:v14];

  type metadata accessor for CDDownloadJob();
  v15 = NSManagedObjectContext.fetch<A>(_:)();
  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:

    if (a3)
    {
      type metadata accessor for JobStorageError(0);
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    a4(v8);
    goto LABEL_13;
  }

  v23 = v15;
  v24 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v23;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v16 = *(v15 + 32);
  }

  v17 = v16;

  [a2 deleteObject:v17];
  v27[0] = 0;
  v18 = [a2 save:v27];
  v19 = v27[0];
  if (v18)
  {
    swift_storeEnumTagMultiPayload();
    v20 = v19;
    a4(v8);

LABEL_13:
    return sub_100009104(v8, &qword_100575228, &qword_100402810);
  }

  v21 = v27[0];
  v22 = _convertNSErrorToError(_:)();

  swift_willThrow();
  *v8 = v22;
  type metadata accessor for JobStorageError(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  a4(v8);

  return sub_100009104(v8, &qword_100575228, &qword_100402810);
}

uint64_t sub_1001BCF94(uint64_t a1, void *a2, char a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v61 = a7;
  v62 = a4;
  v58 = a5;
  v59 = a6;
  v60 = sub_100168088(&qword_100575210, &unk_1004027F0);
  __chkstk_darwin();
  v55 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v56 = (&v53 - v11);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v57 = [v12 initWithEntityName:v13];

  sub_100168088(&unk_100574670, &qword_100400AB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100402720;
  *(v14 + 56) = &type metadata for String;
  v15 = sub_100022C18();
  *(v14 + 64) = v15;
  *(v14 + 32) = 0xD000000000000011;
  *(v14 + 40) = 0x80000001004670B0;
  v16 = (a3 & 1) == 0;
  if (a3)
  {
    v17 = 1936484398;
  }

  else
  {
    v17 = 0x7261646E6174732ELL;
  }

  if (v16)
  {
    v18 = 0xE900000000000064;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  v54._countAndFlagsBits = a1;
  v66._countAndFlagsBits = a1;
  v66._object = a2;
  v54._object = a2;

  v53 = v17;
  v19._countAndFlagsBits = v17;
  v19._object = v18;
  String.append(_:)(v19);

  v20 = v66;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v15;
  *(v14 + 72) = v20;
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v15;
  strcpy((v14 + 112), "taskIdentifier");
  *(v14 + 127) = -18;
  *(v14 + 176) = sub_100168088(&qword_1005751F8, &unk_1004027E0);
  *(v14 + 184) = sub_100009FAC(&unk_100575200, &qword_1005751F8, &unk_1004027E0, &protocol conformance descriptor for [A]);
  *(v14 + 152) = v62;

  v21 = v57;
  v22 = NSPredicate.init(format:_:)();
  [v21 setPredicate:v22];

  v23 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v21];
  [v23 setResultType:2];
  v66._countAndFlagsBits = 0;
  v24 = [v58 executeRequest:v23 error:&v66];
  countAndFlagsBits = v66._countAndFlagsBits;
  if (!v24)
  {
    v29 = v66._countAndFlagsBits;
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v31 = v55;
    *v55 = v30;
    type metadata accessor for JobStorageError(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v59(v31);

    v23 = v21;
    goto LABEL_26;
  }

  v26 = v24;
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  v28 = countAndFlagsBits;
  if (v27)
  {
    if ([v27 result])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
    }

    v66 = v63;
    v67 = v64;
    if (*(&v64 + 1))
    {
      v32 = swift_dynamicCast();
      if (v32)
      {
        v33 = v63;
      }

      else
      {
        v33 = 0;
      }

      v34 = v32 ^ 1;
      goto LABEL_20;
    }
  }

  else
  {

    v66 = 0;
    v67 = 0u;
  }

  sub_100009104(&v66, &unk_1005783D0, &qword_1004031E0);
  v33 = 0;
  v34 = 1;
LABEL_20:
  v35 = static os_log_type_t.default.getter();
  sub_100009F1C(0, &qword_1005748A0, OS_os_log_ptr);
  v36 = static OS_os_log.downloads.getter();
  if (os_log_type_enabled(v36, v35))
  {
    v37 = swift_slowAlloc();
    v58 = v33;
    v38 = v37;
    v39 = swift_slowAlloc();
    *v38 = 136315650;
    v65 = v39;
    v66._countAndFlagsBits = v58;
    LOBYTE(v66._object) = v34;
    sub_100168088(&unk_100575218, &unk_100402800);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000153E0(v40, v41, &v65);
    v55 = v27;
    v43 = v21;
    v44 = v42;

    *(v38 + 4) = v44;
    *(v38 + 12) = 2082;
    v66._countAndFlagsBits = 0x496E6F6973736553;
    v66._object = 0xEB00000000203A44;
    v63 = v54;

    v45._countAndFlagsBits = v53;
    v45._object = v18;
    String.append(_:)(v45);

    String.append(_:)(v63);

    v46 = sub_1000153E0(v66._countAndFlagsBits, v66._object, &v65);

    *(v38 + 14) = v46;
    *(v38 + 22) = 2082;
    v21 = v43;
    v27 = v55;
    v47 = Array.description.getter();
    v49 = sub_1000153E0(v47, v48, &v65);

    *(v38 + 24) = v49;
    _os_log_impl(&_mh_execute_header, v36, v35, "Deleted %s not-running jobs from session identifier %{public}s thats not in tasks %{public}s", v38, 0x20u);
    swift_arrayDestroy();

    v33 = v58;
  }

  v50 = v59;
  v31 = v56;
  if (v34)
  {
    v51 = 0;
  }

  else
  {
    v51 = v33;
  }

  *v56 = v51;
  swift_storeEnumTagMultiPayload();
  v50(v31);

LABEL_26:
  return sub_100009104(v31, &qword_100575210, &unk_1004027F0);
}

void *sub_1001BD69C(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, void (*a6)(uint64_t), uint64_t a7)
{
  v44 = a7;
  v37 = a6;
  v40 = a4;
  v41 = a5;
  v39 = a1;
  v9 = *(type metadata accessor for DownloadJob(0) - 8);
  __chkstk_darwin();
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100168088(&qword_1005751E8, &unk_1004027D0);
  __chkstk_darwin();
  v13 = &v36 - v12;
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = String._bridgeToObjectiveC()();
  v42 = [v14 initWithEntityName:v15];

  sub_100168088(&unk_100574670, &qword_100400AB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100402720;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_100022C18();
  *(v16 + 64) = v17;
  *(v16 + 32) = 0xD000000000000011;
  *(v16 + 40) = 0x80000001004670B0;
  v18 = (a3 & 1) == 0;
  if (a3)
  {
    v19 = 1936484398;
  }

  else
  {
    v19 = 0x7261646E6174732ELL;
  }

  if (v18)
  {
    v20 = 0xE900000000000064;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  v38 = sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  v45 = v39;
  v46 = a2;

  v21._countAndFlagsBits = v19;
  v21._object = v20;
  String.append(_:)(v21);

  v22 = v45;
  v23 = v46;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v17;
  *(v16 + 72) = v22;
  *(v16 + 80) = v23;
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  strcpy((v16 + 112), "taskIdentifier");
  *(v16 + 127) = -18;
  *(v16 + 176) = sub_100168088(&qword_1005751F8, &unk_1004027E0);
  *(v16 + 184) = sub_100009FAC(&unk_100575200, &qword_1005751F8, &unk_1004027E0, &protocol conformance descriptor for [A]);
  *(v16 + 152) = v40;

  v24 = v42;
  v25 = NSPredicate.init(format:_:)();
  [v24 setPredicate:v25];

  type metadata accessor for CDDownloadJob();
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  v27 = v26;
  v41 = v13;
  if (!(v26 >> 62))
  {
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_9;
    }

LABEL_19:

    v31 = _swiftEmptyArrayStorage;
LABEL_20:
    v35 = v41;
    *v41 = v31;
    swift_storeEnumTagMultiPayload();
    v37(v35);

    return sub_100009104(v35, &qword_1005751E8, &unk_1004027D0);
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  if (!v28)
  {
    goto LABEL_19;
  }

LABEL_9:
  v45 = _swiftEmptyArrayStorage;
  result = sub_1001A7694(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = v45;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v32 = *(v27 + 8 * v30 + 32);
      }

      sub_1001BC180(v32, v11);
      v45 = v31;
      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        sub_1001A7694((v33 > 1), v34 + 1, 1);
        v31 = v45;
      }

      ++v30;
      v31[2] = v34 + 1;
      sub_1001BE0FC(v11, v31 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, type metadata accessor for DownloadJob);
    }

    while (v28 != v30);

    v24 = v42;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BDBAC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v0 primitiveValueForKey:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v30[0] = v28;
  v30[1] = v29;
  if (!*(&v29 + 1))
  {
    sub_100009104(v30, &unk_1005783D0, &qword_1004031E0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    v7 = 0;
    goto LABEL_10;
  }

  v8 = v26;
  v7 = v27;

  v9 = sub_10016D7BC(v8, v7);
  if (v10)
  {
    v11 = v9;

    return v11;
  }

LABEL_10:
  strcpy(v30, "malformed.id.");
  HIWORD(v30[0]) = -4864;
  if (v7)
  {
    v12 = v8;
  }

  else
  {
    v12 = 1819047278;
  }

  if (v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14._countAndFlagsBits = v12;
  v14._object = v13;
  String.append(_:)(v14);

  v11 = *&v30[0];
  static Logger.downloads.getter();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v1;
    v18 = v17;
    v19 = swift_slowAlloc();
    *&v28 = v19;
    *v18 = 136315138;
    *&v30[0] = v8;
    *(&v30[0] + 1) = v7;
    sub_100168088(&qword_100574230, &qword_100401FE0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000153E0(v20, v21, &v28);

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "CDDownloadJob found with invalid session identifier string: '%s'", v18, 0xCu);
    sub_100004590(v19);

    (*(v2 + 8))(v4, v25);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return v11;
}

void sub_1001BDF00(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = String._bridgeToObjectiveC()();
  [v4 willChangeValueForKey:v6];

  if (a3)
  {
    v7 = 1936484398;
  }

  else
  {
    v7 = 0x7261646E6174732ELL;
  }

  if (a3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  v9._countAndFlagsBits = v7;
  v9._object = v8;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  v11 = String._bridgeToObjectiveC()();
  [v4 setPrimitiveValue:v10 forKey:v11];

  v12 = String._bridgeToObjectiveC()();
  [v4 didChangeValueForKey:v12];
}

id sub_1001BE0C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDDownloadJob();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001BE0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BE164()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = v0 + ((v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BCBAC(v0 + v2, v5, v6, v7);
}

unint64_t sub_1001BE208()
{
  result = qword_100575238;
  if (!qword_100575238)
  {
    sub_100009F1C(255, &qword_100575230, NSUUID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100575238);
  }

  return result;
}

uint64_t sub_1001BE270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadJob(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1001BE2D4()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = (v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_1001BB854(v6, v0 + v2, v5, v7, v9, v10);
}

uint64_t sub_1001BE380()
{
  v1 = *(type metadata accessor for DownloadJob(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001BBAC4(v5, v6, v0 + v2, v8, v9, v10, v11);
}

void sub_1001BE42C(uint64_t a1)
{
  type metadata accessor for CDDownloadJob();
  v3 = [swift_getObjCClassFromMetadata() fetchRequest];
  v4 = (a1 + *(type metadata accessor for DownloadJob(0) + 20));
  v6 = *v4;
  v5 = v4[1];
  sub_100009F1C(0, &qword_1005751F0, NSPredicate_ptr);
  sub_100168088(&unk_100574670, &qword_100400AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004007C0;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100022C18();
  *(v7 + 32) = 0x5565646F73697065;
  *(v7 + 40) = 0xEB00000000646975;
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 64) = v8;
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;

  v9 = NSPredicate.init(format:_:)();
  [v3 setPredicate:v9];

  sub_100168088(&unk_100575250, &unk_100402828);
  v10 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {

    return;
  }

  if (v10 >> 62)
  {
    v11 = v10;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v11;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRetain();
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001BE660(uint64_t a1)
{
  v2 = type metadata accessor for DownloadJob(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001BE6CC()
{
  v1 = v0;
  type metadata accessor for EpisodeContextActionDataType.Reference(0);
  __chkstk_darwin();
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  if (!v6)
  {
    goto LABEL_4;
  }

  if ((sub_100396F64() & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
    swift_beginAccess();
    sub_1001C1974(v6 + v9, v5, type metadata accessor for EpisodeContextActionDataType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v12 = *v5;

        v13 = *(v1 + 32);
        v14 = [objc_opt_self() sharedInstance];
        v15 = [v14 mainOrPrivateContext];

        __chkstk_darwin();
        *&v21[-32] = v12;
        *&v21[-24] = v15;
        v21[-16] = v13;
        NSManagedObjectContext.performAndWait<A>(_:)();

        v7 = v21[15];
        return v7 & 1;
      }

      v18 = *v5;
      if (*(v1 + 32))
      {

        goto LABEL_3;
      }

      v19 = swift_allocObject();
      v19[2] = sub_1001BEBBC;
      v19[3] = 0;
      v19[4] = v18;
      v19[5] = sub_1001BEB90;
      v19[6] = 0;

      v7 = sub_1001BF1A8(v20, sub_1001C1AB0, v19, 0);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v11 = sub_1001BEBCC(*v5, *(v1 + 32));
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          sub_1001C190C(v5, v3, type metadata accessor for EpisodeContextActionDataType.Reference);
          sub_100168088(&unk_100574850, &qword_100401D08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100400790;
          *(inited + 32) = *v3;
          v17 = inited + 32;
          *(inited + 40) = 0;
          *(inited + 48) = 0;
          v7 = sub_1001BF55C(inited, *(v1 + 32));

          swift_setDeallocating();
          sub_1001C1A5C(v17);
          sub_1001C19DC(v3, type metadata accessor for EpisodeContextActionDataType.Reference);
          return v7 & 1;
        }

        v11 = sub_1001BEF1C(*v5, *(v1 + 32));
      }

      v7 = v11;
    }

    return v7 & 1;
  }

LABEL_3:

LABEL_4:
  v7 = 0;
  return v7 & 1;
}

void sub_1001BEA68(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v8 = *(a1 + 16);
  swift_bridgeObjectRetain_n();
  v9 = a2;
  if (v8)
  {
    v16 = a4;
    v10 = a1 + 40;
    do
    {

      v11 = String._bridgeToObjectiveC()();
      v12 = [v9 episodeForUuid:v11];

      if (v12)
      {
        v13 = [v12 isVisuallyPlayed];

        v14 = v13 ? a3 : (a3 & 1) == 0;
        if (v14)
        {
          v15 = 1;
          goto LABEL_11;
        }
      }

      v10 += 16;
      --v8;
    }

    while (v8);
    v15 = 0;
LABEL_11:
    a4 = v16;
  }

  else
  {
    v15 = 0;
  }

  swift_bridgeObjectRelease_n();

  *a4 = v15;
}

uint64_t sub_1001BEB90@<X0>(uint64_t *a1@<X8>)
{
  result = EpisodeOffer.contentId.getter();
  *a1 = result;
  return result;
}

void *sub_1001BEBBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

char *sub_1001BEBCC(unint64_t a1, char a2)
{
  if (*(v2 + 32))
  {
    return 0;
  }

  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v31)
  {
    v32 = a2;
    if (!i)
    {
      v11 = _swiftEmptyArrayStorage[2];
      if (!v11)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    result = sub_1001A73C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v6 = _swiftEmptyArrayStorage;
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        v8 = [specialized _ArrayBuffer._getElementSlowPath(_:)() episodeStoreId];
        swift_unknownObjectRelease();
        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_1001A73C8((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        _swiftEmptyArrayStorage[v10 + 4] = v8;
      }
    }

    else
    {
      v14 = (v4 + 32);
      do
      {
        v15 = [*v14 episodeStoreId];
        v33 = v6;
        v17 = v6[2];
        v16 = v6[3];
        if (v17 >= v16 >> 1)
        {
          v18 = v15;
          sub_1001A73C8((v16 > 1), v17 + 1, 1);
          v15 = v18;
          v6 = v33;
        }

        v6[2] = v17 + 1;
        v6[v17 + 4] = v15;
        ++v14;
        --i;
      }

      while (i);
    }

    v11 = v6[2];
    if (!v11)
    {
LABEL_14:

      v12 = _swiftEmptyArrayStorage;
      v13 = _swiftEmptyArrayStorage[2];
      if (!v13)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_21:
    sub_1001A7578(0, v11, 0);
    v19 = 32;
    v12 = _swiftEmptyArrayStorage;
    do
    {
      v20 = AdamID.init(rawValue:)();
      v34 = v12;
      v22 = v12[2];
      v21 = v12[3];
      if (v22 >= v21 >> 1)
      {
        v23 = v20;
        sub_1001A7578((v21 > 1), v22 + 1, 1);
        v20 = v23;
        v12 = v34;
      }

      v12[2] = v22 + 1;
      v12[v22 + 4] = v20;
      v19 += 8;
      --v11;
    }

    while (v11);

    v13 = v12[2];
    if (!v13)
    {
LABEL_31:

      v29 = sub_1001BF55C(_swiftEmptyArrayStorage, v32 & 1);

      return (v29 & 1);
    }

LABEL_26:
    sub_1001A7540(0, v13, 0);
    v24 = 0;
    v4 = _swiftEmptyArrayStorage;
    while (v24 < v12[2])
    {
      v25 = v12[v24 + 4];
      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_1001A7540((v26 > 1), v27 + 1, 1);
      }

      ++v24;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[3 * v27];
      v28[4] = v25;
      v28[5] = 0;
      *(v28 + 48) = 0;
      if (v13 == v24)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    v30 = a2;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BEF1C(unint64_t a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    return 0;
  }

  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_33:
    v29 = a2;
    v30 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v29;
    v6 = v30;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = a2;
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v8 = 0;
    do
    {
      v32 = v7;
      v9 = v8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v5 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(a1 + 8 * v9 + 32);
        }

        v11 = v10;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v12 = MPCPlayerResponseItem.podcastEpisode.getter();
        if (v12)
        {
          break;
        }

LABEL_9:
        ++v9;
        if (v8 == v6)
        {
          v7 = v32;
          goto LABEL_25;
        }
      }

      v13 = v12;
      v14 = MPModelObject.adamID.getter();
      v16 = v15;

      if (v16)
      {
        goto LABEL_9;
      }

      v7 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_1002433B0(0, *(v32 + 2) + 1, 1, v32);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_1002433B0((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      *&v7[8 * v19 + 32] = v14;
    }

    while (v8 != v6);
  }

LABEL_25:
  v20 = *(v7 + 2);
  if (v20)
  {
    sub_1001A7540(0, v20, 0);
    v21 = 0;
    v22 = _swiftEmptyArrayStorage[2];
    v23 = 3 * v22;
    do
    {
      v24 = *&v7[8 * v21 + 32];
      v25 = _swiftEmptyArrayStorage[3];
      v26 = v22 + v21 + 1;
      if (v22 + v21 >= v25 >> 1)
      {
        sub_1001A7540((v25 > 1), v22 + v21 + 1, 1);
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v26;
      v27 = &_swiftEmptyArrayStorage[v23];
      v27[4] = v24;
      v27[5] = 0;
      *(v27 + 48) = 0;
      v23 += 3;
    }

    while (v20 != v21);
  }

  v28 = sub_1001BF55C(_swiftEmptyArrayStorage, v31 & 1);

  return v28 & 1;
}

uint64_t sub_1001BF1A8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, int a4)
{
  v9 = type metadata accessor for EpisodePlayState();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = v29 - v13;
  __chkstk_darwin();
  v31 = v29 - v14;
  v15 = *(v4 + 40);

  v16 = sub_1001C12C4(a1, a2, a3, v15);

  swift_getKeyPath();
  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_13:

    v20 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_3:
  v34 = _swiftEmptyArrayStorage;
  result = sub_1001A74FC(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    goto LABEL_29;
  }

  v29[1] = v9;
  v30 = a4;
  v19 = 0;
  v20 = v34;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(v16 + 8 * v19 + 32);
    }

    v33 = v21;

    swift_getAtKeyPath();

    v34 = v20;
    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      sub_1001A74FC((v22 > 1), v23 + 1, 1);
      v20 = v34;
    }

    ++v19;
    v20[2] = v23 + 1;
    sub_1001C190C(v12, v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23, &type metadata accessor for EpisodePlayState);
  }

  while (v17 != v19);

  LOBYTE(a4) = v30;
LABEL_14:
  v24 = v20[2];
  v26 = v31;
  v25 = v32;
  if (!v24)
  {
LABEL_27:

    return v24;
  }

  v27 = 0;
  v28 = v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  while (v27 < v20[2])
  {
    sub_1001C1974(&v28[*(v10 + 72) * v27], v26, &type metadata accessor for EpisodePlayState);
    sub_1001C190C(v26, v25, &type metadata accessor for EpisodePlayState);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 3) < 2 || result == 1)
    {
      if ((a4 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (result == 2)
    {
      result = sub_1001A4748(v25);
      if (a4)
      {
LABEL_26:
        v24 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1001C19DC(v25, &type metadata accessor for EpisodePlayState);
    }

    if (v24 == ++v27)
    {
      v24 = 0;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1001BF55C(uint64_t a1, int a2)
{
  v4 = type metadata accessor for EpisodePlayState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = v23 - v8;
  __chkstk_darwin();
  v25 = v23 - v9;

  v10 = sub_1001C17D4(a1);

  swift_getKeyPath();
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  v28 = _swiftEmptyArrayStorage;
  result = sub_1001A74FC(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    goto LABEL_29;
  }

  v23[1] = v4;
  v24 = a2;
  v13 = 0;
  v14 = v28;
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v10 + 8 * v13 + 32);
    }

    v27 = v15;

    swift_getAtKeyPath();

    v28 = v14;
    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      sub_1001A74FC((v16 > 1), v17 + 1, 1);
      v14 = v28;
    }

    ++v13;
    v14[2] = v17 + 1;
    sub_1001C190C(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, &type metadata accessor for EpisodePlayState);
  }

  while (v11 != v13);

  LOBYTE(a2) = v24;
LABEL_14:
  v18 = v14[2];
  v20 = v25;
  v19 = v26;
  if (!v18)
  {
LABEL_27:

    return v18;
  }

  v21 = 0;
  v22 = v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v21 < v14[2])
  {
    sub_1001C1974(&v22[*(v5 + 72) * v21], v20, &type metadata accessor for EpisodePlayState);
    sub_1001C190C(v20, v19, &type metadata accessor for EpisodePlayState);
    result = swift_getEnumCaseMultiPayload();
    if ((result - 3) < 2 || result == 1)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (result == 2)
    {
      result = sub_1001A4748(v19);
      if (a2)
      {
LABEL_26:
        v18 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1001C19DC(v19, &type metadata accessor for EpisodePlayState);
    }

    if (v18 == ++v21)
    {
      v18 = 0;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1001BF900(uint64_t (*a1)(char *, unint64_t, uint64_t (*)(void)), uint64_t a2)
{
  v87 = a1;
  v4 = *(type metadata accessor for EpisodeContextActionDataType.Reference(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (v81 - v7);
  v88 = type metadata accessor for EpisodeOffer();
  v82 = *(v88 - 1);
  __chkstk_darwin();
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpisodeContextActionDataType(0);
  __chkstk_darwin();
  v12 = (v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + 16);
  if (!v13)
  {
    return;
  }

  v86 = a2;
  v83 = v2;
  v14 = 2;
  if (!*(v2 + 32))
  {
    v14 = 0;
  }

  v84 = v14;
  v15 = OBJC_IVAR____TtC8Podcasts24EpisodeContextActionData_type;
  v16 = v13;
  swift_beginAccess();
  v85 = v16;
  sub_1001C1974(v16 + v15, v12, type metadata accessor for EpisodeContextActionDataType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v54 = *v12;
      sub_100004428(v83 + 48, v93);
      sub_1000044A0(v93, v94);

      dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
      sub_100004590(v93);

      v55 = dispatch thunk of PlaybackController.queueController.getter();

      v56 = *(v54 + 16);
      if (v56)
      {
        v81[1] = v55;
        v93[0] = _swiftEmptyArrayStorage;
        sub_1001A7578(0, v56, 0);
        v57 = v93[0];
        v87 = *(v82 + 16);
        v58 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v83 = v54;
        v59 = v54 + v58;
        v86 = *(v82 + 72);
        v60 = (v82 + 8);
        do
        {
          v61 = v88;
          v87(v10, v59, v88);
          v62 = EpisodeOffer.contentId.getter();
          (*v60)(v10, v61);
          v93[0] = v57;
          v64 = *(v57 + 16);
          v63 = *(v57 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_1001A7578((v63 > 1), v64 + 1, 1);
            v57 = v93[0];
          }

          *(v57 + 16) = v64 + 1;
          *(v57 + 8 * v64 + 32) = v62;
          v59 += v86;
          --v56;
        }

        while (v56);
      }

      PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
    }

    else
    {

      sub_100004428(v83 + 48, v93);
      sub_1000044A0(v93, v94);
      dispatch thunk of LibraryActionControllerProtocol.mark(episodeUUIDS:as:completion:)();
      sub_100004590(v93);

      dispatch thunk of PlaybackController.queueController.getter();

      PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)();
    }

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *v12;
    if (v21 >> 62)
    {
LABEL_60:
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34)
    {
      v93[0] = _swiftEmptyArrayStorage;

      sub_1001A7578(0, v34 & ~(v34 >> 63), 0);
      if (v34 < 0)
      {
        __break(1u);
        return;
      }

      v35 = 0;
      v36 = v93[0];
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v37 = *(v21 + 8 * v35 + 32);
        }

        v38 = v37;
        [v37 episodeStoreId];
        v39 = AdamID.init(rawValue:)();

        v93[0] = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1001A7578((v40 > 1), v41 + 1, 1);
          v36 = v93[0];
        }

        ++v35;
        *(v36 + 16) = v41 + 1;
        *(v36 + 8 * v41 + 32) = v39;
      }

      while (v34 != v35);
    }

    else
    {
    }

    v65 = v83;
    sub_100004428(v83 + 88, v93);
    sub_1000044A0(v93, v94);
    dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

    v66 = swift_allocObject();
    v67 = v84;
    v66[2] = v65;
    v66[3] = v67;
    v68 = v86;
    v69 = v87;
    v66[4] = v87;
    v66[5] = v68;
    v66[6] = v21;
    v70 = swift_allocObject();
    *(v70 + 16) = v69;
    *(v70 + 24) = v68;
    v71 = sub_10002BD04();
    sub_100013CB4(v69, v68);
    sub_100013CB4(v69, v68);

    v72 = static OS_dispatch_queue.main.getter();
    v91 = v71;
    v92 = &protocol witness table for OS_dispatch_queue;
    *&v90 = v72;
    Promise.then(perform:orCatchError:on:)();

    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v88 = type metadata accessor for EpisodeContextActionDataType.Reference;
    sub_1001C190C(v12, v8, type metadata accessor for EpisodeContextActionDataType.Reference);
    v42 = v83;
    sub_100004428(v83 + 88, v93);
    sub_1000044A0(v93, v94);
    sub_100168088(&unk_10057A0B0, &unk_100401C70);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100400790;
    *(v43 + 32) = *v8;

    dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

    sub_100004428(v42 + 48, &v90);
    v44 = *(v42 + 128);
    sub_100184658(&v90, v89);
    sub_1001C1974(v8, v6, type metadata accessor for EpisodeContextActionDataType.Reference);
    v45 = (*(v4 + 80) + 88) & ~*(v4 + 80);
    v46 = swift_allocObject();
    sub_100184658(v89, (v46 + 2));
    v48 = v86;
    v47 = v87;
    v46[7] = v84;
    v46[8] = v47;
    v46[9] = v48;
    v46[10] = v44;
    v49 = v46 + v45;
    v50 = v88;
    sub_1001C190C(v6, v49, v88);
    v51 = swift_allocObject();
    *(v51 + 16) = v47;
    *(v51 + 24) = v48;
    v52 = sub_10002BD04();
    sub_100013CB4(v47, v48);
    sub_100013CB4(v47, v48);

    v53 = static OS_dispatch_queue.main.getter();
    v91 = v52;
    v92 = &protocol witness table for OS_dispatch_queue;
    *&v90 = v53;
    Promise.then(perform:orCatchError:on:)();

    sub_1001C19DC(v8, v50);
    goto LABEL_54;
  }

  v18 = *v12;
  v19 = *v12 & 0xFFFFFFFFFFFFFF8;
  if (*v12 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *((*v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    goto LABEL_52;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    v88 = v22;
    v23 = v21;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v19 + 16))
        {
          goto LABEL_59;
        }

        v24 = *(v18 + 8 * v23 + 32);
      }

      v25 = v24;
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v26 = MPCPlayerResponseItem.podcastEpisode.getter();
      if (v26)
      {
        break;
      }

LABEL_13:
      ++v23;
      if (v21 == v20)
      {
        goto LABEL_52;
      }
    }

    v27 = v26;
    v28 = MPModelObject.adamID.getter();
    v30 = v29;

    if (v30)
    {
      goto LABEL_13;
    }

    v22 = v88;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1002433B0(0, *(v22 + 2) + 1, 1, v22);
    }

    v33 = *(v22 + 2);
    v32 = *(v22 + 3);
    if (v33 >= v32 >> 1)
    {
      v22 = sub_1002433B0((v32 > 1), v33 + 1, 1, v22);
    }

    *(v22 + 2) = v33 + 1;
    *&v22[8 * v33 + 32] = v28;
  }

  while (v21 != v20);
LABEL_52:
  v73 = v83;
  sub_100004428(v83 + 88, v93);
  sub_1000044A0(v93, v94);
  dispatch thunk of StoreDataProvider.fetchEpisodeOffers(with:)();

  v74 = swift_allocObject();
  v75 = v84;
  v74[2] = v73;
  v74[3] = v75;
  v76 = v86;
  v77 = v87;
  v74[4] = v87;
  v74[5] = v76;
  v74[6] = v18;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;
  *(v78 + 24) = v76;
  v79 = sub_10002BD04();
  sub_100013CB4(v77, v76);
  sub_100013CB4(v77, v76);

  v80 = static OS_dispatch_queue.main.getter();
  v91 = v79;
  v92 = &protocol witness table for OS_dispatch_queue;
  *&v90 = v80;
  Promise.then(perform:orCatchError:on:)();

LABEL_53:

LABEL_54:
  sub_100004590(&v90);
  sub_100004590(v93);
}

void sub_1001C04C4(unint64_t a1, unint64_t a2)
{
  if (!dispatch thunk of PlaybackController.QueueController.playbackController.getter() || (v3 = dispatch thunk of PlaybackController.nowPlayingItem.getter(), , !v3) || (MPModelObject.uuid.getter(), v5 = v4, v3, !v5))
  {
    if (!dispatch thunk of PlaybackController.QueueController.playbackController.getter())
    {
      return;
    }

    v20 = dispatch thunk of PlaybackController.nowPlayingItem.getter();

    if (!v20)
    {
      return;
    }

    MPModelObject.adamID.getter();
    v22 = v21;

    if (v22)
    {
      return;
    }

    if (a1 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = 0;
    v6 = a1 & 0xC000000000000001;
    v25 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v23 == v24)
      {
        PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
        goto LABEL_48;
      }

      if (v6)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v26 = *(a1 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v29 = IMPlayerItem.adamID.getter();
      v31 = v30;

      ++v24;
      if ((v31 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1002433B0(0, *(v25 + 2) + 1, 1, v25);
        }

        v33 = *(v25 + 2);
        v32 = *(v25 + 3);
        if (v33 >= v32 >> 1)
        {
          v25 = sub_1002433B0((v32 > 1), v33 + 1, 1, v25);
        }

        *(v25 + 2) = v33 + 1;
        *&v25[8 * v33 + 32] = v29;
        v24 = v28;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_47;
    }

    goto LABEL_6;
  }

  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_47;
  }

LABEL_6:
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  do
  {
    v10 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_43;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v13 = [v11 episodeUuid];
      if (v13)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_47;
      }
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v16;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100243134(0, *(v9 + 2) + 1, 1, v9);
    }

    v18 = *(v9 + 2);
    v17 = *(v9 + 3);
    if (v18 >= v17 >> 1)
    {
      v9 = sub_100243134((v17 > 1), v18 + 1, 1, v9);
    }

    *(v9 + 2) = v18 + 1;
    v19 = &v9[16 * v18];
    *(v19 + 4) = v15;
    *(v19 + 5) = v34;
  }

  while (v8 != v7);
LABEL_47:
  PlaybackController.QueueController.updatePlayerIfNeededForMarking(uuids:as:)();
LABEL_48:
}

uint64_t sub_1001C0830(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  sub_100004428(a2 + 48, v11);
  sub_1000044A0(v11, v11[3]);
  dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
  sub_100004590(v11);

  dispatch thunk of PlaybackController.queueController.getter();

  a7(a6, a3);
}

uint64_t sub_1001C0910(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  sub_1000044A0(a2, a2[3]);
  dispatch thunk of LibraryActionControllerProtocol.mark(episodeOffers:as:completion:)();
  dispatch thunk of PlaybackController.queueController.getter();
  sub_100168088(&unk_10057A0B0, &unk_100401C70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100400790;
  *(v8 + 32) = *a7;
  PlaybackController.QueueController.updatePlayerIfNeededForMarking(adamIDs:as:)();
}

uint64_t sub_1001C09F8()
{
  if (*(v0 + 32))
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0x80000001004672A0;
    v2 = 0xD00000000000001ALL;
    v3 = 0x8000000100467280;
    v4.super.isa = v1;
    v5 = 0;
    v6 = 0xE000000000000000;
    v7 = 0xD000000000000010;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v10 = 0xEE00646579616C50;
    v7 = 0x207361206B72614DLL;
    v2 = 0xD000000000000018;
    v3 = 0x80000001004672C0;
    v4.super.isa = v1;
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v4, *&v5, *&v7)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_1001C0B28(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Theme();
  v4 = static Theme.appTintColor.getter();
  v5 = *(v2 + 32);
  v6 = [objc_opt_self() mainBundle];
  if (v5)
  {
    v16 = 0xE800000000000000;
    v7 = 0x646579616C706E55;
    v8 = 0xD000000000000016;
    v9 = 0x8000000100467260;
    v10.super.isa = v6;
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v16 = 0xE000000000000000;
    v9 = 0x80000001004665A0;
    v8 = 0xD000000000000014;
    v10.super.isa = v6;
    v11 = 0;
    v12 = 0xE000000000000000;
    v7 = 0;
  }

  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v10, *&v11, *&v7);

  if (*(v2 + 32))
  {
    v14 = 0xD000000000000015;
  }

  else
  {
    v14 = 0xD000000000000019;
  }

  if (*(v2 + 32))
  {
    v15 = "$_playerController";
  }

  else
  {
    v15 = "rectangle.badge.minus";
  }

  *a1 = v4;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 | 0x8000000000000000;
  *(a1 + 24) = v13;
}

uint64_t sub_1001C0C7C()
{

  sub_100004590((v0 + 48));
  sub_100004590((v0 + 88));

  sub_1001C1B94(*(v0 + 136));

  return swift_deallocClassInstance();
}

unint64_t sub_1001C0D1C()
{
  result = qword_1005754B8;
  if (!qword_1005754B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005754B8);
  }

  return result;
}

unint64_t sub_1001C0D74()
{
  if (*(v0 + 32))
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1001C0DB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 104);
  v6 = &enum case for MetricsLabel.markEpisodeUnplayed(_:);
  if (!v3)
  {
    v6 = &enum case for MetricsLabel.markEpisodePlayed(_:);
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t sub_1001C0E34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = type metadata accessor for ContextActionType();
  v8 = *(v4 - 8);
  v5 = &enum case for ContextActionType.markUnplayed(_:);
  if (!v3)
  {
    v5 = &enum case for ContextActionType.markPlayed(_:);
  }

  (*(*(v4 - 8) + 104))(a1, *v5, v4);
  v6 = *(v8 + 56);

  return v6(a1, 0, 1, v4);
}

double sub_1001C0F28@<D0>(uint64_t a1@<X8>)
{
  sub_1001C0B28(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_1001C0F6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232E54(a1, a2, WitnessTable);
}

uint64_t sub_1001C0FCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001C102C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001C1090(uint64_t a1, uint64_t a2)
{
  result = sub_1001C18C4(&unk_1005821D0, a2, type metadata accessor for MarkEpisodeContextAction, &unk_10040293C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C10E8(uint64_t a1, uint64_t a2)
{
  result = sub_1001C18C4(&qword_1005754C0, a2, type metadata accessor for MarkEpisodeContextAction, &unk_100402994);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001C1140(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1001C1158(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t sub_1001C116C(uint64_t *a1)
{
  v3 = *(type metadata accessor for EpisodeContextActionDataType.Reference(0) - 8);
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = (v1 + ((*(v3 + 80) + 88) & ~*(v3 + 80)));

  return sub_1001C0910(a1, v1 + 2, v4, v5, v6, v7, v8);
}

uint64_t sub_1001C1200()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C1294()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void *sub_1001C12C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, char *), uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v5 = type metadata accessor for EpisodeOffer();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574E18, &qword_100402A10);
  __chkstk_darwin();
  v10 = (v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v43 = (v36 - v11);
  __chkstk_darwin();
  v44 = v36 - v12;
  __chkstk_darwin();
  v46 = v36 - v13;
  v40 = a1;
  v14 = *(a1 + 16);
  v54 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v45 = v6;
  v47 = v14;
  if (v14)
  {
    v15 = 0;
    v41 = (v6 + 56);
    v42 = v10;
    v38 = (v6 + 32);
    v39 = (v6 + 48);
    v36[2] = v6 + 16;
    v37 = (v6 + 8);
    v16 = v14;
    do
    {
      if (v15 == v14)
      {
        v17 = 1;
        v15 = v14;
        v18 = v42;
      }

      else
      {
        if (v15 >= v14)
        {
          goto LABEL_23;
        }

        (*(v6 + 16))(v43, v40 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v5);
        v19 = __OFADD__(v15++, 1);
        v18 = v42;
        if (v19)
        {
          goto LABEL_24;
        }

        v17 = 0;
      }

      v20 = v43;
      (*v41)(v43, v17, 1, v5);
      sub_1001C1B24(v20, v18);
      if ((*v39)(v18, 1, v5) == 1)
      {
        goto LABEL_25;
      }

      (*v38)(v8, v18, v5);
      v48(&v51, v8);
      (*v37)(v8, v5);
      v21 = v51;
      v22 = v52;
      v23 = v53;
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      sub_1001C1A4C(v21, v22, v23);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v16;
      v6 = v45;
      v14 = v47;
    }

    while (v16);
  }

  else
  {
    v15 = 0;
  }

  v39 = (v6 + 16);
  v24 = (v6 + 56);
  v25 = v6;
  v26 = (v6 + 48);
  v42 = (v25 + 32);
  v43 = v24;
  v41 = (v25 + 8);
  v27 = v15 >= v14;
  if (v15 != v14)
  {
    goto LABEL_14;
  }

LABEL_13:
  v28 = 1;
  v15 = v14;
  v29 = v44;
  while (1)
  {
    v30 = v46;
    (*v43)(v46, v28, 1, v5);
    sub_1001C1B24(v30, v29);
    if ((*v26)(v29, 1, v5) == 1)
    {
      return v54;
    }

    (*v42)(v8, v29, v5);
    v48(&v51, v8);
    (*v41)(v8, v5);
    v31 = v51;
    v32 = v52;
    v33 = v53;
    dispatch thunk of EpisodeStateController.stateMachine(for:)();
    v34 = v32;
    v14 = v47;
    sub_1001C1A4C(v31, v34, v33);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v27 = v15 >= v14;
    if (v15 == v14)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (v27)
    {
      break;
    }

    (*(v45 + 16))(v46, v40 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v15, v5);
    v19 = __OFADD__(v15++, 1);
    v29 = v44;
    if (v19)
    {
      goto LABEL_22;
    }

    v28 = 0;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
  return result;
}

void *sub_1001C17D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v2)
  {
    v3 = (a1 + 48);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v3 += 24;
      sub_1001C1A3C(v4, v5, v6);
      dispatch thunk of EpisodeStateController.stateMachine(for:)();
      sub_1001C1A4C(v4, v5, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}