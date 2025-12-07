uint64_t sub_100338B4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100338BC4(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100338CD0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100339300(*a1);
  *a2 = result;
  return result;
}

void sub_100338D00(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF4449656C707041;
  v4 = 0x7265766965636552;
  v5 = 0xD000000000000010;
  v6 = 0x80000001007884A0;
  v7 = 0x80000001007884C0;
  if (v2 != 4)
  {
    v7 = 0x80000001007884E0;
  }

  if (v2 != 3)
  {
    v5 = 0xD000000000000013;
    v6 = v7;
  }

  v8 = 0xD000000000000010;
  v9 = 0x8000000100788460;
  if (v2 != 1)
  {
    v8 = 0xD000000000000015;
    v9 = 0x8000000100788480;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100338DD4()
{
  v1 = *v0;
  v2 = 0x7265766965636552;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100338EA4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100339300(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100338ECC(uint64_t a1)
{
  v2 = sub_10033984C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100338F08(uint64_t a1)
{
  v2 = sub_10033984C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100338F44(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100978F50, &qword_1007FC4B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10002CDC0(a1, a1[3]);
  sub_10033984C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v16 = v3[1];
    v13 = v3[1];
    v12 = 1;
    sub_100339908(&v16, v11);
    sub_1002F3198();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10028BCC0(v13, *(&v13 + 1));
    v15 = v3[2];
    v13 = v3[2];
    v12 = 2;
    sub_100320328(&v15, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    v13 = v3[3];
    v14 = v13;
    v12 = 3;
    sub_100320328(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026AC0(v13, *(&v13 + 1));
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1003391E8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10033934C(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_10033925C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  _StringGuts.grow(_:)(44);
  v3._object = 0x800000010078C5B0;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v3);
  sub_1002A9924(v1, v2);
  sub_1002F4C88();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  sub_10028BCC0(v1, v2);
  return 0;
}

unint64_t sub_100339300(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7808, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10033934C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100978F40, &qword_1007FC4B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  sub_10002CDC0(a1, a1[3]);
  sub_10033984C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000C60C(a1);

    return sub_10028BCC0(0, 0xF000000000000000);
  }

  else
  {
    LOBYTE(v40) = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v12 = v9;
    LOBYTE(v34) = 1;
    v32 = sub_1002F309C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v12;
    v28 = a2;
    v13 = v40;
    v14 = v41;
    sub_10028BCC0(0, 0xF000000000000000);
    LOBYTE(v34) = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = v40;
    v27 = v41;
    LOBYTE(v34) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v40;
    v31 = v41;
    LOBYTE(v40) = 4;
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v16;
    v26 = v15;
    v51 = 5;
    v17 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *&v34 = v29;
    *(&v34 + 1) = v11;
    *&v35 = v13;
    v18 = v33;
    *(&v35 + 1) = v14;
    *&v36 = v33;
    v19 = v27;
    *(&v36 + 1) = v27;
    *&v37 = v32;
    v20 = v26;
    *(&v37 + 1) = v31;
    *&v38 = v26;
    *(&v38 + 1) = v30;
    v39 = v17;
    sub_1003398A0(&v34, &v40);
    sub_10000C60C(a1);
    v40 = v29;
    v41 = v11;
    v42 = v13;
    v43 = v14;
    v44 = v18;
    v45 = v19;
    v46 = v32;
    v47 = v31;
    v48 = v20;
    v49 = v30;
    v50 = v17;
    result = sub_1003398D8(&v40);
    v22 = v37;
    v23 = v28;
    *(v28 + 32) = v36;
    *(v23 + 48) = v22;
    *(v23 + 64) = v38;
    *(v23 + 80) = v39;
    v24 = v35;
    *v23 = v34;
    *(v23 + 16) = v24;
  }

  return result;
}

unint64_t sub_10033984C()
{
  result = qword_100978F48;
  if (!qword_100978F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F48);
  }

  return result;
}

uint64_t sub_100339908(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10033998C()
{
  result = qword_100978F58;
  if (!qword_100978F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F58);
  }

  return result;
}

unint64_t sub_1003399E4()
{
  result = qword_100978F60;
  if (!qword_100978F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F60);
  }

  return result;
}

unint64_t sub_100339A3C()
{
  result = qword_100978F68;
  if (!qword_100978F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978F68);
  }

  return result;
}

uint64_t sub_100339A90(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100339BE4, v5, 0);
}

void sub_100339BE4(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[5];
    v7 = v1[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v23 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[6];
      v17 = v1[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v23 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6E18);
      (*(v6 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        sub_10032B298("com.apple.Maps");
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        sub_10032B298("com.apple.Maps");

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:

    v22 = v1[1];

    v22(v21);
  }
}

uint64_t sub_100339DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_10033A260@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerMapsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_10033A298(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_100339A90(a1);
}

uint64_t sub_10033A358(uint64_t a1, int a2)
{
  v3 = sub_10028088C(&qword_100974DF8, &qword_10080F350);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v35 - v11;
  v13 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  SFAirDropReceive.AskRequest.itemsDescriptionAdvanced.getter();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &qword_100974DF8, &qword_10080F350);
    goto LABEL_11;
  }

  LODWORD(v35[0]) = a2;
  v14 = *(v7 + 32);
  v14(v12, v5, v6);
  v14(v10, v12, v6);
  if ((*(v7 + 88))(v10, v6) != enum case for SFAirDropReceive.AskRequest.AdvancedItemsDescription.maps(_:))
  {
    (*(v7 + 8))(v10, v6);
    LOBYTE(a2) = v35[0];
    goto LABEL_11;
  }

  (*(v7 + 96))(v10, v6);
  v15 = *(v10 + 2);

  v16 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  LOBYTE(a2) = v35[0];
  if (!v17)
  {
LABEL_11:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v35[0] = xmmword_1007F5670;
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x4E494C5F5350414DLL;
    v24 = inited + 32;
    *(inited + 40) = 0xE90000000000004BLL;
    *(inited + 48) = v13;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v24, &qword_100981D40, &unk_1007FA6C0);
    v15 = String._bridgeToObjectiveC()();
    v25 = SFLocalizedStringForKey();

    if (v25)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v26 = swift_allocObject();
      *(v26 + 16) = v35[0];
      *(v26 + 56) = &type metadata for Int;
      *(v26 + 64) = &protocol witness table for Int;
      *(v26 + 32) = v13;
LABEL_13:
      v27 = static String.localizedStringWithFormat(_:_:)();

      return v27;
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 != 1)
  {

    goto LABEL_11;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v18 = v16;
      v19 = v17;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 32) = 0xD000000000000015;
      v21 = v20 + 32;
      v22 = "MAPS_LINK_DROPPED_PIN";
      goto LABEL_18;
    }

    if (v15 == 3)
    {
      v18 = v16;
      v19 = v17;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 32) = 0x4E494C5F5350414DLL;
      v21 = v20 + 32;
      v29 = 0xED0000494F505F4BLL;
LABEL_21:
      *(v20 + 40) = v29;
      *(v20 + 48) = 1;
      v15 = sub_1003D8D18(v20, a2 & 1);
      swift_setDeallocating();
      sub_100005508(v21, &qword_100981D40, &unk_1007FA6C0);
      v30 = String._bridgeToObjectiveC()();

      v31 = SFLocalizedStringForKey();

      if (v31)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1007F5670;
        *(v32 + 56) = &type metadata for String;
        *(v32 + 64) = sub_100026764();
        *(v32 + 32) = v18;
        *(v32 + 40) = v19;
        goto LABEL_13;
      }

      goto LABEL_24;
    }
  }

  else
  {
    if (!v15)
    {
      v18 = v16;
      v19 = v17;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 32) = 0xD00000000000001ALL;
      v21 = v20 + 32;
      v22 = "MAPS_LINK_CURRENT_LOCATION";
LABEL_18:
      v29 = (v22 - 32) | 0x8000000000000000;
      goto LABEL_21;
    }

    if (v15 == 1)
    {
      v18 = v16;
      v19 = v17;
      sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1007F5670;
      *(v20 + 32) = 0xD000000000000014;
      v21 = v20 + 32;
      v22 = "MAPS_LINK_DIRECTIONS";
      goto LABEL_18;
    }
  }

LABEL_25:
  v37 = 0;
  v38 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  v33._countAndFlagsBits = 0x6E696C207370614DLL;
  v33._object = 0xEF2065707974206BLL;
  String.append(_:)(v33);
  v36 = v15;
  type metadata accessor for SFAirDropMapsLinkType(0);
  _print_unlocked<A, B>(_:_:)();
  v34._countAndFlagsBits = 0x20746F6E20736920;
  v34._object = 0xEF64656C646E6168;
  String.append(_:)(v34);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10033A9F0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100979048);
  v1 = sub_10000C4AC(v0, qword_100979048);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10033AAB8()
{
  v1 = *v0;
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v6[5] = v1;

  sub_1002B3098(0, 0, v4, &unk_1007FCC30, v6);
}

uint64_t sub_10033ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033AC84, 0, 0);
}

uint64_t sub_10033AC84()
{
  v21 = v0;
  v1 = *(v0 + 88);
  v2 = type metadata accessor for TaskPriority();
  v19 = *(v0 + 72);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v19;

  *(v19 + 40) = sub_1002B3098(0, 0, v1, &unk_1007FCC40, v3);

  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100979048);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    *(v0 + 64) = v7;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v10 = String.init<A>(describing:)();
    v12 = sub_10000C4E4(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Starting NearbyActionV1 advertise", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v13 = *(*(v0 + 72) + 24);
  v14 = String._bridgeToObjectiveC()();
  [v13 setLabel:v14];

  [v13 setIdentifier:SFServiceIdentifierAutoUnlock];
  [v13 setDeviceActionType:55];
  [v13 setAdvertiseRate:30];
  v15 = swift_allocObject();
  swift_weakInit();
  *(v0 + 48) = sub_1003463E8;
  *(v0 + 56) = v15;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1005CC610;
  *(v0 + 40) = &unk_1008DC8A8;
  v16 = _Block_copy((v0 + 16));

  [v13 activateWithCompletion:v16];
  _Block_release(v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10033B028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10033B62C(60);
}

void sub_10033B0BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100979048);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21[0] = v6;
      *v4 = 136315394;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10028088C(&qword_100979A30, &qword_1007FCC48);
      v7 = String.init<A>(describing:)();
      v9 = sub_10000C4E4(v7, v8, v21);

      *(v4 + 4) = v9;
      *(v4 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 14) = v10;
      *v5 = v10;
      _os_log_impl(&_mh_execute_header, oslog, v3, "%s: Encountered error while trying to activate NearbyAction advertiser: %@", v4, 0x16u);
      sub_100005508(v5, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v6);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100979048);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136315138;
      swift_beginAccess();
      swift_weakLoadStrong();
      sub_10028088C(&qword_100979A30, &qword_1007FCC48);
      v16 = String.init<A>(describing:)();
      v18 = sub_10000C4E4(v16, v17, v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: Started NearbyAction advertiser", v14, 0xCu);
      sub_10000C60C(v15);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 16) = 1;
    }
  }
}

id sub_10033B470()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v1;
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Stopping advertiser", v5, 0xCu);
    sub_10000C60C(v6);
  }

  if (*(v1 + 40))
  {

    Task.cancel()();
  }

  result = [*(v1 + 24) invalidate];
  *(v1 + 16) = 0;
  return result;
}

uint64_t sub_10033B62C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10033B754, 0, 0);
}

uint64_t sub_10033B754()
{
  v19 = v0;
  ContinuousClock.init()();
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[12] = sub_10000C4AC(v1, qword_100979048);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315394;
    v0[2] = v4;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v18);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Starting timer for %ld sec", v6, 0x16u);
    sub_10000C60C(v7);
  }

  v11 = v0[7];
  v12 = v0[5];
  v13 = v0[6];
  static ContinuousClock.now.getter();
  ContinuousClock.Instant.advanced(by:)();
  v14 = *(v13 + 8);
  v0[13] = v14;
  v0[14] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v12);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_10033B9D4;
  v16 = v0[8];

  return ContinuousClock.sleep(until:tolerance:)(v16, 0, 0, 1);
}

uint64_t sub_10033B9D4()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 40);
  *(*v1 + 128) = v0;

  v2(v3, v4);
  if (v0)
  {
    v5 = sub_10033BC00;
  }

  else
  {
    v5 = sub_10033BB54;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10033BB54()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_10033BDA4();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10033BC00()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ran into error creating timer: %@", v3, 0xCu);
    sub_100005508(v4, &qword_100975400, &qword_1007F65D0);
  }

  else
  {
  }

  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  sub_10033BDA4();
  (*(v7 + 8))(v6, v8);

  v9 = v0[1];

  return v9();
}

id sub_10033BDA4()
{
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100979048);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for SDAuthenticationNearbyActionAdvertiser();

    v5 = String.init<A>(describing:)();
    v7 = sub_10000C4E4(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Timer fired", v3, 0xCu);
    sub_10000C60C(v4);
  }

  return sub_10033B470();
}

uint64_t sub_10033BF1C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10033BFA8()
{
  v17 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  v1[19] = sub_10000C4AC(v3, qword_100979048);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v1[10] = v6;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Starting NearbyInfo advertise", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = *(v1[18] + 16);
  v13 = String._bridgeToObjectiveC()();
  [v12 setLabel:v13];

  [v12 setAdvertiseRate:40];
  v1[2] = v1;
  v1[3] = sub_10033C264;
  v14 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100638A98;
  v1[13] = &unk_1008DC808;
  v1[14] = v14;
  [v12 activateWithCompletion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10033C264()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_10033C4EC;
  }

  else
  {
    v2 = sub_10033C374;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033C374()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[10] = v3;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Started NearbyInfo advertiser", v4, 0xCu);
    sub_10000C60C(v5);
  }

  *(v0[18] + 24) = 1;
  v9 = v0[1];

  return v9();
}

uint64_t sub_10033C4EC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id sub_10033C558()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationNearbyInfoAdvertiser();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Stopping advertiser", v5, 0xCu);
    sub_10000C60C(v6);
  }

  result = [*(v1 + 16) invalidate];
  *(v1 + 24) = 0;
  return result;
}

uint64_t sub_10033C6DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10033C738(uint64_t a1)
{
  v3 = [objc_allocWithZone(CBDiscovery) init];
  *(v1 + 16) = v3;
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  [v4 setLabel:v5];

  [*(v1 + 16) setUseCase:131088];
  [*(v1 + 16) setBleRSSIThresholdHint:4294967236];
  [*(v1 + 16) setBleScanRate:0];
  v6 = *(v1 + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 setDeviceFilter:isa];

  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_10033C86C()
{
  v16 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100979048);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v1[10] = v6;
    type metadata accessor for SDAuthenticationBioArmScanner();

    v9 = String.init<A>(describing:)();
    v11 = sub_10000C4E4(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: Scan starting", v7, 0xCu);
    sub_10000C60C(v8);
  }

  v12 = *(v1[18] + 16);
  v1[2] = v1;
  v1[3] = sub_10033CAD0;
  v13 = swift_continuation_init();
  v1[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100638A98;
  v1[13] = &unk_1008DC7E0;
  v1[14] = v13;
  [v12 activateWithCompletion:v2];

  return _swift_continuation_await(v1 + 2);
}

uint64_t sub_10033CAD0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_10033CBF8;
  }

  else
  {
    v2 = sub_10033CBE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033CBF8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id sub_10033CC64()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationBioArmScanner();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Scan stopping", v5, 0xCu);
    sub_10000C60C(v6);
  }

  return [*(v1 + 16) invalidate];
}

void sub_10033CDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_100345AA8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F94;
  aBlock[3] = &unk_1008DC5B0;
  v12 = _Block_copy(aBlock);

  [v8 setDeviceFoundHandler:v12];
  _Block_release(v12);
}

