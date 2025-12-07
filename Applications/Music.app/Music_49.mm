uint64_t sub_100588628()
{
  v1 = *(v0 + 80);

  off_101196190 = v1;

  return _swift_task_switch(sub_1005886AC, 0, 0);
}

uint64_t sub_1005886AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10058870C(_BYTE *a1, void *a2)
{
  v2 = 0xD000000000000029;
  v3 = *a1;
  v4 = 0xD00000000000002CLL;
  v5 = "llPlaylists";
  v6 = "ansliterationSing";
  v7 = 0xD00000000000003BLL;
  if (v3 != 6)
  {
    v7 = 0xD000000000000027;
    v6 = "anslationAndTransliteration";
  }

  v8 = "Tooltip.LyricsTranslation";
  v9 = 0xD00000000000002DLL;
  if (v3 != 4)
  {
    v9 = 0xD000000000000031;
    v8 = "Tooltip.LyricsTransliteration";
  }

  if (*a1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = "com.apple.Music.Tooltip.Sing";
  if (v3 != 2)
  {
    v10 = "Tooltip.SharePlayTogether";
  }

  if (*a1)
  {
    v4 = 0xD00000000000001CLL;
    v5 = "Tooltip.FavoritingNowPlaying";
  }

  if (*a1 > 1u)
  {
    v5 = v10;
  }

  else
  {
    v2 = v4;
  }

  if (*a1 <= 3u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v7;
  }

  if (v3 <= 3)
  {
    v12 = v5;
  }

  else
  {
    v12 = v6;
  }

  v14 = EnvironmentVariable.isEnabled.getter(v11, v12 | 0x8000000000000000, 0);

  if ((v14 & 1) == 0)
  {
    v27 = [objc_opt_self() defaultStore];
    sub_100587910(v3);
    v28 = String._bridgeToObjectiveC()();

    v29 = [v27 BOOLForKey:v28];

    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000060E4(v30, qword_1011961A0);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v33 = 136446466;
      if (v29)
      {
        v34 = 8756450;
      }

      else
      {
        v34 = 9215458;
      }

      v35 = sub_1000105AC(v34, 0xA300000000000000, &v47);

      *(v33 + 4) = v35;
      *(v33 + 12) = 2082;
      v36 = String.init<A>(describing:)();
      v38 = sub_1000105AC(v36, v37, &v47);

      *(v33 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "👁️‍🗨️%{public}s %{public}s", v33, 0x16u);
      swift_arrayDestroy();
    }

    v39 = sub_100587910(v3);
    if (*(*a2 + 16))
    {
      sub_100019C10(v39, v40);
      v42 = v41;

      if (v42)
      {
        return;
      }
    }

    else
    {
    }

    v43 = sub_100587910(v3);
    v45 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *a2;
    *a2 = 0x8000000000000000;
    sub_1006C5518(v29, v43, v45, isUniquelyReferenced_nonNull_native);

    *a2 = v47;

    return;
  }

  v15 = sub_100587910(v3);
  v17 = v16;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *a2;
  *a2 = 0x8000000000000000;
  sub_1006C5518(0, v15, v17, v18);

  *a2 = v47;

  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_1011961A0);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47 = v23;
    *v22 = 136315138;
    v24 = String.init<A>(describing:)();
    v26 = sub_1000105AC(v24, v25, &v47);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "🤖 Debugging Mode Active — Setting %s as non acknowledged", v22, 0xCu);
    sub_10000959C(v23);
  }
}

double sub_100588C1C(unsigned __int8 a1)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v32 - v2;
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1011961A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = 0xD00000000000002CLL;
    *v7 = 136446210;
    v10 = "llPlaylists";
    v32 = v8;
    v33 = 0x287069746C6F6F54;
    v34 = 0xE800000000000000;
    v11 = "ansliterationSing";
    v12 = 0xD00000000000003BLL;
    if (a1 != 6)
    {
      v12 = 0xD000000000000027;
      v11 = "anslationAndTransliteration";
    }

    v13 = "Tooltip.LyricsTranslation";
    v14 = 0xD00000000000002DLL;
    if (a1 != 4)
    {
      v14 = 0xD000000000000031;
      v13 = "Tooltip.LyricsTransliteration";
    }

    if (a1 <= 5u)
    {
      v12 = v14;
      v11 = v13;
    }

    v15 = "com.apple.Music.Tooltip.Sing";
    if (a1 != 2)
    {
      v15 = "Tooltip.SharePlayTogether";
    }

    if (a1)
    {
      v9 = 0xD00000000000001CLL;
      v10 = "Tooltip.FavoritingNowPlaying";
    }

    if (a1 > 1u)
    {
      v9 = 0xD000000000000029;
      v10 = v15;
    }

    if (a1 <= 3u)
    {
      v16 = v9;
    }

    else
    {
      v16 = v12;
    }

    if (a1 <= 3u)
    {
      v17 = v10;
    }

    else
    {
      v17 = v11;
    }

    v18 = v17 | 0x8000000000000000;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = sub_1000105AC(v33, v34, &v32);

    *(v7 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "👁️‍🗨️ Marking %{public}s as acknowledged", v7, 0xCu);
    sub_10000959C(v8);
  }

  v21 = sub_100587910(a1);
  v23 = v22;
  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  v24 = sub_100587910(a1);
  v26 = v25;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = off_101196190;
  off_101196190 = 0x8000000000000000;
  sub_1006C5518(1, v24, v26, isUniquelyReferenced_nonNull_native);

  off_101196190 = v32;
  swift_endAccess();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v3, 1, 1, v28);
  type metadata accessor for MainActor();
  v29 = static MainActor.shared.getter();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v21;
  v30[5] = v23;
  sub_1001F4CB8(0, 0, v3, &unk_100ED46F8, v30);

  return result;
}

uint64_t sub_100589014(unsigned __int8 a1)
{
  v1 = 0xD000000000000029;
  v2 = 0xD00000000000002CLL;
  v3 = "llPlaylists";
  v4 = a1;
  v5 = "ansliterationSing";
  v6 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v6 = 0xD000000000000027;
    v5 = "anslationAndTransliteration";
  }

  v7 = "Tooltip.LyricsTranslation";
  v8 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v8 = 0xD000000000000031;
    v7 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v9 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v2 = 0xD00000000000001CLL;
    v3 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v10 = v9;
  }

  else
  {
    v1 = v2;
    v10 = v3;
  }

  if (a1 <= 3u)
  {
    v11 = v1;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 3)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12 | 0x8000000000000000;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0x287069746C6F6F54;
}

uint64_t sub_10058914C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005891E4, v7, v6);
}

uint64_t sub_1005891E4()
{

  v1 = [objc_opt_self() defaultStore];
  v2 = String._bridgeToObjectiveC()();
  [v1 setBool:1 forKey:v2];

  v3 = *(v0 + 8);

  return v3();
}

Swift::Int sub_1005892A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(50 * v1);
  return Hasher._finalize()();
}

Swift::Int sub_100589324(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(50 * v2);
  return Hasher._finalize()();
}

uint64_t *sub_10058936C@<X0>(uint64_t *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 50)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 100)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1005893B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  v37 = a1;
  v41 = a4;
  v6 = a3;
  sub_10010FC20(&qword_101196320, &qword_100ED46A0);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v40 = sub_10010FC20(&qword_101196328, &qword_100ED46A8);
  v9 = *(v40 - 8);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v35 = sub_10010FC20(&qword_101196330, &qword_100ED46B0);
  __chkstk_darwin();
  v36 = &v30 - v12;
  v39 = sub_10010FC20(&qword_101196338, &qword_100ED46B8);
  v13 = *(v39 - 8);
  __chkstk_darwin();
  v15 = &v30 - v14;
  sub_10010FC20(&qword_101196308, &unk_100ED4680);
  __chkstk_darwin();
  v38 = &v30 - v16;
  v17 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100587A3C(a3, v19);
  if (v6 == 7)
  {
    v33 = static VerticalAlignment.top.getter();
    v34 = &v30;
    __chkstk_darwin();
    v32 = v29;
    __chkstk_darwin();
    v31 = v15;
    sub_100030444(v37, a2);
    sub_10010FC20(&qword_101196350, &qword_100ED46C0);
    sub_10010FC20(&qword_101196358, &qword_100ED46C8);
    v20 = sub_10010FC20(&qword_101196360, &qword_100ED46D0);
    v21 = sub_100590ABC();
    v22 = sub_100590C1C();
    v23 = sub_100590D20();
    v29[2] = v22;
    v29[3] = v23;
    v29[0] = v20;
    v29[1] = v21;
    v24 = v31;
    BubbleTip.init(accessoryView:accessoryViewVerticalAlignment:titleView:subtitleView:actions:closeButtonHandler:)();
    v25 = v39;
    (*(v13 + 16))(v36, v24, v39);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101196340, &qword_101196338, &qword_100ED46B8, &protocol conformance descriptor for BubbleTip<A, B, C>);
    sub_100020674(&qword_101196348, &qword_101196328, &qword_100ED46A8, &protocol conformance descriptor for BubbleTip<A, B, C>);
    v26 = v38;
    _ConditionalContent<>.init(storage:)();
    (*(v13 + 8))(v24, v25);
  }

  else
  {
    sub_1000089F8(&v19[*(v17 + 28)], v8, &qword_101196320, &qword_100ED46A0);
    sub_100030444(v37, a2);

    BubbleTip.init<>(image:title:subtitle:actions:closeButtonHandler:)();
    v27 = v40;
    (*(v9 + 16))(v36, v11, v40);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101196340, &qword_101196338, &qword_100ED46B8, &protocol conformance descriptor for BubbleTip<A, B, C>);
    sub_100020674(&qword_101196348, &qword_101196328, &qword_100ED46A8, &protocol conformance descriptor for BubbleTip<A, B, C>);
    v26 = v38;
    _ConditionalContent<>.init(storage:)();
    (*(v9 + 8))(v11, v27);
  }

  sub_100590A3C(v26, v41);
  return sub_1005908C4(v19, type metadata accessor for Tooltip.Configuration);
}

void sub_1005899D4(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();
  (*(v3 + 8))(v5, v2);
  sub_10010FC20(&qword_101196350, &qword_100ED46C0);
  v7[1] = 0x4044000000000000;
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();

  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

double sub_100589B54(void *a1)
{
  sub_100009838();

  v1 = Text.init<A>(_:)();
  v3 = v2;
  v5 = v4 & 1;
  View.bubbleTipTitle(hasSubtitle:)();
  sub_10011895C(v1, v3, v5);

  return result;
}

uint64_t sub_100589C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 32))
  {
    sub_100009838();

    v3 = Text.init<A>(_:)();
    v5 = v4;
    v7 = v6 & 1;
    View.bubbleTipSubtitle()();
    sub_10011895C(v3, v5, v7);

    v8 = sub_10010FC20(&qword_1011963A8, &unk_100ED46E0);
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {
    v10 = sub_10010FC20(&qword_1011963A8, &unk_100ED46E0);
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

unint64_t sub_100589DCC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005907F4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100589DFC@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000029;
  v3 = *v1;
  v4 = 0xD00000000000002CLL;
  v5 = "llPlaylists";
  v6 = "ansliterationSing";
  v7 = 0xD00000000000003BLL;
  if (v3 != 6)
  {
    v7 = 0xD000000000000027;
    v6 = "anslationAndTransliteration";
  }

  v8 = "Tooltip.LyricsTranslation";
  v9 = 0xD00000000000002DLL;
  result = 0xD000000000000031;
  if (v3 != 4)
  {
    v9 = 0xD000000000000031;
    v8 = "Tooltip.LyricsTransliteration";
  }

  if (*v1 <= 5u)
  {
    v7 = v9;
    v6 = v8;
  }

  v11 = "com.apple.Music.Tooltip.Sing";
  if (v3 != 2)
  {
    v11 = "Tooltip.SharePlayTogether";
  }

  if (*v1)
  {
    v4 = 0xD00000000000001CLL;
    v5 = "Tooltip.FavoritingNowPlaying";
  }

  if (*v1 > 1u)
  {
    v5 = v11;
  }

  else
  {
    v2 = v4;
  }

  if (*v1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v2 = v7;
    v12 = v6;
  }

  *a1 = v2;
  a1[1] = v12 | 0x8000000000000000;
  return result;
}

double sub_100589EF8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_10058A004()
{
  v17._countAndFlagsBits = sub_10058A240(*v0);
  v17._object = v1;
  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  String.append(_:)(v17);

  _StringGuts.grow(_:)(25);

  if (v0[24])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[24])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0xD000000000000015;
  v7._object = 0x8000000100E50830;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(23);

  if (v0[25])
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v0[25])
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0xD000000000000013;
  v12._object = 0x8000000100E50850;
  String.append(_:)(v12);

  _StringGuts.grow(_:)(27);
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x8000000100E50870;
  String.append(_:)(v13);
  type metadata accessor for UIPopoverArrowDirection(0);
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return 0xD000000000000015;
}

uint64_t sub_10058A240(unsigned __int8 a1)
{
  v2 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v4 = &v24[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100587A3C(a1, v4);
  v5 = 0xD00000000000002CLL;
  v26 = 0x287069746C6F6F54;
  v27 = 0xE800000000000000;
  v6 = "llPlaylists";
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v7 = "ansliterationSing";
  v8 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v8 = 0xD000000000000027;
    v7 = "anslationAndTransliteration";
  }

  v9 = "Tooltip.LyricsTranslation";
  v10 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v10 = 0xD000000000000031;
    v9 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v11 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v5 = 0xD00000000000001CLL;
    v6 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v5 = 0xD000000000000029;
    v6 = v11;
  }

  if (a1 <= 3u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v8;
  }

  if (a1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v7;
  }

  v14 = v13 | 0x8000000000000000;
  String.append(_:)(*&v12);

  v15._countAndFlagsBits = 8236;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  String.append(_:)(v25);

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v16._countAndFlagsBits = 80;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v24[15] = *(v4 + *(v2 + 32));
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  String.append(_:)(v25);

  v18 = v4[2];
  v25._countAndFlagsBits = v4[1];
  v25._object = v18;

  v19._countAndFlagsBits = 8236;
  v19._object = 0xE200000000000000;
  String.append(_:)(v19);
  String.append(_:)(v25);

  v20 = v4[4];
  v25._countAndFlagsBits = v4[3];
  v25._object = v20;

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  sub_1005908C4(v4, type metadata accessor for Tooltip.Configuration);
  return v26;
}

Swift::Int sub_10058A500()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10058A628(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL sub_10058A744(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0) - 8;
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100587A3C(*a1, &v11 - v7);
  v9 = v8[*(v4 + 40)];
  sub_1005908C4(v8, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a2, v6);
  LODWORD(a2) = v6[*(v4 + 40)];
  sub_1005908C4(v6, type metadata accessor for Tooltip.Configuration);
  return v9 < a2;
}

BOOL sub_10058A840(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0) - 8;
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100587A3C(*a2, &v11 - v7);
  v9 = v8[*(v4 + 40)];
  sub_1005908C4(v8, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a1, v6);
  LODWORD(a1) = v6[*(v4 + 40)];
  sub_1005908C4(v6, type metadata accessor for Tooltip.Configuration);
  return v9 >= a1;
}

BOOL sub_10058A93C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0) - 8;
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100587A3C(*a1, &v11 - v7);
  v9 = v8[*(v4 + 40)];
  sub_1005908C4(v8, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a2, v6);
  LODWORD(a2) = v6[*(v4 + 40)];
  sub_1005908C4(v6, type metadata accessor for Tooltip.Configuration);
  return v9 >= a2;
}

BOOL sub_10058AA38(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Tooltip.Configuration(0) - 8;
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_100587A3C(*a2, &v11 - v7);
  v9 = v8[*(v4 + 40)];
  sub_1005908C4(v8, type metadata accessor for Tooltip.Configuration);
  sub_100587A3C(*a1, v6);
  LODWORD(a1) = v6[*(v4 + 40)];
  sub_1005908C4(v6, type metadata accessor for Tooltip.Configuration);
  return v9 < a1;
}

double sub_10058AB34()
{
  type metadata accessor for Tooltip.PresentationCoordinator();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = &_swiftEmptySetSingleton;
  *(v0 + 120) = 0;
  qword_101196198 = v0;
  return result;
}

void sub_10058AB84(uint64_t a1)
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "🤖 ToolTips are disabled; skipping presentation.", v4, 2u);
    }

    return;
  }

  swift_beginAccess();
  sub_1000089F8(a1, v29, &qword_101196300, &qword_100ED4678);
  sub_1000089F8(v1 + 16, &v31, &qword_101196300, &qword_100ED4678);
  if (v30)
  {
    sub_1000089F8(v29, v27, &qword_101196300, &qword_100ED4678);
    if (v32)
    {
      sub_100198C50(&v31, v26);
      v6 = sub_1006B8F0C(v27[0], v26[0]);
      sub_100198CAC(v26);
      sub_100198CAC(v27);
      sub_1000095E8(v29, &qword_101196300, &qword_100ED4678);
      if (v6)
      {
        return;
      }

      goto LABEL_17;
    }

    sub_100198CAC(v27);
  }

  else if (!v32)
  {
    sub_1000095E8(v29, &qword_101196300, &qword_100ED4678);
    return;
  }

  sub_1000095E8(v29, &qword_101196318, &qword_100ED4698);
LABEL_17:
  sub_1000089F8(v1 + 16, v27, &qword_101196300, &qword_100ED4678);
  if (v28)
  {
    sub_100198C50(v27, v29);
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011961A0);
    sub_100198BF4(v29, v27);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26[0] = v11;
      *v10 = 136446210;
      v12 = sub_10058A004();
      v14 = v13;
      sub_100198CAC(v27);
      v15 = sub_1000105AC(v12, v14, v26);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Become active %{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    else
    {

      sub_100198CAC(v27);
    }
  }

  else
  {
    sub_1000095E8(v27, &qword_101196300, &qword_100ED4678);
    sub_1000089F8(a1, v27, &qword_101196300, &qword_100ED4678);
    if (!v28)
    {
      sub_1000095E8(v27, &qword_101196300, &qword_100ED4678);
      return;
    }

    sub_100198C50(v27, v29);
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000060E4(v16, qword_1011961A0);
    sub_100198BF4(v29, v27);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136446210;
      v21 = sub_10058A004();
      v23 = v22;
      sub_100198CAC(v27);
      v24 = sub_1000105AC(v21, v23, v26);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Resigned active %{public}s", v19, 0xCu);
      sub_10000959C(v20);
    }

    else
    {

      sub_100198CAC(v27);
    }

    sub_10058C4EC();
  }

  sub_100198CAC(v29);
}

