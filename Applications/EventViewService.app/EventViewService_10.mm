double sub_100138E84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

uint64_t sub_100138EF0()
{
  v1 = v0;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preview Playback ended.", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
  if (os_unfair_lock_trylock((v6 + 24)))
  {
    v7 = *(v6 + 16);
    v8 = *(v7 + 24);
    os_unfair_lock_lock(v8 + 4);
    if (*(v7 + 16) == 0.0)
    {
      *(v7 + 16) = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v17 = v7;
      sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    os_unfair_lock_unlock(v8 + 4);
    os_unfair_lock_unlock((v6 + 24));
  }

  if (*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state))
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    *&v17 = v1;
    sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  *&v17 = v1;
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  if (v11)
  {
    timescale = kCMTimeZero.timescale;
    flags = kCMTimeZero.flags;
    epoch = kCMTimeZero.epoch;
    *&v17 = kCMTimeZero.value;
    *(&v17 + 1) = __PAIR64__(flags, timescale);
    *&v18 = epoch;
    v23 = epoch;
    value = kCMTimeZero.value;
    v25 = timescale;
    v26 = flags;
    v27 = epoch;
    v20 = kCMTimeZero.value;
    v21 = timescale;
    v22 = flags;
    [v11 seekToTime:&v17 toleranceBefore:&value toleranceAfter:&v20];
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = swift_getKeyPath();
  __chkstk_darwin(v15);
  value = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_1000050C4(&v17, &qword_1002224D8, &qword_1001B7440);
}

id sub_100139378(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs] = _swiftEmptyArrayStorage;
  v4 = &v2[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = &v2[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__playerTimeObserver];
  *v5 = 0u;
  v5[1] = 0u;
  *&v2[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player] = 0;
  v6 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock;
  type metadata accessor for PlaybackProgressUpdater(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_1000024C4(&qword_100229110, &qword_1001C0330);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 24) = v8;
  ObservationRegistrar.init()();
  sub_1000024C4(qword_100229118, &qword_1001C0338);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = v7;
  *&v2[v6] = v9;
  v2[OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state] = 0;
  ObservationRegistrar.init()();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_1001395D8(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1001396AC()
{
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100139758@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__currentSong;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a1, &qword_1002224D8, &qword_1001B7440);
}

double sub_100139830()
{
  v1 = *(*v0 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
  os_unfair_lock_lock((v1 + 24));
  sub_100137288((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_100139890()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state);
}

id sub_100139980()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return [*(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) pause];
}

double sub_100139A58@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 16);
  *a2 = result;
  return result;
}

void sub_100139B00(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100139C18()
{

  v1 = OBJC_IVAR____TtC16EventViewServiceP33_5445445A7553E6A0FDE4F6AA485860F723PlaybackProgressUpdater___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100139CE4(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100139D94(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100136E88(v1);
}

void sub_100139DCC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player);
  *(v1 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__player) = v2;
  v4 = v2;
}

double sub_100139EBC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

uint64_t sub_100139ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100139F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000024C4(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_100139F7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10013A048(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100026D04(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100012A7C(v11);
  return v7;
}

unint64_t sub_10013A048(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10013A154(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10013A154(uint64_t a1, unint64_t a2)
{
  v3 = sub_10013A1A0(a1, a2);
  sub_10013A2D0(&off_100211428);
  return v3;
}

void *sub_10013A1A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10013A3BC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10013A3BC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10013A2D0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10013A430(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10013A3BC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100229108, &unk_1001C02F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10013A430(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000024C4(&qword_100229108, &unk_1001C02F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10013A548()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_10013A614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for URL();
  v7 = *(v3 + 16);

  sub_100138900(a1, a2, a3, v7);
}

double sub_10013A6A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10013A6DC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__queuedSongs) = *(v0 + 24);
}

void sub_10013A720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (a1 == 1702125938 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (a4)
    {
      if (*(a4 + 16))
      {
        v6 = sub_1000FD098();
        if (v7)
        {
          sub_100026D04(*(a4 + 56) + 32 * v6, v25);
          if (swift_dynamicCast())
          {
            if (v24 != 0.0)
            {
              if (*(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) == 2)
              {
                return;
              }

              goto LABEL_39;
            }

            v8 = *(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer_lock);
            os_unfair_lock_lock((v8 + 24));
            v9 = *(v8 + 16);
            swift_getKeyPath();
            v25[0] = v9;
            sub_100139ECC(&qword_1002290F8, type metadata accessor for PlaybackProgressUpdater, &unk_1001C01D8);
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v10 = *(v9 + 16);
            v11 = 1.0;
            if (v10 <= 1.0)
            {
              v12 = *(v9 + 16);
            }

            else
            {
              v12 = 1.0;
            }

            os_unfair_lock_unlock((v8 + 24));
            v14 = (*&v10 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&v10 & 0x7FF0000000000000) == 0 || v10 < 0.0;
            v15 = v12;
            if (v14)
            {
              v15 = 0.0;
            }

            v16 = ~*&v15 & 0x7FF0000000000000;
            v17 = *&v15 & 0xFFFFFFFFFFFFFLL;
            if (v16)
            {
              v18 = 1;
            }

            else
            {
              v18 = v17 == 0;
            }

            if (v18)
            {
              os_unfair_lock_lock((v8 + 24));
              v19 = *(v8 + 16);
              swift_getKeyPath();
              v25[0] = v19;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v20 = *(v19 + 16);
              v21 = (*&v20 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v20 & 0x7FF0000000000000) != 0;
              if (v20 <= 1.0)
              {
                v11 = *(v19 + 16);
              }

              os_unfair_lock_unlock((v8 + 24));
              v22 = v20 < 0.0 || !v21;
              if (!v22 && v11 > 0.0 && *(v4 + OBJC_IVAR____TtC16EventViewService18MusicPreviewPlayer__state) != 3)
              {
LABEL_39:
                KeyPath = swift_getKeyPath();
                __chkstk_darwin(KeyPath);
                v25[0] = v4;
                sub_100139ECC(&qword_1002290F0, type metadata accessor for MusicPreviewPlayer, &unk_1001C01F4);
                ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10013ABB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = *a5;
  v9 = *a6;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v12.val[0] = *(v8 + 80);
  v12.val[1] = *(v9 + 80);
  v14 = 0;
  State.init(wrappedValue:)();
  v10 = v13[1];
  *(a7 + 32) = LOBYTE(v13[0]) & 1;
  *(a7 + 40) = v10;
  v15 = v12;
  vst2q_f64(v13, v15);
  type metadata accessor for PhoneWallpapersWatchFacesView(0, v13);
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  swift_getWitnessTable();
  return Bindable<A>.init(wrappedValue:)();
}

uint64_t sub_10013AD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PhoneWallpaperViewModel(255, *(a1 + 16), *(a1 + 32), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

void sub_10013ADE4(void *a1)
{
  sub_10013B1D8(319, qword_100226B30, &type metadata for String, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    sub_10013B1D8(319, &qword_1002291A0, &type metadata for PhoneWallpapersWatchFacesConfiguration, &type metadata accessor for State);
    if (v4 <= 0x3F)
    {
      type metadata accessor for PhoneWallpaperViewModel(255, a1[2], a1[4], v3);
      type metadata accessor for Bindable();
      if (v6 <= 0x3F)
      {
        type metadata accessor for WatchFacesViewModel(255, a1[3], a1[5], v5);
        type metadata accessor for Bindable();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10013AF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel(255, *(a3 + 16), *(a3 + 32), a4);
    v9 = type metadata accessor for Bindable();
    v11 = *(v9 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v9;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 60);

      return v13(v14, a2, v12);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel(255, *(a3 + 24), *(a3 + 40), v10);
      v15 = type metadata accessor for Bindable();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 64);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_10013B08C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for PhoneWallpaperViewModel(255, *(a4 + 16), *(a4 + 32), a4);
    v8 = type metadata accessor for Bindable();
    v10 = *(v8 - 8);
    if (*(v10 + 84) == a3)
    {
      v11 = v8;
      v12 = *(v10 + 56);
      v13 = v5 + *(a4 + 60);

      return v12(v13, a2, a2, v11);
    }

    else
    {
      type metadata accessor for WatchFacesViewModel(255, *(a4 + 24), *(a4 + 40), v9);
      v14 = type metadata accessor for Bindable();
      v15 = *(*(v14 - 8) + 56);
      v16 = v5 + *(a4 + 64);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

void sub_10013B1D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10013B22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002291A8;
  if (!qword_1002291A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002291A8);
  }

  return result;
}

uint64_t sub_10013B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WatchFacesViewModel(255, *(a1 + 24), *(a1 + 40), a4);
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v5;
}

uint64_t sub_10013B2D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v31 = a2;
  v4 = a1[4];
  v27 = a1[2];
  v28 = v4;
  type metadata accessor for PhoneWallpaperView(255, v27, v4, a3);
  v5 = a1[3];
  v6 = a1[5];
  type metadata accessor for WatchFacesView(255, v5, v6, v7);
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v8 = type metadata accessor for VStack();
  v29 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  sub_10000460C(&qword_1002291B0, &qword_1001C0478);
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  *&v18 = v27;
  *&v19 = v28;
  *(&v18 + 1) = v5;
  *(&v19 + 1) = v6;
  v32 = v18;
  v33 = v19;
  v34 = v30;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  sub_1000421E8(WitnessTable, v21, v22);
  View.background<A>(_:alignment:)();
  (*(v29 + 8))(v10, v8);
  v23 = sub_10000BFFC(&qword_1002291B8, &qword_1002291B0, &qword_1001C0478, &protocol conformance descriptor for _BackgroundModifier<A>);
  v35 = WitnessTable;
  v36 = v23;
  swift_getWitnessTable();
  sub_1000EE87C();
  v24 = *(v12 + 8);
  v24(v15, v11);
  sub_1000EE87C();
  return (v24)(v17, v11);
}

uint64_t sub_10013B644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a6;
  v11 = type metadata accessor for Optional();
  __chkstk_darwin(v11 - 8);
  v82 = &v78 - v12;
  v91 = a3;
  *(&v88 + 1) = a5;
  v14 = type metadata accessor for WatchFacesView(0, a3, a5, v13);
  v85 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v84 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v83 = &v78 - v17;
  v18 = type metadata accessor for Optional();
  __chkstk_darwin(v18 - 8);
  v78 = &v78 - v19;
  v89 = a2;
  *&v88 = a4;
  v21 = type metadata accessor for PhoneWallpaperView(0, a2, a4, v20);
  v81 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v80 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v79 = &v78 - v24;
  v93 = v25;
  v97 = v14;
  v26 = type metadata accessor for _ConditionalContent();
  v95 = *(v26 - 8);
  v96 = v26;
  v27 = __chkstk_darwin(v26);
  v94 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v92 = &v78 - v29;
  v30 = *a1;
  v31 = a1[1];
  v32 = a1[3];
  v86 = a1[2];
  v87 = v30;
  LOBYTE(a4) = *(a1 + 32);
  v90 = a1;
  v33 = a1[5];
  LOBYTE(v110) = a4;
  *(&v110 + 1) = v33;

  sub_1000024C4(&qword_1002291C0, &qword_1001C0480);
  State.projectedValue.getter();
  v34 = v115;
  v35 = v116;
  type metadata accessor for RemoteViewConfiguration();
  sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  v36 = EnvironmentObject.init()();
  *&v115 = v87;
  *(&v115 + 1) = v31;
  *&v116 = v86;
  *(&v116 + 1) = v32;
  v117 = v34;
  LOBYTE(v118) = v35;
  *(&v118 + 1) = v36;
  v119 = v37;
  LOBYTE(v110) = a4;
  *(&v110 + 1) = v33;
  State.wrappedValue.getter();
  if (v104)
  {
    v38 = v91;
    *&v110 = v89;
    *(&v110 + 1) = v91;
    v111 = v88;
    v39 = type metadata accessor for PhoneWallpapersWatchFacesView(0, &v110);
    v43 = sub_10013B280(v39, v40, v41, v42);
    v44 = v82;
    (*(*(v38 - 8) + 56))(v82, 1, 1, v38);
    v45 = v84;
    sub_100041B30(v43, v44, v84);
    v46 = v97;
    WitnessTable = swift_getWitnessTable();
    v48 = v83;
    sub_1000EE87C();
    v49 = *(v85 + 8);
    v49(v45, v46);
    sub_1000EE87C();
    v50 = v93;
    v51 = swift_getWitnessTable();
    v52 = v92;
    sub_100173974(v45, v50, v46, v51, WitnessTable);
    v49(v45, v46);
    v53 = v48;
    v54 = v46;
  }

  else
  {
    v55 = v89;
    *&v110 = v89;
    *(&v110 + 1) = v91;
    v111 = v88;
    v56 = type metadata accessor for PhoneWallpapersWatchFacesView(0, &v110);
    v60 = sub_10013AD80(v56, v57, v58, v59);
    v61 = v78;
    (*(*(v55 - 8) + 56))(v78, 1, 1, v55);
    v62 = v80;
    sub_10019F288(v60, v61, v80);
    v63 = v93;
    v64 = swift_getWitnessTable();
    v65 = v79;
    sub_1000EE87C();
    v49 = *(v81 + 8);
    v49(v62, v63);
    sub_1000EE87C();
    v66 = v97;
    v67 = swift_getWitnessTable();
    v52 = v92;
    sub_10017387C(v62, v63, v66, v64, v67);
    v49(v62, v63);
    v53 = v65;
    v54 = v63;
  }

  v49(v53, v54);
  v106 = v117;
  v107 = v118;
  v108 = v119;
  v104 = v115;
  v105 = v116;
  v109[0] = &v104;
  v69 = v94;
  v68 = v95;
  v70 = v96;
  (*(v95 + 16))(v94, v52, v96);
  v109[1] = v69;
  v71 = sub_10013E24C(&v115, &v110);
  v103[0] = &type metadata for PhoneWallpapersWatchFacesHeader;
  v103[1] = v70;
  v101 = sub_10013E284(v71, v72, v73);
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v99 = v74;
  v100 = v75;
  v102 = swift_getWitnessTable();
  sub_1000E76FC(v109, 2uLL, v103);
  sub_10013E2D8(&v115);
  v76 = *(v68 + 8);
  v76(v52, v70);
  v76(v69, v70);
  v112 = v106;
  v113 = v107;
  v114 = v108;
  v110 = v104;
  v111 = v105;
  return sub_10013E2D8(&v110);
}

uint64_t sub_10013BDF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000024C4(&qword_1002291D0, &qword_1001C0540);
  __chkstk_darwin(v3 - 8);
  v5 = v54 - v4;
  v6 = sub_1000024C4(&qword_1002291D8, &qword_1001C0548);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v54 - v8;
  v10 = sub_1000024C4(&qword_1002291E0, &qword_1001C0550);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v54 - v12;
  v14 = sub_1000024C4(&qword_1002291E8, &qword_1001C0558);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = v54 - v16;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v18 = sub_1000024C4(&qword_1002291F0, &qword_1001C0560);
  sub_10013C164(v1, &v5[*(v18 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v5, v9, &qword_1002291D0, &qword_1001C0540);
  v19 = &v9[*(v7 + 44)];
  v20 = v54[5];
  *(v19 + 4) = v54[4];
  *(v19 + 5) = v20;
  *(v19 + 6) = v54[6];
  v21 = v54[1];
  *v19 = v54[0];
  *(v19 + 1) = v21;
  v22 = v54[3];
  *(v19 + 2) = v54[2];
  *(v19 + 3) = v22;
  v23 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10001AE00(v9, v13, &qword_1002291D8, &qword_1001C0548);
  v32 = &v13[*(v11 + 44)];
  *v32 = v23;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  v33 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_10001AE00(v13, v17, &qword_1002291E0, &qword_1001C0550);
  v42 = &v17[*(v15 + 44)];
  *v42 = v33;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  v43 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_10001AE00(v17, a1, &qword_1002291E8, &qword_1001C0558);
  result = sub_1000024C4(&qword_1002291F8, &qword_1001C0568);
  v53 = a1 + *(result + 36);
  *v53 = v43;
  *(v53 + 8) = v45;
  *(v53 + 16) = v47;
  *(v53 + 24) = v49;
  *(v53 + 32) = v51;
  *(v53 + 40) = 0;
  return result;
}

uint64_t sub_10013C164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_1000024C4(&qword_100229200, &unk_1001C0570);
  v3 = __chkstk_darwin(v73);
  v77 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v75 = (&v66 - v5);
  v6 = sub_1000024C4(&qword_1002230C8, &qword_1001B6DF8);
  v72 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v66 - v7;
  v8 = sub_1000024C4(&qword_100229208, &qword_1001C0580);
  v9 = __chkstk_darwin(v8 - 8);
  v74 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v66 - v11;
  v105 = *(a1 + 32);
  v106 = *(a1 + 48);
  v93 = *(a1 + 32);
  LOBYTE(v94) = *(a1 + 48);
  v70 = sub_1000024C4(&qword_100229210, &qword_1001C0588);
  Binding.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v13 = Text.init(_:tableName:bundle:comment:)();
  v15 = v14;
  v17 = v16;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v18 = Text.font(_:)();
  v81 = v19;
  v82 = v18;
  v21 = v20;
  v83 = v22;

  sub_100017398(v13, v15, v17 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  v78 = v21 & 1;
  v104 = v21 & 1;
  v102 = 0;
  v23 = *(a1 + 24);
  if (v23)
  {
    v67 = v6;
    v68 = a1;
    v69 = v12;
    v24 = *(a1 + 16);
    v93 = v105;
    LOBYTE(v94) = v106;
    Binding.wrappedValue.getter();
    sub_10013C99C(v24, v23, v84);
    v25 = Text.init(_:tableName:bundle:comment:)();
    v27 = v26;
    v29 = v28;
    static Font.subheadline.getter();
    static Font.Weight.regular.getter();
    Font.weight(_:)();

    v30 = Text.font(_:)();
    v32 = v31;
    v34 = v33;

    sub_100017398(v25, v27, v29 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v93 = qword_1002390B8;

    v35 = Text.foregroundStyle<A>(_:)();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_100017398(v30, v32, v34 & 1);

    v42 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v39 &= 1u;
    LOBYTE(v93) = v39;
    LOBYTE(v84) = 0;
    v44 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v92 = 0;
    *&v84 = v35;
    *(&v84 + 1) = v37;
    LOBYTE(v85) = v39;
    *(&v85 + 1) = v41;
    *&v86 = v42;
    *(&v86 + 1) = 2;
    LOBYTE(v87) = 0;
    *(&v87 + 1) = v43;
    LOBYTE(v88) = 0;
    BYTE8(v88) = v44;
    *&v89 = v45;
    *(&v89 + 1) = v46;
    *&v90 = v47;
    *(&v90 + 1) = v48;
    v91 = 0;
    sub_1000024C4(&qword_1002230E8, &unk_1001B6E80);
    sub_10013EB1C(&qword_1002230F0, &qword_1002230E8, &unk_1001B6E80, sub_1000555E4);
    v49 = v71;
    View.accessibilityIdentifier(_:)();
    v97 = v88;
    v98 = v89;
    v99 = v90;
    v100 = v91;
    v93 = v84;
    v94 = v85;
    v95 = v86;
    v96 = v87;
    sub_1000050C4(&v93, &qword_1002230E8, &unk_1001B6E80);
    v12 = v69;
    sub_10001AE00(v49, v69, &qword_1002230C8, &qword_1001B6DF8);
    (*(v72 + 56))(v12, 0, 1, v67);
    a1 = v68;
  }

  else
  {
    (*(v72 + 56))(v12, 1, 1, v6);
  }

  v50 = static VerticalAlignment.center.getter();
  v51 = v75;
  *v75 = v50;
  *(v51 + 8) = 0x4020000000000000;
  *(v51 + 16) = 0;
  v52 = sub_1000024C4(&qword_100229218, &qword_1001C05F0);
  sub_10013CA94(a1, (v51 + *(v52 + 44)));
  v53 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v54 = v74;
  v55 = v51 + *(v73 + 36);
  *v55 = v53;
  *(v55 + 8) = v56;
  *(v55 + 16) = v57;
  *(v55 + 24) = v58;
  *(v55 + 32) = v59;
  *(v55 + 40) = 0;
  sub_10000BEB8(v12, v54, &qword_100229208, &qword_1001C0580);
  v60 = v77;
  sub_10013E49C(v51, v77);
  *&v84 = v82;
  *(&v84 + 1) = v81;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = *v103;
  DWORD1(v85) = *&v103[3];
  *(&v85 + 1) = v83;
  *&v86 = KeyPath;
  *(&v86 + 1) = 2;
  LOBYTE(v87) = 0;
  *(&v87 + 1) = *v101;
  DWORD1(v87) = *&v101[3];
  *(&v87 + 1) = v79;
  LOBYTE(v88) = 0;
  v61 = v76;
  *(v76 + 64) = 0;
  v62 = v85;
  *v61 = v84;
  v61[1] = v62;
  v63 = v87;
  v61[2] = v86;
  v61[3] = v63;
  v64 = sub_1000024C4(&qword_100229220, &qword_1001C05F8);
  sub_10000BEB8(v54, v61 + *(v64 + 48), &qword_100229208, &qword_1001C0580);
  sub_10013E49C(v60, v61 + *(v64 + 64));
  sub_10000BEB8(&v84, &v93, &qword_100223100, &qword_1001C0600);
  sub_10013E50C(v51);
  sub_1000050C4(v12, &qword_100229208, &qword_1001C0580);
  sub_10013E50C(v60);
  sub_1000050C4(v54, &qword_100229208, &qword_1001C0580);
  *&v93 = v82;
  *(&v93 + 1) = v81;
  LOBYTE(v94) = v78;
  *(&v94 + 1) = *v103;
  DWORD1(v94) = *&v103[3];
  *(&v94 + 1) = v83;
  *&v95 = KeyPath;
  *(&v95 + 1) = 2;
  LOBYTE(v96) = 0;
  *(&v96 + 1) = *v101;
  DWORD1(v96) = *&v101[3];
  *(&v96 + 1) = v79;
  LOBYTE(v97) = 0;
  return sub_1000050C4(&v93, &qword_100223100, &qword_1001C0600);
}

uint64_t sub_10013C99C(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a3)
  {
    v7 = "ICE_PHONEWALLPAPER_HEADER";
  }

  else
  {
    v7 = "ICE_WATCHFACES_SUBHEADER ";
  }

  if (a3)
  {
    v8 = 0xD000000000000029;
  }

  else
  {
    v8 = 0xD00000000000002DLL;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._object = (v7 | 0x8000000000000000);
  v9._countAndFlagsBits = v8;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = a1;
  v10._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  return LocalizedStringKey.init(stringInterpolation:)();
}

uint64_t sub_10013CA94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v46 = sub_1000024C4(&qword_100229228, &qword_1001C0608);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v40 - v3;
  v47 = sub_1000024C4(&qword_100229230, &qword_1001C0610);
  v45 = *(v47 - 8);
  v4 = __chkstk_darwin(v47);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v51 = &v40 - v6;
  v7 = type metadata accessor for PlainButtonStyle();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100229238, &qword_1001C0618);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - v12;
  v42 = sub_1000024C4(&qword_100229240, &qword_1001C0620);
  v52 = *(v42 - 8);
  v14 = __chkstk_darwin(v42);
  v41 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = &v40 - v16;
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 48) = *(a1 + 32);
  *(v17 + 64) = v18;
  *(v17 + 80) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 16) = *a1;
  *(v17 + 32) = v19;
  v55 = a1;
  sub_10013E24C(a1, v56);
  sub_1000024C4(&qword_100229248, &qword_1001C0628);
  sub_10013E588();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100229298, &qword_100229238, &qword_1001C0618, &protocol conformance descriptor for Button<A>);
  sub_10013E810(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  View.buttonStyle<A>(_:)();
  v20 = *(v53 + 8);
  v53 += 8;
  v20(v9, v7);
  (*(v11 + 8))(v13, v10);
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  v54 = a1;
  sub_10013E24C(a1, v56);
  sub_1000024C4(&qword_1002292A0, &qword_1001C0658);
  sub_10013E8C0();
  v24 = v43;
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_1002292C0, &qword_100229228, &qword_1001C0608, &protocol conformance descriptor for Button<A>);
  v25 = v51;
  v26 = v46;
  View.buttonStyle<A>(_:)();
  v20(v9, v7);
  (*(v48 + 8))(v24, v26);
  v27 = *(v52 + 16);
  v28 = v41;
  v29 = v42;
  v27(v41, v50, v42);
  v30 = v45;
  v31 = *(v45 + 16);
  v32 = v44;
  v33 = v25;
  v34 = v47;
  v31(v44, v33, v47);
  v35 = v49;
  v27(v49, v28, v29);
  v36 = sub_1000024C4(&qword_1002292C8, &qword_1001C0668);
  v31(&v35[*(v36 + 48)], v32, v34);
  v37 = *(v30 + 8);
  v37(v51, v34);
  v38 = *(v52 + 8);
  v38(v50, v29);
  v37(v32, v34);
  return (v38)(v28, v29);
}

void sub_10013D18C(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 0;
  sub_1000024C4(&qword_100229210, &qword_1001C0588);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_1000024C4(&qword_100221508, &qword_1001B5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = xmmword_1001C0340;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100020764(&v12, v13);

    v7 = sub_1001894F4(1, 5, 1, inited);
    v11 = v7;
    sub_100006C98(&aBlock, v13);
    sub_100118768(4, v13, &v11, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001C4640;
    v9[4] = v7;
    v17 = sub_100026FEC;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_10015B4A4;
    v16 = &unk_100218830;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_10013D4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_1000024C4(&qword_100229270, &qword_1001C0638);
  __chkstk_darwin(v3 - 8);
  v72 = &v66 - v4;
  v71 = sub_1000024C4(&qword_100229260, &qword_1001C0630);
  __chkstk_darwin(v71);
  v73 = &v66 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v68 = v12;
  v69 = v13;
  v15 = v14;

  sub_100017398(v6, v8, v10 & 1);

  v107 = *(a1 + 32);
  v108 = *(a1 + 48);
  v89 = *(a1 + 32);
  LOBYTE(v90) = *(a1 + 48);
  v70 = sub_1000024C4(&qword_100229210, &qword_1001C0588);
  Binding.wrappedValue.getter();
  if (v76)
  {
    v16 = static Color.primary.getter();
  }

  else
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v16 = qword_1002390A8;
  }

  *&v89 = v16;
  v17 = v68;
  v67 = Text.foregroundStyle<A>(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100017398(v11, v17, v15 & 1);

  KeyPath = swift_getKeyPath();
  v25 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v21 & 1;
  v104 = v21 & 1;
  v103 = 0;
  v102 = 0;
  v35 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v105 = 0;
  v44 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v106 = 0;
  *&v76 = v67;
  *(&v76 + 1) = v19;
  LOBYTE(v77) = v34;
  *(&v77 + 1) = v23;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  BYTE8(v79) = v25;
  *&v80 = v27;
  *(&v80 + 1) = v29;
  *&v81 = v31;
  *(&v81 + 1) = v33;
  LOBYTE(v82) = 0;
  BYTE8(v82) = v35;
  *&v83 = v37;
  *(&v83 + 1) = v39;
  *&v84 = v41;
  *(&v84 + 1) = v43;
  LOBYTE(v85) = 0;
  BYTE8(v85) = v44;
  *&v86 = v45;
  *(&v86 + 1) = v46;
  *&v87 = v47;
  *(&v87 + 1) = v48;
  v88 = 0;
  sub_1000024C4(&qword_100229280, &qword_1001C0640);
  sub_10013EB1C(&qword_100229278, &qword_100229280, &qword_1001C0640, sub_10013E7E0);
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v95 = v82;
  v96 = v83;
  v97 = v84;
  v98 = v85;
  v91 = v78;
  v92 = v79;
  v93 = v80;
  v94 = v81;
  v89 = v76;
  v90 = v77;
  sub_1000050C4(&v89, &qword_100229280, &qword_1001C0640);
  v76 = v107;
  LOBYTE(v77) = v108;
  Binding.wrappedValue.getter();
  if (v75)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v50 = qword_1002390A8;
  }

  else
  {
    v50 = static Color.primary.getter();
  }

  v51 = static Edge.Set.all.getter();
  v52 = v73;
  sub_10001AE00(v49, v73, &qword_100229270, &qword_1001C0638);
  v53 = v52 + *(v71 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  v54 = sub_1000024C4(&qword_100229248, &qword_1001C0628);
  v55 = v74;
  v56 = (v74 + *(v54 + 36));
  v57 = *(type metadata accessor for RoundedRectangle() + 20);
  v58 = enum case for RoundedCornerStyle.continuous(_:);
  v59 = type metadata accessor for RoundedCornerStyle();
  (*(*(v59 - 8) + 104))(&v56[v57], v58, v59);
  __asm { FMOV            V0.2D, #16.0 }

  *v56 = _Q0;
  *&v56[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  return sub_10001AE00(v52, v55, &qword_100229260, &qword_1001C0630);
}

void sub_10013DA70(__int128 *a1)
{
  aBlock = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v13[0] = 1;
  sub_1000024C4(&qword_100229210, &qword_1001C0588);
  Binding.wrappedValue.setter();
  v2 = *(a1 + 7);
  if (v2)
  {
    v12 = *a1;
    sub_1000024C4(&qword_100221508, &qword_1001B5C20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B60;
    v4 = v12;
    *(inited + 56) = &type metadata for AnalyticsString;
    *(inited + 64) = &off_100228B70;
    *(inited + 32) = 0;
    *(inited + 40) = v4;
    *(inited + 96) = &type metadata for AnalyticsPageName;
    *(inited + 104) = &off_100228B48;
    *(inited + 72) = 13;
    *(inited + 136) = &type metadata for AnalyticsModuleName;
    *(inited + 144) = &off_100228BD0;
    *(inited + 112) = 12;
    *(inited + 176) = &type metadata for AnalyticsModuleAction;
    *(inited + 184) = &off_100228BA8;
    *(inited + 152) = xmmword_1001C0350;
    *(inited + 168) = 3;
    if (*(v2 + 72))
    {
      v5 = *(v2 + 64);
      v6 = *(v2 + 72);
    }

    else
    {
      v5 = 0;
      v6 = 0xE000000000000000;
    }

    LOBYTE(aBlock) = 1;
    *(&aBlock + 1) = v5;
    v15 = v6;

    sub_100020764(&v12, v13);

    v7 = sub_1001894F4(1, 5, 1, inited);
    v11 = v7;
    sub_100006C98(&aBlock, v13);
    sub_100118768(4, v13, &v11, &type metadata for AnalyticsString, &off_100228B70);
    sub_100006CF4(&aBlock);
    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    v9[2] = 0xD00000000000001ELL;
    v9[3] = 0x80000001001C4640;
    v9[4] = v7;
    v17 = sub_100006D88;
    v18 = v9;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v15 = sub_10015B4A4;
    v16 = &unk_1002187E0;
    v10 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();

    _Block_release(v10);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10013E810(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double sub_10013DD98@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_100017398(v3, v5, v7 & 1);

  sub_1000024C4(&qword_100229210, &qword_1001C0588);
  Binding.wrappedValue.getter();
  if (v63 == 1)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }
  }

  else
  {
    static Color.primary.getter();
  }

  v13 = Text.foregroundStyle<A>(_:)();
  v60 = v14;
  v61 = v13;
  v16 = v15;
  v59 = v17;
  sub_100017398(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v58 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v56 = v20;
  v57 = v19;
  v54 = v22;
  v55 = v21;
  v23 = v16 & 1;
  v24 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  Binding.wrappedValue.getter();
  if (v62 == 1)
  {
    v42 = static Color.primary.getter();
  }

  else
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v42 = qword_1002390A8;
  }

  v43 = static Edge.Set.all.getter();
  v44 = (a2 + *(sub_1000024C4(&qword_1002292A0, &qword_1001C0658) + 36));
  v45 = *(type metadata accessor for RoundedRectangle() + 20);
  v46 = enum case for RoundedCornerStyle.continuous(_:);
  v47 = type metadata accessor for RoundedCornerStyle();
  (*(*(v47 - 8) + 104))(&v44[v45], v46, v47);
  __asm { FMOV            V0.2D, #16.0 }

  *v44 = _Q0;
  *&v44[*(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)] = 256;
  *a2 = v61;
  *(a2 + 8) = v60;
  *(a2 + 16) = v23;
  *(a2 + 24) = v59;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = v58;
  *(a2 + 64) = v57;
  *(a2 + 72) = v56;
  result = v54;
  *(a2 + 80) = v55;
  *(a2 + 88) = v54;
  *(a2 + 96) = 0;
  *(a2 + 104) = v24;
  *(a2 + 112) = v26;
  *(a2 + 120) = v28;
  *(a2 + 128) = v30;
  *(a2 + 136) = v32;
  *(a2 + 144) = 0;
  *(a2 + 152) = v33;
  *(a2 + 160) = v35;
  *(a2 + 168) = v37;
  *(a2 + 176) = v39;
  *(a2 + 184) = v41;
  *(a2 + 192) = 0;
  *(a2 + 200) = v42;
  *(a2 + 208) = v43;
  return result;
}

unint64_t sub_10013E284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002291C8;
  if (!qword_1002291C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002291C8);
  }

  return result;
}

uint64_t sub_10013E318(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  type metadata accessor for PhoneWallpaperView(255, *a1, a1[2], a4);
  type metadata accessor for WatchFacesView(255, v4, v5, v6);
  type metadata accessor for _ConditionalContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002291B0, &qword_1001C0478);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_1002291B8, &qword_1002291B0, &qword_1001C0478, &protocol conformance descriptor for _BackgroundModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_10013E49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229200, &unk_1001C0570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10013E50C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100229200, &unk_1001C0570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013E588()
{
  result = qword_100229250;
  if (!qword_100229250)
  {
    sub_10000460C(&qword_100229248, &qword_1001C0628);
    sub_10013E640();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229250);
  }

  return result;
}

unint64_t sub_10013E640()
{
  result = qword_100229258;
  if (!qword_100229258)
  {
    sub_10000460C(&qword_100229260, &qword_1001C0630);
    sub_10013E6F8();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229258);
  }

  return result;
}

unint64_t sub_10013E6F8()
{
  result = qword_100229268;
  if (!qword_100229268)
  {
    sub_10000460C(&qword_100229270, &qword_1001C0638);
    sub_10013EB1C(&qword_100229278, &qword_100229280, &qword_1001C0640, sub_10013E7E0);
    sub_10013E810(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229268);
  }

  return result;
}

uint64_t sub_10013E810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013E858()
{

  return swift_deallocObject();
}

unint64_t sub_10013E8C0()
{
  result = qword_1002292A8;
  if (!qword_1002292A8)
  {
    sub_10000460C(&qword_1002292A0, &qword_1001C0658);
    sub_10013E978();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292A8);
  }

  return result;
}

unint64_t sub_10013E978()
{
  result = qword_1002292B0;
  if (!qword_1002292B0)
  {
    sub_10000460C(&qword_1002292B8, &qword_1001C0660);
    sub_10013EB1C(&qword_100229278, &qword_100229280, &qword_1001C0640, sub_10013E7E0);
    sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292B0);
  }

  return result;
}

double sub_10013EA60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10013EB1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10013EBA0()
{
  result = qword_1002292E8;
  if (!qword_1002292E8)
  {
    sub_10000460C(&qword_1002291D8, &qword_1001C0548);
    sub_10000BFFC(&qword_1002292F0, &qword_1002291D0, &qword_1001C0540, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002292E8);
  }

  return result;
}

uint64_t sub_10013EC68()
{
  v0 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1];
  if (qword_100220C20 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100239150 + 16);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  swift_getKeyPath();
  *&v16 = v4;
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_10000BEB8(v4 + v5, v2, &qword_1002293B8, &qword_1001C06D0);
  os_unfair_lock_unlock((v3 + 24));
  v6 = type metadata accessor for MusicSubscription();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v2, 1, v6) == 1)
  {
    sub_1000050C4(v2, &qword_1002293B8, &qword_1001C06D0);

LABEL_7:
    v9 = type metadata accessor for MusicPreviewPlayer(0);
    v11 = [objc_allocWithZone(v9) init];
    v12 = &off_100218550;
    goto LABEL_8;
  }

  v8 = MusicSubscription.canPlayCatalogContent.getter();
  (*(v7 + 8))(v2, v6);

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = type metadata accessor for AppleMusicPlayer(0);
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 0u;
  *(v10 + 49) = 0u;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  *(v10 + 72) = 0;
  ObservationRegistrar.init()();
  v11 = v10;
  v12 = &off_10021A000;
LABEL_8:
  v17 = v9;
  v18 = v12;
  *&v16 = v11;
  type metadata accessor for PlaybackController(0);
  v13 = swift_allocObject();
  ObservationRegistrar.init()();
  result = sub_10002FF68(&v16, v13 + 16);
  qword_100239130 = v13;
  return result;
}

uint64_t sub_10013EF2C()
{
  v1 = v0;
  sub_10002FF80(v0 + 16, v7);
  v2 = v8;
  v3 = v9;
  sub_10001BED0(v7, v8);
  (*(v3 + 80))(v2, v3);
  sub_100012A7C(v7);
  sub_100012A7C((v0 + 16));
  v4 = OBJC_IVAR____TtC16EventViewService18PlaybackController___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v1 + v4, v5);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlaybackController(uint64_t a1)
{
  result = qword_100229328;
  if (!qword_100229328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F070(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_10013F10C(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1 + 4;
    sub_10001BED0(a1 + 4, a1[7]);
    *(&v86 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_10005EC40(&v85);
    dispatch thunk of Identifiable.id.getter();
    sub_10002FF68(&v85, v88);
    v82[0] = _swiftEmptyArrayStorage;
    sub_100195824(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      sub_10002FF80(v2, &v85);
      v4 = *(&v86 + 1);
      v5 = AssociatedConformanceWitness;
      sub_10001BED0(&v85, *(&v86 + 1));
      v6 = (*(v5 + 88))(v4, v5);
      v8 = v7;
      sub_100012A7C(&v85);
      v82[0] = v3;
      v10 = v3[2];
      v9 = v3[3];
      if (v10 >= v9 >> 1)
      {
        sub_100195824((v9 > 1), v10 + 1, 1);
        v3 = v82[0];
      }

      v3[2] = v10 + 1;
      v11 = &v3[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v2 += 5;
      --v1;
    }

    while (v1);
    isa = oslog[5].isa;
    v13 = oslog[6].isa;
    sub_10001BED0(&oslog[2].isa, isa);
    v14 = (*(v13 + 1))(isa, v13);
    v15 = *(v14 + 16);
    if (v15)
    {
      v82[0] = _swiftEmptyArrayStorage;
      sub_100195824(0, v15, 0);
      v16 = _swiftEmptyArrayStorage;
      v17 = v14 + 32;
      do
      {
        sub_10002FF80(v17, &v85);
        v18 = *(&v86 + 1);
        v19 = AssociatedConformanceWitness;
        sub_10001BED0(&v85, *(&v86 + 1));
        v20 = (*(v19 + 88))(v18, v19);
        v22 = v21;
        sub_100012A7C(&v85);
        v82[0] = v16;
        v24 = v16[2];
        v23 = v16[3];
        if (v24 >= v23 >> 1)
        {
          sub_100195824((v23 > 1), v24 + 1, 1);
          v16 = v82[0];
        }

        v16[2] = v24 + 1;
        v25 = &v16[2 * v24];
        v25[4] = v20;
        v25[5] = v22;
        v17 += 40;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = _swiftEmptyArrayStorage;
    }

    v29 = oslog[5].isa;
    v30 = oslog[6].isa;
    sub_10001BED0(&oslog[2].isa, v29);
    (*(v30 + 2))(v82, v29, v30);
    if (v83)
    {
      sub_10001BED0(v82, v83);
      *(&v86 + 1) = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_10005EC40(&v85);
      dispatch thunk of Identifiable.id.getter();
      sub_100012A7C(v82);
    }

    else
    {
      sub_1000050C4(v82, &qword_1002224D8, &qword_1001B7440);
      v85 = 0u;
      v86 = 0u;
      AssociatedConformanceWitness = 0;
    }

    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    v31._countAndFlagsBits = 0x6F73207473726946;
    v31._object = 0xEC000000203A676ELL;
    String.append(_:)(v31);
    sub_1000024C4(&qword_1002293D0, &qword_1001C0710);
    _print_unlocked<A, B>(_:_:)();
    v32 = v82[1];
    v74 = v82[0];
    strcpy(v82, "All songs: ");
    HIDWORD(v82[1]) = -352321536;
    v33._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v33);

    v34 = v82[0];
    v35 = v82[1];
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    v80 = v82[0];
    v81 = v82[1];
    v36._countAndFlagsBits = 0x20746E6572727543;
    v36._object = 0xEE00203A676E6F73;
    String.append(_:)(v36);
    sub_10000BEB8(&v85, &v78, &qword_1002293D8, &qword_1001C0718);
    if (v79)
    {
      sub_10002FF68(&v78, v82);
    }

    else
    {
      v83 = &type metadata for String;
      v84 = &protocol witness table for String;
      v82[0] = 1701736270;
      v82[1] = 0xE400000000000000;
    }

    _print_unlocked<A, B>(_:_:)();
    sub_100012A7C(v82);
    v37 = v80;
    v38 = v81;
    v82[0] = 0;
    v82[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v82, "Queued songs: ");
    HIBYTE(v82[1]) = -18;
    v39._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v39);

    v41 = v82[0];
    v40 = v82[1];
    v42 = sub_10004A8F4(v3, v16);

    if (v42)
    {
      v43 = oslog[5].isa;
      v44 = oslog[6].isa;
      sub_10001BED0(&oslog[2].isa, v43);
      v45 = (*(v44 + 4))(v43, v44);
      if (v45 > 1)
      {
        if (v45 == 2)
        {

          if (qword_100220C90 != -1)
          {
            swift_once();
          }

          v58 = type metadata accessor for Logger();
          sub_10000BE10(v58, qword_100239158);

          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v61 = 136315394;
            v62 = sub_100139F7C(v37, v38, v82);

            *(v61 + 4) = v62;
            *(v61 + 12) = 2080;
            v63 = sub_100139F7C(v41, v40, v82);

            *(v61 + 14) = v63;
            _os_log_impl(&_mh_execute_header, v59, v60, "Pause song playback. %s. %s.", v61, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v70 = oslog[5].isa;
          v71 = oslog[6].isa;
          sub_10001BED0(&oslog[2].isa, v70);
          (*(v71 + 8))(v70, v71);
        }

        else
        {

          if (qword_100220C90 != -1)
          {
            swift_once();
          }

          v64 = type metadata accessor for Logger();
          sub_10000BE10(v64, qword_100239158);

          v65 = Logger.logObject.getter();
          v66 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v82[0] = swift_slowAlloc();
            *v67 = 136315394;
            v68 = sub_100139F7C(v37, v38, v82);

            *(v67 + 4) = v68;
            *(v67 + 12) = 2080;
            v69 = sub_100139F7C(v41, v40, v82);

            *(v67 + 14) = v69;
            _os_log_impl(&_mh_execute_header, v65, v66, "Resume song playback. %s. %s.", v67, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          v72 = oslog[5].isa;
          v73 = oslog[6].isa;
          sub_10001BED0(&oslog[2].isa, v72);
          (*(v73 + 7))(v72, v73);
        }

        goto LABEL_40;
      }

      if (v45)
      {
        sub_100012A7C(v88);

        goto LABEL_41;
      }

      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_10000BE10(v46, qword_100239158);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v50 = sub_100139F7C(v74, v32, v82);

        *(v49 + 4) = v50;
        *(v49 + 12) = 2080;
        v51 = sub_100139F7C(v34, v35, v82);

        *(v49 + 14) = v51;
        v52 = "Player was previously idle/stopped. Restart song playback. %s. %s.";
LABEL_37:
        _os_log_impl(&_mh_execute_header, v47, v48, v52, v49, 0x16u);
        swift_arrayDestroy();

LABEL_39:

        v56 = oslog[5].isa;
        v57 = oslog[6].isa;
        sub_10001BED0(&oslog[2].isa, v56);
        (*(v57 + 6))(a1, v56, v57);
LABEL_40:
        sub_100012A7C(v88);
LABEL_41:
        sub_1000050C4(&v85, &qword_1002293D8, &qword_1001C0718);
        return;
      }
    }

    else
    {

      if (qword_100220C90 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_10000BE10(v53, qword_100239158);

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v82[0] = swift_slowAlloc();
        *v49 = 136315394;
        v54 = sub_100139F7C(v74, v32, v82);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2080;
        v55 = sub_100139F7C(v34, v35, v82);

        *(v49 + 14) = v55;
        v52 = "Start song playback. %s. %s.";
        goto LABEL_37;
      }
    }

    goto LABEL_39;
  }

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000BE10(v26, qword_100239158);
  osloga = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(osloga, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v27, "Cannot play empty playlist.", v28, 2u);
  }
}

uint64_t sub_10013FE78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10013FFD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_10000BEB8(v3 + v4, a2, &qword_1002293B8, &qword_1001C06D0);
}

uint64_t sub_10013FF24(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_10000BEB8(a1, &v6 - v3, &qword_1002293B8, &qword_1001C06D0);
  return sub_100156840(v4);
}

unint64_t sub_10013FFD4()
{
  result = qword_1002293C0;
  if (!qword_1002293C0)
  {
    type metadata accessor for SubscriptionUpdater(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002293C0);
  }

  return result;
}

uint64_t sub_10014002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[3] = a3;
  v9[4] = a4;
  v6 = sub_10005EC40(v9);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  sub_1000024C4(&qword_1002293C8, &unk_1001C0700);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001B49B0;
  sub_10002FF80(v9, v7 + 32);
  sub_10013F10C(v7);

  return sub_100012A7C(v9);
}

uint64_t sub_10014013C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DesignTimeImage(0);
  __chkstk_darwin(v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v30 - v13;
  URL.init(string:)();
  v15 = type metadata accessor for URL();
  v32 = *(v15 - 8);
  v33 = v14;
  v16 = *(v32 + 48);
  v34 = v15;
  result = v16(v14, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    URL.init(string:)();
    result = (v16)(v12, 1, v34);
    if (result != 1)
    {
      UUID.init()();
      UUID.uuidString.getter();
      v18 = *(v3 + 8);
      v30[1] = v3 + 8;
      v18(v5, v2);
      *v8 = ResourceID.init(_:)();
      v8[1] = v19;
      v21 = v6[6];
      v20 = v6[7];
      v22 = v6[5];
      v23 = v8;
      v32 = *(v32 + 32);
      v24 = v8 + v22;
      v25 = v34;
      (v32)(v24, v12, v34);
      *(v23 + v21) = 0;
      *(v23 + v20) = 0;
      UUID.init()();
      UUID.uuidString.getter();
      v18(v5, v2);
      v26 = ResourceID.init(_:)();
      v27 = v31;
      *v31 = v26;
      v27[1] = v28;
      v27[2] = 0x656C746954;
      v27[3] = 0xE500000000000000;
      v29 = type metadata accessor for DesignTimeVideo(0);
      (v32)(v27 + *(v29 + 24), v33, v25);
      return sub_100005180(v23, v27 + *(v29 + 28));
    }
  }

  __break(1u);
  return result;
}

void sub_10014048C(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  v2 = type metadata accessor for DesignTimeVideo(0);
  type metadata accessor for URL();
  sub_1001408C8(&qword_100221260, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v3 = v1 + *(v2 + 28);
  String.hash(into:)();
  v4 = type metadata accessor for DesignTimeImage(0);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v3 + *(v4 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1001408C8(&qword_100221268, type metadata accessor for CGColor, &unk_1001B3470);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(v4 + 28)));
}

uint64_t sub_100140608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t sub_100140678(uint64_t a1)
{
  *(a1 + 8) = sub_1001408C8(&qword_100229428, type metadata accessor for DesignTimeVideo, &unk_1001C0774);
  result = sub_1001408C8(&qword_100229430, type metadata accessor for DesignTimeVideo, &unk_1001C073C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeVideo(uint64_t a1)
{
  result = qword_100229498;
  if (!qword_100229498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100140790()
{
  Hasher.init(_seed:)();
  sub_10014048C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001407D4()
{
  Hasher.init(_seed:)();
  sub_10014048C(v1);
  return Hasher._finalize()();
}

uint64_t sub_100140810(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 28);

  return sub_10005859C((a1 + v8), (a2 + v8));
}

uint64_t sub_1001408C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100140924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100140A5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for DesignTimeImage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100140B80(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DesignTimeImage(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100140C64@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PreviewAsset();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Song.previewAssets.getter();
  if (v6)
  {
    if (*(v6 + 16))
    {
      (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      PreviewAsset.url.getter();
      return (*(v3 + 8))(v5, v2);
    }
  }

  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, 1, 1, v8);
}

uint64_t sub_100140DE4()
{
  v0 = type metadata accessor for ContentRating();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000024C4(&qword_100229560, &qword_1001C0838);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1000024C4(&qword_100229568, &unk_1001C0840);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v22 - v12;
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  Song.contentRating.getter();
  (*(v1 + 104))(v13, enum case for ContentRating.explicit(_:), v0);
  (*(v1 + 56))(v13, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1001412C4(v15, v6);
  sub_1001412C4(v13, &v6[v16]);
  v17 = *(v1 + 48);
  if (v17(v6, 1, v0) != 1)
  {
    sub_1001412C4(v6, v10);
    if (v17(&v6[v16], 1, v0) != 1)
    {
      v19 = v23;
      (*(v1 + 32))(v23, &v6[v16], v0);
      sub_100141334(qword_100229570, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_1000050C4(v13, &qword_100229568, &unk_1001C0840);
      sub_1000050C4(v15, &qword_100229568, &unk_1001C0840);
      v20(v10, v0);
      sub_1000050C4(v6, &qword_100229568, &unk_1001C0840);
      return v18 & 1;
    }

    sub_1000050C4(v13, &qword_100229568, &unk_1001C0840);
    sub_1000050C4(v15, &qword_100229568, &unk_1001C0840);
    (*(v1 + 8))(v10, v0);
    goto LABEL_6;
  }

  sub_1000050C4(v13, &qword_100229568, &unk_1001C0840);
  sub_1000050C4(v15, &qword_100229568, &unk_1001C0840);
  if (v17(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_1000050C4(v6, &qword_100229560, &qword_1001C0838);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000050C4(v6, &qword_100229568, &unk_1001C0840);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_100141240(uint64_t a1)
{
  *(a1 + 16) = sub_100141334(&qword_100229550, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  result = sub_100141334(&qword_100229558, &type metadata accessor for Song, &protocol conformance descriptor for Song);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1001412C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229568, &unk_1001C0840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100141334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10014137C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for SetlistSongRowViewModel(0, a2, a3, a4);
  (*(*(v9 - 8) + 32))(a5, a1, v9);
  v11 = type metadata accessor for SetlistSongRowView(0, a2, a3, v10);
  v12 = (a5 + v11[9]);
  type metadata accessor for RemoteViewConfiguration();
  sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  *v12 = EnvironmentObject.init()();
  v12[1] = v13;
  v14 = v11[10];
  *(a5 + v14) = swift_getKeyPath();
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v11[11];
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

void sub_1001414D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SetlistSongRowViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      sub_100029A5C(319);
      if (v6 <= 0x3F)
      {
        sub_10001B850();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10014158C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for OpenURLAction() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((v12 + ((((v11 + 16) & ~v11) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if ((v7 & 0x80000000) != 0)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 16] & ~v11, v7, v5);
  }

  else
  {
    v21 = *(a1 + 1);
    if (v21 >= 0xFFFFFFFF)
    {
      LODWORD(v21) = -1;
    }

    return (v21 + 1);
  }
}

void sub_1001417D0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for OpenURLAction() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((v14 + ((((v13 + 16) & ~v13) + *(v8 + 64)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *(a1 + v15) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *(a1 + v15) = 0;
      }

      else if (v18)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if ((v9 & 0x80000000) != 0)
      {
        v21 = *(v22 + 56);

        v21((a1 + v13 + 16) & ~v13, a2, v9, v7);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *a1 = a2 & 0x7FFFFFFF;
        a1[1] = 0;
      }

      else
      {
        a1[1] = (a2 - 1);
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *(a1 + v15) = v20;
      }

      else
      {
        *(a1 + v15) = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    *(a1 + v15) = v20;
  }
}

uint64_t sub_100141AA0(uint64_t a1)
{
  static Font.body.getter();
  static Font.Weight.regular.getter();
  v1 = Font.weight(_:)();

  return v1;
}

uint64_t sub_100141AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v52 = type metadata accessor for AccessibilityChildBehavior();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000024C4(&qword_1002295F8, &qword_1001C0938);
  __chkstk_darwin(v45);
  v10 = &v43 - v9;
  v11 = sub_1000024C4(&qword_100229600, &qword_1001C0940);
  __chkstk_darwin(v11 - 8);
  v43 = &v43 - v12;
  v13 = sub_1000024C4(&qword_100229608, &qword_1001C0948);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v44 = &v43 - v15;
  v47 = sub_1000024C4(&qword_100229610, &qword_1001C0950);
  __chkstk_darwin(v47);
  v17 = &v43 - v16;
  v48 = sub_1000024C4(&qword_100229618, &qword_1001C0958);
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v43 - v18;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = sub_1000024C4(&qword_100229620, &qword_1001C0960);
  sub_1001421D0(v2, *(a1 + 16), *(a1 + 24), &v10[*(v19 + 44)]);
  sub_1000024C4(&qword_1002259D8, &qword_1001BB018);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001B49B0;
  static AccessibilityTraits.startsMediaSession.getter();
  *&v56 = v20;
  sub_100145928(&qword_1002259E0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_1000024C4(&qword_1002259E8, &unk_1001BB020);
  sub_10000BFFC(&qword_1002259F0, &qword_1002259E8, &unk_1001BB020, &protocol conformance descriptor for [A]);
  v21 = v5;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000BFFC(&qword_100229628, &qword_1002295F8, &qword_1001C0938, &protocol conformance descriptor for VStack<A>);
  v22 = v43;
  View.accessibilityAddTraits(_:)();
  (*(v6 + 8))(v8, v21);
  sub_1000050C4(v10, &qword_1002295F8, &qword_1001C0938);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v44;
  sub_10001AE00(v22, v44, &qword_100229600, &qword_1001C0940);
  v24 = (v23 + *(v14 + 44));
  v25 = v61;
  v24[4] = v60;
  v24[5] = v25;
  v24[6] = v62;
  v26 = v57;
  *v24 = v56;
  v24[1] = v26;
  v27 = v59;
  v24[2] = v58;
  v24[3] = v27;
  LOBYTE(v20) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10001AE00(v23, v17, &qword_100229608, &qword_1001C0948);
  v36 = v47;
  v37 = &v17[*(v47 + 36)];
  *v37 = v20;
  *(v37 + 1) = v29;
  *(v37 + 2) = v31;
  *(v37 + 3) = v33;
  *(v37 + 4) = v35;
  v37[40] = 0;
  v38 = v50;
  static AccessibilityChildBehavior.ignore.getter();
  v39 = sub_100144D70();
  v40 = v46;
  View.accessibilityElement(children:)();
  (*(v51 + 8))(v38, v52);
  sub_1000050C4(v17, &qword_100229610, &qword_1001C0950);
  v54 = v36;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  v41 = v48;
  View.accessibilityIdentifier(_:)();
  return (*(v49 + 8))(v40, v41);
}

uint64_t sub_1001421D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a2;
  v51 = a3;
  v49 = a1;
  v52 = a4;
  v4 = sub_1000024C4(&qword_100229648, &qword_1001C0968);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - v5;
  v7 = sub_1000024C4(&qword_100229650, &qword_1001C0970);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v48 - v13;
  __chkstk_darwin(v12);
  v16 = &v48 - v15;
  v17 = sub_1000024C4(&qword_100229658, &unk_1001C0978);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  Divider.init()();
  v24 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v23[*(sub_1000024C4(&qword_1002223E8, &qword_1001B5AA0) + 36)];
  *v33 = v24;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v35 = &v23[*(v18 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4030000000000000;
  v6[16] = 0;
  v40 = sub_1000024C4(&qword_100229660, &qword_1001C0988);
  sub_1001425BC(v49, v50, v51, &v6[*(v40 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v6, v14, &qword_100229648, &qword_1001C0968);
  v41 = &v14[*(v8 + 44)];
  v42 = v58;
  *(v41 + 4) = v57;
  *(v41 + 5) = v42;
  *(v41 + 6) = v59;
  v43 = v54;
  *v41 = v53;
  *(v41 + 1) = v43;
  v44 = v56;
  *(v41 + 2) = v55;
  *(v41 + 3) = v44;
  sub_10001AE00(v14, v16, &qword_100229650, &qword_1001C0970);
  sub_10000BEB8(v23, v21, &qword_100229658, &unk_1001C0978);
  sub_10000BEB8(v16, v11, &qword_100229650, &qword_1001C0970);
  v45 = v52;
  sub_10000BEB8(v21, v52, &qword_100229658, &unk_1001C0978);
  v46 = sub_1000024C4(&qword_100229668, &qword_1001C0990);
  sub_10000BEB8(v11, v45 + *(v46 + 48), &qword_100229650, &qword_1001C0970);
  sub_1000050C4(v16, &qword_100229650, &qword_1001C0970);
  sub_1000050C4(v23, &qword_100229658, &unk_1001C0978);
  sub_1000050C4(v11, &qword_100229650, &qword_1001C0970);
  return sub_1000050C4(v21, &qword_100229658, &unk_1001C0978);
}

uint64_t sub_1001425BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v179 = a4;
  v7 = type metadata accessor for PlainButtonStyle();
  v159 = *(v7 - 8);
  v160 = v7;
  __chkstk_darwin(v7);
  v158 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessibilityTraits();
  v153 = *(v9 - 8);
  v154 = v9;
  __chkstk_darwin(v9);
  v152 = v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = a2;
  v181 = a3;
  v12 = type metadata accessor for SetlistSongRowView(0, a2, a3, v11);
  v13 = *(v12 - 8);
  v146 = *(v13 + 64);
  __chkstk_darwin(v12);
  v164 = v144 - v14;
  v15 = sub_1000024C4(&qword_100229670, &qword_1001C0998);
  v149 = *(v15 - 8);
  v150 = v15;
  __chkstk_darwin(v15);
  v147 = v144 - v16;
  v148 = sub_1000024C4(&qword_100229678, &qword_1001C09A0);
  __chkstk_darwin(v148);
  v151 = v144 - v17;
  v156 = sub_1000024C4(&qword_100229680, &qword_1001C09A8);
  __chkstk_darwin(v156);
  v157 = v144 - v18;
  v19 = sub_1000024C4(&qword_100229688, &qword_1001C09B0);
  v176 = *(v19 - 8);
  v177 = v19;
  __chkstk_darwin(v19);
  v155 = v144 - v20;
  v163 = type metadata accessor for URL();
  v166 = *(v163 - 8);
  v21 = __chkstk_darwin(v163);
  v144[1] = v22;
  v145 = v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v165 = v144 - v23;
  v24 = sub_1000024C4(&qword_100229690, &qword_1001C09B8);
  v25 = __chkstk_darwin(v24 - 8);
  v178 = v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v182 = v144 - v27;
  v28 = sub_1000024C4(&qword_100229698, &qword_1001C09C0);
  __chkstk_darwin(v28 - 8);
  v169 = (v144 - v29);
  v168 = sub_1000024C4(&qword_1002296A0, &qword_1001C09C8);
  __chkstk_darwin(v168);
  v172 = v144 - v30;
  v171 = sub_1000024C4(&qword_1002296A8, &unk_1001C09D0);
  v31 = __chkstk_darwin(v171);
  v175 = v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v170 = v144 - v34;
  __chkstk_darwin(v33);
  v185 = v144 - v35;
  v36 = type metadata accessor for EnvironmentValues();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v41 = __chkstk_darwin(v40 - 8);
  v162 = v144 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = v144 - v43;
  v167 = sub_1000024C4(&qword_1002296B0, &qword_1001C09E0);
  v45 = __chkstk_darwin(v167);
  v174 = v144 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v183 = v12;
  v184 = v144 - v48;
  v49 = *(v12 + 44);
  v173 = a1;
  v50 = a1 + v49;
  v51 = *v50;
  v52 = *(v50 + 8);
  if (v52 == 1)
  {
    v53 = *v50;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v51, 0);
    (*(v37 + 8))(v39, v36);
    v53 = *&v199;
  }

  v55 = v53 * 48.0;
  if (COERCE__INT64(fabs(v53 * 48.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v52)
  {
    v56 = *&v51;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v57 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v51, 0);
    (*(v37 + 8))(v39, v36);
    v56 = *&v199;
  }

  v58 = v56 * 48.0;
  if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  if (v58 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v58 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v144[0] = v13;
  v59 = v58;
  v60 = v180;
  v61 = v181;
  v161 = type metadata accessor for SetlistSongRowViewModel(0, v180, v181, v47);
  v62 = v173;
  sub_10010EA04(v55, v59, v161, v44);
  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  *(v63 + 24) = v61;
  sub_1000024C4(&qword_1002296B8, &qword_1001C09E8);
  sub_100144F88();
  v64 = v184;
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v65 = (v64 + *(sub_1000024C4(&qword_100229718, &qword_1001C0A20) + 36));
  v66 = v187;
  *v65 = v186;
  v65[1] = v66;
  v65[2] = v188;
  v67 = static Alignment.center.getter();
  v69 = v68;
  v70 = v61;
  sub_100144064(v62, v60, v61, v71, &v199);
  v72 = v199;
  v73 = v200;
  v74 = v64 + *(sub_1000024C4(&qword_100229720, &unk_1001C0A28) + 36);
  *v74 = v72;
  v75 = v62;
  *(v74 + 16) = v73;
  *(v74 + 24) = v67;
  *(v74 + 32) = v69;
  if (static Solarium.isEnabled.getter())
  {
    v76 = 10.0;
  }

  else
  {
    v76 = 5.0;
  }

  v77 = (v64 + *(v167 + 36));
  v78 = *(type metadata accessor for RoundedRectangle() + 20);
  v79 = enum case for RoundedCornerStyle.continuous(_:);
  v80 = type metadata accessor for RoundedCornerStyle();
  (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
  *v77 = v76;
  v77[1] = v76;
  *(v77 + *(sub_1000024C4(&qword_100221C80, &qword_1001B6990) + 36)) = 256;
  v81 = static HorizontalAlignment.leading.getter();
  v82 = v169;
  *v169 = v81;
  *(v82 + 8) = 0x4008000000000000;
  *(v82 + 16) = 0;
  v83 = sub_1000024C4(&qword_100229728, &qword_1001C0A38);
  sub_100144134(v62, v60, v70, v82 + *(v83 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v84 = v172;
  sub_10001AE00(v82, v172, &qword_100229698, &qword_1001C09C0);
  v85 = &v84[*(v168 + 36)];
  v86 = v194;
  *(v85 + 4) = v193;
  *(v85 + 5) = v86;
  *(v85 + 6) = v195;
  v87 = v190;
  *v85 = v189;
  *(v85 + 1) = v87;
  v88 = v192;
  *(v85 + 2) = v191;
  *(v85 + 3) = v88;
  LOBYTE(v82) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v97 = v84;
  v98 = v170;
  sub_10001AE00(v97, v170, &qword_1002296A0, &qword_1001C09C8);
  v99 = v98 + *(v171 + 36);
  *v99 = v82;
  *(v99 + 8) = v90;
  *(v99 + 16) = v92;
  *(v99 + 24) = v94;
  *(v99 + 32) = v96;
  *(v99 + 40) = 0;
  sub_10001AE00(v98, v185, &qword_1002296A8, &unk_1001C09D0);
  if (*(v62 + *(v183 + 36)))
  {

    v101 = sub_10010EEFC(v100);

    if (v101)
    {
      v102 = v162;
      sub_10010E910(v161);
      v103 = v166;
      v104 = v163;
      if ((*(v166 + 48))(v102, 1, v163) != 1)
      {
        v172 = *(v103 + 32);
        v108 = v165;
        (v172)(v165, v102, v104);
        v109 = v144[0];
        (*(v144[0] + 16))(v164, v75, v183);
        v110 = v145;
        (*(v103 + 16))(v145, v108, v104);
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v112 = (v146 + *(v103 + 80) + v111) & ~*(v103 + 80);
        v113 = v104;
        v114 = swift_allocObject();
        v115 = v181;
        *(v114 + 16) = v180;
        *(v114 + 24) = v115;
        (*(v109 + 32))(v114 + v111, v164, v183);
        v116 = (v172)(v114 + v112, v110, v113);
        __chkstk_darwin(v116);
        sub_1000024C4(&qword_100229738, &qword_1001C0A48);
        sub_1001455B4();
        v117 = v147;
        Button.init(action:label:)();
        sub_1000024C4(&qword_1002259D8, &qword_1001BB018);
        v118 = v153;
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_1001B49B0;
        static AccessibilityTraits.startsMediaSession.getter();
        *&v199 = v119;
        sub_100145928(&qword_1002259E0, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
        sub_1000024C4(&qword_1002259E8, &unk_1001BB020);
        sub_10000BFFC(&qword_1002259F0, &qword_1002259E8, &unk_1001BB020, &protocol conformance descriptor for [A]);
        v120 = v152;
        v121 = v154;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        sub_10000BFFC(&qword_100229758, &qword_100229670, &qword_1001C0998, &protocol conformance descriptor for Button<A>);
        v123 = v150;
        v122 = v151;
        View.accessibilityRemoveTraits(_:)();
        (*(v118 + 8))(v120, v121);
        (*(v149 + 8))(v117, v123);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v124 = (v122 + *(v148 + 36));
        v125 = v197;
        *v124 = v196;
        v124[1] = v125;
        v124[2] = v198;
        static Alignment.center.getter();
        _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
        v126 = v157;
        sub_10001AE00(v122, v157, &qword_100229678, &qword_1001C09A0);
        v127 = (v126 + *(v156 + 36));
        v128 = v204;
        v127[4] = v203;
        v127[5] = v128;
        v127[6] = v205;
        v129 = v200;
        *v127 = v199;
        v127[1] = v129;
        v130 = v202;
        v127[2] = v201;
        v127[3] = v130;
        v131 = v158;
        PlainButtonStyle.init()();
        sub_100145728();
        sub_100145928(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
        v132 = v155;
        v133 = v160;
        View.buttonStyle<A>(_:)();
        (*(v159 + 8))(v131, v133);
        sub_1000050C4(v126, &qword_100229680, &qword_1001C09A8);
        (*(v166 + 8))(v165, v113);
        v107 = v176;
        v134 = v177;
        (*(v176 + 32))(v182, v132, v177);
        v106 = v134;
        v105 = 0;
        goto LABEL_22;
      }

      sub_1000050C4(v102, &qword_1002214F8, &qword_1001B3D20);
    }

    v105 = 1;
    v107 = v176;
    v106 = v177;
LABEL_22:
    v135 = v182;
    (*(v107 + 56))(v182, v105, 1, v106);
    v136 = v184;
    v137 = v174;
    sub_10000BEB8(v184, v174, &qword_1002296B0, &qword_1001C09E0);
    v138 = v185;
    v139 = v175;
    sub_10000BEB8(v185, v175, &qword_1002296A8, &unk_1001C09D0);
    v140 = v178;
    sub_10000BEB8(v135, v178, &qword_100229690, &qword_1001C09B8);
    v141 = v179;
    sub_10000BEB8(v137, v179, &qword_1002296B0, &qword_1001C09E0);
    v142 = sub_1000024C4(&qword_100229730, &qword_1001C0A40);
    sub_10000BEB8(v139, v141 + *(v142 + 48), &qword_1002296A8, &unk_1001C09D0);
    sub_10000BEB8(v140, v141 + *(v142 + 64), &qword_100229690, &qword_1001C09B8);
    sub_1000050C4(v135, &qword_100229690, &qword_1001C09B8);
    sub_1000050C4(v138, &qword_1002296A8, &unk_1001C09D0);
    sub_1000050C4(v136, &qword_1002296B0, &qword_1001C09E0);
    sub_1000050C4(v140, &qword_100229690, &qword_1001C09B8);
    sub_1000050C4(v139, &qword_1002296A8, &unk_1001C09D0);
    return sub_1000050C4(v137, &qword_1002296B0, &qword_1001C09E0);
  }

LABEL_29:
  type metadata accessor for RemoteViewConfiguration();
  sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001439E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25[1] = a3;
  v25[0] = a2;
  v29 = a4;
  v28 = sub_1000024C4(&qword_1002296F0, &qword_1001C0A00);
  __chkstk_darwin(v28);
  v6 = v25 - v5;
  v26 = sub_1000024C4(&qword_1002297C0, &qword_1001C0B30);
  __chkstk_darwin(v26);
  v8 = v25 - v7;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000024C4(&qword_1002296D0, &qword_1001C09F0);
  __chkstk_darwin(v27);
  v14 = v25 - v13;
  v15 = type metadata accessor for AsyncImagePhase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  if ((*(v16 + 88))(v18, v15) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
    v19 = Image.resizable(capInsets:resizingMode:)();
    (*(v10 + 8))(v12, v9);
    *&v34 = v19;
    BYTE8(v34) = 1;
    sub_1000024C4(&qword_1002296E0, &qword_1001C09F8);
    sub_100145120();
    View.accessibilityIdentifier(_:)();

    sub_10000BEB8(v14, v8, &qword_1002296D0, &qword_1001C09F0);
    swift_storeEnumTagMultiPayload();
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &qword_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &qword_1001C0A00, sub_1001451AC);
    _ConditionalContent<>.init(storage:)();

    return sub_1000050C4(v14, &qword_1002296D0, &qword_1001C09F0);
  }

  else
  {
    if (qword_100220BA0 != -1)
    {
      swift_once();
    }

    v21 = qword_1002390C0;
    v22 = static Alignment.center.getter();
    v24 = v23;
    sub_100143FE4(&v34);
    *&v30 = v21;
    WORD4(v30) = 256;
    v31 = v34;
    *&v32 = v35;
    DWORD2(v32) = DWORD2(v35);
    *&v33 = v22;
    *(&v33 + 1) = v24;

    sub_1000024C4(&qword_100229700, &unk_1001C0A08);
    sub_1001451AC();
    View.accessibilityIdentifier(_:)();
    v34 = v30;
    v35 = v31;
    v36 = v32;
    v37 = v33;
    sub_1000050C4(&v34, &qword_100229700, &unk_1001C0A08);
    sub_10000BEB8(v6, v8, &qword_1002296F0, &qword_1001C0A00);
    swift_storeEnumTagMultiPayload();
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &qword_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &qword_1001C0A00, sub_1001451AC);
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v6, &qword_1002296F0, &qword_1001C0A00);
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_100143FE4@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(_internalSystemName:)();
  static Font.title3.getter();
  static Font.Weight.regular.getter();
  v3 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  result = static HierarchicalShapeStyle.quaternary.getter();
  *a1 = v2;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100144064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for SetlistSongRowViewModel(0, a2, a3, a4);
  v8 = 0;
  result = 0;
  if (*(a1 + *(v7 + 40)) == 1)
  {
    if (qword_100220C18 != -1)
    {
      swift_once();
    }

    v10 = qword_100239130;
    type metadata accessor for PlaybackViewModel(0);
    v8 = swift_allocObject();

    ObservationRegistrar.init()();
    *(v8 + 16) = v10;
    result = swift_getKeyPath();
  }

  *a5 = v8;
  *(a5 + 8) = result;
  *(a5 + 16) = 0;
  return result;
}

uint64_t sub_100144134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a1;
  v83 = a4;
  v6 = sub_1000024C4(&qword_100221B10, &qword_1001B4F50);
  v7 = __chkstk_darwin(v6 - 8);
  v82 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v81 = &v69 - v9;
  v10 = type metadata accessor for Text.Suffix();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100229788, &qword_1001C0A78);
  v78 = *(v12 - 8);
  v79 = v12;
  __chkstk_darwin(v12);
  v77 = &v69 - v13;
  v14 = sub_1000024C4(&qword_100229790, &qword_1001C0A80);
  v15 = __chkstk_darwin(v14 - 8);
  v80 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v69 - v17;
  v19 = type metadata accessor for SetlistSongRowViewModel(0, a2, a3, v18);
  *&v94 = sub_10010E98C(v19);
  *(&v94 + 1) = v20;
  v73 = sub_10001877C(v94, v20, v21);
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v74 = v27;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v26 & 1;
  v113 = v26 & 1;
  v69 = a2;
  v70 = a3;
  v29 = sub_100141AA0(a2);
  KeyPath = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v114 = 0;
  *&v94 = v22;
  *(&v94 + 1) = v24;
  LOBYTE(v95) = v28;
  v100 = v110;
  v101 = v111;
  v102 = v112;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  *(&v95 + 1) = v74;
  *&v103 = KeyPath;
  *(&v103 + 1) = v29;
  *&v104 = v31;
  *(&v104 + 1) = 1;
  v105 = 0;
  v74 = v19;
  if (sub_10010E94C(v19))
  {
    v33 = sub_100145AF0(v69, v70, v32);
    v35 = v34;
    v37 = v36;
    v38 = v72;
    static Text.Suffix.alwaysVisible(_:)();
    sub_100017398(v33, v35, v37 & 1);
  }

  else
  {
    v38 = v72;
    static Text.Suffix.none.getter();
  }

  v39 = sub_1000024C4(&qword_100229798, &qword_1001C0AE8);
  v40 = sub_100145980();
  v41 = v77;
  View.textSuffix(_:)();
  (*(v75 + 8))(v38, v76);
  v92[8] = v102;
  v92[9] = v103;
  v92[10] = v104;
  v93 = v105;
  v92[4] = v98;
  v92[5] = v99;
  v92[6] = v100;
  v92[7] = v101;
  v92[0] = v94;
  v92[1] = v95;
  v92[2] = v96;
  v92[3] = v97;
  sub_1000050C4(v92, &qword_100229798, &qword_1001C0AE8);
  v85 = v39;
  v86 = v40;
  swift_getOpaqueTypeConformance2();
  v42 = v79;
  View.accessibilityIdentifier(_:)();
  (*(v78 + 8))(v41, v42);
  v85 = sub_10010E9C8(v74);
  v86 = v43;
  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  static Font.footnote.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v49 = Text.font(_:)();
  v51 = v50;
  v53 = v52;

  sub_100017398(v44, v46, v48 & 1);

  if (qword_100220B98 != -1)
  {
    swift_once();
  }

  v85 = qword_1002390B8;

  v54 = Text.foregroundStyle<A>(_:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_100017398(v49, v51, v53 & 1);

  v61 = swift_getKeyPath();
  v85 = v54;
  v86 = v56;
  v87 = v58 & 1;
  v88 = v60;
  v89 = v61;
  v90 = 1;
  v91 = 0;
  sub_1000024C4(&qword_100221B38, &unk_1001B4FA0);
  sub_10001B3F8();
  v62 = v81;
  View.accessibilityIdentifier(_:)();
  sub_100017398(v54, v56, v58 & 1);

  v63 = v84;
  v64 = v80;
  sub_10000BEB8(v84, v80, &qword_100229790, &qword_1001C0A80);
  v65 = v82;
  sub_10000BEB8(v62, v82, &qword_100221B10, &qword_1001B4F50);
  v66 = v83;
  sub_10000BEB8(v64, v83, &qword_100229790, &qword_1001C0A80);
  v67 = sub_1000024C4(&qword_1002297B8, &qword_1001C0AF8);
  sub_10000BEB8(v65, v66 + *(v67 + 48), &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v62, &qword_100221B10, &qword_1001B4F50);
  sub_1000050C4(v63, &qword_100229790, &qword_1001C0A80);
  sub_1000050C4(v65, &qword_100221B10, &qword_1001B4F50);
  return sub_1000050C4(v64, &qword_100229790, &qword_1001C0A80);
}

void sub_1001448B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for OpenURLAction();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SetlistSongRowView(0, a3, a4, v11);
  sub_100039C90(v10);
  OpenURLAction.callAsFunction(_:)();
  (*(v8 + 8))(v10, v7);
  if (*(a1 + *(v12 + 36)))
  {
    type metadata accessor for SetlistSongRowViewModel(0, a3, a4, v13);

    sub_10010EC44(v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100145928(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100144A64@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  v22 = sub_1000024C4(&qword_100229780, &unk_1001C0A68);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = &v22 - v9;
  v11 = sub_1000024C4(&qword_100229750, &unk_1001C0A50);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  *&v24 = Image.init(_internalSystemName:)();
  static SymbolVariants.square.getter();
  SymbolVariants.fill.getter();
  v15 = *(v2 + 8);
  v15(v7, v1);
  View.symbolVariant(_:)();
  v15(v5, v1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v14, v10, v22);
  v16 = &v14[*(v12 + 44)];
  v17 = v29;
  *(v16 + 4) = v28;
  *(v16 + 5) = v17;
  *(v16 + 6) = v30;
  v18 = v25;
  *v16 = v24;
  *(v16 + 1) = v18;
  v19 = v27;
  *(v16 + 2) = v26;
  *(v16 + 3) = v19;
  v20 = v23;
  sub_10001AE00(v14, v23, &qword_100229750, &unk_1001C0A50);
  result = sub_1000024C4(&qword_100229738, &qword_1001C0A48);
  *(v20 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_100144D70()
{
  result = qword_100229630;
  if (!qword_100229630)
  {
    sub_10000460C(&qword_100229610, &qword_1001C0950);
    sub_100144DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229630);
  }

  return result;
}

unint64_t sub_100144DFC()
{
  result = qword_100229638;
  if (!qword_100229638)
  {
    sub_10000460C(&qword_100229608, &qword_1001C0948);
    sub_100144E88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229638);
  }

  return result;
}

unint64_t sub_100144E88()
{
  result = qword_100229640;
  if (!qword_100229640)
  {
    sub_10000460C(&qword_100229600, &qword_1001C0940);
    sub_10000BFFC(&qword_100229628, &qword_1002295F8, &qword_1001C0938, &protocol conformance descriptor for VStack<A>);
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229640);
  }

  return result;
}

unint64_t sub_100144F88()
{
  result = qword_1002296C0;
  if (!qword_1002296C0)
  {
    sub_10000460C(&qword_1002296B8, &qword_1001C09E8);
    sub_10014506C(&qword_1002296C8, &qword_1002296D0, &qword_1001C09F0, sub_100145120);
    sub_10014506C(&qword_1002296E8, &qword_1002296F0, &qword_1001C0A00, sub_1001451AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296C0);
  }

  return result;
}

uint64_t sub_10014506C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100145120()
{
  result = qword_1002296D8;
  if (!qword_1002296D8)
  {
    v1 = sub_10000460C(&qword_1002296E0, &qword_1001C09F8);
    sub_10005DDFC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296D8);
  }

  return result;
}

unint64_t sub_1001451AC()
{
  result = qword_1002296F8;
  if (!qword_1002296F8)
  {
    sub_10000460C(&qword_100229700, &unk_1001C0A08);
    sub_10000BFFC(&qword_1002282F8, &qword_1002282F0, &qword_1001BEC90, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_10000BFFC(&qword_100229708, &qword_100229710, &qword_1001C0A18, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002296F8);
  }

  return result;
}

uint64_t sub_100145290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SetlistSongRowView(0, v5, v6, a4);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v18 = *(*(v7 - 8) + 64);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v4 + v8;

  v14 = type metadata accessor for SetlistSongRowViewModel(0, v5, v6, v13);
  (*(*(v5 - 8) + 8))(v4 + v8 + *(v14 + 36), v5);

  v15 = *(v7 + 40);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for OpenURLAction();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  else
  {
  }

  sub_10001BC5C(*(v12 + *(v7 + 44)), *(v12 + *(v7 + 44) + 8));
  (*(v10 + 8))(v4 + ((v8 + v18 + v11) & ~v11), v9);

  return swift_deallocObject();
}

void sub_1001454C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SetlistSongRowView(0, v5, v6, a4) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = v4 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  sub_1001448B8(v4 + v8, v11, v5, v6);
}

unint64_t sub_1001455B4()
{
  result = qword_100229740;
  if (!qword_100229740)
  {
    sub_10000460C(&qword_100229738, &qword_1001C0A48);
    sub_10014566C();
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0, &unk_1001B6E00, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229740);
  }

  return result;
}

unint64_t sub_10014566C()
{
  result = qword_100229748;
  if (!qword_100229748)
  {
    sub_10000460C(&qword_100229750, &unk_1001C0A50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229748);
  }

  return result;
}

unint64_t sub_100145728()
{
  result = qword_100229760;
  if (!qword_100229760)
  {
    sub_10000460C(&qword_100229680, &qword_1001C09A8);
    sub_1001457B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229760);
  }

  return result;
}

unint64_t sub_1001457B4()
{
  result = qword_100229768;
  if (!qword_100229768)
  {
    sub_10000460C(&qword_100229678, &qword_1001C09A0);
    sub_100145840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229768);
  }

  return result;
}

unint64_t sub_100145840()
{
  result = qword_100229770;
  if (!qword_100229770)
  {
    sub_10000460C(&qword_100229778, &qword_1001C0A60);
    sub_10000BFFC(&qword_100229758, &qword_100229670, &qword_1001C0998, &protocol conformance descriptor for Button<A>);
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229770);
  }

  return result;
}

uint64_t sub_100145928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100145980()
{
  result = qword_1002297A0;
  if (!qword_1002297A0)
  {
    sub_10000460C(&qword_100229798, &qword_1001C0AE8);
    sub_100145A38();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50, &unk_1001B5930, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297A0);
  }

  return result;
}

unint64_t sub_100145A38()
{
  result = qword_1002297A8;
  if (!qword_1002297A8)
  {
    sub_10000460C(&qword_1002297B0, &qword_1001C0AF0);
    sub_1000A7230();
    sub_10000BFFC(&qword_100222260, &qword_100222268, &unk_1001B6970, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297A8);
  }

  return result;
}

uint64_t sub_100145AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10001877C(a1, a2, a3);
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Color.gray.getter();
  Color.opacity(_:)();

  v9 = Text.foregroundColor(_:)();
  v11 = v10;
  v13 = v12;

  sub_100017398(v4, v6, v8 & 1);

  sub_100141AA0(a1);
  v14 = Text.font(_:)();

  sub_100017398(v9, v11, v13 & 1);

  return v14;
}

unint64_t sub_100145C50()
{
  result = qword_1002297C8;
  if (!qword_1002297C8)
  {
    sub_10000460C(&qword_1002297D0, &qword_1001C0B38);
    sub_10000460C(&qword_100229610, &qword_1001C0950);
    sub_100144D70();
    swift_getOpaqueTypeConformance2();
    sub_100145928(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002297C8);
  }

  return result;
}

uint64_t sub_100145D5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100145E2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ServicesUpsellModule(uint64_t a1)
{
  result = qword_100229830;
  if (!qword_100229830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100145F28(uint64_t a1, __n128 a2)
{
  type metadata accessor for ServicesUpsellViewModel(319);
  if (v2 <= 0x3F)
  {
    sub_100017044(319);
    if (v3 <= 0x3F)
    {
      sub_100029A5C(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100145FE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1000024C4(&qword_1002223A0, &qword_1001B5A38);
  __chkstk_darwin(v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_1000024C4(&qword_1002223A8, &qword_1001B5A40);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = sub_1000024C4(&qword_100229870, &unk_1001C0BA8);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  sub_1001463E0(v2, v5);
  sub_1000024C4(&qword_100222388, &qword_1001B73E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B49A0;
  v13 = static Edge.Set.leading.getter();
  *(inited + 32) = v13;
  v14 = static Edge.Set.top.getter();
  *(inited + 33) = v14;
  v15 = static Edge.Set.bottom.getter();
  *(inited + 34) = v15;
  v16 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v13)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_10001AE00(v5, v8, &qword_1002223A0, &qword_1001B5A38);
  v25 = &v8[*(v6 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = static Edge.Set.trailing.getter();
  sub_10001AE00(v8, v11, &qword_1002223A8, &qword_1001B5A40);
  v27 = &v11[*(v9 + 36)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v28 = qword_1002390D8;
  v29 = sub_1000024C4(&qword_100229878, &qword_1001C0BB8);
  v30 = v42;
  v31 = (v42 + *(v29 + 36));
  v32 = *(type metadata accessor for RoundedRectangle() + 20);
  v33 = enum case for RoundedCornerStyle.continuous(_:);
  v34 = type metadata accessor for RoundedCornerStyle();
  (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
  *v31 = v28;
  v31[1] = v28;
  v35 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v36 = Color.init(uiColor:)();
  *(v31 + *(sub_1000024C4(&qword_100223250, &unk_1001BCCE0) + 36)) = v36;
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = (v31 + *(sub_1000024C4(&qword_100223480, &qword_1001B7390) + 36));
  *v40 = v37;
  v40[1] = v39;
  return sub_10001AE00(v11, v30, &qword_100229870, &unk_1001C0BA8);
}

uint64_t sub_1001463E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = type metadata accessor for ServicesUpsellModule(0);
  v72 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v73 = v4;
  v74 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1000024C4(&qword_100222408, &qword_1001B5AC0);
  __chkstk_darwin(v76);
  v6 = v62 - v5;
  v69 = type metadata accessor for RedactionReasons();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000024C4(&qword_100222410, &unk_1001B5AC8);
  v71 = *(v77 - 8);
  __chkstk_darwin(v77);
  v70 = v62 - v9;
  v10 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v62 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v67 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v79 = v62 - v20;
  v75 = a1;
  v21 = *a1;
  v22 = OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL;
  sub_100073F10(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL, v15);
  v80 = v17;
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    sub_100006BC4(v15);
    v24 = 0x3838383736343436;
    if (!*(v21 + 16))
    {
      v24 = 0x3337383138303131;
    }

    v25 = 0xEA00000000003932;
    if (!*(v21 + 16))
    {
      v25 = 0xEA00000000003039;
    }

    v27 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
    v26 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle + 8);
    *&v81 = v24;
    *(&v81 + 1) = v25;
    v82 = 0uLL;
    *&v83 = v27;
    *(&v83 + 1) = v26;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;

    v28 = static RedactionReasons.placeholder.getter();
    v31 = sub_10002C55C(v28, v29, v30);
    v32 = v70;
    View.redacted(reason:)();
    (*(v68 + 1))(v8, v69);
    v87[2] = v83;
    v87[3] = v84;
    v87[4] = v85;
    v87[5] = v86;
    v87[0] = v81;
    v87[1] = v82;
    sub_10002C5B0(v87);
    v33 = v71;
    v34 = v77;
    (*(v71 + 16))(v6, v32, v77);
    swift_storeEnumTagMultiPayload();
    *&v81 = &type metadata for AppStoreComponent;
    *(&v81 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v33 + 8))(v32, v34);
  }

  else
  {
    v68 = v6;
    v36 = *(v80 + 32);
    v62[1] = v80 + 32;
    v62[0] = v36;
    v36(v79, v15, v16);
    v37 = *(v21 + 16) == 0;
    v38 = 0x3838383736343436;
    if (!*(v21 + 16))
    {
      v38 = 0x3337383138303131;
    }

    v71 = v38;
    v39 = 0xEA00000000003932;
    if (v37)
    {
      v39 = 0xEA00000000003039;
    }

    v65 = v39;
    v40 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle + 8);
    v64 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
    v41 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery + 8);
    v63 = *(v21 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery);
    sub_100073F10(v21 + v22, v13);
    v42 = v23(v13, 1, v16);
    v69 = v41;

    v70 = v40;

    sub_100006BC4(v13);
    v66 = v16;
    if (v42 == 1)
    {
      v43 = 0;
      v44 = 0;
      v45 = v75;
      v46 = v74;
      v47 = v72;
    }

    else
    {
      v45 = v75;
      v46 = v74;
      sub_100146F3C(v75, v74);
      v48 = v80 + 16;
      v49 = v67;
      (*(v80 + 16))(v67, v79, v16);
      v47 = v72;
      v50 = (*(v72 + 80) + 16) & ~*(v72 + 80);
      v51 = (v73 + *(v48 + 64) + v50) & ~*(v48 + 64);
      v44 = swift_allocObject();
      sub_1001470C4(v46, v44 + v50);
      (v62[0])(v44 + v51, v49, v16);
      v43 = sub_100147348;
    }

    v52 = v68;
    sub_100146F3C(v45, v46);
    v53 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v54 = swift_allocObject();
    sub_1001470C4(v46, v54 + v53);
    v55 = v65;
    *v52 = v71;
    *(v52 + 1) = v55;
    *&v56 = v64;
    *(&v56 + 1) = v70;
    *(v52 + 2) = 0;
    *(v52 + 3) = 0;
    *&v57 = v63;
    *(&v57 + 1) = v69;
    *(v52 + 2) = v56;
    *(v52 + 3) = v57;
    *(v52 + 8) = v43;
    *(v52 + 9) = v44;
    *(v52 + 10) = sub_100147128;
    *(v52 + 11) = v54;
    v58 = swift_storeEnumTagMultiPayload();
    v61 = sub_10002C55C(v58, v59, v60);
    *&v87[0] = &type metadata for AppStoreComponent;
    *(&v87[0] + 1) = v61;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v80 + 8))(v79, v66);
  }
}

void sub_100146CC0(uint64_t a1, uint64_t a2)
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return;
    }
  }

  v9 = *(a2 + 8);
  if (v9)
  {

    sub_100147720(6, 0, 3u, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t sub_100146DD0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for OpenURLAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ServicesUpsellModule(0);
  sub_100039C90(v6);
  OpenURLAction.callAsFunction(_:)();
  (*(v4 + 8))(v6, v3);
  v7 = a1[1];
  if (v7)
  {
    if (*(*a1 + 16))
    {
      v8 = 10;
    }

    else
    {
      v8 = 9;
    }

    sub_100147720(v8, 0, 3u, v7);

    return sub_100026CDC(v8, 0, 3u);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100016404();
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100146F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServicesUpsellModule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100146FA0()
{
  v1 = (type metadata accessor for ServicesUpsellModule(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001470C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServicesUpsellModule(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100147128(uint64_t a1)
{
  v3 = *(type metadata accessor for ServicesUpsellModule(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100146CC0(a1, v4);
}

uint64_t sub_100147198()
{
  v1 = (type metadata accessor for ServicesUpsellModule(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);

  v7 = v1[8];
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for OpenURLAction();
    (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  }

  else
  {
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_100147348()
{
  v1 = *(type metadata accessor for ServicesUpsellModule(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100146DD0((v0 + v2), v5);
}

unint64_t sub_100147418()
{
  result = qword_100229880;
  if (!qword_100229880)
  {
    sub_10000460C(&qword_100229878, &qword_1001C0BB8);
    sub_100147500(&qword_100229888, &qword_100229870, &unk_1001C0BA8, sub_1001474D0);
    sub_1001476BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229880);
  }

  return result;
}

uint64_t sub_100147500(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100147584()
{
  result = qword_100229898;
  if (!qword_100229898)
  {
    sub_10000460C(&qword_1002223A0, &qword_1001B5A38);
    sub_100147608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229898);
  }

  return result;
}

unint64_t sub_100147608()
{
  result = qword_1002298A0;
  if (!qword_1002298A0)
  {
    v1 = sub_10000460C(&qword_1002298A8, &unk_1001C0BC0);
    sub_10002C55C(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002298A0);
  }

  return result;
}

unint64_t sub_1001476BC()
{
  result = qword_1002234A8;
  if (!qword_1002234A8)
  {
    sub_10000460C(&qword_100223480, &qword_1001B7390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002234A8);
  }

  return result;
}

void sub_100147720(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  sub_1000024C4(&qword_100221508, &qword_1001B5C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  v11 = *(v4 + 24);
  v10 = *(v4 + 32);
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v10;
  v12 = *(v4 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_analyticsPageNameType);
  if (v12 == 15)
  {
    LOBYTE(v12) = 0;
  }

  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v12;
  if (*(v4 + 16))
  {
    v13 = 8;
  }

  else
  {
    v13 = 7;
  }

  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = v13;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a1;
  *(inited + 160) = a2;
  *(inited + 168) = a3;
  if (*(a4 + 72))
  {
    v14 = *(a4 + 64);
    v15 = *(a4 + 72);
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v22 = v14;
  v23 = v15;

  sub_100006C80(a1, a2, a3);

  v16 = sub_1001894F4(1, 5, 1, inited);
  v20 = v16;
  sub_100006C98(&aBlock, v27);
  sub_100118768(4, v27, &v20, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v17 = String._bridgeToObjectiveC()();
  v18 = swift_allocObject();
  v18[2] = 0xD00000000000001ELL;
  v18[3] = 0x80000001001C4640;
  v18[4] = v16;
  v25 = sub_100006D88;
  v26 = v18;
  aBlock = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_10015B4A4;
  v24 = &unk_100218A08;
  v19 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

uint64_t sub_1001479B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3838383736343436;
  }

  else
  {
    v3 = 0x3337383138303131;
  }

  if (v2)
  {
    v4 = 0xEA00000000003039;
  }

  else
  {
    v4 = 0xEA00000000003932;
  }

  if (*a2)
  {
    v5 = 0x3838383736343436;
  }

  else
  {
    v5 = 0x3337383138303131;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003932;
  }

  else
  {
    v6 = 0xEA00000000003039;
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

Swift::Int sub_100147A60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100147AE8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100147B5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100147BE0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100211BD0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100147C40(uint64_t *a1@<X8>)
{
  v2 = 0x3337383138303131;
  if (*v1)
  {
    v2 = 0x3838383736343436;
  }

  v3 = 0xEA00000000003039;
  if (*v1)
  {
    v3 = 0xEA00000000003932;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100147C84()
{

  sub_100006BC4(v0 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL);

  v1 = OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServicesUpsellViewModel(uint64_t a1)
{
  result = qword_1002298E8;
  if (!qword_1002298E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100147DB4(uint64_t a1)
{
  sub_10000693C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100147EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1002299A0[0];
  if (!qword_1002299A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1002299A0);
  }

  return result;
}

uint64_t sub_100147F0C()
{

  return swift_deallocObject();
}

double sub_100147F4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100147F64(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 112);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 60);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001481E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v34 = sub_10000460C(&qword_100223418, &qword_1001B7350);
  v35 = a1[2];
  v3 = type metadata accessor for Array();
  v36 = a1[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  v7 = type metadata accessor for Button();
  v27 = type metadata accessor for PlainButtonStyle();
  v30 = v7;
  WitnessTable = swift_getWitnessTable();
  v26 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  v31 = type metadata accessor for AccessibilityAttachmentModifier();
  v28 = type metadata accessor for ModifiedContent();
  OpaqueTypeMetadata2 = v3;
  v51 = &type metadata for String;
  v52 = v28;
  v53 = swift_getWitnessTable();
  v54 = &protocol witness table for String;
  v23[2] = type metadata accessor for ForEach();
  v32 = a1[3];
  type metadata accessor for Array();
  v33 = a1[5];
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v8, v9, v10);
  swift_getWitnessTable();
  type metadata accessor for Button();
  v24 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v23[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v54 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v25 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v47 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v52 = v24;
  v53 = v26;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v49;
  v44 = swift_getWitnessTable();
  v42 = v11;
  v43 = swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v51 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  static HorizontalAlignment.leading.getter();
  *&v19 = v35;
  *(&v19 + 1) = v32;
  *&v20 = v36;
  *(&v20 + 1) = v33;
  v39 = v19;
  v40 = v20;
  v41 = v37;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v21 = *(v13 + 8);
  v21(v16, v12);
  sub_1000EE87C();
  return (v21)(v18, v12);
}

uint64_t sub_1001489BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v152 = a1;
  v153 = a2;
  v147 = a6;
  v9 = type metadata accessor for ContentMarginPlacement();
  v145 = *(v9 - 8);
  v146 = v9;
  __chkstk_darwin(v9);
  v144 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScrollIndicatorVisibility();
  v142 = *(v11 - 8);
  v143 = v11;
  __chkstk_darwin(v11);
  v140 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Array();
  v154 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  swift_getWitnessTable();
  v17 = type metadata accessor for Button();
  v18 = type metadata accessor for PlainButtonStyle();
  v138 = v18;
  v150 = v17;
  WitnessTable = swift_getWitnessTable();
  v141 = WitnessTable;
  v137 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  *&v175 = v17;
  *(&v175 + 1) = v18;
  *&v176 = WitnessTable;
  *(&v176 + 1) = v137;
  v134 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v151 = type metadata accessor for AccessibilityAttachmentModifier();
  v20 = type metadata accessor for ModifiedContent();
  v139 = v20;
  v21 = swift_getWitnessTable();
  *&v175 = v13;
  *(&v175 + 1) = &type metadata for String;
  *&v176 = v20;
  *(&v176 + 1) = v21;
  *&v177 = &protocol witness table for String;
  v132 = type metadata accessor for ForEach();
  v22 = type metadata accessor for Array();
  v148 = a3;
  v149 = a5;
  v23 = swift_getAssociatedTypeWitness();
  v24 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v23, v24, v25);
  swift_getWitnessTable();
  v26 = type metadata accessor for Button();
  v135 = swift_getWitnessTable();
  v28 = v137;
  v27 = v138;
  *&v175 = v26;
  *(&v175 + 1) = v138;
  *&v176 = v135;
  *(&v176 + 1) = v137;
  swift_getOpaqueTypeMetadata2();
  v29 = type metadata accessor for ModifiedContent();
  v133 = v29;
  v30 = swift_getWitnessTable();
  *&v175 = v22;
  *(&v175 + 1) = &type metadata for String;
  *&v176 = v29;
  *(&v176 + 1) = v30;
  *&v177 = &protocol witness table for String;
  v131 = type metadata accessor for ForEach();
  v136 = type metadata accessor for _ConditionalContent();
  *&v175 = v150;
  *(&v175 + 1) = v27;
  *&v176 = v141;
  *(&v176 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v173 = OpaqueTypeConformance2;
  v174 = v32;
  v172 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  *&v175 = v26;
  *(&v175 + 1) = v27;
  *&v176 = v135;
  *(&v176 + 1) = v28;
  v170 = swift_getOpaqueTypeConformance2();
  v171 = v32;
  v141 = v32;
  v169 = swift_getWitnessTable();
  v34 = swift_getWitnessTable();
  v167 = v33;
  v168 = v34;
  swift_getWitnessTable();
  v119 = type metadata accessor for HStack();
  v118 = swift_getWitnessTable();
  v35 = type metadata accessor for ScrollView();
  v131 = *(v35 - 8);
  __chkstk_darwin(v35);
  v117 = &v111 - v36;
  v37 = swift_getWitnessTable();
  *&v175 = v35;
  *(&v175 + 1) = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v126 = &v111 - v39;
  v133 = v35;
  *&v175 = v35;
  *(&v175 + 1) = v37;
  v121 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  v128 = *(v41 - 8);
  __chkstk_darwin(v41);
  v125 = &v111 - v42;
  v135 = OpaqueTypeMetadata2;
  *&v175 = OpaqueTypeMetadata2;
  *(&v175 + 1) = v40;
  v120 = v40;
  v43 = swift_getOpaqueTypeConformance2();
  v134 = v41;
  *&v175 = v41;
  *(&v175 + 1) = v43;
  v124 = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  v127 = *(v44 - 8);
  __chkstk_darwin(v44);
  v123 = &v111 - v45;
  v130 = v46;
  v139 = type metadata accessor for ModifiedContent();
  v136 = *(v139 - 8);
  v47 = __chkstk_darwin(v139);
  v138 = &v111 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v122 = &v111 - v50;
  __chkstk_darwin(v49);
  v137 = &v111 - v51;
  v52 = type metadata accessor for AccessibilityTraits();
  v115 = *(v52 - 8);
  v116 = v52;
  __chkstk_darwin(v52);
  v114 = &v111 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1000024C4(&qword_100223418, &qword_1001B7350);
  v54 = __chkstk_darwin(v150);
  v129 = &v111 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v113 = &v111 - v57;
  __chkstk_darwin(v56);
  v151 = &v111 - v58;
  v59 = v152[5];
  v179 = v152[4];
  v180[0] = v59;
  *(v180 + 9) = *(v152 + 89);
  v60 = v152[1];
  v175 = *v152;
  v176 = v60;
  v61 = v152[3];
  v177 = v152[2];
  v178 = v61;
  *&v161 = v153;
  v63 = v148;
  v62 = v149;
  *(&v161 + 1) = v148;
  *&v162 = v154;
  *(&v162 + 1) = v149;
  v64 = type metadata accessor for PlaylistViewModel(0, &v161);
  sub_1000A8318(v64);
  v65 = Text.init(_:tableName:bundle:comment:)();
  v67 = v66;
  LOBYTE(v32) = v68;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v69 = Text.font(_:)();
  v111 = v70;
  v112 = v69;
  LOBYTE(v28) = v71;
  v73 = v72;
  v74 = v152;

  sub_100017398(v65, v67, v32 & 1);

  LOBYTE(v41) = static Edge.Set.leading.getter();
  v76 = v153;
  v75 = v154;
  *&v161 = v153;
  *(&v161 + 1) = v63;
  *&v162 = v154;
  *(&v162 + 1) = v62;
  v77 = type metadata accessor for PlaylistModule(0, &v161);
  sub_100147F64(v77);
  EdgeInsets.init(_all:)();
  v166 = v28 & 1;
  v165 = 0;
  *&v157 = v112;
  *(&v157 + 1) = v111;
  LOBYTE(v158) = v28 & 1;
  *(&v158 + 1) = v73;
  LOBYTE(v159) = v41;
  *(&v159 + 1) = v78;
  *&v160[0] = v79;
  *(&v160[0] + 1) = v80;
  *&v160[1] = v81;
  BYTE8(v160[1]) = 0;
  sub_1000024C4(&qword_100223488, &unk_1001B73B0);
  sub_10005D968();
  v82 = v113;
  View.accessibilityIdentifier(_:)();
  v163 = v159;
  v164[0] = v160[0];
  *(v164 + 9) = *(v160 + 9);
  v161 = v157;
  v162 = v158;
  v83 = v140;
  sub_1000050C4(&v161, &qword_100223488, &unk_1001B73B0);
  v84 = v114;
  static AccessibilityTraits.isHeader.getter();
  ModifiedContent<>.accessibility(addTraits:)();
  (*(v115 + 8))(v84, v116);
  sub_1000050C4(v82, &qword_100223418, &qword_1001B7350);
  v85 = static Axis.Set.horizontal.getter();
  v155[2] = v76;
  v155[3] = v148;
  v155[4] = v75;
  v155[5] = v149;
  v86 = v117;
  v155[6] = v74;
  sub_1000E7A24(v85, sub_10014CE90, v155, v119, v118);
  static ScrollIndicatorVisibility.hidden.getter();
  sub_1000024C4(&qword_1002245D0, &unk_1001BC9C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v82) = static Axis.Set.vertical.getter();
  *(inited + 32) = v82;
  v88 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v88;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v82)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v88)
  {
    Axis.Set.init(rawValue:)();
  }

  v89 = v126;
  v90 = v133;
  View.scrollIndicators(_:axes:)();
  (*(v142 + 8))(v83, v143);
  (*(v131 + 8))(v86, v90);
  static Edge.Set.leading.getter();
  sub_100147F64(v77);
  v154 = v77;
  v91 = v144;
  static ContentMarginPlacement.scrollContent.getter();
  v92 = v125;
  v93 = v135;
  View.contentMargins(_:_:for:)();
  v94 = v146;
  v95 = *(v145 + 8);
  v95(v91, v146);
  (*(v132 + 8))(v89, v93);
  static Edge.Set.trailing.getter();
  sub_100147F64(v154);
  static ContentMarginPlacement.scrollContent.getter();
  v97 = v123;
  v96 = v124;
  v98 = v134;
  View.contentMargins(_:_:for:)();
  v95(v91, v94);
  (*(v128 + 8))(v92, v98);
  *&v157 = v98;
  *(&v157 + 1) = v96;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = v122;
  v101 = v130;
  View.accessibilityIdentifier(_:)();
  (*(v127 + 8))(v97, v101);
  v156[2] = v99;
  v156[3] = v141;
  v102 = v139;
  v103 = swift_getWitnessTable();
  v104 = v137;
  sub_1000EE87C();
  v105 = v136;
  v106 = *(v136 + 8);
  v106(v100, v102);
  v107 = v151;
  v108 = v129;
  sub_10000BEB8(v151, v129, &qword_100223418, &qword_1001B7350);
  *&v157 = v108;
  v109 = v138;
  (*(v105 + 16))(v138, v104, v102);
  *(&v157 + 1) = v109;
  v156[0] = v150;
  v156[1] = v102;
  v155[7] = sub_100150CC8(&qword_1002234B0, &qword_100223418, &qword_1001B7350, sub_10005D968);
  v155[8] = v103;
  sub_1000E76FC(&v157, 2uLL, v156);
  v106(v104, v102);
  sub_1000050C4(v107, &qword_100223418, &qword_1001B7350);
  v106(v109, v102);
  return sub_1000050C4(v108, &qword_100223418, &qword_1001B7350);
}

uint64_t sub_100149A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v34 = a2;
  v36 = a1;
  v37 = a6;
  type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  swift_getWitnessTable();
  type metadata accessor for Button();
  v28 = type metadata accessor for PlainButtonStyle();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v30 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v25[0] = type metadata accessor for ForEach();
  v32 = a3;
  type metadata accessor for Array();
  v33 = a5;
  v11 = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v11, v12, v13);
  swift_getWitnessTable();
  v14 = type metadata accessor for Button();
  v26 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v25[1] = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  v55 = &protocol witness table for String;
  type metadata accessor for ForEach();
  v29 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v48 = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v51 = v14;
  v52 = v28;
  v53 = v26;
  v54 = v27;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v50;
  v45 = swift_getWitnessTable();
  v43 = v15;
  v44 = swift_getWitnessTable();
  swift_getWitnessTable();
  v16 = type metadata accessor for HStack();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v25 - v21;
  v38 = v34;
  v39 = v32;
  v40 = v35;
  v41 = v33;
  v42 = v36;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  sub_1000EE87C();
  v23 = *(v17 + 8);
  v23(v20, v16);
  sub_1000EE87C();
  return (v23)(v22, v16);
}

uint64_t sub_10014A09C@<X0>(unsigned __int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v114 = a6;
  v115 = a5;
  v104 = a2;
  v9 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v105 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v124 = &unk_1001C0E50;
  swift_getWitnessTable();
  v13 = type metadata accessor for Button();
  v14 = type metadata accessor for PlainButtonStyle();
  v123 = &protocol conformance descriptor for Button<A>;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v121 = WitnessTable;
  v122 = v13;
  v119 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  swift_getOpaqueTypeMetadata2();
  v118 = type metadata accessor for AccessibilityAttachmentModifier();
  v113 = &protocol conformance descriptor for [A];
  v101 = v9;
  *&v156 = v9;
  *(&v156 + 1) = &type metadata for String;
  v120 = type metadata accessor for ModifiedContent();
  *&v157 = v120;
  *(&v157 + 1) = swift_getWitnessTable();
  v97 = *(&v157 + 1);
  *&v158 = &protocol witness table for String;
  v17 = type metadata accessor for ForEach();
  KeyPath = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v99 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v98 = v93 - v20;
  v21 = v104;
  *&v156 = v104;
  *(&v156 + 1) = a3;
  *&v157 = a4;
  *(&v157 + 1) = v115;
  v108 = type metadata accessor for PlaylistModule(0, &v156);
  v102 = *(v108 - 8);
  v106 = *(v102 + 64);
  __chkstk_darwin(v108);
  v107 = v93 - v22;
  v23 = type metadata accessor for Array();
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v24, v25, v26);
  swift_getWitnessTable();
  v27 = type metadata accessor for Button();
  v116 = swift_getWitnessTable();
  v117 = v27;
  *&v156 = v27;
  *(&v156 + 1) = v14;
  v123 = v16;
  v124 = v14;
  *&v157 = v116;
  *(&v157 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  v28 = type metadata accessor for ModifiedContent();
  v29 = swift_getWitnessTable();
  v96 = v23;
  *&v156 = v23;
  v30 = v102;
  *(&v156 + 1) = &type metadata for String;
  *&v157 = v28;
  v118 = v28;
  v93[1] = v29;
  *(&v157 + 1) = v29;
  *&v158 = &protocol witness table for String;
  v31 = type metadata accessor for ForEach();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v95 = v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v94 = v93 - v35;
  v110 = v36;
  v119 = v17;
  v37 = v115;
  v38 = type metadata accessor for _ConditionalContent();
  v112 = *(v38 - 8);
  v113 = v38;
  __chkstk_darwin(v38);
  v111 = v93 - v39;
  v40 = a1[5];
  v160 = a1[4];
  v161[0] = v40;
  *(v161 + 9) = *(a1 + 89);
  v41 = a1[1];
  v156 = *a1;
  v157 = v41;
  v42 = a1[3];
  v158 = a1[2];
  v159 = v42;
  v43 = v21;
  v44 = v105;
  v150 = __PAIR128__(v105, v21);
  v109 = a4;
  *&v151 = a4;
  *(&v151 + 1) = v37;
  v45 = type metadata accessor for PlaylistViewModel(0, &v150);
  v46 = sub_1000A83A0(v45);
  v103 = v30 + 16;
  v47 = a1[5];
  v154 = a1[4];
  v155[0] = v47;
  *(v155 + 9) = *(a1 + 89);
  v48 = a1[1];
  v150 = *a1;
  v151 = v48;
  v49 = a1[3];
  v152 = a1[2];
  v153 = v49;
  if (v46)
  {
    v149 = sub_1000A8410(v45);
    __chkstk_darwin(v149);
    v50 = v43;
    v93[-4] = v43;
    v93[-3] = v44;
    v51 = v109;
    v91 = v109;
    v92 = v37;
    KeyPath = swift_getKeyPath();
    v101 = v32;
    v53 = v107;
    v52 = v108;
    (*(v30 + 16))(v107, a1, v108);
    v54 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = v50;
    *(v55 + 3) = v44;
    *(v55 + 4) = v51;
    *(v55 + 5) = v37;
    (*(v30 + 32))(&v55[v54], v53, v52);
    v145 = v117;
    v146 = v124;
    v147 = v116;
    v148 = v123;
    v115 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v129 = OpaqueTypeConformance2;
    v130 = v57;
    v58 = swift_getWitnessTable();
    v91 = v58;
    v59 = v95;
    ForEach<>.init(_:id:content:)();
    v128 = v58;
    v60 = v110;
    v61 = swift_getWitnessTable();
    v62 = v94;
    sub_1000EE87C();
    v63 = *(v101 + 8);
    v63(v59, v60);
    sub_1000EE87C();
    v145 = v122;
    v146 = v124;
    v147 = v121;
    v148 = v123;
    v126 = swift_getOpaqueTypeConformance2();
    v127 = v57;
    v125 = swift_getWitnessTable();
    v64 = v119;
    v65 = swift_getWitnessTable();
    v66 = v111;
    sub_10017387C(v59, v60, v64, v61, v65);
    v63(v59, v60);
    v63(v62, v60);
  }

  else
  {
    v149 = sub_1000A84DC(v45);
    __chkstk_darwin(v149);
    v67 = v43;
    v93[-4] = v43;
    v93[-3] = v44;
    v68 = v109;
    v91 = v109;
    v92 = v37;
    v96 = swift_getKeyPath();
    v70 = v107;
    v69 = v108;
    (*(v30 + 16))(v107, a1, v108);
    v71 = (*(v30 + 80) + 48) & ~*(v30 + 80);
    v72 = swift_allocObject();
    *(v72 + 2) = v67;
    *(v72 + 3) = v44;
    *(v72 + 4) = v68;
    *(v72 + 5) = v37;
    (*(v30 + 32))(&v72[v71], v70, v69);
    v145 = v122;
    v146 = v124;
    v147 = v121;
    v148 = v123;
    v115 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    v143 = v73;
    v144 = v74;
    v75 = swift_getWitnessTable();
    v91 = v75;
    v76 = v99;
    ForEach<>.init(_:id:content:)();
    v142 = v75;
    v77 = v119;
    v78 = swift_getWitnessTable();
    v79 = v98;
    sub_1000EE87C();
    v80 = *(KeyPath + 8);
    v80(v76, v77);
    sub_1000EE87C();
    v145 = v117;
    v146 = v124;
    v147 = v116;
    v148 = v123;
    v140 = swift_getOpaqueTypeConformance2();
    v141 = v74;
    v139 = swift_getWitnessTable();
    v81 = v110;
    v82 = swift_getWitnessTable();
    v66 = v111;
    sub_100173974(v76, v81, v77, v82, v78);
    v80(v76, v77);
    v80(v79, v77);
  }

  v84 = v123;
  v83 = v124;
  v145 = v117;
  v146 = v124;
  v147 = v116;
  v148 = v123;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v137 = v85;
  v138 = v86;
  v136 = swift_getWitnessTable();
  v87 = swift_getWitnessTable();
  v145 = v122;
  v146 = v83;
  v147 = v121;
  v148 = v84;
  v134 = swift_getOpaqueTypeConformance2();
  v135 = v86;
  v133 = swift_getWitnessTable();
  v88 = swift_getWitnessTable();
  v131 = v87;
  v132 = v88;
  v89 = v113;
  swift_getWitnessTable();
  sub_1000EE87C();
  return (*(v112 + 8))(v66, v89);
}

uint64_t sub_10014ADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v83 = a4;
  v84 = a6;
  v85 = a2;
  v88 = a7;
  v89 = a1;
  v11 = type metadata accessor for PlainButtonStyle();
  v69 = v11;
  v87 = *(v11 - 8);
  __chkstk_darwin(v11);
  v86 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a3;
  v98 = a4;
  v99 = a5;
  v100 = a6;
  v80 = type metadata accessor for PlaylistModule(0, &v97);
  v13 = *(v80 - 8);
  v82 = *(v13 + 64);
  v14 = __chkstk_darwin(v80);
  v16 = &v62 - v15;
  v17 = *(a3 - 8);
  v75 = *(v17 + 64);
  __chkstk_darwin(v14);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v78 = type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  WitnessTable = swift_getWitnessTable();
  v23 = type metadata accessor for Button();
  v81 = *(v23 - 8);
  __chkstk_darwin(v23);
  v71 = &v62 - v24;
  v26 = v25;
  v70 = v25;
  v27 = swift_getWitnessTable();
  v67 = v27;
  v66 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v97 = v26;
  v98 = v11;
  v99 = v27;
  v100 = v66;
  v73 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v64 = &v62 - v28;
  type metadata accessor for AccessibilityAttachmentModifier();
  v76 = type metadata accessor for ModifiedContent();
  v79 = *(v76 - 8);
  v29 = __chkstk_darwin(v76);
  v65 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v72 = &v62 - v31;
  v32 = v17;
  (*(v17 + 16))(v19, v89, a3);
  v33 = v13;
  v34 = *(v13 + 16);
  v35 = v16;
  v36 = v80;
  v34(v16, v85, v80);
  v37 = v32;
  v38 = (*(v32 + 80) + 48) & ~*(v32 + 80);
  v39 = (v75 + *(v33 + 80) + v38) & ~*(v33 + 80);
  v40 = swift_allocObject();
  v41 = a3;
  *(v40 + 2) = a3;
  v42 = v83;
  *(v40 + 3) = v83;
  *(v40 + 4) = a5;
  v43 = a5;
  v44 = v84;
  *(v40 + 5) = v84;
  v45 = &v40[v38];
  v46 = v41;
  (*(v37 + 32))(v45, v63);
  (*(v33 + 32))(&v40[v39], v35, v36);
  v90 = v46;
  v91 = v42;
  v92 = v43;
  v93 = v44;
  v94 = v89;
  v47 = v71;
  Button.init(action:label:)();
  v48 = v86;
  PlainButtonStyle.init()();
  v49 = v64;
  v50 = v70;
  v51 = v69;
  v52 = v67;
  v53 = v66;
  View.buttonStyle<A>(_:)();
  (*(v87 + 8))(v48, v51);
  (*(v81 + 8))(v47, v50);
  v97 = v50;
  v98 = v51;
  v99 = v52;
  v100 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v65;
  v56 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v74 + 8))(v49, v56);
  v57 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v95 = OpaqueTypeConformance2;
  v96 = v57;
  v58 = v76;
  swift_getWitnessTable();
  v59 = v72;
  sub_1000EE87C();
  v60 = *(v79 + 8);
  v60(v55, v58);
  sub_1000EE87C();
  return (v60)(v59, v58);
}

uint64_t sub_10014B598(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a6;
  v34 = a4;
  v37 = type metadata accessor for OpenURLAction();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v32 - v19;
  (*(a5 + 96))(a3, a5);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000050C4(v13, &qword_1002214F8, &qword_1001B3D20);
  }

  (*(v15 + 32))(v20, v13, v14);
  v44 = __PAIR128__(v34, a3);
  v33 = a3;
  v22 = v34;
  *&v45 = a5;
  v23 = v35;
  *(&v45 + 1) = v35;
  type metadata accessor for PlaylistModule(0, &v44);
  sub_100039C90(v10);
  v24 = *(a2 + 80);
  v48 = *(a2 + 64);
  *v49 = v24;
  *&v49[9] = *(a2 + 89);
  v25 = *(a2 + 16);
  v44 = *a2;
  v45 = v25;
  v26 = *(a2 + 48);
  v46 = *(a2 + 32);
  v47 = v26;
  *&v38 = v33;
  *(&v38 + 1) = v22;
  *&v39 = a5;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistViewModel(0, &v38);
  sub_1000A85A8(v20, v18);
  OpenURLAction.callAsFunction(_:)();
  v27 = *(v15 + 8);
  v27(v18, v14);
  (*(v36 + 8))(v10, v37);
  v28 = *(a2 + 80);
  v42 = *(a2 + 64);
  v43[0] = v28;
  *(v43 + 9) = *(a2 + 89);
  v29 = *(a2 + 16);
  v38 = *a2;
  v39 = v29;
  v30 = *(a2 + 32);
  v41 = *(a2 + 48);
  v40 = v30;
  if (*(a2 + 112))
  {

    sub_1000A8634(v31);

    return (v27)(v20, v14);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10014B9A4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  __chkstk_darwin(v6 - 8);
  v28 = &v24 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for PlaylistItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  v16 = (*(a2 + 64))(a1, a2);
  v24 = v17;
  v25 = v16;
  v18 = (*(a2 + 72))(a1, a2);
  v20 = v19;
  v21 = v28;
  (*(a2 + 88))(a1, a2);
  sub_10014BC24(v25, v24, v18, v20, v21, v27, AssociatedConformanceWitness, v13);
  swift_getWitnessTable();
  sub_1000EE87C();
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_1000EE87C();
  return (v22)(v15, v9);
}

uint64_t sub_10014BC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  v10 = *(type metadata accessor for PlaylistItem(0, a6, a7, a4) + 40);
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a8[v10], a5, v11);
}

uint64_t sub_10014BCBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v82 = a5;
  v81 = a3;
  v86 = a1;
  v87 = a2;
  v85 = a7;
  v11 = type metadata accessor for PlainButtonStyle();
  v67 = v11;
  v84 = *(v11 - 8);
  __chkstk_darwin(v11);
  v83 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a3;
  v97 = a4;
  v98 = a5;
  v99 = a6;
  v72 = a6;
  v74 = type metadata accessor for PlaylistModule(0, &v96);
  v13 = *(v74 - 8);
  v80 = *(v13 + 64);
  v14 = __chkstk_darwin(v74);
  v16 = &v60 - v15;
  v17 = *(a4 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77 = type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  WitnessTable = swift_getWitnessTable();
  v22 = type metadata accessor for Button();
  v79 = *(v22 - 8);
  __chkstk_darwin(v22);
  v69 = &v60 - v23;
  v25 = v24;
  v68 = v24;
  v26 = swift_getWitnessTable();
  v65 = v26;
  v64 = sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v96 = v25;
  v97 = v11;
  v98 = v26;
  v99 = v64;
  v71 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v73 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v62 = &v60 - v27;
  type metadata accessor for AccessibilityAttachmentModifier();
  v75 = type metadata accessor for ModifiedContent();
  v78 = *(v75 - 8);
  v28 = __chkstk_darwin(v75);
  v63 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v70 = &v60 - v30;
  (*(v17 + 16))(&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v86, a4);
  v31 = v13;
  v32 = *(v13 + 16);
  v33 = v16;
  v34 = v74;
  v32(v16, v87, v74);
  v35 = v17;
  v36 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v37 = (v18 + *(v31 + 80) + v36) & ~*(v31 + 80);
  v38 = swift_allocObject();
  v39 = v81;
  *(v38 + 2) = v81;
  *(v38 + 3) = a4;
  v40 = a4;
  v41 = v82;
  v42 = v72;
  *(v38 + 4) = v82;
  *(v38 + 5) = v42;
  v43 = &v38[v36];
  v44 = v40;
  (*(v35 + 32))(v43, v61);
  (*(v31 + 32))(&v38[v37], v33, v34);
  v88 = v39;
  v89 = v44;
  v90 = v41;
  v91 = v42;
  v92 = v86;
  v93 = v87;
  v45 = v69;
  Button.init(action:label:)();
  v46 = v83;
  PlainButtonStyle.init()();
  v47 = v62;
  v48 = v68;
  v49 = v67;
  v50 = v65;
  v51 = v64;
  View.buttonStyle<A>(_:)();
  (*(v84 + 8))(v46, v49);
  (*(v79 + 8))(v45, v48);
  v96 = v48;
  v97 = v49;
  v98 = v50;
  v99 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v63;
  v54 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();
  (*(v73 + 8))(v47, v54);
  v55 = sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v94 = OpaqueTypeConformance2;
  v95 = v55;
  v56 = v75;
  swift_getWitnessTable();
  v57 = v70;
  sub_1000EE87C();
  v58 = *(v78 + 8);
  v58(v53, v56);
  sub_1000EE87C();
  return (v58)(v57, v56);
}

uint64_t sub_10014C4C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v33 = a3;
  v9 = type metadata accessor for OpenURLAction();
  v35 = *(v9 - 8);
  v36 = v9;
  __chkstk_darwin(v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v12 - 8);
  v14 = &v31 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v31 - v20;
  (*(a6 + 64))(a4, a6);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_1000050C4(v14, &qword_1002214F8, &qword_1001B3D20);
  }

  (*(v16 + 32))(v21, v14, v15);
  v23 = a6;
  v32 = a6;
  v24 = a4;
  v25 = v33;
  *&v38 = v33;
  *(&v38 + 1) = v24;
  v26 = v34;
  *&v39 = v34;
  *(&v39 + 1) = v23;
  type metadata accessor for PlaylistModule(0, &v38);
  sub_100039C90(v11);
  v27 = a2[5];
  v42 = a2[4];
  v43[0] = v27;
  *(v43 + 9) = *(a2 + 89);
  v28 = a2[1];
  v38 = *a2;
  v39 = v28;
  v29 = a2[3];
  v40 = a2[2];
  v41 = v29;
  v37[0] = v25;
  v37[1] = v24;
  v37[2] = v26;
  v37[3] = v32;
  type metadata accessor for PlaylistViewModel(0, v37);
  sub_1000A85A8(v21, v19);
  OpenURLAction.callAsFunction(_:)();
  v30 = *(v16 + 8);
  v30(v19, v15);
  (*(v35 + 8))(v11, v36);
  return (v30)(v21, v15);
}

uint64_t sub_10014C7E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v32 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = AssociatedTypeWitness;
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for PlaylistItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v31 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = (*(a3 + 48))(a2, a3);
  v27 = v19;
  v28 = v18;
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v26 = v20;
  v22 = *(a3 + 56);

  v22(a2, a3);
  sub_10014BC24(v28, v27, v26, v21, v10, v30, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  sub_1000EE87C();
  v23 = *(v31 + 8);
  v23(v15, v12);
  sub_1000EE87C();
  return (v23)(v17, v12);
}

uint64_t sub_10014CA54@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = a1[5];
  *(a8 + 64) = a1[4];
  *(a8 + 80) = v15;
  *(a8 + 89) = *(a1 + 89);
  v16 = a1[1];
  *a8 = *a1;
  *(a8 + 16) = v16;
  v17 = a1[3];
  *(a8 + 32) = a1[2];
  *(a8 + 48) = v17;
  type metadata accessor for RemoteViewConfiguration();
  sub_10014FE30(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration, &unk_1001BE090);
  *(a8 + 112) = EnvironmentObject.init()();
  *(a8 + 120) = v18;
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v19 = type metadata accessor for PlaylistModule(0, v23);
  v20 = *(v19 + 56);
  *(a8 + v20) = swift_getKeyPath();
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  result = swift_storeEnumTagMultiPayload();
  v22 = a8 + *(v19 + 60);
  *v22 = a2;
  *(v22 + 8) = a3 & 1;
  return result;
}

void sub_10014CBA0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v10 = *(a1 + 16);
  v11 = v1;
  v2 = type metadata accessor for PlaylistViewModel(319, &v10);
  if (v3 <= 0x3F)
  {
    *&v10 = v2;
    sub_100017044(319);
    if (v5 <= 0x3F)
    {
      *(&v10 + 1) = v4;
      sub_100029A5C(319);
      if (v7 <= 0x3F)
      {
        *&v11 = v6;
        sub_1001506A8(319, &qword_100222318, &type metadata for Bool, &type metadata accessor for Environment);
        if (v9 <= 0x3F)
        {
          *(&v11 + 1) = v8;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10014CC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10014CD68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002222A0, &unk_1001B5960);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10014CEC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 24));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_10014CF18(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_10014CF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 16) + 56))(*(a1 + a2 - 32));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_10014CF98()
{
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v2 = type metadata accessor for PlaylistModule(0, v7);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));

  v4 = *(v2 + 56);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + *(v2 + 60)), *(v3 + *(v2 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D134(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for PlaylistModule(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_10014D1FC()
{
  v1 = *(v0 + 32);
  v3 = *(*(v0 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v12[0] = *(v0 + 16);
  v2 = *&v12[0];
  v12[1] = v1;
  v6 = type metadata accessor for PlaylistModule(0, v12);
  v7 = (v5 + v4 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  (*(v3 + 8))(v0 + v5, v2);
  v8 = v0 + v7;

  v9 = *(v6 + 56);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  sub_10001BC5C(*(v8 + *(v6 + 60)), *(v8 + *(v6 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D3FC()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*(v0[2] - 8) + 80) + 48) & ~*(*(v0[2] - 8) + 80);
  v6 = *(*(v0[2] - 8) + 64);
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v7 = *(type metadata accessor for PlaylistModule(0, v10) - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_10014B598(v0 + v5, v8, v1, v2, v3, v4);
}

uint64_t sub_10014D52C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 24);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v14 = *(v0 + 16);
  v7 = (v5 + 48) & ~v5;
  v15 = v2;
  v16 = v1;
  v8 = type metadata accessor for PlaylistModule(0, &v14);
  v9 = (v7 + v6 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  (*(v4 + 8))(v0 + v7, v3);
  v10 = v0 + v9;

  v11 = *(v8 + 56);
  sub_1000024C4(qword_100221928, &unk_1001B65E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  sub_10001BC5C(*(v10 + *(v8 + 60)), *(v10 + *(v8 + 60) + 8));
  return swift_deallocObject();
}

uint64_t sub_10014D73C()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v6 = *(*(v2 - 8) + 64);
  v10[0] = v0[2];
  v1 = v10[0];
  v10[1] = v2;
  v10[2] = v3;
  v10[3] = v4;
  v7 = *(type metadata accessor for PlaylistModule(0, v10) - 8);
  v8 = (v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80)));

  return sub_10014C4C4(v0 + v5, v8, v1, v2, v3, v4);
}

uint64_t sub_10014D84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v57);
  v56 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = *(a1 + 24);
  v44 = *(a1 + 16);
  v45 = v4;
  type metadata accessor for PlaylistArtworkView(255, v44, v4, v5);
  sub_10000460C(&qword_100229AA8, &qword_1001C0EA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v47 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  v13 = type metadata accessor for ModifiedContent();
  v51 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  v48 = v13;
  v16 = type metadata accessor for ModifiedContent();
  v53 = *(v16 - 8);
  __chkstk_darwin(v16);
  v50 = &v43 - v17;
  v54 = v18;
  v19 = type metadata accessor for ModifiedContent();
  v55 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v49 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v43 - v22;
  static HorizontalAlignment.center.getter();
  v59 = v44;
  v60 = v45;
  v61 = v46;
  VStack.init(alignment:spacing:content:)();
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v24 = v15;
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, v6);
  v25 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v70 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v68 = WitnessTable;
  v69 = &protocol witness table for _FrameLayout;
  v26 = swift_getWitnessTable();
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v47 + 8))(v12, v10);
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v27 = qword_1002390D8;
  v28 = *(v57 + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  v31 = v56;
  (*(*(v30 - 8) + 104))(v56 + v28, v29, v30);
  *v31 = v27;
  v31[1] = v27;
  v32 = sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  v66 = v26;
  v67 = v32;
  v33 = v48;
  v34 = swift_getWitnessTable();
  sub_10014FE30(&qword_100228C80, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  v35 = v50;
  View.clipShape<A>(_:style:)();
  sub_100039768(v31);
  (*(v51 + 8))(v24, v33);
  static Edge.Set.all.getter();
  v36 = sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
  v64 = v34;
  v65 = v36;
  v37 = v54;
  v38 = swift_getWitnessTable();
  v39 = v49;
  View.padding(_:_:)();
  (*(v53 + 8))(v35, v37);
  v62 = v38;
  v63 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  v40 = v52;
  sub_1000EE87C();
  v41 = *(v55 + 8);
  v41(v39, v19);
  sub_1000EE87C();
  return (v41)(v40, v19);
}

uint64_t sub_10014E07C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v39 = sub_1000024C4(&qword_100229AA8, &qword_1001C0EA0);
  v7 = __chkstk_darwin(v39);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v36 - v9;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v16 = type metadata accessor for PlaylistArtworkView(0, a2, a3, v15);
  v36 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v37 = &v36 - v20;
  v22 = type metadata accessor for PlaylistItem(0, a2, a3, v21);
  (*(v12 + 16))(v14, a1 + *(v22 + 40), v11);
  sub_10014E474(v14, a2, v19, 240.0, a3);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C();
  v23 = v36;
  v24 = *(v36 + 8);
  v24(v19, v16);
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v25 = sub_1000024C4(&qword_100229AB0, &qword_1001C0EA8);
  sub_10014E524(a1, &v10[*(v25 + 44)]);
  LOBYTE(v14) = static Edge.Set.horizontal.getter();
  v26 = &v10[*(sub_1000024C4(&qword_100229AB8, &qword_1001C0EB0) + 36)];
  *v26 = v14;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  LOBYTE(v14) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v27 = v39;
  v28 = &v10[*(v39 + 36)];
  *v28 = v14;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v37;
  (*(v23 + 16))(v19, v37, v16);
  v45[0] = v19;
  v34 = v40;
  sub_10000BEB8(v10, v40, &qword_100229AA8, &qword_1001C0EA0);
  v45[1] = v34;
  v44[0] = v16;
  v44[1] = v27;
  v42 = WitnessTable;
  v43 = sub_10014FE78();
  sub_1000E76FC(v45, 2uLL, v44);
  sub_1000050C4(v10, &qword_100229AA8, &qword_1001C0EA0);
  v24(v33, v16);
  sub_1000050C4(v34, &qword_100229AA8, &qword_1001C0EA0);
  return (v24)(v19, v16);
}

uint64_t sub_10014E474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, uint64_t a5@<X2>)
{
  v10 = type metadata accessor for Optional();
  (*(*(v10 - 8) + 32))(a3, a1, v10);
  v12 = type metadata accessor for PlaylistArtworkView(0, a2, a5, v11);
  *(a3 + *(v12 + 36)) = a4;
  v13 = a3 + *(v12 + 40);
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_10014E524@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1000024C4(&qword_100229AE0, &qword_1001C0EC0);
  v4 = __chkstk_darwin(v3 - 8);
  v81 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v67 - v6;
  v7 = sub_1000024C4(&qword_100229AE8, &qword_1001C0EC8);
  __chkstk_darwin(v7);
  v9 = &v67 - v8;
  v10 = sub_1000024C4(&qword_100229AF0, &qword_1001C0ED0);
  v76 = *(v10 - 8);
  v77 = v10;
  v11 = __chkstk_darwin(v10);
  v79 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v67 - v14;
  v75 = a1;
  v16 = *a1;
  v17 = a1[1];
  v83 = v16;
  v84 = v17;
  v20 = sub_10001877C(v13, v18, v19);

  v70 = v20;
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v26 = Text.font(_:)();
  v28 = v27;
  LODWORD(v74) = v29;
  v78 = v30;

  sub_100017398(v21, v23, v25 & 1);

  KeyPath = swift_getKeyPath();
  v32 = &v9[*(v7 + 36)];
  v33 = sub_1000024C4(&qword_100229AF8, &qword_1001C0F08);
  v34 = *(v33 + 28);
  v35 = enum case for Text.TruncationMode.tail(_:);
  v36 = type metadata accessor for Text.TruncationMode();
  v37 = *(v36 - 8);
  v72 = *(v37 + 104);
  v73 = v36;
  v71 = v37 + 104;
  v72(v32 + v34, v35);
  *v32 = swift_getKeyPath();
  *v9 = v26;
  *(v9 + 1) = v28;
  v9[16] = v74 & 1;
  *(v9 + 3) = v78;
  *(v9 + 4) = KeyPath;
  v38 = 1;
  *(v9 + 5) = 1;
  v9[48] = 0;
  v39 = sub_1001500B4();
  v78 = v15;
  v74 = v7;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v9, &qword_100229AE8, &qword_1001C0EC8);
  v40 = v75[3];
  if (v40)
  {
    v67 = v39;
    v68 = v35;
    v69 = v33;
    v83 = v75[2];
    v84 = v40;

    v41 = Text.init<A>(_:)();
    v43 = v42;
    v45 = v44;
    static Font.subheadline.getter();
    v46 = Text.font(_:)();
    v48 = v47;
    v50 = v49;

    sub_100017398(v41, v43, v45 & 1);

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    v83 = qword_1002390B8;

    v51 = Text.foregroundStyle<A>(_:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    sub_100017398(v46, v48, v50 & 1);

    v58 = swift_getKeyPath();
    v59 = &v9[*(v74 + 36)];
    (v72)(v59 + *(v69 + 28), v68, v73);
    *v59 = swift_getKeyPath();
    *v9 = v51;
    *(v9 + 1) = v53;
    v9[16] = v55 & 1;
    *(v9 + 3) = v57;
    *(v9 + 4) = v58;
    *(v9 + 5) = 1;
    v9[48] = 0;
    v60 = v79;
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v9, &qword_100229AE8, &qword_1001C0EC8);
    v61 = v80;
    sub_10015016C(v60, v80);
    v38 = 0;
  }

  else
  {
    v60 = v79;
    v61 = v80;
  }

  (*(v76 + 56))(v61, v38, 1, v77);
  v62 = v78;
  sub_10000BEB8(v78, v60, &qword_100229AF0, &qword_1001C0ED0);
  v63 = v81;
  sub_10000BEB8(v61, v81, &qword_100229AE0, &qword_1001C0EC0);
  v64 = v82;
  sub_10000BEB8(v60, v82, &qword_100229AF0, &qword_1001C0ED0);
  v65 = sub_1000024C4(qword_100229B10, &qword_1001C0F40);
  sub_10000BEB8(v63, v64 + *(v65 + 48), &qword_100229AE0, &qword_1001C0EC0);
  sub_1000050C4(v61, &qword_100229AE0, &qword_1001C0EC0);
  sub_1000050C4(v62, &qword_100229AF0, &qword_1001C0ED0);
  sub_1000050C4(v63, &qword_100229AE0, &qword_1001C0EC0);
  return sub_1000050C4(v60, &qword_100229AF0, &qword_1001C0ED0);
}

uint64_t sub_10014EB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29 = a2;
  v5 = type metadata accessor for EnvironmentValues();
  v28 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  (*(v10 + 16))(&v28 - v11, v3, v9);
  v13 = *(v8 - 8);
  v14 = 1;
  result = (*(v13 + 48))(v12, 1, v8);
  if (result == 1)
  {
    v8 = v9;
    v16 = v29;
LABEL_16:
    (*(v10 + 8))(v12, v8);
    v27 = type metadata accessor for URL();
    return (*(*(v27 - 8) + 56))(v16, v14, 1, v27);
  }

  v17 = *(v3 + *(a1 + 36));
  v18 = v3 + *(a1 + 40);
  v19 = *v18;
  v20 = *(v18 + 8);
  if (v20 == 1)
  {
    v21 = *v18;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v21 = v30;
  }

  v23 = v17 * v21;
  if (COERCE__INT64(fabs(v17 * v21)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v20)
  {
    v24 = *&v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v19, 0);
    result = (*(v28 + 8))(v7, v5);
    v24 = v30;
  }

  v16 = v29;
  v26 = v17 * v24;
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v26 < 9.22337204e18)
  {
    (*(*(a1 + 24) + 40))(v23, v26, 1, v8);
    v14 = 0;
    v10 = v13;
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_10014EFD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  (*(v6 + 16))(&v13 - v7, v2, v5);
  v9 = *(v4 - 8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v10 = (*(*(a1 + 24) + 24))(v4);
    (*(v9 + 8))(v8, v4);
    if (v10)
    {
      return Color.init(cgColor:)();
    }
  }

  v12 = [objc_opt_self() systemGray5Color];
  return Color.init(uiColor:)();
}

uint64_t sub_10014F184(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1000024C4(&qword_100229B98, &unk_1001C0FF8);
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_10014EB88(a1, v7);
  (*(v3 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(a1 + 16);
  (*(v3 + 32))(v12 + v11, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000024C4(&qword_100223280, &qword_1001B7100);
  sub_100057330();
  AsyncImage.init(url:scale:transaction:content:)();
  v13 = &v10[*(sub_1000024C4(&qword_100229BA0, &qword_1001C1008) + 36)];
  *v13 = 0x3FF0000000000000;
  *(v13 + 4) = 0;
  v10[*(v8 + 36)] = 1;
  sub_100150B40();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v10, &qword_100229B98, &unk_1001C0FF8);
}

void sub_10014F418(uint64_t a1@<X0>, void *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v22 = a2;
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AsyncImagePhase();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  if ((*(v12 + 88))(v14, v11) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
    v16 = Image.resizable(capInsets:resizingMode:)();
    (*(v8 + 8))(v10, v7);
    v23 = v16;
    v24 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v17 = v25;
    v18 = v26;
  }

  else
  {
    v19 = type metadata accessor for PlaylistArtworkView(0, a3, a4, v15);
    v23 = sub_10014EFD4(v19);
    v24 = 1;
    sub_1000024C4(&qword_100223298, &unk_1001BDBE0);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v17 = v25;
    v18 = v26;
    (*(v12 + 8))(v14, v11);
  }

  v20 = v22;
  *v22 = v17;
  *(v20 + 8) = v18;
}

void sub_10014F734(uint64_t a1)
{
  sub_1001506A8(319, qword_100226B30, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10014F7E8(uint64_t *a1)
{
  sub_10000460C(&qword_100223418, &qword_1001B7350);
  type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_10014FE30(&qword_100222DD0, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for Array();
  v4 = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistItem(255, v4, v5, v6);
  swift_getWitnessTable();
  type metadata accessor for Button();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  return swift_getWitnessTable();
}

uint64_t sub_10014FE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10014FE78()
{
  result = qword_100229AC0;
  if (!qword_100229AC0)
  {
    sub_10000460C(&qword_100229AA8, &qword_1001C0EA0);
    sub_10014FF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229AC0);
  }

  return result;
}

unint64_t sub_10014FF04()
{
  result = qword_100229AC8;
  if (!qword_100229AC8)
  {
    sub_10000460C(&qword_100229AB8, &qword_1001C0EB0);
    sub_10000BFFC(&qword_100229AD0, &qword_100229AD8, &qword_1001C0EB8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229AC8);
  }

  return result;
}

uint64_t sub_10014FFE8(uint64_t a1)
{
  v2 = type metadata accessor for Text.TruncationMode();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.truncationMode.setter();
}

unint64_t sub_1001500B4()
{
  result = qword_100229B00;
  if (!qword_100229B00)
  {
    sub_10000460C(&qword_100229AE8, &qword_1001C0EC8);
    sub_10001B3F8();
    sub_10000BFFC(&qword_100229B08, &qword_100229AF8, &qword_1001C0F08, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229B00);
  }

  return result;
}

uint64_t sub_10015016C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100229AF0, &qword_1001C0ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001501E4(uint64_t a1)
{
  type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    sub_1001506A8(319, &qword_100221C08, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100150290(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v7 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    if (v6 < 0xFE)
    {
      v19 = *((((&a1[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v19 > 1)
      {
        return (v19 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = (*(v4 + 48))(a1);
      if (v18 >= 2)
      {
        return v18 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_33;
  }

LABEL_29:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void sub_100150420(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v11;
  }

  v12 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v13 = (a3 - v10 + 255) >> 8;
    if (v12 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v12] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v12] = 0;
    }

    else if (v6)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      if (v9 < 0xFE)
      {
        v21 = ((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v21 + 8) = 0;
          *v21 = a2 - 255;
        }

        else
        {
          *(v21 + 8) = -a2;
        }
      }

      else if (v9 >= a2)
      {
        v22 = *(v7 + 56);

        v22();
      }

      else
      {
        if (v11 <= 3)
        {
          v18 = ~(-1 << (8 * v11));
        }

        else
        {
          v18 = -1;
        }

        if (v11)
        {
          v19 = v18 & (~v9 + a2);
          if (v11 <= 3)
          {
            v20 = v11;
          }

          else
          {
            v20 = 4;
          }

          bzero(a1, v11);
          if (v20 > 2)
          {
            if (v20 == 3)
            {
              *a1 = v19;
              a1[2] = BYTE2(v19);
            }

            else
            {
              *a1 = v19;
            }
          }

          else if (v20 == 1)
          {
            *a1 = v19;
          }

          else
          {
            *a1 = v19;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v16 = ~v10 + a2;
  bzero(a1, v12);
  if (v12 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v12 <= 3)
  {
    *a1 = v16;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v12] = v17;
      }

      else
      {
        *&a1[v12] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v12] = v17;
  }
}

void sub_1001506A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001506F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlaylistArtworkView(255, *a1, a1[1], a4);
  sub_10000460C(&qword_100229AA8, &qword_1001C0EA0);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221D58, &unk_1001B6980);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100221C80, &qword_1001B6990);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100221D50, &qword_100221D58, &unk_1001B6980, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100221D60, &qword_100221C80, &qword_1001B6990, &protocol conformance descriptor for _ClipEffect<A>);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100150974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for PlaylistArtworkView(0, v5, *(v4 + 24), a4);
  v7 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v8 = *(v5 - 8);
  if (!(*(v8 + 48))(v4 + v7, 1, v5))
  {
    (*(v8 + 8))(v4 + v7, v5);
  }

  sub_10001BC5C(*(v4 + v7 + *(v6 + 40)), *(v4 + v7 + *(v6 + 40) + 8));

  return swift_deallocObject();
}

void sub_100150AA4(uint64_t a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for PlaylistArtworkView(0, v6, v7, a2);

  sub_10014F418(a1, a3, v6, v7);
}

unint64_t sub_100150B40()
{
  result = qword_100229BA8;
  if (!qword_100229BA8)
  {
    sub_10000460C(&qword_100229B98, &unk_1001C0FF8);
    v3 = sub_100150BCC();
    sub_10005DDFC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BA8);
  }

  return result;
}

unint64_t sub_100150BCC()
{
  result = qword_100229BB0;
  if (!qword_100229BB0)
  {
    sub_10000460C(&qword_100229BA0, &qword_1001C1008);
    sub_10000BFFC(&qword_100229BB8, &qword_100229BC0, &unk_1001C1010, &protocol conformance descriptor for AsyncImage<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229BB0);
  }

  return result;
}

uint64_t sub_100150CC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2, a3);
    a4();
    sub_10014FE30(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100150D98(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000024C4(&qword_100229BD8, &qword_1001C1090);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100229BE0, &qword_1001C1098);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v13 = type metadata accessor for DesignTimeTime(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_100150F84(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000024C4(&qword_100229BD8, &qword_1001C1090);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000024C4(&qword_100229BE0, &qword_1001C1098);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v13 = type metadata accessor for DesignTimeTime(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v15 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for DesignTimeMusicEvent(uint64_t a1)
{
  result = qword_100229C40;
  if (!qword_100229C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001511A8(uint64_t a1)
{
  sub_1001513C4(319, &qword_100229C50, type metadata accessor for DesignTimeEventAttribution, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001513C4(319, &qword_100229C58, type metadata accessor for DesignTimeTicketAttribution, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1001513C4(319, &qword_100229C60, type metadata accessor for DesignTimeTicket, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DesignTimeTime(319);
        if (v4 <= 0x3F)
        {
          sub_1001513C4(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100151428(319, &qword_100229C68, &type metadata for DesignTimeGenre);
            if (v6 <= 0x3F)
            {
              sub_100151428(319, &unk_100229C70, &type metadata for DesignTimePlaylist);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1001513C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100151428(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Array();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100151474@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v65 = &v60 - v5;
  v6 = type metadata accessor for UUID();
  v63 = *(v6 - 8);
  v64 = v6;
  __chkstk_darwin(v6);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000024C4(&qword_100229BE0, &qword_1001C1098);
  __chkstk_darwin(v8 - 8);
  v72 = &v60 - v9;
  v10 = sub_1000024C4(&qword_1002214F8, &qword_1001B3D20);
  v11 = __chkstk_darwin(v10 - 8);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v60 - v14;
  __chkstk_darwin(v13);
  v17 = &v60 - v16;
  v18 = sub_1000024C4(&qword_100229BD8, &qword_1001C1090);
  __chkstk_darwin(v18 - 8);
  v20 = (&v60 - v19);
  v21 = ResourceID.init(stringLiteral:)();
  v67 = v22;
  v68 = v21;
  URL.init(string:)();
  v23 = type metadata accessor for URL();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  result = v25(v17, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  *v20 = 0x746E6973646E6142;
  v20[1] = 0xEB000000006E776FLL;
  v27 = type metadata accessor for DesignTimeEventAttribution(0);
  v28 = v20 + *(v27 + 20);
  v71 = *(v24 + 32);
  v71(v28, v17, v23);
  v29 = *(*(v27 - 8) + 56);
  v61 = v20;
  v29(v20, 0, 1, v27);
  URL.init(string:)();
  result = v25(v15, 1, v23);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v30 = v72;
  *v72 = 0x746E6973646E6142;
  *(v30 + 1) = 0xEB000000006E776FLL;
  v31 = type metadata accessor for DesignTimeTicketAttribution(0);
  v71(&v30[*(v31 + 20)], v15, v23);
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  sub_1000024C4(&qword_100229E80, &qword_1001C11A0);
  v32 = type metadata accessor for DesignTimeTicket(0);
  v33 = (*(*(v32 - 8) + 80) + 32) & ~*(*(v32 - 8) + 80);
  v34 = swift_allocObject();
  v70 = xmmword_1001B49B0;
  *(v34 + 16) = xmmword_1001B49B0;
  v35 = v69;
  URL.init(string:)();
  result = v25(v35, 1, v23);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v36 = v34 + v33;
  v37 = v62;
  UUID.init()();
  UUID.uuidString.getter();
  v60 = v34;
  (*(v63 + 8))(v37, v64);
  *v36 = ResourceID.init(_:)();
  *(v36 + 8) = v38;
  strcpy((v36 + 16), "Ticketmaster");
  *(v36 + 29) = 0;
  *(v36 + 30) = -5120;
  v71((v36 + *(v32 + 24)), v35, v23);
  static Date.now.getter();
  static Date.distantFuture.getter();
  v39 = type metadata accessor for DesignTimeMusicEvent(0);
  DateInterval.init(start:end:)();
  type metadata accessor for DesignTimeTime(0);
  static TimeZone.current.getter();
  v71 = ResourceID.init(stringLiteral:)();
  v69 = v40;
  v64 = [objc_allocWithZone(CLLocation) initWithLatitude:40.7601873 longitude:-73.9799772];
  URL.init(string:)();
  v41 = sub_100011D1C();
  v65 = v42;
  v66 = v41;
  sub_1000024C4(&qword_100229E88, &qword_1001C11A8);
  v43 = swift_allocObject();
  *(v43 + 16) = v70;
  *(v43 + 32) = ResourceID.init(stringLiteral:)();
  *(v43 + 40) = v44;
  *(v43 + 48) = 7368528;
  *(v43 + 56) = 0xE300000000000000;
  v45 = sub_10006E96C();
  v62 = v46;
  v63 = v45;
  v48 = v47;
  v50 = v49;
  sub_1000024C4(&qword_100229E90, &unk_1001C11B0);
  v51 = swift_allocObject();
  *(v51 + 16) = v70;
  if (qword_100220C00 != -1)
  {
    swift_once();
  }

  v52 = *algn_100239128;
  *(v51 + 32) = qword_100239120;
  *(v51 + 40) = v52;
  v53 = v67;
  *a1 = v68;
  *(a1 + 8) = v53;
  *(a1 + 16) = 7368560;
  *(a1 + 24) = 0xE300000000000000;
  *(a1 + 32) = xmmword_1001C1020;
  *(a1 + 48) = 0xD000000000000011;
  *(a1 + 56) = 0x80000001001C81D0;
  sub_10001AE00(v61, a1 + v39[7], &qword_100229BD8, &qword_1001C1090);
  sub_10001AE00(v72, a1 + v39[8], &qword_100229BE0, &qword_1001C1098);
  *(a1 + v39[9]) = v60;
  v54 = a1 + v39[11];
  v55 = v69;
  *v54 = v71;
  *(v54 + 8) = v55;
  *(v54 + 16) = 0xD000000000000015;
  *(v54 + 24) = 0x80000001001C8210;
  *(v54 + 32) = v64;
  *(v54 + 40) = 0xD000000000000018;
  *(v54 + 48) = 0x80000001001C8230;
  *(v54 + 56) = xmmword_1001C1030;
  *(v54 + 72) = xmmword_1001C1040;
  *(v54 + 88) = xmmword_1001C1050;
  *(v54 + 104) = xmmword_1001C1060;
  *(v54 + 120) = xmmword_1001C1070;
  v56 = (a1 + v39[13]);
  v57 = v65;
  *v56 = v66;
  v56[1] = v57;
  *(a1 + v39[14]) = v43;
  v58 = (a1 + v39[15]);
  v59 = v62;
  *v58 = v63;
  v58[1] = v59;
  v58[2] = v48;
  v58[3] = v50;
  *(a1 + v39[16]) = v51;
}

uint64_t sub_100151D50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_100151DA0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a2 = *v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
}

uint64_t sub_100151E10@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

uint64_t sub_100151ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23 = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a2 + 96) = v22;
  *(a2 + 112) = v14;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 64) = v11;
  *(a2 + 80) = v4;
  v24 = *(v3 + 128);
  *(a2 + 128) = *(v3 + 128);
  *a2 = v13;
  *(a2 + 16) = v6;
  return sub_1001526AC(v17, v16);
}

uint64_t sub_100151F68(uint64_t a1)
{
  type metadata accessor for Date();
  swift_task_alloc();
  swift_task_alloc();
  type metadata accessor for DesignTimeTime(0);
  v3 = swift_task_alloc();
  sub_1000024C4(&qword_100229E78, &qword_1001C1198);
  v4 = (*(*(a1 - 8) + 80) + 32) & ~*(*(a1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001B49B0;
  v6 = v5 + v4;
  sub_100151474(v6);
  static Date.distantFuture.getter();
  static Date.distantFuture.getter();
  DateInterval.init(start:end:)();
  static TimeZone.current.getter();
  sub_100152648(v3, v6 + *(a1 + 40));

  v7 = *(v1 + 8);

  return v7(v5);
}

Swift::Int sub_100152128()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10015216C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1001521F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229CD8;
  if (!qword_100229CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229CD8);
  }

  return result;
}

unint64_t sub_100152370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229D00;
  if (!qword_100229D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229D00);
  }

  return result;
}

uint64_t sub_1001523C4(uint64_t a1)
{
  *(a1 + 8) = sub_100152600(&qword_100229DC8, type metadata accessor for DesignTimeMusicEvent, &unk_1001C10E0);
  result = sub_100152600(&qword_100229DD0, type metadata accessor for DesignTimeMusicEvent, &unk_1001C1120);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10015244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229DD8;
  if (!qword_100229DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DD8);
  }

  return result;
}

unint64_t sub_1001524A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229DE0;
  if (!qword_100229DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DE0);
  }

  return result;
}

unint64_t sub_1001524FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229DE8;
  if (!qword_100229DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DE8);
  }

  return result;
}

unint64_t sub_100152554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229DF0;
  if (!qword_100229DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229DF0);
  }

  return result;
}

uint64_t sub_1001525A8(uint64_t a1)
{
  result = sub_100152600(&qword_100229E70, type metadata accessor for DesignTimeMusicEvent, &unk_1001C1160);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100152600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100152648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100152708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeTime(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001527C4(uint64_t a1)
{
  *(a1 + 8) = sub_100152848(&qword_100229EE0, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  result = sub_100152848(&qword_100229EE8, &type metadata accessor for Album, &protocol conformance descriptor for Album);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100152848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001528A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100229EF0;
  if (!qword_100229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100229EF0);
  }

  return result;
}

uint64_t sub_100152928()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100152A44;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8, &unk_1001C1358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218ED0;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100152A44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10015533C;
  }

  else
  {
    v2 = sub_100152B54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100152B54()
{
  v1 = *(v0 + 144);
  v2 = [v1 campaignGroup];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_100152BF8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_100152CE4;

  return v5();
}

uint64_t sub_100152CE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_100152E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return _swift_task_switch(sub_100152E24, 0, 0);
}

uint64_t sub_100152E24()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100152F40;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229F00, &qword_1001C1368);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218EA8;
  v0[14] = v2;
  [v1 campaignTokenWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100152F40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_100153140;
  }

  else
  {
    v2 = sub_100153050;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153050()
{
  v1 = *(v0 + 144);

  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 tokenForClientIdentifier:v2];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_100153140(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1001531D0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001532EC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8, &unk_1001C1358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218E80;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001532EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1001534A0;
  }

  else
  {
    v2 = sub_1001533FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001533FC()
{
  v1 = *(v0 + 144);
  v2 = [v1 sportsCampaignToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1001534A0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10015352C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100153648;
  v2 = swift_continuation_init();
  v0[17] = sub_1000024C4(&qword_100229EF8, &unk_1001C1358);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100155344;
  v0[13] = &unk_100218E58;
  v0[14] = v2;
  [v1 defaultValuesWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100153648()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10015533C;
  }

  else
  {
    v2 = sub_100153758;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153758()
{
  v1 = *(v0 + 144);
  v2 = [v1 providerToken];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = *(v0 + 8);

  return v6(v3, v5);
}

uint64_t sub_1001537FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[373] = a3;
  v3[372] = a2;
  v3[371] = a1;
  return _swift_task_switch(sub_100153824, 0, 0);
}

uint64_t sub_100153824()
{
  v1 = v0[373];
  v2 = v0[372];
  v3 = [objc_opt_self() sharedInstance];
  v0[374] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  v0[375] = v5;
  *(v5 + 16) = &unk_1001C12F8;
  *(v5 + 24) = v4;
  v6 = v3;
  swift_asyncLet_begin();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v2;
  v7[4] = v1;
  v8 = swift_allocObject();
  v0[376] = v8;
  *(v8 + 16) = &unk_1001C1318;
  *(v8 + 24) = v7;
  v9 = v6;
  swift_asyncLet_begin();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  v0[377] = v11;
  *(v11 + 16) = &unk_1001C1330;
  *(v11 + 24) = v10;
  v12 = v9;
  swift_asyncLet_begin();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  v0[378] = v14;
  *(v14 + 16) = &unk_1001C1348;
  *(v14 + 24) = v13;
  v15 = v12;
  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 2, v0 + 368, sub_100153AD0, v0 + 322);
}

uint64_t sub_100153AD0(__n128 a1)
{
  v2[379] = v1;
  if (v1)
  {

    return _swift_asyncLet_finish(v2 + 242, a1);
  }

  else
  {
    v2[380] = v2[368];
    v2[381] = v2[369];

    return _swift_asyncLet_get_throwing(v2 + 82, v2 + 364, sub_100153B8C, v2 + 322);
  }
}

uint64_t sub_100153B8C()
{
  v1[382] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_100154300, 0, 0);
  }

  else
  {
    v1[383] = v1[364];
    v1[384] = v1[365];

    return _swift_asyncLet_get_throwing(v1 + 162, v1 + 362, sub_100153C44, v1 + 322);
  }
}

uint64_t sub_100153C44()
{
  v1[385] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_10015466C, 0, 0);
  }

  else
  {
    v1[386] = v1[362];
    v1[387] = v1[363];

    return _swift_asyncLet_get_throwing(v1 + 242, v1 + 366, sub_100153CFC, v1 + 322);
  }
}

uint64_t sub_100153CFC()
{
  *(v1 + 3104) = v0;
  if (v0)
  {
    v2 = sub_1001549E4;
  }

  else
  {
    *(v1 + 2776) = 0u;
    *(v1 + 2792) = 0u;
    *(v1 + 2744) = 0u;
    *(v1 + 2760) = 0u;
    sub_100006C2C(v1 + 2744);
    v2 = sub_100153D88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100153D88()
{
  v1 = *(v0 + 3096);
  v2 = *(v0 + 3088);
  v3 = *(v0 + 3072);
  v4 = *(v0 + 3064);
  v5 = *(v0 + 3048);
  v6 = *(v0 + 3040);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2936);
  *(v0 + 2808) = v6;
  *(v0 + 2816) = v5;
  *(v0 + 2824) = v4;
  *(v0 + 2832) = v3;
  *(v0 + 2840) = v2;
  *(v0 + 2848) = v1;
  *(v0 + 2856) = v7;
  *(v0 + 2864) = v8;
  *(v0 + 2616) = v6;
  *(v0 + 2624) = v5;
  *(v0 + 2632) = v4;
  *(v0 + 2640) = v3;
  *(v0 + 2648) = v2;
  *(v0 + 2656) = v1;
  *(v0 + 2664) = v7;
  *(v0 + 2672) = v8;

  sub_10002089C(v0 + 2808, v0 + 2680);
  sub_100006C2C(v0 + 2616);
  v9 = *(v0 + 2824);
  *(v0 + 3112) = *(v0 + 2808);
  *(v0 + 3128) = v9;
  v10 = *(v0 + 2840);
  v11 = *(v0 + 2856);
  *(v0 + 3144) = v10;
  *(v0 + 3160) = v11;

  return _swift_asyncLet_finish(v0 + 1936, v10);
}

uint64_t sub_100153F48()
{

  v1 = *(v0 + 2968);
  v2 = *(v0 + 3128);
  v3 = *(v0 + 3144);
  v4 = *(v0 + 3160);
  *v1 = *(v0 + 3112);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001540D0()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100154300()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_10015443C()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10015466C()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_1001547B4()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1001549E4()
{

  return _swift_asyncLet_finish(v0 + 1936, v1);
}

uint64_t sub_100154B38()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v5 = v12;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = sub_100139F7C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not fetch event campaign values due to Error: %s", v4, 0xCu);
    sub_100012A7C(v5);
  }

  else
  {
  }

  v9 = *(v0 + 2968);
  v9[2] = 0u;
  v9[3] = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100154D68()
{

  return swift_deallocObject();
}

uint64_t sub_100154DA0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_100152908(v2);
}

uint64_t sub_100154E34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100012AC8;

  return sub_100152BF8(a1, v4);
}

uint64_t sub_100154EEC()
{

  return swift_deallocObject();
}

uint64_t sub_100154F2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100154FD4;

  return sub_100152E00(v2, v3, v4);
}

uint64_t sub_100154FD4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1001550E0()
{

  return swift_deallocObject();
}

uint64_t sub_100155118(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD00;

  return sub_100152BF8(a1, v4);
}

uint64_t sub_1001551D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_1001531B0(v2);
}

uint64_t sub_100155264()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100155340;

  return sub_10015350C(v2);
}

uint64_t sub_10015534C(uint64_t a1)
{
  *(a1 + 8) = sub_1001553B4(&qword_100222E78, &protocol conformance descriptor for Music.Genre);
  result = sub_1001553B4(&qword_100229F08, &protocol conformance descriptor for Music.Genre);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001553B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Music.Genre();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001553F8()
{
  v1[6] = v0;
  sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for MusicSubscription();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v3 = swift_task_alloc();
  v1[10] = v3;
  v1[11] = type metadata accessor for MainActor();
  v1[12] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v1;
  v4[1] = sub_100155544;

  return static MusicSubscription.current.getter(v3);
}

uint64_t sub_100155544()
{
  *(*v1 + 112) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001558C8;
  }

  else
  {
    v4 = sub_10015569C;
  }

  return _swift_task_switch(v4, v3, v2);
}

void sub_10015569C()
{
  v1 = v0[10];
  v2 = v0[6];

  v3 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v1;
  if (os_unfair_lock_trylock((v3 + 24)))
  {
    v4 = v0[14];
    sub_100157200((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
    if (v4)
    {
      return;
    }
  }

  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  os_unfair_lock_lock((v3 + 24));
  v8 = *(v3 + 16);
  swift_getKeyPath();
  v0[5] = v8;
  sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater, &unk_1001C1410);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v8 + v9, v7);
  os_unfair_lock_unlock((v3 + 24));
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1000050C4(v0[7], &qword_1002293B8, &qword_1001C06D0);
LABEL_6:
    v15 = v0[9];
    sub_100155B90();
    v14 = *(v15 + 8);
    goto LABEL_7;
  }

  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[7];
  v13 = MusicSubscription.canPlayCatalogContent.getter();
  v14 = *(v11 + 8);
  v14(v12, v10);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v14(v0[10], v0[8]);

  v16 = v0[1];

  v16();
}

uint64_t sub_1001558C8()
{

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error fetching Apple Music subscription status with error: %@", v4, 0xCu);
    sub_1000050C4(v5, &qword_100221718, &qword_1001B8890);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100155A88()
{
  type metadata accessor for AppleMusicSubscriptionStatusProvider(0);
  v0 = swift_allocObject();
  result = sub_10015673C();
  qword_100239150 = v0;
  return result;
}

uint64_t sub_100155AC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater, &unk_1001C1410);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  return sub_100156CB4(v5 + v3, a1);
}

double sub_100155B90()
{
  v1 = v0;
  v2 = sub_1000024C4(&qword_100227360, &qword_1001B5D80);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000BE10(v5, qword_100239158);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Started observing subscription updates", v8, 2u);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = *(v1 + 16);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v10;

  sub_1001904E0(0, 0, v4, &unk_1001C1488, v11);

  return result;
}

uint64_t sub_100155D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = type metadata accessor for MusicSubscription();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for MusicSubscription.Updates();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for MusicSubscription.Updates.Iterator();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100155F0C, 0, 0);
}

uint64_t sub_100155F0C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  static MusicSubscription.subscriptionUpdates.getter();
  MusicSubscription.Updates.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1001570A8(&qword_10022A0C8, &type metadata accessor for MusicSubscription.Updates.Iterator, &protocol conformance descriptor for MusicSubscription.Updates.Iterator);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_100156028;
  v6 = v0[11];
  v7 = v0[7];

  return dispatch thunk of AsyncIteratorProtocol.next()(v7, v6, v4);
}

uint64_t sub_100156028()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1001564B0;
  }

  else
  {
    v2 = sub_10015613C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100156158()
{
  v1 = v0 + 5;
  v2 = v0[5];
  v3 = v0[7];
  v5 = v0 + 4;
  v4 = v0[4];
  if ((*(v2 + 48))(v3, 1, v4) == 1)
  {
    v1 = v0 + 12;
    v6 = v0 + 13;
    v5 = v0 + 11;
LABEL_11:
    (*(*v1 + 8))(*v6, *v5);

    v18 = v0[1];

    v18();
    return;
  }

  v6 = v0 + 6;
  v7 = v0[6];
  v8 = v0[3];
  (*(v2 + 32))(v7, v3, v4);
  *(swift_task_alloc() + 16) = v7;
  if (os_unfair_lock_trylock(v8 + 6))
  {
    v9 = v0[15];
    v10 = v0[3];
    sub_1001571E4((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));
    if (v9)
    {
      return;
    }
  }

  if (MusicSubscription.canPlayCatalogContent.getter())
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000BE10(v11, qword_100239158);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Stopped observing subscription updates for already subscribed user.", v14, 2u);
    }

    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
    goto LABEL_11;
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v19 = sub_1001570A8(&qword_10022A0C8, &type metadata accessor for MusicSubscription.Updates.Iterator, &protocol conformance descriptor for MusicSubscription.Updates.Iterator);
  v20 = swift_task_alloc();
  v0[14] = v20;
  *v20 = v0;
  v20[1] = sub_100156028;
  v21 = v0[11];
  v22 = v0[7];

  dispatch thunk of AsyncIteratorProtocol.next()(v22, v21, v19);
}

uint64_t sub_1001564B0()
{
  *(v0 + 16) = *(v0 + 120);
  sub_1000024C4(qword_1002220B8, &unk_1001B5710);
  v1 = swift_dynamicCast();

  return _swift_willThrowTypedImpl(v1, &type metadata for Never, &protocol witness table for Never);
}

void sub_10015653C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *a1;
  v8 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock;
  os_unfair_lock_lock((*(*a1 + OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock) + 16));
  v9 = type metadata accessor for MusicSubscription();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v6, a2, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_100156840(v6);
  os_unfair_lock_unlock((*(v7 + v8) + 16));
}

uint64_t sub_100156670()
{

  v1 = OBJC_IVAR____TtC16EventViewService36AppleMusicSubscriptionStatusProvider___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10015673C()
{
  type metadata accessor for SubscriptionUpdater(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  v3 = type metadata accessor for MusicSubscription();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater_lock;
  sub_1000024C4(&qword_100229110, &qword_1001C0330);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v1 + v4) = v5;
  ObservationRegistrar.init()();
  sub_1000024C4(&qword_10022A0C0, &qword_1001C1470);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v1;
  *(v0 + 16) = v6;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t sub_100156840(uint64_t a1)
{
  v3 = sub_1000024C4(&qword_1002293B8, &qword_1001C06D0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC16EventViewServiceP33_345A586C3DE8C4D1F27F6A5F9354652119SubscriptionUpdater__subscription;
  swift_beginAccess();
  sub_100156CB4(v1 + v6, v5);
  v7 = sub_100156D24(v5, a1);
  sub_1000050C4(v5, &qword_1002293B8, &qword_1001C06D0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1001570A8(&qword_1002293C0, type metadata accessor for SubscriptionUpdater, &unk_1001C1410);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    swift_beginAccess();
    sub_100157014(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1000050C4(a1, &qword_1002293B8, &qword_1001C06D0);
}