void sub_10033CFC0(void *a1, uint64_t a2)
{
  v3 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v73 = &v70 - v5;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100979048);

  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v71 = v9;
    v11 = v10;
    v70 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v77[0] = v72;
    *v11 = 136315394;
    swift_beginAccess();
    v75[0] = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v12 = String.init<A>(describing:)();
    v14 = v3;
    v15 = sub_10000C4E4(v12, v13, v77);

    *(v11 + 4) = v15;
    v3 = v14;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    v16 = v70;
    *v70 = v7;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, v71, "%s: Found unfiltered device: %@", v11, 0x16u);
    sub_100005508(v16, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v72);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = [v7 identifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      if (*(*(v19 + 24) + 16))
      {
        v75[0] = v22;
        v75[1] = v24;
        __chkstk_darwin(v25);
        *(&v70 - 2) = v75;
        v27 = sub_10039026C(sub_100345B28, (&v70 - 4), v26);

        if ((v27 & 1) == 0)
        {

          v28 = v7;

          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v76 = v73;
            *v31 = 136315650;
            swift_beginAccess();
            v74 = swift_weakLoadStrong();
            sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
            v33 = String.init<A>(describing:)();
            v35 = sub_10000C4E4(v33, v34, &v76);

            *(v31 + 4) = v35;
            *(v31 + 12) = 2080;

            v36 = Array.description.getter();
            v38 = v37;

            v39 = sub_10000C4E4(v36, v38, &v76);

            *(v31 + 14) = v39;
            *(v31 + 22) = 2112;
            *(v31 + 24) = v28;
            *v32 = v28;
            v40 = v28;
            _os_log_impl(&_mh_execute_header, v29, v30, "%s: Ignoring device not in device filter. Filter: %s, device: %@", v31, 0x20u);
            sub_100005508(v32, &qword_100975400, &qword_1007F65D0);

            swift_arrayDestroy();
          }

          v41 = v28;
          v42 = Logger.logObject.getter();
          v43 = static os_log_type_t.debug.getter();

          if (!os_log_type_enabled(v42, v43))
          {
            goto LABEL_24;
          }

          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v76 = v45;
          *v44 = 136315138;
          v46 = [v41 idsDeviceID];
          if (v46)
          {
            v47 = v46;
            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;
          }

          else
          {
            v50 = 0x8000000100789F30;
            v48 = 0xD000000000000015;
          }

          v69 = sub_10000C4E4(v48, v50, &v76);

          *(v44 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v42, v43, "Ids id: %s", v44, 0xCu);
          sub_10000C60C(v45);

          goto LABEL_23;
        }
      }

      else
      {
      }

      v75[0] = v7;
      v67 = v7;
      sub_10028088C(&qword_100975E78, &qword_1007F90E8);
      v68 = v73;
      AsyncStream.Continuation.yield(_:)();

      (*(v4 + 8))(v68, v3);
      return;
    }

    v58 = v7;
    v42 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v42, v59))
    {
LABEL_24:

      return;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v76 = v62;
    *v60 = 136315394;
    swift_beginAccess();
    v74 = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v63 = String.init<A>(describing:)();
    v65 = sub_10000C4E4(v63, v64, &v76);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2112;
    *(v60 + 14) = v58;
    *v61 = v58;
    v66 = v58;
    _os_log_impl(&_mh_execute_header, v42, v59, "%s: Ignoring device without identifier: %@", v60, 0x16u);
    sub_100005508(v61, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v62);

LABEL_23:

    goto LABEL_24;
  }

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v76 = v54;
    *v53 = 136315138;
    swift_beginAccess();
    v74 = swift_weakLoadStrong();
    sub_10028088C(&qword_100979A08, &qword_1007FCBD0);
    v55 = String.init<A>(describing:)();
    v57 = sub_10000C4E4(v55, v56, &v76);

    *(v53 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v51, v52, "%s: self isn't initialized", v53, 0xCu);
    sub_10000C60C(v54);
  }
}

uint64_t sub_10033D940()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10033C84C();
}

uint64_t sub_10033D9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v5[20] = v7;
  v5[21] = *(v7 - 8);
  v5[22] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();

  return _swift_task_switch(sub_10033DBD4, 0, 0);
}

uint64_t sub_10033DBD4()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v6 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  swift_beginAccess();
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_10033DD6C;
  v8 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 11, 0, 0, v8);
}

uint64_t sub_10033DD6C()
{

  return _swift_task_switch(sub_10033DE68, 0, 0);
}

uint64_t sub_10033DE68()
{
  v72 = v0;
  v1 = *(v0 + 88);
  if (v1)
  {
    if (([*(v0 + 88) nearbyInfoFlags] & 0x20) == 0)
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000C4AC(v2, qword_100979048);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v3, v4))
      {
        goto LABEL_18;
      }

      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Device isn't advertising watchLocked. Ignoring", v5, 2u);
LABEL_17:

LABEL_18:

LABEL_57:
      v67 = swift_task_alloc();
      *(v0 + 232) = v67;
      *v67 = v0;
      v67[1] = sub_10033DD6C;
      v68 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 88, 0, 0, v68);
    }

    v8 = [v1 idsDeviceID];
    if (v8)
    {
      v9 = *(v0 + 120);
      v10 = v8;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = *(v9 + 32);
      if (*(v14 + 16))
      {

        v15 = sub_100012854(v11, v13);
        if (v16)
        {
          v17 = *(*(v14 + 56) + v15);
        }

        else
        {
          v17 = 0x80;
        }
      }

      else
      {
        v17 = 0x80;
      }

      v27 = *(v0 + 120);
      v70 = [v1 rssi];
      v28 = *(v27 + 40);
      if (*(v28 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v29 = Hasher._finalize()();
        v30 = -1 << *(v28 + 32);
        v31 = v29 & ~v30;
        if ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
        {
          v32 = ~v30;
          while (1)
          {
            v33 = (*(v28 + 48) + 16 * v31);
            v34 = *v33 == v11 && v33[1] == v13;
            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v31 = (v31 + 1) & v32;
            if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          if (v70 <= v17)
          {

            if (qword_100973640 == -1)
            {
LABEL_44:
              v48 = type metadata accessor for Logger();
              sub_10000C4AC(v48, qword_100979048);
              v49 = v1;
              v3 = Logger.logObject.getter();
              v50 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v3, v50))
              {

                goto LABEL_57;
              }

              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 16777986;
              *(v51 + 4) = v17;
              *(v51 + 5) = 256;
              *(v51 + 7) = v70;
              *(v51 + 8) = 2112;
              *(v51 + 10) = v49;
              *v52 = v1;
              v1 = v49;
              _os_log_impl(&_mh_execute_header, v3, v50, "Ignoring device due to lower RSSI (old: %hhd, new: %hhd). Device: %@", v51, 0x12u);
              sub_100005508(v52, &qword_100975400, &qword_1007F65D0);

              goto LABEL_17;
            }

LABEL_61:
            swift_once();
            goto LABEL_44;
          }
        }

        else
        {
LABEL_31:
        }
      }

      v35 = *(v0 + 120);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v35 + 32);
      *(v0 + 104) = v37;
      *(v35 + 32) = 0x8000000000000000;
      v38 = sub_100012854(v11, v13);
      v40 = *(v37 + 16);
      v41 = (v39 & 1) == 0;
      v42 = __OFADD__(v40, v41);
      v43 = v40 + v41;
      if (!v42)
      {
        v44 = v39;
        if (*(v37 + 24) >= v43)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v53 = v38;
            sub_1002D01E8();
            v38 = v53;
            if (v44)
            {
              goto LABEL_42;
            }

LABEL_50:
            v47 = *(v0 + 104);
            v47[(v38 >> 6) + 8] |= 1 << v38;
            v54 = (v47[6] + 16 * v38);
            *v54 = v11;
            v54[1] = v13;
            *(v47[7] + v38) = v70;
            v55 = v47[2];
            v42 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (!v42)
            {
              v47[2] = v56;
              goto LABEL_52;
            }

            __break(1u);
            goto LABEL_61;
          }
        }

        else
        {
          sub_100574D60(v43, isUniquelyReferenced_nonNull_native);
          v38 = sub_100012854(v11, v13);
          if ((v44 & 1) != (v45 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }
        }

        if (v44)
        {
LABEL_42:
          v46 = v38;

          v47 = *(v0 + 104);
          *(v47[7] + v46) = v70;
LABEL_52:
          *(*(v0 + 120) + 32) = v47;
          swift_endAccess();
          if (qword_100973640 != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          sub_10000C4AC(v57, qword_100979048);
          v58 = v1;
          v59 = Logger.logObject.getter();
          v60 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            *v61 = 138412290;
            *(v61 + 4) = v58;
            *v62 = v1;
            v63 = v58;
            _os_log_impl(&_mh_execute_header, v59, v60, "Found unarmed device! %@", v61, 0xCu);
            sub_100005508(v62, &qword_100975400, &qword_1007F65D0);
          }

          v65 = *(v0 + 144);
          v64 = *(v0 + 152);
          v66 = *(v0 + 136);

          *(v0 + 112) = v58;
          sub_10028088C(&qword_100975E78, &qword_1007F90E8);
          AsyncStream.Continuation.yield(_:)();
          (*(v65 + 8))(v64, v66);
          goto LABEL_57;
        }

        goto LABEL_50;
      }

      __break(1u);
    }

    else if (qword_100973640 == -1)
    {
LABEL_15:
      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_100979048);
      v19 = v1;

      v3 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      if (!os_log_type_enabled(v3, v20))
      {

        goto LABEL_57;
      }

      v21 = *(v0 + 120);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v71[0] = v69;
      *v22 = 136315394;
      *(v0 + 96) = v21;
      type metadata accessor for SDAuthenticationBioArmNearbyInfoScanner();

      v24 = String.init<A>(describing:)();
      v26 = sub_10000C4E4(v24, v25, v71);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2112;
      *(v22 + 14) = v19;
      *v23 = v1;
      v1 = v19;
      _os_log_impl(&_mh_execute_header, v3, v20, "%s: Ignoring device with IDS device ID: %@", v22, 0x16u);
      sub_100005508(v23, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v69);

      goto LABEL_17;
    }

    swift_once();
    goto LABEL_15;
  }

  (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10033E774()
{
}

uint64_t sub_10033E7A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10033E838()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10033C84C();
}

uint64_t sub_10033E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v8 + 32))(&v16[v15], v10, v7);

  sub_1002B3098(0, 0, v13, a4, v16);
}

uint64_t sub_10033EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return _swift_task_switch(sub_10033ECB4, 0, 0);
}

uint64_t sub_10033ECB4()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v6 + 104))(v4, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_10033EE24;
  v8 = v0[17];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
}

uint64_t sub_10033EE24()
{

  return _swift_task_switch(sub_10033EF20, 0, 0);
}

uint64_t sub_10033EF20()
{
  v34 = v0;
  v1 = *(v0 + 16);
  if (v1)
  {
    if ([*(v0 + 16) nearbyActionType] == 55)
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_10000C4AC(v2, qword_100979048);

      v3 = v1;
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v0 + 48);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v33 = v31;
        *v7 = 136315394;
        *(v0 + 40) = v6;
        type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();

        v9 = String.init<A>(describing:)();
        v11 = sub_10000C4E4(v9, v10, &v33);

        *(v7 + 4) = v11;
        *(v7 + 12) = 2112;
        *(v7 + 14) = v3;
        *v8 = v1;
        v12 = v3;
        _os_log_impl(&_mh_execute_header, v4, v5, "%s: Needs arming! NearbyActionV1 Device: %@", v7, 0x16u);
        sub_100005508(v8, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v31);
      }

      v14 = *(v0 + 72);
      v13 = *(v0 + 80);
      v15 = *(v0 + 64);
      *(v0 + 32) = v3;
      sub_10028088C(&qword_100975E78, &qword_1007F90E8);
      AsyncStream.Continuation.yield(_:)();
      (*(v14 + 8))(v13, v15);
    }

    else
    {
      if (qword_100973640 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_100979048);

      v19 = v1;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 48);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v33 = v32;
        *v23 = 136315394;
        *(v0 + 24) = v22;
        type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();

        v25 = String.init<A>(describing:)();
        v27 = sub_10000C4E4(v25, v26, &v33);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2112;
        *(v23 + 14) = v19;
        *v24 = v1;
        v28 = v19;
        _os_log_impl(&_mh_execute_header, v20, v21, "%s: Device %@ does not have AUAction bit set", v23, 0x16u);
        sub_100005508(v24, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v32);
      }

      else
      {
      }
    }

    v29 = swift_task_alloc();
    *(v0 + 160) = v29;
    *v29 = v0;
    v29[1] = sub_10033EE24;
    v30 = *(v0 + 136);

    return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v30);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_10033F434(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100979A10, &qword_1007FCBF8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100979048);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Scanning for found devices", v11, 2u);
  }

  sub_1000276B4(0, &qword_100979A18, RPCompanionLinkDevice_ptr);
  v12 = (*(v5 + 104))(v7, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v4);
  __chkstk_darwin(v12);
  *(&v14 - 4) = a1;
  *(&v14 - 3) = v2;
  *(&v14 - 16) = 1;
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

void sub_10033F650(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v13 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v53 = v10;
  if (a2 < 1)
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000C4AC(v23, qword_100979048);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v54 = a3;
      aBlock = v51;
      *v26 = 136315138;
      type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
      v52 = v12;

      v27 = String.init<A>(describing:)();
      v29 = v8;
      v30 = a1;
      v31 = a4;
      v32 = sub_10000C4E4(v27, v28, &aBlock);
      v12 = v52;

      *(v26 + 4) = v32;
      a4 = v31;
      a1 = v30;
      v8 = v29;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s: Scanning indefinitely", v26, 0xCu);
      sub_10000C60C(v51);
    }
  }

  else
  {
    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    (*(v9 + 16))(v12, a1, v8);
    v17 = *(v9 + 80);
    v52 = v8;
    v18 = a1;
    v19 = a4;
    v20 = (v17 + 48) & ~v17;
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a3;
    v21[5] = a2;
    v22 = v21 + v20;
    a4 = v19;
    a1 = v18;
    v8 = v52;
    (*(v9 + 32))(v22, v12, v52);

    sub_1002B3098(0, 0, v15, &unk_1007FCC10, v21);
  }

  v51 = *(a3 + 16);
  v52 = a1;
  v34 = *(v9 + 16);
  v33 = v9 + 16;
  v50 = v34;
  v34(v12, a1, v8);
  v35 = *(v33 + 64);
  v49 = ~v35;
  v36 = (v35 + 24) & ~v35;
  v37 = v12;
  v38 = a3;
  v39 = (v33 + 16);
  if (a4)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    v41 = *v39;
    (*v39)(v40 + v36, v37, v8);
    v59 = sub_1003460B0;
    v60 = v40;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100035F94;
    v58 = &unk_1008DC790;
    v42 = _Block_copy(&aBlock);

    v43 = &selRef_setDeviceFoundHandler_;
  }

  else
  {
    v44 = swift_allocObject();
    *(v44 + 16) = v38;
    v41 = *v39;
    (*v39)(v44 + v36, v37, v8);
    v59 = sub_100345F68;
    v60 = v44;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100035F94;
    v58 = &unk_1008DC6F0;
    v42 = _Block_copy(&aBlock);

    v43 = &selRef_setDeviceLostHandler_;
  }

  v45 = v51;
  [v51 *v43];
  _Block_release(v42);
  v50(v37, v52, v8);
  v46 = (v35 + 16) & v49;
  v47 = swift_allocObject();
  v41(v47 + v46, v37, v8);
  v59 = sub_100345F74;
  v60 = v47;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_1005CC610;
  v58 = &unk_1008DC740;
  v48 = _Block_copy(&aBlock);

  [v45 activateWithCompletion:v48];
  _Block_release(v48);
}

uint64_t sub_10033FCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for ContinuousClock();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10033FD6C, 0, 0);
}

uint64_t sub_10033FD6C()
{
  v18 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_10000C4AC(v1, qword_100979048);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[5];
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    v0[4] = v4;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();

    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Scanning for %ld seconds", v6, 0x16u);
    sub_10000C60C(v7);
  }

  v11 = v0[6];
  v12 = 1000000000000000000 * v11;
  v13 = (v11 * 0xDE0B6B3A7640000uLL) >> 64;
  v14 = (v11 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_10033FFB8;

  return sub_10002ED10(v12, v14 + v13, 0, 0, 1);
}

uint64_t sub_10033FFB8()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100346410;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100340150;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100340150()
{
  v12 = v0;
  v0[2] = 0;
  sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();

    v6 = String.init<A>(describing:)();
    v8 = sub_10000C4E4(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: Finished scanning", v4, 0xCu);
    sub_10000C60C(v5);
  }

  [*(v0[5] + 16) invalidate];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10034030C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = sub_10028088C(&qword_100979A28, &qword_1007FCC18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100979048);

  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v28 = a2;
    v29 = v26;
    *v16 = 136315394;
    type metadata accessor for SDAuthenticationNearbyInfoTemporaryScanner();
    v25 = a4;

    v18 = String.init<A>(describing:)();
    v20 = sub_10000C4E4(v18, v19, &v29);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    v21 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, v25, v16, 0x16u);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v26);

    v10 = v27;
  }

  v29 = v12;
  v22 = v12;
  sub_10028088C(&qword_100979A20, &qword_1007FCC00);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003405D8(uint64_t result)
{
  if (result)
  {
    swift_errorRetain();
    sub_10028088C(&qword_100979A20, &qword_1007FCC00);
    return AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  return result;
}

uint64_t sub_100340678()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100340994;
  }

  else
  {
    v2 = sub_10034078C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003407A8()
{
  v14 = v0;
  v1 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) != 1)
  {
    sub_100005508(v0[6], &qword_1009799D0, &unk_1007FCB10);
  }

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[3] = v5;
    sub_10028088C(&qword_1009799D8, &qword_1007FCB20);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000C4E4(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Finished waiting for keys to load", v6, 0xCu);
    sub_10000C60C(v7);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100340994()
{
  *(v0 + 16) = *(v0 + 104);
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_100340A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v21 = &v21 - v6;
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = *(v5 + 16);
  v13(&v21 - v11, a1, v4);
  (*(v5 + 56))(v12, 0, 1, v4);
  v14 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  swift_beginAccess();
  sub_1003454E4(v12, a2 + v14);
  swift_endAccess();
  swift_allocObject();
  swift_weakInit();
  v15 = a1;
  AsyncStream.Continuation.onTermination.setter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v21;
  v13(v21, v15, v4);
  v18 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = a2;
  (*(v5 + 32))(&v19[v18], v17, v4);

  sub_1002B3098(0, 0, v9, &unk_1007FCB60, v19);
}

uint64_t sub_100340D20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(result + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
    {

      sub_10033CC64();
    }

    if (*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner))
    {

      sub_10033CC64();
    }
  }

  return result;
}

uint64_t sub_100340DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v5[9] = *(v7 + 64);
  v5[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[11] = swift_task_alloc();

  return _swift_task_switch(sub_100340EC8, 0, 0);
}

id sub_100340EC8()
{
  result = [objc_opt_self() sharedMonitor];
  *(v0 + 96) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_100340F84;

    return sub_10002DCF0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100340F84()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v5 = *v0;

  type metadata accessor for SDAuthenticationStatusMonitor();
  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v5;
  v3[1] = sub_1003410D0;

  return sub_100026DBC();
}