void sub_10058B0DC(unsigned __int8 *a1)
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000060E4(v2, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "🤖 ToolTips are disabled; skipping attempt to enqueue.", v4, 2u);
    }

    return;
  }

  v5 = v1;
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1011961A0);
  sub_100198BF4(a1, v81);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v80[0] = v11;
    v12 = 0xD00000000000002CLL;
    *v10 = 136446210;
    v13 = "llPlaylists";
    v78 = 0x287069746C6F6F54;
    v79 = 0xE800000000000000;
    v14 = "anslationAndTransliteration";
    v15 = 0xD000000000000027;
    if (LOBYTE(v81[0]) == 6)
    {
      v15 = 0xD00000000000003BLL;
      v14 = "ansliterationSing";
    }

    v16 = "Tooltip.LyricsTranslation";
    v17 = 0xD00000000000002DLL;
    if (LOBYTE(v81[0]) != 4)
    {
      v17 = 0xD000000000000031;
      v16 = "Tooltip.LyricsTransliteration";
    }

    if (LOBYTE(v81[0]) <= 5u)
    {
      v15 = v17;
      v14 = v16;
    }

    v18 = "com.apple.Music.Tooltip.Sing";
    if (LOBYTE(v81[0]) != 2)
    {
      v18 = "Tooltip.SharePlayTogether";
    }

    if (LOBYTE(v81[0]))
    {
      v12 = 0xD00000000000001CLL;
      v13 = "Tooltip.FavoritingNowPlaying";
    }

    if (LOBYTE(v81[0]) > 1u)
    {
      v12 = 0xD000000000000029;
      v13 = v18;
    }

    if (LOBYTE(v81[0]) <= 3u)
    {
      v19 = v12;
    }

    else
    {
      v19 = v15;
    }

    if (LOBYTE(v81[0]) <= 3u)
    {
      v20 = v13;
    }

    else
    {
      v20 = v14;
    }

    v21 = v20 | 0x8000000000000000;
    String.append(_:)(*&v19);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    sub_100198CAC(v81);
    v23 = sub_1000105AC(v78, v79, v80);

    *(v10 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v8, v9, "↪️ Enqueuing %{public}s", v10, 0xCu);
    sub_10000959C(v11);
  }

  else
  {

    sub_100198CAC(v81);
  }

  v24 = *a1;
  if (sub_1005875D0(*a1))
  {
    sub_100198BF4(a1, v81);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v80[0] = v28;
      v29 = 0xD00000000000002CLL;
      *v27 = 136446210;
      v30 = "llPlaylists";
      v78 = 0x287069746C6F6F54;
      v79 = 0xE800000000000000;
      v31 = "anslationAndTransliteration";
      v32 = 0xD000000000000027;
      if (LOBYTE(v81[0]) == 6)
      {
        v32 = 0xD00000000000003BLL;
        v31 = "ansliterationSing";
      }

      v33 = "Tooltip.LyricsTranslation";
      v34 = 0xD00000000000002DLL;
      if (LOBYTE(v81[0]) != 4)
      {
        v34 = 0xD000000000000031;
        v33 = "Tooltip.LyricsTransliteration";
      }

      if (LOBYTE(v81[0]) <= 5u)
      {
        v32 = v34;
        v31 = v33;
      }

      v35 = "com.apple.Music.Tooltip.Sing";
      if (LOBYTE(v81[0]) != 2)
      {
        v35 = "Tooltip.SharePlayTogether";
      }

      if (LOBYTE(v81[0]))
      {
        v29 = 0xD00000000000001CLL;
        v30 = "Tooltip.FavoritingNowPlaying";
      }

      if (LOBYTE(v81[0]) > 1u)
      {
        v29 = 0xD000000000000029;
        v30 = v35;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v36 = v29;
      }

      else
      {
        v36 = v32;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v37 = v30;
      }

      else
      {
        v37 = v31;
      }

      v38 = v37 | 0x8000000000000000;
      String.append(_:)(*&v36);

      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      String.append(_:)(v39);
      sub_100198CAC(v81);
      v40 = sub_1000105AC(v78, v79, v80);

      *(v27 + 4) = v40;
      v41 = "↪️👁️‍🗨️ %{public}s had already been acknowledged by the user. Ignoring.";
LABEL_75:
      _os_log_impl(&_mh_execute_header, v25, v26, v41, v27, 0xCu);
      sub_10000959C(v28);

      return;
    }

    goto LABEL_76;
  }

  swift_beginAccess();
  sub_1000089F8(v5 + 16, v81, &qword_101196300, &qword_100ED4678);
  if (*(&v81[0] + 1))
  {
    sub_100198BF4(v81, &v78);
    sub_1000095E8(v81, &qword_101196300, &qword_100ED4678);
    v42 = v78;
    sub_100198CAC(&v78);
    if (sub_1006B8F0C(v42, v24))
    {
      sub_100198BF4(a1, v81);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v77[0] = v28;
        v43 = 0xD00000000000002CLL;
        *v27 = 136446210;
        v44 = "llPlaylists";
        v78 = 0x287069746C6F6F54;
        v79 = 0xE800000000000000;
        v45 = "anslationAndTransliteration";
        v46 = 0xD000000000000027;
        if (LOBYTE(v81[0]) == 6)
        {
          v46 = 0xD00000000000003BLL;
          v45 = "ansliterationSing";
        }

        v47 = "Tooltip.LyricsTranslation";
        v48 = 0xD00000000000002DLL;
        if (LOBYTE(v81[0]) != 4)
        {
          v48 = 0xD000000000000031;
          v47 = "Tooltip.LyricsTransliteration";
        }

        if (LOBYTE(v81[0]) <= 5u)
        {
          v46 = v48;
          v45 = v47;
        }

        v49 = "com.apple.Music.Tooltip.Sing";
        if (LOBYTE(v81[0]) != 2)
        {
          v49 = "Tooltip.SharePlayTogether";
        }

        if (LOBYTE(v81[0]))
        {
          v43 = 0xD00000000000001CLL;
          v44 = "Tooltip.FavoritingNowPlaying";
        }

        if (LOBYTE(v81[0]) > 1u)
        {
          v43 = 0xD000000000000029;
          v44 = v49;
        }

        if (LOBYTE(v81[0]) <= 3u)
        {
          v50 = v43;
        }

        else
        {
          v50 = v46;
        }

        if (LOBYTE(v81[0]) <= 3u)
        {
          v51 = v44;
        }

        else
        {
          v51 = v45;
        }

        v52 = v51 | 0x8000000000000000;
        String.append(_:)(*&v50);

        v53._countAndFlagsBits = 41;
        v53._object = 0xE100000000000000;
        String.append(_:)(v53);
        v54 = v78;
        v55 = v79;
        sub_100198CAC(v81);
        v56 = sub_1000105AC(v54, v55, v77);

        *(v27 + 4) = v56;
        v41 = "↪️🤷‍♂️ %{public}s is currently being presented. Ignoring.";
        goto LABEL_75;
      }

LABEL_76:

      sub_100198CAC(v81);
      return;
    }
  }

  else
  {
    sub_1000095E8(v81, &qword_101196300, &qword_100ED4678);
  }

  swift_beginAccess();
  sub_100195260(a1, v81);
  swift_endAccess();
  v57 = *(&v81[0] + 1);
  sub_1000095E8(v81, &qword_101196300, &qword_100ED4678);
  if (v57)
  {
    sub_100198BF4(a1, v81);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v77[0] = v61;
      v62 = 0xD00000000000002CLL;
      *v60 = 136446210;
      v63 = "llPlaylists";
      v78 = 0x287069746C6F6F54;
      v79 = 0xE800000000000000;
      v64 = "anslationAndTransliteration";
      v65 = 0xD000000000000027;
      if (LOBYTE(v81[0]) == 6)
      {
        v65 = 0xD00000000000003BLL;
        v64 = "ansliterationSing";
      }

      v66 = "Tooltip.LyricsTranslation";
      v67 = 0xD00000000000002DLL;
      if (LOBYTE(v81[0]) != 4)
      {
        v67 = 0xD000000000000031;
        v66 = "Tooltip.LyricsTransliteration";
      }

      if (LOBYTE(v81[0]) <= 5u)
      {
        v65 = v67;
        v64 = v66;
      }

      v68 = "com.apple.Music.Tooltip.Sing";
      if (LOBYTE(v81[0]) != 2)
      {
        v68 = "Tooltip.SharePlayTogether";
      }

      if (LOBYTE(v81[0]))
      {
        v62 = 0xD00000000000001CLL;
        v63 = "Tooltip.FavoritingNowPlaying";
      }

      if (LOBYTE(v81[0]) > 1u)
      {
        v62 = 0xD000000000000029;
        v63 = v68;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v69 = v62;
      }

      else
      {
        v69 = v65;
      }

      if (LOBYTE(v81[0]) <= 3u)
      {
        v70 = v63;
      }

      else
      {
        v70 = v64;
      }

      v71 = v70 | 0x8000000000000000;
      String.append(_:)(*&v69);

      v72._countAndFlagsBits = 41;
      v72._object = 0xE100000000000000;
      String.append(_:)(v72);
      v73 = v78;
      v74 = v79;
      sub_100198CAC(v81);
      v75 = sub_1000105AC(v73, v74, v77);

      *(v60 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v58, v59, "↪️🤔 %{public}s already had a queued presentation. Replacing it with the new one.", v60, 0xCu);
      sub_10000959C(v61);
    }

    else
    {

      sub_100198CAC(v81);
    }
  }

  sub_100198BF4(a1, &v78);
  swift_beginAccess();
  sub_1003B2D98(v81, &v78);
  sub_100198CAC(v81);
  swift_endAccess();
  sub_10058C4EC();
}

double sub_10058BB38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v59[0] = sub_10010E56C(&off_101099238);
  swift_beginAccess();

  v7 = sub_100587718(v6, a1);
  v9 = v8;
  v11 = v10;
  v12 = ~v10;

  if (v12)
  {
    v53 = a1;
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_1011961A0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = a2;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v55[0] = v17;
      v18 = 0xD00000000000002CLL;
      *v16 = 136446210;
      v19 = "llPlaylists";
      v56 = 0x287069746C6F6F54;
      v57 = 0xE800000000000000;
      v20 = "ansliterationSing";
      v21 = 0xD00000000000003BLL;
      if (v53 != 6)
      {
        v21 = 0xD000000000000027;
        v20 = "anslationAndTransliteration";
      }

      v22 = "Tooltip.LyricsTranslation";
      v23 = 0xD00000000000002DLL;
      if (v53 != 4)
      {
        v23 = 0xD000000000000031;
        v22 = "Tooltip.LyricsTransliteration";
      }

      if (v53 <= 5u)
      {
        v21 = v23;
        v20 = v22;
      }

      v24 = "com.apple.Music.Tooltip.Sing";
      if (v53 != 2)
      {
        v24 = "Tooltip.SharePlayTogether";
      }

      if (v53)
      {
        v18 = 0xD00000000000001CLL;
        v19 = "Tooltip.FavoritingNowPlaying";
      }

      if (v53 > 1u)
      {
        v18 = 0xD000000000000029;
        v19 = v24;
      }

      if (v53 <= 3u)
      {
        v25 = v18;
      }

      else
      {
        v25 = v21;
      }

      if (v53 <= 3u)
      {
        v26 = v19;
      }

      else
      {
        v26 = v20;
      }

      v27 = v26 | 0x8000000000000000;
      String.append(_:)(*&v25);

      v28._countAndFlagsBits = 41;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29 = sub_1000105AC(v56, v57, v55);

      *(v16 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v14, v15, "↪️🫳 Dropping %{public}s from queue", v16, 0xCu);
      sub_10000959C(v17);

      a2 = v52;
      a1 = v53;
    }

    else
    {

      a1 = a1;
    }

    sub_1003B3140(&v56, 1);
    swift_beginAccess();
    sub_100747F90(v7, v9, &v56);
    sub_100198CAC(&v56);
    swift_endAccess();
    sub_100590F24(v7, v9, v11);
  }

  swift_beginAccess();
  sub_1000089F8(v2 + 16, v55, &qword_101196300, &qword_100ED4678);
  if (*(&v55[0] + 1))
  {
    sub_100198C50(v55, &v56);
    v30 = v56;
    if (sub_1006B8F0C(v56, a1))
    {
      if (qword_10117F8B0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_1000060E4(v31, qword_1011961A0);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = a2;
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54[0] = v36;
        v37 = 0xD00000000000002CLL;
        *v35 = 136446210;
        v38 = "llPlaylists";
        *&v55[0] = 0x287069746C6F6F54;
        *(&v55[0] + 1) = 0xE800000000000000;
        v39 = "ansliterationSing";
        v40 = 0xD00000000000003BLL;
        if (a1 != 6)
        {
          v40 = 0xD000000000000027;
          v39 = "anslationAndTransliteration";
        }

        v41 = "Tooltip.LyricsTranslation";
        v42 = 0xD00000000000002DLL;
        if (a1 != 4)
        {
          v42 = 0xD000000000000031;
          v41 = "Tooltip.LyricsTransliteration";
        }

        if (a1 <= 5u)
        {
          v40 = v42;
          v39 = v41;
        }

        v43 = "com.apple.Music.Tooltip.Sing";
        if (a1 != 2)
        {
          v43 = "Tooltip.SharePlayTogether";
        }

        if (a1)
        {
          v37 = 0xD00000000000001CLL;
          v38 = "Tooltip.FavoritingNowPlaying";
        }

        if (a1 > 1u)
        {
          v37 = 0xD000000000000029;
          v38 = v43;
        }

        if (a1 <= 3u)
        {
          v44 = v37;
        }

        else
        {
          v44 = v40;
        }

        if (a1 <= 3u)
        {
          v45 = v38;
        }

        else
        {
          v45 = v39;
        }

        v46 = v45 | 0x8000000000000000;
        String.append(_:)(*&v44);

        v47._countAndFlagsBits = 41;
        v47._object = 0xE100000000000000;
        String.append(_:)(v47);
        v48 = sub_1000105AC(*&v55[0], *(&v55[0] + 1), v54);

        *(v35 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v32, v33, "Programmatically dismissing %{public}s", v35, 0xCu);
        sub_10000959C(v36);

        a2 = v34;
      }

      else
      {
      }

      sub_1003B3140(v55, 0);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v50 = Strong;
        [Strong dismissViewControllerAnimated:1 completion:0];
      }

      if (v58)
      {
        v58(v30);
      }

      memset(v55, 0, sizeof(v55));
      sub_1000089F8(v3 + 16, v54, &qword_101196300, &qword_100ED4678);
      swift_beginAccess();
      sub_100590984(v55, v3 + 16);
      swift_endAccess();
      sub_10058AB84(v54);
      sub_1000095E8(v54, &qword_101196300, &qword_100ED4678);
      sub_1000095E8(v55, &qword_101196300, &qword_100ED4678);
    }

    sub_100198CAC(&v56);
  }

  else
  {
    sub_1000095E8(v55, &qword_101196300, &qword_100ED4678);
  }

  sub_10058C20C(a2, v59, a1);

  return result;
}

void sub_10058C20C(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != 3)
  {
    v26[11] = v3;
    v26[12] = v4;
    v5 = a3;
    if (sub_100031064(result, *a2))
    {
      if (qword_10117F8B0 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000060E4(v6, qword_1011961A0);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = 0xD00000000000002CLL;
        *v9 = 136446466;
        v12 = "llPlaylists";
        v26[0] = v10;
        v13 = "ansliterationSing";
        v14 = 0xD00000000000003BLL;
        if (v5 != 6)
        {
          v14 = 0xD000000000000027;
          v13 = "anslationAndTransliteration";
        }

        v15 = "Tooltip.LyricsTranslation";
        v16 = 0xD00000000000002DLL;
        if (v5 != 4)
        {
          v16 = 0xD000000000000031;
          v15 = "Tooltip.LyricsTransliteration";
        }

        if (v5 <= 5u)
        {
          v14 = v16;
          v13 = v15;
        }

        v17 = "com.apple.Music.Tooltip.Sing";
        if (v5 != 2)
        {
          v17 = "Tooltip.SharePlayTogether";
        }

        if (v5)
        {
          v11 = 0xD00000000000001CLL;
          v12 = "Tooltip.FavoritingNowPlaying";
        }

        if (v5 > 1u)
        {
          v11 = 0xD000000000000029;
          v12 = v17;
        }

        if (v5 <= 3u)
        {
          v18 = v11;
        }

        else
        {
          v18 = v14;
        }

        if (v5 <= 3u)
        {
          v19 = v12;
        }

        else
        {
          v19 = v13;
        }

        v20 = v19 | 0x8000000000000000;
        String.append(_:)(*&v18);

        v21._countAndFlagsBits = 41;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);
        v22 = sub_1000105AC(0x287069746C6F6F54, 0xE800000000000000, v26);

        *(v9 + 4) = v22;
        *(v9 + 12) = 2082;
        v23 = String.init<A>(describing:)();
        v25 = sub_1000105AC(v23, v24, v26);

        *(v9 + 14) = v25;
        _os_log_impl(&_mh_execute_header, v7, v8, "🫳👁️‍🗨️ Acknowledging %{public}s after being dropped (reason=%{public}s)", v9, 0x16u);
        swift_arrayDestroy();
      }

      sub_100588C1C(v5);
      sub_10058E588(v5);
    }
  }
}

double sub_10058C4EC()
{
  if (byte_101196188 == 1)
  {
    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_1011961A0);
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v2, "🤖 ToolTips are disabled; skipping attempt to dequeue.", v3, 2u);
    }
  }

  else if ((*(v0 + 120) & 1) == 0)
  {
    swift_beginAccess();
    sub_1000089F8(v0 + 16, v13, &qword_101196300, &qword_100ED4678);
    v5 = v14;
    sub_1000095E8(v13, &qword_101196300, &qword_100ED4678);
    if (!v5)
    {
      swift_beginAccess();
      if (*(*(v0 + 112) + 16))
      {
        v6 = v0;
        *(v0 + 120) = 1;
        if (qword_10117F8B0 != -1)
        {
          swift_once();
        }

        v7 = type metadata accessor for Logger();
        sub_1000060E4(v7, qword_1011961A0);
        v8 = Logger.logObject.getter();
        v9 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          _os_log_impl(&_mh_execute_header, v8, v9, "➡️ Needs Dequeue", v10, 2u);
        }

        sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
        v11 = static OS_dispatch_queue.main.getter();

        OS_dispatch_queue.asyncAfter(_:block:)(sub_100590F20, v6, 1.0);
      }
    }
  }

  return result;
}

void sub_10058C790()
{
  v1 = v0;
  type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin();
  v3 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101196308, &unk_100ED4680);
  __chkstk_darwin();
  v5 = &v167 - v4;
  if (*(v0 + 120) == 1)
  {
    swift_beginAccess();
    sub_1000089F8(v0 + 16, &v196, &qword_101196300, &qword_100ED4678);
    v6 = v197;
    sub_1000095E8(&v196, &qword_101196300, &qword_100ED4678);
    if (!v6)
    {
      v173 = v3;
      swift_beginAccess();
      v7 = *(v0 + 112);
      v8 = *(v7 + 16);
      v9 = _swiftEmptyArrayStorage;
      v174 = v5;
      v175 = v1;
      if (v8)
      {
        v9 = sub_1003ADF50(v8, 0);
        v10 = sub_100197D6C(&v196, (v9 + 4), v8, v7);
        v11 = v196;
        v1 = v197;
        v12 = v198;
        swift_bridgeObjectRetain_n();
        sub_10005C9F8(v11);
        if (v10 != v8)
        {
          goto LABEL_103;
        }

        v1 = v175;
      }

      v196 = v9;
      sub_10058F520(&v196);
      v13 = v196;
      v14 = v196[2];
      if (v14)
      {
        v15 = (v196 + 4);
        sub_100198BF4(&v196[12 * v14 - 8], &v196);
        if (v14 == 1)
        {
        }

        else
        {
          if (qword_10117F8B0 != -1)
          {
            swift_once();
          }

          v16 = type metadata accessor for Logger();
          sub_1000060E4(v16, qword_1011961A0);

          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v17, v18))
          {
            v170 = v18;
            v171 = v17;
            v172 = v13;
            v19 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            v186[0] = v168;
            v169 = v19;
            *v19 = 136446210;
            *&v202 = _swiftEmptyArrayStorage;
            sub_100015C04(0, v14, 0);
            v20 = v202;
            v184 = "ansliterationSing";
            v185 = "llPlaylists";
            v182 = 0xD000000000000027;
            *&v183 = "anslationAndTransliteration";
            v180 = "Tooltip.LyricsTransliteration";
            v181 = "Tooltip.LyricsTranslation";
            v178 = "Tooltip.SharePlayTogether";
            v179 = "com.apple.Music.Tooltip.Sing";
            v176 = 0xD00000000000001CLL;
            v177 = "Tooltip.FavoritingNowPlaying";
            do
            {
              sub_100198BF4(v15, &v190);
              v187 = 0x287069746C6F6F54;
              v188 = 0xE800000000000000;
              v21 = 0xD00000000000002CLL;
              v22 = 0xD00000000000003BLL;
              if (v190 != 6)
              {
                v22 = v182;
              }

              v23 = v184;
              if (v190 != 6)
              {
                v23 = v183;
              }

              v24 = 0xD00000000000002DLL;
              if (v190 != 4)
              {
                v24 = 0xD000000000000031;
              }

              v25 = v181;
              if (v190 != 4)
              {
                v25 = v180;
              }

              if (v190 <= 5u)
              {
                v22 = v24;
                v23 = v25;
              }

              v26 = v179;
              if (v190 != 2)
              {
                v26 = v178;
              }

              if (v190)
              {
                v21 = v176;
              }

              v27 = v185;
              if (v190)
              {
                v27 = v177;
              }

              if (v190 <= 1u)
              {
                v26 = v27;
              }

              else
              {
                v21 = 0xD000000000000029;
              }

              if (v190 <= 3u)
              {
                v28 = v21;
              }

              else
              {
                v28 = v22;
              }

              if (v190 <= 3u)
              {
                v29 = v26;
              }

              else
              {
                v29 = v23;
              }

              v30 = v29 | 0x8000000000000000;
              String.append(_:)(*&v28);

              v31._countAndFlagsBits = 41;
              v31._object = 0xE100000000000000;
              String.append(_:)(v31);
              v33 = v187;
              v32 = v188;
              sub_100198CAC(&v190);
              *&v202 = v20;
              v35 = *(v20 + 16);
              v34 = *(v20 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_100015C04((v34 > 1), v35 + 1, 1);
                v20 = v202;
              }

              *(v20 + 16) = v35 + 1;
              v36 = v20 + 16 * v35;
              *(v36 + 32) = v33;
              *(v36 + 40) = v32;
              v15 += 96;
              --v14;
            }

            while (v14);

            v37 = Array.description.getter();
            v39 = v38;

            v40 = sub_1000105AC(v37, v39, v186);

            v41 = v169;
            *(v169 + 1) = v40;
            v42 = v171;
            _os_log_impl(&_mh_execute_header, v171, v170, "➡️ Sorted (lowest to highest priority) tooltips=%{public}s", v41, 0xCu);
            sub_10000959C(v168);

            v1 = v175;
          }

          else
          {
          }
        }

        v12 = v196;
        v204 = v199;
        v205 = v200;
        v206 = v201;
        v202 = v197;
        v203 = v198;
        if (qword_10117F8B0 != -1)
        {
          goto LABEL_104;
        }

        while (1)
        {
          v43 = type metadata accessor for Logger();
          v44 = sub_1000060E4(v43, qword_1011961A0);
          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            *&v190 = v48;
            *v47 = 136446210;
            v49 = sub_100589014(v12);
            v51 = sub_1000105AC(v49, v50, &v190);

            *(v47 + 4) = v51;
            _os_log_impl(&_mh_execute_header, v45, v46, "⤴️ Dequeued %{public}s", v47, 0xCu);
            sub_10000959C(v48);
          }

          swift_beginAccess();
          sub_100195260(&v196, &v190);
          sub_1000095E8(&v190, &qword_101196300, &qword_100ED4678);
          swift_endAccess();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *&v190 = v55;
            *v54 = 136446210;
            v56 = sub_100589014(v12);
            v58 = sub_1000105AC(v56, v57, &v190);

            *(v54 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v52, v53, "⚡️ Creating view controller for %{public}s", v54, 0xCu);
            sub_10000959C(v55);
          }

          (v202)(&v187, v12);
          if (v189 == 1)
          {
            sub_1000095E8(&v187, &unk_1011845E0, &unk_100EBF3A0);
            goto LABEL_55;
          }

          sub_10012B828(&v187, &v190);
          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            break;
          }

          v60 = Strong;
          v179 = Strong;
          if (v195 == 0xFF)
          {
            v61 = 0;
          }

          else
          {
            v70 = *(&v190 + 1);
            v69 = v191;
            v71 = v192;
            v72 = v193;
            v73 = v194;
            if (v195)
            {
              if (v195 == 1)
              {
                v61 = [*(&v190 + 1) customView];
                v74 = v61;
                v60 = v179;
              }

              else
              {
                v76 = v1;
                objc_opt_self();
                v77 = swift_dynamicCastObjCClass();
                if (v77)
                {
                  v78 = v77;
                  sub_100590A04(v70, v69, v71, v72, v73, 2u);
                  v61 = v78;
                }

                else
                {
                  v61 = 0;
                }

                v1 = v76;
                v60 = v179;
                v79 = v61;
              }
            }

            else
            {
              sub_100590A28(*(&v190 + 1), v191, v192, v193, v194, v195);
              v75 = v73;
              v61 = v70;
              sub_100590A04(v70, v69, v71, v72, v75, 0);
              v60 = v179;
            }
          }

          v80 = swift_allocObject();
          swift_weakInit();
          v81 = swift_allocObject();
          *(v81 + 16) = v12;
          *(v81 + 24) = v80;
          v82 = v205;
          *(v81 + 64) = v204;
          *(v81 + 80) = v82;
          *(v81 + 96) = v206;
          v83 = v203;
          *(v81 + 32) = v202;
          *(v81 + 48) = v83;
          v84 = swift_allocObject();
          *(v84 + 16) = v12;
          *(v84 + 24) = sub_100590924;
          *(v84 + 32) = v81;
          v180 = v81;

          sub_1001D1980(&v202, &v187);
          LODWORD(v181) = v12;
          sub_1005893B0(sub_100590934, v84, v12, v174);

          UIEdgeInsets.init(edges:inset:)();
          v207 = v85;
          v208 = v86;
          v209 = v87;
          v210 = v88;
          v211 = 0;
          v89 = objc_allocWithZone(sub_10010FC20(&qword_101196310, &qword_100ED4690));
          v182 = v61;
          v90 = PopoverViewController.init(rootView:sourceView:sourceRectInsets:)();
          v91 = [v60 view];
          if (!v91)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);

            __break(1u);
            return;
          }

          v92 = v91;
          [v91 layoutMargins];

          v93 = [v60 view];
          if (!v93)
          {
            goto LABEL_106;
          }

          v94 = v93;
          [v93 frame];
          v96 = v95;
          v98 = v97;
          v100 = v99;
          v102 = v101;

          v212.origin.x = v96;
          v212.origin.y = v98;
          v212.size.width = v100;
          v212.size.height = v102;
          CGRectGetWidth(v212);
          UIEdgeInsets.horizontal.getter();
          v103 = [v60 view];
          if (!v103)
          {
            goto LABEL_107;
          }

          v104 = v103;
          v105 = [v103 window];

          if (v105)
          {
            v106 = [v105 traitCollection];

            v107 = [v106 horizontalSizeClass];
            if (v107 == 2)
            {
              v108 = [v60 view];
              if (!v108)
              {
                goto LABEL_108;
              }

              v109 = v108;
              UIView.maxReadableContentWidth(for:)();

              v110 = [v60 traitCollection];
              [v110 displayScale];

              CGFloat.roundValue(scale:)();
            }
          }

          v185 = v44;
          v111 = v90;
          static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
          dispatch thunk of UIHostingController.sizingOptions.setter();

          v112 = v111;
          v113 = [v60 traitCollection];
          v114 = [v113 userInterfaceStyle];

          [v112 setOverrideUserInterfaceStyle:v114];
          dispatch thunk of UIHostingController.sizeThatFits(in:)();
          [v112 setPreferredContentSize:?];
          v115 = [v112 popoverPresentationController];
          if (v115)
          {
            v116 = v115;
            [v115 setPermittedArrowDirections:*(&v203 + 1)];
          }

          dispatch thunk of PopoverViewController.allowDismissal.setter();
          v117 = v181;
          if (v61)
          {
            if (v203)
            {
              sub_10010FC20(&qword_101183990, &qword_100EBC750);
              v118 = swift_allocObject();
              *(v118 + 16) = xmmword_100EBC6C0;
              v119 = v182;
              *(v118 + 32) = v182;
              v120 = v119;
              dispatch thunk of PopoverViewController.passthroughViews.setter();
            }
          }

          v121 = swift_allocObject();
          *(v121 + 16) = v117;
          *(v121 + 24) = sub_100590924;
          *(v121 + 32) = v180;

          dispatch thunk of PopoverViewController.didDismissPopoverHandler.setter();
          swift_unknownObjectWeakAssign();
          v178 = v112;

          sub_100198BF4(&v196, &v187);
          sub_1000089F8((v1 + 16), v186, &qword_101196300, &qword_100ED4678);
          swift_beginAccess();
          sub_100590984(&v187, (v1 + 16));
          swift_endAccess();
          sub_10058AB84(v186);
          sub_1000095E8(v186, &qword_101196300, &qword_100ED4678);
          sub_1000095E8(&v187, &qword_101196300, &qword_100ED4678);
          v122 = Logger.logObject.getter();
          v123 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v122, v123))
          {
            v124 = swift_slowAlloc();
            *v124 = 0;
            _os_log_impl(&_mh_execute_header, v122, v123, "💁‍♂️ Presenting tooltip", v124, 2u);
          }

          v125 = sub_10058DF48(v117);
          v1 = v125;
          v127 = *(v125 + 2);
          if (!v127)
          {
LABEL_87:

            v136 = v179;
            v137 = [v179 presentedViewController];
            if (v137)
            {
              v138 = v137;
              v139 = v136;
              v140 = v138;
              v141 = Logger.logObject.getter();
              v142 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v141, v142))
              {
                v143 = swift_slowAlloc();
                v144 = swift_slowAlloc();
                *v143 = 138543618;
                *(v143 + 4) = v139;
                *(v143 + 12) = 2114;
                *(v143 + 14) = v140;
                *v144 = v136;
                v144[1] = v138;
                v145 = v139;
                v146 = v140;
                _os_log_impl(&_mh_execute_header, v141, v142, "💁‍♂️❌ Presentation skipped. %{public}@ is already presenting %{public}@.", v143, 0x16u);
                sub_10010FC20(&unk_101183D70, &unk_100EC6540);
                swift_arrayDestroy();
              }

              sub_10058BB38(v181, 3);

              goto LABEL_100;
            }

            v147 = [v136 parentViewController];
            if (v147)
            {

              LOBYTE(v148) = v181;
              v149 = v178;
LABEL_93:
              v150 = swift_allocObject();
              v151 = v202;
              *(v150 + 40) = v203;
              v152 = v205;
              *(v150 + 56) = v204;
              *(v150 + 72) = v152;
              *(v150 + 88) = v206;
              *(v150 + 16) = v148;
              *(v150 + 24) = v151;
              *(v150 + 104) = v149;
              v186[4] = sub_1005909F4;
              v186[5] = v150;
              v186[0] = _NSConcreteStackBlock;
              v186[1] = 1107296256;
              v186[2] = sub_10002BC98;
              v186[3] = &unk_1010B35B0;
              v153 = _Block_copy(v186);
              sub_1001D1980(&v202, &v187);
              v154 = v149;

              v140 = v179;
              [v179 presentViewController:v154 animated:1 completion:v153];

              _Block_release(v153);

              v182 = v154;
LABEL_100:

              sub_10012BA6C(&v190);
              sub_100198CAC(&v196);
              v1 = v175;
              goto LABEL_101;
            }

            v155 = [v136 view];
            v148 = v181;
            v149 = v178;
            if (v155)
            {
              v156 = v155;
              v157 = [v155 window];

              v158 = [v157 rootViewController];
              if (!v158 || (sub_100009F78(0, &qword_101183D40, UIViewController_ptr), v159 = v179, v160 = static NSObject.== infix(_:_:)(), v158, v159, (v160 & 1) == 0))
              {
                v161 = v179;
                v140 = v179;
                v162 = Logger.logObject.getter();
                v163 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v162, v163))
                {
                  v164 = swift_slowAlloc();
                  v165 = swift_slowAlloc();
                  *v164 = 138543362;
                  *(v164 + 4) = v140;
                  *v165 = v161;
                  v166 = v140;
                  _os_log_impl(&_mh_execute_header, v162, v163, "💁‍♂️❌ Presentation skipped. %{public}@ is no longer parented.", v164, 0xCu);
                  sub_1000095E8(v165, &unk_101183D70, &unk_100EC6540);
                }

                sub_10058BB38(v148, 3);

                goto LABEL_100;
              }

              goto LABEL_93;
            }

            goto LABEL_109;
          }

          v128 = 0;
          v12 = (v125 + 40);
          *&v126 = 136446210;
          v183 = v126;
          v184 = v125;
          while (v128 < *(v1 + 2))
          {
            v130 = *(v12 - 1);
            v129 = *v12;

            v131 = Logger.logObject.getter();
            v132 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v131, v132))
            {
              v133 = v127;
              v134 = swift_slowAlloc();
              v135 = swift_slowAlloc();
              v187 = v135;
              *v134 = v183;
              *(v134 + 4) = sub_1000105AC(v130, v129, &v187);
              _os_log_impl(&_mh_execute_header, v131, v132, "%{public}s", v134, 0xCu);
              sub_10000959C(v135);

              v127 = v133;
              v1 = v184;
            }

            ++v128;
            v12 += 2;
            if (v127 == v128)
            {
              goto LABEL_87;
            }
          }

          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          swift_once();
        }

        sub_10012BA6C(&v190);
