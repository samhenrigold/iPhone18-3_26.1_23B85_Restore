uint64_t sub_10051D0F8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016A4420, &qword_1013B07D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035D0(a1, a1[3]);
  sub_1005266E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1005243D0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
    v11[14] = 1;
    type metadata accessor for MACAddress();
    sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10051D2D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for MACAddress();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000BC4D4(&qword_1016A4410, &qword_1013B07D0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v19 - v6;
  v8 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_1005266E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v20 = v8;
    v21 = v5;
    v11 = v10;
    v13 = v24;
    v12 = v25;
    v30 = 0;
    sub_100524258();
    v14 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v15 = v28;
    v16 = v11;
    *v11 = v27;
    v11[8] = v15;
    v29 = 1;
    sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v17 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v13 + 8))(v7, v14);
    (*(v22 + 32))(v16 + *(v20 + 20), v17, v12);
    sub_100523BF4(v16, v23, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
  }

  return sub_100007BAC(a1);
}

unint64_t sub_10051D678()
{
  result = qword_1016A4120;
  if (!qword_1016A4120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4120);
  }

  return result;
}

uint64_t sub_10051D6CC()
{
  if (*v0)
  {
    return 0x657264644163616DLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_10051D70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657264644163616DLL && a2 == 0xEA00000000007373)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10051D7F0(uint64_t a1)
{
  v2 = sub_1005266E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051D82C(uint64_t a1)
{
  v2 = sub_1005266E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051D898(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return static MACAddress.== infix(_:_:)();
}

uint64_t sub_10051D8D8(void *a1, uint64_t a2, int a3)
{
  v20 = a3;
  v18 = a2;
  v19 = sub_1000BC4D4(&qword_1016A4270, &qword_1013AFFD0);
  v17 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v15 - v4;
  v16 = sub_1000BC4D4(&qword_1016A4278, &qword_1013AFFD8);
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - v7;
  v9 = sub_1000BC4D4(&unk_1016A4280, &qword_1013AFFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000035D0(a1, a1[3]);
  sub_100525D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v20)
  {
    v21 = 0;
    sub_100525DAC();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v16);
  }

  else
  {
    v22 = 1;
    sub_100525D58();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v19;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v17 + 8))(v5, v14);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10051DBD0()
{
  if (*v0)
  {
    return 0x656E6F6973726576;
  }

  else
  {
    return 0x79636167656CLL;
  }
}

uint64_t sub_10051DC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79636167656CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6F6973726576 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10051DCEC(uint64_t a1)
{
  v2 = sub_100525D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DD28(uint64_t a1)
{
  v2 = sub_100525D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051DD64(uint64_t a1)
{
  v2 = sub_100525DAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DDA0(uint64_t a1)
{
  v2 = sub_100525DAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10051DDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10051DE7C(uint64_t a1)
{
  v2 = sub_100525D58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10051DEB8(uint64_t a1)
{
  v2 = sub_100525D58();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10051DEF4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10052582C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

Swift::Int sub_10051DF48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    Hasher._combine(_:)(1uLL);
    v3 = v1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10051DFA8()
{
  if (*(v0 + 8))
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10051DFF0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v3)
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10051E050()
{
  if (*(v0 + 8))
  {
    return 0x79636167656C2ELL;
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x6E6F69737265762ELL;
}

BOOL sub_10051E0FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

unint64_t sub_10051E13C()
{
  result = qword_1016A4128;
  if (!qword_1016A4128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4128);
  }

  return result;
}

void sub_10051E190()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177AEF8);
  sub_1000076D4(v0, qword_10177AEF8);
  v5 = objc_autoreleasePoolPush();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v1 + 8))(v4, v0);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10051E304(id *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = *a1;
  v10 = [v9 description];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100008C00();
  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v14 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v14, "Updating beacon group: %@", 25, 2, v8);

  v15 = [v9 encryptedValues];
  ObjectType = swift_getObjectType();
  v17 = *(v2 + 24);
  v60 = v15;
  v61 = ObjectType;
  if (v17 != 1)
  {
    v23 = *(v2 + 16);
    if (v23 != 1)
    {
      if (qword_1016946D0 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_1000076D4(v34, qword_10177ACC8);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v35, v36, "Unexpected OwnedBeaconGroup version: %ld!", v37, 0xCu);
      }

      goto LABEL_21;
    }

    v24 = *(type metadata accessor for OwnedBeaconGroup(0) + 28);
    v25 = *(v4 + 20);
    v26 = type metadata accessor for MACAddress();
    (*(*(v26 - 8) + 16))(&v6[v25], v2 + v24, v26);
    *v6 = 1;
    v6[8] = 0;
    v27 = sub_10051EC44();
    v29 = v28;
    sub_100523C5C(v6, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress);
    CKRecordKeyValueSetting.subscript.getter();
    v31 = v62;
    v30 = v63;
    if (v63 >> 60 == 15)
    {
      if (v29 >> 60 == 15)
      {
        sub_100006654(v62, v63);
        goto LABEL_21;
      }
    }

    else if (v29 >> 60 != 15)
    {
      sub_100017D5C(v27, v29);
      sub_100017D5C(v27, v29);
      sub_10002E98C(v31, v30);
      v56 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v30, v27, v29);
      sub_100016590(v27, v29);
      sub_100006654(v31, v30);
      sub_100006654(v27, v29);
      sub_100006654(v31, v30);
      if (v56)
      {
        sub_100016590(v27, v29);
        goto LABEL_21;
      }

LABEL_19:
      v64 = &type metadata for Data;
      v65 = &protocol witness table for Data;
      v62 = v27;
      v63 = v29;
      sub_100017D5C(v27, v29);
      CKRecordKeyValueSetting.subscript.setter();
      sub_100016590(v27, v29);
      goto LABEL_21;
    }

    sub_100017D5C(v27, v29);
    sub_100006654(v31, v30);
    sub_100006654(v27, v29);
    goto LABEL_19;
  }

  CKRecordKeyValueSetting.subscript.getter();
  v19 = v62;
  v18 = v63;
  type metadata accessor for OwnedBeaconGroup(0);
  v21 = MACAddress.dataRepresentation.getter();
  v22 = v20;
  if (v18 >> 60 == 15)
  {
    if (v20 >> 60 == 15)
    {
      sub_100006654(v19, v18);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (v20 >> 60 == 15)
  {
LABEL_10:
    sub_100006654(v19, v18);
    sub_100006654(v21, v22);
LABEL_11:
    v32 = MACAddress.dataRepresentation.getter();
    v64 = &type metadata for Data;
    v65 = &protocol witness table for Data;
    v62 = v32;
    v63 = v33;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  sub_10002E98C(v19, v18);
  sub_100017D5C(v21, v22);
  v38 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v19, v18, v21, v22);
  sub_100016590(v21, v22);
  sub_100006654(v19, v18);
  sub_100006654(v21, v22);
  sub_100006654(v19, v18);
  if (!v38)
  {
    goto LABEL_11;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v40 = v62;
  v39 = v63;
  v41 = type metadata accessor for OwnedBeaconGroup(0);
  v42 = (v2 + v41[9]);
  v43 = *v42;
  v44 = v42[1];
  if (!v39)
  {
    goto LABEL_27;
  }

  if (v40 != v43 || v39 != v44)
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_28;
    }

LABEL_27:
    v64 = &type metadata for String;
    v65 = &protocol witness table for String;
    v62 = v43;
    v63 = v44;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_28;
  }

LABEL_28:
  CKRecordKeyValueSetting.subscript.getter();
  v46 = *(v2 + v41[8]);
  if (v62 == 2 || ((v46 ^ v62) & 1) != 0)
  {
    v64 = &type metadata for Bool;
    v65 = &protocol witness table for Bool;
    LOBYTE(v62) = v46;
    CKRecordKeyValueSetting.subscript.setter();
  }

  CKRecordKeyValueSetting.subscript.getter();
  v48 = v62;
  v47 = v63;
  v49 = *(v2 + v41[10]);
  type metadata accessor for OwnedBeaconGroup.PairingState(0);
  sub_100523B4C();
  sub_100523BA0();
  sub_100101BAC();
  sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFCA8);
  sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFC80);
  v59 = v49;
  v51 = Dictionary<>.dataRepresentation.getter();
  v52 = v50;
  if (v47 >> 60 == 15)
  {
    if (v50 >> 60 == 15)
    {
      swift_unknownObjectRelease();
      return sub_100006654(v48, v47);
    }
  }

  else if (v50 >> 60 != 15)
  {
    sub_10002E98C(v48, v47);
    sub_100017D5C(v51, v52);
    v58 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v48, v47, v51, v52);
    sub_100016590(v51, v52);
    sub_100006654(v48, v47);
    sub_100006654(v51, v52);
    sub_100006654(v48, v47);
    if (v58)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_36;
  }

  sub_100006654(v48, v47);
  sub_100006654(v51, v52);
LABEL_36:
  v54 = Dictionary<>.dataRepresentation.getter();
  v64 = &type metadata for Data;
  v65 = &protocol witness table for Data;
  v62 = v54;
  v63 = v55;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

uint64_t sub_10051EC44()
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress(0);
  sub_100523A38(&unk_1016A4198, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress, &unk_1013B073C);
  v0 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v0;
}

uint64_t sub_10051EE00(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_1016A41E8, &qword_1013AFF90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100524204();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 8);
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_100017D5C(v15, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v15, v16);
  }

  else
  {
    sub_100016590(v15, v16);
    v10 = *(v3 + 24);
    v15 = *(v3 + 16);
    LOBYTE(v16) = v10;
    v14 = 1;
    sub_1005243D0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = type metadata accessor for OwnedBeaconGroup(0);
    LOBYTE(v15) = 2;
    type metadata accessor for UUID();
    sub_100523A38(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v15) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v15) = 5;
    type metadata accessor for MACAddress();
    sub_100523A38(&qword_10169B550, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + *(v11 + 40));
    v14 = 6;
    sub_1000BC4D4(&qword_1016A41D8, &qword_1013AFF88);
    sub_100524424();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10051F15C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = type metadata accessor for MACAddress();
  v31 = *(v28 - 8);
  __chkstk_darwin(v28);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000BC4D4(&qword_1016A41A8, &qword_1013AFF80);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v26 - v8;
  v10 = type metadata accessor for OwnedBeaconGroup(0);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_1000035D0(a1, v13);
  sub_100524204();
  v32 = v9;
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100007BAC(v35);
  }

  v15 = v7;
  v34 = v4;
  v16 = v12;
  v18 = v30;
  v17 = v31;
  v37 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v16 = v36;
  v37 = 1;
  sub_100524258();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = BYTE8(v36);
  *(v16 + 16) = v36;
  *(v16 + 24) = v19;
  LOBYTE(v36) = 2;
  sub_100523A38(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v29 + 32))(v16 + v10[6], v15, v5);
  LOBYTE(v36) = 3;
  *(v16 + v10[8]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v36) = 4;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = (v16 + v10[9]);
  *v21 = v20;
  v21[1] = v22;
  LOBYTE(v36) = 5;
  sub_100523A38(&qword_1016A41D0, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v23 = v34;
  v24 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16 + v10[7], v23, v24);
  sub_1000BC4D4(&qword_1016A41D8, &qword_1013AFF88);
  v37 = 6;
  sub_1005242AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v32, v33);
  *(v16 + v10[10]) = v36;
  sub_100524368(v16, v27, type metadata accessor for OwnedBeaconGroup);
  sub_100007BAC(v35);
  return sub_100523C5C(v16, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_10051F7B0()
{
  _StringGuts.grow(_:)(44);

  v1 = type metadata accessor for OwnedBeaconGroup(0);
  type metadata accessor for UUID();
  sub_100523A38(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x3A63616D20;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  type metadata accessor for MACAddress();
  sub_100523A38(&qword_1016A4210, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x4D6E6F6361656220;
  v5._object = 0xEB000000003A7061;
  String.append(_:)(v5);
  type metadata accessor for OwnedBeaconGroup.PairingState(0);
  sub_100101BAC();
  v6._countAndFlagsBits = Dictionary.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x3A736E6D6620;
  v7._object = 0xE600000000000000;
  String.append(_:)(v7);
  if (*(v0 + *(v1 + 32)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 0x203A6469647520;
  v11._object = 0xE700000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = MACAddress.udid.getter();
  String.append(_:)(v12);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 979659068;
}

uint64_t sub_10051FA1C()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v18 - v6;
  result = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v0 + *(result + 40));
  v10 = *(v9 + 16);
  if (!v10)
  {
    v11 = _swiftEmptyArrayStorage;
    v14 = _swiftEmptyArrayStorage[2];
    if (!v14)
    {
LABEL_15:

      return 0;
    }

    goto LABEL_6;
  }

  v11 = sub_1003A8624(*(v9 + 16), 0);
  v12 = sub_1003A9374(v20, v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v10, v9);
  v13 = v20[0];
  v18[1] = v20[3];
  v19 = v12;
  v18[0] = v20[4];

  result = sub_1000128F8(v13);
  if (v19 == v10)
  {
    v14 = v11[2];
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_6:
    v15 = 0;
    v16 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    while (v15 < v11[2])
    {
      sub_100524368(&v16[*(v2 + 72) * v15], v7, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v7, v5, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload())
      {
        result = sub_100523C5C(v5, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v17 = v5[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48) + 2];
        if (v17 == 3)
        {
          result = sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          result = sub_10000B3A8(v5, &qword_1016A40D0, &unk_10138BE70);
          if (v17 == 2)
          {

            return 1;
          }
        }
      }

      if (v14 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10051FCAC()
{
  v1 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = v23 - v7;
  __chkstk_darwin(v6);
  v10 = v23 - v9;
  result = type metadata accessor for OwnedBeaconGroup(0);
  v12 = *(v0 + *(result + 40));
  v13 = *(v12 + 16);
  if (!v13)
  {
    v14 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage[2];
    if (!v17)
    {
LABEL_15:

      return 1;
    }

    goto LABEL_6;
  }

  v14 = sub_1003A8624(*(v12 + 16), 0);
  v15 = sub_1003A9374(v26, v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v13, v12);
  v16 = v26[0];
  v24 = v26[2];
  v25 = v15;
  v23[1] = v26[4];
  v23[2] = v26[3];

  result = sub_1000128F8(v16);
  if (v25 == v13)
  {
    v17 = v14[2];
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_6:
    v18 = 0;
    v25 = v2;
    v19 = v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = v8 + 2;
    while (v18 < v14[2])
    {
      sub_100524368(&v19[*(v25 + 72) * v18], v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100524368(v10, v8, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100523C5C(v8, type metadata accessor for OwnedBeaconGroup.PairingState);
      }

      else
      {
        v20 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v21 = v24[*(v20 + 48)];
        if (v21 == 3)
        {
          sub_10000B3A8(v8, &qword_1016A40D0, &unk_10138BE70);
        }

        else
        {
          sub_10000B3A8(v8, &qword_1016A40D0, &unk_10138BE70);
          if (v21 == 1)
          {

            sub_100523C5C(v10, type metadata accessor for OwnedBeaconGroup.PairingState);
            return 0;
          }
        }
      }

      swift_storeEnumTagMultiPayload();
      v22 = sub_100524658(v10, v5);
      sub_100523C5C(v5, type metadata accessor for OwnedBeaconGroup.PairingState);
      result = sub_100523C5C(v10, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (v22)
      {

        return 0;
      }

      if (v17 == ++v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10051FFDC()
{
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_100523D34(*(v0 + *(v1 + 40)));
  v3 = sub_100518664(v2);

  return v3;
}

void *sub_100520038()
{
  v93 = type metadata accessor for MACAddress();
  v1 = *(v93 - 8);
  v2 = __chkstk_darwin(v93);
  v89 = &v81[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v88 = &v81[-v4];
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v6 = __chkstk_darwin(v5 - 8);
  v92 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v96 = &v81[-v8];
  v9 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v98 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v97 = &v81[-v13];
  v14 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v81[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v101 = &v81[-v18];
  v19 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v20 = v12;
  v100 = v12;
  v21 = v19 + 64;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v95 = v20 + 2;
  v25 = (v22 + 63) >> 6;
  v91 = (v1 + 48);
  v86 = (v1 + 16);
  v87 = (v1 + 32);
  v84 = v1 + 8;
  v85 = v1;
  v26 = v1 + 40;
  v27 = v9;
  v83 = v26;
  v99 = v19;

  v90 = _swiftEmptyDictionarySingleton;
  v102 = v17;
  v94 = v9;
  v28 = 0;
  if (v24)
  {
    while (1)
    {
      while (1)
      {
        v29 = v27;
        v30 = v28;
LABEL_13:
        v33 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v34 = v33 | (v30 << 6);
        v35 = (*(v99 + 48) + 16 * v34);
        v36 = *v35;
        v37 = v35[1];
        v38 = v97;
        sub_100524368(*(v99 + 56) + *(v98 + 72) * v34, v97, type metadata accessor for OwnedBeaconGroup.PairingState);
        v39 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        v40 = *(v39 + 48);
        v41 = v102;
        *v102 = v36;
        v41[1] = v37;
        v42 = v38;
        v17 = v41;
        sub_100523BF4(v42, v41 + v40, type metadata accessor for OwnedBeaconGroup.PairingState);
        (*(*(v39 - 8) + 56))(v17, 0, 1, v39);
        sub_100017D5C(v36, v37);
        v32 = v30;
LABEL_14:
        v43 = v101;
        sub_1000D2AD8(v17, v101, &unk_1016BBEA0, &unk_101395A80);
        v44 = v43;
        v45 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
        if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
        {

          return v90;
        }

        v103 = v32;
        v47 = *v44;
        v46 = v44[1];
        v48 = v44 + *(v45 + 48);
        v49 = v100;
        sub_100523BF4(v48, v100, type metadata accessor for OwnedBeaconGroup.PairingState);
        v27 = v29;
        if (!swift_getEnumCaseMultiPayload())
        {
          break;
        }

        sub_100016590(v47, v46);
        sub_100523C5C(v49, type metadata accessor for OwnedBeaconGroup.PairingState);
        v28 = v103;
LABEL_23:
        if (!v24)
        {
          goto LABEL_5;
        }
      }

      v50 = *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48);
      v51 = v49;
      v52 = v96;
      v53 = v95[v50];
      sub_1000D2AD8(v51, v96, &qword_1016A40D0, &unk_10138BE70);
      if (v53 != 2)
      {
        break;
      }

      v54 = v92;
      sub_1000D2A70(v52, v92, &qword_1016A40D0, &unk_10138BE70);
      if ((*v91)(v54, 1, v93) == 1)
      {
        sub_10000B3A8(v52, &qword_1016A40D0, &unk_10138BE70);
        sub_100016590(v47, v46);
        sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
LABEL_22:
        v17 = v102;
        v28 = v103;
        v27 = v94;
        goto LABEL_23;
      }

      v56 = v88;
      v57 = *v87;
      v58 = v54;
      v59 = v93;
      (*v87)(v88, v58, v93);
      (*v86)(v89, v56, v59);
      v60 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v60;
      v62 = sub_100771E30(v47, v46);
      v63 = v60[2];
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_39;
      }

      v66 = v61;
      v27 = v94;
      v17 = v102;
      if (v60[3] >= v65)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          LODWORD(v90) = v61;
          v79 = v62;
          sub_101008A74();
          v62 = v79;
          v66 = v90;
        }
      }

      else
      {
        sub_100FEE04C(v65, isUniquelyReferenced_nonNull_native);
        v67 = sub_100771E30(v47, v46);
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_41;
        }

        v62 = v67;
      }

      v69 = v104;
      v90 = v104;
      if (v66)
      {
        v70 = v85;
        v71 = v93;
        (*(v85 + 40))(v104[7] + *(v85 + 72) * v62, v89, v93);
        sub_100016590(v47, v46);
        (*(v70 + 8))(v88, v71);
        sub_10000B3A8(v96, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        v104[(v62 >> 6) + 8] |= 1 << v62;
        v72 = (v69[6] + 16 * v62);
        *v72 = v47;
        v72[1] = v46;
        v73 = v85;
        v74 = v93;
        v57(v69[7] + *(v85 + 72) * v62, v89, v93);
        v75 = v90;
        (*(v73 + 8))(v88, v74);
        sub_10000B3A8(v96, &qword_1016A40D0, &unk_10138BE70);
        v76 = v75[2];
        v77 = __OFADD__(v76, 1);
        v78 = v76 + 1;
        if (v77)
        {
          goto LABEL_40;
        }

        v75[2] = v78;
      }

      v28 = v103;
      if (!v24)
      {
        goto LABEL_5;
      }
    }

    sub_10000B3A8(v52, &qword_1016A40D0, &unk_10138BE70);
    sub_100016590(v47, v46);
    goto LABEL_22;
  }

LABEL_5:
  if (v25 <= v28 + 1)
  {
    v31 = v28 + 1;
  }

  else
  {
    v31 = v25;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v25)
    {
      v29 = v27;
      v55 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v55 - 8) + 56))(v17, 1, 1, v55);
      v24 = 0;
      goto LABEL_14;
    }

    v24 = *(v21 + 8 * v30);
    ++v28;
    if (v24)
    {
      v29 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005208F4()
{
  v16 = xmmword_10138C660;
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_100523D34(*(v0 + *(v1 + 40)));
  v3 = sub_100518664(v2);

  sub_100515594(v3);

  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177C418);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    swift_beginAccess();
    sub_100017D5C(v16, *(&v16 + 1));
    v9 = Data.hexString.getter();
    v11 = v10;
    sub_100016590(v16, *(&v16 + 1));
    v12 = sub_1000136BC(v9, v11, v15);

    *(v7 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "unpairedSerialNumbersData: %{private,mask.hash}s", v7, 0x16u);
    sub_100007BAC(v8);
  }

  swift_beginAccess();
  v13 = v16;
  sub_100017D5C(v16, *(&v16 + 1));
  sub_100016590(v13, *(&v13 + 1));
  return v13;
}

void *sub_100520B14()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  v69 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v63 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v60 - v6;
  v7 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v12 = (&v60 - v11);
  v13 = *(v0 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v61 = (v15 + 63) >> 6;
  v64 = v13;

  v18 = 0;
  v19 = _swiftEmptyDictionarySingleton;
  v66 = v12;
  v67 = v10;
  for (i = v14; ; v14 = i)
  {
    v72 = v19;
    if (!v17)
    {
      break;
    }

    v22 = v18;
LABEL_16:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v22 << 6);
    v27 = (*(v64 + 48) + 16 * v26);
    v28 = *v27;
    v29 = v27[1];
    v30 = v62;
    sub_100524368(*(v64 + 56) + *(v63 + 72) * v26, v62, type metadata accessor for OwnedBeaconGroup.PairingState);
    v31 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v32 = *(v31 + 48);
    *v10 = v28;
    v10[1] = v29;
    sub_100523BF4(v30, v10 + v32, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
    sub_100017D5C(v28, v29);
LABEL_17:
    sub_1000D2AD8(v10, v12, &unk_1016BBEA0, &unk_101395A80);
    v33 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v33 - 8) + 48))(v12, 1, v33) == 1)
    {

      return v72;
    }

    v34 = *v12;
    v35 = v12[1];
    v36 = v68;
    sub_100523BF4(v12 + *(v33 + 48), v68, type metadata accessor for OwnedBeaconGroup.PairingState);
    static String.Encoding.utf8.getter();
    v37 = String.init(data:encoding:)();
    v70 = v35;
    v71 = v34;
    if (!v38)
    {
      v37 = Data.hexString.getter();
    }

    v39 = v37;
    v40 = v38;
    v41 = v36;
    v42 = sub_1005210C4();
    v43 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v43;
    v46 = sub_100771D58(v39, v40);
    v47 = v43[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_34;
    }

    v50 = v45;
    if (v43[3] >= v49)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v53 = v73;
        if (v45)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_101008CF0();
        v53 = v73;
        if (v50)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_100FEE3D4(v49, isUniquelyReferenced_nonNull_native);
      v51 = sub_100771D58(v39, v40);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_36;
      }

      v46 = v51;
      v53 = v73;
      if (v50)
      {
LABEL_4:
        v19 = v53;
        v20 = v53[7];
        v21 = *(v20 + 8 * v46);
        *(v20 + 8 * v46) = v42;

        goto LABEL_5;
      }
    }

    v53[(v46 >> 6) + 8] |= 1 << v46;
    v54 = (v53[6] + 16 * v46);
    *v54 = v39;
    v54[1] = v40;
    *(v53[7] + 8 * v46) = v42;
    v55 = v53[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_35;
    }

    v19 = v53;
    v53[2] = v57;
LABEL_5:
    sub_100016590(v71, v70);
    sub_100523C5C(v41, type metadata accessor for OwnedBeaconGroup.PairingState);
    v12 = v66;
    v10 = v67;
  }

  if (v61 <= v18 + 1)
  {
    v23 = v18 + 1;
  }

  else
  {
    v23 = v61;
  }

  v24 = v23 - 1;
  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v22 >= v61)
    {
      v58 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v58 - 8) + 56))(v10, 1, 1, v58);
      v17 = 0;
      v18 = v24;
      goto LABEL_17;
    }

    v17 = *(v14 + 8 * v22);
    ++v18;
    if (v17)
    {
      v18 = v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005210C4()
{
  v1 = type metadata accessor for UUID();
  v76 = *(v1 - 8);
  v77 = v1;
  __chkstk_darwin(v1);
  v75 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v70 - v7;
  v9 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v74 = &v70 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v70 - v16;
  __chkstk_darwin(v15);
  v73 = &v70 - v18;
  v19 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  __chkstk_darwin(v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C218;
  v23 = [objc_opt_self() sharedInstance];
  v24 = [v23 isInternalBuild];

  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
    v26 = [v22 BOOLForKey:v25];

    if (v26)
    {
      v27 = objc_allocWithZone(SPPairingState);

      return [v27 initWithStatus:2 beaconIdentifier:0 macAddress:0 pairingEpoch:0 partId:255 pairingType:-1];
    }
  }

  sub_100524368(v0, v21, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return [objc_allocWithZone(SPPairingState) initWithStatus:2 beaconIdentifier:0 macAddress:0 pairingEpoch:0 partId:255 pairingType:-1];
    }

    v30 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v31 = v30[12];
    sub_100006654(*&v21[v30[16]], *&v21[v30[16] + 8]);
    v32 = &v21[v30[20]];
    v70 = *v32;
    v33 = v32[8];
    v34 = &v21[v30[24]];
    LODWORD(v73) = *v34;
    v71 = v34[1];
    v72 = v34[2];
    v35 = v75;
    v36 = v76;
    v37 = v77;
    (*(v76 + 32))(v75, v21, v77);
    v38 = &v21[v31];
    v39 = v74;
    sub_1000D2AD8(v38, v74, &qword_1016A40D0, &unk_10138BE70);
    (*(v36 + 16))(v6, v35, v37);
    (*(v36 + 56))(v6, 0, 1, v37);
    sub_1000D2A70(v39, v12, &qword_1016A40D0, &unk_10138BE70);
    v40 = type metadata accessor for MACAddress();
    v41 = *(v40 - 8);
    if ((*(v41 + 48))(v12, 1, v40) == 1)
    {
      sub_10000B3A8(v12, &qword_1016A40D0, &unk_10138BE70);
      v42 = 0;
      v43 = 0xF000000000000000;
      v45 = v76;
      v44 = v77;
      if ((v33 & 1) == 0)
      {
LABEL_12:
        v46.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
LABEL_18:
        if (v71)
        {
          v57 = -1;
        }

        else
        {
          v57 = v73;
        }

        v58 = qword_1013B08F0[v72];
        if ((*(v45 + 48))(v6, 1, v44) == 1)
        {
          isa = 0;
        }

        else
        {
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (*(v45 + 8))(v6, v44);
        }

        if (v43 >> 60 == 15)
        {
          v60 = 0;
        }

        else
        {
          v60 = Data._bridgeToObjectiveC()().super.isa;
          sub_100006654(v42, v43);
        }

        v61 = [objc_allocWithZone(SPPairingState) initWithStatus:1 beaconIdentifier:isa macAddress:v60 pairingEpoch:v46.super.super.isa partId:v57 pairingType:v58];

        sub_10000B3A8(v74, &qword_1016A40D0, &unk_10138BE70);
        (*(v45 + 8))(v75, v44);
        return v61;
      }
    }

    else
    {
      v42 = MACAddress.data.getter();
      v43 = v56;
      (*(v41 + 8))(v12, v40);
      v45 = v76;
      v44 = v77;
      if ((v33 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v46.super.super.isa = 0;
    goto LABEL_18;
  }

  v47 = &v21[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v73;
  sub_1000D2AD8(v21, v73, &qword_1016A40D0, &unk_10138BE70);
  (*(v76 + 56))(v8, 1, 1, v77);
  sub_1000D2A70(v51, v17, &qword_1016A40D0, &unk_10138BE70);
  v52 = type metadata accessor for MACAddress();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v17, 1, v52) == 1)
  {
    sub_10000B3A8(v17, &qword_1016A40D0, &unk_10138BE70);
    v54 = 0;
    v55 = 0xF000000000000000;
  }

  else
  {
    v54 = MACAddress.data.getter();
    v55 = v62;
    (*(v53 + 8))(v17, v52);
  }

  if (v49)
  {
    v63 = -1;
  }

  else
  {
    v63 = v48;
  }

  v64 = qword_1013B08F0[v50];
  v66 = v76;
  v65 = v77;
  if ((*(v76 + 48))(v8, 1, v77) == 1)
  {
    v67 = 0;
  }

  else
  {
    v67 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v66 + 8))(v8, v65);
  }

  if (v55 >> 60 == 15)
  {
    v68 = 0;
  }

  else
  {
    v68 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v54, v55);
  }

  v69 = [objc_allocWithZone(SPPairingState) initWithStatus:0 beaconIdentifier:v67 macAddress:v68 pairingEpoch:0 partId:v63 pairingType:v64];

  sub_10000B3A8(v73, &qword_1016A40D0, &unk_10138BE70);
  return v69;
}