uint64_t sub_1003410D0()
{

  return _swift_task_switch(sub_1003411CC, 0, 0);
}

uint64_t sub_1003411CC()
{
  v54 = v0;
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  if (qword_1009A10A8)
  {
    v51 = qword_1009A10A8;
    v1 = sub_100693628();
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100979048);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[5];
      v6 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v6 = 136315394;
      v0[4] = v5;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

      v7 = String.init<A>(describing:)();
      v9 = sub_10000C4E4(v7, v8, &v53);

      *(v6 + 4) = v9;
      *(v6 + 12) = 2080;
      v10 = Array.description.getter();
      v12 = sub_10000C4E4(v10, v11, &v53);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Looking for lock devices %s", v6, 0x16u);
      swift_arrayDestroy();
    }

    if (v1[2])
    {
      v13 = v0[10];
      v14 = v0[11];
      v15 = v0[9];
      v44 = v1;
      v52 = v0;
      v16 = v0[8];
      v17 = v52[7];
      v18 = v52[6];
      v49 = v18;
      v45 = v52[5];
      v47 = type metadata accessor for TaskPriority();
      v50 = *(*(v47 - 8) + 56);
      v19 = v14;
      v50(v14, 1, 1, v47);
      v48 = *(v16 + 16);
      v48(v13, v18, v17);
      v20 = *(v16 + 80);
      v21 = (v20 + 40) & ~v20;
      v22 = swift_allocObject();
      *(v22 + 2) = 0;
      *(v22 + 3) = 0;
      *(v22 + 4) = v44;
      v46 = *(v16 + 32);
      v46(&v22[v21], v13, v17);
      *&v22[(v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v45;

      sub_1002B3098(0, 0, v19, &unk_1007FCB70, v22);

      v50(v19, 1, 1, v47);
      v48(v13, v49, v17);
      v23 = (v20 + 48) & ~v20;
      v24 = swift_allocObject();
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 4) = v44;
      *(v24 + 5) = v45;
      v46(&v24[v23], v13, v17);
      v0 = v52;

      sub_1002B3098(0, 0, v19, &unk_1007FCB80, v24);
    }

    else
    {

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = v0[5];
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v53 = v38;
        *v37 = 136315138;
        v0[3] = v36;
        type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

        v39 = String.init<A>(describing:)();
        v41 = sub_10000C4E4(v39, v40, &v53);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "%s: No lock devices. Terminating stream", v37, 0xCu);
        sub_10000C60C(v38);
      }

      AsyncStream.Continuation.finish()();
    }
  }

  else
  {
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000C4AC(v25, qword_100979048);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[5];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v53 = v30;
      *v29 = 136315138;
      v0[2] = v28;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

      v31 = String.init<A>(describing:)();
      v33 = sub_10000C4E4(v31, v32, &v53);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "%s: Authentication manager isn't running. Not scanning", v29, 0xCu);
      sub_10000C60C(v30);
    }
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_100341898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[11] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100341AD8, 0, 0);
}

uint64_t sub_100341AD8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v16 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  type metadata accessor for SDAuthenticationBioArmNearbyActionScanner();
  v7 = swift_allocObject();

  sub_10033C738(v8);
  v9 = *(v7 + 16);

  [v9 setDiscoveryFlags:0x2000000];
  [*(v7 + 16) setBleRSSIThresholdHint:4294967206];
  [*(v7 + 16) setBleScanRate:20];
  [*(v7 + 16) setBleScanRateScreenOff:20];
  [*(v7 + 16) setDiscoveryFlags:34078720];
  v10 = *(v7 + 16);

  [v10 addDiscoveryType:6];

  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v7;
  sub_1002B281C(0, 0, v6, &unk_1007FCBE0, v12);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v16);
  v13 = swift_task_alloc();
  v0[21] = v13;
  *v13 = v0;
  v13[1] = sub_100341D90;
  v14 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v14);
}

uint64_t sub_100341D90()
{

  return _swift_task_switch(sub_100341E8C, 0, 0);
}

uint64_t sub_100341E8C()
{
  v23 = v0;
  v1 = v0[2];
  if (v1)
  {
    v0[3] = v1;
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v1;
    sub_10028088C(&qword_100975E78, &qword_1007F90E8);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100979048);
    v7 = v5;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[7];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v11 = 136315394;
      v0[4] = v10;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

      v13 = String.init<A>(describing:)();
      v15 = sub_10000C4E4(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v7;
      *v12 = v1;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Yielded NearbyAction device: %@", v11, 0x16u);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v21);
    }

    else
    {
    }

    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_100341D90;
    v20 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v20);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1003421F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_10028088C(&qword_1009799F8, &qword_1007FCB88);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v6[11] = swift_task_alloc();
  v8 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  v6[15] = v9;
  v6[16] = *(v9 - 8);
  v6[17] = swift_task_alloc();
  v10 = sub_10028088C(&qword_100979A00, &qword_1007FCBA0);
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return _swift_task_switch(sub_100342430, 0, 0);
}

uint64_t sub_100342430()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v15 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = v0[6];
  type metadata accessor for SDAuthenticationBioArmNearbyInfoScanner();
  v8 = swift_allocObject();
  v0[21] = v8;
  *(v8 + 32) = sub_100281970(_swiftEmptyArrayStorage);
  *(v8 + 40) = &_swiftEmptySetSingleton;

  sub_10033C738(v9);
  [*(v8 + 16) setDiscoveryFlags:64];
  [*(v8 + 16) setBleScanRate:30];
  *(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner) = v8;

  sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
  (*(v4 + 104))(v3, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v5);
  AsyncStream.init(_:bufferingPolicy:_:)();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;

  sub_1002B281C(0, 0, v6, &unk_1007FCBB0, v11);

  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v15);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_1003426C0;
  v13 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v13);
}

uint64_t sub_1003426C0()
{

  return _swift_task_switch(sub_1003427BC, 0, 0);
}

uint64_t sub_1003427BC()
{
  v23 = v0;
  v1 = v0[2];
  if (v1)
  {
    v0[3] = v1;
    v3 = v0[9];
    v2 = v0[10];
    v4 = v0[8];
    v5 = v1;
    sub_10028088C(&qword_100975E78, &qword_1007F90E8);
    AsyncStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    if (qword_100973640 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100979048);
    v7 = v5;

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[6];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v11 = 136315394;
      v0[4] = v10;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

      v13 = String.init<A>(describing:)();
      v15 = sub_10000C4E4(v13, v14, &v22);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v7;
      *v12 = v1;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Yielded NearbyInfo device: %@", v11, 0x16u);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v21);
    }

    else
    {
    }

    v19 = swift_task_alloc();
    v0[22] = v19;
    *v19 = v0;
    v19[1] = sub_1003426C0;
    v20 = v0[18];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v20);
  }

  else
  {
    (*(v0[19] + 8))(v0[20], v0[18]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_100342B28(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_100342B4C, 0, 0);
}

uint64_t sub_100342B4C()
{
  v1 = [*(v0 + 24) identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 16);
  *v6 = v3;
  v6[1] = v5;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100342BF0(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v4 = swift_task_alloc();
  v5 = *a2;
  v6 = a2[1];
  v2[3] = v4;
  v2[4] = v5;
  v2[5] = v6;

  return _swift_task_switch(sub_100342C98, 0, 0);
}

void sub_100342C98(uint64_t a1)
{
  Date.init()();
  v2 = [objc_opt_self() sharedTransport];
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = v1[3];
  UUID.init(uuidString:)();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  isa = 0;
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v8 = v1[3];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v5);
  }

  v9 = [v3 idsDeviceForBluetoothID:isa];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v1[2];
  v11 = sub_10028088C(&qword_100975E50, &qword_1007F9078);
  v12 = (v10 + *(v11 + 48));
  v12[3] = sub_1000276B4(0, &qword_10097F0C0, IDSDevice_ptr);
  v12[4] = &off_1008EA2C0;
  *v12 = v9;
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);

  v13 = v1[1];

  v13();
}

void sub_100342E84()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - v7;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979048);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = v6;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v8;
    v15 = v14;
    v31 = v0;
    v32[0] = v14;
    *v13 = 136315138;
    type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

    v16 = String.init<A>(describing:)();
    v18 = sub_10000C4E4(v16, v17, v32);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: Stopping", v13, 0xCu);
    sub_10000C60C(v15);
    v8 = v28;

    v6 = v29;
  }

  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  swift_beginAccess();
  sub_100345EEC(v0 + v19, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100005508(v4, &qword_1009799F0, &qword_1007FCB50);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v1;
      v31 = v23;
      *v22 = 136315138;
      type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);

      v24 = String.init<A>(describing:)();
      v26 = sub_10000C4E4(v24, v25, &v31);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: No continuation to stop", v22, 0xCu);
      sub_10000C60C(v23);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    AsyncStream.Continuation.finish()();
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100343278()
{
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation, &qword_1009799F0, &qword_1007FCB50);
}

uint64_t sub_1003432D8()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;

  sub_100005508(v0 + v1, &qword_1009799F0, &qword_1007FCB50);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAuthenticationBioArmUnarmedDevices(uint64_t a1)
{
  result = qword_100979738;
  if (!qword_100979738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003433DC(uint64_t a1)
{
  sub_100343478(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100343478(uint64_t a1)
{
  if (!qword_100979748)
  {
    sub_100280938(&qword_100975E78, &qword_1007F90E8);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100979748);
    }
  }
}

uint64_t sub_1003434E4(void *a1, char a2)
{
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;
  *(v2 + 36) = IOPMConnectionGetSystemCapabilities();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1003438B0(v10);
    v12 = v11;

    if (v12)
    {
      swift_beginAccess();
      *(v2 + 16) = v12;
    }
  }

  sub_100344C38();

  return v2;
}

void sub_10034364C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10028088C(&qword_1009799E0, &qword_1007FCB28);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_10000C5B0(*(a1 + 56) + 32 * v10, v24);
    *&v23 = v12;
    *(&v23 + 1) = v13;
    v21[2] = v23;
    v22[0] = v24[0];
    v22[1] = v24[1];
    v14 = v23;
    sub_1000106E0(v22, v21);

    sub_10028088C(&qword_1009799E8, &qword_1007FCB30);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v15 = sub_100012854(v14, *(&v14 + 1));
    if (v16)
    {
      *(v2[6] + 16 * v15) = v14;
      v8 = v15;

      *(v2[7] + 8 * v8) = v20;

      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
      *(v2[6] + 16 * v15) = v14;
      *(v2[7] + 8 * v15) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v9 = v7;
  }
}

void sub_1003438B0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v2 - 8);
  v4 = &v52 - v3;
  v64 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  __chkstk_darwin(v64);
  v63 = &v52 - v5;
  v62 = sub_10028088C(&qword_1009799C8, &unk_1007FCAE8);
  __chkstk_darwin(v62);
  v61 = (&v52 - v6);
  v7 = type metadata accessor for Date();
  v66 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v60 = &v52 - v12;
  __chkstk_darwin(v11);
  v59 = &v52 - v13;
  v68 = a1;
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_1009763A0, &unk_1007F9590);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = &_swiftEmptyDictionarySingleton;
  }

  v15 = v68 + 64;
  v16 = 1 << *(v68 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v68 + 64);
  v19 = (v16 + 63) >> 6;
  v65 = (v66 + 56);
  v67 = (v66 + 32);
  v53 = v14 + 8;
  v54 = v66 + 40;

  v20 = 0;
  v57 = v4;
  v56 = v15;
  v55 = v19;
  v58 = v10;
  while (v18)
  {
    v22 = v20;
LABEL_14:
    v23 = __clz(__rbit64(v18)) | (v22 << 6);
    v24 = (*(v68 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    sub_10000C5B0(*(v68 + 56) + 32 * v23, v73);
    *&v72 = v25;
    *(&v72 + 1) = v26;
    v70[2] = v72;
    v71[0] = v73[0];
    v71[1] = v73[1];
    v27 = v26;
    v69 = v72;
    sub_1000106E0(v71, v70);

    if (!swift_dynamicCast())
    {

      (*v65)(v4, 1, 1, v7);
      sub_100005508(v4, &qword_10097A7F0, &unk_1007FB600);

      return;
    }

    v18 &= v18 - 1;
    (*v65)(v4, 0, 1, v7);
    v28 = v4;
    v29 = *v67;
    v30 = v60;
    (*v67)(v60, v28, v7);
    v31 = *(v64 + 48);
    v32 = v7;
    v33 = v63;
    v29(&v63[v31], v30, v32);
    v34 = v62;
    v35 = *(v62 + 48);
    v36 = v27;
    v37 = v61;
    *v61 = v69;
    v37[1] = v36;
    v38 = &v33[v31];
    v7 = v32;
    v39 = v58;
    v29(v37 + v35, v38, v7);
    v40 = *(v34 + 48);
    v41 = *v37;
    v42 = v37[1];
    v43 = v37 + v40;
    v44 = v59;
    v29(v59, v43, v7);
    v29(v39, v44, v7);
    v45 = sub_100012854(v41, v42);
    v46 = v45;
    if (v47)
    {
      v21 = (v14[6] + 16 * v45);
      *v21 = v41;
      v21[1] = v42;

      (*(v66 + 40))(v14[7] + *(v66 + 72) * v46, v39, v7);
    }

    else
    {
      if (v14[2] >= v14[3])
      {
        goto LABEL_22;
      }

      *(v53 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v48 = (v14[6] + 16 * v45);
      *v48 = v41;
      v48[1] = v42;
      v29((v14[7] + *(v66 + 72) * v45), v39, v7);
      v49 = v14[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_23;
      }

      v14[2] = v51;
    }

    v20 = v22;
    v4 = v57;
    v15 = v56;
    v19 = v55;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_100343EBC(uint64_t a1)
{
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 128;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 32) = 0u;
  if (IOPMGetCapabilitiesDescription())
  {
    v3 = sub_100345E10(v1, v2);

    return v3;
  }

  else
  {

    _StringGuts.grow(_:)(32);

    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 41;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_100343FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_1003440FC, 0, 0);
}

id sub_1003440FC()
{
  result = [objc_opt_self() sharedMonitor];
  *(v0 + 136) = result;
  if (result)
  {
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_1003441B8;

    return sub_10002DCF0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003441B8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v5 = *v0;

  type metadata accessor for SDAuthenticationStatusMonitor();
  v3 = swift_task_alloc();
  *(v1 + 152) = v3;
  *v3 = v5;
  v3[1] = sub_100344304;

  return sub_100026DBC();
}

uint64_t sub_100344304()
{

  return _swift_task_switch(sub_100344400, 0, 0);
}

uint64_t sub_100344400()
{
  v21 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100979048);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    v0[9] = v4;
    type metadata accessor for SDAuthenticationRegistrationManager();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: Performing Registration when booted", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[13];
  v13 = v0[11];
  v14 = v0[12];
  v15 = v0[10];
  v19 = v0[14];
  v0[6] = sub_1003454E0;
  v0[7] = v15;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100011678;
  v0[5] = &unk_1008DC448;
  v16 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[8] = _swiftEmptyArrayStorage;
  sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100013EB8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v14 + 8))(v12, v13);
  (*(v11 + 8))(v10, v19);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100344728()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[5];
  *v12 = v13;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v15)
  {
    if (qword_100973C50 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  result = swift_once();
LABEL_3:
  if (qword_1009A10A8)
  {
    v17 = qword_100973640;
    v18 = qword_1009A10A8;
    if (v17 != -1)
    {
      swift_once();
    }

    v33 = v3;
    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100979048);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32 = v2;
      v24 = v23;
      v36 = v1;
      aBlock[0] = v23;
      *v22 = 136315138;
      type metadata accessor for SDAuthenticationRegistrationManager();

      v25 = String.init<A>(describing:)();
      v27 = sub_10000C4E4(v25, v26, aBlock);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "%s: Starting registration", v22, 0xCu);
      sub_10000C60C(v24);
      v2 = v32;
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v18;
    *(v28 + 24) = v1;
    aBlock[4] = sub_100345EC0;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DC6A0;
    v29 = _Block_copy(aBlock);
    v30 = v18;

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_10001429C(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v29);
    (*(v33 + 8))(v5, v2);
    (*(v34 + 8))(v8, v35);
  }

  return result;
}

void sub_100344C38()
{
  v1 = v0;
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100979048);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v1;
    v12 = v6;
    *v5 = 136315138;
    type metadata accessor for SDAuthenticationRegistrationManager();

    v7 = String.init<A>(describing:)();
    v9 = sub_10000C4E4(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: Adding Observer for keyBagChanged", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_100973680 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v1 selector:v11 name:v12 object:?];
}

uint64_t sub_100344E30(uint64_t a1, unint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v4 - 8);
  v36 = &v29[-v5];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v29[-v11];
  static Date.now.getter();
  if (qword_100973640 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100979048);
  v34 = *(v7 + 16);
  v34(v10, v12, v6);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a1;
    v17 = v16;
    v31 = swift_slowAlloc();
    v37[0] = v31;
    *v17 = 136315394;
    *(v17 + 4) = sub_10000C4E4(v33, a2, v37);
    *(v17 + 12) = 2080;
    sub_10001429C(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v15;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = a2;
    v20 = v19;
    v21 = *(v7 + 8);
    v35 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v10, v6);
    v22 = sub_10000C4E4(v18, v20, v37);
    a2 = v32;

    *(v17 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v14, v30, "Updating last used for device %s to %s", v17, 0x16u);
    swift_arrayDestroy();

    a1 = v33;

    v23 = v21;
  }

  else
  {

    v23 = *(v7 + 8);
    v35 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v10, v6);
  }

  v24 = v36;
  v34(v36, v12, v6);
  (*(v7 + 56))(v24, 0, 1, v6);
  swift_beginAccess();

  sub_1002B1544(v24, a1, a2);
  swift_endAccess();
  v25 = [objc_opt_self() standardUserDefaults];

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = String._bridgeToObjectiveC()();
  [v25 setObject:isa forKey:v27];

  return (v23)(v12, v6);
}