LABEL_55:
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          *&v190 = v65;
          *v64 = 136446210;
          v66 = sub_100589014(v12);
          v68 = sub_1000105AC(v66, v67, &v190);

          *(v64 + 4) = v68;
          _os_log_impl(&_mh_execute_header, v62, v63, "❌ Unable to create view controller for %{public}s. No presenting view controller available.", v64, 0xCu);
          sub_10000959C(v65);
        }

        sub_10058C4EC();
        sub_100198CAC(&v196);
      }

      else
      {
      }
    }
  }

LABEL_101:
  v1[120] = 0;
}

uint64_t sub_10058DC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100588C1C(a1);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10058E588(a1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    memset(v9, 0, sizeof(v9));
    swift_beginAccess();
    sub_1000089F8(v6 + 16, v8, &qword_101196300, &qword_100ED4678);
    swift_beginAccess();
    sub_100590984(v9, v6 + 16);
    swift_endAccess();
    sub_10058AB84(v8);

    sub_1000095E8(v8, &qword_101196300, &qword_100ED4678);
    result = sub_1000095E8(v9, &qword_101196300, &qword_100ED4678);
  }

  v7 = *(a3 + 48);
  if (v7)
  {
    return v7(a1);
  }

  return result;
}

uint64_t sub_10058DDE0(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000060E4(v7, qword_1011961A0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    v12 = sub_100589014(a1);
    v14 = sub_1000105AC(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
    sub_10000959C(v11);
  }

  return a2();
}

char *sub_10058DF48(unsigned __int8 a1)
{
  v2 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100587A3C(a1, v4);
  v37 = 0;
  v38 = 0xE000000000000000;
  v5._countAndFlagsBits = 91;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = 0xD00000000000002CLL;
  v7 = "llPlaylists";
  v8 = "ansliterationSing";
  v9 = 0xD00000000000003BLL;
  if (a1 != 6)
  {
    v9 = 0xD000000000000027;
    v8 = "anslationAndTransliteration";
  }

  v10 = "Tooltip.LyricsTranslation";
  v11 = 0xD00000000000002DLL;
  if (a1 != 4)
  {
    v11 = 0xD000000000000031;
    v10 = "Tooltip.LyricsTransliteration";
  }

  if (a1 <= 5u)
  {
    v9 = v11;
    v8 = v10;
  }

  v12 = "com.apple.Music.Tooltip.Sing";
  if (a1 != 2)
  {
    v12 = "Tooltip.SharePlayTogether";
  }

  if (a1)
  {
    v6 = 0xD00000000000001CLL;
    v7 = "Tooltip.FavoritingNowPlaying";
  }

  if (a1 > 1u)
  {
    v6 = 0xD000000000000029;
    v7 = v12;
  }

  if (a1 <= 3u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v9;
  }

  if (a1 <= 3u)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14 | 0x8000000000000000;
  String.append(_:)(*&v13);

  v16._countAndFlagsBits = 5253152;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  LOBYTE(v39) = *(v4 + *(v2 + 32));
  _print_unlocked<A, B>(_:_:)();
  v17._countAndFlagsBits = 23849;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = v37;
  v19 = v38;
  v20 = sub_100498B7C(0, 1, 1, _swiftEmptyArrayStorage);
  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  v23 = v21 >> 1;
  v24 = v22 + 1;
  if (v21 >> 1 <= v22)
  {
    v20 = sub_100498B7C((v21 > 1), v22 + 1, 1, v20);
    v21 = *(v20 + 3);
    v23 = v21 >> 1;
  }

  *(v20 + 2) = v24;
  v25 = &v20[16 * v22];
  *(v25 + 4) = v18;
  *(v25 + 5) = v19;
  if (v23 < (v22 + 2))
  {
    v20 = sub_100498B7C((v21 > 1), v22 + 2, 1, v20);
  }

  *(v20 + 2) = v22 + 2;
  v26 = &v20[16 * v24];
  *(v26 + 4) = 0x100000000000003CLL;
  *(v26 + 5) = 0x8000000100E50790;
  v39 = v20;
  sub_10010FC20(&unk_101181640, &qword_100EBD090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  v28 = v4[2];
  *(inited + 32) = v4[1];
  *(inited + 40) = v28;
  *(inited + 48) = 2108704;
  *(inited + 56) = 0xE300000000000000;
  v29 = v4[4];
  v37 = v4[3];
  v38 = v29;

  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  *(inited + 64) = String.init<A>(describing:)();
  *(inited + 72) = v30;
  sub_100587540(inited, &v39);
  swift_setDeallocating();
  swift_arrayDestroy();
  v31 = v39;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_100498B7C(0, *(v31 + 2) + 1, 1, v31);
  }

  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100498B7C((v32 > 1), v33 + 1, 1, v31);
  }

  sub_1005908C4(v4, type metadata accessor for Tooltip.Configuration);
  *(v31 + 2) = v33 + 1;
  v34 = &v31[16 * v33];
  *(v34 + 4) = 0x100000000000003ALL;
  *(v34 + 5) = 0x8000000100E507D0;
  return v31;
}

void sub_10058E324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_1011961A0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446210;
    v11 = sub_100589014(a1);
    v13 = sub_1000105AC(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "✅ Presented %{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  v14 = *(a2 + 32);
  if (v14)
  {
    v14(a1, a3);
  }
}

uint64_t sub_10058E49C()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v7 = v1;
  swift_beginAccess();
  sub_1000089F8(v0 + 16, v4, &qword_101196300, &qword_100ED4678);
  if (v5)
  {
    sub_100198C50(v4, v6);
    sub_100198BF4(v6, v3);

    sub_1003B2D98(v4, v3);
    sub_100198CAC(v4);
    sub_100198CAC(v6);
    return v7;
  }

  else
  {

    sub_1000095E8(v4, &qword_101196300, &qword_100ED4678);
  }

  return v1;
}

void sub_10058E588(int a1)
{
  v101 = a1;
  v2 = a1;
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v86 - v3;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v6 = &v86 - v5;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  if (v2 > 1)
  {
    return;
  }

  v90 = v6;
  v91 = v4;
  v87 = v10;
  v88 = v7;
  v89 = v9;
  v92 = &v86 - v8;
  v11 = sub_10058E49C();
  v12 = v11;
  v13 = v11 + 56;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 56);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  v97 = "Tooltip.SharePlayTogether";
  v98 = "com.apple.Music.Tooltip.Sing";
  v99 = "Tooltip.FavoritingNowPlaying";
  v100 = "llPlaylists";
  v93 = "anslationAndTransliteration";
  v94 = "ansliterationSing";
  v95 = "Tooltip.LyricsTransliteration";
  v96 = "Tooltip.LyricsTranslation";
  if (!v16)
  {
LABEL_6:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        memset(v105, 0, 96);
        goto LABEL_65;
      }

      v16 = *(v13 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_133:
    swift_once();
LABEL_100:
    v58 = qword_101218AD0;
    v59 = GroupActivitiesManager.hasJoined.getter();
    v60 = GroupActivitiesManager.participantsCount.getter();
    v61 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v1) + 0xB8))(v12, v19, v16, v59 & 1, v60, *(v58 + v61));

    if (qword_10117F8B0 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    sub_1000060E4(v62, qword_1011961A0);
    v63 = v89;
    sub_100590860(v12, v89, v64);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      v68.n128_u64[0] = 136446466;
      *v67 = 136446466;
      sub_100590860(v63, v87, v68);
      v69 = String.init<A>(describing:)();
      v71 = v70;
      sub_1005908C4(v63, type metadata accessor for MetricsEvent.Click);
      v72 = sub_1000105AC(v69, v71, v102);

      *(v67 + 4) = v72;
      *(v67 + 12) = 2082;
      v103 = 0x287069746C6F6F54;
      v104 = 0xE800000000000000;
      v73 = 0xD00000000000002CLL;
      v74 = 0xD00000000000003BLL;
      if (v101 != 6)
      {
        v74 = 0xD000000000000027;
      }

      v75 = v94;
      if (v101 != 6)
      {
        v75 = v93;
      }

      v76 = 0xD00000000000002DLL;
      if (v101 != 4)
      {
        v76 = 0xD000000000000031;
      }

      v77 = v96;
      if (v101 != 4)
      {
        v77 = v95;
      }

      if (v101 <= 5u)
      {
        v74 = v76;
        v75 = v77;
      }

      v78 = v98;
      if (v101 != 2)
      {
        v78 = v97;
      }

      if (v101)
      {
        v73 = 0xD00000000000001CLL;
      }

      v79 = v100;
      if (v101)
      {
        v79 = v99;
      }

      if (v101 <= 1u)
      {
        v78 = v79;
      }

      else
      {
        v73 = 0xD000000000000029;
      }

      if (v101 <= 3u)
      {
        v80 = v73;
      }

      else
      {
        v80 = v74;
      }

      if (v101 <= 3u)
      {
        v81 = v78;
      }

      else
      {
        v81 = v75;
      }

      v82 = v81 | 0x8000000000000000;
      String.append(_:)(*&v80);

      v83._countAndFlagsBits = 41;
      v83._object = 0xE100000000000000;
      String.append(_:)(v83);
      v84 = sub_1000105AC(v103, v104, v102);

      *(v67 + 14) = v84;
      _os_log_impl(&_mh_execute_header, v65, v66, "🖱️🕕 Click Event %{public}s reported for %{public}s", v67, 0x16u);
      swift_arrayDestroy();

      v85 = v12;
    }

    else
    {

      sub_1005908C4(v63, type metadata accessor for MetricsEvent.Click);
      v85 = v12;
    }

    sub_1005908C4(v85, type metadata accessor for MetricsEvent.Click);
    sub_100198CAC(&v106);
    return;
  }

  while (1)
  {
    v19 = v18;
LABEL_9:
    sub_100198BF4(*(v12 + 48) + 96 * (__clz(__rbit64(v16)) | (v19 << 6)), &v103);
    sub_100198C50(&v103, v102);
    if (LOBYTE(v102[0]) > 3u)
    {
      if (LOBYTE(v102[0]) > 5u)
      {
        if (LOBYTE(v102[0]) == 6)
        {
          v23 = 0xD00000000000003BLL;
          v24 = v94;
        }

        else
        {
          v23 = 0xD000000000000027;
          v24 = v93;
        }
      }

      else if (LOBYTE(v102[0]) == 4)
      {
        v23 = 0xD00000000000002DLL;
        v24 = v96;
      }

      else
      {
        v23 = 0xD000000000000031;
        v24 = v95;
      }
    }

    else
    {
      v20 = 0xD00000000000002CLL;
      v21 = v98;
      if (LOBYTE(v102[0]) != 2)
      {
        v21 = v97;
      }

      if (LOBYTE(v102[0]))
      {
        v20 = 0xD00000000000001CLL;
      }

      v22 = v100;
      if (LOBYTE(v102[0]))
      {
        v22 = v99;
      }

      if (LOBYTE(v102[0]) <= 1u)
      {
        v23 = v20;
      }

      else
      {
        v23 = 0xD000000000000029;
      }

      if (LOBYTE(v102[0]) <= 1u)
      {
        v24 = v22;
      }

      else
      {
        v24 = v21;
      }
    }

    if (v101 > 3u)
    {
      v30 = 0xD00000000000003BLL;
      if (v101 != 6)
      {
        v30 = 0xD000000000000027;
      }

      v31 = v94;
      if (v101 != 6)
      {
        v31 = v93;
      }

      v32 = 0xD00000000000002DLL;
      if (v101 != 4)
      {
        v32 = 0xD000000000000031;
      }

      v33 = v96;
      if (v101 != 4)
      {
        v33 = v95;
      }

      if (v101 <= 5u)
      {
        v28 = v32;
      }

      else
      {
        v28 = v30;
      }

      if (v101 <= 5u)
      {
        v29 = v33;
      }

      else
      {
        v29 = v31;
      }
    }

    else
    {
      v25 = 0xD00000000000002CLL;
      v26 = v98;
      if (v101 != 2)
      {
        v26 = v97;
      }

      if (v101)
      {
        v25 = 0xD00000000000001CLL;
      }

      v27 = v100;
      if (v101)
      {
        v27 = v99;
      }

      if (v101 <= 1u)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0xD000000000000029;
      }

      if (v101 <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v26;
      }
    }

    v1 = (v29 | 0x8000000000000000);
    if (v23 == v28 && (v24 | 0x8000000000000000) == v1)
    {

      goto LABEL_64;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v34)
    {
      break;
    }

    v16 &= v16 - 1;
    sub_100198CAC(v102);
    v18 = v19;
    if (!v16)
    {
      goto LABEL_6;
    }
  }

LABEL_64:
  sub_100198C50(v102, v105);
LABEL_65:

  v36 = v90;
  v35 = v91;
  v12 = v92;
  if (v105[1])
  {
    sub_100198C50(v105, &v106);
    v37 = type metadata accessor for URL();
    v38 = (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    if (v108)
    {
      v108(v38);
    }

    else
    {
      v56 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v56 - 8) + 56))(v35, 1, 1, v56);
    }

    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(0x65736F6C63, 0xE500000000000000, 6, 19, v36, 0, 0, 12, v12, 0, 0, 0xFF00u, v35, 0);
    v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v19 = sub_10053771C();
    v16 = v57;
    if (qword_10117F600 == -1)
    {
      goto LABEL_100;
    }

    goto LABEL_133;
  }

  sub_1000095E8(v105, &qword_101196300, &qword_100ED4678);
  if (qword_10117F8B0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_1000060E4(v39, qword_1011961A0);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v105[0] = v43;
    *v42 = 136446210;
    v106 = 0x287069746C6F6F54;
    v107 = 0xE800000000000000;
    v44 = 0xD00000000000002CLL;
    v45 = 0xD00000000000003BLL;
    if (v101 != 6)
    {
      v45 = 0xD000000000000027;
    }

    v46 = v94;
    if (v101 != 6)
    {
      v46 = v93;
    }

    v47 = 0xD00000000000002DLL;
    if (v101 != 4)
    {
      v47 = 0xD000000000000031;
    }

    v48 = v96;
    if (v101 != 4)
    {
      v48 = v95;
    }

    if (v101 <= 5u)
    {
      v45 = v47;
      v46 = v48;
    }

    v49 = v98;
    if (v101 != 2)
    {
      v49 = v97;
    }

    if (v101)
    {
      v44 = 0xD00000000000001CLL;
    }

    v50 = v100;
    if (v101)
    {
      v50 = v99;
    }

    if (v101 <= 1u)
    {
      v49 = v50;
    }

    else
    {
      v44 = 0xD000000000000029;
    }

    if (v101 <= 3u)
    {
      v51 = v44;
    }

    else
    {
      v51 = v45;
    }

    if (v101 <= 3u)
    {
      v52 = v49;
    }

    else
    {
      v52 = v46;
    }

    v53 = v52 | 0x8000000000000000;
    String.append(_:)(*&v51);

    v54._countAndFlagsBits = 41;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    v55 = sub_1000105AC(v106, v107, v105);

    *(v42 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v40, v41, "🖱️🕕 ❌ Attempted to report click event for %{public}s that isn't queued nor actively presented.", v42, 0xCu);
    sub_10000959C(v43);
  }
}

uint64_t sub_10058F030()
{
  sub_1000095E8(v0 + 16, &qword_101196300, &qword_100ED4678);

  return swift_deallocClassInstance();
}

unint64_t sub_10058F0C4()
{
  result = qword_1011962E0;
  if (!qword_1011962E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011962E0);
  }

  return result;
}

unint64_t sub_10058F160()
{
  result = qword_1011962F8;
  if (!qword_1011962F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011962F8);
  }

  return result;
}