uint64_t sub_10052197C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (*(v15 + 16))
  {
    v16 = sub_100771E30(a1, a2);
    if (v17)
    {
      sub_100524368(*(v15 + 56) + *(v6 + 72) * v16, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v12, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
      sub_100523BF4(v14, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v18 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v19 = *&v9[*(v18 + 64)];
        sub_10000B3A8(&v9[*(v18 + 48)], &qword_1016A40D0, &unk_10138BE70);
        v20 = type metadata accessor for UUID();
        (*(*(v20 - 8) + 8))(v9, v20);
        return v19;
      }

      sub_100523C5C(v9, type metadata accessor for OwnedBeaconGroup.PairingState);
    }
  }

  return 0;
}

uint64_t sub_100521BB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = *(v2 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  if (!*(v15 + 16))
  {
    return 3;
  }

  v16 = sub_100771E30(a1, a2);
  if ((v17 & 1) == 0)
  {
    return 3;
  }

  sub_100524368(*(v15 + 56) + *(v6 + 72) * v16, v12, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v12, v14, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100523BF4(v14, v9, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = v9[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48) + 2];
    sub_10000B3A8(v9, &qword_1016A40D0, &unk_10138BE70);
    return v21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 3;
  }

  v19 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
  v20 = v19[12];
  sub_100006654(*&v9[v19[16]], *&v9[v19[16] + 8]);
  v21 = v9[v19[24] + 2];
  sub_10000B3A8(&v9[v20], &qword_1016A40D0, &unk_10138BE70);
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 8))(v9, v22);
  return v21;
}

BOOL sub_100521E14(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000BC4D4(&qword_101699858, &qword_101391FF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  sub_100519BCC(a1, a2, &v23 - v9);
  v11 = type metadata accessor for UUID();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_10000B3A8(v10, &qword_1016980D0, &unk_10138F3B0);
  if (v12 == 1)
  {
    v13 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    type metadata accessor for OwnedBeaconGroup(0);
    sub_100017D5C(a1, a2);
    sub_1001DD6C0(v7, a1, a2);
  }

  else
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177C418);
    sub_100017D5C(a1, a2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_100016590(a1, a2);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 141558275;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      static String.Encoding.utf8.getter();
      v19 = String.init(data:encoding:)();
      if (!v20)
      {
        v19 = Data.hexString.getter();
      }

      v21 = sub_1000136BC(v19, v20, &v24);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{private,mask.hash}s is already paired!", v17, 0x16u);
      sub_100007BAC(v18);
    }
  }

  return v12 == 1;
}

uint64_t sub_100522190()
{
  v1 = v0;
  v2 = &qword_1016A40D0;
  v3 = &unk_10138BE70;
  v4 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v5 = __chkstk_darwin(v4 - 8);
  v148 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v147 = &v139 - v7;
  v8 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v146 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v142 = &v139 - v13;
  v14 = __chkstk_darwin(v12);
  v145 = &v139 - v15;
  v16 = __chkstk_darwin(v14);
  v141 = &v139 - v17;
  v18 = __chkstk_darwin(v16);
  v144 = &v139 - v19;
  v20 = __chkstk_darwin(v18);
  v140 = &v139 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v139 - v23;
  __chkstk_darwin(v22);
  v149 = &v139 - v25;
  v26 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v139 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v153 = (&v139 - v30);
  v139 = type metadata accessor for OwnedBeaconGroup(0);
  v156 = *(v139 + 40);
  v157 = v1;
  v31 = *(v1 + v156);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v143 = (v33 + 63) >> 6;
  v150 = v31;

  v36 = 0;
  v158 = v8;
  v151 = v32;
  v152 = v24;
  v154 = v29;
  v155 = v9;
  while (v35)
  {
    v38 = v36;
LABEL_16:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = v41 | (v38 << 6);
    v43 = v149;
    v44 = (*(v150 + 48) + 16 * v42);
    v45 = *v44;
    v46 = v44[1];
    sub_100524368(*(v150 + 56) + *(v155 + 72) * v42, v149, type metadata accessor for OwnedBeaconGroup.PairingState);
    v47 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v48 = *(v47 + 48);
    v49 = v154;
    *v154 = v45;
    v49[1] = v46;
    v50 = v43;
    v29 = v49;
    sub_100523BF4(v50, v49 + v48, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v47 - 8) + 56))(v29, 0, 1, v47);
    sub_100017D5C(v45, v46);
LABEL_17:
    v51 = v153;
    sub_1000D2AD8(v29, v153, &unk_1016BBEA0, &unk_101395A80);
    v52 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
    {
    }

    v53 = v51[1];
    v159 = *v51;
    v160 = v53;
    sub_100523BF4(v51 + *(v52 + 48), v24, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v55 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
        v56 = v55[12];
        sub_100006654(*&v24[v55[16]], *&v24[v55[16] + 8]);
        v57 = &v24[v55[24]];
        LOBYTE(v55) = *v57;
        v58 = v57[1];
        v59 = v57[2];
        v60 = v2;
        v61 = v3;
        v62 = v148;
        sub_1000D2AD8(&v24[v56], v148, v60, v61);
        v63 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v64 = v141;
        v65 = (v141 + *(v63 + 48));
        v66 = v62;
        v3 = v61;
        v2 = v60;
        sub_1000D2A70(v66, v141, v60, v3);
        *v65 = v55;
        v65[1] = v58;
        v65[2] = v59;
        swift_storeEnumTagMultiPayload();
        sub_100523BF4(v64, v145, type metadata accessor for OwnedBeaconGroup.PairingState);
        v68 = v156;
        v67 = v157;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = *(v67 + v68);
        v161 = v70;
        v71 = sub_100771E30(v159, v160);
        v73 = v70[2];
        v74 = (v72 & 1) == 0;
        v75 = __OFADD__(v73, v74);
        v76 = v73 + v74;
        if (v75)
        {
          goto LABEL_54;
        }

        v77 = v72;
        if (v70[3] >= v76)
        {
          v32 = v151;
          v24 = v152;
          v29 = v154;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v136 = v71;
            sub_10100586C();
            v71 = v136;
          }
        }

        else
        {
          sub_100FE71DC(v76, isUniquelyReferenced_nonNull_native);
          v71 = sub_100771E30(v159, v160);
          v32 = v151;
          v24 = v152;
          v29 = v154;
          if ((v77 & 1) != (v78 & 1))
          {
            goto LABEL_60;
          }
        }

        v118 = v155;
        v119 = v161;
        if (v77)
        {
          sub_100101D24(v145, v161[7] + *(v155 + 72) * v71);
          sub_100016590(v159, v160);
          sub_10000B3A8(v148, v2, v3);
        }

        else
        {
          v161[(v71 >> 6) + 8] |= 1 << v71;
          v120 = (v119[6] + 16 * v71);
          v121 = v160;
          *v120 = v159;
          v120[1] = v121;
          sub_100523BF4(v145, v119[7] + *(v118 + 72) * v71, type metadata accessor for OwnedBeaconGroup.PairingState);
          sub_10000B3A8(v148, v2, v3);
          v122 = v119[2];
          v75 = __OFADD__(v122, 1);
          v123 = v122 + 1;
          if (v75)
          {
            goto LABEL_59;
          }

          v119[2] = v123;
        }

        *(v157 + v156) = v119;
        v37 = type metadata accessor for UUID();
        (*(*(v37 - 8) + 8))(v24, v37);
      }

      else
      {
        v99 = v2;
        v100 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
        v101 = v142;
        v102 = &v142[*(v100 + 48)];
        v103 = *(v139 + 28);
        v104 = type metadata accessor for MACAddress();
        v105 = *(v104 - 8);
        v106 = v157;
        (*(v105 + 16))(v101, v157 + v103, v104);
        (*(v105 + 56))(v101, 0, 1, v104);
        *v102 = 256;
        v102[2] = 3;
        swift_storeEnumTagMultiPayload();
        sub_100523BF4(v101, v146, type metadata accessor for OwnedBeaconGroup.PairingState);
        v107 = v156;
        v108 = swift_isUniquelyReferenced_nonNull_native();
        v161 = *(v106 + v107);
        v109 = v161;
        v110 = sub_100771E30(v159, v160);
        v112 = v109[2];
        v113 = (v111 & 1) == 0;
        v75 = __OFADD__(v112, v113);
        v114 = v112 + v113;
        if (v75)
        {
          goto LABEL_55;
        }

        v115 = v111;
        v32 = v151;
        if (v109[3] >= v114)
        {
          v2 = v99;
          v24 = v152;
          v29 = v154;
          if ((v108 & 1) == 0)
          {
            v137 = v110;
            sub_10100586C();
            v110 = v137;
          }
        }

        else
        {
          sub_100FE71DC(v114, v108);
          v110 = sub_100771E30(v159, v160);
          v24 = v152;
          v29 = v154;
          if ((v115 & 1) != (v116 & 1))
          {
            goto LABEL_60;
          }

          v2 = v99;
        }

        v3 = &unk_10138BE70;
        v130 = v161;
        v131 = v155;
        if (v115)
        {
          sub_100101D24(v146, v161[7] + *(v155 + 72) * v110);
          sub_100016590(v159, v160);
        }

        else
        {
          v161[(v110 >> 6) + 8] |= 1 << v110;
          v132 = (v130[6] + 16 * v110);
          v133 = v160;
          *v132 = v159;
          v132[1] = v133;
          sub_100523BF4(v146, v130[7] + *(v131 + 72) * v110, type metadata accessor for OwnedBeaconGroup.PairingState);
          v134 = v130[2];
          v75 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v75)
          {
            goto LABEL_57;
          }

          v130[2] = v135;
        }

        *(v157 + v156) = v130;
      }
    }

    else
    {
      v79 = sub_1000BC4D4(&qword_1016A4230, &unk_101391950);
      v80 = &v24[*(v79 + 48)];
      v81 = *v80;
      v82 = v80[1];
      v83 = v80[2];
      v84 = v147;
      sub_1000D2AD8(v24, v147, v2, v3);
      v85 = v140;
      v86 = (v140 + *(v79 + 48));
      sub_1000D2A70(v84, v140, v2, v3);
      *v86 = v81;
      v86[1] = v82;
      v86[2] = v83;
      swift_storeEnumTagMultiPayload();
      sub_100523BF4(v85, v144, type metadata accessor for OwnedBeaconGroup.PairingState);
      v88 = v156;
      v87 = v157;
      v89 = swift_isUniquelyReferenced_nonNull_native();
      v90 = *(v87 + v88);
      v161 = v90;
      v92 = sub_100771E30(v159, v160);
      v93 = v90[2];
      v94 = (v91 & 1) == 0;
      v95 = v93 + v94;
      if (__OFADD__(v93, v94))
      {
        goto LABEL_56;
      }

      v96 = v91;
      if (v90[3] >= v95)
      {
        v32 = v151;
        v24 = v152;
        if ((v89 & 1) == 0)
        {
          sub_10100586C();
        }
      }

      else
      {
        sub_100FE71DC(v95, v89);
        v97 = sub_100771E30(v159, v160);
        v32 = v151;
        v24 = v152;
        if ((v96 & 1) != (v98 & 1))
        {
          goto LABEL_60;
        }

        v92 = v97;
      }

      v124 = v155;
      v125 = v161;
      if (v96)
      {
        sub_100101D24(v144, v161[7] + *(v155 + 72) * v92);
        sub_100016590(v159, v160);
        sub_10000B3A8(v147, v2, v3);
      }

      else
      {
        v161[(v92 >> 6) + 8] |= 1 << v92;
        v126 = (v125[6] + 16 * v92);
        v127 = v160;
        *v126 = v159;
        v126[1] = v127;
        sub_100523BF4(v144, v125[7] + *(v124 + 72) * v92, type metadata accessor for OwnedBeaconGroup.PairingState);
        sub_10000B3A8(v147, v2, v3);
        v128 = v125[2];
        v75 = __OFADD__(v128, 1);
        v129 = v128 + 1;
        if (v75)
        {
          goto LABEL_58;
        }

        v125[2] = v129;
      }

      *(v157 + v156) = v125;
      v29 = v154;
    }
  }

  if (v143 <= v36 + 1)
  {
    v39 = v36 + 1;
  }

  else
  {
    v39 = v143;
  }

  v40 = v39 - 1;
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v143)
    {
      v117 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v117 - 8) + 56))(v29, 1, 1, v117);
      v35 = 0;
      v36 = v40;
      goto LABEL_17;
    }

    v35 = *(v32 + 8 * v38);
    ++v36;
    if (v35)
    {
      v36 = v38;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100522DB8(unsigned __int8 a1)
{
  v44 = a1;
  v50 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v48 = *(v50 - 8);
  v2 = __chkstk_darwin(v50);
  v4 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v47 = &v43[-v5];
  v6 = sub_1000BC4D4(&unk_1016BBEA0, &unk_101395A80);
  v7 = __chkstk_darwin(v6 - 8);
  v51 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v43[-v9];
  v11 = *(v1 + *(type metadata accessor for OwnedBeaconGroup(0) + 40));
  v12 = v11 + 64;
  v13 = 1 << *(v11 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v11 + 64);
  v16 = (v13 + 63) >> 6;
  v49 = v11;

  v17 = 0;
  v45 = v10;
  v46 = v4;
  while (v15)
  {
    v18 = v17;
LABEL_16:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v18 << 6);
    v24 = (*(v49 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = v47;
    sub_100524368(*(v49 + 56) + *(v48 + 72) * v23, v47, type metadata accessor for OwnedBeaconGroup.PairingState);
    v28 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    v29 = *(v28 + 48);
    v21 = v51;
    *v51 = v25;
    *(v21 + 8) = v26;
    sub_100523BF4(v27, v21 + v29, type metadata accessor for OwnedBeaconGroup.PairingState);
    (*(*(v28 - 8) + 56))(v21, 0, 1, v28);
    sub_100017D5C(v25, v26);
    v10 = v45;
    v4 = v46;
LABEL_17:
    sub_1000D2AD8(v21, v10, &unk_1016BBEA0, &unk_101395A80);
    v30 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
    if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
    {
LABEL_27:

      return;
    }

    v31 = *v10;
    v32 = v10[1];
    sub_100523BF4(v10 + *(v30 + 48), v4, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v52 = v31;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {

        sub_100016590(v31, v32);
        return;
      }

      v34 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
      v35 = v34[12];
      sub_100006654(*&v4[v34[16]], *&v4[v34[16] + 8]);
      v36 = &v4[v34[24]];
      v37 = *v36;
      v38 = v36[1];
      sub_10000B3A8(&v4[v35], &qword_1016A40D0, &unk_10138BE70);
      v39 = type metadata accessor for UUID();
      (*(*(v39 - 8) + 8))(v4, v39);
      if (v38)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v40 = &v4[*(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48)];
      v37 = *v40;
      v41 = v40[1];
      sub_10000B3A8(v4, &qword_1016A40D0, &unk_10138BE70);
      if (v41)
      {
        goto LABEL_5;
      }
    }

    if (v37 == v44)
    {
      goto LABEL_27;
    }

LABEL_5:
    sub_100016590(v52, v32);
  }

  if (v16 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 - 1;
  v21 = v51;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      v42 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
      (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
      v15 = 0;
      v17 = v20;
      goto LABEL_17;
    }

    v15 = *(v12 + 8 * v18);
    ++v17;
    if (v15)
    {
      v17 = v18;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1005232D8(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v3 = type metadata accessor for Date();
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v5 - 8);
  v44 = &v40 - v6;
  v7 = type metadata accessor for BeaconObservation(0);
  v8 = __chkstk_darwin(v7);
  v49 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v42 = &v40 - v11;
  __chkstk_darwin(v10);
  v14 = &v40 - v13;
  v15 = *(a2 + 16);
  v43 = v12;
  if (v15)
  {
    v16 = 0;
    v17 = *(v12 + 72);
    v18 = _swiftEmptyArrayStorage;
    v48 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v50 = a2 + v48;
    do
    {
      sub_100524368(v50 + v17 * v16, v14, type metadata accessor for BeaconObservation);
      sub_100525F50();
      v51 = Set.init(minimumCapacity:)();
      sub_100DEEF64(&v52, 37);
      sub_100DEEF64(&v52, 38);
      v19 = v51;
      if (*(v51 + 16))
      {
        v20 = v7;
        v21 = v14[*(v7 + 24)];
        Hasher.init(_seed:)();
        v22 = qword_1013B0910[v21];
        Hasher._combine(_:)(v22);
        v23 = Hasher._finalize()();
        v24 = -1 << *(v19 + 32);
        v25 = v23 & ~v24;
        if ((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (qword_1013B0910[*(*(v19 + 48) + v25)] != v22)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v19 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          sub_100523BF4(v14, v49, type metadata accessor for BeaconObservation);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_101124308(0, v18[2] + 1, 1);
            v18 = v53;
          }

          v29 = v18[2];
          v28 = v18[3];
          if (v29 >= v28 >> 1)
          {
            sub_101124308((v28 > 1), v29 + 1, 1);
            v18 = v53;
          }

          v18[2] = v29 + 1;
          sub_100523BF4(v49, v18 + v48 + v29 * v17, type metadata accessor for BeaconObservation);
        }

        else
        {
LABEL_10:

          sub_100523C5C(v14, type metadata accessor for BeaconObservation);
        }

        v7 = v20;
      }

      else
      {

        sub_100523C5C(v14, type metadata accessor for BeaconObservation);
      }

      ++v16;
    }

    while (v16 != v15);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v30 = v44;
  sub_1012BB138(v18, v44);

  if ((*(v43 + 48))(v30, 1, v7) == 1)
  {
    sub_10000B3A8(v30, &qword_1016A42E0, &qword_1013B0010);
    v31 = 0;
    v32 = 1;
    v34 = v46;
    v33 = v47;
    v35 = v45;
  }

  else
  {
    v36 = v42;
    sub_100523BF4(v30, v42, type metadata accessor for BeaconObservation);
    v37 = *(v36 + *(v7 + 24));
    v34 = v46;
    v33 = v47;
    v35 = v45;
    if (v37 == 37)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      OS_dispatch_queue.sync<A>(execute:)();
      sub_101073CEC(v51);

      Date.addingTimeInterval(_:)();
      v38 = v41;
      static Date.trustedNow.getter(v41);
      v31 = static Date.> infix(_:_:)();
      (*(v35 + 8))(v38, v34);
      sub_100523C5C(v36, type metadata accessor for BeaconObservation);
      v32 = 0;
    }

    else
    {
      sub_100523C5C(v36, type metadata accessor for BeaconObservation);
      v31 = 0;
      v32 = 1;
    }
  }

  (*(v35 + 56))(v33, v32, 1, v34);
  return v31 & 1;
}

uint64_t sub_1005238D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100523A38(&unk_1016A4160, type metadata accessor for OwnedBeaconGroup.VersionedGroupMACAddress, &unk_1013B0764);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  return sub_100016590(a1, a2);
}

uint64_t sub_1005239B4(uint64_t a1)
{
  *(a1 + 8) = sub_100523A38(&qword_1016A4130, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF10);
  result = sub_100523A38(&qword_1016A4138, type metadata accessor for OwnedBeaconGroup, &unk_1013AFEE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100523A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100523A80(uint64_t a1)
{
  result = sub_100523A38(&unk_1016A4140, type metadata accessor for OwnedBeaconGroup, &unk_1013AFF38);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100523AF8()
{
  result = qword_1016A4150;
  if (!qword_1016A4150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4150);
  }

  return result;
}

unint64_t sub_100523B4C()
{
  result = qword_1016B1560;
  if (!qword_1016B1560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1560);
  }

  return result;
}

unint64_t sub_100523BA0()
{
  result = qword_1016A4170;
  if (!qword_1016A4170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4170);
  }

  return result;
}

uint64_t sub_100523BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100523C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100523CBC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_100523E94(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_100523D34(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_100523E94(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_100523CBC(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t sub_100523E94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v38 = a1;
  v49 = sub_1000BC4D4(&qword_1016A4190, &unk_1013A3550);
  v4 = __chkstk_darwin(v49);
  v48 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v47 = (&v36 - v6);
  v7 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v45 = *(v7 - 8);
  v46 = v7;
  v8 = __chkstk_darwin(v7);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v36 - v11;
  v12 = 0;
  v50 = a3;
  v13 = *(a3 + 64);
  v41 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v39 = 0;
  v40 = (v14 + 63) >> 6;
  v17 = v43;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v51 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v50[7];
    v23 = (v50[6] + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(v45 + 72);
    v42 = v21;
    sub_100524368(v22 + v26 * v21, v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    v27 = v47;
    *v47 = v25;
    *(v27 + 8) = v24;
    v28 = v49;
    sub_100524368(v17, v27 + *(v49 + 48), type metadata accessor for OwnedBeaconGroup.PairingState);
    v29 = v48;
    sub_1000D2AD8(v27, v48, &qword_1016A4190, &unk_1013A3550);
    v31 = *v29;
    v30 = v29[1];
    sub_100017D5C(v25, v24);
    sub_100017D5C(v25, v24);
    sub_100016590(v31, v30);
    v32 = *(v28 + 48);
    v33 = v44;
    sub_100524368(v29 + v32, v44, type metadata accessor for OwnedBeaconGroup.PairingState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100523C5C(v33, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523C5C(v29 + v32, type metadata accessor for OwnedBeaconGroup.PairingState);
    sub_100523C5C(v17, type metadata accessor for OwnedBeaconGroup.PairingState);
    result = sub_100016590(v25, v24);
    v16 = v51;
    if (!EnumCaseMultiPayload)
    {
      *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        return sub_10061C5F4(v38, v37, v39, v50);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v40)
    {
      return sub_10061C5F4(v38, v37, v39, v50);
    }

    v20 = *(v41 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v51 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100524204()
{
  result = qword_1016A41B0;
  if (!qword_1016A41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41B0);
  }

  return result;
}

unint64_t sub_100524258()
{
  result = qword_1016A41C0;
  if (!qword_1016A41C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41C0);
  }

  return result;
}

unint64_t sub_1005242AC()
{
  result = qword_1016A41E0;
  if (!qword_1016A41E0)
  {
    sub_1000BC580(&qword_1016A41D8, &qword_1013AFF88);
    sub_100523B4C();
    sub_100523A38(&qword_1016A4178, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFCA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41E0);
  }

  return result;
}

uint64_t sub_100524368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1005243D0()
{
  result = qword_1016A41F8;
  if (!qword_1016A41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A41F8);
  }

  return result;
}

unint64_t sub_100524424()
{
  result = qword_1016A4200;
  if (!qword_1016A4200)
  {
    sub_1000BC580(&qword_1016A41D8, &qword_1013AFF88);
    sub_100523BA0();
    sub_100523A38(&unk_1016A4180, type metadata accessor for OwnedBeaconGroup.PairingState, &unk_1013AFC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4200);
  }

  return result;
}

BOOL sub_1005244E0(int a1, int a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }
  }

  else if ((a2 & 0x100) != 0 || a1 != a2)
  {
    return 0;
  }

  v3 = a2 & 0xFF0000;
  if ((a1 & 0xFF0000) != 0x30000)
  {
    return v3 != 196608 && ((a2 ^ a1) & 0xFF0000) == 0;
  }

  return v3 == 196608;
}

uint64_t sub_100524548(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = type metadata accessor for OwnedBeaconGroup(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static MACAddress.== infix(_:_:)() & 1) == 0 || *(a1 + v5[8]) != *(a2 + v5[8]))
  {
    return 0;
  }

  v7 = v5[9];
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v8 == *v10 && v9 == v10[1];
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = v5[10];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_100DE8118(v13, v14);
}

uint64_t sub_100524658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v120 = *(v4 - 8);
  v121 = v4;
  __chkstk_darwin(v4);
  v117 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for MACAddress();
  v119 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v8 = __chkstk_darwin(v7 - 8);
  v111 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v118 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  v116 = &v96 - v13;
  __chkstk_darwin(v12);
  v15 = &v96 - v14;
  v114 = sub_1000BC4D4(&qword_1016A4218, &qword_1013AFF98);
  v16 = __chkstk_darwin(v114);
  v113 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v96 - v18;
  v20 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v96 - v24;
  v26 = sub_1000BC4D4(&unk_1016A4220, &unk_1013AFFA0);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v96 - v28;
  v30 = &v96 + *(v27 + 56) - v28;
  sub_100524368(a1, &v96 - v28, type metadata accessor for OwnedBeaconGroup.PairingState);
  sub_100524368(a2, v30, type metadata accessor for OwnedBeaconGroup.PairingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v64 = v15;
    v65 = v29;
    sub_100524368(v29, v25, type metadata accessor for OwnedBeaconGroup.PairingState);
    v66 = *(sub_1000BC4D4(&qword_1016A4230, &unk_101391950) + 48);
    v67 = v25[v66];
    v68 = v25[v66 + 1];
    v69 = v25[v66 + 2];
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10000B3A8(v25, &qword_1016A40D0, &unk_10138BE70);
      v29 = v65;
      goto LABEL_15;
    }

    LODWORD(v121) = v69;
    LODWORD(v117) = v30[v66];
    LODWORD(v120) = v30[v66 + 1];
    LODWORD(v118) = v30[v66 + 2];
    v72 = *(v114 + 48);
    sub_1000D2AD8(v25, v19, &qword_1016A40D0, &unk_10138BE70);
    sub_1000D2AD8(v30, &v19[v72], &qword_1016A40D0, &unk_10138BE70);
    v73 = *(v119 + 48);
    v74 = v115;
    if (v73(v19, 1, v115) == 1)
    {
      if (v73(&v19[v72], 1, v74) == 1)
      {
        sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
LABEL_27:
        if (v68)
        {
          v84 = v121;
          if (!v120)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v85 = v120;
          if (v67 != v117)
          {
            v85 = 1;
          }

          v84 = v121;
          if (v85)
          {
            goto LABEL_38;
          }
        }

        if (v84 != 3)
        {
          if (v118 == 3 || v84 != v118)
          {
            goto LABEL_38;
          }

          goto LABEL_50;
        }

        if (v118 == 3)
        {
LABEL_50:
          v70 = v65;
          goto LABEL_13;
        }

LABEL_38:
        v70 = v65;
        goto LABEL_39;
      }
    }

    else
    {
      sub_1000D2A70(v19, v64, &qword_1016A40D0, &unk_10138BE70);
      if (v73(&v19[v72], 1, v74) != 1)
      {
        v78 = v64;
        v79 = v119;
        v80 = &v19[v72];
        v81 = v112;
        (*(v119 + 32))(v112, v80, v74);
        sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v82 = dispatch thunk of static Equatable.== infix(_:_:)();
        v83 = *(v79 + 8);
        v83(v81, v74);
        v83(v78, v74);
        sub_10000B3A8(v19, &qword_1016A40D0, &unk_10138BE70);
        if ((v82 & 1) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      (*(v119 + 8))(v64, v74);
    }

    sub_10000B3A8(v19, &qword_1016A4218, &qword_1013AFF98);
    goto LABEL_38;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v110 = v29;
    sub_100524368(v29, v23, type metadata accessor for OwnedBeaconGroup.PairingState);
    v32 = sub_1000BC4D4(&qword_10169BCC0, &unk_1013AFF70);
    v33 = v32[12];
    v34 = v32[16];
    v36 = *&v23[v34];
    v35 = *&v23[v34 + 8];
    v37 = v32[20];
    v106 = *&v23[v37];
    v109 = v23[v37 + 8];
    v38 = v32[24];
    v39 = v23[v38];
    v107 = v23[v38 + 1];
    v40 = v23[v38 + 2];
    v104 = v39;
    v105 = v40;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v102 = v36;
      v103 = v35;
      v41 = *&v30[v34];
      v108 = *&v30[v34 + 8];
      v99 = *&v30[v37];
      v101 = v30[v37 + 8];
      v97 = v30[v38];
      v100 = v30[v38 + 1];
      v98 = v30[v38 + 2];
      v42 = v120;
      v43 = v121;
      v44 = v117;
      (*(v120 + 32))(v117, v30, v121);
      v45 = v116;
      sub_1000D2AD8(&v23[v33], v116, &qword_1016A40D0, &unk_10138BE70);
      v46 = &v30[v33];
      v47 = v118;
      sub_1000D2AD8(v46, v118, &qword_1016A40D0, &unk_10138BE70);
      v48 = static UUID.== infix(_:_:)();
      v49 = *(v42 + 8);
      v49(v23, v43);
      if ((v48 & 1) == 0)
      {
        sub_100006654(v41, v108);
        sub_100006654(v102, v103);
        sub_10000B3A8(v47, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v45, &qword_1016A40D0, &unk_10138BE70);
        v49(v44, v43);
        goto LABEL_20;
      }

      v120 = v41;
      v96 = v49;
      v50 = v113;
      v51 = *(v114 + 48);
      sub_1000D2A70(v45, v113, &qword_1016A40D0, &unk_10138BE70);
      sub_1000D2A70(v47, v50 + v51, &qword_1016A40D0, &unk_10138BE70);
      v52 = *(v119 + 48);
      v53 = v115;
      if (v52(v50, 1, v115) == 1)
      {
        v54 = v45;
        v55 = v52(v50 + v51, 1, v53) == 1;
        v56 = v50;
        v57 = v117;
        v58 = v43;
        if (!v55)
        {
          sub_100006654(v102, v103);
          sub_100006654(v120, v108);
LABEL_36:
          v65 = v110;
          v59 = v118;
          v62 = v96;
          sub_10000B3A8(v113, &qword_1016A4218, &qword_1013AFF98);
LABEL_37:
          sub_10000B3A8(v59, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v116, &qword_1016A40D0, &unk_10138BE70);
          v62(v57, v58);
          goto LABEL_38;
        }

        sub_10000B3A8(v56, &qword_1016A40D0, &unk_10138BE70);
        v59 = v118;
        v61 = v102;
        v60 = v103;
        v62 = v96;
        v63 = v120;
      }

      else
      {
        v75 = v111;
        sub_1000D2A70(v50, v111, &qword_1016A40D0, &unk_10138BE70);
        v76 = v52(v50 + v51, 1, v53);
        v77 = v50;
        v57 = v117;
        v58 = v43;
        if (v76 == 1)
        {
          sub_100006654(v102, v103);
          sub_100006654(v120, v108);
          (*(v119 + 8))(v75, v53);
          goto LABEL_36;
        }

        v86 = v75;
        v87 = v119;
        v88 = v77 + v51;
        v89 = v112;
        (*(v119 + 32))(v112, v88, v53);
        sub_100523A38(&unk_1016C7F60, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
        v90 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91 = *(v87 + 8);
        v91(v89, v53);
        v91(v86, v53);
        sub_10000B3A8(v77, &qword_1016A40D0, &unk_10138BE70);
        v54 = v116;
        v59 = v118;
        v61 = v102;
        v60 = v103;
        v62 = v96;
        v63 = v120;
        if ((v90 & 1) == 0)
        {
          sub_100006654(v102, v103);
          sub_100006654(v63, v108);
          v65 = v110;
          goto LABEL_37;
        }
      }

      if (v60 >> 60 == 15)
      {
        sub_10000B3A8(v59, &qword_1016A40D0, &unk_10138BE70);
        sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
        v62(v57, v58);
        v92 = v108;
        if (v108 >> 60 == 15)
        {
          sub_100006654(v61, v60);
LABEL_53:
          if (v109)
          {
            if (v101)
            {
LABEL_59:
              v70 = v110;
              if (v107)
              {
                if (!v100)
                {
                  goto LABEL_39;
                }
              }

              else
              {
                v95 = v100;
                if (v104 != v97)
                {
                  v95 = 1;
                }

                if (v95)
                {
                  goto LABEL_39;
                }
              }

              if (v105 == 3)
              {
                if (v98 != 3)
                {
                  goto LABEL_39;
                }
              }

              else if (v98 == 3 || v105 != v98)
              {
                goto LABEL_39;
              }

LABEL_13:
              sub_100523C5C(v70, type metadata accessor for OwnedBeaconGroup.PairingState);
              return 1;
            }
          }

          else
          {
            v94 = v101;
            if (v106 != v99)
            {
              v94 = 1;
            }

            if ((v94 & 1) == 0)
            {
              goto LABEL_59;
            }
          }

LABEL_20:
          v70 = v110;
LABEL_39:
          sub_100523C5C(v70, type metadata accessor for OwnedBeaconGroup.PairingState);
          return 0;
        }
      }

      else
      {
        v93 = v108;
        if (v108 >> 60 != 15)
        {
          sub_10002E98C(v61, v60);
          sub_10002E98C(v63, v93);
          LODWORD(v120) = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v61, v60, v63, v93);
          sub_100006654(v63, v93);
          sub_100006654(v63, v93);
          sub_100006654(v61, v60);
          sub_10000B3A8(v59, &qword_1016A40D0, &unk_10138BE70);
          sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
          v62(v57, v58);
          sub_100006654(v61, v60);
          if ((v120 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_53;
        }

        sub_10000B3A8(v59, &qword_1016A40D0, &unk_10138BE70);
        v92 = v108;
        sub_10000B3A8(v54, &qword_1016A40D0, &unk_10138BE70);
        v62(v57, v58);
      }

      sub_100006654(v61, v60);
      sub_100006654(v120, v92);
      goto LABEL_20;
    }

    sub_100006654(v36, v35);
    sub_10000B3A8(&v23[v33], &qword_1016A40D0, &unk_10138BE70);
    (*(v120 + 8))(v23, v121);
    v29 = v110;
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v70 = v29;
    goto LABEL_13;
  }

LABEL_15:
  sub_10000B3A8(v29, &unk_1016A4220, &unk_1013AFFA0);
  return 0;
}

unint64_t sub_1005254A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101609370, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void *sub_1005254F0(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42C0, &qword_1013AFFF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_100525EFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

uint64_t sub_100525664(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016A42A0, &qword_1013AFFE8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-v5];
  sub_1000035D0(a1, a1[3]);
  sub_100525EA8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v10[15] = 0;
  v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10[13] = 1;
  sub_100525E00();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v8 = v10[14];
  sub_100007BAC(a1);
  return v7 | (v8 << 16) | v7 & 0x100u;
}

void *sub_10052582C(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016A4238, &qword_1013AFFB0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v25 - v3;
  v5 = sub_1000BC4D4(&qword_1016A4240, &qword_1013AFFB8);
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_1000BC4D4(&qword_1016A4248, &unk_1013AFFC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v30 = a1;
  v13 = sub_1000035D0(a1, v12);
  sub_100525D04();
  v14 = v29;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v25 = v5;
    v15 = v28;
    v29 = v9;
    v16 = KeyedDecodingContainer.allKeys.getter();
    v17 = (2 * *(v16 + 16)) | 1;
    v31 = v16;
    v32 = v16 + 32;
    v33 = 0;
    v34 = v17;
    v18 = sub_1002E27AC();
    if (v18 == 2 || v33 != v34 >> 1)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      sub_1000BC4D4(&qword_10169C868, &qword_101398420);
      *v22 = &type metadata for OwnedBeaconGroup.Version;
      v13 = v11;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
      swift_willThrow();
      (*(v29 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v35 = 1;
      sub_100525D58();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v19 = v29;
      v13 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v27 + 8))(v4, v15);
      (*(v19 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = 0;
      sub_100525DAC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v29;
      (*(v26 + 8))(v7, v25);
      (*(v24 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  sub_100007BAC(v30);
  return v13;
}

unint64_t sub_100525D04()
{
  result = qword_1016A4250;
  if (!qword_1016A4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4250);
  }

  return result;
}

unint64_t sub_100525D58()
{
  result = qword_1016A4260;
  if (!qword_1016A4260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4260);
  }

  return result;
}

unint64_t sub_100525DAC()
{
  result = qword_1016A4268;
  if (!qword_1016A4268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4268);
  }

  return result;
}

unint64_t sub_100525E00()
{
  result = qword_1016A4290;
  if (!qword_1016A4290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4290);
  }

  return result;
}

unint64_t sub_100525E54()
{
  result = qword_1016A4298;
  if (!qword_1016A4298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4298);
  }

  return result;
}

unint64_t sub_100525EA8()
{
  result = qword_1016A42A8;
  if (!qword_1016A42A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42A8);
  }

  return result;
}

unint64_t sub_100525EFC()
{
  result = qword_1016A42C8;
  if (!qword_1016A42C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42C8);
  }

  return result;
}

unint64_t sub_100525F50()
{
  result = qword_1016A42E8;
  if (!qword_1016A42E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A42E8);
  }

  return result;
}

uint64_t sub_10052603C(uint64_t a1)
{
  result = type metadata accessor for MACAddress();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1005260BC()
{
  result = qword_1016A4380;
  if (!qword_1016A4380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4380);
  }

  return result;
}

unint64_t sub_100526114()
{
  result = qword_1016A4388;
  if (!qword_1016A4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4388);
  }

  return result;
}

unint64_t sub_10052616C()
{
  result = qword_1016A4390;
  if (!qword_1016A4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4390);
  }

  return result;
}

unint64_t sub_1005261C4()
{
  result = qword_1016A4398;
  if (!qword_1016A4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4398);
  }

  return result;
}

unint64_t sub_10052621C()
{
  result = qword_1016A43A0;
  if (!qword_1016A43A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43A0);
  }

  return result;
}