void sub_1003452C0()
{

  v1 = *(v0 + 40);
}

uint64_t sub_1003452F0()
{

  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

unint64_t sub_100345384()
{
  result = qword_1009799A8;
  if (!qword_1009799A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799A8);
  }

  return result;
}

unint64_t sub_1003453DC()
{
  result = qword_1009799B0;
  if (!qword_1009799B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799B0);
  }

  return result;
}

unint64_t sub_100345434()
{
  result = qword_1009799B8;
  if (!qword_1009799B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799B8);
  }

  return result;
}

unint64_t sub_10034548C()
{
  result = qword_1009799C0;
  if (!qword_1009799C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009799C0);
  }

  return result;
}

uint64_t sub_1003454E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034555C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C04;

  return sub_100340DBC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100345660(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100005C00;

  return sub_100341898(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1003457A0(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_1003421F0(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1003458E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C04;

  return sub_10033D940();
}

uint64_t sub_10034599C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10033D9D0(a1, v6, v7, v8, v1 + v5);
}

void sub_100345AA8(void *a1)
{
  sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v3 = *(v1 + 16);

  sub_10033CFC0(a1, v3);
}

uint64_t sub_100345B80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10033E838();
}

uint64_t sub_100345C34()
{
  v1 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100345D0C(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100975E78, &qword_1007F90E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_10033EAB0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100345E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

uint64_t sub_100345E5C(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

uint64_t sub_100345EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_1009799F0, &qword_1007FCB50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100345F74(uint64_t a1)
{
  sub_10028088C(&qword_100979A20, &qword_1007FCC00);

  return sub_1003405D8(a1);
}

uint64_t sub_100345FF0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_10028088C(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100346140(uint64_t a1)
{
  v4 = *(sub_10028088C(&qword_100979A20, &qword_1007FCC00) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C00;

  return sub_10033FCA8(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100346268(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_10033ABE8(a1, v4, v5, v7, v6);
}

uint64_t sub_100346328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_10033B028();
}

unint64_t SDAirDropHashError.description.getter(unsigned __int8 a1)
{
  v1 = 0x65442065726F7453;
  v2 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v2 = 0x6D694C2065746152;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000018;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000010;
  }

  if (!a1)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int SDAirDropHashError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1003465A0()
{
  result = qword_100979A38;
  if (!qword_100979A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979A38);
  }

  return result;
}

uint64_t sub_10034660C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDrop.TransferType();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_100346760, v5, 0);
}

void sub_100346760(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[5];
    v7 = v1[3];
    v8 = SFAirDropReceive.AskRequest.urlItems.getter();
    v9 = 0;
    v10 = v8 + 56;
    v11 = -1;
    v12 = -1 << *(v8 + 32);
    if (-v12 < 64)
    {
      v11 = ~(-1 << -v12);
    }

    v13 = v11 & *(v8 + 56);
    v14 = (63 - v12) >> 6;
    v23 = v8;
    while (v13)
    {
      v15 = v9;
LABEL_11:
      v16 = v1[6];
      v17 = v1[4];
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v6 + 16))(v16, *(v23 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
      v19 = sub_1003D9F30(&off_1008D6F28);
      (*(v6 + 8))(v16, v17);
      v20 = *(v7 + 16);
      *(v7 + 16) = v19;

      if (!*(v7 + 16))
      {

        swift_arrayDestroy();
        goto LABEL_13;
      }
    }

    while (1)
    {
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v15 >= v14)
      {
        swift_arrayDestroy();

        v21 = 1;
        goto LABEL_15;
      }

      v13 = *(v10 + 8 * v15);
      ++v9;
      if (v13)
      {
        v9 = v15;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v21 = 0;
LABEL_15:

    v22 = v1[1];

    v22(v21);
  }
}

uint64_t sub_100346988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100346DF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerAppStoreLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100346E2C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_10034660C(a1);
}

void sub_100346EEC(uint64_t a1, char a2)
{
  v3 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    sub_1003D8D18(&off_1008D6B80, a2 & 1);
    sub_1003470A0(&unk_1008D6BA0);
    v7 = String._bridgeToObjectiveC()();
    v8 = SFLocalizedStringForKey();

    if (v8)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007F5670;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100026764();
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      static String.localizedStringWithFormat(_:_:)();

LABEL_6:

      return;
    }

    __break(1u);
  }

  else
  {
    sub_1003D8D18(&off_1008D6BB8, a2 & 1);
    sub_1003470A0(&unk_1008D6BD8);
    v10 = String._bridgeToObjectiveC()();
    v11 = SFLocalizedStringForKey();

    if (v11)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      static String.localizedStringWithFormat(_:_:)();
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_1003470A0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100981D40, &unk_1007FA6C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100347108()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100979B18);
  v1 = sub_10000C4AC(v0, qword_100979B18);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100347204(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 28);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100347284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v7 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v7 + 64) = &off_10097BD58;
  *(v7 + 96) = &type metadata for SDAuthentication.Operation.IncludeLongTermKeyAndAKSTokenInMessage;
  *(v7 + 104) = &off_10097BFE8;
  *(v7 + 136) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v7 + 144) = &off_10097BE18;
  *a3 = v7;
  v8 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
  *(a3 + *(v8 + 28)) = 0;
  v36 = v8;
  *(a3 + *(v8 + 32)) = 4;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979B18);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v33 = a3;
    v34 = v3;
    v35 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v37);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Process PairingRequest SessionID: %s", v13, 0xCu);
    sub_10000C60C(v14);

    a2 = v35;
    a3 = v33;
  }

  else
  {
  }

  v21 = [v10 longTermKey];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (a3 + *(v36 + 24));
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa(0);
    sub_10034A1C0(a2 + *(v27 + 20), a3 + *(v36 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
  }

  else
  {
    v29 = sub_100010F88(10, 0xD000000000000015, 0x800000010078CD90);
    v31 = v30;
    sub_1000115C8();
    swift_allocError();
    *v32 = v29;
    *(v32 + 8) = v31;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
  }
}

id sub_100347660()
{
  v1 = *(_s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationPairingCreateSecret) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003476D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.SignAndStoreRemoteLTK;
  *(v6 + 64) = &off_10097BFD0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 144) = &off_10097BFB8;
  *a3 = v6;
  v7 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
  v44 = a3 + v7[6];
  *v44 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 6;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100979B18);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v9;
    *v14 = v9;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v10, v11, "Handling authentication pairing response: %@", v13, 0xCu);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    a2 = v12;
  }

  v16 = [v9 token];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = [v9 longTermKey];
    if (v21)
    {
      v22 = v21;
      v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = a2;
      v26 = v25;

      v27 = (a3 + v7[8]);
      *v27 = v18;
      v27[1] = v20;
      v28 = (a3 + v7[7]);
      *v28 = v23;
      v28[1] = v26;
      v29 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa(0);
      v30 = (v24 + *(v29 + 24));
      v31 = *v30;
      v32 = v30[1];
      v33 = *v44;
      v34 = *(v44 + 1);
      sub_1002A9924(*v30, v32);
      sub_10028BCC0(v33, v34);
      *v44 = v31;
      *(v44 + 1) = v32;
      sub_10034A1C0(v24 + *(v29 + 20), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
      return sub_10034A228(v24, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
    }

    v40 = sub_100010F88(10, 0xD000000000000013, 0x800000010078CDB0);
    v42 = v41;
    sub_1000115C8();
    swift_allocError();
    *v43 = v40;
    *(v43 + 8) = v42;
    swift_willThrow();
    sub_100026AC0(v18, v20);
  }

  else
  {
    v36 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v38 = v37;
    sub_1000115C8();
    swift_allocError();
    *v39 = v36;
    *(v39 + 8) = v38;
    swift_willThrow();
  }

  sub_10034A228(a2, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);

  return sub_10028BCC0(*v44, *(v44 + 1));
}

uint64_t sub_100347B44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateSecret;
  *(v6 + 64) = &off_10097BFA0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.BuildMessageHeader;
  *(v6 + 104) = &off_10097BE18;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 144) = &off_10097BF88;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.EnableDynamicStore;
  *(v6 + 184) = &off_10097BFB8;
  *a3 = v6;
  SecretContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0);
  *(a3 + *(SecretContextVMa + 28)) = 0;
  v35 = SecretContextVMa;
  *(a3 + *(SecretContextVMa + 32)) = 5;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000C4AC(v8, qword_100979B18);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v33 = a3;
    v34 = a2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36 = v32;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v14 = [v9 sessionID];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100789F30;
      v16 = 0xD000000000000015;
    }

    v19 = sub_10000C4E4(v16, v18, &v36);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "Received authentication pairing create secret: %@ for sessionID %s", v12, 0x16u);
    sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v32);

    a2 = v34;
    a3 = v33;
  }

  else
  {
  }

  v20 = [v9 token];
  if (v20)
  {
    v21 = v20;
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = (a3 + *(v35 + 24));
    *v25 = v22;
    v25[1] = v24;
    v26 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
    sub_10034A1C0(a2 + *(v26 + 20), a3 + *(v35 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  }

  else
  {
    v28 = sub_100010F88(10, 0x20676E697373694DLL, 0xED00006E656B6F74);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  }
}

uint64_t sub_100347F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_100347204(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

id sub_10034805C()
{
  v1 = *(_s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0) + 32);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationConfirmation) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003480CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.StepPairingCreateRecordWithPasscode;
  *(v6 + 64) = &off_10097BF70;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordPairing;
  *(v6 + 104) = &off_10097BF88;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *a3 = v6;
  RecordContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0);
  v8 = a3 + RecordContextVMa[6];
  *v8 = xmmword_1007F8A80;
  *(a3 + RecordContextVMa[8]) = 0;
  v43 = a3;
  *(a3 + RecordContextVMa[9]) = 2;
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100979B18);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v41 = v8;
    v42 = a2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v44 = v40;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    v39 = v14;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v15 = [v10 sessionID];
    if (v15)
    {
      v16 = v15;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
    }

    else
    {
      v17 = 0xD000000000000015;
      v19 = 0x8000000100789F30;
    }

    v20 = sub_10000C4E4(v17, v19, &v44);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received authentication pairing create record: %@ for sessionID %s", v13, 0x16u);
    sub_100005508(v39, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v40);

    v8 = v41;
    a2 = v42;
  }

  else
  {
  }

  v21 = [v10 token];
  if (v21)
  {
    v22 = v21;
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = (v43 + RecordContextVMa[7]);
    *v26 = v23;
    v26[1] = v25;
    v27 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
    v28 = (a2 + *(v27 + 24));
    v29 = *v28;
    v30 = v28[1];
    v31 = v8;
    v32 = *v8;
    v33 = v31[1];
    sub_1002A9924(*v28, v30);
    sub_10028BCC0(v32, v33);
    *v31 = v29;
    v31[1] = v30;
    sub_10034A1C0(a2 + *(v27 + 20), v43 + RecordContextVMa[5], type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_10034A228(a2, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
  }

  else
  {
    v35 = sub_100010F88(10, 0xD000000000000053, 0x800000010078CDD0);
    v37 = v36;
    sub_1000115C8();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }
}

uint64_t sub_100348518(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 24));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_100348588(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

uint64_t sub_10034865C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_100973650 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    v7 = *(_s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0) + 20);
    v8 = _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa(0);
    sub_10034A1C0(a2 + v7, a3 + *(v8 + 20), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_10034A228(a2, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
    *(a3 + *(v8 + 24)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_10034A228(a2, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
  }

  return result;
}

uint64_t sub_100348830@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SDAuthenticationCommonOperationInput(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v7);
  v12 = &v32[-v11];
  __chkstk_darwin(v10);
  v14 = &v32[-v13];
  v15 = _s22VisionUnlockiOSPairingV4FlowVMa(0);
  *(a3 + v15[6]) = _swiftEmptyArrayStorage;
  *(a3 + v15[7]) = _swiftEmptyArrayStorage;
  sub_1002A9938(a1, a3 + v15[5]);
  sub_10034A1C0(a2, a3, type metadata accessor for SDAuthenticationCommonOperationInput);
  if (qword_100973648 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100979B18);
  sub_10034A1C0(a2, v14, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_10034A1C0(a2, v12, type metadata accessor for SDAuthenticationCommonOperationInput);
  sub_10034A1C0(a2, v9, type metadata accessor for SDAuthenticationCommonOperationInput);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v19 = 136315650;
    type metadata accessor for UUID();
    v33 = v18;
    sub_100349CFC();
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = a1;
    v22 = v21;
    sub_10034A228(v14, type metadata accessor for SDAuthenticationCommonOperationInput);
    v23 = sub_10000C4E4(v20, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = sub_100027340();
    v26 = v25;
    sub_10034A228(v12, type metadata accessor for SDAuthenticationCommonOperationInput);
    v27 = sub_10000C4E4(v24, v26, &v36);

    *(v19 + 14) = v27;
    *(v19 + 22) = 2080;
    if (v9[*(v6 + 32)])
    {
      v28 = 7955787;
    }

    else
    {
      v28 = 1801678668;
    }

    if (v9[*(v6 + 32)])
    {
      v29 = 0xE300000000000000;
    }

    else
    {
      v29 = 0xE400000000000000;
    }

    sub_10034A228(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
    v30 = sub_10000C4E4(v28, v29, &v36);

    *(v19 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v17, v33, "Begin SDAuthenticationPairingFlow %s with %s role %s", v19, 0x20u);
    swift_arrayDestroy();

    sub_10034A228(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10000C60C(v35);
  }

  else
  {

    sub_10034A228(a2, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10000C60C(a1);
    sub_10034A228(v9, type metadata accessor for SDAuthenticationCommonOperationInput);
    sub_10034A228(v12, type metadata accessor for SDAuthenticationCommonOperationInput);
    return sub_10034A228(v14, type metadata accessor for SDAuthenticationCommonOperationInput);
  }
}

void sub_100348C20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v136 = a2;
  v131 = a3;
  v109 = _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v109);
  v113 = (&v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100979D50, &qword_1007FCF28);
  __chkstk_darwin(v5 - 8);
  v118 = &v109 - v6;
  RecordContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa(0);
  __chkstk_darwin(RecordContextVMa);
  v117 = (&v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_100979D58, &qword_1007FCF30);
  __chkstk_darwin(v8 - 8);
  v124 = &v109 - v9;
  SecretContextVMa = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa(0);
  v116 = *(SecretContextVMa - 8);
  v10 = __chkstk_darwin(SecretContextVMa);
  v111 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v112 = &v109 - v13;
  __chkstk_darwin(v12);
  v123 = (&v109 - v14);
  v15 = sub_10028088C(&qword_100979D60, &qword_1007FCF38);
  __chkstk_darwin(v15 - 8);
  v130 = &v109 - v16;
  v125 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa(0);
  v122 = *(v125 - 8);
  v17 = __chkstk_darwin(v125);
  v114 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v115 = &v109 - v20;
  __chkstk_darwin(v19);
  v129 = (&v109 - v21);
  v22 = sub_10028088C(&qword_100979D68, &qword_1007FCF40);
  __chkstk_darwin(v22 - 8);
  v24 = &v109 - v23;
  v25 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa(0);
  v133 = *(v25 - 8);
  v134 = v25;
  v26 = __chkstk_darwin(v25);
  v127 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v128 = &v109 - v28;
  v132 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa(0);
  v126 = *(v132 - 8);
  v29 = __chkstk_darwin(v132);
  v120 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v121 = &v109 - v32;
  __chkstk_darwin(v31);
  v34 = (&v109 - v33);
  v35 = sub_10028088C(&qword_100979D70, &qword_1007FCF48);
  __chkstk_darwin(v35 - 8);
  v37 = &v109 - v36;
  v38 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa(0);
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v42 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v109 - v43;
  sub_1002A9938(a1, v137);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_100979C38, off_1008C8D28);
  if (swift_dynamicCast())
  {
    v45 = v138;
    sub_1002A9938(v136, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v46 = swift_dynamicCast();
    v47 = *(v39 + 56);
    if (!v46)
    {
      v47(v37, 1, 1, v38);
      sub_100005508(v37, &qword_100979D70, &qword_1007FCF48);
      v61 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v63 = v62;
      sub_1000115C8();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      swift_willThrow();

      return;
    }

    v47(v37, 0, 1, v38);
    sub_10034A288(v37, v44, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
    sub_10034A1C0(v44, v42, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);
    v48 = v45;
    v49 = v135;
    sub_100347284(v48, v42, v34);
    if (v49)
    {
      sub_10034A228(v44, _s22VisionUnlockiOSPairingV17InitialKeyContextVMa);

      return;
    }

    v81 = v131;
    v131[3] = v132;
    v81[4] = &off_1008DCDF8;
    v82 = sub_10002F604(v81);
    sub_10034A288(v34, v82, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);

    v83 = _s22VisionUnlockiOSPairingV17InitialKeyContextVMa;
    v84 = v44;
    goto LABEL_35;
  }

  v50 = v136;
  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_100979D78, off_1008C8D30);
  if (swift_dynamicCast())
  {
    v51 = v138;
    sub_1002A9938(v50, v137);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v52 = v134;
    v53 = swift_dynamicCast();
    v54 = *(v133 + 56);
    if (v53)
    {
      v54(v24, 0, 1, v52);
      v55 = v128;
      sub_10034A288(v24, v128, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
      v56 = v127;
      sub_10034A1C0(v55, v127, _s22VisionUnlockiOSPairingV18InitialLockContextVMa);
      v57 = v51;
      v58 = v129;
      v59 = v135;
      sub_1003476D0(v57, v56, v129);
      if (v59)
      {
        v60 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa;
LABEL_25:
        sub_10034A228(v55, v60);

        return;
      }

      v92 = v131;
      v131[3] = v125;
      v92[4] = &off_1008DCE10;
      v93 = sub_10002F604(v92);
      sub_10034A288(v58, v93, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);

      v94 = _s22VisionUnlockiOSPairingV18InitialLockContextVMa;
      goto LABEL_34;
    }

    v54(v24, 1, 1, v52);
    sub_100005508(v24, &qword_100979D68, &qword_1007FCF40);
    v72 = "sult, message may be replayed";
    v73 = 0xD000000000000047;
LABEL_31:
    v101 = sub_100010F88(10, v73, v72 | 0x8000000000000000);
    v103 = v102;
    sub_1000115C8();
    swift_allocError();
    *v104 = v101;
    *(v104 + 8) = v103;
    swift_willThrow();

    return;
  }

  sub_1002A9938(a1, v137);
  sub_1000276B4(0, &qword_100979D80, off_1008C8D18);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v137);
    sub_1000276B4(0, &qword_100979D88, off_1008C8D10);
    if (swift_dynamicCast())
    {
      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v75 = v124;
      v74 = v125;
      v76 = swift_dynamicCast();
      v77 = *(v122 + 56);
      if (v76)
      {
        v77(v75, 0, 1, v74);
        v55 = v115;
        sub_10034A288(v75, v115, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
        v78 = v114;
        sub_10034A1C0(v55, v114, _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa);
        v57 = v51;
        v79 = v117;
        v80 = v135;
        sub_1003480CC(v57, v78, v117);
        if (v80)
        {
          v60 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa;
          goto LABEL_25;
        }

        v105 = v131;
        v131[3] = RecordContextVMa;
        v105[4] = &off_1008DCE40;
        v106 = sub_10002F604(v105);
        sub_10034A288(v79, v106, _s22VisionUnlockiOSPairingV32HandlePairingCreateRecordContextVMa);

        v94 = _s22VisionUnlockiOSPairingV28HandlePairingResponseContextVMa;
        goto LABEL_34;
      }

      v77(v75, 1, 1, v74);
      sub_100005508(v75, &qword_100979D58, &qword_1007FCF30);
      v72 = "ssage may be replayed";
      v73 = 0xD000000000000051;
    }

    else
    {
      sub_1002A9938(a1, v137);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v95 = sub_100010F88(10, 0xD00000000000003ALL, 0x800000010078CC30);
        v97 = v96;
        sub_1000115C8();
        swift_allocError();
        *v98 = v95;
        *(v98 + 8) = v97;
        swift_willThrow();
        return;
      }

      v51 = v138;
      sub_1002A9938(v50, v137);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v85 = v118;
      v86 = SecretContextVMa;
      v87 = swift_dynamicCast();
      v88 = *(v116 + 56);
      if (v87)
      {
        v88(v85, 0, 1, v86);
        v55 = v112;
        sub_10034A288(v85, v112, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
        v89 = v111;
        sub_10034A1C0(v55, v111, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);
        v57 = v51;
        v90 = v113;
        v91 = v135;
        sub_10034865C(v57, v89, v113);
        if (v91)
        {
          v60 = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa;
          goto LABEL_25;
        }

        v107 = v131;
        v131[3] = v109;
        v107[4] = &off_1008DCE58;
        v108 = sub_10002F604(v107);
        sub_10034A288(v90, v108, _s22VisionUnlockiOSPairingV25HandleConfirmationContextVMa);

        v94 = _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa;
        goto LABEL_34;
      }

      v88(v85, 1, 1, v86);
      sub_100005508(v85, &qword_100979D50, &qword_1007FCF28);
      v72 = "for VisionUnlockiOSPairing";
      v73 = 0xD000000000000055;
    }

    goto LABEL_31;
  }

  v51 = v138;
  sub_1002A9938(v50, v137);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v65 = v130;
  v66 = v132;
  v67 = swift_dynamicCast();
  v68 = *(v126 + 56);
  if (!v67)
  {
    v68(v65, 1, 1, v66);
    sub_100005508(v65, &qword_100979D60, &qword_1007FCF38);
    v72 = "e may be replayed";
    v73 = 0xD000000000000050;
    goto LABEL_31;
  }

  v68(v65, 0, 1, v66);
  v55 = v121;
  sub_10034A288(v65, v121, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  v69 = v120;
  sub_10034A1C0(v55, v120, _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa);
  v57 = v51;
  v70 = v123;
  v71 = v135;
  sub_100347B44(v57, v69, v123);
  if (v71)
  {
    v60 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa;
    goto LABEL_25;
  }

  v99 = v131;
  v131[3] = SecretContextVMa;
  v99[4] = &off_1008DCE28;
  v100 = sub_10002F604(v99);
  sub_10034A288(v70, v100, _s22VisionUnlockiOSPairingV32HandlePairingCreateSecretContextVMa);

  v94 = _s22VisionUnlockiOSPairingV27HandlePairingRequestContextVMa;
LABEL_34:
  v83 = v94;
  v84 = v55;
LABEL_35:
  sub_10034A228(v84, v83);
}

unint64_t sub_100349CFC()
{
  result = qword_100978CE0;
  if (!qword_100978CE0)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100978CE0);
  }

  return result;
}

void sub_100349D7C(uint64_t a1)
{
  type metadata accessor for SDAuthenticationCommonOperationInput(319);
  if (v1 <= 0x3F)
  {
    sub_100349E3C();
    if (v2 <= 0x3F)
    {
      sub_1002F9C34(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100349E3C()
{
  result = qword_1009756D0;
  if (!qword_1009756D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009756D0);
  }

  return result;
}

void sub_100349EE8(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &qword_100979C30, &unk_100979C38, off_1008C8D28);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A028(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6C94(319, &qword_100979CE0, &unk_100979CE8, off_1008C8D38);
      if (v3 <= 0x3F)
      {
        sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10034A1C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10034A228(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10034A288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10034A35C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100979EA0, &qword_100979D80, off_1008C8D18);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A488(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975B40, &qword_1009758D0, off_1008C8D08);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10034A5D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_1002A6B2C(319);
  if (v9 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v10 <= 0x3F)
    {
      sub_1002A6C94(319, a4, a5, a6);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10034A6B8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10034A778(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10034A81C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10034A8C8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A140);
  v1 = sub_10000C4AC(v0, qword_10097A140);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

BOOL sub_10034A990(void *a1)
{
  v2 = sub_10028088C(&qword_10097A220, &unk_1007FD280);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v72 - v6;
  v8 = [a1 emailAddresses];
  sub_10028088C(&qword_10097A210, &qword_1007FDB90);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = [a1 phoneNumbers];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFADD__(v10, v13))
  {
    __break(1u);
LABEL_33:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_9;
  }

  if (v10 + v13 != 1)
  {
    return 0;
  }

  v14 = [a1 postalAddresses];
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_33;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:

  if (v16)
  {
    return 0;
  }

  v17 = [a1 urlAddresses];
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v18 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v19)
  {
    return 0;
  }

  v20 = [a1 contactRelations];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = v21 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v22)
  {
    return 0;
  }

  v23 = [a1 socialProfiles];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v24 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v25)
  {
    return 0;
  }

  v26 = [a1 instantMessageAddresses];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = v27 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v28)
  {
    return 0;
  }

  v29 = [a1 dates];
  v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v31)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v71 = _CocoaArrayWrapper.endIndex.getter();

  if (v71)
  {
    return 0;
  }

LABEL_24:
  v32 = [a1 birthday];
  if (v32)
  {
    v33 = v32;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = type metadata accessor for DateComponents();
    (*(*(v34 - 8) + 56))(v7, 0, 1, v34);
    v35 = v7;
LABEL_28:
    sub_100005508(v35, &qword_10097A220, &unk_1007FD280);
    return 0;
  }

  v36 = type metadata accessor for DateComponents();
  v37 = *(*(v36 - 8) + 56);
  v37(v7, 1, 1, v36);
  sub_100005508(v7, &qword_10097A220, &unk_1007FD280);
  v38 = [a1 nonGregorianBirthday];
  if (v38)
  {
    v39 = v38;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    v37(v5, 0, 1, v36);
    v35 = v5;
    goto LABEL_28;
  }

  v37(v5, 1, 1, v36);
  sub_100005508(v5, &qword_10097A220, &unk_1007FD280);
  v41 = [a1 note];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = v42 & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {
    return 0;
  }

  v46 = [a1 middleName];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v50 = HIBYTE(v49) & 0xF;
  if ((v49 & 0x2000000000000000) == 0)
  {
    v50 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (v50)
  {
    return 0;
  }

  v51 = [a1 nickname];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = HIBYTE(v54) & 0xF;
  if ((v54 & 0x2000000000000000) == 0)
  {
    v55 = v52 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    return 0;
  }

  v56 = [a1 organizationName];
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (v60)
  {
    return 0;
  }

  v61 = [a1 departmentName];
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;

  v65 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v65 = v62 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
    return 0;
  }

  v66 = [a1 jobTitle];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v67 & 0xFFFFFFFFFFFFLL;
  }

  return v70 == 0;
}

uint64_t sub_10034B0A4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10002CDC0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10034B1A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerExchange();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_10034B1D4(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for SFAirDrop.TransferType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_10034B2CC, v3, 0);
}