uint64_t sub_10058F1B4(uint64_t *a1)
{
  v1 = String.components(wrappedToLineLength:bullet:)(50, 0, 0xE000000000000000, *a1, a1[1]);
  v2 = *(v1 + 2);
  if (!v2)
  {
LABEL_10:

    return sub_100125B5C(_swiftEmptyArrayStorage);
  }

  sub_100015C04(0, v2, 0);
  v3 = (v1 + 40);
  while (1)
  {
    v5 = *(v3 - 1);
    v4 = *v3;

    if (String.count.getter() > 49)
    {

      v10 = v4;
      goto LABEL_7;
    }

    result = String.count.getter();
    v7 = 50 - result;
    if (__OFSUB__(50, result))
    {
      break;
    }

    v8._countAndFlagsBits = 32;
    v8._object = 0xE100000000000000;
    v9 = String.init(repeating:count:)(v8, v7);

    String.append(_:)(v9);

    v10 = v4;
LABEL_7:
    v11._countAndFlagsBits = v5;
    v11._object = v10;
    String.append(_:)(v11);

    v12._countAndFlagsBits = 31776;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      sub_100015C04((v13 > 1), v14 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = 8316;
    v15[5] = 0xE200000000000000;
    v3 += 2;
    if (!--v2)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10058F394(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101196500, &qword_100ED49B0);
  __chkstk_darwin();
  v4 = v9 - v3;
  sub_10010FC20(&qword_10119A070, "@R\n");
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v5 = sub_10010FC20(&qword_101196508, &qword_100ED49B8);
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = &v4[*(v2 + 36)];
  v7 = v9[1];
  *v6 = v9[0];
  *(v6 + 1) = v7;
  *(v6 + 2) = v9[2];
  sub_100591288();
  View.accessibilityHidden(_:)();
  return sub_1000095E8(v4, &qword_101196500, &qword_100ED49B0);
}

void sub_10058F520(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F080(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_10058F58C(v4);
  *a1 = v2;
}

void sub_10058F58C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10058F8A0(v7, v8, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10058F684(0, v2, 1, a1);
  }
}

void sub_10058F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v19 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v13 = v25 + 96 * a3;
    v14 = a1 - a3;
LABEL_5:
    v22 = a3;
    v20 = v14;
    v21 = v13;
    while (1)
    {
      sub_100198BF4(v13, v24);
      sub_100198BF4(v13 - 96, v23);
      sub_100587A3C(v24[0], v12);
      v15 = v12[*(v8 + 32)];
      sub_1005908C4(v12, type metadata accessor for Tooltip.Configuration);
      sub_100587A3C(v23[0], v10);
      v16 = v10[*(v8 + 32)];
      sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v23);
      sub_100198CAC(v24);
      if (v15 >= v16)
      {
LABEL_4:
        a3 = v22 + 1;
        v13 = v21 + 96;
        v14 = v20 - 1;
        if (v22 + 1 == v19)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v25)
      {
        break;
      }

      sub_100198C50(v13, v24);
      swift_arrayInitWithTakeFrontToBack();
      sub_100198C50(v24, v13 - 96);
      v13 -= 96;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10058F8A0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v97 = a1;
  v105 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v93 - v11;
  v103 = a3;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v97;
    if (!*v97)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v15 = sub_10059F01C(v15);
    }

    v108 = v15;
    v88 = *(v15 + 16);
    if (v88 >= 2)
    {
      while (*v103)
      {
        v89 = *(v15 + 16 * v88);
        v90 = v15;
        v91 = *(v15 + 16 * (v88 - 1) + 32);
        v15 = *(v15 + 16 * (v88 - 1) + 40);
        sub_100590224(*v103 + 96 * v89, *v103 + 96 * v91, *v103 + 96 * v15, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v15 < v89)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_10059F01C(v90);
        }

        if (v88 - 2 >= *(v90 + 2))
        {
          goto LABEL_120;
        }

        v92 = &v90[16 * v88];
        *v92 = v89;
        *(v92 + 1) = v15;
        v108 = v90;
        sub_10059EF90(v88 - 1);
        v15 = v108;
        v88 = *(v108 + 16);
        if (v88 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v94 = a4;
  v14 = 0;
  v15 = _swiftEmptyArrayStorage;
  while (1)
  {
    v16 = v14;
    v17 = v14 + 1;
    v102 = v15;
    if (v14 + 1 >= v13)
    {
      goto LABEL_26;
    }

    v99 = v13;
    v95 = v6;
    v18 = *v103;
    sub_100198BF4(*v103 + 96 * v17, v107);
    v19 = v18 + 96 * v16;
    sub_100198BF4(v19, v106);
    sub_100587A3C(v107[0], v12);
    v20 = v105;
    LODWORD(v101) = v12[*(v105 + 32)];
    sub_1005908C4(v12, type metadata accessor for Tooltip.Configuration);
    sub_100587A3C(v106[0], v10);
    LODWORD(v100) = v10[*(v20 + 32)];
    sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
    sub_100198CAC(v106);
    sub_100198CAC(v107);
    v96 = v16;
    v21 = v16 + 2;
    v5 = v19 + 192;
    v98 = 96 * v16;
    v22 = 96 * v16 + 192;
    do
    {
      v6 = v21;
      v23 = v17;
      v24 = v22;
      if (v21 >= v99)
      {
        break;
      }

      LODWORD(v104) = v101 < v100;
      sub_100198BF4(v5, v107);
      sub_100198BF4(v5 - 96, v106);
      sub_100587A3C(v107[0], v12);
      v25 = v105;
      v26 = v12[*(v105 + 32)];
      sub_1005908C4(v12, type metadata accessor for Tooltip.Configuration);
      sub_100587A3C(v106[0], v10);
      LODWORD(v25) = v10[*(v25 + 32)];
      sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v106);
      sub_100198CAC(v107);
      v27 = v26 >= v25;
      v15 = v102;
      v28 = v27;
      v29 = v104 ^ v28;
      v21 = v6 + 1;
      v5 += 96;
      v17 = v23 + 1;
      v22 = v24 + 96;
    }

    while ((v29 & 1) != 0);
    if (v101 >= v100)
    {
      goto LABEL_24;
    }

    if (v6 < v96)
    {
      goto LABEL_123;
    }

    if (v96 < v6)
    {
      v30 = v96;
      v31 = v98;
      do
      {
        if (v30 != v23)
        {
          v33 = *v103;
          if (!*v103)
          {
            goto LABEL_129;
          }

          v98 = v31;
          v34 = v33 + v31;
          v35 = v33 + v24;
          v5 = v33 + v24 - 96;
          sub_100198C50(v33 + v31, v107);
          if (v30 < v23 || v34 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v15 = v102;
          sub_100198C50(v107, v5);
          v31 = v98;
        }

        ++v30;
        v24 -= 96;
        v31 += 96;
      }

      while (v30 < v23--);
LABEL_24:
      v17 = v6;
      v6 = v95;
      v16 = v96;
      goto LABEL_26;
    }

    v17 = v6;
    v6 = v95;
    v16 = v96;
LABEL_26:
    v36 = v103[1];
    if (v17 < v36)
    {
      if (__OFSUB__(v17, v16))
      {
        goto LABEL_122;
      }

      if (v17 - v16 < v94)
      {
        v37 = v16 + v94;
        if (__OFADD__(v16, v94))
        {
          goto LABEL_124;
        }

        if (v37 >= v36)
        {
          v37 = v103[1];
        }

        if (v37 < v16)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v17 != v37)
        {
          break;
        }
      }
    }

LABEL_43:
    if (v17 < v16)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_100498FCC(0, *(v15 + 16) + 1, 1, v15);
    }

    v44 = *(v15 + 16);
    v43 = *(v15 + 24);
    v5 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v15 = sub_100498FCC((v43 > 1), v44 + 1, 1, v15);
    }

    *(v15 + 16) = v5;
    v45 = v15 + 16 * v44;
    *(v45 + 32) = v16;
    *(v45 + 40) = v17;
    v46 = *v97;
    if (!*v97)
    {
      goto LABEL_131;
    }

    v104 = v17;
    if (v44)
    {
      while (1)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v48 = *(v15 + 32);
          v49 = *(v15 + 40);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_63:
          if (v51)
          {
            goto LABEL_110;
          }

          v64 = (v15 + 16 * v5);
          v66 = *v64;
          v65 = v64[1];
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_113;
          }

          v70 = (v15 + 32 + 16 * v47);
          v72 = *v70;
          v71 = v70[1];
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_117;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v5 - 2;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        v74 = (v15 + 16 * v5);
        v76 = *v74;
        v75 = v74[1];
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_77:
        if (v69)
        {
          goto LABEL_112;
        }

        v77 = v15 + 16 * v47;
        v79 = *(v77 + 32);
        v78 = *(v77 + 40);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_84:
        v85 = v47 - 1;
        if (v47 - 1 >= v5)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v103)
        {
          goto LABEL_128;
        }

        v86 = *(v15 + 32 + 16 * v85);
        v5 = *(v15 + 32 + 16 * v47 + 8);
        sub_100590224(*v103 + 96 * v86, *v103 + 96 * *(v15 + 32 + 16 * v47), *v103 + 96 * v5, v46);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v86)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10059F01C(v15);
        }

        if (v85 >= *(v15 + 16))
        {
          goto LABEL_107;
        }

        v87 = v15 + 16 * v85;
        *(v87 + 32) = v86;
        *(v87 + 40) = v5;
        v108 = v15;
        sub_10059EF90(v47);
        v15 = v108;
        v5 = *(v108 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = v15 + 32 + 16 * v5;
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_108;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_109;
      }

      v59 = (v15 + 16 * v5);
      v61 = *v59;
      v60 = v59[1];
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_111;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_114;
      }

      if (v63 >= v55)
      {
        v81 = (v15 + 32 + 16 * v47);
        v83 = *v81;
        v82 = v81[1];
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_118;
        }

        if (v50 < v84)
        {
          v47 = v5 - 2;
        }

        goto LABEL_84;
      }

      goto LABEL_63;
    }

LABEL_3:
    v13 = v103[1];
    v14 = v104;
    if (v104 >= v13)
    {
      goto LABEL_94;
    }
  }

  v95 = v6;
  v38 = *v103;
  v5 = *v103 + 96 * v17;
  v96 = v16;
  v39 = v16 - v17;
  v99 = v37;
LABEL_36:
  v104 = v17;
  v100 = v39;
  v40 = v39;
  v101 = v5;
  while (1)
  {
    sub_100198BF4(v5, v107);
    sub_100198BF4(v5 - 96, v106);
    sub_100587A3C(v107[0], v12);
    v41 = v105;
    v42 = v12[*(v105 + 32)];
    sub_1005908C4(v12, type metadata accessor for Tooltip.Configuration);
    sub_100587A3C(v106[0], v10);
    LODWORD(v41) = v10[*(v41 + 32)];
    sub_1005908C4(v10, type metadata accessor for Tooltip.Configuration);
    sub_100198CAC(v106);
    sub_100198CAC(v107);
    if (v42 >= v41)
    {
LABEL_35:
      v17 = v104 + 1;
      v5 = v101 + 96;
      v39 = v100 - 1;
      if (v104 + 1 != v99)
      {
        goto LABEL_36;
      }

      v17 = v99;
      v6 = v95;
      v15 = v102;
      v16 = v96;
      goto LABEL_43;
    }

    if (!v38)
    {
      break;
    }

    sub_100198C50(v5, v107);
    swift_arrayInitWithTakeFrontToBack();
    sub_100198C50(v107, v5 - 96);
    v5 -= 96;
    v27 = __CFADD__(v40++, 1);
    if (v27)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_100590224(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v40 = type metadata accessor for Tooltip.Configuration(0);
  __chkstk_darwin();
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v36 = &v32 - v9;
  v10 = a2 - a1;
  v11 = (a2 - a1) / 96;
  v12 = (a3 - a2) / 96;
  if (v11 < v12)
  {
    if (a4 < a1 || a1 + 96 * v11 <= a4)
    {
      v13 = a2 - a1;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a1)
      {
        goto LABEL_12;
      }

      v13 = a2 - a1;
      swift_arrayInitWithTakeBackToFront();
    }

    v10 = v13;
LABEL_12:
    v14 = a4 + 96 * v11;
    if (v10 >= 96 && a2 < a3)
    {
      do
      {
        sub_100198BF4(a2, v39);
        sub_100198BF4(a4, v38);
        v15 = v36;
        sub_100587A3C(v39[0], v36);
        v16 = v40;
        v17 = *(v15 + *(v40 + 32));
        sub_1005908C4(v15, type metadata accessor for Tooltip.Configuration);
        v18 = v37;
        sub_100587A3C(v38[0], v37);
        LODWORD(v16) = *(v18 + *(v16 + 32));
        sub_1005908C4(v18, type metadata accessor for Tooltip.Configuration);
        sub_100198CAC(v38);
        sub_100198CAC(v39);
        if (v17 >= v16)
        {
          if (a1 < a4 || a1 >= a4 + 96)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19 = a2;
          a4 += 96;
        }

        else
        {
          v19 = a2 + 96;
          if (a1 < a2 || a1 >= v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += 96;
        if (a4 >= v14)
        {
          break;
        }

        a2 = v19;
      }

      while (v19 < a3);
    }

    a2 = a1;
    goto LABEL_50;
  }

  if (a4 < a2 || a2 + 96 * v12 <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a4 != a2)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  v14 = a4 + 96 * v12;
  if ((a3 - a2) >= 96 && a2 > a1)
  {
    v33 = a1;
    v34 = a4;
LABEL_33:
    v20 = a2 - 96;
    v21 = v14;
    do
    {
      v22 = a2;
      v23 = a3;
      v24 = v21;
      v25 = a3 - 96;
      v21 -= 96;
      sub_100198BF4(v21, v39);
      sub_100198BF4(v20, v38);
      v26 = v36;
      sub_100587A3C(v39[0], v36);
      v27 = v40;
      v35 = *(v26 + *(v40 + 32));
      sub_1005908C4(v26, type metadata accessor for Tooltip.Configuration);
      v28 = v37;
      sub_100587A3C(v38[0], v37);
      LODWORD(v27) = *(v28 + *(v27 + 32));
      sub_1005908C4(v28, type metadata accessor for Tooltip.Configuration);
      sub_100198CAC(v38);
      sub_100198CAC(v39);
      if (v35 < v27)
      {
        a3 = v25;
        if (v23 < v22 || v25 >= v22)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v34;
          v30 = v33;
          v14 = v24;
        }

        else
        {
          v29 = v23 == v22;
          a4 = v34;
          v30 = v33;
          v14 = v24;
          if (!v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        if (v14 <= a4 || (a2 = v20, v20 <= v30))
        {
          a2 = v20;
          goto LABEL_50;
        }

        goto LABEL_33;
      }

      a3 = v25;
      if (v23 < v24 || v25 >= v24)
      {
        swift_arrayInitWithTakeFrontToBack();
        a4 = v34;
        a2 = v22;
      }

      else
      {
        a4 = v34;
        a2 = v22;
        if (v23 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }
    }

    while (v21 > a4);
    v14 = v21;
  }

LABEL_50:
  if (a2 < a4 || a2 >= a4 + 96 * ((v14 - a4) / 96))
  {
    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a2 != a4)
  {
    swift_arrayInitWithTakeBackToFront();
  }

  return 1;
}

unint64_t sub_1005907F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109B9C8, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100590860(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005908C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100590984(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101196300, &qword_100ED4678);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_100590A04(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    return swift_unknownObjectRetain();
  }

  if (a6 <= 1u)
  {
    return result;
  }

  return result;
}

id sub_100590A28(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    return sub_100590A04(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_100590A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101196308, &unk_100ED4680);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100590ABC()
{
  result = qword_101196368;
  if (!qword_101196368)
  {
    sub_1001109D0(&qword_101196350, &qword_100ED46C0);
    sub_100590B78();
    sub_100590CD8(&qword_101196380, type metadata accessor for AccessoryImageModifier, &unk_100ED4960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196368);
  }

  return result;
}

unint64_t sub_100590B78()
{
  result = qword_101196370;
  if (!qword_101196370)
  {
    sub_1001109D0(&qword_101196378, &qword_100ED46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196370);
  }

  return result;
}

unint64_t sub_100590C1C()
{
  result = qword_101196388;
  if (!qword_101196388)
  {
    sub_1001109D0(&qword_101196358, &qword_100ED46C8);
    sub_100590CD8(&qword_101196390, &type metadata accessor for BubbleTipTitleViewModifier, &protocol conformance descriptor for BubbleTipTitleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196388);
  }

  return result;
}

uint64_t sub_100590CD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100590D20()
{
  result = qword_101196398;
  if (!qword_101196398)
  {
    sub_1001109D0(&qword_101196360, &qword_100ED46D0);
    sub_100590DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196398);
  }

  return result;
}

unint64_t sub_100590DA4()
{
  result = qword_1011963A0;
  if (!qword_1011963A0)
  {
    sub_1001109D0(&qword_1011963A8, &unk_100ED46E0);
    sub_100590CD8(&qword_1011963B0, &type metadata accessor for BubbleTipSubtitleViewModifier, &protocol conformance descriptor for BubbleTipSubtitleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011963A0);
  }

  return result;
}

uint64_t sub_100590E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10058914C(a1, v4, v5, v7, v6);
}

uint64_t sub_100590F24(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1000D8F7C(result, a2, a3 & 1);
  }

  return result;
}

void sub_100590F84(uint64_t a1)
{
  sub_100402A50(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100591018(uint64_t a1)
{
  sub_10002F678();
  if (v1 <= 0x3F)
  {
    sub_1005910BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1005910BC(uint64_t a1)
{
  if (!qword_1011964B0)
  {
    type metadata accessor for BubbleImage();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011964B0);
    }
  }
}

uint64_t sub_100591114(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10059115C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1005911C0()
{
  result = qword_1011964F0;
  if (!qword_1011964F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011964F0);
  }

  return result;
}

unint64_t sub_100591218()
{
  result = qword_1011964F8;
  if (!qword_1011964F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011964F8);
  }

  return result;
}

unint64_t sub_100591288()
{
  result = qword_101196510;
  if (!qword_101196510)
  {
    sub_1001109D0(&qword_101196500, &qword_100ED49B0);
    sub_100020674(&qword_101196518, &qword_101196508, &qword_100ED49B8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196510);
  }

  return result;
}

unint64_t sub_100591340()
{
  result = qword_101196520;
  if (!qword_101196520)
  {
    sub_1001109D0(&qword_101196528, &unk_100ED49C0);
    sub_100591288();
    sub_100590CD8(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196520);
  }

  return result;
}

void sub_100591474()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 180.0;
  if (v1 == 6)
  {
    v2 = 200.0;
  }

  *&xmmword_101219030 = v2;
  *(&xmmword_101219030 + 1) = v2;
}

void sub_1005914F0()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 7.0;
  if (v1 == 6)
  {
    v2 = 10.0;
  }

  qword_101219040 = *&v2;
}

void sub_10059155C()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = sub_100591624;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10003640C;
  v3[3] = &unk_1010B3C68;
  v1 = _Block_copy(v3);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_101219048 = v2;
}

id sub_100591624(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  sub_1005954F4();
  if (v1 == 2)
  {
    v2 = 44;
    v3 = 44;
    v4 = 46;
  }

  else
  {
    v2 = 245;
    v3 = 245;
    v4 = 245;
  }

  return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(v2, v3, v4, 1.0);
}

uint64_t sub_10059169C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v39 = type metadata accessor for PlainButtonStyle();
  v38 = *(v39 - 8);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10010FC20(&qword_101196540, &qword_100ED4E90);
  v36 = *(v37 - 8);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v52 = *(v1 + 16);
  v53 = *(v1 + 32);
  v47 = *(v1 + 16);
  *&v48 = *(v1 + 32);
  v35 = sub_10010FC20(&qword_101196548, &qword_100ED4E98);
  Binding.projectedValue.getter();
  v44 = *(&v50 + 1);
  v45 = v50;
  v43 = v51;
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    v10 = static Color.clear.getter();
  }

  else
  {
    if (qword_10117F8C8 != -1)
    {
      swift_once();
    }

    v11 = qword_101219048;
    v10 = Color.init(_:)();
  }

  v42 = v10;
  v12 = *v2;
  v13 = *(v2 + 8);
  v41 = static Alignment.center.getter();
  v40 = v14;
  v46 = a1 + *(sub_10010FC20(&qword_101196550, &qword_100ED4EA0) + 36);
  __chkstk_darwin();
  sub_10010FC20(&qword_101196558, &qword_100ED4EA8);
  sub_1005951E4();
  sub_100020674(&qword_101196568, &qword_101196558, &qword_100ED4EA8, &protocol conformance descriptor for TupleView<A>);
  Menu.init(content:label:)();
  PlainButtonStyle.init()();
  sub_100020674(&qword_101196570, &qword_101196540, &qword_100ED4E90, &protocol conformance descriptor for Menu<A, B>);
  sub_100596B90(&qword_10119A260, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v15 = v46;
  v16 = v37;
  v17 = v39;
  View.buttonStyle<A>(_:)();
  (*(v38 + 8))(v5, v17);
  (*(v36 + 8))(v7, v16);
  v39 = static Alignment.center.getter();
  v38 = v18;
  v19 = &v15[*(sub_10010FC20(&qword_101196578, &qword_100ED4EB0) + 36)];
  v47 = v52;
  *&v48 = v53;
  Binding.projectedValue.getter();
  v36 = *(&v50 + 1);
  v37 = v50;
  v35 = v51;
  v50 = *(v2 + 120);
  sub_10010FC20(&qword_101196580, &unk_100EDCA00);
  State.projectedValue.getter();
  v20 = v47;
  LOBYTE(v16) = v48;
  v47 = *(v2 + 72);
  LOBYTE(v48) = *(v2 + 88);
  sub_10010FC20(&qword_101185738, &qword_100EC1090);
  Binding.projectedValue.getter();
  v21 = v50;
  LOBYTE(v17) = v51;
  v22 = swift_allocObject();
  v23 = *(v2 + 112);
  *(v22 + 112) = *(v2 + 96);
  *(v22 + 128) = v23;
  *(v22 + 144) = *(v2 + 128);
  v24 = *(v2 + 48);
  *(v22 + 48) = *(v2 + 32);
  *(v22 + 64) = v24;
  v25 = *(v2 + 80);
  *(v22 + 80) = *(v2 + 64);
  *(v22 + 96) = v25;
  v26 = *(v2 + 16);
  *(v22 + 16) = *v2;
  *(v22 + 32) = v26;
  sub_100595294(v2, &v47);
  ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)(v37, v36, v35, v20, *(&v20 + 1), v16, v21, *(&v21 + 1), v19, v17, sub_100595238, v22, 0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = (v19 + *(sub_10010FC20(&qword_101196588, &qword_100ED4EB8) + 36));
  v28 = v48;
  *v27 = v47;
  v27[1] = v28;
  v27[2] = v49;
  v29 = (v19 + *(sub_10010FC20(&qword_101196590, &qword_100ED4EC0) + 36));
  v30 = v38;
  *v29 = v39;
  v29[1] = v30;
  result = sub_10010FC20(&qword_101196598, &qword_100ED4EC8);
  v32 = &v46[*(result + 36)];
  v33 = v40;
  *v32 = v41;
  v32[1] = v33;
  v34 = v44;
  *a1 = v45;
  a1[1] = v34;
  a1[2] = v43;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v42;
  return result;
}

