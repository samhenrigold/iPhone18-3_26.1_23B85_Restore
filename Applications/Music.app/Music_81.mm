uint64_t sub_1008F9EA8(uint64_t a1, int a2, unsigned __int8 a3)
{
  v38 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v40 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for String.LocalizationValue();
  v6 = *(v42 - 8);
  __chkstk_darwin();
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = v36 - v8;
  v9 = type metadata accessor for Playlist.Variant();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_1011A8E48, &qword_100EEEF48);
  __chkstk_darwin();
  v15 = v36 - v14;
  sub_10010FC20(&qword_1011A8D18, &unk_100EF4780);
  __chkstk_darwin();
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v20 = v36 - v18;
  v21 = a3;
  if (a3 - 1 < 3)
  {
    v22 = (v6 + 16);
    v23 = v41;
LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    v29 = v42;
    (*v22)(v39, v23, v42);
    goto LABEL_16;
  }

  v24 = v38;
  v36[1] = a2;
  v37 = v6;
  if (v21)
  {
    v6 = v37;
    v22 = (v37 + 16);
    v23 = v41;
    goto LABEL_12;
  }

  (*(v10 + 104))(v36 - v18, enum case for Playlist.Variant.favoriteSongs(_:), v9, v19);
  (*(v10 + 56))(v20, 0, 1, v9);
  v25 = *(v13 + 48);
  sub_1008F8E48(v24, v15);
  sub_1008F8E48(v20, &v15[v25]);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {
    sub_1000095E8(v20, &qword_1011A8D18, &unk_100EF4780);
    v27 = v26(&v15[v25], 1, v9);
    v28 = v39;
    if (v27 == 1)
    {
      sub_1000095E8(v15, &qword_1011A8D18, &unk_100EF4780);
      v23 = v41;
      v29 = v42;
      v6 = v37;
LABEL_14:
      v30 = (v6 + 16);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  sub_1008F8E48(v15, v17);
  if (v26(&v15[v25], 1, v9) == 1)
  {
    sub_1000095E8(v20, &qword_1011A8D18, &unk_100EF4780);
    (*(v10 + 8))(v17, v9);
    v28 = v39;
LABEL_10:
    sub_1000095E8(v15, &qword_1011A8E48, &qword_100EEEF48);
    v23 = v41;
    v29 = v42;
    v6 = v37;
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, &v15[v25], v9);
  sub_1008FBBB8();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v10 + 8);
  v32(v12, v9);
  sub_1000095E8(v20, &qword_1011A8D18, &unk_100EF4780);
  v32(v17, v9);
  sub_1000095E8(v15, &qword_1011A8D18, &unk_100EF4780);
  v23 = v41;
  v29 = v42;
  v6 = v37;
  v28 = v39;
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_11:
  v30 = (v6 + 16);
LABEL_15:
  String.LocalizationValue.init(stringLiteral:)();
  (*v30)(v28, v23, v29);
LABEL_16:
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v33 = qword_101219808;
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v23, v29);
  return v34;
}

uint64_t Actions.SortPlaylist.Context.menuItemState.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

    return 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v20 & 1;
  }
}

uint64_t sub_1008FA6C8(uint64_t a1)
{
  v3 = *v1;
  if (sub_1008F84AC(v1[1], *v1))
  {
    return sub_1008F9EA8(&v1[*(a1 + 24)], v1[2], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7473696C79616C70;
  v2 = 0x747369747261;
  v3 = 0x6D75626C61;
  if (a1 != 3)
  {
    v3 = 0x44657361656C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1008FA830()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1008FA91C(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1008FA9F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008FAADC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1008FAB0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v2 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1008FAC74(uint64_t a1)
{
  v2 = sub_1008FB524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008FACB0(uint64_t a1)
{
  v2 = sub_1008FB524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Actions.SortPlaylist.TrackListSort.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE600000000000000;
    v6 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6D75626C61;
    }

    else
    {
      v6 = 0x44657361656C6572;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000657461;
    }
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  v11 = 0xE500000000000000;
  v12 = 0x6D75626C61;
  if (a2 != 3)
  {
    v12 = 0x44657361656C6572;
    v11 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
}

uint64_t Actions.SortPlaylist.TrackListSort.encode(to:)(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  v5 = sub_10010FC20(&qword_1011A8D20, &qword_100EEEBD0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000954C(a1, a1[3]);
  sub_1008FB524();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  sub_1008FB578();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Actions.SortPlaylist.TrackListSort.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

Swift::Int Actions.SortPlaylist.TrackListSort.hashValue.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1008FB234()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.hashValue.getter(v1 | *v0);
}

void sub_1008FB250(uint64_t a1)
{
  v2 = *(v1 + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
}

Swift::Int sub_1008FB338(uint64_t a1)
{
  v2 = *(v1 + 1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1008FB438@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1008FB5CC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1008FB46C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.encode(to:)(a1, v2 | *v1);
}

uint64_t sub_1008FB49C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1008F84AC(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t _s9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionO8rawValueAISgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6488, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008FB524()
{
  result = qword_1011A8D28;
  if (!qword_1011A8D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D28);
  }

  return result;
}

unint64_t sub_1008FB578()
{
  result = qword_1011A8D30;
  if (!qword_1011A8D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D30);
  }

  return result;
}

uint64_t sub_1008FB5CC(void *a1)
{
  v3 = sub_10010FC20(&qword_1011A8E38, &qword_100EEEF40);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_10000954C(a1, a1[3]);
  sub_1008FB524();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_10000959C(a1);
  }

  v11[14] = 0;
  sub_1008FBB64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_10000959C(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t sub_1008FB798()
{
  result = qword_1011A8D58;
  if (!qword_1011A8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D58);
  }

  return result;
}

unint64_t sub_1008FB7F0()
{
  result = qword_1011A8D60;
  if (!qword_1011A8D60)
  {
    sub_1001109D0(&qword_1011A8D68, &qword_100EEECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D60);
  }

  return result;
}

unint64_t sub_1008FB858()
{
  result = qword_1011A8D70;
  if (!qword_1011A8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8D70);
  }

  return result;
}

void sub_1008FB8E4(uint64_t a1)
{
  sub_1008FB980(319);
  if (v1 <= 0x3F)
  {
    sub_10001F838();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1008FB980(uint64_t a1)
{
  if (!qword_1011A8DE0)
  {
    type metadata accessor for Playlist.Variant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011A8DE0);
    }
  }
}

unint64_t sub_1008FBA0C()
{
  result = qword_1011A8E18;
  if (!qword_1011A8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E18);
  }

  return result;
}

unint64_t sub_1008FBA64()
{
  result = qword_1011A8E20;
  if (!qword_1011A8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E20);
  }

  return result;
}

unint64_t sub_1008FBABC()
{
  result = qword_1011A8E28;
  if (!qword_1011A8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E28);
  }

  return result;
}

unint64_t sub_1008FBB10()
{
  result = qword_1011A8E30;
  if (!qword_1011A8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E30);
  }

  return result;
}

unint64_t sub_1008FBB64()
{
  result = qword_1011A8E40;
  if (!qword_1011A8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A8E40);
  }

  return result;
}

unint64_t sub_1008FBBB8()
{
  result = qword_1011A9F60;
  if (!qword_1011A9F60)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A9F60);
  }

  return result;
}

uint64_t sub_1008FBC54(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

uint64_t sub_1008FBD3C(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

uint64_t sub_1008FBEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1008FC0C0, 0, 0);
}

uint64_t sub_1008FC0C0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100903880(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FC3C4, v18, v17);
  }
}

uint64_t sub_1008FC3C4()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14597;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1009038E8, 0, 0);
}

uint64_t sub_1008FCB7C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008FBEAC(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_1008FCD8C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = type metadata accessor for MusicPropertySource();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v21 = a1(0);
    v22 = a2;
    sub_10001C8B8(v20);
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    sub_10000954C(v20, v21);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (qword_1011A6820 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v18);

    v19[4] = v18[4];
    v19[5] = v18[5];
    v19[6] = v18[6];
    v19[7] = v18[7];
    v19[0] = v18[0];
    v19[1] = v18[1];
    v19[2] = v18[2];
    v19[3] = v18[3];
    sub_100014984(v19);
    if (BYTE1(v19[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = type metadata accessor for MusicPropertySource();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return sub_10000959C(v20);
    }

    else
    {
LABEL_10:
      sub_10000959C(v20);
      v16 = type metadata accessor for MusicPropertySource();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a2@<X8>)
{
  __chkstk_darwin();
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v3 = enum case for MusicPropertySource.library(_:);
    v4 = type metadata accessor for MusicPropertySource();
    v14 = *(v4 - 8);
    (*(v14 + 104))(a2, v3, v4);
    v5 = *(v14 + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v16, v24);
      v7 = v25;
      v8 = v26;
      sub_10000954C(v24, v25);
      (*(v8 + 8))(v7, v8);
      if (v9)
      {

        if (qword_1011A6820 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v15);

        v20 = v15[4];
        v21 = v15[5];
        v22 = v15[6];
        v23 = v15[7];
        v16 = v15[0];
        v17 = v15[1];
        v18 = v15[2];
        v19 = v15[3];
        sub_100014984(&v16);
        if (BYTE1(v16) == 1)
        {
          v10 = enum case for MusicPropertySource.catalog(_:);
          v11 = type metadata accessor for MusicPropertySource();
          v12 = *(v11 - 8);
          (*(v12 + 104))(a2, v10, v11);
          (*(v12 + 56))(a2, 0, 1, v11);
          return sub_10000959C(v24);
        }
      }

      sub_10000959C(v24);
    }

    else
    {
      *&v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_1000095E8(&v16, &unk_1011AD930, &qword_100EEEF90);
    }

    v13 = type metadata accessor for MusicPropertySource();
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  sub_10010FC20(&qword_1011A8E50, &unk_100EEEF80);
  __chkstk_darwin();
  v1 = &v6 - v0;
  sub_1008FCD8C(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v6 - v0);
  v2 = type metadata accessor for MusicPropertySource();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_1000095E8(v1, &qword_1011A8E50, &unk_100EEEF80);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1008FD568();
  }

  return v4 & 1;
}

uint64_t sub_1008FD568()
{
  sub_10010FC20(&qword_1011A8FA0, &unk_100EEF1E0);
  __chkstk_darwin();
  v1 = &v13 - v0;
  sub_10010FC20(&qword_1011A8858, &qword_100EEE0A0);
  __chkstk_darwin();
  v3 = &v13 - v2;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicVideo.albums.getter();
  v8 = sub_10010FC20(&qword_1011A8FA8, &qword_100EEF1F0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &qword_1011A8FA0, &unk_100EEF1E0);
    (*(v5 + 56))(v3, 1, 1, v4);
LABEL_4:
    sub_1000095E8(v3, &qword_1011A8858, &qword_100EEE0A0);
    goto LABEL_5;
  }

  sub_100916DA4(v3);
  (*(v9 + 8))(v1, v8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  (*(v5 + 32))(v7, v3, v4);
  v12 = Album.isSingleMusicVideo.getter();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2)
  {
    v10 = v12 ^ 1;
    return v10 & 1;
  }

LABEL_5:
  v10 = 0;
  return v10 & 1;
}

uint64_t Track.supportsContainerNavigation(itemState:)()
{
  v0 = type metadata accessor for Track();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8E50, &unk_100EEEF80);
  __chkstk_darwin();
  v9 = v14 - v8;
  sub_1008FCD8C(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v14 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_1000095E8(v9, &qword_1011A8E50, &unk_100EEEF80);
  if (v11 == 1)
  {
    v12 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v14[1], v0);
    if ((*(v1 + 88))(v3, v0) == enum case for Track.musicVideo(_:))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v12 = sub_1008FD568();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v12 = 1;
    }
  }

  return v12 & 1;
}