uint64_t sub_10034B2CC(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isOnlyExchange.getter();
  (*(v3 + 8))(v2, v4);

  v6 = v1[1];

  return v6(v5 & 1);
}

void sub_10034B36C(uint64_t a1, uint64_t a2)
{
  sub_1003D8D18(&off_1008D6AA0, a2);
  sub_100005508(&unk_1008D6AC0, &qword_100981D40, &unk_1007FA6C0);
  v2 = String._bridgeToObjectiveC()();
  v3 = SFLocalizedStringForKey();

  if (v3)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034B410(uint64_t a1, char a2)
{
  *(v2 + 449) = a2;
  *(v2 + 240) = a1;
  v3 = sub_10028088C(&qword_100976900, &unk_1007FD250);
  *(v2 + 248) = v3;
  *(v2 + 256) = *(v3 - 8);
  *(v2 + 264) = swift_task_alloc();
  sub_10028088C(&unk_100974E00, &qword_1007F8940);
  *(v2 + 272) = swift_task_alloc();
  v4 = type metadata accessor for URL();
  *(v2 + 280) = v4;
  *(v2 + 288) = *(v4 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v5 = type metadata accessor for URLQueryItem();
  *(v2 + 312) = v5;
  *(v2 + 320) = *(v5 - 8);
  *(v2 + 328) = swift_task_alloc();
  v6 = type metadata accessor for URLComponents();
  *(v2 + 336) = v6;
  *(v2 + 344) = *(v6 - 8);
  *(v2 + 352) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v2 + 360) = static AirDropActor.shared;

  return _swift_task_switch(sub_10034B674, v7, 0);
}

uint64_t sub_10034B674()
{
  v99 = v0;
  SFAirDrop.ContactInfo.vcard.getter();
  v1 = vCardContactProvider.init(data:)();
  v3 = v2;
  v4 = vCardContactProvider.contacts()();
  sub_100026AC0(v1, v3);
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_62:

    if (qword_100973658 == -1)
    {
LABEL_63:
      v82 = type metadata accessor for Logger();
      sub_10000C4AC(v82, qword_10097A140);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Failed to import contact which could not be deserialized", v85, 2u);
      }

      v86 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v86 - 8) + 104))(v87, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v86);
      swift_willThrow();
      goto LABEL_66;
    }

LABEL_71:
    swift_once();
    goto LABEL_63;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_62;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_71;
  }

  v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:
  v6 = v5;
  v0[46] = v5;

  if (sub_10034A990(v6))
  {
    v95 = [objc_allocWithZone(SFContactInfo) init];
    v0[47] = v95;
    v7 = [v6 emailAddresses];
    sub_10028088C(&qword_10097A210, &qword_1007FDB90);
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v8 >> 62)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9)
    {
      v98 = _swiftEmptyArrayStorage;
      sub_10028FBDC(0, v9 & ~(v9 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v10 = 0;
      v11 = v98;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = [v12 value];
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        v98 = v11;
        v19 = v11[2];
        v18 = v11[3];
        v1 = (v19 + 1);
        if (v19 >= v18 >> 1)
        {
          sub_10028FBDC((v18 > 1), v19 + 1, 1);
          v11 = v98;
        }

        ++v10;
        v11[2] = v1;
        v20 = &v11[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
      }

      while (v9 != v10);

      if (v11[2])
      {
        goto LABEL_26;
      }
    }

    else
    {

      v11 = _swiftEmptyArrayStorage;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_26:
        v1 = v11[4];

        v28 = String._bridgeToObjectiveC()();

LABEL_29:
        [v95 setEmailAddress:v28];

        v29 = [v6 phoneNumbers];
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v6 >> 62)
        {
          v30 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v30 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v30)
        {

          if (_swiftEmptyArrayStorage[2])
          {
LABEL_41:

            v43 = String._bridgeToObjectiveC()();

LABEL_46:
            [v95 setPhoneNumber:v43];

            v47 = [objc_allocWithZone(SFClient) init];
            v0[48] = v47;
            v0[2] = v0;
            v0[7] = v0 + 28;
            v0[3] = sub_10034C45C;
            v48 = swift_continuation_init();
            v0[17] = sub_10028088C(&qword_10097A218, &unk_1007FD270);
            v0[10] = _NSConcreteStackBlock;
            v0[11] = 1107296256;
            v0[12] = sub_10034B0A4;
            v0[13] = &unk_1008DCF00;
            v0[14] = v48;
            [v47 findContact:v95 completion:v0 + 10];

            return _swift_continuation_await(v0 + 2);
          }

LABEL_45:

          v43 = 0;
          goto LABEL_46;
        }

        v98 = _swiftEmptyArrayStorage;
        sub_10028FBDC(0, v30 & ~(v30 >> 63), 0);
        if ((v30 & 0x8000000000000000) == 0)
        {
          v31 = 0;
          v32 = v98;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v33 = *(v6 + 8 * v31 + 32);
            }

            v34 = v33;
            v35 = [v33 value];
            v36 = [v35 stringValue];

            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v98 = v32;
            v41 = v32[2];
            v40 = v32[3];
            if (v41 >= v40 >> 1)
            {
              sub_10028FBDC((v40 > 1), v41 + 1, 1);
              v32 = v98;
            }

            ++v31;
            v32[2] = v41 + 1;
            v42 = &v32[2 * v41];
            v42[4] = v37;
            v42[5] = v39;
          }

          while (v30 != v31);

          if (v32[2])
          {
            goto LABEL_41;
          }

          goto LABEL_45;
        }

        goto LABEL_75;
      }
    }

    v28 = 0;
    goto LABEL_29;
  }

  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_10097A140);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating a new contact because many fields are being shared", v23, 2u);
  }

  [v0[46] mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10034E374();
  swift_dynamicCast();
  v24 = v0[26];
  CNMutableContact.saveToContactStore()();
  if (v25)
  {
    v26 = v0;
    v27 = v0[46];

    v0 = v26;
LABEL_66:

    v88 = v0[1];

    return v88();
  }

  v44 = [v24 identifier];
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v46;

  v0[50] = v45;
  v0[51] = v6;
  if (*(v0 + 449))
  {

LABEL_58:

    v79 = v0[1];
    v80 = v0[50];
    v81 = v0[51];

    return v79(v80, v81);
  }

  v1 = v0;
  v51 = v0 + 40;
  v49 = v0[40];
  v50 = v51[1];
  v92 = v1[39];
  v52 = v1[36];
  v96 = v1[35];
  v53 = v1[34];
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  v90 = v45;
  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v54 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1007F5670;
  (*(v49 + 16))(v55 + v54, v50, v92);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v52 + 48))(v53, 1, v96) == 1)
  {
    sub_100005508(v1[34], &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 == -1)
    {
LABEL_51:
      sub_10000C4AC(v9, qword_10097A140);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v1[46];
      v61 = v1[43];
      v60 = v1[44];
      v62 = v1;
      v64 = v1[41];
      v63 = v1[42];
      v65 = v1[40];
      v94 = v62;
      v66 = v62[39];
      if (v58)
      {
        v97 = v64;
        v67 = swift_slowAlloc();
        v93 = v60;
        v68 = swift_slowAlloc();
        v98 = v68;
        *v67 = 136315138;

        v91 = v63;
        v69 = sub_10000C4E4(v90, v6, &v98);

        *(v67 + 4) = v69;
        _os_log_impl(&_mh_execute_header, v56, v57, "Failed to create URL to launch Contacts for contact ID %s", v67, 0xCu);
        sub_10000C60C(v68);

        (*(v65 + 8))(v97, v66);
        (*(v61 + 8))(v93, v91);
      }

      else
      {

        (*(v65 + 8))(v64, v66);
        (*(v61 + 8))(v60, v63);
      }

      v0 = v94;
      goto LABEL_58;
    }

LABEL_76:
    swift_once();
    goto LABEL_51;
  }

  v70 = v1[38];
  v71 = v1[35];
  v72 = v1[36];
  (*(v72 + 32))(v70, v1[34], v71);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1007F5670;
  v75 = *(v72 + 16);
  v1[52] = v75;
  v1[53] = (v72 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v75(v74 + v73, v70, v71);
  v1[27] = 0;
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v77 = swift_task_alloc();
  v1[54] = v77;
  *v77 = v1;
  v77[1] = sub_10034D2A8;
  v78 = v1[31];

  return SFProgressTask.finalValue.getter(v1 + 56, v78);
}