uint64_t sub_100591D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10010FC20(&qword_101186968, &qword_100EC2440);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v53 - v6;
  __chkstk_darwin();
  v59 = &v53 - v7;
  __chkstk_darwin();
  v9 = &v53 - v8;
  sub_10010FC20(&qword_1011965A8, &unk_100ED4EE0);
  __chkstk_darwin();
  v54 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v53 - v11;
  __chkstk_darwin();
  v13 = &v53 - v12;
  __chkstk_darwin();
  v58 = &v53 - v14;
  if ([objc_opt_self() isSourceTypeAvailable:1] && (v15 = objc_msgSend(objc_opt_self(), "currentTraitCollection"), v16 = objc_msgSend(v15, "userInterfaceIdiom"), v15, v16 != 6))
  {
    v20 = swift_allocObject();
    v21 = *(a1 + 112);
    *(v20 + 112) = *(a1 + 96);
    *(v20 + 128) = v21;
    *(v20 + 144) = *(a1 + 128);
    v22 = *(a1 + 48);
    *(v20 + 48) = *(a1 + 32);
    *(v20 + 64) = v22;
    v23 = *(a1 + 80);
    *(v20 + 80) = *(a1 + 64);
    *(v20 + 96) = v23;
    v24 = *(a1 + 16);
    *(v20 + 16) = *a1;
    *(v20 + 32) = v24;
    sub_100595294(a1, v61);
    sub_10010FC20(&qword_101186978, &qword_100EC2450);
    sub_100020674(&qword_101186980, &qword_101186978, &qword_100EC2450, &protocol conformance descriptor for Label<A, B>);
    Button.init(action:label:)();
    v25 = v58;
    (*(v4 + 32))(v58, v9, v3);
    v17 = *(v4 + 56);
    v18 = v25;
    v19 = 0;
  }

  else
  {
    v17 = *(v4 + 56);
    v18 = v58;
    v19 = 1;
  }

  v26 = v17;
  v17(v18, v19, 1, v3);
  v27 = swift_allocObject();
  v28 = *(a1 + 112);
  *(v27 + 112) = *(a1 + 96);
  *(v27 + 128) = v28;
  *(v27 + 144) = *(a1 + 128);
  v29 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v29;
  v30 = *(a1 + 80);
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = v30;
  v31 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v31;
  sub_100595294(a1, v61);
  sub_10010FC20(&qword_101186978, &qword_100EC2450);
  sub_100020674(&qword_101186980, &qword_101186978, &qword_100EC2450, &protocol conformance descriptor for Label<A, B>);
  Button.init(action:label:)();
  v32 = swift_allocObject();
  v33 = *(a1 + 112);
  *(v32 + 112) = *(a1 + 96);
  *(v32 + 128) = v33;
  *(v32 + 144) = *(a1 + 128);
  v34 = *(a1 + 48);
  *(v32 + 48) = *(a1 + 32);
  *(v32 + 64) = v34;
  v35 = *(a1 + 80);
  *(v32 + 80) = *(a1 + 64);
  *(v32 + 96) = v35;
  v36 = *(a1 + 16);
  *(v32 + 16) = *a1;
  *(v32 + 32) = v36;
  sub_100595294(a1, v61);
  Button.init(action:label:)();
  v61[0] = 4;
  v37 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v37) & 1) != 0 && [type metadata accessor for ImagePlaygroundViewController() available])
  {
    v38 = swift_allocObject();
    v39 = *(a1 + 112);
    *(v38 + 112) = *(a1 + 96);
    *(v38 + 128) = v39;
    *(v38 + 144) = *(a1 + 128);
    v40 = *(a1 + 48);
    *(v38 + 48) = *(a1 + 32);
    *(v38 + 64) = v40;
    v41 = *(a1 + 80);
    *(v38 + 80) = *(a1 + 64);
    *(v38 + 96) = v41;
    v42 = *(a1 + 16);
    *(v38 + 16) = *a1;
    *(v38 + 32) = v42;
    sub_100595294(a1, v61);
    Button.init(action:label:)();
    (*(v4 + 32))(v13, v9, v3);
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v26(v13, v43, 1, v3);
  v44 = v57;
  sub_10059530C(v58, v57);
  v45 = *(v4 + 16);
  v45(v9, v59, v3);
  v46 = v56;
  v45(v56, v60, v3);
  v47 = v54;
  sub_10059530C(v13, v54);
  v48 = v44;
  v49 = v55;
  sub_10059530C(v48, v55);
  v50 = sub_10010FC20(&qword_1011965B0, &qword_100ED4EF0);
  v45((v49 + v50[12]), v9, v3);
  v45((v49 + v50[16]), v46, v3);
  sub_10059530C(v47, v49 + v50[20]);
  sub_1000095E8(v13, &qword_1011965A8, &unk_100ED4EE0);
  v51 = *(v4 + 8);
  v51(v60, v3);
  v51(v59, v3);
  sub_1000095E8(v58, &qword_1011965A8, &unk_100ED4EE0);
  sub_1000095E8(v47, &qword_1011965A8, &unk_100ED4EE0);
  v51(v46, v3);
  v51(v9, v3);
  return sub_1000095E8(v57, &qword_1011965A8, &unk_100ED4EE0);
}

uint64_t sub_100592500()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592634()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592778()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

double sub_1005928B4(uint64_t a1, char a2)
{
  v9 = *(a1 + 120);
  LOBYTE(v7[0]) = a2;
  sub_10010FC20(&qword_101196580, &unk_100EDCA00);
  State.wrappedValue.setter();
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  v11 = v4;
  *&v9 = v4;
  *(&v9 + 1) = v3;
  v10 = v5;
  sub_100595444(&v11, v7);

  sub_10010FC20(&qword_101185738, &qword_100EC1090);
  Binding.wrappedValue.getter();
  v7[0] = v4;
  v7[1] = v3;
  v8 = v5;
  Binding.wrappedValue.setter();
  sub_1005954A0(&v11);

  return result;
}

uint64_t sub_1005929A0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100009838();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100592AE4()
{
  v0 = sub_10010FC20(&qword_1011966F0, &qword_100ED51D0);
  __chkstk_darwin();
  v2 = (v13 - v1);
  v3 = static Color.accentColor.getter();
  static Color.black.getter();
  Color.opacity(_:)();

  sub_10010FC20(&qword_1011966F8, &qword_100ED51D8);
  static ShadowStyle.drop(color:radius:x:y:)();

  *v2 = v3;
  *(v2 + *(sub_10010FC20(&qword_101196700, &qword_100ED51E0) + 56)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (v2 + *(sub_10010FC20(&qword_101196708, &qword_100ED51E8) + 36));
  v5 = v13[1];
  *v4 = v13[0];
  v4[1] = v5;
  v4[2] = v13[2];
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = v2 + *(v0 + 36);
  sub_100592CDC(v9);
  v10 = (v9 + *(sub_10010FC20(&qword_101196710, &qword_100ED51F0) + 36));
  *v10 = v6;
  v10[1] = v8;
  v11 = sub_100596198();
  View.hover(corner:outset:isRelative:namespace:isEnabled:)(0, 0, 2, 0, 0, 1, 1, v0, 0.0, v11);
  return sub_1000095E8(v2, &qword_1011966F0, &qword_100ED51D0);
}

uint64_t sub_100592CDC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v19 = type metadata accessor for DynamicTypeSize();
  v1 = *(v19 - 8);
  __chkstk_darwin();
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101196738, &unk_100ED51F8);
  __chkstk_darwin();
  v6 = (&v17 - v5);
  v18 = Image.init(systemName:)();
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v8 = static Font.title2.getter();
  v9 = swift_getKeyPath();
  v10 = (v6 + *(v4 + 36));
  v11 = *(sub_10010FC20(&qword_1011A13C0, &qword_100EC0AD0) + 28);
  v12 = enum case for Image.Scale.medium(_:);
  v13 = type metadata accessor for Image.Scale();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = swift_getKeyPath();
  v14 = v17;
  *v6 = v18;
  v6[1] = KeyPath;
  v6[2] = v14;
  v6[3] = v9;
  v6[4] = v8;
  v15 = v19;
  (*(v1 + 104))(v3, enum case for DynamicTypeSize.large(_:), v19);
  sub_100596308();
  View.dynamicTypeSize(_:)();
  (*(v1 + 8))(v3, v15);
  return sub_1000095E8(v6, &qword_101196738, &unk_100ED51F8);
}

uint64_t sub_100592F48()
{
  v1 = v0;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = static Alignment.center.getter();
  v8 = v7;
  aBlock = *v0;
  *&v30 = v0[2];
  sub_10010FC20(&qword_101196548, &qword_100ED4E98);
  Binding.wrappedValue.getter();
  if (v24)
  {
    v9 = v24;
    Image.init(uiImage:)();
    (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
    v10 = Image.resizable(capInsets:resizingMode:)();

    (*(v3 + 8))(v5, v2);
    v11 = 65537;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = v1[5];
  v13 = v1[3];
  v14 = v1[4];
  v15 = objc_allocWithZone(UIColor);
  *&v31 = sub_100593630;
  *(&v31 + 1) = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v30 = sub_10003640C;
  *(&v30 + 1) = &unk_1010B3DE8;
  v16 = _Block_copy(&aBlock);

  [v15 initWithDynamicProvider:v16];
  _Block_release(v16);

  Color.init(uiColor:)();
  UIScreen.Dimensions.size.getter();
  *&v24 = v12;
  *(&v24 + 1) = v10;
  *&v25 = 0;
  BYTE10(v25) = BYTE2(v11);
  WORD4(v25) = v11;
  *&v26 = v6;
  *(&v26 + 1) = v8;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  v28[0] = 0;
  *&v28[8] = v17;
  *&v28[16] = v18;
  v28[24] = v19;
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  v20 = qword_101219040;
  v21 = sub_10010FC20(&qword_101196790, &qword_100ED5270);
  v22 = sub_100596530(&qword_101196798, &qword_101196790, &qword_100ED5270, sub_1005965B4);
  View.hover(corner:outset:isRelative:namespace:isEnabled:)(v20, -1, 0, 0, 0, 1, 1, v21, 0.0, v22);
  v31 = v26;
  v32 = v27;
  v33[0] = *v28;
  *(v33 + 9) = *&v28[9];
  aBlock = v24;
  v30 = v25;
  return sub_1000095E8(&aBlock, &qword_101196790, &qword_100ED5270);
}

uint64_t sub_100593398@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v30 = sub_10010FC20(&qword_101196768, &qword_100ED5248);
  __chkstk_darwin();
  v4 = &v30 - v3;
  v5 = v1[3];
  v6 = *(v1 + 4);
  v7 = *(v1 + 40);
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  v8 = qword_101219040;
  v9 = sub_10010FC20(&qword_101196770, &qword_100ED5250);
  v10 = sub_100020674(&qword_101196778, &qword_101196770, &qword_100ED5250, &protocol conformance descriptor for _ViewModifier_Content<A>);
  View.border(_:corner:)(v5, v7, v8, -1, 0, v9, v10, v6);
  v11 = qword_101219040;
  v12 = &v4[*(sub_10010FC20(&qword_101196780, &unk_100ED5258) + 36)];
  v13 = *(type metadata accessor for RoundedRectangle() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = v11;
  v12[1] = v11;
  *(v12 + *(sub_10010FC20(&qword_101185680, &qword_100EC1010) + 36)) = 256;
  v16 = *v2;
  v17 = v2[1];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v4[*(v30 + 36)];
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  *(v18 + 2) = v34;
  v20 = *(v2 + 16);
  if (v20)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0;
  }

  v23 = static Alignment.center.getter();
  v25 = v24;
  v26 = v4;
  v27 = v31;
  sub_100092310(v26, v31);
  result = sub_10010FC20(&qword_101196788, &qword_100ED5268);
  v29 = v27 + *(result + 36);
  *v29 = v21;
  *(v29 + 8) = v22;
  *(v29 + 16) = (v20 & 1) == 0;
  *(v29 + 24) = v23;
  *(v29 + 32) = v25;
  return result;
}

id sub_100593630(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(UIColor);
  if (v1 == 2)
  {
    v3 = 0.1;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.08;
    v4 = 0.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

double sub_1005936A4@<D0>(char *a1@<X8>)
{
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  v4 = qword_101219040;
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&a1[v5], v6, v7);
  *a1 = v4;
  *(a1 + 1) = v4;
  v8 = [objc_opt_self() systemBackgroundColor];
  v9 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v11 = &a1[*(sub_10010FC20(&qword_10118E408, &unk_100ED5300) + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = &a1[*(sub_10010FC20(&qword_10118E3E8, &qword_100ECA698) + 36)];
  *v12 = v17;
  *(v12 + 1) = v18;
  *(v12 + 2) = v19;
  static Color.black.getter();
  v13 = Color.opacity(_:)();

  v14 = &a1[*(sub_10010FC20(&qword_1011967E8, &qword_100ED5310) + 36)];
  *v14 = v13;
  *(v14 + 8) = xmmword_100ED49D0;
  *(v14 + 3) = 0x4020000000000000;
  v15 = sub_10010FC20(&qword_1011967F0, &qword_100ED5318);
  result = 0.0;
  *&a1[*(v15 + 36)] = xmmword_100ED49E0;
  return result;
}

uint64_t sub_1005938BC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011965B8, &qword_100ED4EF8);
  __chkstk_darwin();
  v8 = &v30 - v7;
  v9 = sub_10010FC20(&qword_1011965C0, &qword_100ED4F00);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v12 = *v1;
  v13 = *(v1 + 56);
  v39[4] = *(v1 + 40);
  v39[5] = v13;
  *v40 = *(v1 + 72);
  v14 = *(v1 + 88);
  v34 = *(v1 + 96);
  *&v40[16] = v14;
  v15 = *(v1 + 24);
  v39[2] = *(v1 + 8);
  v39[3] = v15;
  v16 = *(v1 + 112);
  v33 = *(v1 + 104);
  v32 = v16;
  v31 = *(v1 + 120);
  v17 = v12;
  Image.init(uiImage:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v18 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  v19 = *(v1 + 128);
  v20 = *(v1 + 136);
  v21 = objc_allocWithZone(UIColor);
  *v43 = sub_100593630;
  *&v43[8] = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_10003640C;
  *(&v42 + 1) = &unk_1010B3C90;
  v22 = _Block_copy(&aBlock);
  [v21 initWithDynamicProvider:v22];
  _Block_release(v22);

  Color.init(uiColor:)();
  UIScreen.Dimensions.size.getter();
  *&v37 = v18;
  BYTE8(v37) = 1;
  *&v38 = v19;
  *(&v38 + 1) = v20;
  LOBYTE(v39[0]) = 1;
  *(&v39[0] + 1) = v23;
  *&v39[1] = v24;
  BYTE8(v39[1]) = v25;
  v36 = *&v40[8];
  sub_10010FC20(&qword_1011965C8, &qword_100ED4F08);
  sub_100596530(&qword_1011965D0, &qword_1011965C8, &qword_100ED4F08, sub_100595540);
  sub_100009838();
  View.accessibilityLabel<A>(_:)();
  aBlock = v37;
  v42 = v38;
  *v43 = v39[0];
  *&v43[9] = *(v39 + 9);
  sub_1000095E8(&aBlock, &qword_1011965C8, &qword_100ED4F08);
  v26 = sub_100595674();
  View.accessibilityIdentifier(_:)(v34, v33, v32, v31, v6, v26);
  sub_1000095E8(v8, &qword_1011965B8, &qword_100ED4EF8);
  if (qword_10117F8C0 != -1)
  {
    swift_once();
  }

  v27 = qword_101219040;
  v28 = sub_10059575C();
  View.hover(corner:outset:isRelative:namespace:isEnabled:)(v27, -1, 0, 0, 0, 1, 1, v9, 0.0, v28);
  return sub_1000095E8(v11, &qword_1011965C0, &qword_100ED4F00);
}

uint64_t sub_100593D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v8 = a1;
  v43 = a5;
  v44 = type metadata accessor for SubmitLabel();
  v42 = *(v44 - 8);
  __chkstk_darwin();
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101196620, &qword_100ED4F60);
  __chkstk_darwin();
  v13 = v36 - v12;
  v36[0] = sub_10010FC20(&qword_101196640, &qword_100ED4FA0);
  v37 = *(v36[0] - 8);
  __chkstk_darwin();
  v15 = v36 - v14;
  v36[1] = sub_10010FC20(&qword_101196648, &qword_100ED4FA8);
  __chkstk_darwin();
  v17 = v36 - v16;
  v45 = v8;
  v46 = a2;
  v47 = a3;
  v48 = a4;
  sub_10010FC20(&qword_101196618, &qword_100ED4F28);
  Binding.projectedValue.getter();
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_100009838();
  TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
  v18 = static Font.title3.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v13[*(v11 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static Font.Weight.semibold.getter();
  v21 = sub_1005958D0();
  View.fontWeight(_:)();
  sub_1000095E8(v13, &qword_101196620, &qword_100ED4F60);
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  LOBYTE(v8) = v25;
  v45 = v11;
  v46 = v21;
  swift_getOpaqueTypeConformance2();
  v26 = v36[0];
  View.accessibility(label:)();
  sub_10011895C(v22, v24, v8 & 1);

  (*(v37 + 8))(v15, v26);
  static SubmitLabel.done.getter();
  sub_100595A7C();
  v27 = v43;
  View.submitLabel(_:)();
  (*(v42 + 8))(v10, v44);
  sub_1000095E8(v17, &qword_101196648, &qword_100ED4FA8);
  v28 = swift_getKeyPath();
  v29 = v27 + *(sub_10010FC20(&qword_101196658, &qword_100ED4FE0) + 36);
  *v29 = v28;
  *(v29 + 8) = 1;
  v30 = static Alignment.center.getter();
  v32 = v31;
  v33 = v27 + *(sub_10010FC20(&qword_101196660, &qword_100ED4FE8) + 36);
  sub_100594268(v38, v39, v40, v41, v33);
  result = sub_10010FC20(&qword_101196668, &qword_100ED4FF0);
  v35 = (v33 + *(result + 36));
  *v35 = v30;
  v35[1] = v32;
  return result;
}

uint64_t sub_100594268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a4;
  v37 = a1;
  v38 = a2;
  v41 = a5;
  sub_10010FC20(&qword_101196670, &qword_100ED4FF8);
  __chkstk_darwin();
  v6 = &v36 - v5;
  LocalizedStringKey.init(stringLiteral:)();
  v7 = Text.init(_:tableName:bundle:comment:)();
  v9 = v8;
  v11 = v10;
  static Font.title3.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;

  sub_10011895C(v7, v9, v11 & 1);

  static Font.Weight.semibold.getter();
  v17 = Text.fontWeight(_:)();
  v19 = v18;
  v21 = v20;
  sub_10011895C(v12, v14, v16 & 1);

  v22 = [objc_opt_self() quaternaryLabelColor];
  Color.init(_:)();
  v23 = Text.foregroundColor(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_10011895C(v17, v19, v21 & 1);

  v42 = v37;
  v43 = v38;
  v44 = v39;
  v45 = v40;
  sub_10010FC20(&qword_101196618, &qword_100ED4F28);
  Binding.wrappedValue.getter();
  v31 = v47;
  v30 = v48;

  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  v33 = 0.0;
  v42 = v23;
  v43 = v25;
  LOBYTE(v44) = v27 & 1;
  if (!v32)
  {
    v33 = 1.0;
  }

  v45 = v29;
  v46 = v33;
  sub_10010FC20(&qword_101196678, &qword_100ED5000);
  sub_100595B74();
  View.accessibility(hidden:)();
  sub_10011895C(v23, v25, v27 & 1);

  v34 = v41;
  sub_10003D17C(v6, v41, &qword_101196670, &qword_100ED4FF8);
  result = sub_10010FC20(&qword_101196688, &qword_100ED5008);
  *(v34 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100594570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = type metadata accessor for AccessibilityChildBehavior();
  v8 = *(v34 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v11 = sub_10010FC20(&qword_101196608, &qword_100ED4F18);
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = sub_10010FC20(&qword_101196610, &qword_100ED4F20);
  __chkstk_darwin();
  v16 = &v30 - v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v17;
  v35 = a1;
  v36 = a2;
  v37 = v31;
  v38 = v32;
  sub_10010FC20(&qword_101196618, &qword_100ED4F28);
  Binding.projectedValue.getter();
  sub_100009838();
  TextField<>.init<A>(_:text:axis:)();
  v18 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v13[*(sub_10010FC20(&qword_101196620, &qword_100ED4F60) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = static Color.primary.getter();
  v22 = swift_getKeyPath();
  v23 = &v13[*(v11 + 36)];
  *v23 = v22;
  v23[1] = v21;
  sub_100595818();
  View.lineLimit(_:reservesSpace:)();
  sub_1000095E8(v13, &qword_101196608, &qword_100ED4F18);
  LOBYTE(v21) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v24 = &v16[*(v14 + 36)];
  *v24 = v21;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  static AccessibilityChildBehavior.contain.getter();
  sub_1005959B4();
  View.accessibilityElement(children:)();
  (*(v8 + 8))(v10, v34);
  return sub_1000095E8(v16, &qword_101196610, &qword_100ED4F20);
}

void sub_10059493C(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_10011895C(v2, v4, v6 & 1);

  static Color.primary.getter();
  v12 = Text.foregroundColor(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;

  sub_10011895C(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
}

uint64_t sub_100594A84()
{
  sub_10010FC20(&qword_101185738, &qword_100EC1090);
  Binding.projectedValue.getter();
  return Toggle.init(isOn:label:)();
}

uint64_t sub_100594B14@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10010FC20(&qword_101196690, &unk_100ED5010);
  __chkstk_darwin();
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v35[-v8];
  type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin();
  v10 = 1;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._object = 0x8000000100E509B0;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v11);
  v12 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];

  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 personNameComponentsFromString:v13];

  if (v14)
  {
    static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = 0;
  }

  v15 = type metadata accessor for PersonNameComponents();
  v16 = *(v15 - 8);
  (*(v16 + 56))(v7, v10, 1, v15);
  sub_10003D17C(v7, v9, &qword_101196690, &unk_100ED5010);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1000095E8(v9, &qword_101196690, &unk_100ED5010);
  }

  else
  {
    v17 = PersonNameComponents.givenName.getter();
    v19 = v18;
    (*(v16 + 8))(v9, v15);
    if (v19)
    {

      a1 = v17;
      a2 = v19;
    }
  }

  v20._countAndFlagsBits = a1;
  v20._object = a2;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

  v21._object = 0x8000000100E509D0;
  v21._countAndFlagsBits = 0x100000000000001BLL;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringKey.init(stringInterpolation:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = static Font.footnote.getter();
  v31 = swift_getKeyPath();
  v32 = v26 & 1;
  v35[8] = v26 & 1;
  v33 = static Color.secondary.getter();
  result = swift_getKeyPath();
  *a3 = v22;
  *(a3 + 8) = v24;
  *(a3 + 16) = v32;
  *(a3 + 24) = v28;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 48) = v31;
  *(a3 + 56) = v30;
  *(a3 + 64) = result;
  *(a3 + 72) = v33;
  return result;
}

uint64_t sub_100594EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100594F0C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100594F7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100594F94(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_100594FC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_100595008(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10059507C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1005950C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005951E4()
{
  result = qword_101196560;
  if (!qword_101196560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196560);
  }

  return result;
}

uint64_t sub_10059530C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011965A8, &unk_100ED4EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059539C()
{

  return swift_deallocObject();
}

unint64_t sub_1005954F4()
{
  result = qword_101180C98;
  if (!qword_101180C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101180C98);
  }

  return result;
}

unint64_t sub_100595540()
{
  result = qword_1011965D8;
  if (!qword_1011965D8)
  {
    sub_1001109D0(&qword_1011965E0, &qword_100ED4F10);
    sub_1005955CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965D8);
  }

  return result;
}

unint64_t sub_1005955CC()
{
  result = qword_1011965E8;
  if (!qword_1011965E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965E8);
  }

  return result;
}

unint64_t sub_100595620()
{
  result = qword_1011965F0;
  if (!qword_1011965F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965F0);
  }

  return result;
}

unint64_t sub_100595674()
{
  result = qword_1011965F8;
  if (!qword_1011965F8)
  {
    sub_1001109D0(&qword_1011965B8, &qword_100ED4EF8);
    sub_100596530(&qword_1011965D0, &qword_1011965C8, &qword_100ED4F08, sub_100595540);
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011965F8);
  }

  return result;
}