unint64_t sub_100526274()
{
  result = qword_1016A43A8;
  if (!qword_1016A43A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43A8);
  }

  return result;
}

unint64_t sub_1005262CC()
{
  result = qword_1016A43B0;
  if (!qword_1016A43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43B0);
  }

  return result;
}

unint64_t sub_100526324()
{
  result = qword_1016A43B8;
  if (!qword_1016A43B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43B8);
  }

  return result;
}

unint64_t sub_10052637C()
{
  result = qword_1016A43C0;
  if (!qword_1016A43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43C0);
  }

  return result;
}

unint64_t sub_1005263D4()
{
  result = qword_1016A43C8;
  if (!qword_1016A43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43C8);
  }

  return result;
}

unint64_t sub_10052642C()
{
  result = qword_1016A43D0;
  if (!qword_1016A43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43D0);
  }

  return result;
}

unint64_t sub_100526484()
{
  result = qword_1016A43D8;
  if (!qword_1016A43D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43D8);
  }

  return result;
}

unint64_t sub_1005264DC()
{
  result = qword_1016A43E0;
  if (!qword_1016A43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43E0);
  }

  return result;
}

unint64_t sub_100526534()
{
  result = qword_1016A43E8;
  if (!qword_1016A43E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43E8);
  }

  return result;
}

unint64_t sub_10052658C()
{
  result = qword_1016A43F0;
  if (!qword_1016A43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43F0);
  }

  return result;
}

unint64_t sub_1005265E4()
{
  result = qword_1016A43F8;
  if (!qword_1016A43F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A43F8);
  }

  return result;
}

unint64_t sub_10052663C()
{
  result = qword_1016A4400;
  if (!qword_1016A4400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4400);
  }

  return result;
}

unint64_t sub_100526694()
{
  result = qword_1016A4408;
  if (!qword_1016A4408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4408);
  }

  return result;
}

unint64_t sub_1005266E8()
{
  result = qword_1016A4418;
  if (!qword_1016A4418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4418);
  }

  return result;
}

unint64_t sub_100526750()
{
  result = qword_1016A4428;
  if (!qword_1016A4428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4428);
  }

  return result;
}

unint64_t sub_1005267A8()
{
  result = qword_1016A4430;
  if (!qword_1016A4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4430);
  }

  return result;
}

unint64_t sub_100526800()
{
  result = qword_1016A4438;
  if (!qword_1016A4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A4438);
  }

  return result;
}

uint64_t type metadata accessor for AccessoryLostModeEndPoint(uint64_t a1)
{
  result = qword_1016A4498;
  if (!qword_1016A4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005268D4(uint64_t a1)
{
  result = type metadata accessor for FMNAccountType();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100526940(uint64_t a1)
{
  URLComponents.init()();
  URLComponents.scheme.setter();
  v1 = URLComponents.path.modify();
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v2._object = 0x8000000101358A80;
  String.append(_:)(v2);
  v1(v9, 0);
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C218;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 isInternalBuild];

  if (v5 && (v6 = String._bridgeToObjectiveC()(), v7 = [v3 stringForKey:v6], v6, v7))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    sub_101074618(v9[0]);
  }

  return URLComponents.host.setter();
}

uint64_t sub_100526B58(uint64_t a1)
{
  sub_100525F50();
  v6 = Set.init(minimumCapacity:)();
  sub_100DEEF64(&v5, 20);
  sub_100DEEF64(&v5, 24);
  sub_100DEEF64(&v5, 23);
  sub_100DEEF64(&v5, 25);
  sub_100DEEF64(&v5, 26);
  sub_100DEEF64(&v5, 27);
  sub_100DEEF64(&v5, 29);
  v2 = v6;
  v3 = type metadata accessor for BeaconObservation(0);
  LOBYTE(a1) = sub_101120594(*(a1 + *(v3 + 24)), v2);

  return a1 & 1;
}

__n128 sub_100526C90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100526CA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_100526CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100526D50()
{
  result = qword_1016A44D0;
  if (!qword_1016A44D0)
  {
    sub_1000BC580(&qword_1016A44D8, qword_1013B0B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44D0);
  }

  return result;
}

unint64_t sub_100526DC8()
{
  result = qword_1016A44E0;
  if (!qword_1016A44E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44E0);
  }

  return result;
}

unint64_t sub_100526E1C(char a1)
{
  result = 0x746375646F72702ELL;
  switch(a1)
  {
    case 1:
    case 12:
      v3 = 10;
      goto LABEL_12;
    case 2:
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 13:
      result = 0xD000000000000016;
      break;
    case 6:
    case 7:
      v3 = 9;
LABEL_12:
      result = v3 | 0xD000000000000010;
      break;
    case 8:
      return result;
    case 9:
      result = 0x676E69726961702ELL;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6F4C72656E776F2ELL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t sub_100526FA4(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 88) = a1;
  return _swift_task_switch(sub_100526FC8, 0, 0);
}

uint64_t sub_100526FC8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x800000010134ACD0;
    v3 = 0xD00000000000001DLL;
  }

  v0[12] = v3;
  v0[13] = v5;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v0[14] = qword_10177B348;

  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_100527148;

  return unsafeBlocking<A>(_:)(v0 + 6, sub_1000D2BE0, v6, &type metadata for Configuration);
}

uint64_t sub_100527148()
{

  return _swift_task_switch(sub_100527260, 0, 0);
}

uint64_t sub_100527260()
{
  v1 = *(v0 + 160);
  v2 = sub_1010745FC(*(v0 + 48));

  v3 = sub_100527C64(v2);

  *(v0 + 161) = sub_10062CFC0(v1, v3);

  v4 = swift_task_alloc();
  if (((1 << v1) & 0x37EF) != 0)
  {
    *(v0 + 128) = v4;
    *v4 = v0;
    v4[1] = sub_100527408;
    v5 = *(v0 + 112);
    v6 = v0 + 72;
  }

  else
  {
    *(v0 + 144) = v4;
    *v4 = v0;
    v4[1] = sub_1005277D0;
    v5 = *(v0 + 112);
    v6 = v0 + 56;
  }

  return unsafeBlocking<A>(_:)(v6, sub_1000DFF78, v5, &type metadata for Configuration);
}

uint64_t sub_100527408()
{

  return _swift_task_switch(sub_100527520, 0, 0);
}

uint64_t sub_100527520()
{
  v0[2] = sub_1010745D4(v0[9]);
  v0[3] = v1;

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100527600;
  v3 = v0[14];

  return unsafeBlocking<A>(_:)(v0 + 10, sub_1000DFF78, v3, &type metadata for Configuration);
}

uint64_t sub_100527600()
{

  return _swift_task_switch(sub_100527718, 0, 0);
}

uint64_t sub_100527718()
{
  v1 = sub_1010745E0(*(v0 + 80));
  v8 = *(v0 + 16);
  v2 = *(v0 + 161);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  *v5 = v8;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 257;
  *(v5 + 42) = v2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1005277D0()
{

  return _swift_task_switch(sub_1005278E8, 0, 0);
}

uint64_t sub_1005278E8()
{
  v0[4] = sub_1010745AC(v0[7]);
  v0[5] = v1;

  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1005279C8;
  v3 = v0[14];

  return unsafeBlocking<A>(_:)(v0 + 8, sub_1000DFF78, v3, &type metadata for Configuration);
}

uint64_t sub_1005279C8()
{

  return _swift_task_switch(sub_100527AE0, 0, 0);
}

uint64_t sub_100527AE0()
{
  v1 = sub_1010745B8(*(v0 + 64));
  v8 = *(v0 + 32);
  v2 = *(v0 + 161);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);

  *v5 = v8;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = v1;
  *(v5 + 40) = 0;
  *(v5 + 42) = v2;
  v6 = *(v0 + 8);

  return v6();
}

void *sub_100527B94()
{
  sub_101123C28(0, 9, 0);
  v0 = 0;
  result = _swiftEmptyArrayStorage;
  do
  {
    v2 = qword_1013B0C20[*(&off_101607408 + v0 + 32)];
    v5 = result;
    v4 = result[2];
    v3 = result[3];
    if (v4 >= v3 >> 1)
    {
      sub_101123C28((v3 > 1), v4 + 1, 1);
      result = v5;
    }

    ++v0;
    result[2] = v4 + 1;
    result[v4 + 4] = v2;
  }

  while (v0 != 9);
  return result;
}

char *sub_100527C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = _swiftEmptyArrayStorage;
    while (1)
    {
      v5 = 0;
      v6 = *(v3 + 8 * v2++);
      while (2)
      {
        v7 = *(&off_101607648 + v5++ + 32);
        switch(v7)
        {
          case 1:
            if (v6 != 2)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 2:
            if (v6 == 3)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 3:
            if (v6 == 4)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 4:
            if (v6 == 5)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 5:
            if (v6 == 6)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 6:
            if (v6 == 11)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 7:
            if (v6 == 12)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 8:
            if (v6 == 7)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 9:
            if (v6 == 8)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 10:
            if (v6 == 9)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 11:
            if (v6 != 10)
            {
              goto LABEL_7;
            }

            goto LABEL_34;
          case 12:
            if (v6 == 13)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          case 13:
            if (v6 == 14)
            {
              goto LABEL_34;
            }

            goto LABEL_7;
          default:
            if (v6 != 1)
            {
LABEL_7:
              if (v5 == 14)
              {
                goto LABEL_4;
              }

              continue;
            }

LABEL_34:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_100A5B720(0, *(v4 + 2) + 1, 1, v4);
            }

            v9 = *(v4 + 2);
            v8 = *(v4 + 3);
            if (v9 >= v8 >> 1)
            {
              v4 = sub_100A5B720((v8 > 1), v9 + 1, 1, v4);
            }

            *(v4 + 2) = v9 + 1;
            v4[v9 + 32] = v7;
LABEL_4:
            if (v2 == v1)
            {
              return v4;
            }

            break;
        }

        break;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100527E34()
{
  result = qword_1016A44E8;
  if (!qword_1016A44E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A44E8);
  }

  return result;
}