uint64_t sub_10034C45C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 392) = v2;
  v3 = *(v1 + 360);
  if (v2)
  {
    v4 = sub_10034D7C8;
  }

  else
  {
    v4 = sub_10034C57C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10034C57C()
{
  v71 = v0;
  v1 = *(v0 + 224);
  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_10000C4AC(v68, qword_10097A140);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v70[0] = v6;
    *v5 = 136315138;
    v7 = [v2 contactIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v11 = 0x8000000100789F30;
      v9 = 0xD000000000000015;
    }

    v12 = sub_10000C4E4(v9, v11, v70);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Showing existing contact {fetchedContactInfo.contactIdentifier: %s}", v5, 0xCu);
    sub_10000C60C(v6);
  }

  v13 = [v2 contactIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = *(v0 + 376);
  *(v0 + 192) = v15;
  *(v0 + 200) = v17;
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(63);
  v19._countAndFlagsBits = 0xD00000000000003CLL;
  v19._object = 0x800000010078CEA0;
  String.append(_:)(v19);
  v20 = [v18 description];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24._countAndFlagsBits = v21;
  v24._object = v23;
  String.append(_:)(v24);

  v25._countAndFlagsBits = 125;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  sub_10028088C(&qword_100975100, &qword_1007FBA10);
  Optional.tryUnwrap(_:file:line:)();
  v26 = *(v0 + 384);
  v27 = *(v0 + 376);

  v29 = *(v0 + 176);
  v28 = *(v0 + 184);
  *(v0 + 400) = v29;
  *(v0 + 408) = v28;
  if (*(v0 + 449))
  {

LABEL_13:

    v30 = *(v0 + 8);
    v31 = *(v0 + 400);
    v32 = *(v0 + 408);

    return v30(v31, v32);
  }

  v34 = *(v0 + 320);
  v35 = *(v0 + 328);
  v36 = *(v0 + 312);
  v37 = *(v0 + 288);
  v66 = *(v0 + 280);
  v38 = *(v0 + 272);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  v63 = v29;
  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v39 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007F5670;
  (*(v34 + 16))(v40 + v39, v35, v36);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v37 + 48))(v38, 1, v66) == 1)
  {
    sub_100005508(*(v0 + 272), &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    sub_10000C4AC(v68, qword_10097A140);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    v43 = os_log_type_enabled(v41, v42);
    v69 = *(v0 + 368);
    v44 = *(v0 + 344);
    v45 = *(v0 + 352);
    v47 = *(v0 + 328);
    v46 = *(v0 + 336);
    v49 = *(v0 + 312);
    v48 = *(v0 + 320);
    if (v43)
    {
      v67 = *(v0 + 328);
      v50 = swift_slowAlloc();
      v65 = v45;
      v51 = swift_slowAlloc();
      v70[0] = v51;
      *v50 = 136315138;

      v52 = sub_10000C4E4(v63, v28, v70);
      v64 = v46;
      v53 = v52;

      *(v50 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to create URL to launch Contacts for contact ID %s", v50, 0xCu);
      sub_10000C60C(v51);

      (*(v48 + 8))(v67, v49);
      (*(v44 + 8))(v65, v64);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      (*(v44 + 8))(v45, v46);
    }

    goto LABEL_13;
  }

  v54 = *(v0 + 304);
  v55 = *(v0 + 280);
  v56 = *(v0 + 288);
  (*(v56 + 32))(v54, *(v0 + 272), v55);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v57 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1007F5670;
  v59 = *(v56 + 16);
  *(v0 + 416) = v59;
  *(v0 + 424) = (v56 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v59(v58 + v57, v54, v55);
  *(v0 + 216) = 0;
  v60 = swift_allocObject();
  *(v60 + 16) = v58;
  *(v60 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v61 = swift_task_alloc();
  *(v0 + 432) = v61;
  *v61 = v0;
  v61[1] = sub_10034D2A8;
  v62 = *(v0 + 248);

  return SFProgressTask.finalValue.getter(v0 + 448, v62);
}

uint64_t sub_10034D2A8()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_10034E228;
  }

  else
  {
    v4 = sub_10034D3D4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10034D3D4()
{
  v52 = v0;
  if (*(v0 + 448))
  {
    v1 = *(v0 + 344);
    v47 = *(v0 + 336);
    v49 = *(v0 + 352);
    v45 = *(v0 + 328);
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v9 = *(v0 + 248);

    (*(v7 + 8))(v8, v9);
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v45, v3);
    (*(v1 + 8))(v49, v47);
  }

  else
  {
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 416);
    v11 = *(v0 + 296);
    v12 = *(v0 + 304);
    v13 = *(v0 + 280);
    v14 = type metadata accessor for Logger();
    sub_10000C4AC(v14, qword_10097A140);
    v10(v11, v12, v13);
    v15 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v15, v41);
    v17 = *(v0 + 368);
    v18 = *(v0 + 344);
    v19 = *(v0 + 352);
    v20 = *(v0 + 336);
    v48 = *(v0 + 328);
    v50 = *(v0 + 320);
    v21 = *(v0 + 296);
    v44 = *(v0 + 304);
    v46 = *(v0 + 312);
    v23 = *(v0 + 280);
    v22 = *(v0 + 288);
    v24 = *(v0 + 256);
    v42 = *(v0 + 248);
    v43 = *(v0 + 264);
    if (v16)
    {
      v39 = *(v0 + 368);
      v25 = swift_slowAlloc();
      v40 = v18;
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      sub_100010738(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v37 = v20;
      v38 = v19;
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      v30 = *(v22 + 8);
      v30(v21, v23);
      v31 = sub_10000C4E4(v27, v29, &v51);

      *(v25 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v15, v41, "Failed to launch Contacts for URL %s", v25, 0xCu);
      sub_10000C60C(v26);

      (*(v24 + 8))(v43, v42);
      v30(v44, v23);
      (*(v50 + 8))(v48, v46);
      (*(v40 + 8))(v38, v37);
    }

    else
    {

      v32 = *(v22 + 8);
      v32(v21, v23);
      (*(v24 + 8))(v43, v42);
      v32(v44, v23);
      (*(v50 + 8))(v48, v46);
      (*(v18 + 8))(v19, v20);
    }
  }

  v33 = *(v0 + 8);
  v34 = *(v0 + 400);
  v35 = *(v0 + 408);

  return v33(v34, v35);
}

uint64_t sub_10034D7C8(uint64_t a1)
{
  v84 = v1;
  v2 = *(v1 + 384);
  swift_willThrow();

  v3 = *(v1 + 392);
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([v4 code] != -6727)
  {
LABEL_13:
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v23 = *(v1 + 376);
    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_10097A140);
    v25 = v23;
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v1 + 376);
    if (v28)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v83[0] = v32;
      *v30 = 136315394;
      *(v1 + 232) = v3;
      swift_errorRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      v33 = String.init<A>(describing:)();
      v80 = v4;
      v35 = sub_10000C4E4(v33, v34, v83);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2112;
      *(v30 + 14) = v29;
      *v31 = v29;
      v36 = v29;
      _os_log_impl(&_mh_execute_header, v26, v27, "Error fetching contact. Creating a new one {error: %s, predicateContactInfo: %@}", v30, 0x16u);
      sub_100005508(v31, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v32);
    }

    else
    {
    }

    goto LABEL_19;
  }

  if (qword_100973658 != -1)
  {
    swift_once();
  }

  v12 = *(v1 + 376);
  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_10097A140);
  v14 = v12;
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v1 + 376);
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412546;
    *(v19 + 4) = v18;
    *v20 = v18;
    *(v19 + 12) = 2112;
    v21 = v18;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    v20[1] = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Contact not found. Creating a new one {predicateContactInfo: %@, error: %@}", v19, 0x16u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_19:
  [*(v1 + 368) mutableCopy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10034E374();
  swift_dynamicCast();
  v37 = *(v1 + 208);
  CNMutableContact.saveToContactStore()();
  if (v38)
  {
    v39 = *(v1 + 368);

    v40 = *(v1 + 8);

    return v40();
  }

  v42 = [v37 identifier];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  *(v1 + 400) = v43;
  *(v1 + 408) = v45;
  if (*(v1 + 449))
  {

LABEL_25:

    v46 = *(v1 + 8);
    v47 = *(v1 + 400);
    v48 = *(v1 + 408);

    return v46(v47, v48);
  }

  v49 = *(v1 + 320);
  v50 = *(v1 + 328);
  v51 = *(v1 + 288);
  v78 = *(v1 + 312);
  v81 = *(v1 + 280);
  v52 = *(v1 + 272);
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();

  URLQueryItem.init(name:value:)();

  sub_10028088C(&unk_100975000, &unk_1007FD260);
  v53 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1007F5670;
  (*(v49 + 16))(v54 + v53, v50, v78);
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  if ((*(v51 + 48))(v52, 1, v81) == 1)
  {
    sub_100005508(*(v1 + 272), &unk_100974E00, &qword_1007F8940);
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000C4AC(v55, qword_10097A140);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    v58 = os_log_type_enabled(v56, v57);
    v60 = *(v1 + 344);
    v59 = *(v1 + 352);
    v61 = *(v1 + 336);
    v79 = *(v1 + 368);
    v82 = *(v1 + 328);
    v63 = *(v1 + 312);
    v62 = *(v1 + 320);
    if (v58)
    {
      v77 = *(v1 + 336);
      v64 = swift_slowAlloc();
      v76 = v59;
      v65 = swift_slowAlloc();
      v83[0] = v65;
      *v64 = 136315138;

      v66 = sub_10000C4E4(v43, v45, v83);

      *(v64 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to create URL to launch Contacts for contact ID %s", v64, 0xCu);
      sub_10000C60C(v65);

      (*(v62 + 8))(v82, v63);
      (*(v60 + 8))(v76, v77);
    }

    else
    {

      (*(v62 + 8))(v82, v63);
      (*(v60 + 8))(v59, v61);
    }

    goto LABEL_25;
  }

  v67 = *(v1 + 304);
  v68 = *(v1 + 280);
  v69 = *(v1 + 288);
  (*(v69 + 32))(v67, *(v1 + 272), v68);
  sub_10028088C(&unk_100974FD0, &qword_10080E9A0);
  v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1007F5670;
  v72 = *(v69 + 16);
  *(v1 + 416) = v72;
  *(v1 + 424) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72(v71 + v70, v67, v68);
  *(v1 + 216) = 0;
  v73 = swift_allocObject();
  *(v73 + 16) = v71;
  *(v73 + 24) = 0;
  SFProgressTask.init(_:initialProgress:operation:file:line:)();
  v74 = swift_task_alloc();
  *(v1 + 432) = v74;
  *v74 = v1;
  v74[1] = sub_10034D2A8;
  v75 = *(v1 + 248);

  return SFProgressTask.finalValue.getter(v1 + 448, v75);
}

uint64_t sub_10034E228()
{
  v1 = *(v0 + 344);
  v14 = *(v0 + 352);
  v12 = *(v0 + 328);
  v13 = *(v0 + 336);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 304);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 256);
  v8 = *(v0 + 264);
  v9 = *(v0 + 248);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_10034E374()
{
  result = qword_10097A208;
  if (!qword_10097A208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097A208);
  }

  return result;
}

uint64_t sub_10034E3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v5[27] = static AirDropActor.shared;

  return _swift_task_switch(sub_10034E468, v6, 0);
}

uint64_t sub_10034E468()
{
  v1 = v0[22];
  v3 = *v1;
  v2 = v1[1];
  v0[28] = v2;
  if (!v2)
  {
    goto LABEL_8;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v0[32] = v2;
    v0[33] = v3;
    v0[34] = v1[10];
    v0[35] = v1[4];
    v0[36] = v1[5];
    v0[37] = v1[6];
    v0[38] = v1[7];
    v0[39] = v1[8];
    v0[40] = v1[9];

    return _swift_task_switch(sub_10034EBA0, 0, 0);
  }

  else
  {
LABEL_8:
    v5 = v0[24];
    if (v5 >> 60 == 15)
    {
      v6 = qword_100973658;

      if (v6 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000C4AC(v7, qword_10097A140);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Missing vCardData to resolve missing appleID", v10, 2u);
      }

      v11 = type metadata accessor for SFAirDropReceive.Failure();
      sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, enum case for SFAirDropReceive.Failure.badRequest(_:), v11);
      swift_willThrow();

      v13 = v0[1];

      return v13();
    }

    else
    {
      v14 = v0[23];

      sub_1002A9924(v14, v5);
      v15 = swift_task_alloc();
      v0[29] = v15;
      *v15 = v0;
      v15[1] = sub_10034E790;
      v17 = v0[23];
      v16 = v0[24];

      return sub_10039086C(v17, v16, 0, 0);
    }
  }
}

uint64_t sub_10034E790(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  v6[18] = v3;
  v6[19] = a1;
  v6[20] = a2;
  v6[21] = v2;
  v6[30] = v2;

  v7 = v5[27];
  if (v2)
  {
    v8 = sub_10034E8D4;
  }

  else
  {
    v6[31] = a2;
    v8 = sub_10034E944;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10034E8D4()
{
  sub_10028BCC0(v0[23], v0[24]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10034E944()
{
  v1 = v0[31];
  sub_10028BCC0(v0[23], v0[24]);

  if (v1)
  {
    v2 = v0[19];
    v0[32] = v0[31];
    v0[33] = v2;
    v3 = v0[22];
    v0[34] = v3[10];
    v0[35] = v3[4];
    v0[36] = v3[5];
    v0[37] = v3[6];
    v0[38] = v3[7];
    v0[39] = v3[8];
    v0[40] = v3[9];

    return _swift_task_switch(sub_10034EBA0, 0, 0);
  }

  else
  {
    if (qword_100973658 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A140);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing appleID to import identity", v7, 2u);
    }

    v8 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100010738(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropReceive.Failure.badRequest(_:), v8);
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10034EBA0()
{
  v10 = v0[34];
  v11 = [objc_allocWithZone(RPClient) init];
  v0[41] = v11;
  v1 = [objc_allocWithZone(RPIdentity) init];
  v0[42] = v1;
  [v1 setType:6];
  v2 = String._bridgeToObjectiveC()();
  [v1 setAccountID:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setContactID:v3];

  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setDeviceIRKData:isa];

  v5 = Data._bridgeToObjectiveC()().super.isa;
  [v1 setEdPKData:v5];

  v6 = String._bridgeToObjectiveC()();
  [v1 setIdsDeviceID:v6];

  [v1 setSendersKnownAlias:0];
  if (v10)
  {
    [v1 setFeatureFlags:v0[34]];
  }

  v7 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_10034EE3C;
  v8 = swift_continuation_init();
  v0[17] = sub_10028088C(&qword_10097B520, &qword_1007FCC20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100638A98;
  v0[13] = &unk_1008DCF28;
  v0[14] = v8;
  [v7 addOrUpdateIdentityWithClient:v11 identity:v1 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10034EE3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_10034F0FC;
  }

  else
  {
    v2 = sub_10034EF4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034EF4C()
{
  v14 = v0;
  if (qword_100973780 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_10097AAF8);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[42];
  if (v4)
  {
    v7 = v0[25];
    v6 = v0[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000C4E4(v7, v6, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "Added/updated identity for contact %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  v10 = v0[41];
  v11 = v0[27];
  [v10 invalidate];

  return _swift_task_switch(sub_10034F1F8, v11, 0);
}

uint64_t sub_10034F0FC(uint64_t a1)
{
  v2 = v1[42];
  v3 = v1[41];
  v4 = v1[27];
  swift_willThrow();

  [v3 invalidate];

  return _swift_task_switch(sub_10034F194, v4, 0);
}

uint64_t sub_10034F194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034F1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034F264@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1002825FC();

  *a2 = v3;
  return result;
}

uint64_t sub_10034F2A4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_10097A228);
  v1 = sub_10000C4AC(v0, qword_10097A228);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10034F36C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097A228);
  v6 = v0;
  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v6[v10], 1, v1))
    {
      v11 = 0x800000010078D270;
      v12 = 0xD000000000000016;
    }

    else
    {
      (*(v2 + 16))(v4, &v6[v10], v1);
      v14 = Date.description.getter();
      v11 = v15;
      (*(v2 + 8))(v4, v1);
      v12 = v14;
    }

    v16 = sub_10000C4E4(v12, v11, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v7, "Storing last device locked as %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
    v13 = v18;
  }
}

double sub_10034F610()
{
  result = 3600.0;
  qword_10097A240 = 0x40AC200000000000;
  return result;
}

void sub_10034F628()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973660 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_10097A228);
  v6 = v0;
  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate;
    swift_beginAccess();
    if ((*(v2 + 48))(&v6[v10], 1, v1))
    {
      v11 = 0x800000010078D290;
      v12 = 0xD000000000000029;
    }

    else
    {
      (*(v2 + 16))(v4, &v6[v10], v1);
      v14 = Date.description.getter();
      v11 = v15;
      (*(v2 + 8))(v4, v1);
      v12 = v14;
    }

    v16 = sub_10000C4E4(v12, v11, &v19);

    *(v8 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v18, v7, "Storing last device unlocked and on wrist as %s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
    v13 = v18;
  }
}

BOOL sub_10034F8CC()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1002E4E88(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100016C08(v3);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
  if (v9)
  {
    v10 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

    v12 = v9(v11);
    sub_100015D04(v9, v10);
    if (v12)
    {
      (*(v5 + 8))(v7, v4);
      return 1;
    }
  }

  v14 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (v16)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000C4AC(v17, qword_10097A228);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "### TESTING ONLY: pretendNotUnlockedRecently is set, returning false for unlockedWithinLast6_5Hrs", v20, 2u);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  Date.timeIntervalSinceNow.getter();
  v22 = v21;
  (*(v5 + 8))(v7, v4);
  return v22 >= -23400.0;
}

BOOL sub_10034FC18()
{
  v1 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate;
  swift_beginAccess();
  sub_1002E4E88(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100016C08(v3);
    return 0;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = [objc_opt_self() standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 BOOLForKey:v10];

  if (v11)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_10097A228);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "### TESTING ONLY: expireEscrowTokens is set, returning phone was locked for more than 1 hr", v15, 2u);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  Date.timeIntervalSinceNow.getter();
  v18 = v17;
  if (qword_100973668 != -1)
  {
    swift_once();
  }

  v19 = *&qword_10097A240;
  (*(v5 + 8))(v7, v4);
  return v18 >= -v19;
}