unint64_t sub_10059575C()
{
  result = qword_101196600;
  if (!qword_101196600)
  {
    sub_1001109D0(&qword_1011965C0, &qword_100ED4F00);
    sub_100595674();
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196600);
  }

  return result;
}

unint64_t sub_100595818()
{
  result = qword_101196628;
  if (!qword_101196628)
  {
    sub_1001109D0(&qword_101196608, &qword_100ED4F18);
    sub_1005958D0();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196628);
  }

  return result;
}

unint64_t sub_1005958D0()
{
  result = qword_101196630;
  if (!qword_101196630)
  {
    sub_1001109D0(&qword_101196620, &qword_100ED4F60);
    sub_100020674(&qword_1011945D8, &qword_101194578, &qword_100EDC980, &protocol conformance descriptor for TextField<A>);
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196630);
  }

  return result;
}

unint64_t sub_1005959B4()
{
  result = qword_101196638;
  if (!qword_101196638)
  {
    sub_1001109D0(&qword_101196610, &qword_100ED4F20);
    sub_1001109D0(&qword_101196608, &qword_100ED4F18);
    sub_100595818();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196638);
  }

  return result;
}

unint64_t sub_100595A7C()
{
  result = qword_101196650;
  if (!qword_101196650)
  {
    sub_1001109D0(&qword_101196648, &qword_100ED4FA8);
    sub_1001109D0(&qword_101196620, &qword_100ED4F60);
    sub_1005958D0();
    swift_getOpaqueTypeConformance2();
    sub_100596B90(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196650);
  }

  return result;
}

unint64_t sub_100595B74()
{
  result = qword_101196680;
  if (!qword_101196680)
  {
    sub_1001109D0(&qword_101196678, &qword_100ED5000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196680);
  }

  return result;
}

uint64_t sub_100595C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100595C60(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_100595CBC()
{
  result = qword_101196698;
  if (!qword_101196698)
  {
    sub_1001109D0(&qword_101196550, &qword_100ED4EA0);
    sub_100595D74();
    sub_100020674(&qword_1011966A8, &qword_101196598, &qword_100ED4EC8, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196698);
  }

  return result;
}

unint64_t sub_100595D74()
{
  result = qword_1011966A0;
  if (!qword_1011966A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966A0);
  }

  return result;
}

uint64_t sub_100595DC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1001109D0(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100595E28()
{
  result = qword_1011966B0;
  if (!qword_1011966B0)
  {
    sub_1001109D0(&qword_101196660, &qword_100ED4FE8);
    sub_100595EE0();
    sub_100020674(&qword_1011966C0, &qword_101196668, &qword_100ED4FF0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966B0);
  }

  return result;
}

unint64_t sub_100595EE0()
{
  result = qword_1011966B8;
  if (!qword_1011966B8)
  {
    sub_1001109D0(&qword_101196658, &qword_100ED4FE0);
    sub_1001109D0(&qword_101196648, &qword_100ED4FA8);
    sub_100595A7C();
    swift_getOpaqueTypeConformance2();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966B8);
  }

  return result;
}

unint64_t sub_100595FD4()
{
  result = qword_1011966C8;
  if (!qword_1011966C8)
  {
    sub_1001109D0(&qword_1011966D0, &qword_100ED50C0);
    sub_10059608C();
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966C8);
  }

  return result;
}

unint64_t sub_10059608C()
{
  result = qword_1011966D8;
  if (!qword_1011966D8)
  {
    sub_1001109D0(&qword_1011966E0, &unk_100ED50C8);
    sub_100118EF8();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011966D8);
  }

  return result;
}

unint64_t sub_100596198()
{
  result = qword_101196718;
  if (!qword_101196718)
  {
    sub_1001109D0(&qword_1011966F0, &qword_100ED51D0);
    sub_100596250();
    sub_100020674(&qword_101196730, &qword_101196710, &qword_100ED51F0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196718);
  }

  return result;
}

unint64_t sub_100596250()
{
  result = qword_101196720;
  if (!qword_101196720)
  {
    sub_1001109D0(&qword_101196708, &qword_100ED51E8);
    sub_100020674(&qword_101196728, &qword_101196700, &qword_100ED51E0, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196720);
  }

  return result;
}

unint64_t sub_100596308()
{
  result = qword_101196740;
  if (!qword_101196740)
  {
    sub_1001109D0(&qword_101196738, &unk_100ED51F8);
    sub_1005963C0();
    sub_100020674(&qword_1011A1670, &qword_1011A13C0, &qword_100EC0AD0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196740);
  }

  return result;
}

unint64_t sub_1005963C0()
{
  result = qword_101196748;
  if (!qword_101196748)
  {
    sub_1001109D0(&qword_101196750, &qword_100EDBCC0);
    sub_100596478();
    sub_100020674(&unk_1011914B0, &qword_101184D00, &qword_100EC11B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196748);
  }

  return result;
}

unint64_t sub_100596478()
{
  result = qword_101196758;
  if (!qword_101196758)
  {
    sub_1001109D0(&qword_101196760, &qword_100ED5240);
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196758);
  }

  return result;
}

uint64_t sub_100596530(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    a4();
    sub_100595620();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1005965B4()
{
  result = qword_1011967A0;
  if (!qword_1011967A0)
  {
    sub_1001109D0(&qword_1011967A8, &qword_100ED5278);
    sub_100020674(&qword_1011967B0, &qword_1011967B8, &qword_100ED5280, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967A0);
  }

  return result;
}

unint64_t sub_10059667C()
{
  result = qword_1011967C0;
  if (!qword_1011967C0)
  {
    sub_1001109D0(&qword_101196788, &qword_100ED5268);
    sub_100596734();
    sub_100020674(&qword_1011967D8, &qword_1011967E0, qword_100ED52A8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967C0);
  }

  return result;
}

unint64_t sub_100596734()
{
  result = qword_1011967C8;
  if (!qword_1011967C8)
  {
    sub_1001109D0(&qword_101196768, &qword_100ED5248);
    sub_1005967C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967C8);
  }

  return result;
}

unint64_t sub_1005967C0()
{
  result = qword_1011967D0;
  if (!qword_1011967D0)
  {
    sub_1001109D0(&qword_101196780, &unk_100ED5258);
    sub_1001109D0(&qword_101196770, &qword_100ED5250);
    sub_100020674(&qword_101196778, &qword_101196770, &qword_100ED5250, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_1011A16F0, &qword_101185680, &qword_100EC1010, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967D0);
  }

  return result;
}

unint64_t sub_100596904()
{
  result = qword_1011967F8;
  if (!qword_1011967F8)
  {
    sub_1001109D0(&qword_1011967F0, &qword_100ED5318);
    sub_100596990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011967F8);
  }

  return result;
}

unint64_t sub_100596990()
{
  result = qword_101196800;
  if (!qword_101196800)
  {
    sub_1001109D0(&qword_1011967E8, &qword_100ED5310);
    sub_100596A1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196800);
  }

  return result;
}

unint64_t sub_100596A1C()
{
  result = qword_101196808;
  if (!qword_101196808)
  {
    sub_1001109D0(&qword_10118E3E8, &qword_100ECA698);
    sub_100596AA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196808);
  }

  return result;
}

unint64_t sub_100596AA8()
{
  result = qword_101196810;
  if (!qword_101196810)
  {
    sub_1001109D0(&qword_10118E408, &unk_100ED5300);
    sub_100596B90(&qword_101196818, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    sub_100020674(&unk_1011914C0, &unk_101184E90, &unk_100EC0AA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196810);
  }

  return result;
}

uint64_t sub_100596B90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s14descr101092F61V16PlaylistCellViewVMa(uint64_t a1)
{
  result = qword_101196878;
  if (!qword_101196878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100596C64(uint64_t a1)
{
  sub_100465200(319);
  if (v1 <= 0x3F)
  {
    sub_100465294(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Playlist();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100596D1C()
{
  v1 = type metadata accessor for Playlist();
  v22 = *(v1 - 8);
  __chkstk_darwin();
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011A4980, &unk_100ED53C0) - 8;
  __chkstk_darwin();
  v5 = &v20 - v4;
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  __chkstk_darwin();
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v20 - v7;
  __chkstk_darwin();
  v10 = (&v20 - v9);
  _s14descr101092F61V20PlaybackStateManagerCMa(0);
  sub_100597DD0(&qword_101190DA0, _s14descr101092F61V20PlaybackStateManagerCMa, &unk_100ECB248);
  v11 = v22;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v12 = _s14descr101092F61V16PlaylistCellViewVMa(0);
  (*(v11 + 16))(v8, v0 + *(v12 + 24), v1);
  (*(v11 + 56))(v8, 0, 1, v1);
  v13 = *(v3 + 56);
  sub_1000089F8(v10, v5, &unk_1011814D0, &qword_100EC12A0);
  sub_1000089F8(v8, &v5[v13], &unk_1011814D0, &qword_100EC12A0);
  v14 = *(v11 + 48);
  if (v14(v5, 1, v1) != 1)
  {
    sub_1000089F8(v5, v23, &unk_1011814D0, &qword_100EC12A0);
    if (v14(&v5[v13], 1, v1) != 1)
    {
      v16 = v21;
      (*(v11 + 32))(v21, &v5[v13], v1);
      sub_100597DD0(&unk_1011A4660, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);
      v17 = v23;
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = *(v11 + 8);
      v18(v16, v1);
      sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
      sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
      v18(v17, v1);
      sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
      return v15 & 1;
    }

    sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
    sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
    (*(v11 + 8))(v23, v1);
    goto LABEL_6;
  }

  sub_1000095E8(v8, &unk_1011814D0, &qword_100EC12A0);
  sub_1000095E8(v10, &unk_1011814D0, &qword_100EC12A0);
  if (v14(&v5[v13], 1, v1) != 1)
  {
LABEL_6:
    sub_1000095E8(v5, &unk_1011A4980, &unk_100ED53C0);
    v15 = 0;
    return v15 & 1;
  }

  sub_1000095E8(v5, &unk_1011814D0, &qword_100EC12A0);
  v15 = 1;
  return v15 & 1;
}

__n128 sub_100597204@<Q0>(uint64_t a1@<X8>)
{
  _s14descr101092F61V16PlaylistCellViewVMa(0);
  *&v14 = Playlist.name.getter();
  *(&v14 + 1) = v2;
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v10 = v7 & 1;
  KeyPath = swift_getKeyPath();
  v12 = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v10;
  *(a1 + 24) = v9;
  *(a1 + 96) = v18;
  *(a1 + 112) = v19;
  *(a1 + 128) = v20;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  result = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v17;
  *(a1 + 144) = KeyPath;
  *(a1 + 152) = 0;
  *(a1 + 160) = v12;
  *(a1 + 168) = 2;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_10059732C@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for ArtworkImage.ReusePolicy();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v10 = &v25[-v9];
  _s14descr101092F61V16PlaylistCellViewVMa(0);
  Playlist.artworkViewModel.getter(v10);
  Playlist.variant.getter();
  v11 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v11 - 8) + 56))(v8, 0, 11, v11);
  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(0, 1, 0, 1, 0, 1, 2, v37);
  (*(v4 + 104))(v6, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v3);
  v12 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v10, v8, v37, v6, a2);
  (*(v4 + 8))(v6, v3, v12);
  sub_100172200(v8);
  sub_1000095E8(v10, &unk_10118A5E0, &unk_100EBCD90);
  v13 = a2 + *(sub_10010FC20(&qword_1011968F0, &qword_100ED53A8) + 36);
  *v13 = 0;
  *(v13 + 8) = 257;
  v14 = static Alignment.center.getter();
  v16 = v15;
  sub_1005976C0(&v26);
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v38 = v26;
  v39 = v27;
  v40 = v28;
  v41 = v29;
  *&v49 = v14;
  *(&v49 + 1) = v16;
  v17 = (a2 + *(sub_10010FC20(&qword_1011968C0, &qword_100ED5390) + 36));
  v18 = v47;
  v17[8] = v46;
  v17[9] = v18;
  v19 = v49;
  v17[10] = v48;
  v17[11] = v19;
  v20 = v43;
  v17[4] = v42;
  v17[5] = v20;
  v21 = v45;
  v17[6] = v44;
  v17[7] = v21;
  v22 = v39;
  *v17 = v38;
  v17[1] = v22;
  v23 = v41;
  v17[2] = v40;
  v17[3] = v23;
  v50[8] = v34;
  v50[9] = v35;
  v50[10] = v36;
  v50[4] = v30;
  v50[5] = v31;
  v50[6] = v32;
  v50[7] = v33;
  v50[0] = v26;
  v50[1] = v27;
  v50[2] = v28;
  v50[3] = v29;
  v51 = v14;
  v52 = v16;
  sub_1000089F8(&v38, v25, &qword_101196900, &qword_100ED53B0);
  return sub_1000095E8(v50, &qword_101196900, &qword_100ED53B0);
}

__n128 sub_1005976C0@<Q0>(uint64_t a2@<X8>)
{
  if (sub_100596D1C())
  {
    static Color.black.getter();
    v3 = Color.opacity(_:)();

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    type metadata accessor for PlaybackIndicator(0);
    sub_100597DD0(&qword_101186998, type metadata accessor for PlaybackIndicator, &unk_100ED4320);
    StateObject.wrappedValue.getter();
    v15 = sub_100586FC8();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *v23 = v3;
    *&v23[8] = v16;
    *&v23[72] = v20;
    *&v23[56] = v19;
    *&v23[88] = v21;
    *&v23[104] = v22;
    *&v23[24] = v17;
    *&v23[40] = v18;
    v27 = *&v23[48];
    v26 = *&v23[32];
    v25 = *&v23[16];
    v24 = *v23;
    v30 = *&v23[96];
    v29 = *&v23[80];
    v28 = *&v23[64];
    v35 = v18;
    v34 = v17;
    v33 = v16;
    v4 = v51;
    v5 = v52;
    v6 = v53;
    v7 = v54;
    v13 = v56;
    v14 = v55;
    v31 = *(&v22 + 1);
    v32 = v3;
    v39 = v22;
    v38 = v21;
    v37 = v20;
    v36 = v19;
    sub_1000089F8(v23, &v57, &qword_101196908, &qword_100ED53B8);
    sub_1000095E8(&v32, &qword_101196908, &qword_100ED53B8);
    v44 = v28;
    v45 = v29;
    v46 = v30;
    *&v47 = v31;
    v40 = v24;
    v41 = v25;
    v42 = v26;
    v43 = v27;
    BYTE8(v47) = v15;
    *&v48 = v4;
    BYTE8(v48) = v5;
    *&v49 = v6;
    BYTE8(v49) = v7;
    *&v50 = v14;
    *(&v50 + 1) = v13;
    UIScreen.Dimensions.size.getter();
    v65 = v48;
    v66 = v49;
    v67 = v50;
    v61 = v44;
    v62 = v45;
    v63 = v46;
    v64 = v47;
    v57 = v40;
    v58 = v41;
    v59 = v42;
    v60 = v43;
  }

  else
  {
    sub_100597DB0(&v57);
  }

  v8 = v66;
  *(a2 + 128) = v65;
  *(a2 + 144) = v8;
  *(a2 + 160) = v67;
  v9 = v62;
  *(a2 + 64) = v61;
  *(a2 + 80) = v9;
  v10 = v64;
  *(a2 + 96) = v63;
  *(a2 + 112) = v10;
  v11 = v58;
  *a2 = v57;
  *(a2 + 16) = v11;
  result = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_100597A18()
{
  sub_10010FC20(&qword_1011968B8, &qword_100ED5388);
  sub_10010FC20(&qword_1011968C0, &qword_100ED5390);
  sub_100597AE4();
  sub_100597C54();
  return Label.init(title:icon:)();
}

unint64_t sub_100597AE4()
{
  result = qword_1011968C8;
  if (!qword_1011968C8)
  {
    sub_1001109D0(&qword_1011968B8, &qword_100ED5388);
    sub_100597B9C();
    sub_100020674(&qword_1011860B8, &unk_10119A2E0, &qword_100ED53A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968C8);
  }

  return result;
}

unint64_t sub_100597B9C()
{
  result = qword_1011968D0;
  if (!qword_1011968D0)
  {
    sub_1001109D0(&qword_1011968D8, &qword_100ED5398);
    sub_1001195A4();
    sub_100020674(&unk_10118A590, &qword_10119A2F0, &unk_100EC4E40, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968D0);
  }

  return result;
}

unint64_t sub_100597C54()
{
  result = qword_1011968E0;
  if (!qword_1011968E0)
  {
    sub_1001109D0(&qword_1011968C0, &qword_100ED5390);
    sub_100597D0C();
    sub_100020674(&qword_1011968F8, &qword_101196900, &qword_100ED53B0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968E0);
  }

  return result;
}

unint64_t sub_100597D0C()
{
  result = qword_1011968E8;
  if (!qword_1011968E8)
  {
    sub_1001109D0(&qword_1011968F0, &qword_100ED53A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011968E8);
  }

  return result;
}

double sub_100597DB0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100597DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIMenu sub_100597E50()
{
  preferredElementSize = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = 0;
  sub_10059AEA0(&v4, v0, &v5);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v4 = 1;
  sub_10059AEA0(&v4, v0, &v5);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v7.value.super.isa = 0;
  v7.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v1, 0, v7, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v3);
}

id sub_100597FA8(int a1, id a2, uint64_t a3, uint64_t (*a4)(id), uint64_t a5, uint64_t a6)
{
  [objc_msgSend(a2 "container")];
  v8 = v7;
  swift_unknownObjectRelease();
  v9 = [a2 traitCollection];
  v10 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 0, v10 & 1, v50, v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong _directionalAccessoryEdgeInsets];
    leading = v13;
  }

  else
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
  }

  v15 = v52;
  if (v52 <= leading + 2.0)
  {
    v15 = leading + 2.0;
  }

  if ((v8 + -1.0) * 0.5 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = (v8 + -1.0) * 0.5;
  }

  v17 = [a2 traitCollection];
  v18 = [v17 userInterfaceIdiom];

  v19 = 0.0;
  if (v18 == 6)
  {
    v19 = *HI.HoverOutset.grid.unsafeMutableAddressor();
  }

  v20 = objc_opt_self();
  v21 = [v20 fractionalWidthDimension:1.0 / v53];
  v22 = [v20 estimatedDimension:150.0];
  v23 = objc_opt_self();
  v24 = [v23 sizeWithWidthDimension:v21 heightDimension:v22];

  v25 = [objc_opt_self() itemWithLayoutSize:v24];
  v26 = [v20 fractionalWidthDimension:1.0];
  v27 = [v20 estimatedDimension:150.0];
  v28 = [v23 sizeWithWidthDimension:v26 heightDimension:v27];

  v29 = objc_opt_self();
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6C0;
  *(v30 + 32) = v25;
  sub_100009F78(0, &qword_101196A10, NSCollectionLayoutItem_ptr);
  v47 = v25;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v29 horizontalGroupWithLayoutSize:v28 subitems:isa];

  v33 = [objc_opt_self() fixedSpacing:v51];
  [v32 setInterItemSpacing:v33];

  v34 = [objc_opt_self() sectionWithGroup:v32];
  [v34 setInterGroupSpacing:20.0];
  if (a4([v34 setContentInsets:{v19, v16, v19, v16}]))
  {
    v35 = [v20 fractionalWidthDimension:1.0];
    v36 = [v20 estimatedDimension:38.0];
    v37 = [v23 sizeWithWidthDimension:v35 heightDimension:v36];

    v38 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v37 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_100EBC6C0;
    *(v39 + 32) = v38;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v40 = v38;
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v34 setBoundarySupplementaryItems:v41];
  }

  [objc_msgSend(a2 container];
  v43 = v42;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v44 = *(a6 + 16);
  if (v44)
  {
    v45 = v44;
    [v45 setContentInsets:{v19, v16 + v43, v19, v16}];
  }

  return v34;
}