void sub_100527E88(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v26;
    v2 = v27;
    v4 = v28;
    v3 = v29;
    v5 = v30;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v4 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v3 = 0;
  }

  v31 = _swiftEmptyArrayStorage;
LABEL_8:
  v9 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr), swift_dynamicCast(), v12 = v25, v9 = &selRef_initWithBeaconAdvertisements_searchResultMarker_error_, !v25))
    {
LABEL_30:
      sub_1000128F8(v1);
      return;
    }

LABEL_18:
    v13 = [v12 v9[162]];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = v15;
      sub_1000DF96C();
      LOBYTE(v15) = StringProtocol.contains<A>(_:)();
      v16 = String._bridgeToObjectiveC()();
      if (v15)
      {
        v17 = IDSCopyIDForEmailAddress();

        if (!v17)
        {
          goto LABEL_33;
        }

        v24 = 0;
      }

      else
      {
        v17 = IDSCopyIDForPhoneNumber();

        if (!v17)
        {
          goto LABEL_32;
        }

        v24 = 1;
      }

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100A5C1F8(0, *(v31 + 2) + 1, 1, v31);
      }

      v22 = *(v31 + 2);
      v21 = *(v31 + 3);
      if (v22 >= v21 >> 1)
      {
        v31 = sub_100A5C1F8((v21 > 1), v22 + 1, 1, v31);
      }

      *(v31 + 2) = v22 + 1;
      v23 = &v31[24 * v22];
      v23[32] = v24;
      *(v23 + 5) = v18;
      *(v23 + 6) = v20;
      goto LABEL_8;
    }
  }

  v10 = v3;
  v11 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= ((v4 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v11 = *(v2 + 8 * v3);
    ++v10;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_100528208(uint64_t a1, uint64_t *a2)
{
  v42 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v6);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v10;
  v11 = a1 + 56;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v15 = (v12 + 63) >> 6;
  v16 = (v9 + 56);
  v37 = v9 + 16;
  v38 = v9;
  v39 = (v9 + 48);
  v33 = (v9 + 32);
  v41 = a1;

  v17 = 0;
  v36 = _swiftEmptyArrayStorage;
  v40 = v6;
  if (v14)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return;
    }

    v18 = *(v11 + 8 * v19);
    ++v17;
    if (v18)
    {
      v17 = v19;
LABEL_12:
      v14 = (v18 - 1) & v18;
      v20 = *v42;
      if (*(*v42 + 16))
      {
        v21 = (*(v41 + 48) + 24 * (__clz(__rbit64(v18)) | (v17 << 6)));
        v22 = *(v21 + 1);
        v23 = *(v21 + 2);
        v24 = *v21;

        v25 = sub_100772110(v24, v22, v23);
        if (v26)
        {
          v6 = v40;
          (*(v38 + 16))(v5, *(v20 + 56) + *(v38 + 72) * v25, v40);
          v27 = 0;
        }

        else
        {
          v27 = 1;
          v6 = v40;
        }

        (*v16)(v5, v27, 1, v6);

        if ((*v39)(v5, 1, v6) != 1)
        {
          v28 = *v33;
          (*v33)(v34, v5, v6);
          v28(v35, v34, v6);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_100A5BFE0(0, v36[2] + 1, 1, v36);
          }

          v30 = v36[2];
          v29 = v36[3];
          if (v30 >= v29 >> 1)
          {
            v36 = sub_100A5BFE0((v29 > 1), v30 + 1, 1, v36);
          }

          v31 = v36;
          v36[2] = v30 + 1;
          v32 = v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30;
          v6 = v40;
          v28(v32, v35, v40);
          if (!v14)
          {
            continue;
          }

          goto LABEL_7;
        }
      }

      else
      {
        (*v16)(v5, 1, 1, v6);
      }

      sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
      if (!v14)
      {
        continue;
      }

LABEL_7:
      v18 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1005285EC(uint64_t a1, uint64_t *a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_101124DA4(0, v3, 0);
    v40 = _swiftEmptyArrayStorage;
    v4 = v2 + 56;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v33 = v2 + 64;
    v34 = v3;
    v35 = v2 + 56;
    v36 = v2;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      v38 = *(v2 + 36);
      v9 = (*(v2 + 48) + 24 * v5);
      v10 = *v9;
      v11 = *(v9 + 1);
      v12 = *(v9 + 2);
      v13 = *a2;
      v14 = *(*a2 + 16);

      v39 = v11;
      if (v14)
      {

        v15 = sub_100772110(v10, v11, v12);
        if (v16)
        {
          v17 = (*(v13 + 56) + 16 * v15);
          v18 = *v17;
          v19 = v17[1];
          sub_100017D5C(*v17, v19);
        }

        else
        {
          v18 = 0;
          v19 = 0xF000000000000000;
        }

        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xF000000000000000;
      }

      v21 = v40;
      v23 = v40[2];
      v22 = v40[3];
      if (v23 >= v22 >> 1)
      {
        v32 = v20;
        sub_101124DA4((v22 > 1), v23 + 1, 1);
        v20 = v32;
        v21 = v40;
      }

      v21[2] = v23 + 1;
      v24 = &v21[5 * v23];
      *(v24 + 32) = v10;
      v24[5] = v39;
      v24[6] = v12;
      v24[7] = v18;
      v24[8] = v20;
      v2 = v36;
      v7 = 1 << *(v36 + 32);
      if (v5 >= v7)
      {
        goto LABEL_28;
      }

      v4 = v35;
      v25 = *(v35 + 8 * v8);
      if ((v25 & (1 << v5)) == 0)
      {
        goto LABEL_29;
      }

      v40 = v21;
      if (v38 != *(v36 + 36))
      {
        goto LABEL_30;
      }

      v26 = v25 & (-2 << (v5 & 0x3F));
      if (v26)
      {
        v7 = __clz(__rbit64(v26)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v27 = v8 << 6;
        v28 = v8 + 1;
        v29 = (v33 + 8 * v8);
        while (v28 < (v7 + 63) >> 6)
        {
          v31 = *v29++;
          v30 = v31;
          v27 += 64;
          ++v28;
          if (v31)
          {
            sub_1000BB408(v5, v38, 0);
            v7 = __clz(__rbit64(v30)) + v27;
            goto LABEL_4;
          }
        }

        sub_1000BB408(v5, v38, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v34)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }
}

uint64_t sub_1005288AC(uint64_t a1)
{
  v20 = *v1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconRecord(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v19 = *(__chkstk_darwin(v7 - 8) + 28);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_10058B200(a1, &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OwnedBeaconRecord);
  v11 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  sub_100589B28(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for OwnedBeaconRecord);
  (*(v4 + 16))(v6, a1 + v19, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v13, v6, v3);
  v16 = (v15 + v14);
  *v16 = sub_10057F454;
  v16[1] = v12;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v20;

  sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100528B94(uint64_t (**a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v265 = a3;
  *&v266 = a2;
  v225 = type metadata accessor for DispatchTime();
  v224 = *(v225 - 8);
  v4 = __chkstk_darwin(v225);
  v222 = &v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v223 = &v208 - v6;
  v229 = type metadata accessor for SecureLocationsRelayAction(0);
  v230 = *(v229 - 8);
  v7 = __chkstk_darwin(v229);
  v232 = &v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v8;
  __chkstk_darwin(v7);
  v233 = &v208 - v9;
  v234 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v10 = __chkstk_darwin(v234);
  v226 = &v208 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v235 = &v208 - v12;
  v228 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v228);
  v236 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v15 = __chkstk_darwin(v14 - 8);
  v227 = &v208 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v238 = &v208 - v17;
  v240 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v240);
  v247 = (&v208 - v18);
  v246 = type metadata accessor for SystemInfo.DeviceLockState();
  v245 = *(v246 - 8);
  v19 = __chkstk_darwin(v246);
  v244 = &v208 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v243 = &v208 - v21;
  v22 = type metadata accessor for ShareRecord(0);
  v241 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v251 = &v208 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = v24;
  __chkstk_darwin(v23);
  v242 = (&v208 - v25);
  v259 = type metadata accessor for DispatchWorkItemFlags();
  v263 = *(v259 - 8);
  __chkstk_darwin(v259);
  v258 = &v208 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for DispatchQoS();
  v264 = *(v262 - 8);
  __chkstk_darwin(v262);
  v261 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for DispatchQoS.QoSClass();
  v256 = *(v257 - 1);
  __chkstk_darwin(v257);
  v255 = &v208 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for Date();
  v248 = *(v254 - 8);
  __chkstk_darwin(v254);
  v253 = &v208 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v34 = __chkstk_darwin(v33);
  v36 = &v208 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = &v208 - v38;
  __chkstk_darwin(v37);
  v41 = &v208 - v40;
  v250 = v22;
  v42 = *(v22 + 24);
  v237 = v31;
  v43 = *(v31 + 16);
  v249 = a1;
  v43(&v208 - v40, a1 + v42, v30);
  sub_10053A3CC(1, 1, v41, &aBlock);
  v216 = v36;
  v209 = v32;
  v214 = v43;
  v215 = v31 + 16;
  v211 = v39;
  v217 = v30;
  v213 = aBlock;
  v212 = v270;
  v220 = v271;
  v221 = v272;
  v44 = v249;
  sub_100025020(v249 + v42, &v267);
  v210 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v268)
  {
    sub_100031694(&v267, &aBlock);
    v45 = v272;
    v46 = v273;
    sub_1000035D0(&aBlock, v272);
    if ((*(v46 + 14))(v45, v46))
    {
      v47 = &off_101608CB0;
    }

    else
    {
      v47 = &off_101608CD8;
    }

    v219 = sub_100B0F690(v47);
    v48 = sub_100007BAC(&aBlock);
  }

  else
  {
    sub_10000B3A8(&v267, &qword_101696920, &unk_10138B200);
    v48 = sub_100B0F690(&off_101608D00);
    v219 = v48;
  }

  v49 = v252;
  v50 = *(v260 + 320);
  v51 = v250;
  __chkstk_darwin(v48);
  *(&v208 - 4) = v50;
  *(&v208 - 24) = 0;
  v239 = v52;
  *(&v208 - 2) = v52;
  v53 = v253;
  v54 = v254;
  OS_dispatch_queue.sync<A>(execute:)();
  v218 = 0;
  v55 = sub_1010B2678(v53, 0);
  v56 = v54;
  v57 = *(v248 + 1);
  v57(v53, v56);
  if (v55)
  {
    v58 = sub_1010B2678(v44 + *(v51 + 28), 1u);
    v59 = v251;
    v60 = v49;
    if ((v58 & 1) == 0)
    {

      v61 = static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v62 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_101385D80;
      v64 = UUID.uuidString.getter();
      v66 = v65;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 64) = sub_100008C00();
      *(v63 + 32) = v64;
      *(v63 + 40) = v66;
      os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v62, "Ignoring request to unshare. ShareRecord was created recently (by another device?). (shareIdentifier: %@)", 105, 2, v63);

      sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
      v67 = v256;
      v68 = v255;
      v69 = v257;
      (*(v256 + 104))(v255, enum case for DispatchQoS.QoSClass.default(_:), v257);
      v70 = static OS_dispatch_queue.global(qos:)();
      (*(v67 + 8))(v68, v69);
      v71 = swift_allocObject();
      v72 = v265;
      *(v71 + 16) = v266;
      *(v71 + 24) = v72;
      v273 = sub_100470308;
      v274 = v71;
      aBlock = _NSConcreteStackBlock;
      v270 = 1107296256;
      v73 = &unk_101626F40;
LABEL_23:
      v271 = sub_100006684;
      v272 = v73;
      v114 = _Block_copy(&aBlock);

      v115 = v261;
      static DispatchQoS.unspecified.getter();
      *&v267 = _swiftEmptyArrayStorage;
      sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v116 = v258;
      v117 = v259;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v114);

      sub_100016590(v220, v221);
      (*(v263 + 8))(v116, v117);
      (*(v264 + 8))(v115, v262);
    }
  }

  else
  {
    v74 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v75 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_101385D80;
    v77 = UUID.uuidString.getter();
    v79 = v78;
    *(v76 + 56) = &type metadata for String;
    *(v76 + 64) = sub_100008C00();
    *(v76 + 32) = v77;
    *(v76 + 40) = v79;
    os_log(_:dso:log:_:_:)(v74, &_mh_execute_header, v75, "Allowing request to unshare. ShareRecord was created by this device. (shareIdentifier: %@)", 90, 2, v76);

    v59 = v251;
    v60 = v252;
  }

  __chkstk_darwin(v58);
  *(&v208 - 4) = v50;
  *(&v208 - 24) = 1;
  v80 = v239;
  *(&v208 - 2) = v239;
  v81 = v253;
  v82 = v218;
  OS_dispatch_queue.sync<A>(execute:)();
  v252 = v82;
  v83 = v254;
  v84 = sub_1010B2678(v81, 1u);
  v57(v81, v83);
  if ((v84 & 1) == 0)
  {

    v103 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v104 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_101385D80;
    v106 = UUID.uuidString.getter();
    v108 = v107;
    *(v105 + 56) = &type metadata for String;
    *(v105 + 64) = sub_100008C00();
    *(v105 + 32) = v106;
    *(v105 + 40) = v108;
    os_log(_:dso:log:_:_:)(v103, &_mh_execute_header, v104, "Ignoring request to unshare. ShareRecord last unshared recently. (shareIdentifier: %@)", 86, 2, v105);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v109 = v256;
    v110 = v255;
    v111 = v257;
    (*(v256 + 104))(v255, enum case for DispatchQoS.QoSClass.default(_:), v257);
    v70 = static OS_dispatch_queue.global(qos:)();
    (*(v109 + 8))(v110, v111);
    v112 = swift_allocObject();
    v113 = v265;
    *(v112 + 16) = v266;
    *(v112 + 24) = v113;
    v273 = sub_100470308;
    v274 = v112;
    aBlock = _NSConcreteStackBlock;
    v270 = 1107296256;
    v73 = &unk_101626D60;
    goto LABEL_23;
  }

  static Date.trustedNow.getter(v81);
  sub_1010B1D04(v80, v81, 1);
  v57(v81, v83);
  v85 = v249 + *(v250 + 36);
  LODWORD(v253) = *v85;
  v87 = *(v85 + 1);
  v86 = *(v85 + 2);
  v250 = *(v50 + 16);
  v88 = v242;
  sub_10058B200(v249, v242, type metadata accessor for ShareRecord);
  sub_10058B200(v88, v59, type metadata accessor for ShareRecord);
  v89 = (*(v241 + 80) + 24) & ~*(v241 + 80);
  v90 = swift_allocObject();
  v91 = v260;
  *(v90 + 16) = v260;
  sub_100589B28(v88, v90 + v89, type metadata accessor for ShareRecord);
  v254 = v90;
  v92 = (v90 + ((v60 + v89 + 7) & 0xFFFFFFFFFFFFFFF8));
  v93 = v265;
  *v92 = v266;
  v92[1] = v93;

  sub_100908F24(_swiftEmptyArrayStorage);

  v94 = v243;
  static SystemInfo.lockState.getter();
  v95 = v245;
  v96 = v244;
  v97 = v246;
  (*(v245 + 104))(v244, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v246);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v89) = dispatch thunk of static Equatable.== infix(_:_:)();
  v98 = *(v95 + 8);
  v98(v96, v97);
  v98(v94, v97);
  if ((v89 & 1) == 0)
  {
    v119 = v253;
    v120 = sub_100540CB8(v253, v87, v86);
    v121 = v247;
    if ((v120 & 1) == 0)
    {

      v145 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v146 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v147 = swift_allocObject();
      *(v147 + 16) = xmmword_101385D80;
      *(v147 + 56) = &type metadata for String;
      *(v147 + 64) = sub_100008C00();
      *(v147 + 32) = v87;
      *(v147 + 40) = v86;

      os_log(_:dso:log:_:_:)(v145, &_mh_execute_header, v146, "Not sending since %@ has no IDS registered devices", 50, 2, v147);

      type metadata accessor for SPOwnerSessionError(0);
      *&v267 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      *v121 = aBlock;
      swift_storeEnumTagMultiPayload();
      v101 = v251;
      sub_10056343C(v121, v91, v251, v266, v93);

      sub_100016590(v220, v221);
      v102 = v121;
      goto LABEL_30;
    }

    v265 = *(v91 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v122 = swift_allocObject();
    v266 = xmmword_101385D80;
    *(v122 + 16) = xmmword_101385D80;
    *(v122 + 32) = v119;
    *(v122 + 40) = v87;
    *(v122 + 48) = v86;
    v123 = *(v237 + 56);
    v124 = v238;
    v125 = v217;
    v123(v238, 1, 1, v217);

    v126 = v216;
    UUID.init()();
    v127 = v236;
    v214(v236, v126, v125);
    v128 = v227;
    sub_1000D2A70(v124, v227, &qword_1016980D0, &unk_10138F3B0);
    v129 = v228;
    v130 = *(v228 + 28);
    v123(v127 + v130, 1, 1, v125);
    *(v127 + v129[5]) = v122;
    *(v127 + v129[6]) = 1;
    sub_10002311C(v128, v127 + v130, &qword_1016980D0, &unk_10138F3B0);
    v131 = v127 + v129[8];
    *v131 = v250;
    *(v131 + 8) = 0;
    *(v127 + v129[9]) = 0;
    *(v127 + v129[10]) = v219;
    *(v127 + v129[11]) = &_swiftEmptySetSingleton;
    v132 = (v127 + v129[12]);
    *v132 = 0;
    v132[1] = 0;
    *(v127 + v129[13]) = xmmword_1013B0D90;
    v133 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v134 = v233;
    sub_10058B200(v127, &v233[*(v133 + 24)], type metadata accessor for MessagingOptions);
    *v134 = v213;
    v135 = v220;
    *(v134 + 8) = v212;
    *(v134 + 16) = v135;
    v136 = v221;
    *(v134 + 24) = v221;
    *(v134 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v137 = v232;
    sub_10058B200(v134, v232, type metadata accessor for SecureLocationsRelayAction);
    v138 = (*(v230 + 80) + 24) & ~*(v230 + 80);
    v139 = swift_allocObject();
    *(v139 + 16) = v265;
    sub_100589B28(v137, v139 + v138, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v135, v136);

    v140 = v235;
    v141 = v252;
    unsafeFromAsyncTask<A>(_:)();
    if (v141)
    {
      v142 = v141;

      v143 = type metadata accessor for SecureLocationsRelayAction;
      v144 = v134;
    }

    else
    {
      sub_10058B268(v134, type metadata accessor for SecureLocationsRelayAction);

      v148 = v226;
      sub_10058B200(v140, v226, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v140, type metadata accessor for SecureLocationsRelayAction.Response);
        v149 = v237;
        v150 = *(v237 + 8);
        v151 = v217;
        v253 = (v237 + 8);
        v252 = v150;
        v150(v216, v217);
        sub_10000B3A8(v238, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v127, type metadata accessor for MessagingOptions);
        v152 = *(v149 + 32);
        v153 = v211;
        v265 = v149 + 32;
        v257 = v152;
        (v152)(v211, v148, v151);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v154 = Future.init()();
        v155 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v156 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v157 = swift_allocObject();
        *(v157 + 16) = v266;
        v158 = UUID.uuidString.getter();
        v160 = v159;
        *(v157 + 56) = &type metadata for String;
        *(v157 + 64) = sub_100008C00();
        *(v157 + 32) = v158;
        *(v157 + 40) = v160;
        os_log(_:dso:log:_:_:)(v155, &_mh_execute_header, v156, "Setting %@ to pending", 21, 2, v157);

        v161 = v153;
        v162 = v260;
        v243 = *(v260 + 168);
        v163 = v210;
        v214(v210, v161, v151);
        v164 = (*(v149 + 80) + 24) & ~*(v149 + 80);
        v256 = *(v149 + 80);
        v165 = v163;
        v250 = v164 + v209;
        v166 = v164;
        *&v266 = v164;
        v167 = (v164 + v209 + 7) & 0xFFFFFFFFFFFFFFF8;
        v168 = swift_allocObject();
        *(v168 + 16) = v162;
        (v257)(v168 + v166, v165, v151);
        *(v168 + v167) = v154;
        v255 = v154;
        v273 = sub_10057C898;
        v274 = v168;
        aBlock = _NSConcreteStackBlock;
        v270 = 1107296256;
        v249 = &v271;
        v271 = sub_100006684;
        v272 = &unk_101626E50;
        v169 = _Block_copy(&aBlock);

        v170 = v261;
        static DispatchQoS.unspecified.getter();
        *&v267 = _swiftEmptyArrayStorage;
        v245 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v244 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v246 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v171 = v258;
        v172 = v259;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v169);
        v173 = *(v263 + 8);
        v263 += 8;
        v248 = v173;
        v173(v171, v172);
        v174 = *(v264 + 8);
        v264 += 8;
        v247 = v174;
        (v174)(v170, v262);

        v175 = v210;
        v176 = v211;
        v177 = v217;
        v214(v210, v211, v217);
        v178 = swift_allocObject();
        *(v178 + 16) = v162;
        (v257)(v178 + v266, v175, v177);
        v179 = (v178 + v167);
        v180 = v254;
        *v179 = sub_10057C734;
        v179[1] = v180;

        Future.addSuccess(block:)();

        v181 = swift_allocObject();
        *(v181 + 16) = sub_10057C734;
        *(v181 + 24) = v180;

        Future.addFailure(block:)();

        v182 = v222;
        static DispatchTime.now()();
        v183 = v223;
        + infix(_:_:)();
        v242 = *(v224 + 8);
        v184 = v225;
        (v242)(v182, v225);
        v185 = v210;
        v186 = v217;
        v214(v210, v176, v217);
        v187 = swift_allocObject();
        *(v187 + 16) = v162;
        (v257)(v187 + v266, v185, v186);
        v273 = sub_10057C8F4;
        v274 = v187;
        aBlock = _NSConcreteStackBlock;
        v270 = 1107296256;
        v271 = sub_100006684;
        v272 = &unk_101626EF0;
        v188 = _Block_copy(&aBlock);

        v189 = v261;
        static DispatchQoS.unspecified.getter();
        *&v267 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v188);

        sub_100016590(v220, v221);
        v248(v171, v172);
        (v247)(v189, v262);
        (v242)(v183, v184);
        v252(v211, v186);
        goto LABEL_39;
      }

      sub_10058B268(v148, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v142 = swift_allocError();
      swift_willThrow();
      v144 = v140;
      v143 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v144, v143);
    v190 = v238;
    (*(v237 + 8))(v216, v217);
    sub_10000B3A8(v190, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v127, type metadata accessor for MessagingOptions);
    v191 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v192 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v193 = swift_allocObject();
    *(v193 + 16) = v266;
    aBlock = v142;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v194 = String.init<A>(describing:)();
    v196 = v195;
    *(v193 + 56) = &type metadata for String;
    *(v193 + 64) = sub_100008C00();
    *(v193 + 32) = v194;
    *(v193 + 40) = v196;
    os_log(_:dso:log:_:_:)(v191, &_mh_execute_header, v192, "Message send error: %@", 22, 2, v193);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v197 = v256;
    v198 = v255;
    v199 = v257;
    (*(v256 + 104))(v255, enum case for DispatchQoS.QoSClass.default(_:), v257);
    v200 = static OS_dispatch_queue.global(qos:)();
    (*(v197 + 8))(v198, v199);
    v201 = swift_allocObject();
    v202 = v254;
    v201[2] = sub_10057C734;
    v201[3] = v202;
    v201[4] = v142;
    v273 = sub_10058D73C;
    v274 = v201;
    aBlock = _NSConcreteStackBlock;
    v270 = 1107296256;
    v271 = sub_100006684;
    v272 = &unk_101626E00;
    v203 = _Block_copy(&aBlock);

    swift_errorRetain();
    v204 = v261;
    static DispatchQoS.unspecified.getter();
    *&v267 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v205 = v258;
    v206 = v259;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v203);

    sub_100016590(v220, v221);
    (*(v263 + 8))(v205, v206);
    (*(v264 + 8))(v204, v262);
LABEL_39:

    v101 = v251;
    return sub_10058B268(v101, type metadata accessor for ShareRecord);
  }

  v99 = static os_log_type_t.error.getter();
  v100 = v247;
  if (qword_101695030 != -1)
  {
    v207 = v99;
    swift_once();
    v99 = v207;
  }

  os_log(_:dso:log:_:_:)(v99, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  *&v267 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v100 = aBlock;
  swift_storeEnumTagMultiPayload();
  v101 = v251;
  sub_10056343C(v100, v91, v251, v266, v93);

  sub_100016590(v220, v221);
  v102 = v100;
LABEL_30:
  sub_10000B3A8(v102, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v101, type metadata accessor for ShareRecord);
}