char *sub_10034FF38(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v8(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastLockDate], 1, 1, v7);
  v9 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  *v11 = 0;
  v11[1] = 0;
  v12 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  *v12 = 0;
  v12[1] = 0;
  v13 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  *v24 = 0;
  v24[1] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice] = 0;
  v8(&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedAndOnWristDate], 1, 1, v7);
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue] = a1;
  v96.receiver = v1;
  v96.super_class = ObjectType;
  v95 = a1;
  v25 = objc_msgSendSuper2(&v96, "init");
  v26 = &v25[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  v27 = *&v25[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator];
  v28 = *&v25[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8];
  *v26 = variable initialization expression of HeadphoneProxFeatureClient.delegate;
  v26[1] = 0;
  v29 = v25;
  sub_100015D04(v27, v28);
  v30 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  v31 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator];
  v32 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8];
  *v30 = sub_100015DF4;
  v30[1] = 0;
  sub_100015D04(v31, v32);
  v33 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  v34 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator];
  v35 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator + 8];
  *v33 = sub_1003506BC;
  v33[1] = 0;
  sub_100015D04(v34, v35);
  v36 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  v37 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator];
  v38 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator + 8];
  *v36 = sub_1003506D8;
  v36[1] = 0;
  sub_100015D04(v37, v38);
  v39 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  v40 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator];
  v41 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator + 8];
  *v39 = sub_100350738;
  v39[1] = 0;
  sub_100015D04(v40, v41);
  v42 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  v43 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator];
  v44 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator + 8];
  *v42 = sub_100350754;
  v42[1] = 0;
  sub_100015D04(v43, v44);
  v45 = swift_allocObject();
  *(v45 + 16) = v29;
  v46 = &v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  v47 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator];
  v48 = *&v29[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator + 8];
  *v46 = &unk_1007FD350;
  *(v46 + 1) = v45;
  v49 = v29;
  sub_100015D04(v47, v48);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  v52 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator];
  v53 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator + 8];
  *v51 = sub_1003561BC;
  v51[1] = v50;

  sub_100015D04(v52, v53);

  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v55 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  v56 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler];
  v57 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeHandler + 8];
  *v55 = sub_1003561C4;
  v55[1] = v54;

  sub_100015D04(v56, v57);

  v58 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  v59 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator];
  v60 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockedByPairedUnlockGenerator + 8];
  *v58 = sub_100016C70;
  v58[1] = 0;
  sub_100015D04(v59, v60);
  v61 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  v62 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator];
  v63 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator + 8];
  *v61 = sub_100351650;
  v61[1] = 0;
  sub_100015D04(v62, v63);
  v64 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  v65 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator];
  v66 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator + 8];
  *v64 = sub_1003516EC;
  v64[1] = 0;
  sub_100015D04(v65, v66);
  v67 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  v68 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator];
  v69 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator + 8];
  *v67 = sub_100351708;
  v67[1] = 0;
  sub_100015D04(v68, v69);
  v70 = *v30;
  if (*v30)
  {
    v71 = v30[1];

    v73 = (v70)(v72);
    sub_100015D04(v70, v71);
    if (v73)
    {
      v74 = v94;
      Date.init()();
      v8(v74, 0, 1, v7);
      v75 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
      swift_beginAccess();
      sub_1003561CC(v74, &v49[v75]);
      swift_endAccess();
    }
  }

  v76 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  v77 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator];
  v78 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator + 8];
  *v76 = &unk_1007FD358;
  *(v76 + 1) = 0;
  sub_100015D04(v77, v78);
  v79 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  v80 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator];
  v81 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator + 8];
  *v79 = &unk_1007FD360;
  *(v79 + 1) = 0;
  sub_100015D04(v80, v81);
  v82 = &v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  v83 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator];
  v84 = *&v49[OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator + 8];
  *v82 = sub_100351928;
  v82[1] = 0;
  sub_100015D04(v83, v84);
  v85 = objc_opt_self();
  v86 = [v85 defaultCenter];
  v87 = qword_100973680;
  v88 = v49;
  if (v87 != -1)
  {
    swift_once();
  }

  [v86 addObserver:v88 selector:"handleKeyBagStateChanged" name:qword_1009A07D0 object:0];

  v89 = [v85 defaultCenter];
  v90 = qword_100973698;
  v91 = v88;
  if (v90 != -1)
  {
    swift_once();
  }

  [v89 addObserver:v91 selector:"handleOnWristStateChanged" name:qword_1009A07E8 object:0];

  sub_100013728(sub_10035623C, &unk_1008DCFC8);
  return v91;
}

id sub_1003506D8()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagDisabled];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100350790()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_100350884;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 5, 0, 0, 0x6575712874696E69, 0xEC000000293A6575, sub_100356244, v2, &type metadata for Bool);
}

uint64_t sub_100350884()
{

  return _swift_task_switch(sub_10035099C, 0, 0);
}

void sub_1003509B4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v23 = a1;
  v2 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(SDUnlockMotionDetector);
  v12 = [v11 initWithUnlockType:{1, v22}];
  v13 = [objc_opt_self() sharedLockManager];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 wristOnDate];

    if (v15)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v16.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v16.super.isa = 0;
    }

    [v12 setWristOnDate:v16.super.isa];

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v3 + 16))(v6, v23, v2);
    v18 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    (*(v3 + 32))(v19 + v18, v6, v2);
    *(v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
    aBlock[4] = sub_10035624C;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD018;
    v20 = _Block_copy(aBlock);
    v21 = v12;

    [v21 setMotionDetectedHandler:v20];
    _Block_release(v20);
    [v21 activate];
  }

  else
  {
    __break(1u);
  }
}

id sub_100350CF4(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_10097A2B0, &qword_1007FD370);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v24 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_queue);

    (*(v11 + 16))(v13, v25, v10);
    v16 = a3;
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = swift_allocObject();
    v19 = v18 + v17;
    a3 = v16;
    (*(v11 + 32))(v19, v13, v10);
    aBlock[4] = sub_1003562E8;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008DD068;
    v20 = _Block_copy(aBlock);
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_100013E70(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100013EB8();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v24;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v28 + 8))(v6, v4);
    (*(v26 + 8))(v9, v27);
  }

  return [a3 invalidate];
}

BOOL sub_1003510B4(uint64_t a1)
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    return 1;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_pearlDevice);
    if (v7)
    {
      v8 = v7;

      v14 = 0;
      v6 = [v8 identitiesWithError:&v14];

      v9 = v14;
      if (!v6)
      {
        v13 = v14;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        return 0;
      }

      sub_1000276B4(0, &qword_10097A2A8, BKIdentity_ptr);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v9;
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 != 0;
}