void *sub_100598570(__n128 a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(id), uint64_t a12, uint64_t a13)
{
  v80 = a9;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v79 = a10;
  v14 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UICollectionLayoutListConfiguration();
  v81 = *(v22 - 8);
  v82 = v22;
  *&v23 = __chkstk_darwin().n128_u64[0];
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = a3;
  [objc_msgSend(a3 container];
  v27 = v26;
  swift_unknownObjectRelease();
  v28 = HI.SizeClass.init(_:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    [Strong _directionalAccessoryEdgeInsets];
    v85 = v31;
    v74 = v32;
    v84 = v33;
    v71 = v34;

    v35 = *&NSDirectionalEdgeInsetsZero.top;
    v73 = *&NSDirectionalEdgeInsetsZero.bottom;
    v72 = v35;
    v35.f64[0] = v84.f64[0];
    *&v35.f64[1] = v71;
    v84 = v35;
    v35.f64[0] = v85.f64[0];
    *&v35.f64[1] = v74;
    v85 = v35;
  }

  else
  {
    v36 = *&NSDirectionalEdgeInsetsZero.bottom;
    v85 = *&NSDirectionalEdgeInsetsZero.top;
    v72 = v85;
    v84 = v36;
    v73 = v36;
  }

  *&v74 = a12;
  v37 = HI.SizeClass.margin.getter(v28);
  if (v37 <= v85.f64[1] + 2.0)
  {
    v37 = v85.f64[1] + 2.0;
  }

  if ((v27 + -1.0) * 0.5 >= v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = (v27 + -1.0) * 0.5;
  }

  (*(v19 + 104))(v21, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v18);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v15 + 104))(v17, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v14);
  v39 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  UIListSeparatorConfiguration.topSeparatorVisibility.setter();
  v39(v87, 0);
  v40 = [v83 traitCollection];
  sub_10045B4D0();
  UITraitCollection.subscript.getter();

  UICollectionLayoutListConfiguration.showsSeparators.setter();
  LOBYTE(v40) = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v85, v72), vceqq_f64(v84, v73))));
  static UIListSeparatorConfiguration.automaticInsets.getter();
  v42 = v41;
  if ((v40 & 1) == 0 && v41 <= v38)
  {
    v42 = v38;
  }

  v43 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
  v44 = UIListSeparatorConfiguration.bottomSeparatorInsets.modify();
  *(v45 + 24) = v42;
  v44(v86, 0);
  v43(v87, 0);
  v46 = swift_allocObject();
  swift_beginAccess();
  v47 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v48 = swift_allocObject();
  v48[2] = v46;
  v49 = v75;
  v50 = v76;
  v48[3] = v75;
  v48[4] = v50;
  sub_100030444(v49, v50);
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  sub_100030444(v77, v78);
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  sub_100030444(v80, v79);
  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
  v51 = v83;
  v52 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  [v52 setContentInsetsReference:2];
  v53 = [v51 traitCollection];
  v54 = [v53 userInterfaceIdiom];

  if (v54 == 6)
  {
    [v52 setContentInsets:{0.0, v38, 0.0, v38}];
    HI.HoverOutset.list.unsafeMutableAddressor();
    [v52 contentInsets];
    v55 = [v52 setContentInsets:?];
  }

  if (a11(v55))
  {
    v56 = objc_opt_self();
    v57 = [v56 fractionalWidthDimension:1.0];
    v58 = [v56 estimatedDimension:38.0];
    v59 = [objc_opt_self() sizeWithWidthDimension:v57 heightDimension:v58];

    v60 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v59 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v61 = [v51 traitCollection];
    v62 = [v61 userInterfaceIdiom];

    if (v62 == 6)
    {
      HI.HoverOutset.list.unsafeMutableAddressor();
      v63 = v60;
      [v63 contentInsets];
      [v63 setContentInsets:?];
    }

    else
    {
      [v60 setContentInsets:{0.0, v38, 0.0, v38}];
    }

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100EBC6C0;
    *(v64 + 32) = v60;
    sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v65 = v60;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v52 setBoundarySupplementaryItems:isa];
  }

  [objc_msgSend(v51 "container")];
  v68 = v67;
  swift_unknownObjectRelease();
  swift_beginAccess();
  v69 = *(a13 + 16);
  if (v69)
  {
    [v69 setContentInsets:{0.0, v38 + v68, 0.0, v38}];
  }

  (*(v81 + 8))(v25, v82);
  return v52;
}

void sub_100598E1C(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a4)(uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a1;
  v10 = type metadata accessor for UIListSeparatorConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v29 = *(v14 - 8);
  v15 = __chkstk_darwin();
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(a6, a2, v10, v15);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v19 = Strong;
  v20 = [Strong dataSource];
  if (v20)
  {
    v21 = v20;
    if (([v20 respondsToSelector:"numberOfSectionsInCollectionView:"] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    v28 = [v21 numberOfSectionsInCollectionView:v19];
    swift_unknownObjectRelease();
    v22 = [v19 dataSource];
    if (v22)
    {
      v27 = [v22 collectionView:v19 numberOfItemsInSection:IndexPath.section.getter()];
      swift_unknownObjectRelease();
      v23 = IndexPath.section.getter();
      if (__OFSUB__(v28, 1))
      {
        __break(1u);
      }

      else
      {
        if (v23 != v28 - 1)
        {
          goto LABEL_11;
        }

        v24 = IndexPath.item.getter();
        if (!__OFSUB__(v27, 1))
        {
          if (v24 == v27 - 1)
          {
            v25 = &enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
LABEL_12:
            (*(v29 + 104))(v17, *v25, v14);
            UIListSeparatorConfiguration.bottomSeparatorVisibility.setter();
            goto LABEL_13;
          }

LABEL_11:
          v25 = &enum case for UIListSeparatorConfiguration.Visibility.automatic(_:);
          goto LABEL_12;
        }
      }

      __break(1u);
      return;
    }
  }

LABEL_13:

LABEL_14:
  if (a4)
  {
    v26 = v30;

    a4(v31, a6);
    sub_100020438(a4, v26);
    (*(v11 + 8))(a6, v10);
    (*(v11 + 32))(a6, v13, v10);
  }
}

_UNKNOWN **sub_10059913C(uint64_t a1, void *a2, __n128 a3)
{
  v5 = type metadata accessor for UIListSeparatorConfiguration.Visibility();
  v99 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICollectionLayoutListConfiguration();
  v101 = *(v12 - 8);
  *&v102 = v12;
  __chkstk_darwin();
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v97 = *(v98 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v96 - v15;
  [objc_msgSend(a2 container];
  v18 = v17;
  swift_unknownObjectRelease();
  v19 = [a2 traitCollection];
  v20 = UITraitCollection.isAccessibilitySizeCategory.getter();

  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 0, v20 & 1, v104, v18);
  v21 = v106;
  v22 = sub_10059B3FC();
  v23 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v22);
  if (v23)
  {
    result = &off_10109BAD0;
  }

  else
  {
    result = &off_10109BAF8;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (result[2] <= a1)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (v23)
  {
    v25 = &off_10109BAD0;
  }

  else
  {
    v25 = &off_10109BAF8;
  }

  v26 = *(v25 + a1 + 32);

  if (v26 > 1)
  {
    if (v26 == 2 || (v108 & 1) != 0)
    {
      (*(v9 + 104))(v11, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v8);
      v42 = v100;
      UICollectionLayoutListConfiguration.init(appearance:)();
      (*(v99 + 104))(v7, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v5);
      v43 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
      UIListSeparatorConfiguration.topSeparatorVisibility.setter();
      v43(v103, 0);
      static UIListSeparatorConfiguration.automaticInsets.getter();
      static UIListSeparatorConfiguration.automaticInsets.getter();
      v44 = UICollectionLayoutListConfiguration.separatorConfiguration.modify();
      UIListSeparatorConfiguration.bottomSeparatorInsets.setter();
      v44(v103, 0);
      sub_100009F78(0, &qword_101191398, NSCollectionLayoutSection_ptr);
      v41 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      [v41 contentInsets];
      [v41 setContentInsets:?];
      v45 = objc_opt_self();
      v46 = [v45 fractionalWidthDimension:1.0];
      v47 = [v45 estimatedDimension:38.0];
      v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

      v49 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v48 elementKind:UICollectionElementKindSectionHeader alignment:1];
      [v49 setContentInsets:{0.0, v21, 0.0, v21}];
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_100EBC6C0;
      *(v50 + 32) = v49;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v51 = v49;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 setBoundarySupplementaryItems:isa];

      (*(v101 + 8))(v42, v102);
    }

    else
    {
      v74 = objc_opt_self();
      v75 = [v74 fractionalWidthDimension:1.0 / v107];
      v76 = [v74 estimatedDimension:150.0];
      v77 = objc_opt_self();
      v78 = [v77 sizeWithWidthDimension:v75 heightDimension:v76];

      v79 = [objc_opt_self() itemWithLayoutSize:v78];
      v80 = [v74 fractionalWidthDimension:1.0];
      v81 = [v74 estimatedDimension:150.0];
      v82 = [v77 sizeWithWidthDimension:v80 heightDimension:v81];

      v83 = objc_opt_self();
      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v84 = swift_allocObject();
      v102 = xmmword_100EBC6C0;
      *(v84 + 16) = xmmword_100EBC6C0;
      *(v84 + 32) = v79;
      sub_100009F78(0, &qword_101196A10, NSCollectionLayoutItem_ptr);
      v85 = v79;
      v86 = Array._bridgeToObjectiveC()().super.isa;

      v87 = [v83 horizontalGroupWithLayoutSize:v82 subitems:v86];

      v88 = [objc_opt_self() fixedSpacing:v105];
      [v87 setInterItemSpacing:v88];

      v41 = [objc_opt_self() sectionWithGroup:v87];
      [v41 setInterGroupSpacing:20.0];
      [v41 setContentInsets:{0.0, v21, 0.0, v21}];
      v89 = [v74 fractionalWidthDimension:1.0];
      v90 = [v74 estimatedDimension:38.0];
      v91 = [v77 sizeWithWidthDimension:v89 heightDimension:v90];

      v92 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v91 elementKind:UICollectionElementKindSectionHeader alignment:1];
      v93 = swift_allocObject();
      *(v93 + 16) = v102;
      *(v93 + 32) = v92;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v94 = v92;
      v95 = Array._bridgeToObjectiveC()().super.isa;

      [v41 setBoundarySupplementaryItems:v95];
    }
  }

  else if (v26)
  {
    [objc_msgSend(a2 "container")];
    v54 = v53;
    swift_unknownObjectRelease();
    v55 = v54 - (v21 + v21);
    v56 = objc_opt_self();
    v57 = [v56 absoluteDimension:(v55 + -24.0) / 3.0];
    v58 = [v56 estimatedDimension:150.0];
    v59 = objc_opt_self();
    v60 = [v59 sizeWithWidthDimension:v57 heightDimension:v58];

    v61 = [v56 fractionalWidthDimension:1.0];
    v62 = [v56 estimatedDimension:150.0];
    v63 = [v59 sizeWithWidthDimension:v61 heightDimension:v62];

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    MusicLibrary.pinsObserver.getter();

    dispatch thunk of MusicLibraryPinsObserver.pins.getter();

    sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
    v64 = v98;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v65 = dispatch thunk of Collection.distance(from:to:)();
    (*(v97 + 8))(v16, v64);
    if (v65 <= 1)
    {
      v66 = 1;
    }

    else
    {
      v66 = v65;
    }

    if (v66 >= 3)
    {
      v67 = 3;
    }

    else
    {
      v67 = v66;
    }

    v68 = (v55 - ((v55 + -24.0) / 3.0 * v67 + (v67 - 1) * 12.0)) * 0.5;
    v69 = objc_opt_self();
    v70 = [objc_opt_self() itemWithLayoutSize:v60];
    sub_10059B774(v70, v67);

    sub_100009F78(0, &qword_101196A10, NSCollectionLayoutItem_ptr);
    v71 = Array._bridgeToObjectiveC()().super.isa;

    v72 = [v69 horizontalGroupWithLayoutSize:v63 subitems:v71];

    [v72 setContentInsets:{0.0, v68, 0.0, v68}];
    v73 = [objc_opt_self() fixedSpacing:12.0];
    [v72 setInterItemSpacing:v73];

    v41 = [objc_opt_self() sectionWithGroup:v72];
    [v41 setInterGroupSpacing:v21];
    [v41 setContentInsets:{10.0, v21, 24.0, v21}];
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 fractionalWidthDimension:1.0];
    v29 = [v27 estimatedDimension:150.0];
    v30 = objc_opt_self();
    v31 = [v30 sizeWithWidthDimension:v28 heightDimension:v29];

    v32 = [objc_opt_self() itemWithLayoutSize:v31];
    v33 = [v27 fractionalWidthDimension:1.0];
    v34 = [v27 estimatedDimension:150.0];
    v35 = [v30 sizeWithWidthDimension:v33 heightDimension:v34];

    v36 = objc_opt_self();
    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100EBC6C0;
    *(v37 + 32) = v32;
    sub_100009F78(0, &qword_101196A10, NSCollectionLayoutItem_ptr);
    v38 = v32;
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v36 horizontalGroupWithLayoutSize:v35 subitems:v39];

    v41 = [objc_opt_self() sectionWithGroup:v40];
    [v41 setContentInsets:{0.0, v21, 0.0, v21}];
  }

  return v41;
}

void *sub_10059A0C4(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      sub_10010FC20(a3, a4);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = a2;
      v9 = *(sub_10010FC20(a3, a4) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      sub_1000089F8(v7, v8 + v10, a3, a4);
      v11 = a2 - 1;
      if (a2 != 1)
      {
        v12 = *(v9 + 72);
        v13 = v8 + v12 + v10;
        do
        {
          sub_1000089F8(v7, v13, a3, a4);
          v13 += v12;
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    sub_1000095E8(v7, a3, a4);
    return v8;
  }

  return result;
}

uint64_t sub_10059A1DC(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v1 = String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  [objc_opt_self() systemImageNamed:v2];

  return v1;
}

uint64_t sub_10059A3AC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1684632167;
  }

  if (*a2)
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1684632167;
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

Swift::Int sub_10059A424()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10059A48C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_10059A4D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10059A53C(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109BB20, *a1);

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

void sub_10059A59C(uint64_t *a1@<X8>)
{
  v2 = 1684632167;
  if (*v1)
  {
    v2 = 1953720684;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_10059A684(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v15 = a1;
  v16 = a2;

  v6._countAndFlagsBits = 0x5674756F79614C2DLL;
  v6._object = 0xEE00746E61697261;
  String.append(_:)(v6);

  v7 = v16;
  *(v3 + 40) = v15;
  *(v3 + 48) = v7;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_10059B27C();
  sub_10059B2D0();

  NSUserDefaults.decodeValue<A>(_:forKey:)(&_s13LayoutVariantON, &v15);

  v9 = v15;
  if (v15 == 2)
  {
    v9 = a3;
  }

  *(v4 + 32) = v9 & 1;
  sub_100009F78(0, &qword_10118CE58, NSUserDefaults_ptr);
  v10 = *(v4 + 48);
  v15 = *(v4 + 40);
  v16 = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_100009838();

  v13 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(&v15, 0, 0, sub_10059B324, v11, &type metadata for String, v12);

  *(v4 + 56) = v13;

  return v4;
}

double sub_10059A888(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v4 = v14 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 64) & 1) == 0)
    {
      v7 = Strong;
      sub_1000089F8(a1, v15, &unk_101183F30, qword_100EBF960);
      if (!v15[3])
      {

        sub_1000095E8(v15, &unk_101183F30, qword_100EBF960);
        return result;
      }

      if (swift_dynamicCast())
      {
        v9 = v14[1];
        v8 = v14[2];
        type metadata accessor for JSONDecoder();
        swift_allocObject();
        JSONDecoder.init()();
        sub_10059B27C();
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();

        v10 = v15[0];
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
        type metadata accessor for MainActor();

        v12 = static MainActor.shared.getter();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = &protocol witness table for MainActor;
        *(v13 + 32) = v7;
        *(v13 + 40) = v10;
        sub_1001F4CB8(0, 0, v4, &unk_100ED5658, v13);

        sub_10002C064(v9, v8);
      }
    }
  }

  return result;
}

uint64_t sub_10059AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10059AD00, v7, v6);
}

uint64_t sub_10059AD00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v2 + 32);
  *(v2 + 32) = v1 & 1;
  sub_10059AD74(v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10059AD74(char a1)
{
  if (a1)
  {
    v2 = 1953720684;
  }

  else
  {
    v2 = 1684632167;
  }

  if (*(v1 + 32))
  {
    v3 = 1953720684;
  }

  else
  {
    v3 = 1684632167;
  }

  if (v2 == v3)
  {
    return swift_bridgeObjectRelease_n();
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = swift_bridgeObjectRelease_n();
  if ((v5 & 1) == 0)
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v7 = *(v1 + 24);
      v8 = *(v1 + 32);

      v6(v8);
      sub_100020438(v6, v7);
    }

    v9 = [objc_opt_self() standardUserDefaults];
    v10 = *(v1 + 32);
    v11[3] = &_s13LayoutVariantON;
    v11[4] = sub_10059B27C();
    v11[5] = sub_10059B2D0();
    LOBYTE(v11[0]) = v10;
    NSUserDefaults.encodeValue(_:forKey:)(v11);

    return sub_10000959C(v11);
  }

  return result;
}

void sub_10059AEA0(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_10059A1DC(*a1);
  v6 = v5;
  if (*(a2 + 32))
  {
    v7 = 1953720684;
  }

  else
  {
    v7 = 1684632167;
  }

  if (v4)
  {
    v8 = 1953720684;
  }

  else
  {
    v8 = 1684632167;
  }

  if (v7 == v8)
  {
    v18 = v5;

    swift_bridgeObjectRelease_n();
    v9 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18 = v6;

    swift_bridgeObjectRelease_n();
    v9 = v10 & 1;
  }

  sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v4;
  v17 = v12;
  v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  _StringGuts.grow(_:)(27);

  v14._countAndFlagsBits = v8;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);

  v15._countAndFlagsBits = 0xD000000000000019;
  v15._object = 0x8000000100E50BA0;
  AccessibilityIdentifier.init(name:)(v15);

  v16 = String._bridgeToObjectiveC()();

  [v13 setAccessibilityIdentifier:{v16, 0, 0, v9, sub_10059B3F0, v17}];

  *a3 = v13;
}

double sub_10059B0F0(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + 64) = 1;
    v7 = *(Strong + 32);
    *(v6 + 32) = a3 & 1;
    sub_10059AD74(v7);
    *(v6 + 64) = 0;
  }

  return result;
}

uint64_t sub_10059B164()
{
  sub_100020438(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_10059B228()
{
  result = qword_1011969F0;
  if (!qword_1011969F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011969F0);
  }

  return result;
}

unint64_t sub_10059B27C()
{
  result = qword_1011969F8;
  if (!qword_1011969F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011969F8);
  }

  return result;
}

unint64_t sub_10059B2D0()
{
  result = qword_101196A00;
  if (!qword_101196A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A00);
  }

  return result;
}

uint64_t sub_10059B32C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10059AC64(a1, v4, v5, v6, v7);
}

unint64_t sub_10059B3FC()
{
  result = qword_101196A08;
  if (!qword_101196A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A08);
  }

  return result;
}

id sub_10059B450(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  if (a2)
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
  v20[2] = v19;
  v20[3] = a3;
  v20[4] = a4;
  v20[5] = v8;
  v21 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v25[4] = sub_10059B870;
  v25[5] = v20;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 1107296256;
  v25[2] = sub_1005A63A8;
  v25[3] = &unk_1010B40B0;
  v22 = _Block_copy(v25);

  v23 = [v21 initWithSectionProvider:v22 configuration:v7];

  _Block_release(v22);

  return v23;
}

void *sub_10059B774(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_100009F78(0, &qword_101196A10, NSCollectionLayoutItem_ptr);
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_10059B810()
{
  result = qword_101196A18;
  if (!qword_101196A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196A18);
  }

  return result;
}

uint64_t sub_10059B87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v15;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v9 = type metadata accessor for URL();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  sub_10010FC20(&qword_10118A418, &unk_100EDD860);
  v8[22] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_10118A420, &qword_100ED5700);
  v8[23] = v10;
  v8[24] = *(v10 - 8);
  v8[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[26] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[27] = v12;
  v8[28] = v11;

  return _swift_task_switch(sub_10059BA20, v12, v11);
}

uint64_t sub_10059BA20()
{
  v1 = v0[22];
  v2 = type metadata accessor for ReferrerInfo();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_10059BB04;
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[14];

  return MusicPageProvider.openURL(_:referrerInfo:)(v4, v6, v5);
}

uint64_t sub_10059BB04()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  *(*v1 + 240) = v0;

  sub_1000095E8(v3, &qword_10118A418, &unk_100EDD860);
  if (v0)
  {
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_10059BF38;
  }

  else
  {
    (*(v2[24] + 8))(v2[25], v2[23]);
    v4 = v2[27];
    v5 = v2[28];
    v6 = sub_10059BC64;
  }

  return _swift_task_switch(v6, v4, v5);
}

void *sub_10059BC64()
{
  v15 = v0;
  v1 = *(*(v0 + 136) + 32);
  if ((v1 & 0x8000000000000000) != 0)
  {
    v3 = (v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    v2 = v1;
    v3 = sub_1006BDE5C();

    if (!v3)
    {

      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
LABEL_11:
      sub_1000095E8(v0 + 56, &qword_101196AA0, &qword_100ED5710);
      if (qword_10117F618 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000060E4(v6, qword_101218AF0);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 120);
        v9 = *(v0 + 128);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_1000105AC(v10, v9, &v14);
        _os_log_impl(&_mh_execute_header, v7, v8, "Couldn't get PPT test host view controller for PPT: %s", v11, 0xCu);
        sub_10000959C(v12);
      }

      goto LABEL_16;
    }
  }

  *(v0 + 96) = v3;
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  sub_10010FC20(&qword_101196A98, &qword_100ED5708);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_10;
  }

  if (!*(v0 + 80))
  {
LABEL_10:

    goto LABEL_11;
  }

  v4 = *(v0 + 144);
  sub_100059A8C((v0 + 56), v0 + 16);
  result = sub_10000954C((v0 + 16), *(v0 + 40));
  if (!v4)
  {
    __break(1u);
    return result;
  }

  dispatch thunk of PPTTestHost.runTest(_:options:)();
  sub_10000959C((v0 + 16));