uint64_t sub_10052B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v201 = a2;
  *&v202 = a3;
  v203 = a1;
  v193 = type metadata accessor for DispatchQoS.QoSClass();
  v192 = *(v193 - 1);
  __chkstk_darwin(v193);
  v191 = &v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DispatchTime();
  v167 = *(v168 - 8);
  v4 = __chkstk_darwin(v168);
  v165 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v166 = &v150 - v6;
  v195 = type metadata accessor for DispatchWorkItemFlags();
  v200 = *(v195 - 8);
  __chkstk_darwin(v195);
  v194 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchQoS();
  v199 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = type metadata accessor for SecureLocationsRelayAction(0);
  v173 = *(v172 - 8);
  v9 = __chkstk_darwin(v172);
  v175 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v10;
  __chkstk_darwin(v9);
  v176 = &v150 - v11;
  v177 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v12 = __chkstk_darwin(v177);
  v169 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v178 = &v150 - v14;
  v171 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v171);
  v179 = &v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v170 = &v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v180 = &v150 - v19;
  v181 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v181);
  v182 = (&v150 - v20);
  v189 = type metadata accessor for SystemInfo.DeviceLockState();
  v188 = *(v189 - 8);
  v21 = __chkstk_darwin(v189);
  v187 = &v150 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v186 = &v150 - v23;
  v24 = type metadata accessor for SharedBeaconRecord(0);
  v184 = *(v24 - 8);
  v25 = *(v184 + 8);
  v26 = __chkstk_darwin(v24);
  v198 = &v150 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v185 = (&v150 - v27);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v32 = __chkstk_darwin(v31);
  v34 = &v150 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v150 - v36;
  __chkstk_darwin(v35);
  v39 = &v150 - v38;
  v183 = v24;
  v40 = *(v29 + 16);
  v40(&v150 - v38, v203 + *(v24 + 20), v28);
  sub_10053A3CC(3, 1, v39, &aBlock);
  v153 = 0;
  v160 = v34;
  v150 = v30;
  v161 = v29;
  v156 = v40;
  v157 = v29 + 16;
  v151 = &v150 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = v37;
  v162 = v28;
  v154 = aBlock;
  v155 = v206;
  v163 = v207;
  v164 = v208;
  v41 = (v203 + *(v183 + 7));
  LODWORD(v183) = *v41;
  v43 = *(v41 + 1);
  v42 = *(v41 + 2);
  v159 = v43;
  v158 = v42;
  v44 = v185;
  sub_10058B200(v203, v185, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v44, v198, type metadata accessor for SharedBeaconRecord);
  v45 = (*(v184 + 80) + 24) & ~*(v184 + 80);
  v46 = swift_allocObject();
  v47 = v190;
  *(v46 + 16) = v190;
  sub_100589B28(v44, v46 + v45, type metadata accessor for SharedBeaconRecord);
  v203 = v46;
  v48 = (v46 + ((v25 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
  v50 = v201;
  v49 = v202;
  *v48 = v201;
  v48[1] = v49;

  sub_100908F24(_swiftEmptyArrayStorage);

  v185 = sub_101129A8C(&off_101608D28);
  v51 = sub_101129A8C(_swiftEmptyArrayStorage);
  v52 = v186;
  static SystemInfo.lockState.getter();
  v53 = v188;
  v54 = v187;
  v55 = v189;
  (*(v188 + 104))(v187, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v189);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v25) = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v53 + 8);
  v56(v54, v55);
  v56(v52, v55);
  v57 = v47;
  v58 = v49;
  if ((v25 & 1) == 0)
  {
    v189 = v51;
    v63 = v183;
    v64 = v159;
    v65 = v158;
    if ((sub_100540CB8(v183, v159, v158) & 1) == 0)
    {

      v89 = static os_log_type_t.error.getter();
      v90 = v164;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v91 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_101385D80;
      *(v92 + 56) = &type metadata for String;
      *(v92 + 64) = sub_100008C00();
      *(v92 + 32) = v64;
      *(v92 + 40) = v65;

      os_log(_:dso:log:_:_:)(v89, &_mh_execute_header, v91, "Not sending since %@ has no IDS registered devices", 50, 2, v92);

      type metadata accessor for SPOwnerSessionError(0);
      v204 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v93 = v182;
      *v182 = aBlock;
      swift_storeEnumTagMultiPayload();
      v61 = v198;
      sub_100562794(v93, v57, v198, v50, v58);

      sub_100016590(v163, v90);
      v62 = v93;
      goto LABEL_11;
    }

    v201 = *(v57 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v66 = swift_allocObject();
    v202 = xmmword_101385D80;
    *(v66 + 16) = xmmword_101385D80;
    *(v66 + 32) = v63;
    *(v66 + 40) = v64;
    *(v66 + 48) = v65;
    v67 = *(v161 + 56);
    v68 = v180;
    v69 = v162;
    v67(v180, 1, 1, v162);

    v70 = v160;
    UUID.init()();
    v71 = v179;
    v156(v179, v70, v69);
    v72 = v170;
    sub_1000D2A70(v68, v170, &qword_1016980D0, &unk_10138F3B0);
    v73 = v171;
    v74 = *(v171 + 28);
    v67(v71 + v74, 1, 1, v69);
    *(v71 + v73[5]) = v66;
    *(v71 + v73[6]) = 1;
    sub_10002311C(v72, v71 + v74, &qword_1016980D0, &unk_10138F3B0);
    v75 = v71 + v73[8];
    *v75 = 0;
    *(v75 + 8) = 1;
    *(v71 + v73[9]) = 0;
    *(v71 + v73[10]) = v185;
    *(v71 + v73[11]) = v189;
    v76 = (v71 + v73[12]);
    *v76 = 0;
    v76[1] = 0;
    *(v71 + v73[13]) = xmmword_1013B0D90;
    v77 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v78 = v176;
    sub_10058B200(v71, &v176[*(v77 + 24)], type metadata accessor for MessagingOptions);
    *v78 = v154;
    v79 = v163;
    *(v78 + 8) = v155;
    *(v78 + 16) = v79;
    v80 = v164;
    *(v78 + 24) = v164;
    *(v78 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v81 = v175;
    sub_10058B200(v78, v175, type metadata accessor for SecureLocationsRelayAction);
    v82 = (*(v173 + 80) + 24) & ~*(v173 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v201;
    sub_100589B28(v81, v83 + v82, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v79, v80);

    v84 = v178;
    v85 = v153;
    unsafeFromAsyncTask<A>(_:)();
    if (v85)
    {
      v86 = v85;

      v87 = type metadata accessor for SecureLocationsRelayAction;
      v88 = v78;
    }

    else
    {
      v94 = v190;
      sub_10058B268(v78, type metadata accessor for SecureLocationsRelayAction);

      v95 = v169;
      sub_10058B200(v84, v169, type metadata accessor for SecureLocationsRelayAction.Response);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_10058B268(v84, type metadata accessor for SecureLocationsRelayAction.Response);
        v96 = v161;
        v97 = *(v161 + 8);
        v98 = v162;
        v188 = v161 + 8;
        v187 = v97;
        (v97)(v160, v162);
        sub_10000B3A8(v180, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v71, type metadata accessor for MessagingOptions);
        v99 = *(v96 + 32);
        v100 = v152;
        v201 = v96 + 32;
        v193 = v99;
        v99(v152, v95, v98);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v101 = Future.init()();
        v102 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v103 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v104 = swift_allocObject();
        *(v104 + 16) = v202;
        v105 = UUID.uuidString.getter();
        v107 = v106;
        *(v104 + 56) = &type metadata for String;
        *(v104 + 64) = sub_100008C00();
        *(v104 + 32) = v105;
        *(v104 + 40) = v107;
        os_log(_:dso:log:_:_:)(v102, &_mh_execute_header, v103, "Setting %@ to pending", 21, 2, v104);

        v108 = v94;
        *&v202 = *(v94 + 168);
        v109 = v151;
        v156(v151, v100, v98);
        v110 = *(v96 + 80);
        v191 = v110;
        v186 = (((v110 + 24) & ~v110) + v150);
        v111 = (v110 + 24) & ~v110;
        v192 = v111;
        v112 = (v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v113 = swift_allocObject();
        *(v113 + 16) = v108;
        v193(v113 + v111, v109, v98);
        *(v113 + v112) = v101;
        v209 = sub_10058D4DC;
        v210 = v113;
        aBlock = _NSConcreteStackBlock;
        v206 = 1107296256;
        v185 = &v207;
        v207 = sub_100006684;
        v208 = &unk_1016273C8;
        v114 = _Block_copy(&aBlock);

        v189 = v101;
        v115 = v196;
        static DispatchQoS.unspecified.getter();
        v204 = _swiftEmptyArrayStorage;
        v181 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v180 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v182 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v116 = v194;
        v117 = v195;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v114);
        v118 = *(v200 + 8);
        v200 += 8;
        v184 = v118;
        v118(v116, v117);
        v119 = *(v199 + 8);
        v199 += 8;
        v183 = v119;
        (v119)(v115, v197);

        v120 = v162;
        v156(v109, v152, v162);
        v121 = swift_allocObject();
        *(v121 + 16) = v108;
        v193(v121 + v192, v109, v120);
        v122 = (v121 + v112);
        v123 = v203;
        *v122 = sub_10057CCB4;
        v122[1] = v123;

        Future.addSuccess(block:)();

        v124 = swift_allocObject();
        *(v124 + 16) = sub_10057CCB4;
        *(v124 + 24) = v123;

        Future.addFailure(block:)();

        v125 = v165;
        static DispatchTime.now()();
        v126 = v166;
        + infix(_:_:)();
        v179 = *(v167 + 8);
        v127 = v168;
        (v179)(v125, v168);
        v156(v109, v152, v120);
        v128 = swift_allocObject();
        *(v128 + 16) = v108;
        v193(v128 + v192, v109, v120);
        v209 = sub_10058D4E0;
        v210 = v128;
        aBlock = _NSConcreteStackBlock;
        v206 = 1107296256;
        v207 = sub_100006684;
        v208 = &unk_101627468;
        v129 = _Block_copy(&aBlock);

        v130 = v196;
        static DispatchQoS.unspecified.getter();
        v204 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v129);

        sub_100016590(v163, v164);
        v184(v116, v117);
        v183(v130, v197);
        (v179)(v126, v127);
        (v187)(v152, v120);
        goto LABEL_20;
      }

      sub_10058B268(v95, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v86 = swift_allocError();
      swift_willThrow();
      v88 = v84;
      v87 = type metadata accessor for SecureLocationsRelayAction.Response;
    }

    sub_10058B268(v88, v87);
    v131 = v180;
    (*(v161 + 8))(v160, v162);
    sub_10000B3A8(v131, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v71, type metadata accessor for MessagingOptions);
    v132 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v133 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v134 = swift_allocObject();
    *(v134 + 16) = v202;
    aBlock = v86;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v135 = String.init<A>(describing:)();
    v137 = v136;
    *(v134 + 56) = &type metadata for String;
    *(v134 + 64) = sub_100008C00();
    *(v134 + 32) = v135;
    *(v134 + 40) = v137;
    os_log(_:dso:log:_:_:)(v132, &_mh_execute_header, v133, "Message send error: %@", 22, 2, v134);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v138 = v192;
    v139 = v191;
    v140 = v193;
    (*(v192 + 104))(v191, enum case for DispatchQoS.QoSClass.default(_:), v193);
    v141 = static OS_dispatch_queue.global(qos:)();
    (*(v138 + 8))(v139, v140);
    v142 = swift_allocObject();
    v143 = v203;
    v142[2] = sub_10057CCB4;
    v142[3] = v143;
    v142[4] = v86;
    v209 = sub_10058D73C;
    v210 = v142;
    aBlock = _NSConcreteStackBlock;
    v206 = 1107296256;
    v207 = sub_100006684;
    v208 = &unk_101627378;
    v144 = _Block_copy(&aBlock);

    swift_errorRetain();
    v145 = v196;
    static DispatchQoS.unspecified.getter();
    v204 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v147 = v194;
    v146 = v195;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v144);

    sub_100016590(v163, v164);
    (*(v200 + 8))(v147, v146);
    (*(v199 + 8))(v145, v197);
LABEL_20:

    v61 = v198;
    return sub_10058B268(v61, type metadata accessor for SharedBeaconRecord);
  }

  v59 = static os_log_type_t.error.getter();
  v60 = v182;
  if (qword_101695030 != -1)
  {
    v149 = v59;
    swift_once();
    v59 = v149;
  }

  os_log(_:dso:log:_:_:)(v59, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  v204 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v60 = aBlock;
  swift_storeEnumTagMultiPayload();
  v61 = v198;
  sub_100562794(v60, v57, v198, v50, v49);

  sub_100016590(v163, v164);
  v62 = v60;
LABEL_11:
  sub_10000B3A8(v62, &qword_10169F358, &qword_1013A0810);
  return sub_10058B268(v61, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10052D47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v211 = a2;
  *&v212 = a3;
  v203 = type metadata accessor for DispatchQoS.QoSClass();
  v202 = *(v203 - 1);
  __chkstk_darwin(v203);
  v201 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for DispatchTime();
  v174 = *(v175 - 8);
  v5 = __chkstk_darwin(v175);
  v172 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v173 = &v158 - v7;
  v205 = type metadata accessor for DispatchWorkItemFlags();
  v210 = *(v205 - 8);
  __chkstk_darwin(v205);
  v204 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for DispatchQoS();
  v209 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for SecureLocationsRelayAction(0);
  v181 = *(v180 - 8);
  v10 = __chkstk_darwin(v180);
  v183 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v11;
  __chkstk_darwin(v10);
  v184 = &v158 - v12;
  v185 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v13 = __chkstk_darwin(v185);
  v176 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v186 = &v158 - v15;
  v179 = type metadata accessor for MessagingOptions(0);
  __chkstk_darwin(v179);
  v187 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v18 = __chkstk_darwin(v17 - 8);
  v178 = &v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v189 = &v158 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v171 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v188 = &v158 - v26;
  __chkstk_darwin(v25);
  v177 = &v158 - v27;
  v191 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  __chkstk_darwin(v191);
  v192 = (&v158 - v28);
  v198 = type metadata accessor for SystemInfo.DeviceLockState();
  v197 = *(v198 - 8);
  v29 = __chkstk_darwin(v198);
  v196 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v195 = &v158 - v31;
  v32 = type metadata accessor for SharedBeaconRecord(0);
  v193 = *(v32 - 1);
  v33 = *(v193 + 8);
  v34 = __chkstk_darwin(v32);
  v208 = &v158 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v194 = (&v158 - v35);
  MyAccessoryFamilyShareResponseEnvelope = type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0);
  v37 = MyAccessoryFamilyShareResponseEnvelope - 8;
  v38 = __chkstk_darwin(MyAccessoryFamilyShareResponseEnvelope);
  v40 = &v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v158 - v41;
  v43 = v32[5];
  v190 = v22;
  v44 = *(v22 + 16);
  v44(&v158 - v41, a1 + v43, v21);
  v45 = v32[6];
  v46 = &v42[*(v37 + 28)];
  v199 = a1;
  v44(v46, a1 + v45, v21);
  sub_10058B200(v42, v40, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  sub_10053A6CC(3, 2, v40, &aBlock);
  v159 = 0;
  v158 = v23;
  v162 = v44;
  v163 = v22 + 16;
  v167 = v21;
  v168 = v42;
  v161 = aBlock;
  v160 = v215;
  v169 = v216;
  v170 = v217;
  v47 = (v199 + v32[7]);
  v166 = *v47;
  v49 = *(v47 + 1);
  v48 = *(v47 + 2);
  v165 = v49;
  v164 = v48;
  v50 = v194;
  sub_10058B200(v199, v194, type metadata accessor for SharedBeaconRecord);
  sub_10058B200(v50, v208, type metadata accessor for SharedBeaconRecord);
  v51 = (*(v193 + 80) + 24) & ~*(v193 + 80);
  v52 = swift_allocObject();
  v53 = v200;
  *(v52 + 16) = v200;
  sub_100589B28(v50, v52 + v51, type metadata accessor for SharedBeaconRecord);
  v199 = v52;
  v54 = (v52 + ((v33 + v51 + 7) & 0xFFFFFFFFFFFFFFF8));
  v56 = v211;
  v55 = v212;
  *v54 = v211;
  v54[1] = v55;

  sub_100908F24(_swiftEmptyArrayStorage);

  v194 = sub_101129A8C(&off_101608D50);
  v57 = sub_101129A8C(_swiftEmptyArrayStorage);
  v58 = v195;
  static SystemInfo.lockState.getter();
  v59 = v197;
  v60 = v196;
  v61 = v198;
  (*(v197 + 104))(v196, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v198);
  sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  LOBYTE(v51) = dispatch thunk of static Equatable.== infix(_:_:)();
  v62 = *(v59 + 8);
  v62(v60, v61);
  v62(v58, v61);
  v63 = v53;
  if ((v51 & 1) == 0)
  {
    v70 = v194;
    v198 = v57;
    v71 = v166;
    v72 = v165;
    v73 = v164;
    if ((sub_100540CB8(v166, v165, v164) & 1) == 0)
    {

      v96 = static os_log_type_t.error.getter();
      v97 = v168;
      v98 = v169;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v99 = qword_10177C378;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_101385D80;
      *(v100 + 56) = &type metadata for String;
      *(v100 + 64) = sub_100008C00();
      *(v100 + 32) = v72;
      *(v100 + 40) = v73;

      os_log(_:dso:log:_:_:)(v96, &_mh_execute_header, v99, "Not sending since %@ has no IDS registered devices", 50, 2, v100);

      type metadata accessor for SPOwnerSessionError(0);
      v213 = 12;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
      _BridgedStoredNSError.init(_:userInfo:)();
      v101 = v192;
      *v192 = aBlock;
      swift_storeEnumTagMultiPayload();
      v68 = v208;
      sub_10055E93C(v101, v63, v208, v56, v55);

      sub_100016590(v98, v170);
      sub_10000B3A8(v101, &qword_10169F358, &qword_1013A0810);
      v69 = v97;
      goto LABEL_11;
    }

    v211 = *(v63 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v74 = swift_allocObject();
    v212 = xmmword_101385D80;
    *(v74 + 16) = xmmword_101385D80;
    *(v74 + 32) = v71;
    *(v74 + 40) = v72;
    *(v74 + 48) = v73;
    v75 = *(v190 + 56);
    v76 = v189;
    v77 = v167;
    v75(v189, 1, 1, v167);

    v78 = v188;
    UUID.init()();
    v79 = v187;
    v162(v187, v78, v77);
    v80 = v178;
    sub_1000D2A70(v76, v178, &qword_1016980D0, &unk_10138F3B0);
    v81 = v179;
    v82 = *(v179 + 28);
    v75(v79 + v82, 1, 1, v77);
    *(v79 + v81[5]) = v74;
    *(v79 + v81[6]) = 1;
    sub_10002311C(v80, v79 + v82, &qword_1016980D0, &unk_10138F3B0);
    v83 = v79 + v81[8];
    *v83 = 0;
    *(v83 + 8) = 1;
    *(v79 + v81[9]) = 0;
    *(v79 + v81[10]) = v70;
    *(v79 + v81[11]) = v198;
    v84 = (v79 + v81[12]);
    *v84 = 0;
    v84[1] = 0;
    *(v79 + v81[13]) = xmmword_1013B0D90;
    v85 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v86 = v184;
    sub_10058B200(v79, &v184[*(v85 + 24)], type metadata accessor for MessagingOptions);
    *v86 = v161;
    v87 = v169;
    *(v86 + 8) = v160;
    *(v86 + 16) = v87;
    v88 = v170;
    *(v86 + 24) = v170;
    *(v86 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v89 = v183;
    sub_10058B200(v86, v183, type metadata accessor for SecureLocationsRelayAction);
    v90 = (*(v181 + 80) + 24) & ~*(v181 + 80);
    v91 = swift_allocObject();
    *(v91 + 16) = v211;
    sub_100589B28(v89, v91 + v90, type metadata accessor for SecureLocationsRelayAction);
    sub_100017D5C(v87, v88);

    v92 = v186;
    v93 = v159;
    unsafeFromAsyncTask<A>(_:)();
    if (v93)
    {
      v94 = v93;

      sub_10058B268(v86, type metadata accessor for SecureLocationsRelayAction);
      v95 = v199;
    }

    else
    {
      v102 = v200;
      sub_10058B268(v86, type metadata accessor for SecureLocationsRelayAction);

      v103 = v176;
      sub_10058B200(v92, v176, type metadata accessor for SecureLocationsRelayAction.Response);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v95 = v199;
      if (EnumCaseMultiPayload == 4)
      {
        sub_10058B268(v92, type metadata accessor for SecureLocationsRelayAction.Response);
        v105 = v190;
        v106 = *(v190 + 8);
        v107 = v167;
        v197 = v190 + 8;
        v196 = v106;
        (v106)(v188, v167);
        sub_10000B3A8(v189, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v79, type metadata accessor for MessagingOptions);
        v108 = *(v105 + 32);
        v109 = v177;
        v211 = v105 + 32;
        v203 = v108;
        v108(v177, v103, v107);
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v110 = Future.init()();
        v111 = static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v112 = qword_10177C378;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v113 = swift_allocObject();
        *(v113 + 16) = v212;
        v114 = UUID.uuidString.getter();
        v116 = v115;
        *(v113 + 56) = &type metadata for String;
        *(v113 + 64) = sub_100008C00();
        *(v113 + 32) = v114;
        *(v113 + 40) = v116;
        os_log(_:dso:log:_:_:)(v111, &_mh_execute_header, v112, "Setting %@ to pending", 21, 2, v113);

        v117 = v102;
        *&v212 = *(v102 + 168);
        v118 = v171;
        v162(v171, v109, v107);
        v119 = (*(v105 + 80) + 24) & ~*(v105 + 80);
        v201 = *(v105 + 80);
        v195 = (v119 + v158);
        v120 = v119;
        v202 = v119;
        v121 = (v119 + v158 + 7) & 0xFFFFFFFFFFFFFFF8;
        v122 = swift_allocObject();
        *(v122 + 16) = v117;
        v203(v122 + v120, v118, v107);
        *(v122 + v121) = v110;
        v218 = sub_10058D4DC;
        v219 = v122;
        aBlock = _NSConcreteStackBlock;
        v215 = 1107296256;
        v194 = &v216;
        v216 = sub_100006684;
        v217 = &unk_1016276C0;
        v123 = _Block_copy(&aBlock);

        v198 = v110;
        v124 = v206;
        static DispatchQoS.unspecified.getter();
        v213 = _swiftEmptyArrayStorage;
        v190 = sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v189 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        v191 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v125 = v204;
        v126 = v205;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v123);
        v127 = *(v210 + 8);
        v210 += 8;
        v193 = v127;
        v127(v125, v126);
        v128 = *(v209 + 8);
        v209 += 8;
        v192 = v128;
        v128(v124, v207);

        v129 = v167;
        v162(v118, v177, v167);
        v130 = swift_allocObject();
        *(v130 + 16) = v117;
        v203(v130 + v202, v118, v129);
        v131 = (v130 + v121);
        v132 = v199;
        *v131 = sub_10057CDA8;
        v131[1] = v132;

        Future.addSuccess(block:)();

        v133 = swift_allocObject();
        *(v133 + 16) = sub_10057CDA8;
        *(v133 + 24) = v132;

        Future.addFailure(block:)();

        v134 = v172;
        static DispatchTime.now()();
        v135 = v173;
        + infix(_:_:)();
        v188 = *(v174 + 8);
        v136 = v175;
        (v188)(v134, v175);
        v162(v118, v177, v129);
        v137 = swift_allocObject();
        *(v137 + 16) = v117;
        v203(v137 + v202, v118, v129);
        v218 = sub_10058D4E0;
        v219 = v137;
        aBlock = _NSConcreteStackBlock;
        v215 = 1107296256;
        v216 = sub_100006684;
        v217 = &unk_101627760;
        v138 = _Block_copy(&aBlock);

        v139 = v206;
        static DispatchQoS.unspecified.getter();
        v213 = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v138);

        sub_100016590(v169, v170);
        v193(v125, v126);
        v192(v139, v207);
        (v188)(v135, v136);
        (v196)(v177, v129);
        goto LABEL_20;
      }

      sub_10058B268(v103, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      v94 = swift_allocError();
      swift_willThrow();
      sub_10058B268(v92, type metadata accessor for SecureLocationsRelayAction.Response);
    }

    v140 = v189;
    (*(v190 + 8))(v188, v167);
    sub_10000B3A8(v140, &qword_1016980D0, &unk_10138F3B0);
    sub_10058B268(v79, type metadata accessor for MessagingOptions);
    v141 = static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v142 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v143 = swift_allocObject();
    *(v143 + 16) = v212;
    aBlock = v94;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v144 = String.init<A>(describing:)();
    v146 = v145;
    *(v143 + 56) = &type metadata for String;
    *(v143 + 64) = sub_100008C00();
    *(v143 + 32) = v144;
    *(v143 + 40) = v146;
    os_log(_:dso:log:_:_:)(v141, &_mh_execute_header, v142, "Message send error: %@", 22, 2, v143);

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v147 = v202;
    v148 = v201;
    v149 = v203;
    (*(v202 + 104))(v201, enum case for DispatchQoS.QoSClass.default(_:), v203);
    v150 = static OS_dispatch_queue.global(qos:)();
    (*(v147 + 8))(v148, v149);
    v151 = swift_allocObject();
    v151[2] = sub_10057CDA8;
    v151[3] = v95;
    v151[4] = v94;
    v218 = sub_10058D73C;
    v219 = v151;
    aBlock = _NSConcreteStackBlock;
    v215 = 1107296256;
    v216 = sub_100006684;
    v217 = &unk_101627670;
    v152 = _Block_copy(&aBlock);

    swift_errorRetain();
    v153 = v206;
    static DispatchQoS.unspecified.getter();
    v213 = _swiftEmptyArrayStorage;
    sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v155 = v204;
    v154 = v205;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v152);

    sub_100016590(v169, v170);
    (*(v210 + 8))(v155, v154);
    (*(v209 + 8))(v153, v207);
LABEL_20:
    sub_10058B268(v168, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);

    v68 = v208;
    return sub_10058B268(v68, type metadata accessor for SharedBeaconRecord);
  }

  v64 = v170;

  v65 = static os_log_type_t.error.getter();
  v66 = v168;
  v67 = v192;
  if (qword_101695030 != -1)
  {
    v157 = v65;
    swift_once();
    v65 = v157;
  }

  os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, qword_10177C378, "Attempt to send message before first unlock!", 44, 2, _swiftEmptyArrayStorage);
  type metadata accessor for SPOwnerSessionError(0);
  v213 = 5;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
  _BridgedStoredNSError.init(_:userInfo:)();
  *v67 = aBlock;
  swift_storeEnumTagMultiPayload();
  v68 = v208;
  sub_10055E93C(v67, v63, v208, v56, v55);

  sub_100016590(v169, v64);
  sub_10000B3A8(v67, &qword_10169F358, &qword_1013A0810);
  v69 = v66;
LABEL_11:
  sub_10058B268(v69, type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope);
  return sub_10058B268(v68, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10052F588()
{
  result = sub_10053A9C8(10, 1, 0, 0xE000000000000000, v43);
  if (v0)
  {
    return result;
  }

  v42 = LOBYTE(v43[0]);
  v2 = v43[2];
  v41 = v43[1];
  v3 = v43[3];
  result = sub_1010A5510();
  v4 = result;
  v5 = *(result + 16);
  v6 = _swiftEmptyArrayStorage;
  v55 = v2;
  v40 = v3;
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = 0;
  v8 = result + 32;
  v39 = result + 32;
  do
  {
    v9 = v6;
    v10 = (v8 + 160 * v7);
    v11 = v7;
    while (1)
    {
      if (v11 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v12 = v10[1];
      v45 = *v10;
      v46 = v12;
      v13 = v10[2];
      v14 = v10[3];
      v15 = v10[5];
      v49 = v10[4];
      v50 = v15;
      v47 = v13;
      v48 = v14;
      v16 = v10[6];
      v17 = v10[7];
      v18 = v10[9];
      v53 = v10[8];
      v54 = v18;
      v51 = v16;
      v52 = v17;
      sub_10013CD18(&v45, v43);
      sub_10013CD18(&v45, v43);
      if (sub_10022A85C() == 2)
      {
        break;
      }

      sub_10013CDDC(&v45);
LABEL_6:
      ++v11;
      result = sub_10013CDDC(&v45);
      v10 += 10;
      if (v5 == v11)
      {
        v6 = v9;
        v2 = v55;
        goto LABEL_17;
      }
    }

    v19 = sub_10022AC4C();
    sub_10013CDDC(&v45);
    if (!v19)
    {
      goto LABEL_6;
    }

    v6 = v9;
    result = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    if ((result & 1) == 0)
    {
      result = sub_101124390(0, v9[2] + 1, 1);
      v6 = v44;
    }

    v2 = v55;
    v21 = v6[2];
    v20 = v6[3];
    if (v21 >= v20 >> 1)
    {
      result = sub_101124390((v20 > 1), v21 + 1, 1);
      v6 = v44;
    }

    v7 = v11 + 1;
    v6[2] = v21 + 1;
    v22 = &v6[20 * v21];
    v23 = v46;
    v22[2] = v45;
    v22[3] = v23;
    v24 = v47;
    v25 = v48;
    v26 = v50;
    v22[6] = v49;
    v22[7] = v26;
    v22[4] = v24;
    v22[5] = v25;
    v27 = v51;
    v28 = v52;
    v29 = v54;
    v22[10] = v53;
    v22[11] = v29;
    v22[8] = v27;
    v22[9] = v28;
    v8 = v39;
    v3 = v40;
  }

  while (v5 - 1 != v11);
LABEL_17:

  v30 = v6[2];
  if (v30)
  {
    v43[0] = _swiftEmptyArrayStorage;
    sub_101124900(0, v30, 0);
    v31 = v43[0];
    v32 = v6 + 23;
    do
    {
      v33 = *(v32 - 16);
      v35 = *(v32 - 1);
      v34 = *v32;
      v43[0] = v31;
      v37 = v31[2];
      v36 = v31[3];

      if (v37 >= v36 >> 1)
      {
        sub_101124900((v36 > 1), v37 + 1, 1);
        v31 = v43[0];
      }

      v31[2] = v37 + 1;
      v38 = &v31[3 * v37];
      *(v38 + 32) = v33;
      v38[5] = v35;
      v38[6] = v34;
      v32 += 20;
      --v30;
    }

    while (v30);

    v2 = v55;
    v3 = v40;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_10057D1E0(v42, v41, v2, v3, v31, 0x404E000000000000, 0, 1, &_swiftEmptySetSingleton, &_swiftEmptySetSingleton, 0, 0, 0);

  return sub_100016590(v2, v3);
}

void sub_10052F8CC(char *a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v42 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v42 BOOLForKey:v15];

  if (v16)
  {
    v17 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v17 - 8) + 56))(a1, 2, 2, v17);
    v18 = v42;

    return;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v42 valueForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45[0] = v43;
  v45[1] = v44;
  if (!*(&v44 + 1))
  {

    sub_10000B3A8(v45, &unk_1016A0B10, &qword_10139BF40);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  (*(v6 + 56))(v4, v21 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

LABEL_12:
    sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
LABEL_13:
    v22 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v22 - 8) + 56))(a1, 1, 2, v22);
    return;
  }

  v41 = *(v6 + 32);
  v41(v14, v4, v5);
  static Date.trustedNow.getter(v12);
  sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {

    v34 = *(v6 + 8);
    v34(v12, v5);
    v34(v14, v5);
    goto LABEL_13;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177A560);
  (*(v6 + 16))(v9, v14, v5);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = v26;
    v40 = swift_slowAlloc();
    *&v45[0] = v40;
    *v26 = 136446210;
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = v25;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v37 = v24;
    v30 = *(v6 + 8);
    v30(v9, v5);
    v31 = sub_1000136BC(v27, v29, v45);

    v32 = v39;
    *(v39 + 1) = v31;
    v33 = v37;
    _os_log_impl(&_mh_execute_header, v37, v38, "Item sharing throttled. Try again after %{public}s", v32, 0xCu);
    sub_100007BAC(v40);

    v30(v12, v5);
  }

  else
  {

    v35 = *(v6 + 8);
    v35(v9, v5);
    v35(v12, v5);
  }

  v41(a1, v14, v5);
  v36 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  (*(*(v36 - 8) + 56))(a1, 0, 2, v36);
}