BOOL sub_1008FDB4C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  sub_10010FC20(&qword_1011A8E50, &unk_100EEEF80);
  __chkstk_darwin();
  v8 = &v12 - v7;
  sub_1008FCD8C(a2, a3, a4, &v12 - v7);
  v9 = type metadata accessor for MusicPropertySource();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9) != 1;
  sub_1000095E8(v8, &qword_1011A8E50, &unk_100EEEF80);
  return v10;
}

uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  sub_10010FC20(&qword_1011A8E58, &qword_100EEEFE0);
  __chkstk_darwin();
  v1 = &v14 - v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8E50, &unk_100EEEF80);
  __chkstk_darwin();
  v7 = &v14 - v6;
  sub_1008FCD8C(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v14 - v6);
  v8 = type metadata accessor for MusicPropertySource();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  sub_1000095E8(v7, &qword_1011A8E50, &unk_100EEEF80);
  if (v9 != 1)
  {
    Playlist.Entry.item.getter();
    v11 = type metadata accessor for Playlist.Entry.Item();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v1, 1, v11) == 1)
    {
      sub_1000095E8(v1, &qword_1011A8E58, &qword_100EEEFE0);
    }

    else
    {
      if ((*(v12 + 88))(v1, v11) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v12 + 96))(v1, v11);
        (*(v3 + 32))(v5, v1, v2);
        v10 = sub_1008FD568();
        (*(v3 + 8))(v5, v2);
        return v10 & 1;
      }

      (*(v12 + 8))(v1, v11);
    }

    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

int *static Actions.GoToPlaylistFolderItem.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100902D40(a1, v9);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for Playlist.Folder.Item.folder(_:))
  {
    v10 = 29;
  }

  else
  {
    v10 = 28;
  }

  (*(v5 + 8))(v7, v4);
  sub_100903880(v9, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = sub_10010FC20(&qword_1011A8E60, &qword_100EEEFF8);
  *(a2 + result[9]) = v10;
  *(a2 + result[11]) = 0x4014000000000000;
  v12 = (a2 + result[10]);
  *v12 = sub_1008FE188;
  v12[1] = 0;
  v13 = (a2 + result[12]);
  *v13 = &unk_100EEEFE8;
  v13[1] = 0;
  v14 = (a2 + result[13]);
  *v14 = &unk_100EEEFF0;
  v14[1] = 0;
  return result;
}

uint64_t sub_1008FE1E4(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0) + 24));
  v6 = (*v3 + **v3);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1008DB254;

  return v6();
}

uint64_t sub_1008FE300(__n128 a1)
{
  v2 = *(v1 + 16);
  v3 = (v2 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0) + 28));
  v6 = (*v3 + **v3);
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  *v4 = v1;
  v4[1] = sub_1008DB844;

  return v6();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_10003D17C(a7, v16 + v14, &qword_1011A8660, &unk_100EEDB60);
  sub_100059A8C(a1, v16 + v15);
  v17 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &unk_100EEF008;
  v21[1] = v16;
  return result;
}

uint64_t sub_1008FE58C(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1008FE79C, 0, 0);
}

uint64_t sub_1008FE79C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    sub_100903880(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 264) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 272) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 280) = v12;
    *(v0 + 288) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    v14 = v7[3];
    sub_10000954C(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EE94C0;
    *(inited + 72) = 3;
    *(v0 + 296) = sub_1008AC260(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FEAD4, v20, v19);
  }
}

uint64_t sub_1008FEAD4()
{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15365;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    sub_1000089F8(v36 + v14[6], *(v0 + 200), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008D92E4, 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v1, v8, v10);
  v13 = (v3 + 16);
  if ((*(v9 + 88))(v12, v8) == enum case for Playlist.Folder.Item.folder(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v13)(v5, v7, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v14 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v20 = v3;
    String.LocalizationValue.init(stringLiteral:)();
    v16 = *v13;
    v21 = v2;
    v16(v5, v7, v2);
    if (qword_1011A6740 != -1)
    {
      swift_once();
    }

    v17 = qword_101219808;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v3 = v20;
    v2 = v21;
  }

  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t sub_1008FF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1008FF974, 0, 0);
}

uint64_t sub_1008FF974()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100903880(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008FFC60, v18, v17);
  }
}

uint64_t sub_1008FFC60()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15109;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1009038EC, 0, 0);
}

uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D04DC;
}

uint64_t sub_1009004D8()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*sub_1009006BC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D0A40;
}

__n128 sub_1009007A4@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  sub_1000089F8(&v16, &v15, &unk_1011ACB70, &qword_100EEEF60);

  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = a1[2];
  v14 = a1[3];
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
  return result;
}

uint64_t sub_100900870(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10002F3F4;

  return v5();
}

double sub_10090099C@<D0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 56) = v8;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;

  return result;
}

uint64_t sub_100900A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  sub_10003D17C(a8, v21 + v18, &qword_1011A8660, &unk_100EEDB60);
  result = (*(v19 + 32))(v21 + v20, a1, a10);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a13;
  a9[7] = v21;
  return result;
}

uint64_t sub_100900C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100900E2C, 0, 0);
}

uint64_t sub_100900E2C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100903880(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EC78D0;
    *(inited + 72) = 3;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100901138, v18, v17);
  }
}

uint64_t sub_100901138()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 14853;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008DADE0, 0, 0);
}

uint64_t sub_100901910(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t sub_100901B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v10 = qword_101219808;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t sub_100901E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_10003D17C(a6, v21 + v18, &qword_1011A8660, &unk_100EEDB60);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t sub_100901F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_1009021A8, 0, 0);
}

uint64_t sub_1009021A8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100903880(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100902494, v18, v17);
  }
}

uint64_t sub_100902494()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 13061;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100903880(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1008E1600, 0, 0);
}

id sub_100902CA0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context(uint64_t a1)
{
  result = qword_1011A8F60;
  if (!qword_1011A8F60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100902D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100902DA4()
{
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1008FE58C(v0 + v3, v0 + v4);
}

uint64_t sub_100902EB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_1008FF760(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100902FF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10002F3F4;

  return sub_100900C18(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100903140()
{
  v1 = *(v0 + 16);
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t sub_100903400()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100901F94(v0 + v5, v0 + v6, v2, v3);
}

uint64_t _s9MusicCore7ActionsO14ViewFullLyricsO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

__n128 sub_100903738(uint64_t a1, uint64_t a2)
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

unint64_t sub_100903794(uint64_t a1)
{
  result = type metadata accessor for Playlist.Folder.Item();
  if (v2 <= 0x3F)
  {
    result = sub_10001F838();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100903880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static Actions.OpenInClassical.action(context:)@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF1F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF200;
  *(a2 + 104) = 0;

  return result;
}

double sub_1009039A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = sub_1000D9088;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &unk_100EEF1F8;
  *(a2 + 88) = 0;
  *(a2 + 96) = &unk_100EEF200;
  *(a2 + 104) = 0;

  return result;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v64 = type metadata accessor for Album();
  v5 = *(v64 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v6;
  __chkstk_darwin();
  v58 = &v50 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208) - 8);
  __chkstk_darwin();
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v13;
  __chkstk_darwin();
  v55 = &v50 - v14;
  v65 = v15;
  __chkstk_darwin();
  v17 = (&v50 - v16);
  v18 = a1;
  v19 = Album.catalogID.getter();
  if (v20)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v19, v20, v11);

    (*(v9 + 32))(v17, v11, v8);
  }

  else
  {
    sub_100904034();
    v21 = swift_allocError();
    *v22 = 2;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 2;
    swift_willThrow();
    *v17 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v23 = *(v5 + 16);
  v24 = v58;
  v53 = v18;
  v25 = v64;
  v23(v58, v18, v64);
  v26 = v55;
  sub_1000089F8(v17, v55, &qword_1011A8FB0, &qword_100EEF208);
  v27 = *(v5 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = *(v56 + 80);
  v30 = v65;
  v31 = (v66 + v29 + v28) & ~v29;
  v50 = v29 | 7;
  v54 = v29 | 7 | v27;
  v32 = swift_allocObject();
  v51 = *(v5 + 32);
  v52 = v5 + 32;
  v33 = v32 + v28;
  v34 = v32;
  v56 = v32;
  v51(v33, v24, v25);
  sub_10003D17C(v26, v34 + v31, &qword_1011A8FB0, &qword_100EEF208);
  v35 = v57;
  sub_1000089F8(v17, v57, &qword_1011A8FB0, &qword_100EEF208);
  v36 = (v29 + 16) & ~v29;
  v37 = swift_allocObject();
  sub_10003D17C(v35, v37 + v36, &qword_1011A8FB0, &qword_100EEF208);
  sub_10012B828(v60, v37 + ((v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  v38 = v59;
  sub_10003D17C(v17, v59, &qword_1011A8FB0, &qword_100EEF208);
  v39 = v61;
  v40 = v64;
  v41 = v51;
  v51(v61, v53, v64);
  v42 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v44 = (*(v42 + 64) + v29 + v43) & ~v29;
  v45 = (v65 + v27 + v44) & ~v27;
  v46 = swift_allocObject();
  sub_10003D17C(v62, v46 + v43, &qword_1011A8660, &unk_100EEDB60);
  sub_10003D17C(v38, v46 + v44, &qword_1011A8FB0, &qword_100EEF208);
  result = v41(v46 + v45, v39, v40);
  v48 = v63;
  v49 = v56;
  *v63 = sub_100904218;
  v48[1] = v49;
  v48[2] = &unk_100EEF218;
  v48[3] = v37;
  v48[4] = &unk_100EEF228;
  v48[5] = v46;
  return result;
}

unint64_t sub_100904034()
{
  result = qword_1011AFCB0;
  if (!qword_1011AFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFCB0);
  }

  return result;
}

unint64_t sub_100904088(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208);
  __chkstk_darwin();
  v4 = (v9 - v3);
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  sub_1000089F8(a2, v4, &qword_1011A8FB0, &qword_100EEF208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v6._countAndFlagsBits = 0xD000000000000028;
    v6._object = 0x8000000100E5B630;
    String.append(_:)(v6);
    v9[1] = v5;
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 41;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    return v10;
  }

  else
  {
    sub_1000095E8(v4, &qword_1011A8FB0, &qword_100EEF208);
    return 0;
  }
}

unint64_t sub_100904218()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100904088(v0 + v2, v5);
}

uint64_t sub_1009042F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(sub_100904420, v5, v4);
}

uint64_t sub_100904420()
{
  sub_1000089F8(v0[2], v0[5], &qword_1011A8FB0, &qword_100EEF208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    sub_1000095E8(v1, &qword_1011A8FB0, &qword_100EEF208);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[12] = Strong;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_1009045A0;
    v6 = v0[8];

    return sub_100AE2628(v6, Strong);
  }
}

uint64_t sub_1009045A0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = sub_100904790;
  }

  else
  {
    v6 = sub_1009046F4;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1009046F4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100904790()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10090482C()
{
  v2 = *(sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002F3F4;

  return sub_1009042F0(v0 + v3, v0 + v4);
}

uint64_t sub_100904938(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208);
  v2[28] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(sub_100904B84, 0, 0);
}

uint64_t sub_100904B84()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  sub_1000089F8(*(v0 + 112), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 256), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    sub_1008D08BC(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    sub_1000089F8(v7, v6, &qword_1011A8FB0, &qword_100EEF208);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000095E8(*(v0 + 224), &qword_1011A8FB0, &qword_100EEF208);
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(v0 + 104) = type metadata accessor for Album();
    sub_10010FC20(&qword_1011A8040, &qword_100EED148);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_1005442F0(1, v15, v16);
    v18 = Substring.lowercased()();

    v19 = sub_1008AC654(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v18;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v26;
    *(v0 + 304) = v27;
    *(v0 + 320) = v28;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100904FF4, v30, v29);
  }
}

uint64_t sub_100904FF4()
{
  v80 = *(v0 + 320);
  v78 = *(v0 + 304);
  v75 = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v74 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x8000000100E4E350;
  *(v6 + 16) = 7173;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  v76 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v77 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v75;
  *(v14 + 16) = v78;
  *(v14 + 24) = v80;
  sub_1000089F8(v7, v74, &qword_1011A7F08, &unk_100EECDE0);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v15 - 1) + 48);
  v16 = v79(v74, 1, v15);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 176);
  if (v16 == 1)
  {

    sub_100633490(v77, v76);

    sub_1005EA59C(v20, v18, v19, v17, SBYTE1(v17));
    sub_1000095E8(v21, &qword_1011A7F08, &unk_100EECDE0);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    sub_100633490(v77, v76);

    sub_1005EA59C(v20, v18, v19, v17, SBYTE1(v17));

    sub_1008D9B58(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  sub_1000089F8(v26, v27, &qword_1011A7F08, &unk_100EECDE0);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    sub_1008D9B58(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  sub_1000089F8(v33, v34, &qword_1011A7F08, &unk_100EECDE0);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    sub_1000089F8(v38 + v15[6], *(v0 + 232), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  sub_10003D17C(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v40, v41, &qword_1011A7F08, &unk_100EECDE0);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_1008D9B58(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08, &unk_100EECDE0);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08, &unk_100EECDE0);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_1008D9B58(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08, &unk_100EECDE0);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_1008D9B58(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08, &unk_100EECDE0);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08, &unk_100EECDE0);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_1008D9B58(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  sub_1008D08BC(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 280);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v72 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v70 + 24)), *(v68 + *(v70 + 24) + 8), *(v68 + *(v70 + 36)), *(v68 + *(v70 + 36) + 8), *(v68 + *(v70 + 36) + 16));
  sub_100344B1C(v69, v67, v66, v72, SBYTE1(v72));
  sub_1008D9B58(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(sub_1009057C8, 0, 0);
}