LABEL_16:

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10059BF38()
{
  v22 = v0;

  if (qword_10117F618 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101218AF0);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[20];
  v9 = v0[21];
  v11 = v0[19];
  if (v8)
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000105AC(v13, v12, &v21);
    *(v14 + 12) = 2080;
    sub_1005A04D4();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_1000105AC(v15, v17, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to open url for PPT: %s, url=%s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_10059C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v134 = a3;
  v135 = a4;
  v133 = a2;
  v132 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v7 = *(v132 + 64);
  __chkstk_darwin();
  v8 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v132 - v9;
  __chkstk_darwin();
  v12 = &v132 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin().n128_u64[0];
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    if (a5 == 1)
    {
      v18 = a5 >> 8;
      if (sub_10059D380(a5 >> 8, a1))
      {
        v19 = [objc_opt_self() mainRunLoop];
        Date.init(timeIntervalSinceNow:)();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v17, v13);
        [v19 runUntilDate:isa];

        v21 = UIApp;
        if (UIApp)
        {
          v22 = swift_allocObject();
          v24 = v133;
          v23 = v134;
          *(v22 + 16) = v133;
          *(v22 + 24) = v23;
          v25 = v135;
          *(v22 + 32) = v135;
          v26 = 1;
          *(v22 + 40) = 1;
          *(v22 + 41) = v18;
          v140 = sub_1005A052C;
          v141 = v22;
          aBlock = _NSConcreteStackBlock;
          v137 = 1107296256;
          v138 = sub_1005C3688;
          v139 = &unk_1010B4278;
          v27 = _Block_copy(&aBlock);

          v28 = v21;

          v29 = swift_allocObject();
          *(v29 + 16) = v24;
          *(v29 + 24) = v23;
          *(v29 + 32) = v25;
          *(v29 + 40) = 1;
          *(v29 + 41) = v18;
          v140 = sub_1005A0538;
          v141 = v29;
          aBlock = _NSConcreteStackBlock;
          v137 = 1107296256;
          v138 = sub_1005C3688;
          v139 = &unk_1010B42C8;
          v30 = _Block_copy(&aBlock);

          [v28 rotateIfNeeded:v25 before:v27 after:v30];
          _Block_release(v30);
          _Block_release(v27);

          return v26;
        }

        __break(1u);
        goto LABEL_67;
      }

      return 0;
    }

    if (v135 <= 1)
    {
      if (v135)
      {
        if (UIApp)
        {
          LODWORD(v135) = a5 >> 8;
          v95 = UIApp;
          v96 = v133;
          v97 = v134;
          v98 = String._bridgeToObjectiveC()();
          [v95 startedTest:v98];

          v99 = &v12[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
          *v12 = 5;
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v99 = 0;
          v99[1] = 0;
          swift_storeEnumTagMultiPayload();
          v100 = swift_allocObject();
          *(v100 + 16) = v96;
          *(v100 + 24) = v97;
          v26 = 1;
          *(v100 + 32) = 1;
          *(v100 + 40) = 2;
          *(v100 + 41) = v135;
          sub_100115B50(v12, v10);
          sub_100115B50(v10, v8);
          v101 = (*(v132 + 80) + 32) & ~*(v132 + 80);
          v102 = swift_allocObject();
          *(v102 + 16) = sub_1005A058C;
          *(v102 + 24) = v100;
          sub_100115BB4(v8, v102 + v101);

          sub_100706900(v10, sub_100137E88, v102);

          sub_100115C8C(v10);
          sub_100115C8C(v12);
          return v26;
        }

        goto LABEL_69;
      }

      if (sub_10059D380(a5 >> 8, a1))
      {
        v49 = [objc_opt_self() mainRunLoop];
        Date.init(timeIntervalSinceNow:)();
        v50 = Date._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v17, v13);
        [v49 runUntilDate:v50];
      }

      return 0;
    }

    if (v135 == 2)
    {
      v71 = v134;
      if (UIApp)
      {
        v72 = UIApp;
        v73 = v133;
        v74 = String._bridgeToObjectiveC()();
        [v72 startedTest:v74];

        v75 = *(a1 + 32);
        v76 = (v75 & 0x7FFFFFFFFFFFFFFFLL);
        if (v75 >= 0)
        {
          v77 = *(a1 + 32);
        }

        else
        {
          v77 = (v75 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v78 = swift_allocObject();
        *(v78 + 16) = v73;
        *(v78 + 24) = v71;
        *(v78 + 32) = 2;
        *(v78 + 40) = 2;
        *(v78 + 41) = a5 >> 8;
        v140 = sub_1005A0574;
        v141 = v78;
        aBlock = _NSConcreteStackBlock;
        v137 = 1107296256;
        v138 = sub_10002BC98;
        v139 = &unk_1010B4318;
        v79 = _Block_copy(&aBlock);

        v80 = v76;

        v26 = 1;
        [v77 dismissViewControllerAnimated:1 completion:v79];
        _Block_release(v79);

        return v26;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v38 = v134;
    v39 = a1;
    if (v135 == 3)
    {
      if ((sub_10059D380(a5 >> 8, a1) & 1) == 0)
      {
        return 0;
      }

      if (!UIApp)
      {
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v40 = UIApp;
      v41 = v133;
      v42 = String._bridgeToObjectiveC()();
      [v40 startedTest:v42];

      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v38;
      *(v43 + 32) = 3;
      *(v43 + 40) = 2;
      *(v43 + 41) = a5 >> 8;
      v44 = *(v39 + 32);
      if ((v44 & 0x8000000000000000) != 0)
      {
        v122 = UIApp;
        if (UIApp)
        {

          v123 = v122;
          v124 = String._bridgeToObjectiveC()();
          v26 = 1;
          [v123 finishedTest:v124 waitForCommit:1 extraResults:0];

          return v26;
        }

        goto LABEL_72;
      }

      if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
      {

        v128 = v44;
        sub_10010EFBC(_swiftEmptyArrayStorage);
        v46 = v129;
      }

      else
      {

        v45 = v44;
        v46 = &_swiftEmptySetSingleton;
      }

      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      __chkstk_darwin();
      *(&v132 - 4) = v48;
      *(&v132 - 3) = sub_1005A0974;
      v130 = v43;
      UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, (&v132 - 6));
      sub_10059DF88(v47, sub_1005A0974, v43, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

      goto LABEL_52;
    }

    v81 = [*(a1 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
    if (!v81)
    {
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v82 = v81;
    v83 = [v81 window];

    if (!v83)
    {
      v131 = 0;
      v130 = 276;
      goto LABEL_75;
    }

    v84 = objc_allocWithZone(RPTResizeTestParameters);
    v85 = v83;
    v86 = String._bridgeToObjectiveC()();
    v87 = [v84 initWithTestName:v86 window:v85 completionHandler:0];

    [v87 setMinimumWindowSize:{375.0, 490.0}];
    v88 = [v85 screen];
    [v88 bounds];
    v90 = v89;
    v92 = v91;

    [v87 setMaximumWindowSize:{v90, v92}];
    v93 = objc_opt_self();
    v94 = v87;
    [v93 runTestWithParameters:v94];

    return 1;
  }

  v31 = a5 >> 8;
  v32 = a1;
  if ((sub_10059D380(a5 >> 8, a1) & 1) == 0)
  {
    return 0;
  }

  v33 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  v34 = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v17, v13);
  [v33 runUntilDate:v34];

  if (BYTE2(a5) != 255 && (a5 & 0xFF0000) == 0x10000)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v36 = v134;
    if (!Strong)
    {
      return 0;
    }

    v37 = Strong;
LABEL_25:
    v52 = [v37 contentScrollViewForEdge:{1, v132}];
    v53 = v52;
    if (!v52)
    {
      v54 = [v37 contentScrollView];
      if (!v54)
      {

        return 0;
      }

      v53 = v54;
      v52 = 0;
    }

    v55 = v135;
    v56 = v52;
    if (v55 != 2)
    {

      if (!UIApp)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v103 = UIApp;
      v104 = v133;
      v105 = String._bridgeToObjectiveC()();
      [v103 startedTest:v105];

      v106 = swift_allocObject();
      *(v106 + 16) = v104;
      *(v106 + 24) = v36;
      *(v106 + 32) = v135;
      *(v106 + 40) = 0;
      *(v106 + 41) = v31;
      v107 = swift_allocObject();
      *(v107 + 16) = 3;
      *(v107 + 24) = sub_1005A05D0;
      *(v107 + 32) = v106;
      *(v107 + 40) = v53;
      *(v107 + 48) = xmmword_100ED5670;
      v140 = sub_1005A05D4;
      v141 = v107;
      aBlock = _NSConcreteStackBlock;
      v137 = 1107296256;
      v138 = sub_10002BC98;
      v139 = &unk_1010B4408;
      v108 = _Block_copy(&aBlock);
      v109 = v53;

      [v109 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v108 willBeginDecelerating:0.0 didEndDecelerating:{10.0, 0.0}];

      _Block_release(v108);

      return 1;
    }

    v57 = [v53 window];
    if (v57)
    {
      v58 = v57;
      [v57 bounds];
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;

      v67 = v66;
      v68 = v64;
      v69 = v62;
      v70 = v60;
    }

    else
    {
      [v53 bounds];
    }

    v110 = CGRectGetHeight(*&v70) * 20.0;
    if ((*&v110 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v110 > -2147483650.0)
    {
      if (v110 < 2147483650.0)
      {
        v111 = v110;
        v13 = swift_allocObject();
        v112 = v133;
        *(v13 + 16) = v53;
        *(v13 + 24) = v112;
        v113 = v135;
        *(v13 + 32) = v36;
        *(v13 + 40) = v113;
        *(v13 + 48) = 0;
        *(v13 + 49) = v31;
        *(v13 + 52) = 40;
        *(v13 + 56) = v111;
        v17 = *(v32 + 32);
        if ((v17 & 0x8000000000000000) != 0)
        {
          v120 = v53;

          v121 = String._bridgeToObjectiveC()();
          v26 = 1;
          [v120 _performScrollTest:v121 iterations:1 delta:40 length:v111];

          return v26;
        }

        if (!(_swiftEmptyArrayStorage >> 62))
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        v125 = v53;

        v126 = v17;
        sub_10010EFBC(_swiftEmptyArrayStorage);
        v116 = v127;
        goto LABEL_51;
      }

LABEL_50:
      v114 = v53;

      v115 = v17;
      v116 = &_swiftEmptySetSingleton;
LABEL_51:
      v117 = swift_allocObject();
      *(v117 + 16) = v116;
      __chkstk_darwin();
      *(&v132 - 4) = v118;
      *(&v132 - 3) = sub_1005A05D8;
      v130 = v13;
      UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, (&v132 - 6));
      sub_10059DF88(v117, sub_1005A05D8, v13, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

LABEL_52:

      return 1;
    }

    __break(1u);
    goto LABEL_61;
  }

  v51 = *(v32 + 32);
  v36 = v134;
  if ((v51 & 0x8000000000000000) == 0)
  {
    v17 = v51;
    v37 = sub_1006BAD7C();

    if (!v37)
    {
      return 0;
    }

    goto LABEL_25;
  }

LABEL_73:
  v131 = 0;
  v130 = 190;
LABEL_75:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10059D2EC()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1 waitForCommit:1 extraResults:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_10059D380(__int16 a1, uint64_t a2)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v35 - v6;
  v8 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v35 - v11;
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v35 - v14;
  if (HIBYTE(a1) == 255)
  {
    goto LABEL_2;
  }

  if (!HIBYTE(a1))
  {
    v19 = &v15[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
    *v15 = a1;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    LOBYTE(v5) = 1;
    swift_storeEnumTagMultiPayload();
    *v19 = 0;
    v19[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100115B50(v15, v12);
    sub_100115B50(v12, v10);
    v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    sub_100115BB4(v10, v21 + v20);
    sub_100706900(v12, sub_100139B24, v21);

    sub_100115C8C(v12);
    sub_100115C8C(v15);
    return (v5 & 1);
  }

  if (HIBYTE(a1) == 1)
  {
    v16 = &v15[*(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48)];
    *v15 = a1;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v16 = 0;
    v16[1] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100115B50(v15, v12);
    sub_100115B50(v12, v10);
    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_100115BB4(v10, v18 + v17);
    sub_100706900(v12, sub_100139B24, v18);

    sub_100115C8C(v12);
    sub_100115C8C(v15);
LABEL_6:
    LOBYTE(v5) = 1;
    return (v5 & 1);
  }

  if (a1)
  {
    if (a1 != 1)
    {
      v32 = *(a2 + 32);
      if ((v32 & 0x8000000000000000) == 0)
      {
        v33 = v32;
        v34 = [v33 sidebar];
        [v34 setHidden:0];

        goto LABEL_6;
      }

      goto LABEL_2;
    }

    result = [*(a2 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
    if (result)
    {
      v23 = result;
      v24 = [result window];

      if (v24)
      {
        v25 = [v24 windowScene];

        if (v25)
        {
          URL.init(string:)();
          v26 = type metadata accessor for URL();
          result = (*(*(v26 - 8) + 48))(v5, 1, v26);
          if (result != 1)
          {
            type metadata accessor for LaunchOptions(0);
            swift_allocObject();
            v27 = v25;
            sub_1002B8D68(v5, 0, v27);
            LOBYTE(v5) = sub_1002C5A04();

LABEL_20:

            return (v5 & 1);
          }

          goto LABEL_26;
        }
      }

LABEL_2:
      LOBYTE(v5) = 0;
      return (v5 & 1);
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  result = [*(a2 + 32) & 0x7FFFFFFFFFFFFFFFLL view];
  if (!result)
  {
    goto LABEL_25;
  }

  v28 = result;
  v29 = [result window];

  if (!v29)
  {
    goto LABEL_2;
  }

  v5 = [v29 windowScene];

  if (!v5)
  {
    return (v5 & 1);
  }

  URL.init(string:)();
  v30 = type metadata accessor for URL();
  result = (*(*(v30 - 8) + 48))(v7, 1, v30);
  if (result != 1)
  {
    type metadata accessor for LaunchOptions(0);
    swift_allocObject();
    v31 = v5;
    sub_1002B8D68(v7, 0, v31);
    LOBYTE(v5) = sub_1002C5A04();

    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10059D960(uint64_t a1, void (*a2)(void), uint64_t a3, void *a4, double a5, double a6)
{
  if (a1)
  {
    v8 = a1 - 1;
    if (__OFSUB__(a1, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = a2;
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
      *(v12 + 48) = a5;
      *(v12 + 56) = a6;
      v15[4] = sub_1005A0978;
      v15[5] = v12;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_10002BC98;
      v15[3] = &unk_1010B4480;
      v13 = _Block_copy(v15);

      v14 = a4;

      [v14 _simulateScrollWithTranslation:0 duration:0 willBeginDragging:0 didEndDragging:v13 willBeginDecelerating:a5 didEndDecelerating:{a6, 0.0}];
      _Block_release(v13);
    }
  }

  else
  {
    (a2)(0, a2, a3, a4, a5, a6);
  }
}

void sub_10059DA98()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DB24()
{
  if (UIApp)
  {
    v0 = UIApp;
    v1 = String._bridgeToObjectiveC()();
    [v0 finishedTest:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (UIApp)
  {
    v7 = UIApp;
    v8 = String._bridgeToObjectiveC()();
    [v7 *a6];
  }

  else
  {
    __break(1u);
  }
}

void sub_10059DC3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    v17 = a1;
    if (v12(ObjectType, v10))
    {
    }

    else
    {
      swift_beginAccess();
      v13 = v17;
      sub_1003B4A00(&v18, v13);
      swift_endAccess();

      v14 = swift_allocObject();
      v14[2] = a3;
      v14[3] = v13;
      v14[4] = a4;
      v14[5] = a5;
      v15 = *(v10 + 24);
      v16 = v13;

      v15(sub_10059FA90, v14, ObjectType, v10);
    }
  }
}

double sub_10059DDD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = sub_100195D24(a2);
  swift_endAccess();

  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a3;
  v9[4] = a4;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {

    sub_10010EFBC(_swiftEmptyArrayStorage);
    v10 = v14;
  }

  else
  {

    v10 = &_swiftEmptySetSingleton;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  __chkstk_darwin();
  v15[2] = v12;
  v15[3] = sub_10059FA9C;
  v15[4] = v9;
  UIViewController.traverseViewControllerHierarchy(_:)(sub_1005A097C, v15);
  sub_10059DF88(v11, sub_10059FA9C, v9, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

  return result;
}

void sub_10059DF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = *(a1 + 16);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = __CocoaSet.count.getter();

    if (v12)
    {
      return;
    }
  }

  else if (*(v11 + 16))
  {
    return;
  }

  v13 = UIApp;
  if (UIApp)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a2;
    *(v14 + 24) = a3;
    aBlock[4] = a5;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = a6;
    v15 = _Block_copy(aBlock);
    v16 = v13;

    [v16 installCACommitCompletionBlock:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_10059E0E4(char *a1, char *a2)
{
  v54 = a1;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v53 = &v46 - v3;
  v47 = sub_10010CEA4(_swiftEmptyArrayStorage);
  v4 = static TabIdentifier.allCases.getter();
  v50 = v4[2];
  if (!v50)
  {
LABEL_38:

    v41 = v47;
    v42 = *(v47 + 16);
    if (v42)
    {
      v43 = sub_1003ADDB8(*(v47 + 16), 0);
      v44 = sub_10019776C(v56, (v43 + 32), v42, v41);
      v45 = v56[0];

      sub_10005C9F8(v45);
      if (v44 == v42)
      {
LABEL_42:
        v56[0] = v43;
        sub_10059E60C(v56);

        return;
      }

      __break(1u);
    }

    v43 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v5 = 0;
  v48 = v4;
  v49 = (v4 + 4);
LABEL_4:
  v6 = *(v49 + v5);
  v52 = v5;
  if (v6 > 2)
  {
    v7 = &_swiftEmptySetSingleton;
    if ((v6 - 5) < 2)
    {
      goto LABEL_15;
    }

    if (v6 == 3)
    {
      v8 = &off_10109A7F8;
    }

    else
    {
      v8 = &off_10109A828;
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v7 = sub_1000158E0(&off_10109A7A8);
      swift_arrayDestroy();
      goto LABEL_15;
    }

    v8 = &off_10109A748;
  }

  else
  {
    v8 = &off_10109A778;
  }

  v7 = sub_1000158E0(v8);
  sub_100015BB0((v8 + 4));
LABEL_15:
  v51 = v6;
  v9 = v7 + 56;
  v10 = 1 << v7[32];
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v7 + 7);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v55 = v7;
  while (2)
  {
    v15 = v14;
    if (!v12)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v14 = v15;
LABEL_24:
      v16 = *(v7 + 6) + ((v14 << 10) | (16 * __clz(__rbit64(v12))));
      v17 = *v16;
      v18 = *(v16 + 8);
      v12 &= v12 - 1;
      v56[0] = v54;
      v56[1] = a2;
      v19 = a2;
      v56[5] = v17;
      v56[6] = v18;
      v20 = type metadata accessor for Locale();
      v21 = v53;
      (*(*(v20 - 8) + 56))(v53, 1, 1, v20);
      sub_100009838();

      v22 = StringProtocol.range<A>(of:options:range:locale:)();
      v24 = v23;
      v26 = v25;
      sub_1000095E8(v21, &unk_101182EA0, &unk_100EBE980);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v15 = v14;
      a2 = v19;
      v7 = v55;
      if (!v12)
      {
        while (1)
        {
LABEL_21:
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v14 >= v13)
          {
            break;
          }

          v12 = *&v9[8 * v14];
          ++v15;
          if (v12)
          {
            goto LABEL_24;
          }
        }

        v5 = v52 + 1;
        if ((v52 + 1) == v50)
        {
          goto LABEL_38;
        }

        goto LABEL_4;
      }
    }

    v27 = v47;
    HIDWORD(v46) = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v27;
    v29 = sub_1006BE9AC(v51);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      break;
    }

    if (*(v27 + 24) >= v32)
    {
      if ((v46 & 0x100000000) == 0)
      {
        LODWORD(v47) = v28;
        sub_1006CA208();
        LOBYTE(v28) = v47;
      }

      goto LABEL_33;
    }

    LODWORD(v47) = v28;
    sub_1006C3D00(v32, HIDWORD(v46));
    v33 = sub_1006BE9AC(v51);
    v34 = v28 & 1;
    LOBYTE(v28) = v47;
    if ((v47 & 1) == v34)
    {
      v29 = v33;
LABEL_33:
      v35 = v56[0];
      v47 = v56[0];
      if (v28)
      {
        v36 = (*(v56[0] + 7) + 16 * v29);
        *v36 = v22;
        v36[1] = v24;
LABEL_37:

        a2 = v19;
        v7 = v55;
        continue;
      }

      *&v56[0][8 * (v29 >> 6) + 64] |= 1 << v29;
      *(*(v35 + 6) + v29) = v51;
      v37 = (*(v35 + 7) + 16 * v29);
      *v37 = v22;
      v37[1] = v24;
      v38 = *(v35 + 2);
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        *(v35 + 2) = v40;
        goto LABEL_37;
      }

      goto LABEL_45;
    }

    break;
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void sub_10059E60C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10059F058(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 40;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >> 14 >= *v13 >> 14)
          {
            break;
          }

          v14 = v13[16];
          v15 = *(v13 + 4);
          *(v13 + 1) = *(v13 - 8);
          *(v13 + 4) = *(v13 + 1);
          *(v13 - 8) = v14;
          *v13 = v11;
          *(v13 + 1) = v15;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10010FC20(&qword_101196A88, &qword_100ED56D8);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_10059E77C(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_10059E77C(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_10059F01C(v9);
    }

    v85 = v9 + 16;
    v86 = *(v9 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v9[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_10059ED4C((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, a1);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_112;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_113;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_114;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 24 * v8 + 8);
      v12 = 24 * v10;
      v13 = *a3 + 24 * v10;
      v14 = v11 >> 14;
      v15 = *(v13 + 8) >> 14;
      v16 = v10 + 2;
      v17 = (v13 + 56);
      while (v6 != v16)
      {
        v18 = *v17;
        v17 += 3;
        v19 = (v14 < v15) ^ (v18 >> 14 >= v11 >> 14);
        ++v16;
        v11 = v18;
        if ((v19 & 1) == 0)
        {
          v8 = v16 - 1;
          if (v14 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v14 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v20 = 0;
        v21 = 24 * v8;
        v22 = v10;
        do
        {
          if (v22 != v8 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v23 = (v28 + v12);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = *(v23 + 8);
            v27 = *(v24 - 24);
            *(v23 + 2) = *(v24 - 8);
            *v23 = v27;
            *(v24 - 24) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 24;
          v12 += 24;
        }

        while (v22 < v8 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100498FCC(0, *(v9 + 2) + 1, 1, v9);
    }

    v39 = *(v9 + 2);
    v38 = *(v9 + 3);
    v40 = v39 + 1;
    if (v39 >= v38 >> 1)
    {
      v9 = sub_100498FCC((v38 > 1), v39 + 1, 1, v9);
    }

    *(v9 + 2) = v40;
    v41 = &v9[16 * v39];
    *(v41 + 4) = v10;
    *(v41 + 5) = v8;
    v42 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v39)
    {
      while (1)
      {
        v43 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v44 = *(v9 + 4);
          v45 = *(v9 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_103;
          }

          v60 = &v9[16 * v40];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v9[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_110;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v40 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v70 = &v9[16 * v40];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_71:
        if (v65)
        {
          goto LABEL_105;
        }

        v73 = &v9[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_108;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_78:
        v81 = v43 - 1;
        if (v43 - 1 >= v40)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v82 = *&v9[16 * v81 + 32];
        v83 = *&v9[16 * v43 + 40];
        sub_10059ED4C((*a3 + 24 * v82), (*a3 + 24 * *&v9[16 * v43 + 32]), *a3 + 24 * v83, v42);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v83 < v82)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10059F01C(v9);
        }

        if (v81 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v84 = &v9[16 * v81];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_10059EF90(v43);
        v40 = *(v9 + 2);
        if (v40 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v9[16 * v40 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_101;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_102;
      }

      v55 = &v9[16 * v40];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_104;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v9[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_111;
        }

        if (v46 < v80)
        {
          v43 = v40 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 24 * v8;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 24 * v8 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >> 14 >= *(v34 - 16) >> 14)
    {
LABEL_29:
      ++v8;
      v30 += 24;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 16);
    *v34 = *(v34 - 24);
    *(v34 + 16) = *(v34 - 8);
    *(v34 - 16) = v32;
    *(v34 - 8) = v36;
    *(v34 - 24) = v35;
    v34 -= 24;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}