void sub_10052FFA4(char *a1@<X8>)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v37 - v11;
  __chkstk_darwin(v10);
  v14 = &v37 - v13;
  v42 = [objc_opt_self() standardUserDefaults];
  v15 = String._bridgeToObjectiveC()();
  v16 = [v42 BOOLForKey:v15];

  if (v16)
  {
    v17 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v17 - 8) + 56))(a1, 2, 2, v17);
    v18 = v42;

    return;
  }

  v19 = String._bridgeToObjectiveC()();
  v20 = [v42 valueForKey:v19];

  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v45[0] = v43;
  v45[1] = v44;
  if (!*(&v44 + 1))
  {

    sub_10000B3A8(v45, &unk_1016A0B10, &qword_10139BF40);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_12;
  }

  v21 = swift_dynamicCast();
  (*(v6 + 56))(v4, v21 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

LABEL_12:
    sub_10000B3A8(v4, &unk_101696900, &unk_10138B1E0);
LABEL_13:
    v22 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
    (*(*(v22 - 8) + 56))(a1, 1, 2, v22);
    return;
  }

  v41 = *(v6 + 32);
  v41(v14, v4, v5);
  static Date.trustedNow.getter(v12);
  sub_100003DFC(&qword_1016C9070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
  {

    v34 = *(v6 + 8);
    v34(v12, v5);
    v34(v14, v5);
    goto LABEL_13;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000076D4(v23, qword_10177A560);
  (*(v6 + 16))(v9, v14, v5);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = v26;
    v40 = swift_slowAlloc();
    *&v45[0] = v40;
    *v26 = 136446210;
    sub_100003DFC(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v38 = v25;
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    v37 = v24;
    v30 = *(v6 + 8);
    v30(v9, v5);
    v31 = sub_1000136BC(v27, v29, v45);

    v32 = v39;
    *(v39 + 1) = v31;
    v33 = v37;
    _os_log_impl(&_mh_execute_header, v37, v38, "Item sharing throttled. Try again after %{public}s", v32, 0xCu);
    sub_100007BAC(v40);

    v30(v12, v5);
  }

  else
  {

    v35 = *(v6 + 8);
    v35(v9, v5);
    v35(v12, v5);
  }

  v41(a1, v14, v5);
  v36 = sub_1000BC4D4(&qword_1016A4728, &qword_1013B10A8);
  (*(*(v36 - 8) + 56))(a1, 0, 2, v36);
}

uint64_t sub_10053067C(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v157 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v163 = *(v2 - 8);
  __chkstk_darwin(v2);
  v161 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for DispatchQoS();
  v160 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for DispatchQoS.QoSClass();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v187 = &v153 - v7;
  v202 = type metadata accessor for ShareRecord(0);
  v167 = *(v202 - 8);
  v8 = __chkstk_darwin(v202);
  v180 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v153 - v10;
  v12 = sub_1000BC4D4(&qword_1016A4A30, &qword_1013B13D0);
  v13 = __chkstk_darwin(v12 - 8);
  v168 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v153 - v15;
  v17 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v17 - 8);
  v19 = &v153 - v18;
  v199 = type metadata accessor for DirectorySequence();
  v208 = *(v199 - 8);
  __chkstk_darwin(v199);
  *&v196 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for URL();
  v209 = *(v205 - 1);
  v21 = __chkstk_darwin(v205);
  v23 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v207 = (&v153 - v24);
  v186 = type metadata accessor for OwnedBeaconRecord(0);
  v170 = *(v186 - 8);
  v25 = __chkstk_darwin(v186);
  v194 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v169 = &v153 - v28;
  v29 = __chkstk_darwin(v27);
  v204 = &v153 - v30;
  __chkstk_darwin(v29);
  v203 = &v153 - v31;
  v200 = type metadata accessor for DateInterval();
  v32 = *(v200 - 8);
  v33 = __chkstk_darwin(v200);
  v198 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v164 = &v153 - v36;
  v37 = __chkstk_darwin(v35);
  v190 = &v153 - v38;
  __chkstk_darwin(v37);
  v191 = &v153 - v39;
  v201 = type metadata accessor for Date();
  v172 = *(v201 - 8);
  v40 = __chkstk_darwin(v201);
  v42 = (&v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = __chkstk_darwin(v40);
  v206 = &v153 - v44;
  __chkstk_darwin(v43);
  v46 = &v153 - v45;
  v47 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v183 = v42;
    v165 = v46;
    v197 = qword_10177C378;
    os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, qword_10177C378, "Distribute keys", 15, 2, _swiftEmptyArrayStorage);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    OS_dispatch_queue.sync<A>(execute:)();
    v48 = aBlock[0];
    v49 = v165;
    static Date.trustedNow.getter(v165);
    result = sub_101073EF8(v48);
    if ((result * 60) >> 64 != (60 * result) >> 63)
    {
      break;
    }

    v171 = v32;
    v189 = 0;
    v51 = v172 + 16;
    v52 = v206;
    v53 = v49;
    v54 = v201;
    v55 = *(v172 + 2);
    v55(v206, v53, v201);
    DateInterval.init(start:duration:)();
    result = sub_101073F30(v48);
    if ((result * 60) >> 64 != (60 * result) >> 63)
    {
      goto LABEL_56;
    }

    v153 = v2;
    v55(v52, v165, v54);
    DateInterval.init(start:duration:)();
    v56 = sub_101073F14(v48);

    if ((v56 * 60) >> 64 != (60 * v56) >> 63)
    {
      goto LABEL_57;
    }

    v55(v52, v165, v54);
    DateInterval.init(start:duration:)();
    v192 = *(v193 + 144);
    v57 = sub_100025044();
    v176 = sub_1009098A8(_swiftEmptyArrayStorage);
    v58 = v57;
    v59 = v57[2];
    v32 = &unk_10138B000;
    v179 = v51;
    v178 = v55;
    v188 = v59;
    v195 = v11;
    v173 = v16;
    if (v59)
    {
      v186 = *(v186 + 20);
      v60 = v170;
      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v166 = v58;
      v185 = (v58 + v61);
      v184 = objc_opt_self();
      v62 = 0;
      v182 = *(v60 + 72);
      v181 = (v209 + 48);
      v174 = v209 + 32;
      *&v177 = v208 + 8;
      v175 = xmmword_10138BBE0;
      v46 = v189;
      v64 = v203;
      v63 = v204;
      v65 = v205;
      v209 += 8;
      do
      {
        v205 = v62;
        sub_10058B200(v185 + v182 * v62, v64, type metadata accessor for OwnedBeaconRecord);
        sub_10058B200(v64, v63, type metadata accessor for OwnedBeaconRecord);
        v80 = *(v192 + 168);
        v81 = objc_autoreleasePoolPush();
        if (qword_101694468 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v65, qword_10177A518);
        UUID.uuidString.getter();
        URL.appendingPathComponent(_:isDirectory:)();

        objc_autoreleasePoolPop(v81);
        aBlock[0] = _swiftEmptyArrayStorage;
        v211 = _swiftEmptyArrayStorage;
        v82 = [v184 defaultManager];
        v83 = v196;
        NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

        v84 = v83;
        DirectorySequence.next()();
        v85 = *v181;
        v86 = v65;
        if ((*v181)() != 1)
        {
          v208 = *v174;
          do
          {
            (v208)(v23, v19, v65);
            v87 = objc_autoreleasePoolPush();
            sub_1005FF9CC(v23, v80, aBlock, &v211);
            objc_autoreleasePoolPop(v87);
            (*v209)(v23, v65);
            DirectorySequence.next()();
          }

          while ((v85)(v19, 1, v65) != 1);
        }

        v66 = (v205 + 1);
        (*v177)(v84, v199);
        LODWORD(v208) = static os_log_type_t.debug.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v205 = static OS_os_log.default.getter();
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v67 = swift_allocObject();
        *(v67 + 16) = v175;
        v68 = aBlock[0];
        v69 = *(aBlock[0] + 16);
        *(v67 + 56) = &type metadata for Int;
        *(v67 + 64) = &protocol witness table for Int;
        *(v67 + 32) = v69;
        sub_100003DFC(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);

        v70 = v207;
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        *(v67 + 96) = &type metadata for String;
        *(v67 + 104) = sub_100008C00();
        *(v67 + 72) = v71;
        *(v67 + 80) = v73;
        v74 = v205;
        os_log(_:dso:log:_:_:)(v208, &_mh_execute_header, v205, "Found %i records at %@", 22, 2, v67);

        v75 = v70;
        v62 = v66;
        (*v209)(v75, v86);

        v76 = v176;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v76;
        v78 = v68;
        v63 = v204;
        sub_100FFDCF0(v78, v204, isUniquelyReferenced_nonNull_native);
        sub_10058B268(v63, type metadata accessor for OwnedBeaconRecord);
        v64 = v203;
        sub_10058B268(v203, type metadata accessor for OwnedBeaconRecord);
        v176 = aBlock[0];
        v79 = v66 == v188;
        v65 = v86;
      }

      while (!v79);

      v11 = v195;
      v16 = v173;
      v2 = v206;
      v32 = &unk_10138B000;
    }

    else
    {
      v2 = v52;

      v46 = v189;
    }

    v47 = swift_allocObject();
    v88 = 0;
    v184 = v47;
    v47[2] = 0;
    v89 = *(v176 + 64);
    v166 = v176 + 64;
    v90 = 1 << *(v176 + 32);
    v91 = -1;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    v92 = v91 & v89;
    v93 = (v90 + 63) >> 6;
    v186 = (v171 + 16);
    v185 = (v172 + 48);
    v182 = (v172 + 32);
    v188 = (v171 + 8);
    v196 = xmmword_101385D80;
    v177 = *(v32 + 190);
    v42 = v202;
    v94 = v168;
    v171 = v93;
    v207 = (v172 + 8);
    while (v92)
    {
      v19 = v88;
LABEL_31:
      *&v175 = (v92 - 1) & v92;
      v96 = __clz(__rbit64(v92)) | (v19 << 6);
      v97 = v176;
      v98 = v169;
      sub_10058B200(*(v176 + 48) + *(v170 + 72) * v96, v169, type metadata accessor for OwnedBeaconRecord);
      v99 = *(*(v97 + 56) + 8 * v96);
      v32 = &unk_1013B13D8;
      v100 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
      v101 = *(v100 + 48);
      sub_100589B28(v98, v94, type metadata accessor for OwnedBeaconRecord);
      *(v94 + v101) = v99;
      (*(*(v100 - 8) + 56))(v94, 0, 1, v100);

      v174 = v19;
      v42 = v202;
      v2 = v206;
      v16 = v173;
LABEL_32:
      sub_1000D2AD8(v94, v16, &qword_1016A4A30, &qword_1013B13D0);
      v102 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
      v103 = (*(*(v102 - 8) + 48))(v16, 1, v102);
      v104 = v194;
      if (v103 == 1)
      {

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v140 = v155;
        v141 = v154;
        v142 = v156;
        (*(v155 + 104))(v154, enum case for DispatchQoS.QoSClass.default(_:), v156);
        v143 = static OS_dispatch_queue.global(qos:)();
        (*(v140 + 8))(v141, v142);
        v144 = swift_allocObject();
        v145 = v158;
        v144[2] = v157;
        v144[3] = v145;
        v144[4] = v184;
        aBlock[4] = sub_10058CFC4;
        aBlock[5] = v144;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006684;
        aBlock[3] = &unk_10162A168;
        v146 = _Block_copy(aBlock);

        v147 = v159;
        static DispatchQoS.unspecified.getter();
        v211 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v148 = v161;
        v149 = v153;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v146);

        (*(v163 + 8))(v148, v149);
        (*(v160 + 8))(v147, v162);
        v150 = *v188;
        v151 = v200;
        (*v188)(v164, v200);
        v150(v190, v151);
        v150(v191, v151);
        (*v207)(v165, v201);
      }

      v23 = *&v16[*(v102 + 48)];
      sub_100589B28(v16, v194, type metadata accessor for OwnedBeaconRecord);
      v105 = *(v23 + 2);
      if (v105)
      {
        v106 = *(v193 + 320);
        v107 = (*(v167 + 80) + 32) & ~*(v167 + 80);
        v172 = v23;
        v108 = &v23[v107];
        v199 = *(v167 + 72);
        v192 = v106;
        while (1)
        {
          v208 = v105;
          sub_10058B200(v108, v11, type metadata accessor for ShareRecord);
          v209 = objc_autoreleasePoolPush();
          v114 = &v11[v42[9]];
          LODWORD(v205) = *v114;
          v115 = *(v114 + 1);
          v203 = *(v114 + 2);
          v204 = v115;
          v116 = &v11[v42[5]];
          __chkstk_darwin(v209);
          *(&v153 - 4) = v106;
          *(&v153 - 24) = 5;
          *(&v153 - 2) = v116;
          v32 = v201;
          OS_dispatch_queue.sync<A>(execute:)();
          v117 = sub_1010B2678(v2, 5u);
          v23 = v11;
          v118 = *v207;
          (*v207)(v2, v32);
          if (v117)
          {
            (*v186)(v198, v191, v200);
            v119 = &v23[v42[8]];
            v120 = v187;
            sub_1000D2A70(v119, v187, &unk_101696900, &unk_10138B1E0);
            if ((*v185)(v120, 1, v32) == 1)
            {
              sub_10000B3A8(v120, &unk_101696900, &unk_10138B1E0);
              v23 = v32;
              v32 = v207;
              v106 = v192;
              v121 = v116;
            }

            else
            {
              v189 = v46;
              v122 = v183;
              (*v182)(v183, v120, v32);
              v123 = v206;
              DateInterval.end.getter();
              v124 = static Date.< infix(_:_:)();
              v118(v123, v32);
              v23 = v32;
              v121 = v116;
              if (v124)
              {
                v178(v123, v122, v32);
                DateInterval.end.setter();
                LODWORD(v181) = static os_log_type_t.default.getter();
                sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
                v125 = swift_allocObject();
                *(v125 + 16) = v177;
                sub_10058B200(v195, v180, type metadata accessor for ShareRecord);
                v126 = String.init<A>(describing:)();
                v128 = v127;
                *(v125 + 56) = &type metadata for String;
                v129 = sub_100008C00();
                *(v125 + 64) = v129;
                *(v125 + 32) = v126;
                *(v125 + 40) = v128;
                v23 = v201;
                sub_100003DFC(&qword_10169D0F8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
                v130 = dispatch thunk of CustomStringConvertible.description.getter();
                *(v125 + 96) = &type metadata for String;
                *(v125 + 104) = v129;
                *(v125 + 72) = v130;
                *(v125 + 80) = v131;
                os_log(_:dso:log:_:_:)(v181, &_mh_execute_header, v197, "Using truncated interval in distributeKeys for expiring share %@: %@", 68, 2, v125);
              }

              v32 = v207;
              v118(v122, v23);
              v46 = v189;
              v106 = v192;
            }

            v2 = v206;
            static Date.trustedNow.getter(v206);
            sub_1010B1D04(v121, v2, 5);
            v118(v2, v23);
            v132 = v198;
            sub_100564334(v194, v198, v190, v133, v205, v204, v203);
            if (!v46)
            {
              (*v188)(v132, v200);
              v11 = v195;
              v42 = v202;
              goto LABEL_37;
            }

            v23 = static os_log_type_t.error.getter();
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v134 = swift_allocObject();
            *(v134 + 16) = v196;
            aBlock[0] = v46;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v135 = String.init<A>(describing:)();
            v32 = v46;
            v136 = v132;
            v138 = v137;
            *(v134 + 56) = &type metadata for String;
            *(v134 + 64) = sub_100008C00();
            *(v134 + 32) = v135;
            *(v134 + 40) = v138;
            os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v197, "Failed in distributeKeys: %@", 28, 2, v134);

            sub_1010B22E4(v121, 5);
            (*v188)(v136, v200);
            if (*(v184 + 2))
            {
            }

            else
            {
              *(v184 + 2) = v32;
            }

            v46 = 0;
            v42 = v202;
            v11 = v195;
          }

          else
          {
            v109 = static os_log_type_t.default.getter();
            sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
            v110 = swift_allocObject();
            *(v110 + 16) = v196;
            v111 = UUID.uuidString.getter();
            v113 = v112;
            *(v110 + 56) = &type metadata for String;
            *(v110 + 64) = sub_100008C00();
            *(v110 + 32) = v111;
            *(v110 + 40) = v113;
            v42 = v202;
            os_log(_:dso:log:_:_:)(v109, &_mh_execute_header, v197, "Skipping key update processing (requested too early): %@", 56, 2, v110);

            v11 = v23;
          }

          v2 = v206;
LABEL_37:
          objc_autoreleasePoolPop(v209);
          sub_10058B268(v11, type metadata accessor for ShareRecord);
          v108 += v199;
          v105 = v208 - 1;
          if (v208 == 1)
          {

            v47 = sub_10058B268(v194, type metadata accessor for OwnedBeaconRecord);
            v88 = v174;
            v94 = v168;
            goto LABEL_22;
          }
        }
      }

      sub_10058B268(v104, type metadata accessor for OwnedBeaconRecord);

      v88 = v174;
LABEL_22:
      v16 = v173;
      v93 = v171;
      v92 = v175;
    }

    if (v93 <= (v88 + 1))
    {
      v95 = (v88 + 1);
    }

    else
    {
      v95 = v93;
    }

    while (1)
    {
      v19 = (v88 + 1);
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v19 >= v93)
      {
        v174 = (v95 - 1);
        v139 = sub_1000BC4D4(&qword_1016A4A38, &unk_1013B13D8);
        (*(*(v139 - 8) + 56))(v94, 1, 1, v139);
        *&v175 = 0;
        goto LABEL_32;
      }

      v92 = *(v166 + 8 * v19);
      ++v88;
      if (v92)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_54:
    v152 = v47;
    swift_once();
    v47 = v152;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

uint64_t sub_1005322C8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AF10);
  sub_1000076D4(v0, qword_10177AF10);
  return Logger.init(subsystem:category:)();
}

void *sub_100532344()
{
  if (*(v0 + 272))
  {
    v1 = *(v0 + 272);
  }

  else
  {
    v2 = v0;
    type metadata accessor for CryptoKeyStreamInspector(0);
    swift_allocObject();

    v1 = sub_1008011A0(v3);

    *(v2 + 272) = v1;
  }

  return v1;
}

double sub_1005323CC@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_10057A1A4();
  v3 = *(v2 + 2);
  if (v3)
  {
    v4 = 32;
    while (1)
    {
      v5 = *&v2[v4 + 16];
      v19[0] = *&v2[v4];
      v19[1] = v5;
      v6 = *&v2[v4 + 32];
      v7 = *&v2[v4 + 48];
      v8 = *&v2[v4 + 80];
      v19[4] = *&v2[v4 + 64];
      v19[5] = v8;
      v19[2] = v6;
      v19[3] = v7;
      v9 = *&v2[v4 + 96];
      v10 = *&v2[v4 + 112];
      v11 = *&v2[v4 + 144];
      v20 = *&v2[v4 + 128];
      v21 = v11;
      v19[6] = v9;
      v19[7] = v10;
      memmove(__dst, &v2[v4], 0xA0uLL);
      SharingCircleWildAdvertisementKey.init(key:)();
      if (BYTE3(v20))
      {
        break;
      }

      v4 += 160;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_10013CD18(v19, &v18);

    v29 = __dst[6];
    v30 = __dst[7];
    v31 = __dst[8];
    v32 = __dst[9];
    v25 = __dst[2];
    v26 = __dst[3];
    v27 = __dst[4];
    v28 = __dst[5];
    v23 = __dst[0];
    v24 = __dst[1];
  }

  else
  {
LABEL_5:

    sub_10024ECB0(&v23);
  }

  v12 = v30;
  a1[6] = v29;
  a1[7] = v12;
  v13 = v32;
  a1[8] = v31;
  a1[9] = v13;
  v14 = v26;
  a1[2] = v25;
  a1[3] = v14;
  v15 = v28;
  a1[4] = v27;
  a1[5] = v15;
  result = *&v23;
  v17 = v24;
  *a1 = v23;
  a1[1] = v17;
  return result;
}