uint64_t sub_1009057C8()
{
  v1 = v0[35];
  sub_1000095E8(v0[31], &qword_1011A77F0, &unk_100EEAA20);
  sub_1008D9B58(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100905928()
{
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_10010FC20(&qword_1011A8FB0, &qword_100EEF208) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  type metadata accessor for Album();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100904938(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_1008D04DC;
}

uint64_t (*sub_100905B78())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return sub_1008D0A40;
}

uint64_t _s9MusicCore7ActionsO15OpenInClassicalO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

double static Actions.ReportConcern.action(context:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF2A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF2A8;
  *(a2 + 112) = 0;

  return result;
}

uint64_t sub_100905EF4(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_10002F3F4;

  return v5();
}

uint64_t sub_100905FDC(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

double sub_1009060C4@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v5 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF2A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF2A8;
  *(a2 + 112) = 0;

  return result;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E40B00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E40B00;
  return sub_1008D04DC;
}

uint64_t (*sub_100906220())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x8000000100E40B00;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x8000000100E40B00;
  return sub_1008D0A40;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = sub_10003D17C(a11, v19 + v17, &qword_1011A8660, &unk_100EEDB60);
  v21 = (v19 + v18);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a3;
  v22[1] = a4;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 40) = &unk_100EEF2B8;
  *(a9 + 48) = v19;
  return result;
}

uint64_t sub_100906418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MetricsEvent.Click(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_100906630, 0, 0);
}

uint64_t sub_100906630()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 248), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    sub_1008D08BC(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = type metadata accessor for URL();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_100EE94D0;
    *(inited + 72) = 3;

    *(v0 + 304) = sub_1008AC260(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100906924, v17, v16);
  }
}

uint64_t sub_100906924()
{
  v80 = *(v0 + 336);
  v79 = *(v0 + 320);
  v77 = *(v0 + 304);
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v74 = *(v0 + 112);
  v72 = *(v0 + 184);
  v73 = *(v0 + 104);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v78 = type metadata accessor for MetricsEvent.Page(0);
  v81 = *(*(v78 - 1) + 48);
  v14 = v81(v72, 1);
  v15 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 184);
  if (v14 == 1)
  {

    sub_100633490(v10, v9);
    v20 = v76;

    sub_1005EA59C(v18, v17, v16, v15, SBYTE1(v15));
    sub_1000095E8(v19, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    sub_100633490(v10, v75);
    v20 = v76;

    sub_1005EA59C(v18, v17, v16, v15, SBYTE1(v15));

    sub_1008D9B58(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 176), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    sub_1000089F8(v36 + v78[6], *(v0 + 224), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  sub_10003D17C(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 272);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_1009070FC, 0, 0);
}

uint64_t sub_1009070FC()
{
  sub_1008D9B58(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t _s9MusicCore7ActionsO13ReportConcernO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100907414()
{
  v2 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_100906418(v0 + v3, v7, v8, v9, v10);
}

uint64_t Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v89 = a7;
  v85 = a5;
  v83 = a4;
  v87 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v84 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v71 - v14;
  v16 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v17;
  __chkstk_darwin();
  v19 = &v71 - v18;
  v86 = a2;
  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *a3;
  v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v21 + v22))
  {
    v79 = v16;
    v77 = v19;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v90);

    v23 = v90;
    v15 = v20;
    if (v90)
    {
      v24 = [v90 tracklist];

      v25 = [v24 insertCommand];
      v16 = v79;
      if (!v25 || (v26 = [v25 insertAfterLastSection], swift_unknownObjectRelease(), !v26))
      {
LABEL_12:
        v80 = 0;
        v81 = 0;
        v19 = v77;
        goto LABEL_20;
      }

      v27 = [v26 section];
      swift_unknownObjectRelease();
      v28 = [v27 metadataObject];

      if (v28)
      {
        v29 = [v28 flattenedGenericObject];

        v16 = v79;
        if (v29)
        {
          v30 = [v29 anyObject];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            v19 = v77;
            if (v31)
            {
              v32 = [v31 title];
            }

            else
            {
              objc_opt_self();
              v33 = swift_dynamicCastObjCClass();
              if (!v33)
              {
LABEL_18:

LABEL_19:
                v80 = 0;
                v81 = 0;
                goto LABEL_20;
              }

              v32 = [v33 name];
            }

            v34 = v32;
            if (v34)
            {
              v35 = v34;
              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v37;
              v81 = v36;

              v19 = v77;
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }
    }

    v80 = 0;
    v81 = 0;
    v19 = v77;
    v16 = v79;
    goto LABEL_20;
  }

  v80 = 0;
  v81 = 0;
  v15 = v20;
LABEL_20:
  v38 = v13;
  v75 = type metadata accessor for Actions.PlaybackContext;
  sub_100916AD8(a3, v19, type metadata accessor for Actions.PlaybackContext);
  (*(v12 + 16))(v15, a1, a6);
  v39 = a6;
  v40 = *(v16 + 80);
  v76 = a1;
  v41 = (v40 + 32) & ~v40;
  v74 = v40 | 7;
  v42 = v12;
  v43 = *(v12 + 80);
  v44 = a3;
  v78 = a3;
  v45 = (v88 + v43 + v41) & ~v43;
  v77 = (v38 + 7);
  v46 = (v38 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v72 = v39;
  v48 = v89;
  *(v47 + 16) = v39;
  *(v47 + 24) = v48;
  v71 = type metadata accessor for Actions.PlaybackContext;
  v49 = v47 + v41;
  v50 = v47;
  sub_100916C20(v19, v49, type metadata accessor for Actions.PlaybackContext);
  v73 = *(v42 + 32);
  v51 = v50 + v45;
  v52 = v50;
  v79 = v50;
  v73(v51, v15, v39);
  v53 = v86;
  *(v52 + v46) = v86;
  v54 = v82;
  sub_100916AD8(v44, v82, v75);
  v55 = (v40 + 16) & ~v40;
  v56 = (v88 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  sub_100916C20(v54, v57 + v55, v71);
  *(v57 + v56) = v53;
  sub_10012B828(v83, v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v84;
  v59 = v72;
  v60 = v73;
  v73(v84, v76, v72);
  v61 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = (*(v61 + 64) + v43 + v62) & ~v43;
  v64 = &v77[v63] & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v89;
  *(v65 + 16) = v59;
  *(v65 + 24) = v66;
  sub_10003D17C(v85, v65 + v62, &qword_1011A8660, &unk_100EEDB60);
  v60(v65 + v63, v58, v59);
  *(v65 + v64) = v53;
  sub_1001DFD48(v53);
  sub_1001DFD48(v53);
  sub_1001DFD48(v53);
  result = sub_100916C88(v78, type metadata accessor for Actions.PlaybackContext);
  v68 = v87;
  v69 = v80;
  v70 = v81;
  *v87 = v53;
  v68[1] = v70;
  v68[2] = v69;
  v68[3] = sub_100913894;
  v68[4] = v79;
  v68[5] = &unk_100EEF380;
  v68[6] = v57;
  v68[7] = &unk_100EEF390;
  v68[8] = v65;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10091509C(a1, v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  sub_10003D17C(a6, v21 + v18, &qword_1011A8660, &unk_100EEDB60);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &unk_100EEE1E8;
  a9[3] = v16;
  a9[4] = &unk_100EEF3A0;
  a9[5] = v21;
  return result;
}

uint64_t sub_100907E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(sub_100908090, 0, 0);
}

uint64_t sub_100908090()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 216), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    sub_100916C20(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 256) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 264) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 272) = v11;
    *(v0 + 280) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 288) = sub_1008AC260(inited);
    *(v0 + 296) = v14;
    *(v0 + 304) = v15;
    *(v0 + 320) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10090837C, v18, v17);
  }
}