void sub_1003512A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator;
    v10 = *(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
    if (v10 && (v11 = *(v9 + 8), v12 = , v13 = v10(v12), sub_100015D04(v10, v11), (v13 & 1) != 0) && (v14 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator)) != 0 && (v15 = *(&v8[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator), v16 = , v17 = v14(v16), sub_100015D04(v14, v15), v17 == 3))
    {
      (*(v4 + 16))(v6, a1, v3);
      v18 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes;
      v19 = *(&v8->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(&v8->isa + v18) = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_10028EAA4(0, *(v19 + 2) + 1, 1, v19);
        *(&v8->isa + v18) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_10028EAA4((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      (*(v4 + 32))(v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v22, v6, v3);
      *(&v8->isa + v18) = v19;
      if (v22 >= 2)
      {
        sub_10057E950(0, 1);
      }
    }

    else
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_10000C4AC(v23, qword_10097A228);
      v24 = v8;
      v8 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v8, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 67109376;
        v27 = *v9;
        v28 = 1;
        if (*v9)
        {
          v29 = *(v9 + 8);

          v31 = v27(v30);
          sub_100015D04(v27, v29);
          v28 = (v31 & 1) == 0;
        }

        *(v26 + 4) = v28;
        *(v26 + 8) = 1024;
        v32 = *(&v24->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
        if (v32)
        {
          v33 = *(&v24[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);

          v35 = v32(v34);
          sub_100015D04(v32, v33);
          v36 = v35 != 3;
        }

        else
        {
          v36 = 1;
        }

        *(v26 + 10) = v36;

        _os_log_impl(&_mh_execute_header, v8, v25, "Ignoring wake gesture because device is either locked (%{BOOL}d) or off wrist (%{BOOL}d)", v26, 0xEu);
      }

      else
      {

        v8 = v24;
      }
    }
  }
}

uint64_t sub_100351650()
{
  if (!sub_10005CF6C())
  {
    return 1;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

id sub_100351708()
{
  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v1 = result;
    v2 = [result deviceKeyBagState];

    return (v2 == 6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100351788()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_10097A228);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "### TESTING ONLY: pretendDeviceWaitingForGuestModeApproval is set, returning true", v7, 2u);
    }
  }

  v8 = *(v0 + 8);

  return v8(v3);
}

uint64_t sub_100351944(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for AuthenticationSecurityRequest(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return _swift_task_switch(sub_100351AB4, 0, 0);
}

uint64_t sub_100351AB4(uint64_t a1)
{
  v179 = v1;
  v2 = *(v1 + 72);
  v3 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator);
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_wristDetectionGenerator + 8);

    v176 = v3(v5);
    sub_100015D04(v3, v4);
    v2 = *(v1 + 72);
  }

  else
  {
    v176 = 0;
  }

  v6 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator);
  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceUnlockedGenerator + 8);

    v9 = v6(v8);
    sub_100015D04(v6, v7);
    v2 = *(v1 + 72);
  }

  else
  {
    v9 = 0;
  }

  *(v1 + 264) = v9 & 1;
  v10 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator);
  if (v10)
  {
    v11 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceBiolockedGenerator + 8);

    v13 = v10(v12);
    sub_100015D04(v10, v11);
    v172 = v13 ^ 1;
    v2 = *(v1 + 72);
  }

  else
  {
    v172 = 0;
  }

  v14 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator);
  if (v14)
  {
    v15 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lostModeGenerator + 8);

    v17 = v14(v16);
    sub_100015D04(v14, v15);
    v173 = v17 ^ 1;
    v2 = *(v1 + 72);
  }

  else
  {
    v173 = 1;
  }

  v18 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator);
  if (v18)
  {
    v19 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_sleepModeGenerator + 8);

    v21 = v18(v20);
    sub_100015D04(v18, v19);
    v22 = v21 ^ 1;
    v2 = *(v1 + 72);
  }

  else
  {
    v22 = 1;
  }

  *(v1 + 265) = v22 & 1;
  v23 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator);
  if (v23)
  {
    v24 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_faceIDEnabledGenerator + 8);

    v26 = v23(v25);
    sub_100015D04(v23, v24);
    v2 = *(v1 + 72);
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceHasPasscodeGenerator + 8);

    v30 = v27(v29);
    sub_100015D04(v27, v28);
    v2 = *(v1 + 72);
  }

  else
  {
    v30 = 0;
  }

  v31 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator);
  if (v31)
  {
    v32 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsBioUnarmedGenerator + 8);

    v34 = v31(v33);
    sub_100015D04(v31, v32);
    v2 = *(v1 + 72);
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator);
  if (v35)
  {
    v36 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInAssertDelayGenerator + 8);

    v38 = v35(v37);
    sub_100015D04(v35, v36);
    v2 = *(v1 + 72);
  }

  else
  {
    v38 = 0;
  }

  v39 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator);
  if (v39)
  {
    v40 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInClassDGenerator + 8);

    v42 = v39(v41);
    sub_100015D04(v39, v40);
    v43 = v42 ^ 1;
    v2 = *(v1 + 72);
  }

  else
  {
    v43 = 1;
  }

  v44 = v2 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsMeDeviceGenerator;
  v45 = *v44;
  if (*v44)
  {
    v46 = *(v44 + 8);

    v48 = v45(v47);
    sub_100015D04(v45, v46);
  }

  else
  {
    v48 = 0;
  }

  v49 = *(v1 + 64);
  v50 = *v49;
  *(v1 + 176) = *v49;
  if (!(((v50 & 0x40) == 0) | v26 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 13;
LABEL_40:
    *v53 = v54;
LABEL_47:
    swift_willThrow();
LABEL_48:

    v55 = *(v1 + 8);
LABEL_49:

    return v55();
  }

  if ((v50 & 1) != 0 && v176 != 3)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    if (v176 == 1)
    {
      v52 = 2;
    }

    else
    {
      v52 = 3;
    }

LABEL_46:
    *v51 = v52;
    goto LABEL_47;
  }

  if (!(((v50 & 2) == 0) | v9 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 4;
    goto LABEL_40;
  }

  if ((((v50 & 0x2000) != 0) & v9) == 1)
  {
    goto LABEL_43;
  }

  if (!(((v50 & 2) == 0) | v30 & 1) || !(((v50 & 0x800) == 0) | v30 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 5;
    goto LABEL_40;
  }

  if (!(((v50 & 0x80) == 0) | v43 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 26;
    goto LABEL_40;
  }

  if (!(((v50 & 0x100) == 0) | v34 & 1))
  {
LABEL_43:
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 21;
    goto LABEL_40;
  }

  if (!(((v50 & 0x8000) == 0) | v173 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 28;
    goto LABEL_40;
  }

  if (!(((v50 & 0x200) == 0) | v172 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 27;
    goto LABEL_40;
  }

  if (!(((v50 & 0x4000) == 0) | v38 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    if (v9)
    {
      v52 = 21;
    }

    else
    {
      v52 = 4;
    }

    goto LABEL_46;
  }

  if (!(((v50 & 0x20000) == 0) | v48 & 1))
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 15;
    goto LABEL_40;
  }

  if ((v50 & 0x10000) != 0)
  {
    v57 = *(v1 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsWaitingForGuestModeApprovalGenerator;
    v58 = *v57;
    *(v1 + 184) = *v57;
    *(v1 + 192) = *(v57 + 8);
    if (!v58)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v54 = 40;
      goto LABEL_40;
    }

    v177 = (v58 + *v58);
    v59 = swift_task_alloc();
    *(v1 + 200) = v59;
    *v59 = v1;
    v60 = sub_100353228;
    goto LABEL_77;
  }

  if ((v50 & 0x80000) != 0)
  {
    v61 = *(v1 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator;
    v62 = *v61;
    *(v1 + 208) = *v61;
    *(v1 + 216) = *(v61 + 8);
    if (!v62)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v54 = 43;
      goto LABEL_40;
    }

    v177 = (v62 + *v62);
    v59 = swift_task_alloc();
    *(v1 + 224) = v59;
    *v59 = v1;
    v60 = sub_100354250;
LABEL_77:
    v59[1] = v60;
    goto LABEL_78;
  }

  if ((v50 & 8) != 0 && (*(v1 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v54 = 6;
    goto LABEL_40;
  }

  v63 = *(v1 + 160);
  v64 = *(v1 + 120);
  v65 = *(v1 + 128);
  v66 = *(v1 + 96);
  sub_100355618(*(v1 + 168));
  v67 = *(v65 + 16);
  v67(v63, &v49[*(v66 + 20)], v64);
  v68 = static Date.< infix(_:_:)();
  if ((v50 & 4) != 0 && (v68 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v69 = *(v1 + 112);
    v70 = *(v1 + 64);
    v71 = *(v1 + 72);
    v72 = type metadata accessor for Logger();
    sub_10000C4AC(v72, qword_10097A228);
    sub_100356068(v70, v69);
    v73 = v71;
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = *(v1 + 152);
      v78 = *(v1 + 120);
      v77 = *(v1 + 128);
      v174 = *(v1 + 112);
      v79 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v79 = 136315394;
      sub_100355618(v76);
      v80 = Date.description.getter();
      v82 = v81;
      (*(v77 + 8))(v76, v78);
      v83 = sub_10000C4E4(v80, v82, v178);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2080;
      sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v84 = dispatch thunk of CustomStringConvertible.description.getter();
      v86 = v85;
      sub_1003560CC(v174);
      v87 = sub_10000C4E4(v84, v86, v178);

      *(v79 + 14) = v87;
      v88 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_88:
      _os_log_impl(&_mh_execute_header, v74, v75, v88, v79, 0x16u);
      swift_arrayDestroy();

LABEL_107:
      v113 = *(v1 + 160);
      v112 = *(v1 + 168);
      v114 = *(v1 + 120);
      v115 = *(v1 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v117 = 11;
LABEL_108:
      *v116 = v117;
      swift_willThrow();
      v118 = *(v115 + 8);
      v118(v113, v114);
      v118(v112, v114);
      goto LABEL_48;
    }

    v111 = *(v1 + 112);
    goto LABEL_106;
  }

  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v93 = *(v1 + 176);
    Date.timeIntervalSince(_:)();
    if ((v93 & 0x1000) != 0 && fabs(v94) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v95 = *(v1 + 104);
      v96 = *(v1 + 64);
      v97 = *(v1 + 72);
      v98 = type metadata accessor for Logger();
      sub_10000C4AC(v98, qword_10097A228);
      sub_100356068(v96, v95);
      v99 = v97;
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v100 = *(v1 + 152);
        v102 = *(v1 + 120);
        v101 = *(v1 + 128);
        v175 = *(v1 + 104);
        v79 = swift_slowAlloc();
        v178[0] = swift_slowAlloc();
        *v79 = 136315394;
        sub_100355618(v100);
        v103 = Date.description.getter();
        v105 = v104;
        (*(v101 + 8))(v100, v102);
        v106 = sub_10000C4E4(v103, v105, v178);

        *(v79 + 4) = v106;
        *(v79 + 12) = 2080;
        sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v107 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v108;
        sub_1003560CC(v175);
        v110 = sub_10000C4E4(v107, v109, v178);

        *(v79 + 14) = v110;
        v88 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_88;
      }

      v111 = *(v1 + 104);
LABEL_106:

      sub_1003560CC(v111);
      goto LABEL_107;
    }
  }

  v89 = *(v1 + 176);
  if ((v89 & 0x20) != 0)
  {
    if (!sub_10034F8CC())
    {
      v113 = *(v1 + 160);
      v112 = *(v1 + 168);
      v114 = *(v1 + 120);
      v115 = *(v1 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v117 = 8;
      goto LABEL_108;
    }

    v89 = *(v1 + 176);
  }

  if ((v89 & 0x400) != 0 && (*(v1 + 264) & 1) == 0 && !sub_10034FC18())
  {
    v113 = *(v1 + 160);
    v112 = *(v1 + 168);
    v114 = *(v1 + 120);
    v115 = *(v1 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v117 = 22;
    goto LABEL_108;
  }

  Date.timeIntervalSinceNow.getter();
  v91 = v90;
  if (v90 >= -480.0)
  {
    v92 = 0;
LABEL_115:
    v126 = *(v1 + 72);
    v125 = v126 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
    if (*(v126 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v92)
    {
      if ((*(v1 + 176) & 0x10) != 0)
      {
LABEL_126:
        if (qword_100973660 != -1)
        {
          swift_once();
        }

        v142 = *(v1 + 72);
        v143 = type metadata accessor for Logger();
        sub_10000C4AC(v143, qword_10097A228);
        v144 = v142;
        v145 = Logger.logObject.getter();
        v146 = static os_log_type_t.default.getter();
        v147 = os_log_type_enabled(v145, v146);
        v148 = *(v1 + 72);
        if (!v147)
        {

          v145 = v148;
LABEL_141:

          goto LABEL_142;
        }

        v149 = swift_slowAlloc();
        *v149 = 67109632;
        v150 = *(&v148->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
        v156 = 0;
        if (*(v150 + 16) == 2)
        {
          v151 = *(v1 + 152);
          v152 = *(v1 + 120);
          v153 = *(v1 + 128);
          v67(v151, (v150 + ((*(v153 + 80) + 32) & ~*(v153 + 80))), v152);
          Date.timeIntervalSinceNow.getter();
          v155 = v154;
          (*(v153 + 8))(v151, v152);
          if (v155 >= -480.0)
          {
            v156 = 1;
          }
        }

        v157 = *(v1 + 120);
        v158 = *(v1 + 128);
        v160 = *(v1 + 72);
        v159 = *(v1 + 80);
        *(v149 + 4) = v156;

        *(v149 + 8) = 1024;
        *(v149 + 10) = v91 >= -480.0;
        *(v149 + 14) = 1024;
        v161 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
        swift_beginAccess();
        sub_1002E4E88(v160 + v161, v159);
        if ((*(v158 + 48))(v159, 1, v157) == 1)
        {
          sub_100016C08(*(v1 + 80));
        }

        else
        {
          v163 = *(v1 + 128);
          v162 = *(v1 + 136);
          v164 = *(v1 + 120);
          (*(v163 + 32))(v162, *(v1 + 80), v164);
          Date.timeIntervalSinceNow.getter();
          v166 = v165;
          (*(v163 + 8))(v162, v164);
          if (v166 >= -480.0)
          {
            v167 = 1;
            goto LABEL_140;
          }
        }

        v167 = 0;
LABEL_140:
        v168 = *(v1 + 72);
        *(v149 + 16) = v167;

        _os_log_impl(&_mh_execute_header, v145, v146, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v149, 0x14u);

        goto LABEL_141;
      }

LABEL_142:
      v169 = *(v1 + 168);
      v170 = *(v1 + 120);
      v171 = *(*(v1 + 128) + 8);
      v171(*(v1 + 160), v170);
      v171(v169, v170);

      v55 = *(v1 + 8);
      goto LABEL_49;
    }

    goto LABEL_119;
  }

  v119 = *(v1 + 120);
  v120 = *(v1 + 128);
  v121 = *(v1 + 88);
  v122 = *(v1 + 72);
  v123 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
  swift_beginAccess();
  sub_1002E4E88(v122 + v123, v121);
  if ((*(v120 + 48))(v121, 1, v119) != 1)
  {
    v127 = *(v1 + 144);
    v128 = *(v1 + 120);
    v129 = *(v1 + 128);
    (*(v129 + 32))(v127, *(v1 + 88), v128);
    Date.timeIntervalSinceNow.getter();
    v131 = v130;
    (*(v129 + 8))(v127, v128);
    v92 = v131 < -480.0;
    goto LABEL_115;
  }

  v124 = *(v1 + 72);
  sub_100016C08(*(v1 + 88));
  v125 = v124 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  v126 = *(v1 + 72);
LABEL_119:
  *(v1 + 232) = v125;
  v132 = *(v126 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v133 = *(v1 + 176);
  if (*(v132 + 16) == 2)
  {
    v134 = *(v1 + 152);
    v135 = *(v1 + 120);
    v136 = *(v1 + 128);
    v67(v134, (v132 + ((*(v136 + 80) + 32) & ~*(v136 + 80))), v135);
    Date.timeIntervalSinceNow.getter();
    v138 = v137;
    (*(v136 + 8))(v134, v135);
    if ((v133 & 0x10) == 0)
    {
      goto LABEL_142;
    }

    if (v138 >= -480.0)
    {
      goto LABEL_126;
    }

    v126 = *(v1 + 72);
  }

  else if ((v133 & 0x10) == 0)
  {
    goto LABEL_142;
  }

  v139 = (v126 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v140 = *v139;
  *(v1 + 240) = *v139;
  if (!v140)
  {
    v113 = *(v1 + 160);
    v112 = *(v1 + 168);
    v114 = *(v1 + 120);
    v115 = *(v1 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v117 = 7;
    goto LABEL_108;
  }

  *(v1 + 248) = v139[1];

  v177 = (v140 + *v140);
  v141 = swift_task_alloc();
  *(v1 + 256) = v141;
  *v141 = v1;
  v141[1] = sub_100355154;
LABEL_78:

  return v177();
}

uint64_t sub_100353228(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v7 = v4 + 184;
    v6 = *(v4 + 184);
    v5 = *(v7 + 8);

    sub_100015D04(v6, v5);
    v8 = sub_1003553A8;
  }

  else
  {
    *(v4 + 266) = a1 & 1;
    v8 = sub_100353364;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100353364()
{
  v125 = v0;
  v1 = *(v0 + 266);
  sub_100015D04(*(v0 + 184), *(v0 + 192));
  if ((v1 & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v4 = 40;
    goto LABEL_7;
  }

  v2 = *(v0 + 176);
  if ((v2 & 0x80000) != 0)
  {
    v7 = *(v0 + 72) + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_deviceIsInGuestModeGenerator;
    v8 = *v7;
    *(v0 + 208) = *v7;
    *(v0 + 216) = *(v7 + 8);
    if (!v8)
    {
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v4 = 43;
      goto LABEL_7;
    }

    v123 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 224) = v9;
    *v9 = v0;
    v9[1] = sub_100354250;
    goto LABEL_14;
  }

  if ((v2 & 8) != 0 && (*(v0 + 265) & 1) == 0)
  {
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v4 = 6;
LABEL_7:
    *v3 = v4;
    swift_willThrow();
LABEL_8:

    v5 = *(v0 + 8);
LABEL_9:

    return v5();
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 120);
  v12 = *(v0 + 128);
  v13 = *(v0 + 96);
  v14 = *(v0 + 64);
  sub_100355618(*(v0 + 168));
  v15 = *(v13 + 20);
  v16 = *(v12 + 16);
  v16(v10, v14 + v15, v11);
  v17 = static Date.< infix(_:_:)();
  if ((v2 & 4) != 0 && (v17 & 1) == 0)
  {
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_10097A228);
    sub_100356068(v19, v18);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 152);
      v27 = *(v0 + 120);
      v26 = *(v0 + 128);
      v121 = *(v0 + 112);
      v28 = swift_slowAlloc();
      v124[0] = swift_slowAlloc();
      *v28 = 136315394;
      sub_100355618(v25);
      v29 = Date.description.getter();
      v31 = v30;
      (*(v26 + 8))(v25, v27);
      v32 = sub_10000C4E4(v29, v31, v124);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      sub_1003560CC(v121);
      v36 = sub_10000C4E4(v33, v35, v124);

      *(v28 + 14) = v36;
      v37 = "Local device unlocked (%s) is after remote device unlocked (%s)";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v23, v24, v37, v28, 0x16u);
      swift_arrayDestroy();

LABEL_42:
      v62 = *(v0 + 160);
      v61 = *(v0 + 168);
      v63 = *(v0 + 120);
      v64 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v66 = 11;
LABEL_43:
      *v65 = v66;
      swift_willThrow();
      v67 = *(v64 + 8);
      v67(v62, v63);
      v67(v61, v63);
      goto LABEL_8;
    }

    v60 = *(v0 + 112);
    goto LABEL_41;
  }

  if ((static Date.> infix(_:_:)() & 1) == 0)
  {
    v42 = *(v0 + 176);
    Date.timeIntervalSince(_:)();
    if ((v42 & 0x1000) != 0 && fabs(v43) >= 1.0)
    {
      if (qword_100973660 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 104);
      v45 = *(v0 + 64);
      v46 = *(v0 + 72);
      v47 = type metadata accessor for Logger();
      sub_10000C4AC(v47, qword_10097A228);
      sub_100356068(v45, v44);
      v48 = v46;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v49 = *(v0 + 152);
        v51 = *(v0 + 120);
        v50 = *(v0 + 128);
        v122 = *(v0 + 104);
        v28 = swift_slowAlloc();
        v124[0] = swift_slowAlloc();
        *v28 = 136315394;
        sub_100355618(v49);
        v52 = Date.description.getter();
        v54 = v53;
        (*(v50 + 8))(v49, v51);
        v55 = sub_10000C4E4(v52, v54, v124);

        *(v28 + 4) = v55;
        *(v28 + 12) = 2080;
        sub_100013E70(&qword_100983290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        sub_1003560CC(v122);
        v59 = sub_10000C4E4(v56, v58, v124);

        *(v28 + 14) = v59;
        v37 = "Local device unlocked (%s) is before remote device unlocked (%s)";
        goto LABEL_23;
      }

      v60 = *(v0 + 104);
LABEL_41:

      sub_1003560CC(v60);
      goto LABEL_42;
    }
  }

  v38 = *(v0 + 176);
  if ((v38 & 0x20) != 0)
  {
    if (!sub_10034F8CC())
    {
      v62 = *(v0 + 160);
      v61 = *(v0 + 168);
      v63 = *(v0 + 120);
      v64 = *(v0 + 128);
      type metadata accessor for SFAuthenticationErrorCode(0);
      sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
      swift_allocError();
      v66 = 8;
      goto LABEL_43;
    }

    v38 = *(v0 + 176);
  }

  if ((v38 & 0x400) != 0 && (*(v0 + 264) & 1) == 0 && !sub_10034FC18())
  {
    v62 = *(v0 + 160);
    v61 = *(v0 + 168);
    v63 = *(v0 + 120);
    v64 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v66 = 22;
    goto LABEL_43;
  }

  Date.timeIntervalSinceNow.getter();
  v40 = v39;
  if (v39 < -480.0)
  {
    v68 = *(v0 + 120);
    v69 = *(v0 + 128);
    v70 = *(v0 + 88);
    v71 = *(v0 + 72);
    v72 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v71 + v72, v70);
    if ((*(v69 + 48))(v70, 1, v68) == 1)
    {
      v73 = *(v0 + 72);
      sub_100016C08(*(v0 + 88));
      v74 = v73 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
      v75 = *(v0 + 72);
      goto LABEL_54;
    }

    v76 = *(v0 + 144);
    v77 = *(v0 + 120);
    v78 = *(v0 + 128);
    (*(v78 + 32))(v76, *(v0 + 88), v77);
    Date.timeIntervalSinceNow.getter();
    v80 = v79;
    (*(v78 + 8))(v76, v77);
    v41 = v80 < -480.0;
  }

  else
  {
    v41 = 0;
  }

  v75 = *(v0 + 72);
  v74 = v75 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions;
  if (*(v75 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_allowsLenientMotionConditions) == 1 && !v41)
  {
    if ((*(v0 + 176) & 0x10) == 0)
    {
      goto LABEL_77;
    }

LABEL_61:
    if (qword_100973660 != -1)
    {
      swift_once();
    }

    v91 = *(v0 + 72);
    v92 = type metadata accessor for Logger();
    sub_10000C4AC(v92, qword_10097A228);
    v93 = v91;
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.default.getter();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v0 + 72);
    if (!v96)
    {

      v94 = v97;
LABEL_76:

      goto LABEL_77;
    }

    v98 = swift_slowAlloc();
    *v98 = 67109632;
    v99 = *(&v97->isa + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
    v105 = 0;
    if (*(v99 + 16) == 2)
    {
      v100 = *(v0 + 152);
      v101 = *(v0 + 120);
      v102 = *(v0 + 128);
      v16(v100, v99 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v101);
      Date.timeIntervalSinceNow.getter();
      v104 = v103;
      (*(v102 + 8))(v100, v101);
      if (v104 >= -480.0)
      {
        v105 = 1;
      }
    }

    v106 = *(v0 + 120);
    v107 = *(v0 + 128);
    v109 = *(v0 + 72);
    v108 = *(v0 + 80);
    *(v98 + 4) = v105;

    *(v98 + 8) = 1024;
    *(v98 + 10) = v40 >= -480.0;
    *(v98 + 14) = 1024;
    v110 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_lastUnlockDate;
    swift_beginAccess();
    sub_1002E4E88(v109 + v110, v108);
    if ((*(v107 + 48))(v108, 1, v106) == 1)
    {
      sub_100016C08(*(v0 + 80));
    }

    else
    {
      v112 = *(v0 + 128);
      v111 = *(v0 + 136);
      v113 = *(v0 + 120);
      (*(v112 + 32))(v111, *(v0 + 80), v113);
      Date.timeIntervalSinceNow.getter();
      v115 = v114;
      (*(v112 + 8))(v111, v113);
      if (v115 >= -480.0)
      {
        v116 = 1;
        goto LABEL_75;
      }
    }

    v116 = 0;
LABEL_75:
    v117 = *(v0 + 72);
    *(v98 + 16) = v116;

    _os_log_impl(&_mh_execute_header, v94, v95, "Skipping motion check because one of the following is true: hasEnoughWakeRaises = %{BOOL}d requestingDeviceUnlockedRecently = %{BOOL}d unlockedRecently = %{BOOL}d", v98, 0x14u);

    goto LABEL_76;
  }

LABEL_54:
  *(v0 + 232) = v74;
  v81 = *(v75 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_raiseToWakeTimes);
  v82 = *(v0 + 176);
  if (*(v81 + 16) == 2)
  {
    v83 = *(v0 + 152);
    v84 = *(v0 + 120);
    v85 = *(v0 + 128);
    v16(v83, v81 + ((*(v85 + 80) + 32) & ~*(v85 + 80)), v84);
    Date.timeIntervalSinceNow.getter();
    v87 = v86;
    (*(v85 + 8))(v83, v84);
    if ((v82 & 0x10) != 0)
    {
      if (v87 >= -480.0)
      {
        goto LABEL_61;
      }

      v75 = *(v0 + 72);
      goto LABEL_59;
    }

LABEL_77:
    v118 = *(v0 + 168);
    v119 = *(v0 + 120);
    v120 = *(*(v0 + 128) + 8);
    v120(*(v0 + 160), v119);
    v120(v118, v119);

    v5 = *(v0 + 8);
    goto LABEL_9;
  }

  if ((v82 & 0x10) == 0)
  {
    goto LABEL_77;
  }

LABEL_59:
  v88 = (v75 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAuthenticationSecurityManager_motionGenerator);
  v89 = *v88;
  *(v0 + 240) = *v88;
  if (!v89)
  {
    v62 = *(v0 + 160);
    v61 = *(v0 + 168);
    v63 = *(v0 + 120);
    v64 = *(v0 + 128);
    type metadata accessor for SFAuthenticationErrorCode(0);
    sub_100013E70(&qword_100981FF0, type metadata accessor for SFAuthenticationErrorCode, &protocol conformance descriptor for SFAuthenticationErrorCode);
    swift_allocError();
    v66 = 7;
    goto LABEL_43;
  }

  *(v0 + 248) = v88[1];

  v123 = (v89 + *v89);
  v90 = swift_task_alloc();
  *(v0 + 256) = v90;
  *v90 = v0;
  v90[1] = sub_100355154;
LABEL_14:

  return v123();
}