uint64_t sub_1005324E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005288AC(a1);
  }

  return result;
}

uint64_t sub_100532548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_1005325E8, a4, 0);
}

uint64_t sub_1005325E8()
{

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1005326A0, 0, 0);
}

uint64_t sub_1005326A0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v1;

  sub_1008CE048(0, 0, v2, &unk_1013B1400, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1005327C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101698DE8, &qword_1013909C0);
  v5[9] = v8;
  v5[10] = *(v8 - 8);
  v5[11] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_101698DF0, &qword_1013909C8);
  v5[12] = v9;
  v5[13] = *(v9 - 8);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_100532970, a4, 0);
}

uint64_t sub_100532970()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  type metadata accessor for Transaction();
  (*(v4 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  (*(v4 + 16))(v2, v1, v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v4 + 8))(v1, v3);

  return _swift_task_switch(sub_100532A90, 0, 0);
}

uint64_t sub_100532A90()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100532B6C;
  v5 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v5);
}

uint64_t sub_100532B6C()
{

  return _swift_task_switch(sub_100532C68, 0, 0);
}

uint64_t sub_100532C68()
{
  if (v0[2])
  {

    v1 = swift_task_alloc();
    v0[16] = v1;
    *v1 = v0;
    v1[1] = sub_100532DB4;
    v2 = v0[4];

    return unsafeBlocking<A>(_:)(v1, sub_10058D090, v2, &type metadata for () + 1);
  }

  else
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100532DB4()
{

  return _swift_task_switch(sub_100532ECC, 0, 0);
}

uint64_t sub_100532ECC()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_100532B6C;
  v2 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v2);
}

uint64_t sub_100532FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8, void (**a9)(uint64_t, char *, uint64_t), uint64_t a10, uint64_t a11, uint64_t a12)
{
  result = swift_beginAccess();
  if ((*(a12 + 80) & 1) == 0)
  {
    sub_10058BB74(a12 + 64, v16);
    sub_10108AD20(a6, a7, a8, a9, a10, a11);
    return sub_10058BBD0(v16);
  }

  return result;
}

uint64_t sub_100533090(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  sub_10058BB20();
  v4 = Set.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Message accounts changed %@.", 28, 2, v3);

  return PassthroughSubject.send(_:)();
}

uint64_t sub_1005331A4(uint64_t a1)
{
  v1 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = Array.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Messaging devices changed %@.", 29, 2, v3);

  return CurrentValueSubject.send(_:)();
}

uint64_t sub_100533364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9)
{
  v12 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138BBE0;
  type metadata accessor for UUID();
  sub_100003DFC(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100008C00();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v18;
  *(v14 + 64) = v18;
  *(v14 + 72) = a5;
  *(v14 + 80) = a6;

  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, a8, a9, 2, v14);
}

uint64_t sub_1005334D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = a6;
  result = swift_beginAccess();
  if (*(a12 + 96))
  {
    sub_10058B938(a12 + 88, v16);
    sub_10107E618(v14, a7, a8, a9, a11);
    return sub_10058B994(v16);
  }

  return result;
}

uint64_t sub_100533570(uint64_t a1)
{
  v1 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v2 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_101385D80;
  v4 = Array.description.getter();
  v6 = v5;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_100008C00();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)(v1, &_mh_execute_header, v2, "Connected devices changed: %@.", 30, 2, v3);

  return PassthroughSubject.send(_:)();
}

uint64_t sub_100533694@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v3 + 16);
      v8 = (v3 + 32 + 160 * v5);
      v9 = v5;
      while (1)
      {
        if (v9 >= v7)
        {
          __break(1u);
          return result;
        }

        v10 = v8[1];
        v28 = *v8;
        v29 = v10;
        v11 = v8[2];
        v12 = v8[3];
        v13 = v8[5];
        v32 = v8[4];
        v33 = v13;
        v30 = v11;
        v31 = v12;
        v14 = v8[6];
        v15 = v8[7];
        v16 = v8[9];
        v36 = v8[8];
        v37 = v16;
        v34 = v14;
        v35 = v15;
        v5 = v9 + 1;
        if (BYTE3(v36))
        {
          break;
        }

        v8 += 10;
        ++v9;
        if (v4 == v5)
        {
          goto LABEL_15;
        }
      }

      sub_10013CD18(&v28, &v27);
      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v6;
      if ((result & 1) == 0)
      {
        result = sub_101124390(0, v6[2] + 1, 1);
        v6 = v38;
      }

      v18 = v6[2];
      v17 = v6[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_101124390((v17 > 1), v18 + 1, 1);
        v6 = v38;
      }

      v6[2] = v18 + 1;
      v19 = &v6[20 * v18];
      v20 = v29;
      v19[2] = v28;
      v19[3] = v20;
      v21 = v30;
      v22 = v31;
      v23 = v33;
      v19[6] = v32;
      v19[7] = v23;
      v19[4] = v21;
      v19[5] = v22;
      v24 = v34;
      v25 = v35;
      v26 = v37;
      v19[10] = v36;
      v19[11] = v26;
      v19[8] = v24;
      v19[9] = v25;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

LABEL_15:
  *a2 = v6;
  return result;
}

void sub_100533818(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (v3)
  {
    v11 = a2;
    sub_101124900(0, v3, 0);
    v4 = (v2 + 184);
    do
    {
      v5 = *(v4 - 16);
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];

      if (v9 >= v8 >> 1)
      {
        sub_101124900((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[3 * v9];
      *(v10 + 32) = v5;
      v10[5] = v7;
      v10[6] = v6;
      v4 += 20;
      --v3;
    }

    while (v3);
    a2 = v11;
  }

  *a2 = _swiftEmptyArrayStorage;
}

uint64_t sub_100533900(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong() && (sub_1005323CC(v7), , v14 = v7[6], v15 = v7[7], v16 = v7[8], v17 = v7[9], v10 = v7[2], v11 = v7[3], v12 = v7[4], v13 = v7[5], v8 = v7[0], v9 = v7[1], sub_10058B134(&v8) != 1))
    {
      v18[6] = v14;
      v18[7] = v15;
      v18[8] = v16;
      v18[9] = v17;
      v18[2] = v10;
      v18[3] = v11;
      v18[4] = v12;
      v18[5] = v13;
      v18[0] = v8;
      v18[1] = v9;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_100533B34(v18);
        sub_10000B3A8(v7, &qword_1016B1750, &qword_1013B1358);
      }

      else
      {
        return sub_10000B3A8(v7, &qword_1016B1750, &qword_1013B1358);
      }
    }

    else
    {
      v2 = static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        v5 = v2;
        swift_once();
        v2 = v5;
      }

      return os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C378, "BUG: could not lookup companion MessagingDevice!", 48, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      v4 = static os_log_type_t.info.getter();
      if (qword_101695030 != -1)
      {
        v6 = v4;
        swift_once();
        v4 = v6;
      }

      return os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, qword_10177C378, "companionDidDisconnect", 22, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_100533B34(__int128 *a1)
{
  v3 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  v28 = 60;
  v29 = 0xE100000000000000;
  v6 = a1[7];
  v24 = a1[6];
  v25 = v6;
  v7 = a1[9];
  v26 = a1[8];
  v27 = v7;
  v8 = a1[3];
  v20 = a1[2];
  v21 = v8;
  v9 = a1[5];
  v22 = a1[4];
  v23 = v9;
  v10 = a1[1];
  v18 = *a1;
  v19 = v10;
  sub_10058ADE8();
  v11._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  String.append(_:)(v12);
  String.append(_:)(*(a1 + 6));
  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = 60;
  *(v5 + 40) = 0xE100000000000000;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "CompanionDidConnect: %@", 23, 2, v5, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);

  v14 = *(v1 + 200);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10058B92C;
  *(v15 + 24) = v1;
  *&v20 = sub_10040B9F8;
  *(&v20 + 1) = v15;
  *&v18 = _NSConcreteStackBlock;
  *(&v18 + 1) = 1107296256;
  *&v19 = sub_10013FE14;
  *(&v19 + 1) = &unk_1016296F0;
  v16 = _Block_copy(&v18);

  dispatch_sync(v14, v16);
  _Block_release(v16);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100533DBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = type metadata accessor for SharedBeaconRecord(0);
    sub_100533E34(a1 + *(v4 + 20));
    sub_1005340B4(0, 0);
  }

  return result;
}

uint64_t sub_100533E34(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v2 + 200);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = static os_log_type_t.info.getter();
  if (qword_101695030 != -1)
  {
LABEL_5:
    swift_once();
  }

  v10 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  v12 = UUID.uuidString.getter();
  v14 = v13;
  *(v11 + 56) = &type metadata for String;
  *(v11 + 64) = sub_100008C00();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v10, "Marking beacon %@ as dirty for all paired watches", 49, 2, v11);

  v15 = [objc_opt_self() standardUserDefaults];
  v16 = sub_10057A1A4();
  *&v18[-32] = __chkstk_darwin(v16);
  *&v18[-24] = v15;
  *&v18[-16] = a1;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
}