uint64_t sub_10090837C()
{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 15621;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_100916C88(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100916C88(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    sub_1000089F8(v36 + v14[6], *(v0 + 192), &qword_1011A77F0, &unk_100EEAA20);
    sub_100916C88(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  sub_10003D17C(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100916C88(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100916C88(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100916C88(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100916C88(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100916C20(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_100916C88(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_100908B30, 0, 0);
}

uint64_t sub_100908B30()
{
  sub_100916C88(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Preview.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D04DC;
}

uint64_t (*sub_100908D98())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return sub_1008D0A40;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8FF8, &qword_100EEF3C8);
  __chkstk_darwin();
  v11 = &v38 - v10;
  v12 = type metadata accessor for GenericMusicItem();
  *&v38 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v15 + v16))
  {
    sub_1000095E8(a3, &qword_1011A8660, &unk_100EEDB60);
    v27 = a2;
    goto LABEL_9;
  }

  *&v39 = a3;
  *&v40 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v44);

  v17 = v44;
  if (!v44 || (v18 = [v44 tracklist], v17, v19 = objc_msgSend(v18, "playingItem"), v18, !v19) || (v20 = objc_msgSend(v19, "metadataObject"), v19, !v20))
  {

    sub_1000095E8(v39, &qword_1011A8660, &unk_100EEDB60);
    v27 = v40;
LABEL_9:
    sub_10012BA6C(v27);
    result = sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v21 = [v20 innermostModelObject];

  v22 = v21;
  GenericMusicItem.init(_:)();
  v23 = v38;
  if ((*(v38 + 48))(v11, 1, v12) == 1)
  {

    sub_1000095E8(v39, &qword_1011A8660, &unk_100EEDB60);
    sub_10012BA6C(v40);
    sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    v24 = &qword_1011A8FF8;
    v25 = &qword_100EEF3C8;
    v26 = v11;
  }

  else
  {
    (*(v23 + 32))(v14, v11, v12);
    sub_10090941C(v14, &v44);

    (*(v23 + 8))(v14, v12);
    if (*(&v45 + 1))
    {
      sub_100059A8C(&v44, v41);
      v32 = v42;
      v33 = v43;
      sub_10000954C(v41, v42);
      v34 = __chkstk_darwin();
      v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v36, v34);
      sub_100916AD8(a1, v9, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v36, v9, v40, v39, v32, v33, &v44);
      v39 = v45;
      v40 = v44;
      v38 = v46;
      sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
      result = sub_10000959C(v41);
      v31 = v38;
      v30 = v39;
      v29 = v40;
      goto LABEL_11;
    }

    sub_1000095E8(v39, &qword_1011A8660, &unk_100EEDB60);
    sub_10012BA6C(v40);
    sub_100916C88(a1, type metadata accessor for Actions.PlaybackContext);
    v24 = &qword_1011ACCA0;
    v25 = &qword_100EF7480;
    v26 = &v44;
  }

  result = sub_1000095E8(v26, v24, v25);
LABEL_10:
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
LABEL_11:
  *a4 = v29;
  a4[1] = v30;
  a4[2] = v31;
  return result;
}

uint64_t sub_10090941C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v23 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v12 + 96))(v15, v11);
    v17 = *(v5 + 32);
    v17(v7, v15, v4);
    *(a2 + 24) = v4;
    *(a2 + 32) = &protocol witness table for Artist;
    v18 = sub_10001C8B8(a2);
    return (v17)(v18, v7, v4);
  }

  else if (v16 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    v20 = *(v23 + 32);
    v20(v10, v15, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v21 = sub_10001C8B8(a2);
    return (v20)(v21, v10, v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v68 = a4;
  v69 = a6;
  v62 = a3;
  v63 = a7;
  v55 = a2;
  v64 = a1;
  v59 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v67 = *(v59 + 64);
  __chkstk_darwin();
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v50 - v11;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v14;
  __chkstk_darwin();
  v16 = &v50 - v15;
  v50 = &v50 - v15;
  v17 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v50 - v19;
  sub_100916AD8(a2, &v50 - v19, type metadata accessor for Actions.PlaybackContext);
  v70 = v12;
  v52 = *(v12 + 16);
  v52(v16, a1, a5);
  v21 = *(v17 + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = *(v12 + 80);
  v24 = (v18 + v23 + v22) & ~v23;
  v54 = v23 | v21 | 7;
  v56 = v13;
  v25 = swift_allocObject();
  v26 = v69;
  *(v25 + 16) = a5;
  *(v25 + 24) = v26;
  v27 = v25 + v22;
  v28 = v25;
  v58 = v25;
  v51 = type metadata accessor for Actions.PlaybackContext;
  sub_100916C20(v20, v27, type metadata accessor for Actions.PlaybackContext);
  v53 = *(v70 + 32);
  v70 += 32;
  v53(v28 + v24, v50, a5);
  v29 = v57;
  v52(v57, v64, a5);
  sub_100916C20(v55, v65, type metadata accessor for Actions.PlaybackContext);
  sub_1000089F8(v68, v66, &qword_1011A8660, &unk_100EEDB60);
  v30 = (v23 + 32) & ~v23;
  v31 = (v13 + v21 + v30) & ~v21;
  v32 = *(v59 + 80);
  v33 = (v31 + v18 + v32) & ~v32;
  v34 = (v67 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v69;
  *(v35 + 16) = a5;
  *(v35 + 24) = v36;
  v37 = v29;
  v38 = a5;
  v39 = a5;
  v40 = v53;
  v53(v35 + v30, v37, v38);
  sub_100916C20(v65, v35 + v31, v51);
  sub_10003D17C(v66, v35 + v33, &qword_1011A8660, &unk_100EEDB60);
  sub_10012B828(v62, v35 + v34);
  v41 = v61;
  sub_10003D17C(v68, v61, &qword_1011A8660, &unk_100EEDB60);
  v42 = v60;
  v40(v60, v64, v39);
  v43 = (v32 + 32) & ~v32;
  v44 = (v67 + v23 + v43) & ~v23;
  v45 = swift_allocObject();
  v46 = v69;
  *(v45 + 16) = v39;
  *(v45 + 24) = v46;
  sub_10003D17C(v41, v45 + v43, &qword_1011A8660, &unk_100EEDB60);
  result = (v40)(v45 + v44, v42, v39);
  v48 = v63;
  v49 = v58;
  *v63 = sub_100915340;
  v48[1] = v49;
  v48[2] = &unk_100EEF3D8;
  v48[3] = v35;
  v48[4] = &unk_100EEF3E8;
  v48[5] = v45;
  return result;
}

uint64_t sub_100909C4C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for Artist();
  v44 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v49 = *(v7 - 8);
  __chkstk_darwin();
  v48 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Song();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin();
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v42 - v11;
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v42 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (!v20)
  {
    *&v57 = 0;
    *(&v57 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x8000000100E5B6F0;
    String.append(_:)(v26);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v57;
  }

  v43 = v7;
  v21 = *(v14 + 16);
  v21(v17, a2, a3);

  sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v59 = 0;
    v57 = 0u;
    v58 = 0u;
    sub_1000095E8(&v57, &unk_1011AD930, &qword_100EEEF90);
LABEL_11:

    v28 = 13;
    return v28 | 0xD000000000000010;
  }

  v42 = v14;
  sub_100059A8C(&v57, v65);
  v22 = v66;
  v23 = v67;
  sub_10000954C(v65, v66);
  (*(v23 + 8))(v22, v23);
  if (!v24)
  {
    sub_10000959C(v65);
    goto LABEL_11;
  }

  if (qword_1011A6820 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v54);

  v61 = v54[4];
  v62 = v54[5];
  v63 = v55;
  v64 = v56;
  v57 = v54[0];
  v58 = v54[1];
  v59 = v54[2];
  v60 = v54[3];
  if (v55 > 1u)
  {
    v25 = v42;
    if (v55 == 2)
    {

      goto LABEL_16;
    }
  }

  else
  {
    v25 = v42;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {

    sub_100014984(&v57);
    sub_10000959C(v65);
    v28 = 5;
    return v28 | 0xD000000000000010;
  }

LABEL_16:
  if (sub_10048BBDC(4, v59))
  {
    if (BYTE1(v57) == 1)
    {
      v30 = v53;
      v21(v53, a2, a3);
      v31 = v52;
      if (swift_dynamicCast())
      {
        v32 = v50;
        v33 = v51;
        (*(v51 + 32))(v50, v13, v31);
        v34 = MPCPlaybackEngine.state<A>(for:)();
        v35 = *(v33 + 16);
        v36 = v45;
        v35(v45, v32, v31);
        sub_10010FC20(&qword_1011A90C0, &qword_100EEF610);
        swift_allocObject();

        sub_100915730(v36, v34, v20);

        __chkstk_darwin();
        *(&v42 - 2) = v31;
        *(&v42 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v42 - 2) = v31;
        *(&v42 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v37 = v48;
        static Published.subscript.getter(v48);

        v38 = sub_10090A57C();

        sub_100014984(&v57);
        (*(v49 + 8))(v37, v43);
        (*(v51 + 8))(v50, v31);
        (*(v25 + 8))(v30, a3);
        sub_10000959C(v65);
        return v38;
      }

      else
      {
        v40 = v46;
        v39 = v47;
        v41 = swift_dynamicCast();

        sub_100014984(&v57);
        if (v41)
        {
          (*(v44 + 8))(v40, v39);
          (*(v25 + 8))(v30, a3);
          sub_10000959C(v65);
          return 0;
        }

        else
        {
          (*(v25 + 8))(v30, a3);
          sub_10000959C(v65);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      sub_100014984(&v57);
      sub_10000959C(v65);
      return 0xD000000000000017;
    }
  }

  else
  {

    sub_100014984(&v57);
    sub_10000959C(v65);
    return 0xD000000000000016;
  }
}

uint64_t sub_10090A57C()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v12 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else if (v11 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (qword_1011A6748 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, static Logger.actions);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unknown playability status", v16, 2u);
    }

    v18 = 0;
    v19 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v12 = v18;
    (*(v7 + 8))(v10, v6);
  }

  return v12;
}

uint64_t sub_10090A89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[60] = a4;
  v5[61] = a5;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  sub_10010FC20(&qword_1011A90A8, &qword_100EEF5B0);
  v5[70] = swift_task_alloc();
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  sub_10010FC20(&qword_1011A88A0, &qword_100EEF9E0);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(sub_10090ABD8, 0, 0);
}

uint64_t sub_10090ABD8()
{
  v1 = *(v0 + 688);
  v2 = *(*(v0 + 656) + 16);
  v2(*(v0 + 672), *(v0 + 456), *(v0 + 488));
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if ((v3 & 1) == 0)
  {
    v16 = *(v0 + 648);
    v4(v16, 1, 1, *(v0 + 680));
    sub_1000095E8(v16, &qword_1011A88A0, &qword_100EEF9E0);
    goto LABEL_9;
  }

  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);
  v9 = *(v0 + 464);
  v4(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  v10 = *v9;
  v11 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v10 + v11))
  {
    goto LABEL_8;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter((v0 + 440));

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  MPCPlayerResponse.playState(for:)();
  v15 = v14;

  if (v15)
  {
LABEL_5:
    v13 = *(v0 + 696);
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(v10 + v11))
  {
LABEL_8:
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter((v0 + 448));

  v30 = *(v0 + 448);
  if (!v30)
  {
    goto LABEL_5;
  }

  v31 = [*(v0 + 448) tracklist];

  v32 = [v31 playingItem];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = [v32 metadataObject];

  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [v33 innermostModelObject];
  *(v0 + 704) = v34;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v87 = *(v0 + 696);
    v88 = *(v0 + 688);
    v89 = *(v0 + 680);

    (*(v88 + 8))(v87, v89);
    goto LABEL_9;
  }

  v36 = [objc_opt_self() radioPlaybackIntentFromSong:v35];
  *(v0 + 712) = v36;
  if (!v36)
  {
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));

LABEL_9:
    v2(*(v0 + 664), *(v0 + 456), *(v0 + 488));
    sub_10010FC20(&qword_1011A90B0, &qword_100EEF5B8);
    if (swift_dynamicCast())
    {
      sub_100059A8C((v0 + 56), v0 + 16);
      sub_100008FE4(v0 + 16, v0 + 96);
      MusicPlaybackIntentDescriptor.init(stationSeed:)();
      v19 = *(v0 + 592);
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v26 = *(v0 + 464);
      (*(v20 + 56))(v22, 0, 1, v21);
      v95 = *(v20 + 32);
      v95(v19, v22, v21);
      (*(v20 + 16))(v25, v19, v21);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for Actions.PlaybackContext(0);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      sub_1000089F8(v26 + *(v27 + 28), v0 + 176, &qword_1011A8658, &unk_100EF92B0);
      v28 = v23 + v24[7];
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      v29 = v23 + v24[8];
      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v23 + v24[9]) = 0;
      *(v23 + v24[10]) = 0;
      *(v23 + v24[11]) = 0;
      sub_100916AD8(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_100916B40(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      sub_1000089F8(v0 + 176, v0 + 256, &qword_1011A8658, &unk_100EF92B0);
      if (*(v0 + 280))
      {
        sub_100059A8C((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        sub_10010FC20(&qword_1011A9098, "lR\n");
        v51 = String.init<A>(reflecting:)();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          sub_1000095E8(v0 + 256, &qword_1011A8658, &unk_100EF92B0);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      sub_100916BB0(v0 + 216, v29);
      sub_1000095E8(v0 + 176, &qword_1011A8658, &unk_100EF92B0);
      sub_1000095E8(v0 + 136, &qword_1011ACCA0, &qword_100EF7480);
      sub_100916C88(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      sub_100916C20(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      sub_100916AD8(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        sub_100344C3C(v59, v60, v61, v62);
        v66 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        sub_100A565C4(v59, v60, v61, v62);
        sub_100344C88(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        sub_100344C3C(v59, v60, v61, v62);
        sub_100A565C4(v59, v60, v61, v62);
        sub_100344C88(v59, v60, v61, v62);
      }

      sub_100916AD8(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      sub_1000089F8(*(v0 + 472), v72, &qword_1011A8660, &unk_100EEDB60);
      v73 = type metadata accessor for Actions.MetricsReportingContext(0);
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        sub_1000095E8(*(v0 + 632), &qword_1011A8660, &unk_100EEDB60);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        sub_100633490(*v75, v78);
        sub_100916C88(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          sub_1008A7ED4(v77, v78);
          v76 = String._bridgeToObjectiveC()();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      sub_100916AD8(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v82 + 8))(v81, v83);
      }

      else
      {
        v84 = **(v0 + 504);
      }

      [v84 setPlayActivityRecommendationData:0];

      v85 = swift_task_alloc();
      *(v0 + 744) = v85;
      *v85 = v0;
      v85[1] = sub_10090BF10;
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      sub_1000095E8(v0 + 56, &qword_1011A90B8, &qword_100EEF5C0);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  v37 = v36;
  v38 = *(v0 + 640);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = type metadata accessor for Actions.PlaybackContext(0);
  v42 = (v40 + *(v41 + 24));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  sub_100344C3C(*v42, v44, v45, v46);
  sub_100A565C4(v43, v44, v45, v46);
  sub_100344C88(v43, v44, v45, v46);
  sub_1000089F8(v39, v38, &qword_1011A8660, &unk_100EEDB60);
  v47 = type metadata accessor for Actions.MetricsReportingContext(0);
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    sub_1000095E8(*(v0 + 640), &qword_1011A8660, &unk_100EEDB60);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    sub_100633490(*v49, v91);
    sub_100916C88(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      sub_1008A7ED4(v90, v91);
      v50 = String._bridgeToObjectiveC()();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = sub_10090BA48;

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

uint64_t sub_10090BA48()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_10090C3EC;
  }

  else
  {
    v2 = sub_10090BB5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10090BB5C()
{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100916C88(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[92] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10090BC30, v4, v3);
}

uint64_t sub_10090BC30()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      sub_10000954C(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C(v0 + 42);
    }

    else
    {
      sub_100916C88(v0[78], type metadata accessor for Notice);
      sub_1000095E8((v0 + 42), &qword_1011A86F0, &qword_100EEDD10);
    }
  }

  else
  {
    sub_100916C88(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10090BD80, 0, 0);
}

uint64_t sub_10090BD80()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10090BF10()
{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = sub_10090C6D8;
  }

  else
  {
    v2 = sub_10090C024;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10090C024()
{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  sub_100916C88(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[95] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10090C0F8, v4, v3);
}

uint64_t sub_10090C0F8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      sub_10000954C(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C(v0 + 37);
    }

    else
    {
      sub_100916C88(v0[77], type metadata accessor for Notice);
      sub_1000095E8((v0 + 37), &qword_1011A86F0, &qword_100EEDD10);
    }
  }

  else
  {
    sub_100916C88(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10090C248, 0, 0);
}

uint64_t sub_10090C248()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100916C88(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_10000959C(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10090C3EC()
{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.actions);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v11 = String.init<A>(describing:)();
    v13 = sub_100010678(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10090C6D8()
{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  sub_100916C88(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  sub_10000959C(v0 + 2);
  v4 = v0[94];
  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, static Logger.actions);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v10 = String.init<A>(describing:)();
    v12 = sub_100010678(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    sub_10000959C(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_10090C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_10090CBEC, 0, 0);
}

uint64_t sub_10090CBEC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  sub_1000089F8(*(v0 + 96), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 240), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v7 = *(v0 + 112);
    sub_100916C20(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 280) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 4;
    *(v0 + 312) = sub_1008AC260(inited);
    *(v0 + 320) = v14;
    *(v0 + 328) = v15;
    *(v0 + 344) = v16;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10090CEF0, v18, v17);
  }
}

uint64_t sub_10090CEF0()
{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 3077;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_100916C88(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 168), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_100916C88(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    sub_1000095E8(*(v0 + 160), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    sub_1000089F8(v36 + v14[6], *(v0 + 216), &qword_1011A77F0, &unk_100EEAA20);
    sub_100916C88(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  sub_10003D17C(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_100916C88(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_100916C88(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_100916C88(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_100916C88(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_100916C20(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_100916C88(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_10090D6A8, 0, 0);
}

uint64_t sub_10090D6A8()
{
  sub_100916C88(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x8000000100E46910;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000100E46910;
  return sub_1008D0A40;
}

uint64_t (*sub_10090DA68())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x8000000100E46910;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x8000000100E46910;
  return sub_1008D0A40;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10091640C(a2, v7);
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_10090DB6C(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

double sub_10090DC54@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v16[0] = *a1;
  v4 = a1[2];
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 6);
  sub_10091640C(v16, v9);
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_10090DD00(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_100008F30;

  return v5();
}

uint64_t sub_10090DDE8(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100008F30;

  return v4();
}

__n128 sub_10090DED0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  sub_10091509C(v11, v9);
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v75 = a4;
  v76 = a7;
  v83 = a3;
  v77 = a5;
  v84 = *(a5 - 8);
  v85 = a6;
  __chkstk_darwin();
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v58 - v10;
  v12 = v11;
  __chkstk_darwin();
  v80 = &v58 - v13;
  v81 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v14 = v81[8];
  __chkstk_darwin();
  v82 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  v78 = *(sub_10010FC20(&qword_1011A9000, &qword_100EEF3F0) - 8);
  v17 = v78[8];
  __chkstk_darwin();
  v72 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  __chkstk_darwin();
  v21 = (&v58 - v20);
  v22 = *a2;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v22 + v23))
  {

    Player.state<A>(for:)(a1, v77, v85);

    MusicItemState.playabilityStatus.getter(v21);

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 56);
  v66 = v21;
  v26(v21, v24, 1, v25);
  v69 = type metadata accessor for Actions.PlaybackContext;
  v61 = v16;
  sub_100916AD8(a2, v16, type metadata accessor for Actions.PlaybackContext);
  v60 = v19;
  sub_1000089F8(v21, v19, &qword_1011A9000, &qword_100EEF3F0);
  v27 = v84;
  v65 = *(v84 + 16);
  v28 = v77;
  v65(v80, a1, v77);
  v29 = *(v81 + 80);
  v79 = a1;
  v30 = (v29 + 32) & ~v29;
  v31 = *(v78 + 80);
  v81 = a2;
  v32 = (v14 + v31 + v30) & ~v31;
  v67 = v14;
  v33 = *(v27 + 80);
  v63 = v17 + v33;
  v64 = v33 | v29 | v31;
  v71 = v12 + 7;
  v62 = v12;
  v59 = (v12 + 7 + ((v17 + v33 + v32) & ~v33)) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v85;
  *(v34 + 16) = v28;
  *(v34 + 24) = v35;
  v68 = type metadata accessor for Actions.PlaybackContext;
  v36 = v34 + v30;
  v37 = v34;
  v70 = v34;
  sub_100916C20(v61, v36, type metadata accessor for Actions.PlaybackContext);
  sub_10003D17C(v60, v37 + v32, &qword_1011A9000, &qword_100EEF3F0);
  v38 = *(v27 + 32);
  v84 = v27 + 32;
  v78 = v38;
  (v38)(v37 + ((v17 + v33 + v32) & ~v33), v80, v28);
  *(v37 + v59) = v83;
  v39 = v72;
  sub_10003D17C(v66, v72, &qword_1011A9000, &qword_100EEF3F0);
  v40 = v73;
  v65(v73, v79, v28);
  sub_100916AD8(v81, v82, v69);
  v41 = (v31 + 32) & ~v31;
  v42 = (v63 + v41) & ~v33;
  v43 = (v62 + v29 + v42) & ~v29;
  v44 = (v67 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v85;
  *(v45 + 16) = v28;
  *(v45 + 24) = v46;
  sub_10003D17C(v39, v45 + v41, &qword_1011A9000, &qword_100EEF3F0);
  v47 = v78;
  (v78)(v45 + v42, v40, v28);
  sub_100916C20(v82, v45 + v43, v68);
  v48 = v83;
  *(v45 + v44) = v83;
  v49 = v74;
  v47(v74, v79, v28);
  v50 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v33 + v51) & ~v33;
  v53 = (v71 + v52) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v85;
  *(v54 + 16) = v28;
  *(v54 + 24) = v55;
  sub_10003D17C(v75, v54 + v51, &qword_1011A8660, &unk_100EEDB60);
  (v78)(v54 + v52, v49, v28);
  *(v54 + v53) = v48;
  result = sub_100916C88(v81, type metadata accessor for Actions.PlaybackContext);
  v57 = v76;
  *v76 = v48;
  v57[1] = sub_1009164C4;
  v57[2] = v70;
  v57[3] = &unk_100EEF400;
  v57[4] = v45;
  v57[5] = &unk_100EEF410;
  v57[6] = v54;
  return result;
}

unint64_t sub_10090E690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v89 = a4;
  v90 = a6;
  v93 = a2;
  v94 = a3;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin();
  v80 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v79 - v10;
  __chkstk_darwin();
  v85 = &v79 - v11;
  v12 = type metadata accessor for MusicPin.Item();
  v87 = *(v12 - 8);
  v88 = v12;
  __chkstk_darwin();
  v86 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A9088, &qword_100EEF590);
  __chkstk_darwin();
  v91 = &v79 - v14;
  v95 = a5;
  v92 = *(a5 - 1);
  __chkstk_darwin();
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v79 - v17;
  sub_10010FC20(&qword_1011A9000, &qword_100EEF3F0);
  __chkstk_darwin();
  v20 = &v79 - v19;
  v21 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v79 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &v79 - v24;
  __chkstk_darwin();
  v26 = &v79 - v25;
  sub_10010FC20(&qword_1011A8650, &unk_100EEDB50);
  __chkstk_darwin();
  v28 = &v79 - v27;
  v29 = type metadata accessor for Actions.PlaybackContext(0);
  sub_1000089F8(a1 + *(v29 + 20), v28, &qword_1011A8650, &unk_100EEDB50);
  v30 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v30 - 8) + 48))(v28, 1, v30);
  sub_1000095E8(v28, &qword_1011A8650, &unk_100EEDB50);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  sub_1000089F8(v93, v20, &qword_1011A9000, &qword_100EEF3F0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_1000095E8(v20, &qword_1011A9000, &qword_100EEF3F0);
    v96 = 0;
    v97 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v96 = 0xD000000000000023;
    v97 = 0x8000000100E5B680;
    (*(v92 + 16))(v18, v94, v95);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    return v96;
  }

  v33 = v22;
  v34 = *(v22 + 32);
  v35 = v26;
  v93 = v21;
  v36.n128_f64[0] = v34(v26, v20, v21);
  v38 = v94;
  v37 = v95;
  v39 = sub_10090F154(v94, v89, v95, v36);
  (*(v92 + 16))(v16, v38, v37);
  v40 = type metadata accessor for MusicPin();
  v41 = v91;
  v42 = swift_dynamicCast();
  v43 = *(*(v40 - 8) + 56);
  if (v42)
  {
    v44 = *(v40 - 8);
    v43(v41, 0, 1, v40);
    v45 = v41;
    v95 = v35;
    v46 = v86;
    MusicPin.item.getter();
    v47 = v87;
    v48 = v39;
    v49 = v88;
    v50 = v33;
    v51 = (*(v87 + 88))(v46, v88);
    v52 = enum case for MusicPin.Item.artist(_:);
    v53 = v46;
    v35 = v95;
    v54 = v49;
    v39 = v48;
    (*(v47 + 8))(v53, v54);
    (*(v44 + 8))(v45, v40);
    v55 = v51 == v52;
    v33 = v50;
    if (v55)
    {
      (*(v50 + 8))(v35, v93);
      return 0;
    }
  }

  else
  {
    v43(v41, 1, 1, v40);
    sub_1000095E8(v41, &qword_1011A9088, &qword_100EEF590);
  }

  v56 = v93;
  if (!v39)
  {
    (*(v33 + 8))(v35, v93);
    return 0xD000000000000010;
  }

  v57 = *(v33 + 16);
  v58 = v84;
  v57(v84, v35, v93);
  v59 = (*(v33 + 88))(v58, v56);
  if (v59 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v59 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      if (qword_1011A6748 != -1)
      {
        swift_once();
      }

      v73 = v33;
      v74 = type metadata accessor for Logger();
      sub_1000060E4(v74, static Logger.actions);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Unknown playability status", v77, 2u);
      }

      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v96 = 0xD000000000000010;
      v97 = 0x8000000100E5B6B0;
      v57(v79, v35, v56);
      v78._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v78);

      v69 = v96;
      v70 = *(v73 + 8);
      v70(v35, v56);
      v71 = v58;
      v72 = v56;
      goto LABEL_25;
    }

    (*(v33 + 8))(v35, v56);
    return 0;
  }

  v60 = v33;
  (*(v33 + 96))(v58, v56);
  v62 = v82;
  v61 = v83;
  v63 = v85;
  (*(v82 + 32))(v85, v58, v83);
  v64 = *(v62 + 16);
  v65 = v81;
  v64(v81, v63, v61);
  v66 = (*(v62 + 88))(v65, v61);
  if (v66 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:) || v66 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    (*(v62 + 8))(v85, v61);
    (*(v33 + 8))(v35, v56);
    return 0;
  }

  v96 = 0;
  v97 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v96 = 0xD000000000000018;
  v97 = 0x8000000100E5B6D0;
  v67 = v85;
  v64(v80, v85, v61);
  v68._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v68);

  v69 = v96;
  v70 = *(v62 + 8);
  v70(v67, v61);
  (*(v60 + 8))(v35, v56);
  v71 = v65;
  v72 = v61;
LABEL_25:
  v70(v71, v72);
  return v69;
}

BOOL sub_10090F154(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v53 = a2;
  v55 = a1;
  v5 = type metadata accessor for MusicPin.Item();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin();
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for MusicPin();
  v41 = *(v46 - 8);
  __chkstk_darwin();
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v45 = &v38 - v8;
  v49 = type metadata accessor for Station();
  v44 = *(v49 - 8);
  __chkstk_darwin();
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for Song();
  v47 = *(v52 - 8);
  __chkstk_darwin();
  v51 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MusicVideo();
  v50 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Playlist();
  v54 = *(v14 - 8);
  __chkstk_darwin();
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 - 8);
  v22 = __chkstk_darwin();
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, v55, a3, v22);
  if (swift_dynamicCast())
  {
    (*(v18 + 8))(v20, v17);
LABEL_5:
    (*(v21 + 8))(v24, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v54 + 8))(v16, v14);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v27 = v51;
    v26 = v52;
    if (swift_dynamicCast())
    {
      v28 = v47;
LABEL_12:
      (*(v28 + 8))(v27, v26);
      goto LABEL_13;
    }

    v27 = v48;
    v26 = v49;
    if (swift_dynamicCast())
    {
      v28 = v44;
      goto LABEL_12;
    }

    v29 = v45;
    v30 = v46;
    if (swift_dynamicCast())
    {
      v32 = v40;
      v31 = v41;
      (*(v41 + 32))(v40, v29, v30);
      v33 = v39;
      MusicPin.item.getter();
      v35 = v42;
      v34 = v43;
      v36 = (*(v42 + 88))(v33, v43);
      if (v36 == enum case for MusicPin.Item.album(_:) || v36 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v36 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v35 + 8))(v33, v34);
        v37 = v53 == 0;
        (*(v31 + 8))(v32, v30);
        (*(v21 + 8))(v24, a3);
        return v37;
      }

      if (v36 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v35 + 8))(v33, v34);
        (*(v31 + 8))(v32, v30);
        goto LABEL_5;
      }

      if (v36 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v35 + 8))(v33, v34);
      (*(v31 + 8))(v32, v30);
    }

    (*(v21 + 8))(v24, a3);
    return 0;
  }

  (*(v50 + 8))(v13, v11);
LABEL_13:
  (*(v21 + 8))(v24, a3);
  return v53 == 0;
}

uint64_t sub_10090F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8650, &unk_100EEDB50);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = type metadata accessor for MusicPin.Item();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9088, &qword_100EEF590);
  v6[53] = swift_task_alloc();
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = sub_10010FC20(&qword_1011A9090, &qword_100EEF598);
  v6[58] = swift_task_alloc();
  sub_10010FC20(&qword_1011A9000, &qword_100EEF3F0);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(sub_10090FC28, 0, 0);
}

uint64_t sub_10090FC28()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  sub_1000089F8(v6, v2, &qword_1011A9000, &qword_100EEF3F0);
  sub_1000089F8(v1, v2 + v7, &qword_1011A9000, &qword_100EEF3F0);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    sub_1000095E8(*(v0 + 480), &qword_1011A9000, &qword_100EEF3F0);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      sub_1000095E8(*(v0 + 464), &qword_1011A9000, &qword_100EEF3F0);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    sub_1000089F8(*(v0 + 464), *(v0 + 472), &qword_1011A9000, &qword_100EEF3F0);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      sub_100916CE8(&qword_1011A90A0, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v33, v35);
      sub_1000095E8(v13, &qword_1011A9000, &qword_100EEF3F0);
      v37(v12, v35);
      sub_1000095E8(v32, &qword_1011A9000, &qword_100EEF3F0);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    sub_1000095E8(*(v0 + 480), &qword_1011A9000, &qword_100EEF3F0);
    (*(v15 + 8))(v12, v14);
  }

  sub_1000095E8(*(v0 + 464), &qword_1011A9090, &qword_100EEF598);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = type metadata accessor for MusicPin();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    sub_1000095E8(v20, &qword_1011A9088, &qword_100EEF590);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    v31 = sub_10001C8B8((v0 + 16));
    v16(v31, v30, v29);
    *(v0 + 56) = 0;
    _s9MusicCore27SubscriptionUpsellPresenterV7present3foryAC9PlacementO_tFZ_0(v0 + 16);
    sub_100309980(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  MusicPin.item.getter();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext(0);
  sub_1000089F8(v41 + *(v42 + 20), v40, &qword_1011A8650, &unk_100EEDB50);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    sub_1000095E8(*(v0 + 328), &qword_1011A8650, &unk_100EEDB50);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  sub_100916C20(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100916AD8(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = sub_10001C8B8((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  sub_1000089F8(v80 + *(v42 + 28), v0 + 104, &qword_1011A8658, &unk_100EF92B0);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  sub_100916AD8(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100916AD8(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  sub_100916AD8(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  sub_100916B40(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  sub_1000089F8(v0 + 104, v0 + 184, &qword_1011A8658, &unk_100EF92B0);
  if (*(v0 + 208))
  {
    sub_100059A8C((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    sub_10010FC20(&qword_1011A9098, "lR\n");
    v72 = String.init<A>(reflecting:)();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      sub_1000095E8(v0 + 184, &qword_1011A8658, &unk_100EF92B0);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  sub_100916BB0(v0 + 144, v54);
  sub_1000095E8(v0 + 104, &qword_1011A8658, &unk_100EF92B0);
  sub_100916C88(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1000095E8(v0 + 64, &qword_1011ACCA0, &qword_100EF7480);
  sub_100916C20(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = sub_1009105F8;
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

uint64_t sub_1009105F8()
{

  if (v0)
  {

    v1 = sub_100916DA0;
  }

  else
  {
    v1 = sub_100910710;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100910710()
{
  v1 = v0[47];
  sub_100916C88(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  sub_100916C88(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100910870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_100910A88, 0, 0);
}

uint64_t sub_100910A88()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    sub_100916C20(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7);
    *(v0 + 264) = v8;
    v9 = type metadata accessor for URL();
    *(v0 + 272) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 280) = v11;
    *(v0 + 288) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7);
    *(inited + 40) = v13;
    *(inited + 48) = 0;
    *(v0 + 296) = sub_1008AC260(inited);
    *(v0 + 304) = v14;
    *(v0 + 312) = v15;
    *(v0 + 328) = v16;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100910D78, v18, v17);
  }
}

uint64_t sub_100910D78()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08, &unk_100EECDE0);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    sub_100633490(v78, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08, &unk_100EECDE0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v78, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_100916C88(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08, &unk_100EECDE0);
  v28 = v82(v26, 1, v16);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100916C88(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08, &unk_100EECDE0);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    sub_1000089F8(v38 + v16[6], *(v0 + 200), &qword_1011A77F0, &unk_100EEAA20);
    sub_100916C88(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v39, v40, &qword_1011A7F08, &unk_100EECDE0);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    sub_100916C88(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  sub_1000089F8(v44, v45, &qword_1011A7F08, &unk_100EECDE0);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    sub_1000095E8(v47, &qword_1011A7F08, &unk_100EECDE0);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    sub_100916C88(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  sub_1000089F8(v49, v50, &qword_1011A7F08, &unk_100EECDE0);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    sub_100916C88(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  sub_10003D17C(v56, v57, &qword_1011A7F08, &unk_100EECDE0);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    sub_1000095E8(v60, &qword_1011A7F08, &unk_100EECDE0);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    sub_100916C88(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  sub_100916C20(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  sub_100344B1C(v67, v66, v65, v72, SBYTE1(v72));
  sub_100916C88(v71, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v70, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_100916D9C, 0, 0);
}

uint64_t sub_100911550(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin();
  v35 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v33 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A8650, &unk_100EEDB50);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v33 - v17;
  v19 = type metadata accessor for Actions.PlaybackContext(0);
  sub_1000089F8(a1 + *(v19 + 20), v12, &qword_1011A8650, &unk_100EEDB50);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100916C20(v12, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v21 = *a1;
    v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (v23)
    {
      sub_100916AD8(v18, v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v33;
        (*(v33 + 32))(v10, v16, v8);

        v25 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v24 + 8))(v10, v8);
      }

      else
      {
        v25 = *v16;
      }

      v27 = v38;
      sub_1001DFD48(v38);
      v28 = v25;
      v29 = sub_100A51A80(v28, v27, v23);

      if (v29)
      {
        Player.state<A>(for:)(v39, v40, v34);
        v30 = v35;
        MusicItemState.playabilityStatus.getter(v35);

        v20 = sub_10090A57C();

        sub_100309AD8(v27);
        (*(v36 + 8))(v30, v37);
LABEL_12:
        sub_100916C88(v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v20;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v31._countAndFlagsBits = 0xD000000000000020;
      v31._object = 0x8000000100E5B840;
      String.append(_:)(v31);
      v41 = v27;
      _print_unlocked<A, B>(_:_:)();

      sub_100309AD8(v27);
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      v26._countAndFlagsBits = 0xD000000000000025;
      v26._object = 0x8000000100E5B810;
      String.append(_:)(v26);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    v20 = v42;
    goto LABEL_12;
  }

  v20 = 0xD000000000000012;
  sub_1000095E8(v12, &qword_1011A8650, &unk_100EEDB50);
  return v20;
}

uint64_t sub_100911A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8650, &unk_100EEDB50);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100911BE0, 0, 0);
}

uint64_t sub_100911BE0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  sub_1000089F8(v4 + *(v5 + 20), v3, &qword_1011A8650, &unk_100EEDB50);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[15], &qword_1011A8650, &unk_100EEDB50);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    sub_100916C20(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100916AD8(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = sub_100911E30;
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

uint64_t sub_100911E30()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_1009121EC;
  }

  else
  {

    v3 = sub_100911F4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100911F4C(__n128 a1)
{
  Player.InsertCommand.Location.notice.getter(*(v1 + 88));
  type metadata accessor for MainActor();
  *(v1 + 184) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100911FEC, v3, v2);
}

uint64_t sub_100911FEC()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100A918E4((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      sub_10000954C(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      sub_100916C88(v4, type metadata accessor for Notice);
      sub_10000959C(v0 + 2);
    }

    else
    {
      sub_100916C88(v0[11], type metadata accessor for Notice);
      sub_1000095E8((v0 + 2), &qword_1011A86F0, &qword_100EEDD10);
    }
  }

  else
  {
    sub_100916C88(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(sub_10091213C, 0, 0);
}

uint64_t sub_10091213C()
{
  sub_100916C88(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009121EC()
{
  v15 = v0;

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
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v9 = String.init<A>(describing:)();
    v11 = sub_100010678(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  else
  {
  }

  sub_100916C88(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *x8_0@<X8>)
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, x8_0);
  return sub_100916C88(v4, type metadata accessor for Notice.Variant);
}

uint64_t sub_1009124E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();

  return _swift_task_switch(sub_1009126F8, 0, 0);
}

uint64_t sub_1009126F8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 224), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 88);
    sub_100916C20(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v6);
    *(v0 + 264) = v8;
    if (v7 >= 4)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v7);
      v9 = *(v0 + 216);
      v10 = *(v0 + 96);
      v11 = type metadata accessor for URL();
      *(v0 + 272) = v11;
      v12 = *(v11 - 8);
      v13 = *(v12 + 56);
      *(v0 + 280) = v13;
      *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v9, 1, 1, v11);
      sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v10);
      *(inited + 40) = v15;
      *(inited + 48) = 0;
      *(v0 + 296) = sub_1008AC260(inited);
      *(v0 + 304) = v16;
      *(v0 + 312) = v17;
      *(v0 + 328) = v18;
      swift_setDeallocating();
      sub_1008DB7F0(inited + 32);
      type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100912A78, v20, v19);
    }
  }
}

uint64_t sub_100912A78()
{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  sub_1000089F8(v7, v75, &qword_1011A7F08, &unk_100EECDE0);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));
    sub_1000095E8(v22, &qword_1011A7F08, &unk_100EECDE0);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    sub_100633490(v82, v80);

    sub_1005EA59C(v21, v19, v20, v18, SBYTE1(v18));

    sub_100916C88(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  sub_1000089F8(v25, v26, &qword_1011A7F08, &unk_100EECDE0);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    sub_1000095E8(*(v0 + 152), &qword_1011A7F08, &unk_100EECDE0);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    sub_100916C88(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  sub_1000089F8(v32, v33, &qword_1011A7F08, &unk_100EECDE0);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    sub_1000095E8(*(v0 + 144), &qword_1011A7F08, &unk_100EECDE0);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    sub_1000089F8(v39 + v15[6], *(v0 + 200), &qword_1011A77F0, &unk_100EEAA20);
    sub_100916C88(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  sub_10003D17C(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v40, v41, &qword_1011A7F08, &unk_100EECDE0);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_1011A7F08, &unk_100EECDE0);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    sub_100916C88(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  sub_1000089F8(v45, v46, &qword_1011A7F08, &unk_100EECDE0);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    sub_1000095E8(v48, &qword_1011A7F08, &unk_100EECDE0);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    sub_100916C88(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  sub_1000089F8(v50, v51, &qword_1011A7F08, &unk_100EECDE0);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    sub_100916C88(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  sub_10003D17C(v57, v58, &qword_1011A7F08, &unk_100EECDE0);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    sub_1000095E8(v61, &qword_1011A7F08, &unk_100EECDE0);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    sub_100916C88(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  sub_100916C20(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  sub_100344B1C(v68, v67, v66, v73, SBYTE1(v73));
  sub_100916C88(v72, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v71, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_10091325C, 0, 0);
}

uint64_t sub_10091325C()
{
  sub_100916C88(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1008D0A40;
}

uint64_t (*sub_1009134A8())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return sub_1008D0A40;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "ContainerDetail AddDownload";
  }

  else
  {
    v2 = ".forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1008D0A40;
}

uint64_t (*sub_1009136C4())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "ContainerDetail AddDownload";
  }

  else
  {
    v2 = ".forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return sub_1008D0A40;
}

void sub_10091379C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_10091381C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100913894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100911550((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_100913990()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100911A50(v0 + v3, v6, v0 + v5);
}

uint64_t sub_100913AA0()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100008F30;

  return sub_1009124E0(v0 + v5, v0 + v6, v7, v3, v2);
}

double sub_100913C18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100913E5C();
  }

  return result;
}

uint64_t sub_100913C70(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    __chkstk_darwin();
    v9 = type metadata accessor for Song();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v3 + 16))(v5, v7, v2);
    static Published.subscript.setter();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t sub_100913E5C()
{
  v62 = type metadata accessor for Song();
  v59 = *(v62 - 8);
  __chkstk_darwin();
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v56 - v11;
  __chkstk_darwin();
  v13 = &v56 - v12;
  __chkstk_darwin();
  v15 = &v56 - v14;
  v66 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v16 = *(v9 + 16);
  v64 = v15;
  v60 = v9 + 16;
  v16(v13, v15, v8);
  v65 = v9;
  v17 = (*(v9 + 88))(v13, v8);
  v18 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v65 + 96))(v13, v8);
    (*(v3 + 32))(v7, v13, v2);
    (*(v3 + 104))(v5, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v57 = v7;
    v19 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v20 = *(v3 + 8);
    v58 = (v3 + 8);
    v59 = v2;
    v20(v5, v2);
    if ((v19 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(v67), , , , v67[0]))
    {

      v21 = v65;
      v22 = v61;
      (*(v65 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v8);
      __chkstk_darwin();
      v23 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v23;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v22, v8);

      static Published.subscript.setter();
      v24 = *(v21 + 8);
      v24(v22, v8);
      v20(v57, v59);
    }

    else
    {
      v33 = v61;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v34 = v65;
      v56 = v20;
      v35 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v35;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v33, v8);

      static Published.subscript.setter();
      v24 = *(v34 + 8);
      v24(v33, v8);
      v56(v57, v59);
    }

    return (v24)(v64, v8);
  }

  v25 = v17;
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(v67);

    if (!v67[0] || (v67[0], swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(v67), , , , (v67[0] & 1) != 0) || (, v26 = Player.supportsDelegation.getter(), , (v26 & 1) != 0))
    {
      v27 = v61;
      v28 = v64;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v29 = v16;
      v30 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v30;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v29(v63, v27, v8);

      static Published.subscript.setter();
      v31 = *(v65 + 8);
      v31(v27, v8);
      return (v31)(v28, v8);
    }

    v41 = v66;
    v42 = *(*v66 + 120);
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = v41 + v42;
    v46 = v62;
    (*(v59 + 16))(v58, v45, v62);
    Song.catalogID.getter();
    v48 = v47;
    (*(v43 + 8))(v44, v46);
    if (!v48)
    {
      v53 = v61;
      (*(v3 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v54 = v65;
      (*(v65 + 104))(v53, v18, v8);
      __chkstk_darwin();
      *(&v56 - 2) = v46;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v55;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v53, v8);

      static Published.subscript.setter();
      v24 = *(v54 + 8);
      v24(v53, v8);
      return (v24)(v64, v8);
    }

    v49 = v65;
    v50 = v61;
    (*(v65 + 104))(v61, v25, v8);
    __chkstk_darwin();
    *(&v56 - 2) = v46;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v51;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v16(v63, v50, v8);

    static Published.subscript.setter();
    v52 = *(v49 + 8);
    v52(v50, v8);
    return (v52)(v64, v8);
  }

  else
  {
    v36 = v16;
    v37 = v61;
    v38 = v64;
    v36(v61, v64, v8);
    __chkstk_darwin();
    v39 = v62;
    *(&v56 - 2) = v62;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v39;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v36(v63, v37, v8);

    static Published.subscript.setter();
    v40 = *(v65 + 8);
    v40(v37, v8);
    v40(v38, v8);
    return (v40)(v13, v8);
  }
}

uint64_t sub_100914A64(uint64_t a1)
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

uint64_t _s9MusicCore7ActionsO7PreviewO7ContextV13menuItemTitleSSvg_0()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v6 = qword_101219808;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100914E9C(uint64_t a1)
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

void sub_10091509C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v10 = v3;
  if (v3 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v9 = *(a1 + 8);
    sub_100916D40(&v10, v8);
    sub_1000089F8(&v9, v8, &unk_1011ACB70, &qword_100EEEF60);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = sub_10090DCD8;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &unk_100EEF778;
    *(a2 + 112) = 0;
    *(a2 + 120) = &unk_100EEF780;
    *(a2 + 128) = 0;
  }
}

uint64_t sub_1009151F8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_100907E7C(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100915340()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_100909C4C((v0 + v3), v4, v1);
}

uint64_t sub_100915410()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_10002F3F4;

  return sub_10090A89C(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t sub_1009155E8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008F30;

  return sub_10090C9D8(v0 + v5, v0 + v6, v2, v3);
}

char *sub_100915730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v80 = a2;
  v81 = a1;
  v5 = sub_10010FC20(&qword_1011AD180, &qword_100EEF670);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin();
  v73 = &v58 - v6;
  v7 = sub_10010FC20(&qword_1011A90C8, &unk_100EF8220);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin();
  v76 = &v58 - v8;
  sub_10010FC20(&qword_1011A90D0, &qword_100EEF678);
  __chkstk_darwin();
  v79 = &v58 - v9;
  v67 = sub_10010FC20(&unk_1011AD170, &qword_100EEF680);
  v68 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v58 - v10;
  v69 = sub_10010FC20(&unk_1011ADA30, &qword_100EEF688);
  v71 = *(v69 - 8);
  __chkstk_darwin();
  v66 = &v58 - v11;
  v70 = sub_10010FC20(&qword_1011A90D8, &unk_100EF7D20);
  v63 = *(v70 - 8);
  __chkstk_darwin();
  v62 = &v58 - v12;
  v61 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  v59 = sub_10010FC20(&qword_1011A90E0, &unk_100EF7D10);
  v17 = *(v59 - 1);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v58 - v25;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v64 = v4 + 32;
  v27 = *(*v4 + 128);
  (*(v21 + 104))(&v58 - v25, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v20, v24);
  (*(v21 + 16))(v23, v26, v20);
  Published.init(initialValue:)();
  (*(v21 + 8))(v26, v20);
  (*(v17 + 32))(&v4[v27], v19, v59);
  v28 = *(*v4 + 136);
  v29 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v30 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v30 - 8) + 104))(v16, v29, v30);
  v31 = v60;
  v32 = v61;
  (*(v60 + 104))(v16, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v61);
  v59 = *(v31 + 16);
  v59(v14, v16, v32);
  v33 = v62;
  Published.init(initialValue:)();
  v60 = *(v31 + 8);
  (v60)(v16, v32);
  (*(v63 + 32))(&v4[v28], v33, v70);
  v34 = *(*v4 + 120);
  v35 = type metadata accessor for Song();
  v70 = *(v35 - 8);
  (*(v70 + 16))(&v4[v34], v81, v35);
  v36 = v72;
  *(v4 + 2) = v80;
  *(v4 + 3) = v36;

  sub_100913E5C();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  v84 = v35;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v72 = v35;
  v82 = v35;
  v83 = &protocol witness table for Song;
  swift_getKeyPath();
  v59(v14, v16, v32);

  static Published.subscript.setter();
  (v60)(v16, v32);
  v37 = v65;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  sub_10002705C();
  v38 = static OS_dispatch_queue.main.getter();
  v86 = v38;
  v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = *(v39 - 8);
  v41 = v79;
  v63 = *(v40 + 56);
  v62 = (v40 + 56);
  (v63)(v79, 1, 1, v39);
  sub_100020674(&qword_1011A90E8, &unk_1011AD170, &qword_100EEF680, &protocol conformance descriptor for Published<A>.Publisher);
  v42 = sub_100916CE8(&qword_1011AD100, sub_10002705C, &protocol conformance descriptor for OS_dispatch_queue);
  v43 = v66;
  v44 = v41;
  v45 = v67;
  v61 = v42;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_1011A90D0, &qword_100EEF678);

  (*(v68 + 8))(v37, v45);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&unk_1011ADA40, &unk_1011ADA30, &qword_100EEF688, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v46 = v69;
  Publisher<>.sink(receiveValue:)();

  v47 = v64;
  (*(v71 + 8))(v43, v46);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v48 = v73;
  v49 = v80;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v50 = static OS_dispatch_queue.main.getter();
  v86 = v50;
  v51 = v79;
  (v63)(v79, 1, 1, v39);
  sub_100020674(&qword_1011A90F0, &qword_1011AD180, &qword_100EEF670, &protocol conformance descriptor for Published<A>.Publisher);
  v52 = v75;
  v53 = v76;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v51, &qword_1011A90D0, &qword_100EEF678);

  (*(v74 + 8))(v48, v52);
  v54 = swift_allocObject();
  swift_weakInit();

  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v49;
  sub_100020674(qword_1011ADA50, &qword_1011A90C8, &unk_100EF8220, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v56 = v78;
  Publisher<>.sink(receiveValue:)();

  (*(v77 + 8))(v53, v56);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v70 + 8))(v81, v72);
  return v4;
}