void sub_1005340B4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v500 = a2;
  v510 = a1;
  v520 = type metadata accessor for FamilyCryptoKeysV2(0);
  v519 = *(v520 - 8);
  v4 = __chkstk_darwin(v520);
  v444 = &v415 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v443 = &v415 - v6;
  MyAccessoryKeyEnvelope = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope(0);
  v7 = __chkstk_darwin(MyAccessoryKeyEnvelope);
  v469 = &v415 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v493 = &v415 - v9;
  v437 = type metadata accessor for DispatchQoS.QoSClass();
  v506 = *(v437 - 8);
  __chkstk_darwin(v437);
  v436 = &v415 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for DispatchWorkItemFlags();
  v505 = *(v462 - 8);
  __chkstk_darwin(v462);
  v461 = &v415 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = type metadata accessor for DispatchQoS();
  v502 = *(v460 - 8);
  __chkstk_darwin(v460);
  v459 = &v415 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = type metadata accessor for DispatchTime();
  v501 = *(v439 - 8);
  v13 = __chkstk_darwin(v439);
  v430 = &v415 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v438 = &v415 - v15;
  v463 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v16 = __chkstk_darwin(v463);
  v445 = &v415 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v466 = (&v415 - v19);
  v20 = __chkstk_darwin(v18);
  v433 = &v415 - v21;
  __chkstk_darwin(v20);
  v441 = (&v415 - v22);
  v481 = type metadata accessor for SystemInfo.DeviceLockState();
  v499 = *(v481 - 8);
  v23 = __chkstk_darwin(v481);
  v480 = &v415 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v479 = &v415 - v25;
  v26 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v27 = __chkstk_darwin(v26 - 8);
  v497 = &v415 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v478 = &v415 - v29;
  v521 = type metadata accessor for TimeBasedKey(0);
  v488 = *(v521 - 8);
  v30 = __chkstk_darwin(v521);
  v518 = &v415 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = (&v415 - v33);
  __chkstk_darwin(v32);
  v513 = &v415 - v35;
  v517 = type metadata accessor for FamilyCryptoKeysV1(0);
  v512 = *(v517 - 8);
  v36 = __chkstk_darwin(v517);
  v516 = &v415 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v514 = &v415 - v38;
  v447 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope(0);
  v39 = __chkstk_darwin(v447);
  v446 = &v415 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v475 = &v415 - v41;
  v42 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  __chkstk_darwin(v42 - 8);
  v44 = &v415 - v43;
  v504 = type metadata accessor for SharedBeaconRecord(0);
  v498 = *(v504 - 8);
  __chkstk_darwin(v504);
  v503 = &v415 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for UUID();
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v435 = &v415 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v456 = &v415 - v51;
  v52 = __chkstk_darwin(v50);
  v495 = &v415 - v53;
  v54 = __chkstk_darwin(v52);
  v467 = &v415 - v55;
  v56 = __chkstk_darwin(v54);
  v494 = &v415 - v57;
  v58 = __chkstk_darwin(v56);
  v440 = &v415 - v59;
  v60 = __chkstk_darwin(v58);
  v432 = &v415 - v61;
  v62 = __chkstk_darwin(v60);
  v434 = &v415 - v63;
  v64 = __chkstk_darwin(v62);
  v477 = &v415 - v65;
  v66 = __chkstk_darwin(v64);
  v442 = (&v415 - v67);
  v68 = __chkstk_darwin(v66);
  v476 = &v415 - v69;
  v492 = v70;
  __chkstk_darwin(v68);
  v511 = (&v415 - v71);
  v72 = type metadata accessor for DispatchPredicate();
  v73 = *(v72 - 8);
  __chkstk_darwin(v72);
  v75 = (&v415 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = *(v2 + 200);
  *v75 = v76;
  v77 = *(v73 + 104);
  v484 = v73 + 104;
  v483 = v77;
  v77(v75, enum case for DispatchPredicate.onQueue(_:), v72);
  v78 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v79 = *(v73 + 8);
  v485 = v75;
  v487 = v72;
  v486 = v73 + 8;
  v482 = v79;
  v79(v75, v72);
  if (v76)
  {
    sub_1005323CC(v534);
    v541 = v534[6];
    v542 = v534[7];
    v543 = v534[8];
    v544 = v534[9];
    v537 = v534[2];
    v538 = v534[3];
    v539 = v534[4];
    v540 = v534[5];
    v535 = v534[0];
    v536 = v534[1];
    if (sub_10058B134(&v535) == 1)
    {
      if (v510)
      {
        v510();
      }

      return;
    }

    v551 = v541;
    v552 = v542;
    v553 = v543;
    v554 = v544;
    v547 = v537;
    v548 = v538;
    v549 = v539;
    v550 = v540;
    v545 = v535;
    v546 = v536;
    sub_1005396C4(&v545);
    v81 = v80;
    v465 = *(v80 + 16);
    if (!v465)
    {
LABEL_75:
      sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);

      return;
    }

    v82 = 0;
    v515 = 0;
    v509 = v47 + 16;
    v473 = (v498 + 6);
    v489 = (v47 + 32);
    v455 = (v47 + 56);
    v454 = enum case for DispatchPredicate.notOnQueue(_:);
    v453 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
    v451 = (v499 + 8);
    v452 = (v499 + 104);
    v418 = (v506 + 104);
    HIDWORD(v417) = enum case for DispatchQoS.QoSClass.default(_:);
    v428 = &v523;
    v421 = (v502 + 1);
    v422 = (v505 + 8);
    v472 = (v47 + 8);
    v415 = v492 + 7;
    v416 = (v506 + 8);
    v419 = (v501 + 8);
    v468 = xmmword_10138BBE0;
    v431 = xmmword_101385D80;
    v449 = v34;
    v450 = v44;
    v471 = v80;
    v507 = v46;
    v508 = v3;
    v448 = v47;
    while (1)
    {
      if (v82 >= *(v81 + 16))
      {
        __break(1u);
        break;
      }

      v85 = *(v47 + 80);
      v86 = v81 + ((v85 + 32) & ~v85) + *(v47 + 72) * v82;
      v87 = *(v47 + 16);
      v88 = v511;
      v506 = v87;
      (v87)(v511, v86, v46);
      v89 = *(v3 + 144);
      sub_100AA5198(v88, v44);
      if ((*v473)(v44, 1, v504) == 1)
      {

        sub_10000B3A8(v44, &unk_101698C30, &unk_101392630);
        sub_100538D54(v511, &v545);
        v374 = sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
        if (v510)
        {
          (v510)(v374);
        }

        goto LABEL_105;
      }

      v502 = v89;
      v496 = v82;
      v90 = v503;
      sub_100589B28(v44, v503, type metadata accessor for SharedBeaconRecord);
      LODWORD(v498) = static os_log_type_t.info.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v501 = v85;
      v499 = ~v85;
      v505 = qword_10177C378;
      v490 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v91 = swift_allocObject();
      *(v91 + 16) = v468;
      v92 = v504;
      v464 = *(v504 + 20);
      v93 = UUID.uuidString.getter();
      v95 = v94;
      *(v91 + 56) = &type metadata for String;
      v96 = sub_100008C00();
      *(v91 + 64) = v96;
      *(v91 + 32) = v93;
      *(v91 + 40) = v95;
      v532 = 60;
      v533 = 0xE100000000000000;
      v528 = v551;
      v529 = v552;
      v530 = v553;
      v531 = v554;
      v524 = v547;
      v525 = v548;
      v526 = v549;
      v527 = v550;
      v522 = v545;
      v523 = v546;
      sub_10058ADE8();
      v97._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
      String.append(_:)(v97);

      v98._countAndFlagsBits = 8250;
      v98._object = 0xE200000000000000;
      String.append(_:)(v98);
      String.append(_:)(v551);
      v99._countAndFlagsBits = 62;
      v99._object = 0xE100000000000000;
      String.append(_:)(v99);
      v100 = v532;
      v101 = v533;
      *(v91 + 96) = &type metadata for String;
      *(v91 + 104) = v96;
      v491 = v96;
      *(v91 + 72) = v100;
      *(v91 + 80) = v101;
      os_log(_:dso:log:_:_:)(v498, &_mh_execute_header, v505, "Distributing shared keys for %@ to %@", 37, 2, v91);

      v102 = *(v90 + *(v92 + 48));
      if (*(v90 + *(v92 + 44)) == -1)
      {
        v129 = v515;
        if (v102 != -1)
        {
LABEL_82:

          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          v375 = static os_log_type_t.error.getter();
          v376 = swift_allocObject();
          *(v376 + 16) = v431;
          v377 = UUID.uuidString.getter();
          v378 = v491;
          *(v376 + 56) = &type metadata for String;
          *(v376 + 64) = v378;
          *(v376 + 32) = v377;
          *(v376 + 40) = v379;
          os_log(_:dso:log:_:_:)(v375, &_mh_execute_header, v505, "Unsupported beacon type for %@", 30, 2, v376);

          if (v510)
          {
            (v510)(v380);
          }

          sub_10058B268(v90, type metadata accessor for SharedBeaconRecord);
          (*v472)(v511, v507);
          return;
        }

        type metadata accessor for BeaconKeyManager(0);
        OSAllocatedUnfairLock.callAsFunction<A>(_:)();
        v130 = v90;
        v131 = sub_100731528(v90, 0);
        v133 = v132;
        v135 = v134;

        if (v135 != 1)
        {
          v381 = v130;
          v46 = v507;
          if (v135 == 255)
          {

            sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          }

          else
          {
            sub_10058B14C(v131, v133, v135);
            sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          }

          v402 = static os_log_type_t.error.getter();
          v403 = swift_allocObject();
          *(v403 + 16) = v431;
          v90 = v381;
          v404 = UUID.uuidString.getter();
          v405 = v491;
          *(v403 + 56) = &type metadata for String;
          *(v403 + 64) = v405;
          *(v403 + 32) = v404;
          *(v403 + 40) = v406;
          os_log(_:dso:log:_:_:)(v402, &_mh_execute_header, v505, "No keys for %@", 14, 2, v403, v415);
LABEL_97:

          if (v510)
          {
            (v510)(v407);
          }

          v408 = v90;
          goto LABEL_104;
        }

        v46 = v507;
        v136 = v506;
        (v506)(v476, v511, v507);
        v137 = v131[2];
        if (v137)
        {
          v502 = v133;
          v515 = v129;
          *&v522 = _swiftEmptyArrayStorage;
          v138 = v131;
          sub_101124C98(0, v137, 0);
          v139 = v522;
          v140 = *(v488 + 80);
          v498 = v138;
          v141 = v138 + ((v140 + 32) & ~v140);
          v142 = *(v488 + 72);
          do
          {
            v143 = v513;
            sub_10058B200(v141, v513, type metadata accessor for TimeBasedKey);
            sub_100589B28(v143, v34, type metadata accessor for TimeBasedKey);
            v144 = v516;
            *v516 = *v34;
            v145 = v521;
            v146 = *(v521 + 20);
            v147 = *(v517 + 20);
            v148 = type metadata accessor for DateInterval();
            (*(*(v148 - 8) + 16))(&v144[v147], v34 + v146, v148);
            v149 = (v34 + *(v145 + 24));
            v150 = v149[5];
            if (v150 >> 60 == 15)
            {
              v151 = v149[2];
              v152 = v149[3];
              sub_100017D5C(v151, v152);
              sub_10058B268(v34, type metadata accessor for TimeBasedKey);
            }

            else
            {
              v151 = v149[4];
              sub_100017D5C(v151, v149[5]);
              sub_10058B268(v34, type metadata accessor for TimeBasedKey);
              v152 = v150 | 0x2000000000000000;
            }

            v153 = v516;
            v154 = &v516[*(v517 + 24)];
            *v154 = v151;
            v154[1] = v152;
            v155 = v514;
            sub_100589B28(v153, v514, type metadata accessor for FamilyCryptoKeysV1);
            *&v522 = v139;
            v157 = v139[2];
            v156 = v139[3];
            if (v157 >= v156 >> 1)
            {
              sub_101124C98((v156 > 1), v157 + 1, 1);
              v155 = v514;
              v139 = v522;
            }

            v139[2] = v157 + 1;
            sub_100589B28(v155, v139 + ((*(v512 + 80) + 32) & ~*(v512 + 80)) + *(v512 + 72) * v157, type metadata accessor for FamilyCryptoKeysV1);
            v141 += v142;
            --v137;
          }

          while (v137);
          sub_10058B14C(v498, v502, 1u);
          v46 = v507;
          v136 = v506;
          v129 = v515;
        }

        else
        {
          sub_10058B14C(v131, v133, 1u);
          v139 = _swiftEmptyArrayStorage;
        }

        v244 = *v489;
        v245 = v475;
        (*v489)(v475, v476, v46);
        *(v245 + *(v447 + 20)) = v139;
        v246 = v245;
        v247 = v446;
        sub_10058B200(v246, v446, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
        sub_10053AE6C(0, 1, v247, &v522);
        v248 = v501;
        if (v129)
        {

          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          v409 = static os_log_type_t.error.getter();
          v410 = swift_allocObject();
          *(v410 + 16) = v431;
          swift_getErrorValue();
          v411 = Error.localizedDescription.getter();
          v412 = v491;
          *(v410 + 56) = &type metadata for String;
          *(v410 + 64) = v412;
          *(v410 + 32) = v411;
          *(v410 + 40) = v413;
          os_log(_:dso:log:_:_:)(v409, &_mh_execute_header, v505, "Error in distributeKeysToConnectedWatch: %@", 43, 2, v410);

          if (v510)
          {
            (v510)(v414);
          }

          v400 = type metadata accessor for CompanionSelfBeaconingKeyEnvelope;
          v401 = v475;
LABEL_103:
          sub_10058B268(v401, v400);
          v408 = v503;
LABEL_104:
          sub_10058B268(v408, type metadata accessor for SharedBeaconRecord);
LABEL_105:
          (*v472)(v511, v46);
          return;
        }

        v515 = 0;
        LODWORD(v457) = v522;
        v429 = *(&v522 + 1);
        v498 = *(&v523 + 1);
        v474 = v523;
        LODWORD(v427) = BYTE8(v553);
        v425 = *(&v554 + 1);
        v426 = v554;
        (*v455)(v478, 1, 1, v46);
        v249 = swift_allocObject();
        swift_weakInit();
        v250 = v442;
        v136(v442, v511, v46);
        v136(v477, v250, v46);
        v251 = (v248 + 24) & v499;
        v423 = v251 + v492;
        v252 = v46;
        v253 = (v251 + v492 + 7) & 0xFFFFFFFFFFFFFFF8;
        v254 = swift_allocObject();
        *(v254 + 16) = v249;
        v424 = v251;
        v458 = v244;
        (v244)(v254 + v251, v250, v252);
        v255 = v254 + v253;
        v256 = v550;
        *(v255 + 64) = v549;
        *(v255 + 80) = v256;
        v257 = v548;
        *(v255 + 32) = v547;
        *(v255 + 48) = v257;
        v258 = v554;
        *(v255 + 128) = v553;
        *(v255 + 144) = v258;
        v259 = v552;
        *(v255 + 96) = v551;
        *(v255 + 112) = v259;
        v260 = v546;
        *v255 = v545;
        *(v255 + 16) = v260;
        v464 = v254;
        v261 = (v254 + ((v253 + 167) & 0xFFFFFFFFFFFFFFF8));
        v262 = v500;
        *v261 = v510;
        v261[1] = v262;
        v263 = *(v508 + 168);
        v264 = v485;
        *v485 = v263;
        v265 = v487;
        v483(v264, v454, v487);
        sub_1000D2A70(v534, &v522, &qword_1016B1750, &qword_1013B1358);
        sub_100012908(v510, v262);
        v502 = v249;

        v266 = v263;
        LOBYTE(v263) = _dispatchPreconditionTest(_:)();
        v482(v264, v265);
        if ((v263 & 1) == 0)
        {
          goto LABEL_110;
        }

        v267 = v479;
        static SystemInfo.lockState.getter();
        v268 = v480;
        v269 = v481;
        (*v452)(v480, v453, v481);
        sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
        v270 = dispatch thunk of static Equatable.== infix(_:_:)();
        v271 = *v451;
        (*v451)(v268, v269);
        v271(v267, v269);
        if (v270)
        {
          v272 = static os_log_type_t.error.getter();
          v273 = v505;
          os_log(_:dso:log:_:_:)(v272, &_mh_execute_header, v505, "Attempt to send local message before first unlock!", 50, 2, _swiftEmptyArrayStorage);
          type metadata accessor for SPOwnerSessionError(0);
          v532 = 5;
          sub_100032898(_swiftEmptyArrayStorage);
          sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
          _BridgedStoredNSError.init(_:userInfo:)();
          v274 = v441;
          *v441 = v522;
          swift_storeEnumTagMultiPayload();
          v275 = v433;
          sub_1000D2A70(v274, v433, &qword_10169F358, &qword_1013A0810);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v276 = static os_log_type_t.info.getter();
            v277 = swift_allocObject();
            *(v277 + 16) = v431;
            swift_getErrorValue();
            v278 = Error.localizedDescription.getter();
            v279 = v491;
            *(v277 + 56) = &type metadata for String;
            *(v277 + 64) = v279;
            *(v277 + 32) = v278;
            *(v277 + 40) = v280;
            os_log(_:dso:log:_:_:)(v276, &_mh_execute_header, v273, "Local send failure: %@.", 23, 2, v277);

            v46 = v507;
            v47 = v448;
            v34 = v449;
            v218 = v496;
            v282 = v474;
          }

          else
          {
            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            v47 = v448;
            v330 = v515;
            if (Strong)
            {
              v331 = *(Strong + 200);

              __chkstk_darwin(v332);
              sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
              OS_dispatch_queue.sync<A>(execute:)();
              v515 = v330;
              v275 = v433;
            }

            v46 = v507;
            v34 = v449;
            v218 = v496;
            v281 = sub_10000B3A8(v275, &qword_10169F358, &qword_1013A0810);
            v282 = v474;
          }

          v333 = v478;
          v334 = v498;
          if (v510)
          {
            (v510)(v281);
          }

          sub_100016590(v282, v334);

          sub_10000B3A8(v441, &qword_10169F358, &qword_1013A0810);
          sub_10000B3A8(v333, &qword_1016980D0, &unk_10138F3B0);
          sub_10058B268(v475, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
          sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
          v83 = *v472;
          (*v472)(v511, v46);
          v81 = v471;
        }

        else
        {
          v420 = v266;
          v283 = v508;
          v284 = v432;
          v285 = v515;
          sub_100543BF0(v457, v429, v474, v498, v426, v425, 0, v432, v478, 0, 1, 0);
          v515 = v285;
          if (v285)
          {
            v286 = v285;
            v287 = static os_log_type_t.error.getter();
            v288 = swift_allocObject();
            *(v288 + 16) = v431;
            *&v522 = v286;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v289 = String.init<A>(describing:)();
            v290 = v491;
            *(v288 + 56) = &type metadata for String;
            *(v288 + 64) = v290;
            *(v288 + 32) = v289;
            *(v288 + 40) = v291;
            os_log(_:dso:log:_:_:)(v287, &_mh_execute_header, v505, "Message send error: %@", 22, 2, v288);

            sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
            v293 = v436;
            v292 = v437;
            (*v418)(v436, HIDWORD(v417), v437);
            v294 = static OS_dispatch_queue.global(qos:)();
            (*v416)(v293, v292);
            v295 = swift_allocObject();
            v296 = v464;
            v295[2] = sub_10058B160;
            v295[3] = v296;
            v295[4] = v286;
            *&v524 = sub_10058D73C;
            *(&v524 + 1) = v295;
            *&v522 = _NSConcreteStackBlock;
            *(&v522 + 1) = 1107296256;
            *&v523 = sub_100006684;
            *(&v523 + 1) = &unk_1016293A8;
            v297 = _Block_copy(&v522);

            swift_errorRetain();
            v298 = v459;
            static DispatchQoS.unspecified.getter();
            v532 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v300 = v461;
            v299 = v462;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            sub_100016590(v474, v498);
            _Block_release(v297);

            (*v422)(v300, v299);
            (*v421)(v298, v460);
            sub_10000B3A8(v478, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v475, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
            sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
            v83 = *v472;
            v46 = v507;
            (*v472)(v511, v507);

            v515 = 0;
          }

          else
          {
            v335 = v434;
            v336 = v507;
            v337 = v458;
            v458(v434, v284, v507);
            v338 = v337;
            sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
            swift_allocObject();
            v505 = Future.init()();
            v339 = v440;
            v340 = v335;
            v341 = v283;
            v342 = v506;
            (v506)(v440, v340, v336);
            v343 = swift_allocObject();
            *(v343 + 16) = v341;
            v338(v343 + v424, v339, v336);
            v344 = (v343 + v253);
            v345 = v339;
            v346 = v464;
            *v344 = sub_10058B160;
            v344[1] = v346;

            Future.addSuccess(block:)();

            v347 = swift_allocObject();
            *(v347 + 16) = sub_10058B160;
            *(v347 + 24) = v346;

            Future.addFailure(block:)();

            v342(v339, v434, v336);
            v348 = v341;
            v349 = (v501 + 16) & v499;
            v350 = (v415 + v349) & 0xFFFFFFFFFFFFFFF8;
            v351 = swift_allocObject();
            v458(v351 + v349, v345, v336);
            *(v351 + v350) = v348;
            *(v351 + ((v350 + 15) & 0xFFFFFFFFFFFFFFF8)) = v505;
            v352 = swift_allocObject();
            *(v352 + 16) = sub_10058D4E8;
            *(v352 + 24) = v351;
            v499 = v351;
            *&v524 = sub_10040B9F8;
            *(&v524 + 1) = v352;
            *&v522 = _NSConcreteStackBlock;
            *(&v522 + 1) = 1107296256;
            *&v523 = sub_10013FE14;
            *(&v523 + 1) = &unk_101629470;
            v353 = _Block_copy(&v522);

            dispatch_sync(v420, v353);
            _Block_release(v353);
            LOBYTE(v353) = swift_isEscapingClosureAtFileLocation();

            if (v353)
            {
              goto LABEL_112;
            }

            v354 = v430;
            static DispatchTime.now()();
            + infix(_:_:)();
            v491 = *v419;
            (v491)(v354, v439);
            v355 = v440;
            (v506)(v440, v434, v336);
            v356 = swift_allocObject();
            *(v356 + 16) = v348;
            v458(v356 + v424, v355, v336);
            *&v524 = sub_10058D4EC;
            *(&v524 + 1) = v356;
            *&v522 = _NSConcreteStackBlock;
            *(&v522 + 1) = 1107296256;
            *&v523 = sub_100006684;
            *(&v523 + 1) = &unk_1016294C0;
            v357 = _Block_copy(&v522);

            v358 = v459;
            static DispatchQoS.unspecified.getter();
            v532 = _swiftEmptyArrayStorage;
            sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            v360 = v461;
            v359 = v462;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v361 = v438;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            sub_100016590(v474, v498);
            _Block_release(v357);

            (*v422)(v360, v359);
            (*v421)(v358, v460);
            (v491)(v361, v439);
            v83 = *v472;
            v46 = v507;
            (*v472)(v434, v507);
            sub_10000B3A8(v478, &qword_1016980D0, &unk_10138F3B0);
            sub_10058B268(v475, type metadata accessor for CompanionSelfBeaconingKeyEnvelope);
            sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
            v83(v511, v46);
          }

          v47 = v448;
          v34 = v449;
          v81 = v471;
          v218 = v496;
        }

        v84 = v477;
        goto LABEL_9;
      }

      v103 = v515;
      if (v102 == -1)
      {
        goto LABEL_82;
      }

      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v498 = sub_100731528(v90, 0);
      v474 = v104;
      v106 = v105;

      if (v106 != 1)
      {
        if (v106 == 255)
        {

          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          v362 = static os_log_type_t.error.getter();
          v363 = swift_allocObject();
          *(v363 + 16) = v431;
          v364 = v503;
          v365 = UUID.uuidString.getter();
          v366 = v491;
          *(v363 + 56) = &type metadata for String;
          *(v363 + 64) = v366;
          *(v363 + 32) = v365;
          *(v363 + 40) = v367;
          os_log(_:dso:log:_:_:)(v362, &_mh_execute_header, v505, "No primary keys for %@", 22, 2, v363, v415);
        }

        else
        {
          sub_10058B14C(v498, v474, v106);
          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);

          v382 = static os_log_type_t.error.getter();
          v383 = swift_allocObject();
          *(v383 + 16) = v431;
          v364 = v503;
          v384 = UUID.uuidString.getter();
          v385 = v491;
          *(v383 + 56) = &type metadata for String;
          *(v383 + 64) = v385;
          *(v383 + 32) = v384;
          *(v383 + 40) = v386;
          os_log(_:dso:log:_:_:)(v382, &_mh_execute_header, v505, "No primary for %@", 17, 2, v383, v415);
        }

        v388 = v507;
        if (v510)
        {
          (v510)(v387);
        }

        sub_10058B268(v364, type metadata accessor for SharedBeaconRecord);
        (*v472)(v511, v388);
        return;
      }

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v107 = sub_100731528(v90, 1);
      v109 = v108;
      v111 = v110;

      if (v111 != 1)
      {
        v46 = v507;
        v368 = v505;
        if (v111 == 255)
        {

          sub_10058B14C(v498, v474, 1u);
          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
          v369 = static os_log_type_t.error.getter();
          v370 = swift_allocObject();
          *(v370 + 16) = v431;
          v371 = UUID.uuidString.getter();
          v372 = v491;
          *(v370 + 56) = &type metadata for String;
          *(v370 + 64) = v372;
          *(v370 + 32) = v371;
          *(v370 + 40) = v373;
          os_log(_:dso:log:_:_:)(v369, &_mh_execute_header, v368, "No secondary keys for %@", 24, 2, v370, v415);
        }

        else
        {
          sub_10058B14C(v107, v109, v111);
          sub_10058B14C(v498, v474, 1u);
          sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);

          v389 = static os_log_type_t.error.getter();
          v390 = swift_allocObject();
          *(v390 + 16) = v431;
          v391 = UUID.uuidString.getter();
          v392 = v491;
          *(v390 + 56) = &type metadata for String;
          *(v390 + 64) = v392;
          *(v390 + 32) = v391;
          *(v390 + 40) = v393;
          os_log(_:dso:log:_:_:)(v389, &_mh_execute_header, v368, "No secondary for %@", 19, 2, v390, v415);
        }

        goto LABEL_97;
      }

      v458 = v109;
      v464 = v103;
      v46 = v507;
      (v506)(v494, v511, v507);
      v112 = v498;
      v113 = v498[2];
      v502 = v107;
      if (v113)
      {
        *&v522 = _swiftEmptyArrayStorage;
        sub_101124C54(0, v113, 0);
        v114 = v522;
        v115 = v112 + ((*(v488 + 80) + 32) & ~*(v488 + 80));
        v515 = *(v488 + 72);
        v116 = v443;
        do
        {
          v117 = v518;
          sub_10058B200(v115, v518, type metadata accessor for TimeBasedKey);
          *v116 = *v117;
          v118 = v521;
          v119 = *(v521 + 20);
          v120 = v520;
          v121 = *(v520 + 20);
          v122 = type metadata accessor for DateInterval();
          (*(*(v122 - 8) + 16))(&v116[v121], &v117[v119], v122);
          v123 = &v117[*(v118 + 24)];
          v124 = *(v123 + 2);
          v125 = *(v123 + 3);
          sub_100017D5C(v124, v125);
          sub_10058B268(v117, type metadata accessor for TimeBasedKey);
          v126 = &v116[*(v120 + 24)];
          *v126 = v124;
          v126[1] = v125;
          *&v522 = v114;
          v128 = v114[2];
          v127 = v114[3];
          if (v128 >= v127 >> 1)
          {
            sub_101124C54((v127 > 1), v128 + 1, 1);
            v114 = v522;
          }

          v114[2] = v128 + 1;
          sub_100589B28(v116, v114 + ((*(v519 + 80) + 32) & ~*(v519 + 80)) + *(v519 + 72) * v128, type metadata accessor for FamilyCryptoKeysV2);
          v115 += v515;
          --v113;
        }

        while (v113);
        v457 = v114;
        sub_10058B14C(v498, v474, 1u);
        v46 = v507;
        v107 = v502;
        v158 = v502[2];
        if (v158)
        {
LABEL_36:
          *&v522 = _swiftEmptyArrayStorage;
          sub_101124C54(0, v158, 0);
          v159 = v522;
          v160 = v107 + ((*(v488 + 80) + 32) & ~*(v488 + 80));
          v515 = *(v488 + 72);
          v161 = v444;
          do
          {
            v162 = v518;
            sub_10058B200(v160, v518, type metadata accessor for TimeBasedKey);
            *v161 = *v162;
            v163 = v521;
            v164 = *(v521 + 20);
            v165 = v520;
            v166 = *(v520 + 20);
            v167 = type metadata accessor for DateInterval();
            (*(*(v167 - 8) + 16))(&v161[v166], &v162[v164], v167);
            v168 = &v162[*(v163 + 24)];
            v169 = *(v168 + 2);
            v170 = *(v168 + 3);
            sub_100017D5C(v169, v170);
            sub_10058B268(v162, type metadata accessor for TimeBasedKey);
            v171 = &v161[*(v165 + 24)];
            *v171 = v169;
            v171[1] = v170;
            *&v522 = v159;
            v173 = v159[2];
            v172 = v159[3];
            if (v173 >= v172 >> 1)
            {
              sub_101124C54((v172 > 1), v173 + 1, 1);
              v161 = v444;
              v159 = v522;
            }

            v159[2] = v173 + 1;
            sub_100589B28(v161, v159 + ((*(v519 + 80) + 32) & ~*(v519 + 80)) + *(v519 + 72) * v173, type metadata accessor for FamilyCryptoKeysV2);
            v160 += v515;
            --v158;
          }

          while (v158);
          sub_10058B14C(v502, v458, 1u);
          v46 = v507;
          goto LABEL_43;
        }
      }

      else
      {
        sub_10058B14C(v498, v474, 1u);
        v457 = _swiftEmptyArrayStorage;
        v158 = v107[2];
        if (v158)
        {
          goto LABEL_36;
        }
      }

      sub_10058B14C(v107, v458, 1u);
      v159 = _swiftEmptyArrayStorage;
LABEL_43:
      v174 = *v489;
      v175 = v493;
      (*v489)(v493, v494, v46);
      v176 = MyAccessoryKeyEnvelope;
      *(v175 + *(MyAccessoryKeyEnvelope + 20)) = v457;
      *(v175 + *(v176 + 24)) = v159;
      v177 = v175;
      v178 = v469;
      sub_10058B200(v177, v469, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
      v179 = v464;
      sub_10053B168(0, 2, v178, &v522);
      v180 = v510;
      v515 = v179;
      if (v179)
      {

        sub_10000B3A8(v534, &qword_1016B1750, &qword_1013B1358);
        v394 = static os_log_type_t.error.getter();
        v395 = swift_allocObject();
        *(v395 + 16) = v431;
        swift_getErrorValue();
        v396 = Error.localizedDescription.getter();
        v397 = v491;
        *(v395 + 56) = &type metadata for String;
        *(v395 + 64) = v397;
        *(v395 + 32) = v396;
        *(v395 + 40) = v398;
        os_log(_:dso:log:_:_:)(v394, &_mh_execute_header, v505, "Error in distributeKeysToConnectedWatch: %@", 43, 2, v395);

        if (v180)
        {
          (v180)(v399);
        }

        v400 = type metadata accessor for CompanionFindMyAccessoryKeyEnvelope;
        v401 = v493;
        goto LABEL_103;
      }

      LODWORD(v457) = v522;
      v427 = *(&v522 + 1);
      v474 = *(&v523 + 1);
      v498 = v523;
      LODWORD(v426) = BYTE8(v553);
      v424 = *(&v554 + 1);
      v425 = v554;
      (*v455)(v497, 1, 1, v46);
      v181 = swift_allocObject();
      v502 = v181;
      swift_weakInit();
      v182 = v467;
      v183 = v506;
      (v506)(v467, v511, v46);
      v183(v495, v182, v46);
      v184 = v46;
      v185 = (v501 + 24) & v499;
      v420 = (v185 + v492);
      v186 = (v185 + v492 + 7) & 0xFFFFFFFFFFFFFFF8;
      v458 = ((v186 + 167) & 0xFFFFFFFFFFFFFFF8);
      v187 = swift_allocObject();
      *(v187 + 16) = v181;
      v423 = v185;
      v429 = v174;
      (v174)(v187 + v185, v182, v184);
      v188 = v186;
      v189 = v187 + v186;
      v190 = v550;
      *(v189 + 64) = v549;
      *(v189 + 80) = v190;
      v191 = v548;
      *(v189 + 32) = v547;
      *(v189 + 48) = v191;
      v192 = v554;
      *(v189 + 128) = v553;
      *(v189 + 144) = v192;
      v193 = v552;
      *(v189 + 96) = v551;
      *(v189 + 112) = v193;
      v194 = v546;
      *v189 = v545;
      *(v189 + 16) = v194;
      v464 = v187;
      v195 = (v458 + v187);
      v196 = v500;
      *v195 = v510;
      v195[1] = v196;
      v197 = *(v508 + 168);
      v198 = v485;
      *v485 = v197;
      v199 = v487;
      v483(v198, v454, v487);
      sub_1000D2A70(v534, &v522, &qword_1016B1750, &qword_1013B1358);
      sub_100012908(v510, v196);

      v200 = v197;
      LOBYTE(v197) = _dispatchPreconditionTest(_:)();
      v482(v198, v199);
      if ((v197 & 1) == 0)
      {
        goto LABEL_109;
      }

      v201 = v479;
      static SystemInfo.lockState.getter();
      v202 = v480;
      v203 = v481;
      (*v452)(v480, v453, v481);
      sub_100003DFC(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      v204 = dispatch thunk of static Equatable.== infix(_:_:)();
      v205 = *v451;
      (*v451)(v202, v203);
      v205(v201, v203);
      if (v204)
      {
        v206 = static os_log_type_t.error.getter();
        v207 = v505;
        os_log(_:dso:log:_:_:)(v206, &_mh_execute_header, v505, "Attempt to send local message before first unlock!", 50, 2, _swiftEmptyArrayStorage);
        type metadata accessor for SPOwnerSessionError(0);
        v532 = 5;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_100003DFC(&qword_1016961E0, type metadata accessor for SPOwnerSessionError, &unk_10138AA48);
        _BridgedStoredNSError.init(_:userInfo:)();
        v208 = v466;
        *v466 = v522;
        swift_storeEnumTagMultiPayload();
        v209 = v208;
        v210 = v445;
        sub_1000D2A70(v209, v445, &qword_10169F358, &qword_1013A0810);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v211 = static os_log_type_t.info.getter();
          v212 = swift_allocObject();
          *(v212 + 16) = v431;
          swift_getErrorValue();
          v213 = Error.localizedDescription.getter();
          v214 = v491;
          *(v212 + 56) = &type metadata for String;
          *(v212 + 64) = v214;
          *(v212 + 32) = v213;
          *(v212 + 40) = v215;
          os_log(_:dso:log:_:_:)(v211, &_mh_execute_header, v207, "Local send failure: %@.", 23, 2, v212);

          v46 = v507;
          v47 = v448;
          v34 = v449;
          v217 = v471;
          v218 = v496;
          v219 = v510;
          v220 = v498;
          v221 = v497;
          if (!v510)
          {
            goto LABEL_55;
          }
        }

        else
        {
          swift_beginAccess();
          v240 = swift_weakLoadStrong();
          v47 = v448;
          v217 = v471;
          if (v240)
          {
            v241 = *(v240 + 200);

            __chkstk_darwin(v242);
            sub_1000BC4D4(&unk_1016969C0, &qword_101395690);
            v243 = v515;
            OS_dispatch_queue.sync<A>(execute:)();
            v515 = v243;
            v210 = v445;
          }

          v46 = v507;
          v34 = v449;
          v218 = v496;
          v219 = v510;
          v220 = v498;
          v216 = sub_10000B3A8(v210, &qword_10169F358, &qword_1013A0810);
          v221 = v497;
          if (!v219)
          {
            goto LABEL_55;
          }
        }

        (v219)(v216);
        v220 = v498;
LABEL_55:
        sub_100016590(v220, v474);

        sub_10000B3A8(v466, &qword_10169F358, &qword_1013A0810);
        sub_10000B3A8(v221, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v493, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
        v83 = *v472;
        (*v472)(v511, v46);
        v81 = v217;
        v84 = v495;
        goto LABEL_9;
      }

      v222 = v508;
      v223 = v435;
      v224 = v515;
      sub_100543BF0(v457, v427, v498, v474, v425, v424, 0, v435, v497, 0, 1, 0);
      v515 = v224;
      if (v224)
      {
        v225 = v224;
        v226 = static os_log_type_t.error.getter();
        v227 = swift_allocObject();
        *(v227 + 16) = v431;
        *&v522 = v225;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v228 = String.init<A>(describing:)();
        v229 = v491;
        *(v227 + 56) = &type metadata for String;
        *(v227 + 64) = v229;
        *(v227 + 32) = v228;
        *(v227 + 40) = v230;
        os_log(_:dso:log:_:_:)(v226, &_mh_execute_header, v505, "Message send error: %@", 22, 2, v227);

        sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
        v232 = v436;
        v231 = v437;
        (*v418)(v436, HIDWORD(v417), v437);
        v233 = static OS_dispatch_queue.global(qos:)();
        (*v416)(v232, v231);
        v234 = swift_allocObject();
        v235 = v464;
        v234[2] = sub_10058B160;
        v234[3] = v235;
        v234[4] = v225;
        *&v524 = sub_10058D73C;
        *(&v524 + 1) = v234;
        *&v522 = _NSConcreteStackBlock;
        *(&v522 + 1) = 1107296256;
        *&v523 = sub_100006684;
        *(&v523 + 1) = &unk_101629218;
        v236 = _Block_copy(&v522);

        swift_errorRetain();
        v237 = v459;
        static DispatchQoS.unspecified.getter();
        v532 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v239 = v461;
        v238 = v462;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        sub_100016590(v498, v474);
        _Block_release(v236);

        (*v422)(v239, v238);
        (*v421)(v237, v460);
        sub_10000B3A8(v497, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v493, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
        v83 = *v472;
        v46 = v507;
        (*v472)(v511, v507);

        v515 = 0;
      }

      else
      {
        v301 = v456;
        v302 = v507;
        v303 = v429;
        (v429)(v456, v223, v507);
        v304 = v303;
        sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
        swift_allocObject();
        v505 = Future.init()();
        v305 = v440;
        v306 = v301;
        v307 = v222;
        v308 = v506;
        (v506)(v440, v306, v302);
        v309 = swift_allocObject();
        *(v309 + 16) = v307;
        (v304)(v309 + v423, v305, v302);
        v310 = (v309 + v188);
        v311 = v305;
        v491 = v200;
        v312 = v464;
        *v310 = sub_10058B160;
        v310[1] = v312;

        Future.addSuccess(block:)();

        v313 = swift_allocObject();
        *(v313 + 16) = sub_10058B160;
        *(v313 + 24) = v312;

        Future.addFailure(block:)();

        v308(v305, v456, v302);
        v314 = v307;
        v315 = (v501 + 16) & v499;
        v316 = (v415 + v315) & 0xFFFFFFFFFFFFFFF8;
        v317 = swift_allocObject();
        (v429)(v317 + v315, v311, v302);
        *(v317 + v316) = v314;
        *(v317 + ((v316 + 15) & 0xFFFFFFFFFFFFFFF8)) = v505;
        v318 = swift_allocObject();
        *(v318 + 16) = sub_10058B1D0;
        *(v318 + 24) = v317;
        v499 = v317;
        *&v524 = sub_10040B9F8;
        *(&v524 + 1) = v318;
        *&v522 = _NSConcreteStackBlock;
        *(&v522 + 1) = 1107296256;
        *&v523 = sub_10013FE14;
        *(&v523 + 1) = &unk_1016292E0;
        v319 = _Block_copy(&v522);

        dispatch_sync(v491, v319);
        _Block_release(v319);
        LOBYTE(v319) = swift_isEscapingClosureAtFileLocation();

        if (v319)
        {
          goto LABEL_111;
        }

        v320 = v430;
        static DispatchTime.now()();
        + infix(_:_:)();
        v490 = *v419;
        (v490)(v320, v439);
        v321 = v440;
        v322 = v302;
        (v506)(v440, v456, v302);
        v323 = swift_allocObject();
        *(v323 + 16) = v314;
        (v429)(v323 + v423, v321, v302);
        *&v524 = sub_10058B1D4;
        *(&v524 + 1) = v323;
        *&v522 = _NSConcreteStackBlock;
        *(&v522 + 1) = 1107296256;
        *&v523 = sub_100006684;
        *(&v523 + 1) = &unk_101629330;
        v324 = _Block_copy(&v522);

        v325 = v459;
        static DispatchQoS.unspecified.getter();
        v532 = _swiftEmptyArrayStorage;
        sub_100003DFC(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        v327 = v461;
        v326 = v462;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v328 = v438;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        sub_100016590(v498, v474);
        _Block_release(v324);

        (*v422)(v327, v326);
        (*v421)(v325, v460);
        (v490)(v328, v439);
        v83 = *v472;
        (*v472)(v456, v322);
        sub_10000B3A8(v497, &qword_1016980D0, &unk_10138F3B0);
        sub_10058B268(v493, type metadata accessor for CompanionFindMyAccessoryKeyEnvelope);
        sub_10058B268(v503, type metadata accessor for SharedBeaconRecord);
        v83(v511, v322);

        v46 = v322;
      }

      v47 = v448;
      v34 = v449;
      v81 = v471;
      v218 = v496;
      v84 = v495;
LABEL_9:
      v83(v84, v46);
      v82 = v218 + 1;

      v3 = v508;
      v44 = v450;
      if (v82 == v465)
      {
        goto LABEL_75;
      }
    }
  }

  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}