double sub_10091640C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = a1[6];
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = sub_100905ECC;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &unk_100EEF5A0;
  *(a2 + 96) = 0;
  *(a2 + 104) = &unk_100EEF5A8;
  *(a2 + 112) = 0;

  return result;
}

unint64_t sub_1009164C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&qword_1011A9000, &qword_100EEF3F0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 1) + 80)) & ~*(*(v1 - 1) + 80);
  v9 = *(v0 + ((*(*(v1 - 1) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10090E690(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_100916630()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A9000, &qword_100EEF3F0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100008F30;

  return sub_10090F8A8(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_10091680C()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100008F30;

  return sub_100910870(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t sub_1009169F4(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100916A0C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100916A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_100916A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100916AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100916B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ACCA0, &qword_100EF7480);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100916BB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A8658, &unk_100EF92B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100916C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100916C88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100916CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100916DD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_10010FC20(a1, a2);
  sub_10092FF40(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  sub_100118E9C(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1000D9088;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100EEF790;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100EEF798;
  *(a2 + 120) = 0;
  return result;
}

double sub_1009170F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = sub_1000D9088;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &unk_100EEF790;
  *(a2 + 104) = 0;
  *(a2 + 112) = &unk_100EEF798;
  *(a2 + 120) = 0;

  return result;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000100E40AC0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000100E40AC0;
  return sub_1008D04DC;
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000100E5B870;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000100E5B870;
  return sub_1008D0A40;
}

uint64_t (*sub_1009172FC())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000100E40AC0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x8000000100E40AC0;
  return sub_1008D0A40;
}

uint64_t (*sub_10091739C())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x8000000100E5B870;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x8000000100E5B870;
  return sub_1008D0A40;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v42 = a6;
  v34 = a5;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin();
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  v32 = *(sub_10010FC20(&qword_1011A8660, &unk_100EEDB60) - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin();
  v18 = &v31 - v17;
  sub_100008FE4(a1, v44);
  v19 = swift_allocObject();
  sub_100059A8C(v44, v19 + 16);
  *(v19 + 56) = a2;
  *(v19 + 64) = a3;
  v20 = swift_allocObject();
  v21 = v34;
  v35 = v20;
  *(v20 + 16) = v37;
  *(v20 + 24) = v21;
  sub_1000089F8(v42, v18, &qword_1011A8660, &unk_100EEDB60);
  v37 = a1;
  sub_100008FE4(a1, v43);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_10003D17C(v18, v24 + v22, &qword_1011A8660, &unk_100EEDB60);
  sub_100059A8C(v43, v24 + v23);

  String.LocalizationValue.init(stringLiteral:)();
  (*(v40 + 16))();
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v25 = qword_101219808;
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;

  sub_1000095E8(v42, &qword_1011A8660, &unk_100EEDB60);
  sub_10000959C(v37);
  result = (*(v40 + 8))(v15, v41);
  *a7 = sub_100917CE4;
  a7[1] = v19;
  v30 = v35;
  a7[2] = &unk_100EEF7B0;
  a7[3] = v30;
  a7[4] = &unk_100EEF7C0;
  a7[5] = v24;
  a7[6] = v26;
  a7[7] = v28;
  return result;
}

unint64_t sub_100917834(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = type metadata accessor for MusicLibrary.ShareAction();
  v24 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011A93F8, &qword_100EF0180);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  sub_100008FE4(a1, v38);
  sub_10010FC20(&qword_1011A9400, &qword_100EF0188);
  sub_10010FC20(&qword_1011A9408, &qword_100EF0190);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v36, v39);
    sub_10000954C(v39, v39[3]);
    static MusicLibraryAction<>.share.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v24 + 8))(v8, v6);
    v13 = sub_100917CF0();
    (*(v10 + 8))(v12, v9);
    sub_10000959C(v39);
    return v13;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  sub_1000095E8(v36, &qword_1011A9410, &qword_100EF0198);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v27);

  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[7] = v34;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  sub_100014984(v35);
  if ((BYTE1(v35[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v15 = a1[3];
  v16 = a1[4];
  sub_10000954C(a1, v15);
  (*(v16 + 16))(v15, v16);
  v17 = type metadata accessor for URL();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  sub_1000095E8(v5, &qword_1011A77F0, &unk_100EEAA20);
  if (v18 != 1)
  {
    return 0;
  }

  sub_100008FE4(a1, &v26);
  sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
  if (swift_dynamicCast())
  {
    v19 = *(&v28 + 1);
    v20 = v29;
    sub_10000954C(&v27, *(&v28 + 1));
    (*(v20 + 8))(v19, v20);
    v22 = v21;
    sub_10000959C(&v27);
    if (v22)
    {

      return 0;
    }
  }

  else
  {
    *&v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1000095E8(&v27, &unk_1011AD930, &qword_100EEEF90);
  }

  return 0xD00000000000001DLL;
}

unint64_t sub_100917CF0()
{
  v1 = type metadata accessor for MusicLibrary.ShareAction.UnsupportedReason();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v24 - v4;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&qword_1011A93F8, &qword_100EF0180);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v24 - v12;
  v14 = *(v8 + 16);
  v26 = v0;
  v14(&v24 - v12, v0, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v8 + 96))(v13, v7);
    (*(v2 + 32))(v6, v13, v1);
    v16 = *(v2 + 16);
    v17 = v27;
    v16(v27, v6, v1);
    v18 = (*(v2 + 88))(v17, v1);
    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedType(_:))
    {
      v19 = 0xD000000000000010;
LABEL_8:
      (*(v2 + 8))(v6, v1);
      return v19;
    }

    if (v18 == enum case for MusicLibrary.ShareAction.UnsupportedReason.unsupportedItem(_:))
    {
      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.canBecomeShareableOncePublic(_:))
    {
      if (v18 != enum case for MusicLibrary.ShareAction.UnsupportedReason.networkRequired(_:))
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v28 = 0x206E776F6E6B6E55;
        v29 = 0xEF206E6F73616572;
        v16(v25, v6, v1);
        v22._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v22);

        v19 = v28;
        v23 = *(v2 + 8);
        v23(v6, v1);
        v23(v27, v1);
        return v19;
      }

      v19 = 0xD000000000000010;
      goto LABEL_8;
    }

    (*(v2 + 8))(v6, v1);
  }

  else if (v15 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v28 = 0xD000000000000019;
    v29 = 0x8000000100E5BAC0;
    (v14)(v10, v26, v7);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v19 = v28;
    (*(v8 + 8))(v13, v7);
    return v19;
  }

  return 0;
}

uint64_t sub_100918194(int *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_1003EF7D4;

  return v5();
}

uint64_t sub_1009182A4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_100918194(v2);
}

uint64_t sub_10091833C(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_10010FC20(&qword_1011A8660, &unk_100EEDB60);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(sub_10091854C, 0, 0);
}

uint64_t sub_10091854C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1000089F8(*(v0 + 72), v3, &qword_1011A8660, &unk_100EEDB60);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(*(v0 + 200), &qword_1011A8660, &unk_100EEDB60);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    sub_1008D08BC(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    sub_10000954C(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8);
    *(v0 + 240) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 248) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 256) = v12;
    *(v0 + 264) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    sub_10010FC20(&qword_1011A8868, &qword_100EEE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    v14 = v7[3];
    sub_10000954C(v7, v14);
    *(inited + 32) = MusicItem.metricsContentType.getter(v14);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 272) = sub_1008AC260(inited);
    *(v0 + 280) = v16;
    *(v0 + 288) = v17;
    *(v0 + 304) = v18;
    swift_setDeallocating();
    sub_1008DB7F0(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100918864, v20, v19);
  }
}

uint64_t sub_100918864()
{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

  sub_1000089F8(v3, v4, &qword_1011A77F0, &unk_100EEAA20);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  sub_1000089F8(v1 + v2[5], v7, &qword_1011A7F08, &unk_100EECDE0);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 12293;
  sub_10003D17C(v4, v6 + v5[7], &qword_1011A77F0, &unk_100EEAA20);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  sub_1000089F8(v7, v72, &qword_1011A7F08, &unk_100EECDE0);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
  if (v15 == 1)
  {

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));
    sub_1000095E8(v20, &qword_1011A7F08, &unk_100EECDE0);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    sub_100633490(v75, v77);

    sub_1005EA59C(v19, v17, v18, v16, SBYTE1(v16));

    sub_1008D9B58(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  sub_1000089F8(v23, v24, &qword_1011A7F08, &unk_100EECDE0);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    sub_1000095E8(*(v0 + 128), &qword_1011A7F08, &unk_100EECDE0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    sub_1008D9B58(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  sub_1000089F8(v30, v31, &qword_1011A7F08, &unk_100EECDE0);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    sub_1000095E8(*(v0 + 120), &qword_1011A7F08, &unk_100EECDE0);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    sub_1000089F8(v36 + v14[6], *(v0 + 176), &qword_1011A77F0, &unk_100EEAA20);
    sub_1008D9B58(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  sub_10003D17C(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v37, v38, &qword_1011A7F08, &unk_100EECDE0);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    sub_1000095E8(*(v0 + 112), &qword_1011A7F08, &unk_100EECDE0);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    sub_1008D9B58(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  sub_1000089F8(v42, v43, &qword_1011A7F08, &unk_100EECDE0);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
  if (v44 == 1)
  {
    sub_1000095E8(v45, &qword_1011A7F08, &unk_100EECDE0);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    sub_1008D9B58(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  sub_1000089F8(v47, v48, &qword_1011A7F08, &unk_100EECDE0);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    sub_1000095E8(*(v0 + 96), &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    sub_1008D9B58(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  sub_10003D17C(v54, v55, &qword_1011A7F08, &unk_100EECDE0);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
  if (v57 == 1)
  {
    sub_1000095E8(v58, &qword_1011A7F08, &unk_100EECDE0);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    sub_1008D9B58(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  sub_1008D08BC(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  sub_100344B1C(v65, v64, v63, v70, SBYTE1(v70));
  sub_1008D9B58(v69, type metadata accessor for MetricsEvent.Click);
  sub_1000095E8(v68, &qword_1011A77F0, &unk_100EEAA20);

  return _swift_task_switch(sub_10092FF94, 0, 0);
}