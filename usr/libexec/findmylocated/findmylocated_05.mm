void sub_10008C154(uint64_t a1)
{
  String.hash(into:)();
  v2 = *(v1 + 16);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 24);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v1 + 32);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v1 + 40);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v1 + 48);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v1 + 56);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = *(v1 + 64);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  if (*(v1 + 80) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *(v1 + 72);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
  }

  v10 = type metadata accessor for SecureLocation(0);
  type metadata accessor for Date();
  sub_10008DBE4(&qword_1005A9868, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for MotionActivityState();
  sub_10008DBE4(&qword_1005A9870, &type metadata accessor for MotionActivityState, &protocol conformance descriptor for MotionActivityState);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(v10 + 60)));
  if (*(v1 + *(v10 + 64) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10008C3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for MotionActivityState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005A9808, &qword_1004C2CD0);
  v7 = __chkstk_darwin(v6 - 8);
  v55 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v52 - v9;
  v59 = type metadata accessor for Date();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9810, &qword_1004C2CD8);
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v14 = type metadata accessor for SecureLocation(0);
  v15 = __chkstk_darwin(v14);
  v17 = enum case for MotionActivityState.unknown(_:);
  v63 = *(v15 + 56);
  v64 = v4;
  v18 = *(v4 + 104);
  v65 = v3;
  v66 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18(v66 + v63, enum case for MotionActivityState.unknown(_:), v3);
  v19 = a1[3];
  v62 = a1;
  sub_100011AEC(a1, v19);
  sub_10008D16C();
  v20 = v67;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    v67 = v20;
    v24 = v66;
    sub_100004984(v62);
    return (*(v64 + 8))(v24 + v63, v65);
  }

  v52 = v18;
  v53 = v14;
  v70 = v17;
  v22 = v60;
  v21 = v61;
  LOBYTE(v68) = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v66;
  *v66 = v23;
  v26[1] = v27;
  LOBYTE(v68) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[2] = v28;
  LOBYTE(v68) = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[3] = v29;
  LOBYTE(v68) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[4] = v30;
  LOBYTE(v68) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[5] = v31;
  LOBYTE(v68) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[6] = v32;
  LOBYTE(v68) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[7] = v33;
  LOBYTE(v68) = 7;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26[8] = v34;
  LOBYTE(v68) = 8;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = 0;
  v26[9] = v35;
  *(v26 + 80) = v36 & 1;
  LOBYTE(v68) = 9;
  sub_10008DBE4(&qword_1005A9820, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v37 = v11;
  v38 = v13;
  v39 = v67;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v67 = v39;
  if (v39)
  {
    (*(v22 + 8))(v13, v11);
    v24 = v66;
    sub_100004984(v62);

    return (*(v64 + 8))(v24 + v63, v65);
  }

  (*(v57 + 32))(v66 + v53[13], v58, v59);
  LOBYTE(v68) = 10;
  sub_10008DBE4(&qword_1005A9828, &type metadata accessor for MotionActivityState, &protocol conformance descriptor for MotionActivityState);
  v40 = v67;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v67 = v40;
  if (v40)
  {
LABEL_17:
    (*(v22 + 8))(v13, v37);
    sub_100004984(v62);
    v24 = v66;

    (*(v57 + 8))(v24 + v53[13], v59);
    return (*(v64 + 8))(v24 + v63, v65);
  }

  v41 = v55;
  sub_100005F04(v56, v55, &qword_1005A9808, &qword_1004C2CD0);
  v42 = *(v64 + 48);
  if (v42(v41, 1, v65) == 1)
  {
    v43 = v65;
    v52(v54, v70, v65);
    if (v42(v55, 1, v43) != 1)
    {
      sub_100002CE0(v55, &qword_1005A9808, &qword_1004C2CD0);
    }
  }

  else
  {
    (*(v64 + 32))(v54, v55, v65);
  }

  (*(v64 + 40))(v66 + v63, v54, v65);
  type metadata accessor for SPSecureLocationPublishReason(0);
  v71 = 11;
  sub_10008DBE4(&qword_1005A9830, type metadata accessor for SPSecureLocationPublishReason, &protocol conformance descriptor for SPSecureLocationPublishReason);
  v44 = v67;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v67 = v44;
  if (v44)
  {
    sub_100002CE0(v56, &qword_1005A9808, &qword_1004C2CD0);
    goto LABEL_17;
  }

  v45 = v68;
  if (v69)
  {
    v45 = 0;
  }

  *(v66 + v53[15]) = v45;
  LOBYTE(v68) = 12;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v67 = 0;
  v47 = v46;
  v49 = v48;
  v50 = v66;
  v51 = (v66 + v53[16]);
  sub_100002CE0(v56, &qword_1005A9808, &qword_1004C2CD0);
  (*(v22 + 8))(v38, v37);
  *v51 = v47;
  v51[1] = v49;
  sub_10008D1C0(v50, v21);
  sub_100004984(v62);
  return sub_1000563DC(v50);
}

uint64_t sub_10008CBF8(void *a1)
{
  v3 = v1;
  v5 = sub_10004B564(&qword_1005A9838, &qword_1004C2CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100011AEC(a1, a1[3]);
  sub_10008D16C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 80);
    *&v12 = *(v3 + 72);
    BYTE8(v12) = v9;
    v13 = 8;
    sub_10004B564(&qword_1005A97F8, &qword_1004C2CC8);
    sub_10008D224(&qword_1005A9840, &qword_1005A97F8, &qword_1004C2CC8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10 = type metadata accessor for SecureLocation(0);
    LOBYTE(v12) = 9;
    type metadata accessor for Date();
    sub_10008DBE4(&qword_1005A9848, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 10;
    type metadata accessor for MotionActivityState();
    sub_10008DBE4(&qword_1005A9850, &type metadata accessor for MotionActivityState, &protocol conformance descriptor for MotionActivityState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v12 = *(v3 + *(v10 + 60));
    v13 = 11;
    type metadata accessor for SPSecureLocationPublishReason(0);
    sub_10008DBE4(&qword_1005A9858, type metadata accessor for SPSecureLocationPublishReason, &protocol conformance descriptor for SPSecureLocationPublishReason);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v10 + 64));
    v13 = 12;
    sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
    sub_10008D224(&qword_1005A9860, &qword_1005A96A8, &qword_1004C3320);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10008D09C()
{
  Hasher.init(_seed:)();
  sub_10008C154(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10008D0E0()
{
  Hasher.init(_seed:)();
  sub_10008C154(v1);
  return Hasher._finalize()();
}

unint64_t sub_10008D16C()
{
  result = qword_1005A9818;
  if (!qword_1005A9818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9818);
  }

  return result;
}

uint64_t sub_10008D1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008D224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008D28C()
{
  v9 = xmmword_1004C2B60;
  v1 = *(v0 + 24) * 10000000.0;
  if (COERCE__INT64(fabs(v1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -2147483650.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v1 >= 2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  LODWORD(v5) = bswap32(v1);
  v7 = &type metadata for UnsafeRawBufferPointer;
  v8 = &protocol witness table for UnsafeRawBufferPointer;
  *&v6 = &v5;
  *(&v6 + 1) = &v5 + 4;
  sub_100011AEC(&v6, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v6);
  v2 = *(v0 + 16) * 10000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -2147483650.0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (v2 >= 2147483650.0)
  {
    goto LABEL_13;
  }

  LODWORD(v5) = bswap32(v2);
  v7 = &type metadata for UnsafeRawBufferPointer;
  v8 = &protocol witness table for UnsafeRawBufferPointer;
  *&v6 = &v5;
  *(&v6 + 1) = &v5 + 4;
  sub_100011AEC(&v6, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v6);
  v5 = *(v0 + 40);
  v6 = xmmword_1004C2B70;
  sub_10008DB2C();
  scale<A, B>(_:_:)();
  v7 = &type metadata for UnsafeRawBufferPointer;
  v8 = &protocol witness table for UnsafeRawBufferPointer;
  *&v6 = &v4;
  *(&v6 + 1) = &v5;
  sub_100011AEC(&v6, &type metadata for UnsafeRawBufferPointer);
  Data._Representation.append(contentsOf:)();
  sub_100004984(&v6);
  return v9;
}

void sub_10008D4B8(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = type metadata accessor for SecureLocation(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Data.subObject<A>(range:)();
  v27 = a4;
  LODWORD(a4) = v28;
  Data.subObject<A>(range:)();
  HIDWORD(v26) = v28;
  Data.subObject<A>(range:)();
  v14 = bswap32(HIDWORD(v26));
  v29 = v28;
  v28 = xmmword_1004C2B70;
  sub_10008DB2C();
  unscale<A, B>(_:_:)();
  v15 = v30;
  v16 = bswap32(a4) / 10000000.0;
  v17 = v10[13];
  v18 = v14 / 10000000.0;
  v19 = type metadata accessor for Date();
  (*(*(v19 - 8) + 16))(&v13[v17], a5, v19);
  v20 = v10[14];
  v21 = enum case for MotionActivityState.unknown(_:);
  v22 = type metadata accessor for MotionActivityState();
  (*(*(v22 - 8) + 104))(&v13[v20], v21, v22);
  v23 = v27;
  *v13 = a3;
  *(v13 + 1) = v23;
  *(v13 + 2) = v18;
  *(v13 + 3) = v16;
  *(v13 + 4) = 0;
  *(v13 + 5) = v15;
  *(v13 + 3) = 0u;
  *(v13 + 4) = 0u;
  v13[80] = 1;
  v24 = v10[15];
  v25 = &v13[v10[16]];
  *v25 = 0;
  *(v25 + 1) = 0;
  *&v13[v24] = 8;
  sub_10008DB80(v13, a6);
  (*(v11 + 56))(a6, 0, 1, v10);
}

BOOL sub_10008D92C(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24) || a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40) || a1[6] != *(a2 + 48) || a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64))
  {
    return 0;
  }

  v5 = *(a2 + 80);
  if (a1[10])
  {
    if (!*(a2 + 80))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 9) != *(a2 + 72))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = type metadata accessor for SecureLocation(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MotionActivityState();
  sub_10008DBE4(&qword_1005A9878, &type metadata accessor for MotionActivityState, &protocol conformance descriptor for MotionActivityState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v14 != v13 || *(a1 + *(v6 + 60)) != *(a2 + *(v6 + 60)))
  {
    return 0;
  }

  v7 = *(v6 + 64);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    return v11 && (*v8 == *v10 && v9 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v11;
}

unint64_t sub_10008DB2C()
{
  result = qword_1005A9880;
  if (!qword_1005A9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9880);
  }

  return result;
}

uint64_t sub_10008DB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008DBE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10008DC40()
{
  result = qword_1005A9890;
  if (!qword_1005A9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9890);
  }

  return result;
}

unint64_t sub_10008DC98()
{
  result = qword_1005A9898;
  if (!qword_1005A9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A9898);
  }

  return result;
}

unint64_t sub_10008DCF0()
{
  result = qword_1005A98A0;
  if (!qword_1005A98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005A98A0);
  }

  return result;
}

unint64_t sub_10008DD44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10058A978, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

Swift::Int sub_10008DD90(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10008DEB0(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10008DFD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1000110D8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_10000709C(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void sub_10008E038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002B3C0(0, v1, 0);
    v3 = a1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = *(a1 + 48) + 40 * v4;
      v9 = *(v8 + 32);
      v22 = *(v8 + 24);
      v10 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];

      if (v10 >= v11 >> 1)
      {
        sub_10002B3C0((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v10];
      v12[4] = v22;
      v12[5] = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_10002F14C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_10002F14C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void (*sub_10008E264(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

void (*sub_10008E2F8(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10008E390@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000BAD18(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t SPSecureLocationSubscriptionMode.encode(to:)(void *a1, uint64_t a2)
{
  sub_100011AEC(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_1000BAF2C(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100004984(v3);
}

uint64_t sub_10008E574()
{
  type metadata accessor for SecureLocationsCoordinator(0);
  sub_10004B564(&qword_1005A9E08, &unk_1004C3310);
  result = String.init<A>(describing:)();
  qword_1005A98A8 = result;
  unk_1005A98B0 = v1;
  return result;
}

uint64_t sub_10008E5C8()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005A98B8);
  v1 = sub_10000A6F0(v0, qword_1005A98B8);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFB98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008E690()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  [v0 setURLCache:0];
  [v0 setRequestCachePolicy:1];
  [v0 setHTTPCookieStorage:0];
  [v0 setHTTPCookieAcceptPolicy:1];
  [v0 setURLCredentialStorage:0];
  v1 = String._bridgeToObjectiveC()();
  [v0 set_sourceApplicationBundleIdentifier:v1];

  [v0 set_alternativeServicesStorage:0];
  [v0 set_disableAPWakeOnIdleConnections:1];
  [v0 set_usesNWLoader:1];
  type metadata accessor for ServerInteractionController();
  sub_1004B885C(3u);
  return ServerInteractionController.__allocating_init(sessionConfiguration:bundleIdentifier:)();
}

uint64_t sub_10008E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v59 = a1;
  v60 = a5;
  v56 = a4;
  v57 = a3;
  v58 = a2;
  v7 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v7 - 8);
  v61 = &v50 - v8;
  v69 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v69);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8);
  v63 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v12 = *(v63 - 8);
  __chkstk_darwin(v63);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 56) = sub_10008E690();
  type metadata accessor for NearbyWatchObserver(0);
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = xmmword_1004C2E40;
  type metadata accessor for NearbyWatchObserver.State(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + 64) = v15;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = _swiftEmptyArrayStorage;
  v53 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v55 = "cureLocations.liveUnsubscribe";
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  v65 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v16 = *(v12 + 104);
  v64 = v12 + 104;
  v16(v14);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  v67 = sub_10001DFA8(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v66 = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v68 = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0, &protocol conformance descriptor for [A]);
  v52 = v10;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v6 + 144) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = SPSecureLocationsOnDemandPublishRequest;
  v55 = type metadata accessor for DarwinNotificationHelper();
  v18 = swift_allocObject();
  v54 = type metadata accessor for DarwinNotificationPoster();
  swift_allocObject();
  v19 = sub_10013F61C(v17, 0.0);
  *(v18 + 16) = 0;
  *(v18 + 24) = v19;
  *(v6 + 152) = v18;
  v20 = v65;
  v21 = v63;
  v62 = v16;
  (v16)(v14, v65, v63);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 168) = 0;
  *(v6 + 176) = 0;
  v51 = "eLocationSubscriptions";
  *(v6 + 160) = v22;
  (v16)(v14, v20, v21);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v14;
  *(v6 + 184) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v51 = "eivedLocationsProcessing";
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0;
  v23 = v63;
  (v62)(v14, v65, v63);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v50;
  *(v6 + 312) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (v62)(v24, v65, v23);
  static DispatchQoS.unspecified.getter();
  v70 = _swiftEmptyArrayStorage;
  v25 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v59;
  v26 = v60;
  *(v6 + 320) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v6 + 328) = _swiftEmptyDictionarySingleton;
  v28 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_lastMeDeviceRefresh;
  v29 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v29 - 8) + 56))(v6 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream;
  v31 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  (*(*(v31 - 8) + 56))(v6 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewiePublishRequestNotification;
  v33 = SPSecureLocationsStewiePublishRequest;
  v34 = swift_allocObject();
  swift_allocObject();
  v35 = sub_10013F61C(v33, 0.0);
  *(v6 + v32) = v34;
  *(v6 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer) = 0;
  *(v34 + 16) = 0;
  *(v34 + 24) = v35;
  *(v6 + 16) = v27;
  *(v6 + 24) = v25;
  v36 = v56;
  *(v6 + 32) = v57;
  *(v6 + 40) = v36;
  *(v6 + 48) = v26;
  v37 = objc_allocWithZone(type metadata accessor for SecureLocationsStewieManager(0));
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  *(v6 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager) = sub_100108638(v27, v36, v25);
  v38 = *(v6 + 24);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = *(v38 + 16);
  v41 = *(v38 + 24);
  *(v38 + 16) = sub_1000C8EE0;
  *(v38 + 24) = v39;

  sub_100037FC8(v40, v41);

  sub_10008F3BC();
  sub_10008FE0C();
  v42 = type metadata accessor for TaskPriority();
  v43 = v61;
  (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
  v44 = swift_allocObject();
  v44[2] = 0;
  v44[3] = 0;
  v44[4] = v6;

  sub_1001D7F30(0, 0, v43, &unk_1004C3410, v44);

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  sub_10000A6F0(v45, qword_1005DFB98);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "TDW: INIT SECURELOCATIONS v1", v48, 2u);
  }

  return v6;
}

uint64_t sub_10008F170()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_100092054();
}

uint64_t sub_10008F200(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_10000D01C(a1, a2, v11);
    _os_log_impl(&_mh_execute_header, v6, v7, "keyDidDistributedCallback: startLocationMonitoring for id: %{private,mask.hash}s with backgroundProactive and forcePublish", v8, 0x16u);
    sub_100004984(v9);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000A82D8(a1, a2, 0xD000000000000013, 0x80000001004DDB80, 1);
  }

  return result;
}

uint64_t sub_10008F3BC()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9F50, &qword_1004C34E0);
  __chkstk_darwin(v2 - 8);
  v41 = v37 - v3;
  v4 = sub_10004B564(&qword_1005A9F58, &qword_1004C34E8);
  __chkstk_darwin(v4 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005A9F60, &unk_1004C34F0);
  v43 = *(v10 - 8);
  v44 = v10;
  __chkstk_darwin(v10);
  v40 = v37 - v11;
  v12 = v0[3];
  v13 = *(v12 + 40);
  v14 = *(v13 + 80);
  v15 = *(v13 + 88);
  *(v13 + 80) = sub_1000CA0AC;
  *(v13 + 88) = v1;

  sub_100037FC8(v14, v15);

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v47 = *(*(qword_1005DFBC8 + 40) + 24);

  v16 = sub_10004B564(&qword_1005A9F68, &unk_1004C46C0);
  v42 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v17 = sub_10001DF0C(&qword_1005A9F70, &qword_1005A9F68, &unk_1004C46C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v18 = Publisher<>.sink(receiveValue:)();

  v1[9] = v18;

  v47 = *(qword_1005DFBC8 + 88);

  v45 = v16;
  v37[1] = v17;
  v19 = Publisher<>.sink(receiveValue:)();

  v1[12] = v19;

  v47 = *(qword_1005DFBC8 + 104);

  v20 = Publisher<>.sink(receiveValue:)();

  v1[14] = v20;

  v47 = *(*(v12 + 72) + 24);

  v21 = v39;
  NSRunLoop.SchedulerTimeType.Stride.init(floatLiteral:)();
  (*(v8 + 56))(v6, 1, 1, v7);
  v22 = [objc_opt_self() mainRunLoop];
  v37[0] = v7;
  v23 = v6;
  v24 = v22;
  v46 = v22;
  v25 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  sub_1000545A4(0, &qword_1005A9F78, NSRunLoop_ptr);
  v38 = v12;
  sub_1000CA0BC();
  v27 = v40;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_100002CE0(v26, &qword_1005A9F50, &qword_1004C34E0);

  sub_100002CE0(v23, &qword_1005A9F58, &qword_1004C34E8);
  (*(v8 + 8))(v21, v37[0]);

  sub_10001DF0C(&qword_1005A9F88, &qword_1005A9F60, &unk_1004C34F0, &protocol conformance descriptor for Publishers.Delay<A, B>);

  v28 = v44;
  v29 = Publisher<>.sink(receiveValue:)();

  (*(v43 + 8))(v27, v28);
  v1[10] = v29;

  v47 = *(qword_1005DFBC8 + 72);

  v30 = Publisher<>.sink(receiveValue:)();

  v1[11] = v30;

  v47 = *(v1[2] + 48);

  sub_10004B564(&qword_1005A9F90, &qword_1004C3500);
  v31 = v42;
  sub_10001DF0C(&qword_1005A9F98, &qword_1005A9F90, &qword_1004C3500, v42);
  v32 = Publisher<>.sink(receiveValue:)();

  v1[13] = v32;

  v47 = *(v38 + 96);

  sub_10004B564(&qword_1005A9FA0, &qword_1004C3508);
  sub_10001DF0C(&qword_1005A9FA8, &qword_1005A9FA0, &qword_1004C3508, v31);
  v33 = Publisher<>.sink(receiveValue:)();

  v1[21] = v33;

  v47 = *(v1[4] + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1000CA144;
  *(v34 + 24) = v1;

  sub_10004B564(&qword_1005A9FB0, &qword_1004C3510);
  sub_10001DF0C(&qword_1005A9FB8, &qword_1005A9FB0, &qword_1004C3510, v31);
  v35 = Publisher<>.sink(receiveValue:)();

  v1[22] = v35;
}

uint64_t sub_10008FC90()
{
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_100021BB4();

  return sub_1000A9B48(v0 & 1);
}

void sub_10008FD14(_BYTE *result)
{
  if (*result == 1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000A6F0(v1, qword_1005DFB98);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "performKeyroll: requesting republish post keyroll complete delay", v4, 2u);
    }

    sub_1000A2748();
  }
}

uint64_t sub_10008FE0C()
{
  v1 = type metadata accessor for SecureLocationsConfig(0);
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v51[0] = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v51 - v5;
  v7 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v52 = v51 - v12;
  __chkstk_darwin(v11);
  v14 = v51 - v13;
  v54 = v0;
  v51[1] = *(v0 + 16);
  if (qword_1005A7F98 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for UUID();
  sub_10000A6F0(v15, qword_1005DFC58);
  sub_1004AFCB8();
  v16 = *(v2 + 48);
  v53 = v1;
  v17 = v16(v14, 1, v1);
  sub_100002CE0(v14, &qword_1005A9DC0, &unk_1004C3290);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "CheckAndFetchConfig: Checking for config", v21, 2u);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  v24 = os_log_type_enabled(v22, v23);
  if (v17 == 1)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "CheckAndFetchConfig - we don't have a local copy of config. doing a fetch", v25, 2u);
    }

    v26 = v54;

    sub_1000BB990(v27, v26, &unk_10058E300, sub_1000C9F30, &unk_1004C34D8, sub_100090644);
  }

  else
  {
    if (v24)
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "CheckAndFetchConfig: Existing config found. Not fetching from server", v29, 2u);
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v30 = qword_1005DFBC8;

    v31 = v52;
    sub_1004AFCB8();
    sub_100005F04(v31, v10, &qword_1005A9DC0, &unk_1004C3290);
    v32 = v53;
    if (v16(v10, 1, v53) == 1)
    {
      sub_100002CE0(v10, &qword_1005A9DC0, &unk_1004C3290);
      if (qword_1005A7FA0 != -1)
      {
        swift_once();
      }

      v33 = qword_1005DFC70;
      v34 = qword_1005A7FA8;

      if (v34 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for URL();
      v36 = sub_10000A6F0(v35, qword_1005DFC78);
      (*(*(v35 - 8) + 16))(&v6[*(v32 + 76)], v36, v35);
      if (qword_1005A7FB0 != -1)
      {
        swift_once();
      }

      v37 = qword_1005DFC90;

      sub_100002CE0(v31, &qword_1005A9DC0, &unk_1004C3290);
      *v6 = 0;
      v6[8] = 1;
      *(v6 + 1) = xmmword_1004C2E50;
      *(v6 + 4) = 5;
      *(v6 + 40) = xmmword_1004C2E60;
      v6[56] = 0;
      *(v6 + 8) = v33;
      *(v6 + 9) = 0x405E000000000000;
      v6[80] = 1;
      *(v6 + 11) = 0x409C200000000000;
      *(v6 + 12) = 5;
      *(v6 + 104) = xmmword_1004C2E70;
      *&v6[*(v32 + 80)] = v37;
    }

    else
    {
      sub_100002CE0(v31, &qword_1005A9DC0, &unk_1004C3290);
      sub_1000C9DE8(v10, v6, type metadata accessor for SecureLocationsConfig);
    }

    v38 = (v30 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock((v30 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex));
    v39 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    v40 = *(v39 + 28);
    sub_1000CA2CC(v38 + v40, type metadata accessor for SecureLocationsConfig);
    sub_1000CA264(v6, v38 + v40, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v38);
    AsyncStreamProvider.yield(value:transaction:)();
    sub_1000CA2CC(v6, type metadata accessor for SecureLocationsConfig);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 136315138;
      v45 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

      os_unfair_lock_lock(v45);
      v46 = v51[0];
      sub_1000CA264(v45 + *(v39 + 28), v51[0], type metadata accessor for SecureLocationsConfig);
      os_unfair_lock_unlock(v45);

      v47 = sub_100183370();
      v49 = v48;
      sub_1000CA2CC(v46, type metadata accessor for SecureLocationsConfig);
      v50 = sub_10000D01C(v47, v49, &v55);

      *(v43 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v41, v42, "CheckAndFetchConfig: Existing config %s", v43, 0xCu);
      sub_100004984(v44);
    }

    return sub_100091730();
  }
}

void sub_100090644(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9DC0, &unk_1004C3290);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SecureLocationsConfig(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB98);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v38 = v9;
      v16 = v15;
      v36 = v15;
      v37 = swift_slowAlloc();
      v39 = a1;
      v40 = v37;
      *v16 = 136315138;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v17 = String.init<A>(describing:)();
      v19 = sub_10000D01C(v17, v18, &v40);

      v20 = v36;
      *(v36 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "CheckAndFetchConfig - error fetching config %s", v20, 0xCu);
      sub_100004984(v37);

      v9 = v38;
    }

    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v21 = qword_1005DFBC8;
    v22 = qword_1005A7F98;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for UUID();
    sub_10000A6F0(v23, qword_1005DFC58);
    sub_1004AFCB8();
    sub_100005F04(v7, v5, &qword_1005A9DC0, &unk_1004C3290);
    if ((v9[6].isa)(v5, 1, v8) == 1)
    {
      sub_100002CE0(v5, &qword_1005A9DC0, &unk_1004C3290);
      if (qword_1005A7FA0 != -1)
      {
        swift_once();
      }

      v24 = qword_1005DFC70;
      v25 = qword_1005A7FA8;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for URL();
      v27 = sub_10000A6F0(v26, qword_1005DFC78);
      (*(*(v26 - 8) + 16))(&v11[*(v8 + 76)], v27, v26);
      if (qword_1005A7FB0 != -1)
      {
        swift_once();
      }

      v28 = qword_1005DFC90;

      sub_100002CE0(v7, &qword_1005A9DC0, &unk_1004C3290);
      *v11 = 0;
      v11[8] = 1;
      *(v11 + 1) = xmmword_1004C2E50;
      *(v11 + 4) = 5;
      *(v11 + 40) = xmmword_1004C2E60;
      v11[56] = 0;
      *(v11 + 8) = v24;
      *(v11 + 9) = 0x405E000000000000;
      v11[80] = 1;
      *(v11 + 11) = 0x409C200000000000;
      *(v11 + 12) = 5;
      *(v11 + 104) = xmmword_1004C2E70;
      *&v11[*(v8 + 80)] = v28;
    }

    else
    {
      sub_100002CE0(v7, &qword_1005A9DC0, &unk_1004C3290);
      sub_1000C9DE8(v5, v11, type metadata accessor for SecureLocationsConfig);
    }

    v33 = (v21 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);
    os_unfair_lock_lock((v21 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex));
    v34 = *(sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0) + 28);
    sub_1000CA2CC(v33 + v34, type metadata accessor for SecureLocationsConfig);
    sub_1000CA264(v11, v33 + v34, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v33);
    AsyncStreamProvider.yield(value:transaction:)();

    sub_1000CA2CC(v11, type metadata accessor for SecureLocationsConfig);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_10000A6F0(v29, qword_1005DFB98);
    v38 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v38, v30, "CheckAndFetchConfig - successfully fetched config since we don't have a copy", v31, 2u);
    }

    v32 = v38;
  }
}

uint64_t sub_100090D10(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Credentials(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = swift_allocObject();
  v35 = a2;
  *(v16 + 16) = a2;
  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v17 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v18 = sub_10000A6F0(v17, qword_1005AF7C0);
  os_unfair_lock_lock(v18);
  sub_100005F04(v18 + *(v17 + 28), v8, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002CE0(v8, &qword_1005A9DA8, &unk_1004D1130);
    v37 = 0;
    v38 = 0;
    v39 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v36 = v23;
      v37 = 0;
      *v22 = 136315138;
      v38 = 0;
      v39 = 2;
      v24 = String.init<A>(describing:)();
      v26 = sub_10000D01C(v24, v25, &v36);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "FetchConfig - failed to get credentials error %s", v22, 0xCu);
      sub_100004984(v23);
    }

    v27 = swift_allocError();
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 2;
    sub_1000B80D0(v27, v35);
  }

  else
  {
    sub_1000C9DE8(v8, v15, type metadata accessor for Credentials);
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_1000CA264(v15, v13, type metadata accessor for Credentials);
    v30 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v34;
    sub_1000C9DE8(v13, v31 + v30, type metadata accessor for Credentials);
    v32 = (v31 + ((v11 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_1000C9390;
    v32[1] = v16;

    sub_1001D7F30(0, 0, v5, &unk_1004C3438, v31);

    sub_1000CA2CC(v15, type metadata accessor for Credentials);
  }
}

uint64_t sub_10009123C(void (*a1)(void), void (*a2)(void))
{
  v33 = a1;
  v34 = a2;
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for Credentials(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  if (qword_1005A8098 != -1)
  {
    swift_once();
  }

  v16 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
  v17 = sub_10000A6F0(v16, qword_1005AF7C0);
  os_unfair_lock_lock(v17);
  sub_100005F04(v17 + *(v16 + 28), v8, &qword_1005A9DA8, &unk_1004D1130);
  os_unfair_lock_unlock(v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100002CE0(v8, &qword_1005A9DA8, &unk_1004D1130);
    v36 = 0;
    v37 = 0;
    v38 = 2;
    sub_1000C7488();
    swift_willThrowTypedImpl();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      v36 = 0;
      *v21 = 136315138;
      v37 = 0;
      v38 = 2;
      v23 = String.init<A>(describing:)();
      v25 = sub_10000D01C(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "FetchConfig - failed to get credentials error %s", v21, 0xCu);
      sub_100004984(v22);
    }

    swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 2;
    v33();
  }

  else
  {
    sub_1000C9DE8(v8, v15, type metadata accessor for Credentials);
    v28 = type metadata accessor for TaskPriority();
    (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
    sub_1000CA264(v15, v13, type metadata accessor for Credentials);
    v29 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v2;
    sub_1000C9DE8(v13, v30 + v29, type metadata accessor for Credentials);
    v31 = (v30 + ((v11 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    v32 = v34;
    *v31 = v33;
    v31[1] = v32;

    sub_1001D7F30(0, 0, v5, &unk_1004C3280, v30);

    return sub_1000CA2CC(v15, type metadata accessor for Credentials);
  }
}

uint64_t sub_100091730()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v75[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v4);
  v85 = &v75[-v8];
  v9 = __chkstk_darwin(v7);
  v11 = &v75[-v10];
  v12 = __chkstk_darwin(v9);
  v84 = &v75[-v13];
  v14 = __chkstk_darwin(v12);
  v86 = &v75[-v15];
  __chkstk_darwin(v14);
  v17 = &v75[-v16];
  v18 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v75[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1000BB328())
  {
    goto LABEL_5;
  }

  v21 = v1;
  v22 = v3;
  v23 = v11;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v24 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v24);
  v25 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v24 + *(v25 + 28), v20, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v24);

  v26 = v20[8];
  result = sub_1000CA2CC(v20, type metadata accessor for SecureLocationsConfig);
  v11 = v23;
  v3 = v22;
  v1 = v21;
  if ((v26 & 1) == 0)
  {
LABEL_5:
    v28 = [objc_opt_self() standardUserDefaults];
    v29 = String._bridgeToObjectiveC()();
    [v28 doubleForKey:v29];
    v31 = v30;

    if (v31 == 0.0)
    {
      sub_1000BB4F0();
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "CheckAndFetchConfig: nextCheckTime is zero. Fetching now but setting an explicit next check time", v35, 2u);
      }
    }

    v82 = v6;
    v80 = v1;
    Date.init(timeIntervalSince1970:)();
    static Date.trustedNow.getter(v86);
    v36 = v84;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    v38 = sub_10000A6F0(v37, qword_1005DFB98);
    v39 = *(v3 + 16);
    v39(v36, v86, v2);
    v79 = v39;
    v39(v11, v17, v2);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    v42 = os_log_type_enabled(v40, v41);
    v83 = v17;
    v81 = v3;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v87[0] = v77;
      *v43 = 136315394;
      sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v44 = v11;
      v76 = v41;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v36;
      v48 = v47;
      v78 = v38;
      v49 = *(v3 + 8);
      v49(v46, v2);
      v50 = sub_10000D01C(v45, v48, v87);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v51 = v49;
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      v49(v44, v2);
      v55 = sub_10000D01C(v52, v54, v87);

      *(v43 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v40, v76, "CheckAndFetchConfig: currentTime %s nextCheckDateTime %s", v43, 0x16u);
      swift_arrayDestroy();

      v17 = v83;
    }

    else
    {

      v56 = v11;
      v51 = *(v3 + 8);
      v51(v56, v2);
      v51(v36, v2);
    }

    v57 = v82;
    v58 = static Date.> infix(_:_:)();
    v59 = v85;
    if (v58)
    {
      v60 = v79;
      v79(v85, v86, v2);
      v60(v57, v17, v2);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v87[0] = v84;
        *v63 = 136315394;
        sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v64 = v51;
        v65 = dispatch thunk of CustomStringConvertible.description.getter();
        v66 = v59;
        v67 = v2;
        v69 = v68;
        LODWORD(v82) = v62;
        v51(v66, v67);
        v70 = sub_10000D01C(v65, v69, v87);
        v2 = v67;

        *(v63 + 4) = v70;
        *(v63 + 12) = 2080;
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v64(v57, v67);
        v74 = sub_10000D01C(v71, v73, v87);
        v51 = v64;

        *(v63 + 14) = v74;
        _os_log_impl(&_mh_execute_header, v61, v82, "CheckAndFetchConfig: Feature disabled. Fetching config because Current time %s greater than checkTime %s", v63, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v51(v57, v2);
        v51(v59, v2);
      }

      type metadata accessor for Transaction();
      static Transaction.named<A>(_:with:)();
      v17 = v83;
    }

    v51(v86, v2);
    return (v51)(v17, v2);
  }

  return result;
}

uint64_t sub_100092054()
{
  v1[5] = v0;
  sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v1[6] = swift_task_alloc();
  sub_10004B564(&qword_1005A9F18, &qword_1004C3490);
  v1[7] = swift_task_alloc();
  v2 = sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v1[10] = *(v3 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[13] = v4;
  *v4 = v1;
  v4[1] = sub_1000921D4;

  return daemon.getter();
}

uint64_t sub_1000921D4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 120) = v3;
  v4 = type metadata accessor for Daemon();
  MyService = type metadata accessor for MicroFindMyService(0);
  v6 = sub_10001DFA8(&unk_1005AFA50, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10001DFA8(&qword_1005A9DF8, type metadata accessor for MicroFindMyService, &unk_1004D7A88);
  *v3 = v9;
  v3[1] = sub_1000923B0;

  return ActorServiceDaemon.getService<A>()(v4, MyService, v6, v7);
}

uint64_t sub_1000923B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    *(v4 + 128) = a1;

    return _swift_task_switch(sub_100092554, a1, 0);
  }
}

uint64_t sub_100092554()
{
  v1 = *(v0 + 56);
  sub_1003B3794(*(v0 + 96));
  sub_1003B3794(v1);

  return _swift_task_switch(sub_1000925CC, 0, 0);
}

uint64_t sub_1000925CC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  (*(v3 + 56))(v6, 0, 1, v5);
  v9 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_encryptedLocationStream;
  swift_beginAccess();
  sub_100022364(v6, v8 + v9, &qword_1005A9F18, &qword_1004C3490);
  swift_endAccess();
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v3 + 16))(v2, v1, v5);
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v3 + 32))(v12 + v11, v2, v5);
  *(v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  sub_1004933A0(0, 0, v7, &unk_1004C34A0, v12);

  sub_100002CE0(v7, &qword_1005A9690, &qword_1004C2A00);
  (*(v3 + 8))(v1, v5);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100092808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for EncryptedLocation(0);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  sub_10004B564(&qword_1005A9F20, &qword_1004C34A8);
  v5[10] = swift_task_alloc();
  v6 = sub_10004B564(&qword_1005A9F28, &qword_1004C34B0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_10009296C, 0, 0);
}

uint64_t sub_10009296C()
{
  sub_10004B564(&unk_1005A9938, &unk_1004C3080);
  AsyncStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100092A34;
  v2 = v0[10];
  v3 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v2, 0, 0, v3);
}

uint64_t sub_100092A34()
{

  return _swift_task_switch(sub_100092B30, 0, 0);
}

uint64_t sub_100092B30()
{
  v44 = v0;
  v1 = v0[10];
  v2 = sub_10004B564(&qword_1005A9F30, &qword_1004C34B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[9];

    sub_1000C9DE8(v1 + *(v2 + 48), v5, type metadata accessor for EncryptedLocation);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    sub_1000CA264(v6, v7, type metadata accessor for EncryptedLocation);
    sub_1000CA264(v6, v8, type metadata accessor for EncryptedLocation);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[7];
    v13 = v0[8];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v15 = 136315394;
      v16 = Data.base64EncodedString(options:)(0);
      sub_1000CA2CC(v13, type metadata accessor for EncryptedLocation);
      v17 = sub_10000D01C(v16._countAndFlagsBits, v16._object, &v43);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2080;
      type metadata accessor for Date();
      sub_10001DFA8(&qword_1005A9800, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_1000CA2CC(v14, type metadata accessor for EncryptedLocation);
      v21 = sub_10000D01C(v18, v20, &v43);

      *(v15 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v10, v11, "TRACE: MicroFindMy location event: %s: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_1000CA2CC(v14, type metadata accessor for EncryptedLocation);
      sub_1000CA2CC(v13, type metadata accessor for EncryptedLocation);
    }

    v22 = sub_1000BBE94(v0[9]);
    v24 = v0[9];
    if (v23 >> 60 == 15)
    {
      sub_1000CA264(v0[9], v0[6], type metadata accessor for EncryptedLocation);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v28 = v0[9];
      v29 = v0[6];
      if (v27)
      {
        v30 = v0[5];
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136315138;
        sub_1000CA264(v29, v30, type metadata accessor for EncryptedLocation);
        v33 = String.init<A>(describing:)();
        v35 = v34;
        sub_1000CA2CC(v29, type metadata accessor for EncryptedLocation);
        v36 = sub_10000D01C(v33, v35, &v43);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "TRACE: Could not convert %s to Data!", v31, 0xCu);
        sub_100004984(v32);
      }

      else
      {

        sub_1000CA2CC(v29, type metadata accessor for EncryptedLocation);
      }

      v37 = v28;
    }

    else
    {
      v38 = v22;
      v39 = v23;
      sub_10009314C(v22, v23, v0[3]);
      sub_10001A794(v38, v39);
      v37 = v24;
    }

    sub_1000CA2CC(v37, type metadata accessor for EncryptedLocation);
    v40 = swift_task_alloc();
    v0[14] = v40;
    *v40 = v0;
    v40[1] = sub_100092A34;
    v41 = v0[10];
    v42 = v0[11];

    return AsyncStream.Iterator.next(isolation:)(v41, 0, 0, v42);
  }
}

void sub_10009314C(void *a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v3 = type metadata accessor for SecureLocation(0);
  v46 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v47 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v41 - v6;
  v8 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v8 - 8);
  static String.Encoding.utf8.getter();
  v9 = String.init(data:encoding:)();
  v11 = &off_1005A7000;
  v42 = v3;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = v10;
  v45 = v9;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v13 = type metadata accessor for Logger();
    sub_10000A6F0(v13, qword_1005DFB98);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48[0] = v17;
      *v16 = 136315138;
      v18 = sub_10000D01C(v45, v12, v48);

      *(v16 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "jsonString %s", v16, 0xCu);
      sub_100004984(v17);
      v3 = v42;
    }

    else
    {
    }

LABEL_7:
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v19 = JSONDecoder.init()();
    sub_1000C84A0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v44 = 0;
    v12 = v48[2];
    if (v11[477] != -1)
    {
      swift_once();
    }

    v41[2] = v19;
    v20 = type metadata accessor for Logger();
    v41[1] = sub_10000A6F0(v20, qword_1005DFB98);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Decoded push location payload successfully", v23, 2u);
      v3 = v42;
    }

    v24 = sub_1001028AC(v12);

    v45 = v24[2];
    if (!v45)
    {
      break;
    }

    v25 = 0;
    v26 = _swiftEmptyArrayStorage;
    while (v25 < v24[2])
    {
      v11 = ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v27 = *(v46 + 72);
      sub_1000CA264(v11 + v24 + v27 * v25, v7, type metadata accessor for SecureLocation);
      if (*(v7 + 2) == 0.0 && *(v7 + 3) == 0.0)
      {
        sub_1000CA2CC(v7, type metadata accessor for SecureLocation);
      }

      else
      {
        if ((*&v7[*(v3 + 60)] | 2) == 3)
        {
          if (qword_1005A7EF8 != -1)
          {
            swift_once();
          }

          v28 = sub_1000DCB14(v7);

          if (v28)
          {
            v29 = *v7;
            v30 = *(v7 + 1);
            v31 = type metadata accessor for Transaction();
            __chkstk_darwin(v31);
            v41[-4] = v43;
            v41[-3] = v29;
            v41[-2] = v30;
            v32 = v44;
            static Transaction.named<A>(_:with:)();
            v44 = v32;
            v3 = v42;
          }
        }

        sub_1000C9DE8(v7, v47, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48[0] = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v26[2] + 1, 1);
          v26 = v48[0];
        }

        v35 = v26[2];
        v34 = v26[3];
        v12 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          sub_100239440((v34 > 1), v35 + 1, 1);
          v26 = v48[0];
        }

        v26[2] = v12;
        sub_1000C9DE8(v47, v11 + v26 + v35 * v27, type metadata accessor for SecureLocation);
      }

      if (v45 == ++v25)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  v26 = _swiftEmptyArrayStorage;
LABEL_29:

  v36 = type metadata accessor for Transaction();
  __chkstk_darwin(v36);
  v41[-2] = v43;
  v41[-1] = v26;
  static Transaction.named<A>(_:with:)();

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v39 = 138543362;
    *(v39 + 4) = 0;
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Error from processLocationPayload: %{public}@", v39, 0xCu);
    sub_100002CE0(v40, &qword_1005A9670, &unk_1004C2480);
  }
}

uint64_t sub_100093AC0(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = a4;
  v43 = type metadata accessor for SecureLocation(0);
  v45 = *(v43 - 8);
  v5 = __chkstk_darwin(v43);
  v46 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v9 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v9 - 8);
  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v12 = &off_1005A7000;
  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = v11;
  v44 = v10;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v39 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v18 = 136315138;
      v20 = sub_10000D01C(v44, v13, v47);

      *(v18 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "jsonString %s", v18, 0xCu);
      sub_100004984(v19);

      a3 = v39;
    }

    else
    {
    }

LABEL_7:
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    v21 = JSONDecoder.init()();
    sub_1000C84A0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v38 = v21;
    v39 = a3;
    v22 = v47[2];
    if (v12[477] != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Decoded push location payload successfully", v26, 2u);
    }

    v27 = sub_1001028AC(v22);

    v44 = v27[2];
    if (!v44)
    {
      break;
    }

    a3 = 0;
    v13 = _swiftEmptyArrayStorage;
    while (a3 < v27[2])
    {
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v12 = *(v45 + 72);
      sub_1000CA264(v27 + v28 + v12 * a3, v8, type metadata accessor for SecureLocation);
      if (*(v8 + 2) == 0.0 && *(v8 + 3) == 0.0)
      {
        sub_1000CA2CC(v8, type metadata accessor for SecureLocation);
      }

      else
      {
        if ((*&v8[*(v43 + 60)] | 2) == 3)
        {
          if (qword_1005A7EF8 != -1)
          {
            swift_once();
          }

          v29 = sub_1000DCB14(v8);

          if (v29)
          {
            v30 = *v8;
            v31 = *(v8 + 1);
            v32 = type metadata accessor for Transaction();
            v41 = &v38;
            __chkstk_darwin(v32);
            *(&v38 - 4) = v42;
            *(&v38 - 3) = v30;
            *(&v38 - 2) = v31;
            static Transaction.named<A>(_:with:)();
          }
        }

        sub_1000C9DE8(v8, v46, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v47[0] = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v13[2] + 1, 1);
          v13 = v47[0];
        }

        v35 = v13[2];
        v34 = v13[3];
        if (v35 >= v34 >> 1)
        {
          sub_100239440((v34 > 1), v35 + 1, 1);
          v13 = v47[0];
        }

        v13[2] = v35 + 1;
        sub_1000C9DE8(v46, v13 + v28 + v35 * v12, type metadata accessor for SecureLocation);
      }

      if (v44 == ++a3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_29:

  v36 = type metadata accessor for Transaction();
  __chkstk_darwin(v36);
  *(&v38 - 2) = v42;
  *(&v38 - 1) = v13;
  static Transaction.named<A>(_:with:)();

  v39(0);
}

void sub_1000942D4(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v58 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v13 - 8);
  v57 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000A6F0(v15, qword_1005DFB98);

  v17 = a2;
  v59 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v54 = v11;
    v21 = v20;
    v51 = swift_slowAlloc();
    aBlock[0] = v51;
    *v21 = 134218754;
    *(v21 + 4) = *(a1 + 16);

    *(v21 + 12) = 2082;
    v22 = [v17 clientApp];
    v53 = v17;
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = a4;
    v25 = v24;
    v26 = v10;
    v27 = v8;
    v28 = v7;
    v30 = v29;

    v31 = sub_10000D01C(v25, v30, aBlock);
    v7 = v28;
    v8 = v27;
    v10 = v26;

    *(v21 + 14) = v31;
    *(v21 + 22) = 2080;
    v32 = Array.description.getter();
    v34 = sub_10000D01C(v32, v33, aBlock);
    v17 = v53;

    *(v21 + 24) = v34;
    a4 = v52;
    *(v21 + 32) = 1024;
    *(v21 + 34) = v58 & 1;
    _os_log_impl(&_mh_execute_header, v18, v19, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v21, 0x26u);
    swift_arrayDestroy();

    v11 = v54;
  }

  else
  {
  }

  v35 = a1;
  if (sub_1000BB328())
  {
    goto LABEL_12;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v36 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v36);
  v37 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v38 = v57;
  sub_1000CA264(v36 + *(v37 + 28), v57, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v36);

  v39 = *(v38 + 8);
  sub_1000CA2CC(v38, type metadata accessor for SecureLocationsConfig);
  if ((v39 & 1) == 0)
  {
LABEL_12:
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v46, 2u);
    }

    [v17 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v61 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
  }

  else if (*(v35 + 16))
  {
    v59 = *(a4 + 320);
    v40 = swift_allocObject();
    *(v40 + 16) = v35;
    *(v40 + 24) = a4;
    *(v40 + 32) = v17;
    *(v40 + 40) = v58 & 1;
    *(v40 + 48) = DarwinNotification.init(name:value:);
    *(v40 + 56) = 0;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058D6C0;
    v41 = _Block_copy(aBlock);

    v42 = v17;

    v43 = v55;
    static DispatchQoS.unspecified.getter();
    v61 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v41);
    (*(v8 + 8))(v10, v7);
    (*(v56 + 8))(v43, v11);
  }

  else
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "No findMyIds specified for SubscribeAndFetch - not proceeding", v49, 2u);
    }

    v50 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v17 subscriptionMode];
  }
}

void sub_100094AC4(uint64_t a1, void *a2, int a3, void (*a4)(void *, uint64_t, double), uint64_t a5)
{
  v64 = a4;
  v62 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v61 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v59 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_10000A6F0(v16, qword_1005DFB98);

  v18 = a2;
  v63 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v57 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v54 = v15;
    aBlock[0] = v23;
    *v22 = 134218754;
    *(v22 + 4) = *(a1 + 16);

    *(v22 + 12) = 2082;
    v24 = [v18 clientApp];
    v56 = a5;
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v18;
    v27 = v26;
    v28 = v11;
    v29 = v8;
    v31 = v30;

    v32 = sub_10000D01C(v27, v31, aBlock);
    v8 = v29;
    v11 = v28;

    *(v22 + 14) = v32;
    *(v22 + 22) = 2080;
    v33 = a1;
    v34 = Array.description.getter();
    v36 = sub_10000D01C(v34, v35, aBlock);
    a5 = v56;

    *(v22 + 24) = v36;
    v18 = v55;
    *(v22 + 32) = 1024;
    *(v22 + 34) = v62 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v22, 0x26u);
    swift_arrayDestroy();
    v15 = v54;

    v9 = v57;

    if (sub_1000BB328())
    {
      goto LABEL_12;
    }
  }

  else
  {

    v33 = a1;

    if (sub_1000BB328())
    {
LABEL_12:
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v48, 2u);
      }

      [v18 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v66 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
      _BridgedStoredNSError.init(_:userInfo:)();
      v49 = aBlock[0];
      v64(_swiftEmptyArrayStorage, aBlock[0], 15.0);
      goto LABEL_15;
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v37 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v37);
  v38 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v37 + *(v38 + 28), v15, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v37);

  v39 = v15[8];
  sub_1000CA2CC(v15, type metadata accessor for SecureLocationsConfig);
  if (v39 != 1)
  {
    goto LABEL_12;
  }

  if (*(v33 + 16))
  {
    v40 = v58;
    v41 = swift_allocObject();
    *(v41 + 16) = v33;
    *(v41 + 24) = v40;
    *(v41 + 32) = v18;
    *(v41 + 40) = v62 & 1;
    *(v41 + 48) = v64;
    *(v41 + 56) = a5;
    aBlock[4] = sub_1000CA9B4;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_10058E278;
    v42 = _Block_copy(aBlock);

    v43 = v18;

    v44 = v59;
    static DispatchQoS.unspecified.getter();
    v66 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v45 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v42);
    (*(v9 + 8))(v45, v8);
    (*(v60 + 8))(v44, v11);

    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "No findMyIds specified for SubscribeAndFetch - not proceeding", v52, 2u);
  }

  v53 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  [v18 subscriptionMode];
  v49 = v53;
  v64(_swiftEmptyArrayStorage, v53, 15.0);

LABEL_15:
}

void sub_100095308(uint64_t a1, uint64_t a2, id a3, int a4, void *a5, uint64_t a6)
{
  v207 = a4;
  v11 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v11 - 8);
  v193 = &v184 - v12;
  v192 = type metadata accessor for Credentials(0);
  v13 = *(v192 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v192);
  __chkstk_darwin(v15);
  v17 = &v184 - v16;
  v18 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v18 - 8);
  v200 = &v184 - v19;
  v20 = sub_10004B564(&qword_1005A9E40, &qword_1004C3390);
  __chkstk_darwin(v20 - 8);
  v206 = &v184 - v21;
  v22 = type metadata accessor for SecureLocation(0);
  v199 = *(v22 - 8);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v184 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v202 = &v184 - v27;
  __chkstk_darwin(v26);
  v203 = &v184 - v28;
  v204 = swift_allocObject();
  *(v204 + 16) = _swiftEmptyDictionarySingleton;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_60:
    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_109;
    }

    goto LABEL_61;
  }

  v198 = v25;
  v187 = v13;
  v184 = v14;
  v185 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v17;
  v191 = a5;
  v194 = a6;
  v215 = 0;
  v214 = *(a2 + 16);
  v195 = &v222;
  v186 = v30;
  v31 = 1 - v30;
  v190 = a2;
  v208 = *(a2 + 48);
  v188 = a1;
  v32 = (a1 + 40);
  *&v29 = 136315138;
  v209 = v29;
  *&v29 = 67109378;
  v201 = v29;
  *(&v33 + 1) = 2;
  v197 = xmmword_1004C1900;
  *&v33 = 136315394;
  v196 = v33;
  v212 = _swiftEmptyArrayStorage;
  v211 = a3;
  while (1)
  {
    v213 = v31;
    v38 = *(v32 - 1);
    v39 = *v32;
    swift_bridgeObjectRetain_n();

    v40 = v206;
    sub_1004AC950(v38, v39, v206);

    v41 = type metadata accessor for SecureLocationsCachedPayload(0);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      sub_100002CE0(v40, &qword_1005A9E40, &qword_1004C3390);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for Logger();
      sub_10000A6F0(v42, qword_1005DFB98);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&aBlock = v46;
        *v45 = v209;
        *(v45 + 4) = sub_10000D01C(v38, v39, &aBlock);
        _os_log_impl(&_mh_execute_header, v43, v44, "SubscribeAndFetch: cached location for id: %s- no cached location, moving on", v45, 0xCu);
        sub_100004984(v46);
        a3 = v211;
      }
    }

    else
    {
      v48 = v40 + *(v41 + 20);
      v49 = v202;
      sub_1000CA264(v48, v202, type metadata accessor for SecureLocation);
      sub_1000CA2CC(v40, type metadata accessor for SecureLocationsCachedPayload);
      v50 = v203;
      sub_1000C9DE8(v49, v203, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v51 = sub_1000DC618(v50);

      if (v51)
      {
        sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
        v52 = (*(v199 + 80) + 32) & ~*(v199 + 80);
        v53 = swift_allocObject();
        *(v53 + 16) = v197;
        sub_1000CA264(v50, v53 + v52, type metadata accessor for SecureLocation);
        v54 = type metadata accessor for TaskPriority();
        v55 = v200;
        (*(*(v54 - 8) + 56))(v200, 1, 1, v54);
        v56 = swift_allocObject();
        v56[2] = 0;
        v56[3] = 0;
        v56[4] = v53;
        sub_10020D620(0, 0, v55, &unk_1004C33B0, v56);

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_10000A6F0(v57, qword_1005DFB98);
        v58 = v198;
        sub_1000CA264(v50, v198, type metadata accessor for SecureLocation);

        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *&aBlock = swift_slowAlloc();
          *v61 = v196;
          *(v61 + 4) = sub_10000D01C(v38, v39, &aBlock);
          *(v61 + 12) = 2080;
          v62 = sub_10008BC88();
          v64 = v63;
          sub_1000CA2CC(v58, type metadata accessor for SecureLocation);
          v65 = sub_10000D01C(v62, v64, &aBlock);

          *(v61 + 14) = v65;
          _os_log_impl(&_mh_execute_header, v59, v60, "SubscribeAndFetch: cached location for id: %s, sending before subscribe %s", v61, 0x16u);
          swift_arrayDestroy();

          a3 = v211;

          v66 = v203;
        }

        else
        {

          sub_1000CA2CC(v58, type metadata accessor for SecureLocation);
          v66 = v50;
        }
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v67 = type metadata accessor for Logger();
        sub_10000A6F0(v67, qword_1005DFB98);

        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&aBlock = v71;
          *v70 = v209;
          *(v70 + 4) = sub_10000D01C(v38, v39, &aBlock);
          _os_log_impl(&_mh_execute_header, v68, v69, "SubscribeAndFetch: cached location for id: %s- got cached location but not within the cache validity timeframe, moving on", v70, 0xCu);
          sub_100004984(v71);
          a3 = v211;
        }

        v66 = v50;
      }

      v47 = sub_1000CA2CC(v66, type metadata accessor for SecureLocation);
    }

    __chkstk_darwin(v47);
    *(&v184 - 4) = v72;
    *(&v184 - 3) = v38;
    *(&v184 - 2) = v39;
    *(&v184 - 1) = a3;
    v73 = v215;
    OS_dispatch_queue.sync<A>(execute:)();
    v215 = v73;
    v74 = aBlock;
    if ((aBlock & 1) == 0)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_10000A6F0(v75, qword_1005DFB98);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&aBlock = v79;
        *v78 = v209;
        *(v78 + 4) = sub_10000D01C(v38, v39, &aBlock);
        _os_log_impl(&_mh_execute_header, v76, v77, "SubscribeAndFetch - shouldProceed false for %s", v78, 0xCu);
        sub_100004984(v79);
        a3 = v211;
      }
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v205 = type metadata accessor for Logger();
    sub_10000A6F0(v205, qword_1005DFB98);

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&aBlock = v83;
      *v82 = v201;
      *(v82 + 4) = v74;
      *(v82 + 8) = 2080;
      *(v82 + 10) = sub_10000D01C(v38, v39, &aBlock);
      _os_log_impl(&_mh_execute_header, v80, v81, "SubscribeAndFetch - shouldProceed %{BOOL}d for %s", v82, 0x12u);
      sub_100004984(v83);
    }

    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *&aBlock = v87;
      *v86 = v209;
      *(v86 + 4) = sub_10000D01C(v38, v39, &aBlock);
      _os_log_impl(&_mh_execute_header, v84, v85, "SubscribeAndFetch request data for %s", v86, 0xCu);
      sub_100004984(v87);
    }

    sub_1000FA3AC(v38, v39, a3, v207 & 1, &v218);
    v88 = v219;
    if (v219)
    {
      v210 = v218;
      v89 = v220;
      v90 = [a3 subscriptionMode];

      v91 = v212;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v91 = sub_1001FCE6C(0, *(v91 + 2) + 1, 1, v91);
      }

      v92 = v91;
      v93 = *(v91 + 2);
      v212 = v92;
      v94 = *(v92 + 3);
      a1 = v93 + 1;
      if (v93 >= v94 >> 1)
      {
        v212 = sub_1001FCE6C((v94 > 1), v93 + 1, 1, v212);
      }

      v95 = v212;
      *(v212 + 2) = a1;
      v96 = &v95[40 * v93];
      *(v96 + 2) = v210;
      *(v96 + 6) = v88;
      *(v96 + 7) = v90;
      v96[64] = v89;
      v97 = *(v88 + 16);

      v98 = v204;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = *(v98 + 16);
      *(v98 + 16) = 0x8000000000000000;
      sub_100452DF4(v97 == 0, v38, v39, isUniquelyReferenced_nonNull_native);
      *(v98 + 16) = aBlock;

      if (!v97)
      {
        break;
      }
    }

    v37 = v213;
    if (!v213)
    {
      a3 = v211;
      if ((v74 & 1) == 0)
      {
LABEL_59:

        a6 = v194;
        a5 = v191;
        a1 = v188;
        goto LABEL_60;
      }

LABEL_51:
      if (qword_1005A8098 != -1)
      {
        swift_once();
      }

      v104 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
      v105 = sub_10000A6F0(v104, qword_1005AF7C0);
      os_unfair_lock_lock(v105);
      v106 = v105 + *(v104 + 28);
      v107 = v193;
      sub_100005F04(v106, v193, &qword_1005A9DA8, &unk_1004D1130);
      os_unfair_lock_unlock(v105);
      if ((*(v187 + 48))(v107, 1, v192) == 1)
      {

        sub_100002CE0(v107, &qword_1005A9DA8, &unk_1004D1130);
        v108 = v191;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v205, qword_1005DFB98);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          *v111 = 0;
          _os_log_impl(&_mh_execute_header, v109, v110, "SubscribeAndFetch - not proceeding with subscribe, missing credentials", v111, 2u);
        }

        v112 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
        [a3 subscriptionMode];
        v113 = v112;
        v108(_swiftEmptyArrayStorage, v112, 15.0);

LABEL_79:
        return;
      }

      sub_1000C9DE8(v107, v189, type metadata accessor for Credentials);
      v32 = v194;
      if (*(v212 + 2))
      {
        v118 = [objc_opt_self() currentDevice];
        if (v118)
        {
          v119 = v118;
          v120 = [v118 uniqueDeviceIdentifier];

          if (v120)
          {
            v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v123 = v122;

            sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
            v124 = v215;
            OS_dispatch_queue.sync<A>(execute:)();
            v125 = *(&aBlock + 1);
            if (*(&aBlock + 1))
            {
              v126 = a3;
              v127 = aBlock;
              v128 = [v126 clientApp];
              v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v131 = v130;

              *&aBlock = v127;
              *(&aBlock + 1) = v125;
              v222 = v121;
              v223 = v123;
              v224 = v129;
              v225 = v131;
              v226 = _swiftEmptyDictionarySingleton;
              v227 = 0u;
              v228 = 0u;
              v229 = 0u;
              v230 = 0;
              v231 = _swiftEmptyArrayStorage;

              v34 = sub_10018A76C(v132, &aBlock);
              if (v124)
              {

                v133 = 0;
                v134 = 0;
LABEL_71:
                v135 = v211;

                if (qword_1005A7EE8 != -1)
                {
                  swift_once();
                }

                sub_10000A6F0(v205, qword_1005DFB98);
                v136 = Logger.logObject.getter();
                v137 = static os_log_type_t.error.getter();
                if (os_log_type_enabled(v136, v137))
                {
                  v138 = swift_slowAlloc();
                  *v138 = 0;
                  _os_log_impl(&_mh_execute_header, v136, v137, "Failed to create request for server SubscribeAndFetch", v138, 2u);
                }

                v139 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
                [v135 subscriptionMode];
                v140 = v139;
                (v191)(_swiftEmptyArrayStorage, v139, 15.0);

                sub_1000C95FC(0, v133, v134);
                goto LABEL_91;
              }

LABEL_98:
              v133 = v35;
              v134 = v36;
              if (v34)
              {
                v214 = v34;

                v213 = v133;
                sub_10002CF44(v133, v134);
                if (qword_1005A7EE8 != -1)
                {
                  swift_once();
                }

                *&v210 = v134;
                sub_10000A6F0(v205, qword_1005DFB98);
                v158 = Logger.logObject.getter();
                v159 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v158, v159))
                {
                  v160 = swift_slowAlloc();
                  *v160 = 0;
                  _os_log_impl(&_mh_execute_header, v158, v159, "Sending SubscribeAndFetch server request", v160, 2u);
                }

                v215 = v217;
                v161 = (v188 + 40);
                v162 = v186 + 1;
                while (--v162)
                {
                  v163 = v161 + 2;
                  v164 = *(v161 - 1);
                  v165 = *v161;
                  v166 = *(v190 + 48);
                  v167 = *(v166 + 16);
                  v168 = swift_allocObject();
                  *(v168 + 16) = v166;
                  *(v168 + 24) = v164;
                  v169 = v211;
                  *(v168 + 32) = v165;
                  *(v168 + 40) = v169;
                  *(v168 + 48) = 0;
                  v170 = swift_allocObject();
                  *(v170 + 16) = sub_1000C8564;
                  *(v170 + 24) = v168;
                  v217[2] = sub_1000CAA0C;
                  v217[3] = v170;
                  v216[0] = _NSConcreteStackBlock;
                  v216[1] = 1107296256;
                  v217[0] = sub_10013EC94;
                  v217[1] = &unk_10058D3A0;
                  v171 = _Block_copy(v216);
                  swift_bridgeObjectRetain_n();
                  v172 = v169;

                  dispatch_sync(v167, v171);

                  _Block_release(v171);
                  LOBYTE(v171) = swift_isEscapingClosureAtFileLocation();

                  v32 = v194;

                  v161 = v163;
                  if (v171)
                  {
                    __break(1u);
                    break;
                  }
                }

                v173 = type metadata accessor for TaskPriority();
                (*(*(v173 - 8) + 56))(v200, 1, 1, v173);
                v174 = v185;
                sub_1000CA264(v189, v185, type metadata accessor for Credentials);
                v175 = (*(v187 + 80) + 64) & ~*(v187 + 80);
                v215 = ((v184 + v175 + 7) & 0xFFFFFFFFFFFFFFF8);
                v212 = ((v215 + 15) & 0xFFFFFFFFFFFFFFF8);
                v176 = (v212 + 15) & 0xFFFFFFFFFFFFFFF8;
                v177 = swift_allocObject();
                *(v177 + 16) = 0;
                *(v177 + 24) = 0;
                v178 = v214;
                *(v177 + 32) = v190;
                *(v177 + 40) = v178;
                v179 = v213;
                v180 = v210;
                *(v177 + 48) = v213;
                *(v177 + 56) = v180;
                sub_1000C9DE8(v174, v177 + v175, type metadata accessor for Credentials);
                *(v215 + v177) = v188;
                v181 = v211;
                *&v212[v177] = v211;
                *(v177 + v176) = v204;
                v182 = (v177 + ((v176 + 15) & 0xFFFFFFFFFFFFFFF8));
                *v182 = v191;
                v182[1] = v32;
                v183 = v181;
                sub_1000C95B4(v178, v179, v180);

                sub_1001D7F30(0, 0, v200, &unk_1004C33A0, v177);

                sub_1000C95FC(v178, v179, v180);
                sub_1000C95FC(v178, v179, v180);
                sub_1000CA2CC(v189, type metadata accessor for Credentials);

                return;
              }

              goto LABEL_71;
            }

            if (qword_1005A7EE8 != -1)
            {
              swift_once();
            }

            sub_10000A6F0(v205, qword_1005DFB98);
            v153 = Logger.logObject.getter();
            v154 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              *v155 = 0;
              _os_log_impl(&_mh_execute_header, v153, v154, "No APS token. Not proceeding with SubscribeAndFetch request", v155, 2u);
            }

            v156 = SPSecureLocationsErrorDomain;
            v157 = objc_allocWithZone(NSError);
            v150 = [v157 initWithDomain:v156 code:13 userInfo:{0, v184}];
LABEL_90:
            v151 = v150;
            [a3 subscriptionMode];
            v152 = v151;
            (v191)(_swiftEmptyArrayStorage, v151, 15.0);

LABEL_91:
            sub_1000CA2CC(v189, type metadata accessor for Credentials);
            goto LABEL_64;
          }
        }

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v205, qword_1005DFB98);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          v147 = "Unable to get device identifier for server SubscribeAndFetch";
          goto LABEL_88;
        }
      }

      else
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        sub_10000A6F0(v205, qword_1005DFB98);
        v144 = Logger.logObject.getter();
        v145 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          v147 = "No SubscribeAndFetch request data generated. Not sending request";
LABEL_88:
          _os_log_impl(&_mh_execute_header, v144, v145, v147, v146, 2u);
        }
      }

      v148 = SPSecureLocationsErrorDomain;
      v149 = objc_allocWithZone(NSError);
      v150 = [v149 initWithDomain:v148 code:0 userInfo:{0, v184}];
      goto LABEL_90;
    }

    a3 = v211;
LABEL_4:
    v31 = v37 + 1;
    v32 += 2;
    if (v31 == 1)
    {
      __break(1u);
      goto LABEL_98;
    }
  }

  a3 = v211;
  if ([v211 subscriptionMode] == 4)
  {

    v141 = Logger.logObject.getter();
    v142 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&_mh_execute_header, v141, v142, "SubscribeAndFetch - failed to get own keys for ownerProactive mode - not proceeding", v143, 2u);
    }

    [a3 subscriptionMode];
    type metadata accessor for SecureLocationsError(0);
    v216[0] = 0;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    v113 = aBlock;
    (v191)(_swiftEmptyArrayStorage, aBlock, 15.0);

    goto LABEL_79;
  }

  if ((v74 & 1) == 0)
  {

    v37 = v213;
    if (!v213)
    {
      goto LABEL_59;
    }

    goto LABEL_4;
  }

  v100 = v208;
  v101 = *(v208 + 16);
  v102 = swift_allocObject();
  v102[2] = v38;
  v102[3] = v39;
  v102[4] = a3;
  v102[5] = v100;
  a6 = swift_allocObject();
  *(a6 + 16) = sub_1000C86F0;
  *(a6 + 24) = v102;
  v224 = sub_1000CAA0C;
  v225 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v222 = sub_10013EC94;
  v223 = &unk_10058D440;
  a5 = _Block_copy(&aBlock);

  v103 = a3;

  dispatch_sync(v101, a5);
  _Block_release(a5);
  LOBYTE(v101) = swift_isEscapingClosureAtFileLocation();

  if ((v101 & 1) == 0)
  {
    v37 = v213;
    if (!v213)
    {
      goto LABEL_51;
    }

    goto LABEL_4;
  }

  __break(1u);
LABEL_109:
  swift_once();
LABEL_61:
  v114 = type metadata accessor for Logger();
  sub_10000A6F0(v114, qword_1005DFB98);
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&_mh_execute_header, v115, v116, "SubscribeAndFetch - not proceeding with subscribe", v117, 2u);
  }

  sub_10009AD18(a1, 0, 0xF000000000000000, 0, a3, a5, a6);
LABEL_64:
}

uint64_t sub_100097320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 208) = v9;
  *(v8 + 216) = *(v9 - 8);
  *(v8 + 224) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 232) = v10;
  *(v8 + 240) = *(v10 - 8);
  *(v8 + 248) = swift_task_alloc();
  v11 = type metadata accessor for Response();
  *(v8 + 256) = v11;
  v12 = *(v11 - 8);
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 + 64);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_1000974CC, 0, 0);
}

uint64_t sub_1000974CC()
{
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_100097580;
  v3 = v0[36];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];

  return sub_1001CF6CC(v3, v1, v6, v4, 0, v5, 1, 0);
}

uint64_t sub_100097580()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1000979F4;
  }

  else
  {
    v2 = sub_100097694;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100097694()
{
  v1 = v0[35];
  v25 = v0[36];
  v2 = v0[33];
  v3 = v0[34];
  v28 = v0[32];
  v21 = v0[31];
  v26 = v0[30];
  v27 = v0[29];
  v22 = v0[28];
  v23 = v0[26];
  v20 = v0[25];
  v18 = v0[23];
  v19 = v0[24];
  v16 = v0[21];
  v17 = v0[22];
  v15 = v0[16];
  v24 = v0[27];
  (*(v2 + 16))(v1);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v4, v1, v28);
  *(v9 + v5) = v16;
  *(v9 + v6) = v17;
  *(v9 + v7) = v15;
  *(v9 + v8) = v18;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v19;
  v10[1] = v20;
  v0[12] = sub_1000C87E0;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D508;
  v11 = _Block_copy(v0 + 8);

  v12 = v17;

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v24 + 8))(v22, v23);
  (*(v26 + 8))(v21, v27);
  (*(v2 + 8))(v25, v28);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000979F4()
{
  v1 = v0[38];
  v2 = v0[31];
  v16 = v0[30];
  v17 = v0[29];
  v3 = v0[26];
  v15 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[16];
  v14 = v0[28];
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v7;
  v9[4] = v8;
  v9[5] = v6;
  v9[6] = v5;
  v9[7] = v4;
  v0[6] = sub_1000C87B0;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D4B8;
  v10 = _Block_copy(v0 + 2);

  v11 = v6;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v15 + 8))(v14, v3);
  (*(v16 + 8))(v2, v17);

  v12 = v0[1];

  return v12();
}

void sub_100097C88(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(double), void (*a7)(void, void))
{
  v90 = a6;
  v91 = a7;
  v94 = a3;
  v95 = a4;
  v92 = a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Response();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v87 - v18;
  if (Response.statusCode.getter() == 200 || Response.statusCode.getter() == 206)
  {
    v88 = a5;
    v93 = v12;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A6F0(v20, qword_1005DFB98);
    v21 = *(v14 + 16);
    v89 = a1;
    v21(v19, a1, v13);
    v22 = v92;

    v23 = v94;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v94 = v10;
      aBlock = v27;
      *v26 = 134218754;
      v28 = Response.statusCode.getter();
      (*(v14 + 8))(v19, v13);
      *(v26 + 4) = v28;
      *(v26 + 12) = 2048;
      *(v26 + 14) = *(v92 + 16);

      *(v26 + 22) = 2080;
      v29 = [v23 clientApp];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10000D01C(v30, v32, &aBlock);

      *(v26 + 24) = v33;
      *(v26 + 32) = 2080;
      v34 = Array.description.getter();
      v36 = sub_10000D01C(v34, v35, &aBlock);

      *(v26 + 34) = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "SubscribeAndFetch received status %ld for %ld IDs for clientApp %s ids %s. Now decoding...", v26, 0x2Au);
      swift_arrayDestroy();
      v10 = v94;

      v22 = v92;
    }

    else
    {
      (*(v14 + 8))(v19, v13);
    }

    if (![v23 subscriptionMode])
    {
      v37 = [v23 clientApp];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      if (v38 == 0xD000000000000015 && 0x80000001004DF810 == v40)
      {

        v22 = v92;
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v22 = v92;
        if ((v51 & 1) == 0)
        {
          v52 = v88;
          swift_beginAccess();
          v53 = *(v52 + 16);

          v54 = v93;
          v55 = static Date.trustedNow.getter(v93);
          __chkstk_darwin(v55);
          v56 = v95;
          *(&v87 - 4) = v53;
          *(&v87 - 3) = v56;
          *(&v87 - 2) = v54;
          sub_10008E264(sub_1000C88A0, (&v87 - 6), v92);
          v22 = v92;

          (*(v10 + 1))(v54, v9);
        }
      }
    }

    v57 = *(v22 + 16);
    v93 = &v98;
    v94 = v23;
    v58 = (v22 + 40);
    v59 = v57 + 1;
    while (--v59)
    {
      v60 = v58 + 2;
      v61 = *(v58 - 1);
      v62 = *v58;
      v63 = *(v95 + 48);
      v64 = *(v63 + 16);
      v65 = swift_allocObject();
      *(v65 + 16) = v63;
      *(v65 + 24) = v61;
      v66 = v94;
      *(v65 + 32) = v62;
      *(v65 + 40) = v66;
      *(v65 + 48) = 1;
      v67 = swift_allocObject();
      *(v67 + 16) = sub_1000CA9B0;
      *(v67 + 24) = v65;
      v100 = sub_1000CAA0C;
      v101 = v67;
      aBlock = _NSConcreteStackBlock;
      v97 = 1107296256;
      v98 = sub_10013EC94;
      v99 = &unk_10058D5F8;
      v68 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      v69 = v66;

      dispatch_sync(v64, v68);

      _Block_release(v68);
      LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

      v58 = v60;
      if (v61)
      {
        __break(1u);
        break;
      }
    }

    v70 = Response.body.getter();
    v72 = v71;
    sub_10009AD18(v92, v70, v71, 0, v94, v90, v91);
    sub_1000049D0(v70, v72);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10000A6F0(v41, qword_1005DFB98);
    (*(v14 + 16))(v17, a1, v13);
    v42 = v92;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 134218498;
      v47 = Response.statusCode.getter();
      (*(v14 + 8))(v17, v13);
      *(v45 + 4) = v47;
      *(v45 + 12) = 2048;
      *(v45 + 14) = *(v42 + 16);

      *(v45 + 22) = 2080;
      v48 = Array.description.getter();
      v50 = sub_10000D01C(v48, v49, &aBlock);

      *(v45 + 24) = v50;
      _os_log_impl(&_mh_execute_header, v43, v44, "Error during SubscribeAndFetch %ld. %ld IDs. ForIds %s", v45, 0x20u);
      sub_100004984(v46);
    }

    else
    {
      (*(v14 + 8))(v17, v13);
    }

    v73 = *(v42 + 16);
    v93 = &v98;
    v74 = (v42 + 40);
    v75 = v73 + 1;
    while (--v75)
    {
      v76 = v74 + 2;
      v77 = *(v74 - 1);
      v78 = *v74;
      v79 = *(v95 + 48);
      v80 = *(v79 + 16);
      v81 = swift_allocObject();
      *(v81 + 16) = v79;
      *(v81 + 24) = v77;
      v82 = v94;
      *(v81 + 32) = v78;
      *(v81 + 40) = v82;
      *(v81 + 48) = 2;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1000CA9B0;
      *(v83 + 24) = v81;
      v100 = sub_1000CAA0C;
      v101 = v83;
      aBlock = _NSConcreteStackBlock;
      v97 = 1107296256;
      v98 = sub_10013EC94;
      v99 = &unk_10058D580;
      v84 = _Block_copy(&aBlock);
      swift_bridgeObjectRetain_n();
      v85 = v82;

      dispatch_sync(v80, v84);

      _Block_release(v84);
      LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

      v74 = v76;
      if (v77)
      {
        __break(1u);
        break;
      }
    }

    v86 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    sub_10009AD18(v92, 0, 0xF000000000000000, v86, v94, v90, v91);
  }
}

uint64_t sub_1000986D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(double), void (*a6)(void, void))
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v33 = a2;
  v30 = a1;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v11 = 136315394;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10000D01C(v12, v13, aBlock);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = Array.description.getter();
    v17 = sub_10000D01C(v15, v16, aBlock);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v9, v10, "subscribeAndFetch failed %s forIds %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v18 = (a2 + 40);
  v19 = *(a2 + 16) + 1;
  while (--v19)
  {
    v20 = v18 + 2;
    v22 = *(v18 - 1);
    v21 = *v18;
    v23 = *(a3 + 48);
    v24 = *(v23 + 16);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v22;
    *(v25 + 32) = v21;
    *(v25 + 40) = a4;
    *(v25 + 48) = 2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1000CA9B0;
    *(v26 + 24) = v25;
    aBlock[4] = sub_1000CAA0C;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013EC94;
    aBlock[3] = &unk_10058D670;
    v27 = _Block_copy(aBlock);
    swift_bridgeObjectRetain_n();

    v28 = a4;

    dispatch_sync(v24, v27);

    _Block_release(v27);
    LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

    v18 = v20;
    if (v21)
    {
      __break(1u);
      return sub_10009AD18(v33, 0, 0xF000000000000000, v30, a4, a5, a6);
    }
  }

  return sub_10009AD18(v33, 0, 0xF000000000000000, v30, a4, a5, a6);
}

uint64_t sub_100098A60(uint64_t a1, unint64_t a2)
{
  v151 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v140 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v149 = type metadata accessor for DispatchQoS();
  v6 = __chkstk_darwin(v149);
  v148 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v141 = a2;
  if (v10)
  {
    v147 = v157;
    v11 = *(a2 + 48);
    v145 = (v4 + 8);
    v144 = (v7 + 8);
    v12 = (a1 + 40);
    *&v8 = 141558275;
    v142 = v8;
    v143 = _swiftEmptyArrayStorage;
    v152 = _swiftEmptyArrayStorage;
    v153 = _swiftEmptyArrayStorage;
    v146 = v11;
    while (1)
    {
      v154 = v10;
      v14 = *(v12 - 1);
      v13 = *v12;
      __chkstk_darwin(v6);
      *(&v140 - 4) = 0;
      *(&v140 - 3) = v11;
      *(&v140 - 2) = v14;
      *(&v140 - 1) = v13;

      v15 = v155;
      isUniquelyReferenced_nonNull_native = OS_dispatch_queue.sync<A>(execute:)();
      v17 = aBlock[0];
      if (LOBYTE(aBlock[0]) == 1)
      {

        v18 = v153;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1001FC900(0, *(v18 + 2) + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v18 + 2);
        v19 = *(v18 + 3);
        v153 = v18;
        if (v20 >= v19 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1001FC900((v19 > 1), v20 + 1, 1, v153);
          v153 = isUniquelyReferenced_nonNull_native;
        }

        v21 = v153;
        *(v153 + 2) = v20 + 1;
        v22 = &v21[16 * v20];
        *(v22 + 4) = v14;
        *(v22 + 5) = v13;
      }

      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      *(&v140 - 4) = 1;
      *(&v140 - 3) = v11;
      *(&v140 - 2) = v14;
      *(&v140 - 1) = v13;
      OS_dispatch_queue.sync<A>(execute:)();
      v155 = v15;
      if (LOBYTE(aBlock[0]) == 1)
      {
        break;
      }

      if ((v17 & 1) == 0)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_10000A6F0(v28, qword_1005DFB98);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock[0] = v32;
          *v31 = v142;
          *(v31 + 4) = 1752392040;
          *(v31 + 12) = 2081;
          *(v31 + 14) = sub_10000D01C(v14, v13, aBlock);
          _os_log_impl(&_mh_execute_header, v29, v30, "Received Key: No pending subscription for %{private,mask.hash}s", v31, 0x16u);
          sub_100004984(v32);
        }

        v33 = v143;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1001FC900(0, *(v33 + 2) + 1, 1, v33);
        }

        v25 = *(v33 + 2);
        v34 = *(v33 + 3);
        v26 = v33;
        v27 = v25 + 1;
        if (v25 >= v34 >> 1)
        {
          v35 = sub_1001FC900((v34 > 1), v25 + 1, 1, v26);
          v143 = v35;
        }

        else
        {
          v143 = v26;
LABEL_23:
          v35 = v26;
        }

        goto LABEL_24;
      }

LABEL_25:
      if (qword_1005A7EE0 != -1)
      {
        swift_once();
      }

      v37 = qword_1005DFB60;
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v14;
      *(v38 + 32) = v13;
      *(v38 + 40) = 1;
      v157[2] = sub_1000CA3CC;
      v157[3] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v157[0] = sub_100020828;
      v157[1] = &unk_10058E480;
      v39 = _Block_copy(aBlock);
      swift_retain_n();
      v40 = v148;
      static DispatchQoS.unspecified.getter();
      v158 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
      v42 = v150;
      v41 = v151;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v39);
      (*v145)(v42, v41);
      (*v144)(v40, v149);

      v12 += 2;
      v10 = v154 - 1;
      v11 = v146;
      if (v154 == 1)
      {
        goto LABEL_32;
      }
    }

    v23 = v152;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1001FC900(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v23;
    v27 = v25 + 1;
    if (v25 < v24 >> 1)
    {
      v152 = v26;
      goto LABEL_23;
    }

    v35 = sub_1001FC900((v24 > 1), v25 + 1, 1, v26);
    v152 = v35;
LABEL_24:
    *(v35 + 2) = v27;
    v36 = &v35[16 * v25];
    *(v36 + 4) = v14;
    *(v36 + 5) = v13;
    goto LABEL_25;
  }

  v143 = _swiftEmptyArrayStorage;
  v152 = _swiftEmptyArrayStorage;
  v153 = _swiftEmptyArrayStorage;
LABEL_32:
  if (*(v153 + 2))
  {
    v43 = v141;
    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_34;
  }

  v60 = v143;
  v43 = v141;
LABEL_40:
  v59 = v155;
LABEL_41:
  v61 = v152;
  if (!*(v152 + 2))
  {
    goto LABEL_47;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v62 = v59;
  v63 = type metadata accessor for Logger();
  sub_10000A6F0(v63, qword_1005DFB98);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v61 = v152;

    v68 = Array.description.getter();
    v70 = v69;

    v71 = sub_10000D01C(v68, v70, aBlock);

    *(v66 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "Received Key: Subscribing in shallow to %s", v66, 0xCu);
    sub_100004984(v67);

    if (*(v61 + 2))
    {
LABEL_46:
      v72 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

      v73 = [v72 init];
      [v73 setSubscriptionMode:1];
      v74 = String._bridgeToObjectiveC()();
      [v73 setClientApp:v74];

      [v73 setFetchMode:0];
      v75 = type metadata accessor for Transaction();
      __chkstk_darwin(v75);
      *(&v140 - 4) = v152;
      *(&v140 - 3) = v43;
      *(&v140 - 2) = v73;
      *(&v140 - 1) = 1;
      static Transaction.named<A>(_:with:)();
      v61 = v152;
      v59 = v62;

      v60 = v143;
LABEL_47:
      if (!*(v60 + 2))
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }
  }

  else
  {

    v61 = v152;
    if (*(v152 + 2))
    {
      goto LABEL_46;
    }
  }

  v59 = v62;
  if (!*(v143 + 2))
  {
LABEL_56:
  }

LABEL_48:
  sub_10004B564(&qword_1005A9E30, &unk_1004C3370);
  v76 = v59;
  unsafeFromAsyncTask<A>(_:)();
  v77 = v59;
  v152 = v61;
  if (v59)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v78 = v43;
    v79 = type metadata accessor for Logger();
    sub_10000A6F0(v79, qword_1005DFB98);
    swift_errorRetain();
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v82 = 136446466;
      v158 = v59;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v83 = String.init<A>(describing:)();
      v85 = sub_10000D01C(v83, v84, aBlock);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2080;
      v86 = v143;

      v87 = Array.description.getter();
      v89 = v88;

      v90 = sub_10000D01C(v87, v89, aBlock);

      *(v82 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v80, v81, "Received Key: Unable to get following handles %{public}s,\nso subscribing with intent to notify server of keys received %s", v82, 0x16u);
      swift_arrayDestroy();

      if (*(v86 + 2))
      {
LABEL_53:
        v91 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

        v92 = [v91 init];
        [v92 setSubscriptionMode:0];
        v93 = String._bridgeToObjectiveC()();
        [v92 setClientApp:v93];

        [v92 setFetchMode:0];
        v94 = type metadata accessor for Transaction();
        __chkstk_darwin(v94);
        *(&v140 - 4) = v86;
        *(&v140 - 3) = v78;
        *(&v140 - 2) = v92;
        *(&v140 - 1) = 0;
        static Transaction.named<A>(_:with:)();
        sub_1000C8450(v77, 1);

        return swift_bridgeObjectRelease_n();
      }
    }

    else
    {

      v86 = v143;
      if (*(v143 + 2))
      {
        goto LABEL_53;
      }
    }

    sub_1000C8450(v76, 1);
  }

  v96 = aBlock[0];
  v97 = qword_1005A7F38;

  if (v97 != -1)
  {
    v98 = swift_once();
  }

  __chkstk_darwin(v98);
  *(&v140 - 2) = v96;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  sub_1000C8450(v96, 0);
  v146 = v96;
  sub_10008E038(v96);
  v100 = sub_10023F00C(v99);

  v101 = v143;
  v154 = *(v143 + 2);
  if (v154)
  {
    v155 = v59;
    v151 = (v143 + 32);
    v102 = (v100 + 56);

    v103 = 0;
    v104 = _swiftEmptyArrayStorage;
    *&v105 = 136315138;
    v149 = v105;
    v106 = _swiftEmptyArrayStorage;
    v150 = (v100 + 56);
    v148 = v100;
    while (1)
    {
      if (v103 >= *(v101 + 2))
      {
        __break(1u);
LABEL_103:
        swift_once();
LABEL_34:
        v44 = type metadata accessor for Logger();
        sub_10000A6F0(v44, qword_1005DFB98);
        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          aBlock[0] = v48;
          *v47 = 136315138;
          v49 = v153;

          v50 = Array.description.getter();
          v52 = v51;

          v53 = sub_10000D01C(v50, v52, aBlock);

          *(v47 + 4) = v53;
          _os_log_impl(&_mh_execute_header, v45, v46, "Received Key: Subscribing in proactive to %s", v47, 0xCu);
          sub_100004984(v48);

          if (*(v49 + 2))
          {
            goto LABEL_36;
          }

LABEL_39:
          v60 = v143;
          goto LABEL_40;
        }

        v49 = v153;
        if (!*(v153 + 2))
        {
          goto LABEL_39;
        }

LABEL_36:
        v54 = objc_allocWithZone(SPSecureLocationsSubscriptionContext);

        v55 = [v54 init];
        [v55 setSubscriptionMode:0];
        v56 = String._bridgeToObjectiveC()();
        [v55 setClientApp:v56];

        [v55 setFetchMode:0];
        v57 = type metadata accessor for Transaction();
        __chkstk_darwin(v57);
        *(&v140 - 4) = v49;
        *(&v140 - 3) = v43;
        *(&v140 - 2) = v55;
        *(&v140 - 1) = 0;
        v58 = v155;
        static Transaction.named<A>(_:with:)();
        v59 = v58;

        v60 = v143;
        goto LABEL_41;
      }

      v107 = (v151 + 16 * v103);
      v43 = *v107;
      v108 = v107[1];
      if (*(v100 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v109 = Hasher._finalize()();
        v110 = -1 << *(v100 + 32);
        v111 = v109 & ~v110;
        if ((*&v102[(v111 >> 3) & 0xFFFFFFFFFFFFFF8] >> v111))
        {
          v112 = ~v110;
          while (1)
          {
            v113 = (*(v100 + 48) + 16 * v111);
            v114 = *v113 == v43 && v113[1] == v108;
            if (v114 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v111 = (v111 + 1) & v112;
            if (((*&v102[(v111 >> 3) & 0xFFFFFFFFFFFFFF8] >> v111) & 1) == 0)
            {
              goto LABEL_76;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_1001FC900(0, *(v106 + 2) + 1, 1, v106);
          }

          v126 = *(v106 + 2);
          v125 = *(v106 + 3);
          if (v126 >= v125 >> 1)
          {
            v106 = sub_1001FC900((v125 > 1), v126 + 1, 1, v106);
          }

          *(v106 + 2) = v126 + 1;
          v127 = &v106[16 * v126];
          *(v127 + 4) = v43;
          *(v127 + 5) = v108;
          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v128 = type metadata accessor for Logger();
          sub_10000A6F0(v128, qword_1005DFB98);

          v119 = Logger.logObject.getter();
          v129 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v119, v129))
          {
            v130 = swift_slowAlloc();
            v147 = v104;
            v131 = v130;
            v132 = swift_slowAlloc();
            aBlock[0] = v132;
            *v131 = v149;
            v43 = sub_10000D01C(v43, v108, aBlock);

            *(v131 + 4) = v43;
            _os_log_impl(&_mh_execute_header, v119, v129, "Received Key: Subscribing in proactive from following: %s", v131, 0xCu);
            sub_100004984(v132);

            v104 = v147;
            goto LABEL_92;
          }

          goto LABEL_62;
        }
      }

      else
      {
      }

LABEL_76:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v104 = sub_1001FC900(0, *(v104 + 2) + 1, 1, v104);
      }

      v116 = *(v104 + 2);
      v115 = *(v104 + 3);
      if (v116 >= v115 >> 1)
      {
        v104 = sub_1001FC900((v115 > 1), v116 + 1, 1, v104);
      }

      *(v104 + 2) = v116 + 1;
      v117 = &v104[16 * v116];
      *(v117 + 4) = v43;
      *(v117 + 5) = v108;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      sub_10000A6F0(v118, qword_1005DFB98);

      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = v106;
        v123 = v104;
        v124 = swift_slowAlloc();
        aBlock[0] = v124;
        *v121 = v149;
        v43 = sub_10000D01C(v43, v108, aBlock);

        *(v121 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v119, v120, "Received Key: Subscribing with intent to notify server of keys received: %s", v121, 0xCu);
        sub_100004984(v124);
        v104 = v123;
        v106 = v122;
        v100 = v148;

LABEL_92:

        goto LABEL_63;
      }

LABEL_62:

LABEL_63:

      v102 = v150;
      ++v103;
      v101 = v143;
      if (v103 == v154)
      {
        v133 = v104;

        v43 = v141;
        goto LABEL_97;
      }
    }
  }

  v106 = _swiftEmptyArrayStorage;
  v133 = _swiftEmptyArrayStorage;
LABEL_97:

  if (*(v106 + 2))
  {
    v134 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
    [v134 setSubscriptionMode:5];
    v135 = String._bridgeToObjectiveC()();
    [v134 setClientApp:v135];

    [v134 setFetchMode:0];
    v136 = type metadata accessor for Transaction();
    __chkstk_darwin(v136);
    *(&v140 - 4) = v106;
    *(&v140 - 3) = v43;
    *(&v140 - 2) = v134;
    *(&v140 - 1) = 5;
    static Transaction.named<A>(_:with:)();

    if (*(v133 + 2))
    {
      goto LABEL_99;
    }

LABEL_101:

    sub_1000C8450(v146, 0);
  }

  else
  {

    if (!*(v133 + 2))
    {
      goto LABEL_101;
    }

LABEL_99:
    v137 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
    [v137 setSubscriptionMode:5];
    v138 = String._bridgeToObjectiveC()();
    [v137 setClientApp:v138];

    [v137 setFetchMode:0];
    v139 = type metadata accessor for Transaction();
    __chkstk_darwin(v139);
    *(&v140 - 4) = v133;
    *(&v140 - 3) = v43;
    *(&v140 - 2) = v137;
    *(&v140 - 1) = 5;
    static Transaction.named<A>(_:with:)();
    sub_1000C8450(v146, 0);
  }
}

uint64_t sub_10009A288(objc_class *a1, objc_class **a2, objc_class *a3, objc_class *a4, objc_class *a5)
{
  v74 = a1;
  v75 = a5;
  v80 = a4;
  v77 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v68 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v9 - 8);
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a2;
  v73 = a2[2];
  if (v73)
  {
    v11 = *(v77 + 6);
    v78 = &v85;
    v79 = v11;
    v12 = (v76 + 5);
    v13 = v73;
    while (1)
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v16 = v79;
      v81 = *(v79 + 2);
      v17 = swift_allocObject();
      v17[2].isa = v16;
      v17[3].isa = v15;
      v18 = v80;
      v17[4].isa = v14;
      v17[5].isa = v18;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1000CAB54;
      *(v19 + 24) = v17;
      v87 = sub_1000CAA0C;
      v88 = v19;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_10013EC94;
      v86 = &unk_10058E4F8;
      v20 = _Block_copy(&aBlock);
      v21 = v88;
      v22 = v18;

      dispatch_sync(v81, v20);
      _Block_release(v20);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v12 += 2;
      v13 = (v13 - 1);
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = swift_allocObject();
    v14 = v74;
    v24 = v75;
    v17[2].isa = v74;
    v17[3].isa = v24;
    v21 = v76;
    v25 = v77;
    v17[4].isa = v76;
    v17[5].isa = v25;
    v26 = v80;
    v17[6].isa = v80;
    v27 = qword_1005A7EE8;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    isEscapingClosureAtFileLocation = v26;
    if (v27 == -1)
    {
      goto LABEL_6;
    }
  }

  swift_once();
LABEL_6:
  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFB98);

  v29 = isEscapingClosureAtFileLocation;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v81 = v17;
    aBlock = v33;
    *v32 = 134218754;
    *(v32 + 4) = v73;

    *(v32 + 12) = 2082;
    v34 = [v29 clientApp];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v29;
    v38 = v37;

    v39 = v35;
    v21 = v76;
    v40 = sub_10000D01C(v39, v38, &aBlock);

    *(v32 + 14) = v40;
    *(v32 + 22) = 2080;
    v41 = Array.description.getter();
    v43 = sub_10000D01C(v41, v42, &aBlock);

    *(v32 + 24) = v43;
    v29 = v36;
    *(v32 + 32) = 1024;
    *(v32 + 34) = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "SubscribeAndFetch location for %ld IDs for clientApp %{public}s ids %s forceKeyRefresh %{BOOL}d", v32, 0x26u);
    swift_arrayDestroy();
    v17 = v81;
    v14 = v74;

    if (sub_1000BB328())
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (sub_1000BB328())
    {
LABEL_15:
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "SubscribeAndFetch: secureLocations feature disabled. Not proceeding with subscribe", v57, 2u);
      }

      [v29 subscriptionMode];
      type metadata accessor for SecureLocationsError(0);
      v82 = 6;
      sub_1000BC07C(_swiftEmptyArrayStorage);
      sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
      _BridgedStoredNSError.init(_:userInfo:)();
      v58 = aBlock;
      sub_1000BC1AC(aBlock, v14, v75, v21, v77, v29);
    }
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v44 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v44);
  v45 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v46 = v72;
  sub_1000CA264(v44 + *(v45 + 28), v72, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v44);

  v47 = *(v46 + 8);
  sub_1000CA2CC(v46, type metadata accessor for SecureLocationsConfig);
  if ((v47 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v73)
  {
    v48 = v77;
    v80 = *(v77 + 40);
    v49 = swift_allocObject();
    *(v49 + 16) = v21;
    *(v49 + 24) = v48;
    *(v49 + 32) = v29;
    *(v49 + 40) = 0;
    *(v49 + 48) = sub_1000CA418;
    *(v49 + 56) = v17;
    v87 = sub_1000CA9B4;
    v88 = v49;
    aBlock = _NSConcreteStackBlock;
    v84 = 1107296256;
    v85 = sub_100020828;
    v86 = &unk_10058E570;
    v50 = _Block_copy(&aBlock);
    v81 = v17;
    v51 = v50;

    v79 = v29;

    v52 = v66;
    static DispatchQoS.unspecified.getter();
    v82 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v53 = v68;
    v54 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v51);
    (*(v70 + 8))(v53, v54);
    (*(v67 + 8))(v52, v69);
  }

  else
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "No findMyIds specified for SubscribeAndFetch - not proceeding", v62, 2u);
    }

    v63 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    [v29 subscriptionMode];
    v64 = v63;
    sub_1000BC1AC(v63, v14, v75, v21, v77, v29);
  }
}

uint64_t sub_10009AD18(uint64_t a1, void *a2, unint64_t a3, unint64_t a4, void *a5, void (*a6)(double), void (*a7)(void, void))
{
  v167 = a7;
  v168 = a6;
  v165 = a5;
  *&v166 = a4;
  v183 = a2;
  v181 = type metadata accessor for DispatchWorkItemFlags();
  v170 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = type metadata accessor for DispatchQoS();
  v169 = *(v179 - 8);
  __chkstk_darwin(v179);
  v178 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SecureLocation(0);
  v182 = *(v12 - 8);
  v13 = __chkstk_darwin(v12 - 8);
  v177 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = (&v156 - v16);
  v18 = __chkstk_darwin(v15);
  v185 = &v156 - v19;
  __chkstk_darwin(v18);
  v21 = (&v156 - v20);
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v176 = v7;
  v26 = *(v7 + 320);
  *v25 = v26;
  (*(v23 + 104))(v25, enum case for DispatchPredicate.onQueue(_:), v22);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
LABEL_40:
    v75 = type metadata accessor for Logger();
    sub_10000A6F0(v75, qword_1005DFB98);
    v76 = v166;
    swift_errorRetain();
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v186 = v76;
      aBlock = v80;
      *v79 = 134218242;
      *(v79 + 4) = v183[2];
      *(v79 + 12) = 2080;
      swift_errorRetain();
      sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
      v81 = String.init<A>(describing:)();
      v83 = sub_10000D01C(v81, v82, &aBlock);

      *(v79 + 14) = v83;
      _os_log_impl(&_mh_execute_header, v77, v78, "SubscribeAndFetch - no response data. Returning locations from cache. count %ld error %s", v79, 0x16u);
      sub_100004984(v80);
    }

    v84 = v165;
    v85 = [v165 subscriptionMode];
    v86 = [v84 subscriptionMode];
    v87 = 15.0;
    if (v85 == 5)
    {
      v87 = 0.0;
      if (v86 <= 5)
      {
        v87 = dbl_1004C36D0[v86];
      }
    }

    (v168)(v88, v166, v87);

    swift_bridgeObjectRelease_n();
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v171 = JSONDecoder.init()();
  v28 = *(a1 + 16);
  v29 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v184 = a3;
    v30 = v17;
    aBlock = _swiftEmptyArrayStorage;
    sub_10002B3C0(0, v28, 0);
    v29 = aBlock;
    v31 = (a1 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      aBlock = v29;
      v34 = v29[2];
      v35 = v29[3];

      if (v34 >= v35 >> 1)
      {
        sub_10002B3C0((v35 > 1), v34 + 1, 1);
        v29 = aBlock;
      }

      v29[2] = (v34 + 1);
      v36 = &v29[2 * v34];
      v36[4] = v33;
      v36[5] = v32;
      v31 += 2;
      --v28;
    }

    while (v28);
    v17 = v30;
    a3 = v184;
  }

  v37 = sub_10023F00C(v29);

  v193 = v37;
  if (a3 >> 60 == 15)
  {
    v38 = sub_100100D10(v37);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = (*(v182 + 80) + 32) & ~*(v182 + 80);
      v164 = v38;
      v172 = v40;
      v41 = v38 + v40;
      v182 = *(v182 + 72);
      v176 = &v189;
      v175 = v170 + 1;
      v174 = v169 + 1;
      v183 = _swiftEmptyArrayStorage;
      do
      {
        v185 = v39;
        sub_1000CA264(v41, v17, type metadata accessor for SecureLocation);
        if (qword_1005A7EF8 != -1)
        {
          swift_once();
        }

        v51 = sub_1000DC618(v17);

        if (v51)
        {
          sub_1000CA264(v17, v177, type metadata accessor for SecureLocation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v183 = sub_1001FCE44(0, v183[2] + 1, 1, v183);
          }

          v53 = v183[2];
          v52 = v183[3];
          if (v53 >= v52 >> 1)
          {
            v183 = sub_1001FCE44((v52 > 1), v53 + 1, 1, v183);
          }

          v54 = v183;
          v183[2] = v53 + 1;
          sub_1000C9DE8(v177, v172 + v54 + v53 * v182, type metadata accessor for SecureLocation);
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          v55 = qword_1005DFB60;
          v56 = *v17;
          v44 = v17[1];
          v173 = *(qword_1005DFB60 + 16);
          v57 = swift_allocObject();
          *(v57 + 16) = v55;
          *(v57 + 24) = v56;
          v184 = v56;
          *(v57 + 32) = v44;
          *(v57 + 40) = 1;
          v191 = sub_1000CAB4C;
          v192 = v57;
          aBlock = _NSConcreteStackBlock;
          v188 = 1107296256;
          v189 = sub_100020828;
          v190 = &unk_10058E098;
          v46 = _Block_copy(&aBlock);
          swift_retain_n();

          v47 = v178;
          static DispatchQoS.unspecified.getter();
          v186 = _swiftEmptyArrayStorage;
        }

        else
        {
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          v42 = qword_1005DFB60;
          v43 = *v17;
          v44 = v17[1];
          v173 = *(qword_1005DFB60 + 16);
          v45 = swift_allocObject();
          *(v45 + 16) = v42;
          *(v45 + 24) = v43;
          v184 = v43;
          *(v45 + 32) = v44;
          *(v45 + 40) = 2;
          v191 = sub_1000C9B3C;
          v192 = v45;
          aBlock = _NSConcreteStackBlock;
          v188 = 1107296256;
          v189 = sub_100020828;
          v190 = &unk_10058DFF8;
          v46 = _Block_copy(&aBlock);
          swift_retain_n();

          v47 = v178;
          static DispatchQoS.unspecified.getter();
          v186 = _swiftEmptyArrayStorage;
        }

        sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10004B564(&unk_1005A9700, &qword_1004C3820);
        sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
        v48 = v17;
        v50 = v180;
        v49 = v181;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v46);
        (*v175)(v50, v49);
        (*v174)(v47, v179);

        sub_1001AC480(v184, v44);

        sub_1000CA2CC(v48, type metadata accessor for SecureLocation);
        v41 += v182;
        v39 = v185 - 1;
        v17 = v48;
      }

      while (v185 != 1);

      v37 = v193;
    }

    else
    {

      v183 = _swiftEmptyArrayStorage;
    }

    v58 = v37 + 56;
    v59 = 1 << *(v37 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v37 + 56);
    v62 = (v59 + 63) >> 6;
    v176 = &v189;
    v175 = v170 + 1;
    v174 = v169 + 1;

    v63 = 0;
    v182 = v37 + 56;
    v177 = v62;
    v184 = v37;
    if (v61)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        __break(1u);
        goto LABEL_90;
      }

      if (v64 >= v62)
      {
        break;
      }

      v61 = *(v58 + 8 * v64);
      ++v63;
      if (v61)
      {
        v63 = v64;
        do
        {
LABEL_35:
          v65 = (*(v37 + 48) + ((v63 << 10) | (16 * __clz(__rbit64(v61)))));
          v66 = *v65;
          v67 = v65[1];
          v68 = qword_1005A7EE0;

          if (v68 != -1)
          {
            swift_once();
          }

          v61 &= v61 - 1;
          v69 = qword_1005DFB60;
          v185 = *(qword_1005DFB60 + 16);
          v70 = swift_allocObject();
          *(v70 + 16) = v69;
          *(v70 + 24) = v66;
          *(v70 + 32) = v67;
          *(v70 + 40) = 0;
          v191 = sub_1000CAB4C;
          v192 = v70;
          aBlock = _NSConcreteStackBlock;
          v188 = 1107296256;
          v189 = sub_100020828;
          v190 = &unk_10058E048;
          v71 = _Block_copy(&aBlock);
          swift_retain_n();

          v72 = v178;
          static DispatchQoS.unspecified.getter();
          v186 = _swiftEmptyArrayStorage;
          sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10004B564(&unk_1005A9700, &qword_1004C3820);
          sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
          v73 = v180;
          v74 = v181;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v71);

          (*v175)(v73, v74);
          (*v174)(v72, v179);

          v37 = v184;
          v58 = v182;
          v62 = v177;
        }

        while (v61);
      }
    }

    if (qword_1005A7EE8 != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_40;
  }

  sub_100005F6C(v183, a3);
  sub_1000C9B4C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v184 = a3;
  v91 = aBlock;
  v90 = v188;
  v92 = v189;
  v93 = v190;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  v95 = sub_10000A6F0(v94, qword_1005DFB98);

  v177 = v95;
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.default.getter();

  v98 = os_log_type_enabled(v96, v97);
  v175 = v92;
  if (v98)
  {
    v99 = swift_slowAlloc();
    v174 = v91;
    v100 = v99;
    v101 = swift_slowAlloc();
    aBlock = v101;
    *v100 = 136315138;

    v102 = sub_10000D01C(v90, v92, &aBlock);
    v103 = v37;
    v104 = v102;

    *(v100 + 4) = v104;
    v37 = v103;
    _os_log_impl(&_mh_execute_header, v96, v97, "Decoded SubscribeAndFetch response successfully %s. Now attempting to decrypt", v100, 0xCu);
    sub_100004984(v101);

    v91 = v174;
  }

  v160 = *(v37 + 16);
  if (v93)
  {

    sub_10009D258(v105);
    v161 = v93[2];
    if (v161)
    {
      v106 = v93 + 5;
      v107 = v161;
      do
      {
        v109 = *(v106 - 1);
        v108 = *v106;

        sub_1001AC480(v109, v108);

        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        sub_1000CD500(v109, v108, 3);

        v106 += 2;
        --v107;
      }

      while (v107);
    }
  }

  else
  {
    v161 = 0;
  }

  v110 = sub_1001028AC(v91);

  v111 = sub_1000BAADC(v110, &v193);
  v163 = 0;

  v164 = v111;
  v159 = v111[2];
  v112 = v193;
  v158 = *(v193 + 16);
  v113 = sub_100100D10(v193);
  v114 = *(v113 + 16);
  v115 = _swiftEmptyArrayStorage;
  if (v114)
  {
    v116 = (*(v182 + 80) + 32) & ~*(v182 + 80);
    v117 = *(v182 + 72);
    v175 = v113;
    v182 = v116;
    v118 = v113 + v116;
    do
    {
      sub_1000CA264(v118, v21, type metadata accessor for SecureLocation);
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v119 = sub_1000DC618(v21);

      if (v119)
      {
        if (qword_1005A7EE0 != -1)
        {
          swift_once();
        }

        v120 = *v21;
        v121 = v21[1];

        sub_1000CD500(v120, v121, 1);

        sub_1001AC480(v120, v121);

        sub_1000C9DE8(v21, v185, type metadata accessor for SecureLocation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v115;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100239440(0, v115[2] + 1, 1);
          v115 = aBlock;
        }

        v124 = v115[2];
        v123 = v115[3];
        if (v124 >= v123 >> 1)
        {
          sub_100239440((v123 > 1), v124 + 1, 1);
          v115 = aBlock;
        }

        v115[2] = (v124 + 1);
        sub_1000C9DE8(v185, v115 + v182 + v124 * v117, type metadata accessor for SecureLocation);
      }

      else
      {
        sub_1000CA2CC(v21, type metadata accessor for SecureLocation);
      }

      v118 += v117;
      --v114;
    }

    while (v114);
    v112 = v193;
  }

  v125 = swift_allocObject();

  v162 = v125;
  *(v125 + 16) = v115;
  v157 = v115[2];
  v127 = (v112 + 56);
  v126 = *(v112 + 56);
  v128 = 1 << *(v112 + 32);
  v129 = -1;
  v156 = *(v112 + 16);
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & v126;
  v131 = (v128 + 63) >> 6;
  v172 = &v189;
  ++v170;
  ++v169;

  v132 = 0;
  *&v133 = 141558275;
  v166 = v133;
  v134 = v184;
  v174 = (v112 + 56);
  v175 = v112;
  v173 = v131;
  while (v130)
  {
    v135 = v132;
LABEL_82:
    v136 = (*(v112 + 48) + ((v135 << 10) | (16 * __clz(__rbit64(v130)))));
    v138 = *v136;
    v137 = v136[1];
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    v130 &= v130 - 1;
    v139 = qword_1005DFB60;
    v185 = *(qword_1005DFB60 + 16);
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = v138;
    *(v140 + 32) = v137;
    *(v140 + 40) = 0;
    v191 = sub_1000CAB4C;
    v192 = v140;
    aBlock = _NSConcreteStackBlock;
    v188 = 1107296256;
    v189 = sub_100020828;
    v190 = &unk_10058E110;
    v141 = _Block_copy(&aBlock);
    swift_retain_n();

    v142 = v178;
    static DispatchQoS.unspecified.getter();
    v186 = _swiftEmptyArrayStorage;
    sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    v182 = v138;
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
    v143 = v180;
    v144 = v181;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v141);
    (*v170)(v143, v144);
    (*v169)(v142, v179);

    v145 = Logger.logObject.getter();
    v146 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock = v148;
      *v147 = v166;
      *(v147 + 4) = 1752392040;
      *(v147 + 12) = 2081;
      *(v147 + 14) = sub_10000D01C(v182, v137, &aBlock);
      _os_log_impl(&_mh_execute_header, v145, v146, "subscribeAndFetch: No Location Found for %{private,mask.hash}s", v147, 0x16u);
      sub_100004984(v148);
    }

    v132 = v135;
    v134 = v184;
    v112 = v175;
    v127 = v174;
    v131 = v173;
  }

  while (1)
  {
    v135 = v132 + 1;
    if (__OFADD__(v132, 1))
    {
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v135 >= v131)
    {
      break;
    }

    v130 = v127[v135];
    ++v132;
    if (v130)
    {
      goto LABEL_82;
    }
  }

  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 134219264;
    *(v151 + 4) = v160;
    *(v151 + 12) = 2048;
    *(v151 + 14) = v161;
    *(v151 + 22) = 2048;
    *(v151 + 24) = v159;
    *(v151 + 32) = 2048;
    *(v151 + 34) = v158;
    *(v151 + 42) = 2048;
    *(v151 + 44) = v157;
    *(v151 + 52) = 2048;
    *(v151 + 54) = v156;
    _os_log_impl(&_mh_execute_header, v149, v150, "subscribeAndFetch location counts. requested %ld failed %ld fromServer %ld notOnServer %ld notOnServerButInCache %ld noLocationFound %ld", v151, 0x3Eu);
  }

  v152 = type metadata accessor for Transaction();
  __chkstk_darwin(v152);
  v153 = v164;
  *(&v156 - 6) = v176;
  *(&v156 - 5) = v153;
  v154 = v162;
  *(&v156 - 4) = v165;
  *(&v156 - 3) = v154;
  v155 = v167;
  *(&v156 - 2) = v168;
  *(&v156 - 1) = v155;
  static Transaction.named<A>(_:with:)();
  sub_10001A794(v183, v134);
}

uint64_t sub_10009C844(uint64_t a1, uint64_t a2, char *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v64 = a3;
  v13 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v13 - 8);
  v57 = &v51 - v14;
  v15 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v15 - 8);
  v54 = &v51 - v16;
  v53 = type metadata accessor for Credentials(0);
  v55 = *(v53 - 8);
  v17 = *(v55 + 64);
  v18 = __chkstk_darwin(v53);
  v52 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v56 = &v51 - v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a2;
  v20[4] = a5;
  v20[5] = a6;
  v58 = a6;
  v20[6] = a7;
  v20[7] = a1;
  v21 = objc_opt_self();
  v22 = a4;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v60 = a1;
  swift_retain_n();
  v59 = v22;
  v23 = [v21 standardUserDefaults];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 BOOLForKey:v24];

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A6F0(v26, qword_1005DFB98);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 67109120;
    *(v29 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v27, v28, "LabelledLocations Resolve Label isfetchdone %{BOOL}d", v29, 8u);
  }

  if (!v25)
  {
    v51 = a7;
    v31 = swift_allocObject();
    v32 = v64;
    *(v31 + 16) = a2;
    *(v31 + 24) = v32;
    *(v31 + 32) = 0;
    *(v31 + 40) = sub_1000C9BC4;
    *(v31 + 48) = v20;
    v33 = qword_1005A8098;

    if (v33 != -1)
    {
      swift_once();
    }

    v34 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v35 = sub_10000A6F0(v34, qword_1005AF7C0);
    os_unfair_lock_lock(v35);
    v36 = v54;
    sub_100005F04(v35 + *(v34 + 28), v54, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v35);
    v37 = v55;
    if ((*(v55 + 48))(v36, 1, v53) == 1)
    {
      sub_100002CE0(v36, &qword_1005A9DA8, &unk_1004D1130);
      v62[0] = 0;
      v62[1] = 0;
      v63 = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v30 = v59;
      v38 = v59;

      v39 = v51;

      v40 = v60;

      sub_1000BDAE4(v64, 0, a2, v38, a2, a5, v58, v39, v40);
    }

    else
    {
      v41 = v56;
      sub_1000C9DE8(v36, v56, type metadata accessor for Credentials);
      v42 = type metadata accessor for TaskPriority();
      (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
      v43 = v52;
      sub_1000CA264(v41, v52, type metadata accessor for Credentials);
      v44 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v45[4] = a2;
      sub_1000C9DE8(v43, v45 + v44, type metadata accessor for Credentials);
      v46 = (v45 + ((v17 + v44 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v46 = sub_1000CAB30;
      v46[1] = v31;

      sub_1001D7F30(0, 0, v57, &unk_1004C3480, v45);

      sub_1000CA2CC(v56, type metadata accessor for Credentials);

      v30 = v59;
    }

    goto LABEL_16;
  }

  if (*(*(a2 + 120) + 16))
  {
    v30 = v59;
LABEL_15:
    v48 = v30;

    v49 = v60;

    sub_1000BDAE4(v64, 0, a2, v48, a2, a5, v58, a7, v49);

LABEL_16:
  }

  v62[0] = sub_1004B7128();

  v47 = v61;
  sub_1000BA000(v62);
  v30 = v59;
  if (!v47)
  {

    *(a2 + 120) = v62[0];

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_10009D07C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(double))
{
  v10 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  if (a2)
  {
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a1;

    sub_10020D620(0, 0, v12, &unk_1004C3488, v14);
  }

  swift_beginAccess();

  sub_1002494F4(v15);
  swift_endAccess();
  v16 = [a5 subscriptionMode];
  v17 = 0.0;
  if (v16 <= 5)
  {
    v17 = dbl_1004C36D0[v16];
  }

  swift_beginAccess();

  (a6)(v18, 0, v17);

  Transaction.capture()();
}

uint64_t sub_10009D258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v43 = v9;
  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  v16 = os_log_type_enabled(v14, v15);
  v44 = v6;
  v42 = v12;
  v17 = v10;
  v18 = v7;
  if (v16)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 134218242;
    *(v19 + 4) = *(a1 + 16);

    *(v19 + 12) = 2080;
    v21 = Array.description.getter();
    v23 = sub_10000D01C(v21, v22, aBlock);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "subscribeAndFetch - clearing cached locations for %ld ids %s", v19, 0x16u);
    sub_100004984(v20);
  }

  else
  {
  }

  v45 = a1;
  v24 = *(a1 + 16);
  v26 = v42;
  v25 = v43;
  if (v24)
  {
    v27 = v2;
    v28 = v18;
    v48 = (v52 + 8);
    v49 = v55;
    v47 = (v51 + 8);
    v29 = (v45 + 40);
    v50 = v27;
    v46 = v17;
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v32 = *(v27 + 16);
      v52 = *(v32 + 16);
      v33 = swift_allocObject();
      v33[2] = v30;
      v33[3] = v31;
      v51 = v31;
      v33[4] = v32;
      v33[5] = DarwinNotification.init(name:value:);
      v33[6] = 0;
      v55[2] = sub_1000C9A78;
      v55[3] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v55[0] = sub_100020828;
      v55[1] = &unk_10058DF80;
      v34 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();

      static DispatchQoS.unspecified.getter();
      v53 = _swiftEmptyArrayStorage;
      sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10004B564(&unk_1005A9700, &qword_1004C3820);
      sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      v35 = v34;
      v36 = v46;
      _Block_release(v35);

      (*v48)(v25, v28);
      (*v47)(v26, v36);

      v27 = v50;
      v29 += 2;
      --v24;
    }

    while (v24);
  }

  v37 = type metadata accessor for TaskPriority();
  v38 = v44;
  (*(*(v37 - 8) + 56))(v44, 1, 1, v37);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = v45;

  sub_10020D620(0, 0, v38, &unk_1004C3478, v39);
}

uint64_t sub_10009D80C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SecureLocationsConfig(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = (&v19 - v8);
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v10 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v10);
  v11 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v10 + *(v11 + 28), v9, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v10);

  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005A98B8);
  sub_1000CA264(v9, v7, type metadata accessor for SecureLocationsConfig);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446722;
    *(v15 + 4) = sub_10000D01C(0xD000000000000034, 0x80000001004DFB90, &v20);
    *(v15 + 12) = 2048;
    v17 = *v7;
    sub_1000CA2CC(v7, type metadata accessor for SecureLocationsConfig);
    *(v15 + 14) = v17;
    *(v15 + 22) = 2048;
    *(v15 + 24) = a1;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s local version: %ld - server: %ld", v15, 0x20u);
    sub_100004984(v16);
  }

  else
  {
    sub_1000CA2CC(v7, type metadata accessor for SecureLocationsConfig);
  }

  if (*v9 < a1)
  {
    sub_100090D10(v2, a1);
  }

  return sub_1000CA2CC(v9, type metadata accessor for SecureLocationsConfig);
}

uint64_t sub_10009DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a2;
  v12[7] = a1;

  sub_10010029C(a3, a4, sub_1000C91CC, v12);
}

void sub_10009DBDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6, void *a7)
{
  v70 = a5;
  v71 = a4;
  v69 = a2;
  v72 = a7;
  v10 = *a7;
  v11 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v66 - v15;
  v17 = type metadata accessor for SecureLocation(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v21;
  sub_100005F04(a1, v16, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v18 + 48))(v16, 1, v22) != 1)
  {
    sub_1000C9DE8(v16, v20, type metadata accessor for SecureLocation);
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1000DC618(v20);

    if (v31)
    {

      v32 = sub_1000DCB14(v20);

      if (v32)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v68 = v10;
        v33 = type metadata accessor for Logger();
        sub_10000A6F0(v33, qword_1005DFB98);

        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v67 = v22;
          v38 = v20;
          v39 = v37;
          aBlock = v37;
          *v36 = 136315138;
          v40 = v69;
          *(v36 + 4) = sub_10000D01C(v69, a3, &aBlock);
          _os_log_impl(&_mh_execute_header, v34, v35, "latestLocationFromCache - location is valid but aging. Returning it for now and requesting a refetch for %s", v36, 0xCu);
          sub_100004984(v39);
          v20 = v38;
          v22 = v67;
        }

        else
        {

          v40 = v69;
        }

        __chkstk_darwin(v41);
        *(&v66 - 4) = a6;
        *(&v66 - 3) = v40;
        *(&v66 - 2) = a3;
        static Transaction.named<A>(_:with:)();
        if (qword_1005A7EE0 != -1)
        {
          swift_once();
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }

          goto LABEL_38;
        }

        if ((static SystemInfo.underTest.getter() & 1) == 0)
        {
LABEL_38:
          v61 = String._bridgeToObjectiveC()();
          v62 = swift_allocObject();
          *(v62 + 16) = 2;
          v77 = sub_1000CAAAC;
          v78 = v62;
          aBlock = _NSConcreteStackBlock;
          v74 = 1107296256;
          v63 = &unk_10058DBE8;
LABEL_42:
          v75 = sub_1000119E4;
          v76 = v63;
          v65 = _Block_copy(&aBlock);

          AnalyticsSendEventLazy();
          _Block_release(v65);
        }

LABEL_43:
        sub_1000CA264(v20, v14, type metadata accessor for SecureLocation);
        (*(v18 + 56))(v14, 0, 1, v22);
        goto LABEL_44;
      }

      if (!sub_10009E904(v69, a3))
      {
        if (qword_1005A7EE0 == -1)
        {
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }
        }

        else
        {
          swift_once();
          if (static SystemInfo.underTest.getter())
          {
            goto LABEL_43;
          }
        }

        v61 = String._bridgeToObjectiveC()();
        v64 = swift_allocObject();
        *(v64 + 16) = 0;
        v77 = sub_1000CAAAC;
        v78 = v64;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v63 = &unk_10058DB48;
        goto LABEL_42;
      }

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_10000A6F0(v50, qword_1005DFB98);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&_mh_execute_header, v51, v52, "latestLocationFromCache - proactive subscription needs renewal", v53, 2u);
      }

      v54 = v69;
      if (qword_1005A7EE0 == -1)
      {
        v55 = static SystemInfo.underTest.getter();
        if (v55)
        {
LABEL_34:
          __chkstk_darwin(v55);
          *(&v66 - 6) = a6;
          *(&v66 - 5) = v54;
          v59 = v70;
          v60 = v71;
          *(&v66 - 4) = a3;
          *(&v66 - 3) = v60;
          *(&v66 - 2) = v59;
          static Transaction.named<A>(_:with:)();
LABEL_45:
          sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
          goto LABEL_46;
        }
      }

      else
      {
        swift_once();
        v55 = static SystemInfo.underTest.getter();
        if (v55)
        {
          goto LABEL_34;
        }
      }

      v56 = String._bridgeToObjectiveC()();
      v57 = swift_allocObject();
      *(v57 + 16) = 1;
      v77 = sub_1000CAAAC;
      v78 = v57;
      aBlock = _NSConcreteStackBlock;
      v74 = 1107296256;
      v75 = sub_1000119E4;
      v76 = &unk_10058DB98;
      v58 = _Block_copy(&aBlock);

      AnalyticsSendEventLazy();
      v54 = v69;
      _Block_release(v58);

      goto LABEL_34;
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005DFB98);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_10000D01C(v69, a3, &aBlock);
      _os_log_impl(&_mh_execute_header, v43, v44, "latestLocationFromCache - location is older than acceptable threshold. Returning nil for %s", v45, 0xCu);
      sub_100004984(v46);
    }

    if (qword_1005A7EE0 == -1)
    {
      if (static SystemInfo.underTest.getter())
      {
LABEL_25:
        (*(v18 + 56))(v14, 1, 1, v22);
LABEL_44:
        v71(v14, 0);
        sub_100002CE0(v14, &unk_1005AB3F0, &qword_1004C4BF0);
        goto LABEL_45;
      }
    }

    else
    {
      swift_once();
      if (static SystemInfo.underTest.getter())
      {
        goto LABEL_25;
      }
    }

    v47 = String._bridgeToObjectiveC()();
    v48 = swift_allocObject();
    *(v48 + 16) = 3;
    v77 = sub_1000CAAAC;
    v78 = v48;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1000119E4;
    v76 = &unk_10058DAF8;
    v49 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v49);

    goto LABEL_25;
  }

  sub_100002CE0(v16, &unk_1005AB3F0, &qword_1004C4BF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000A6F0(v23, qword_1005DFB98);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10000D01C(v69, a3, &aBlock);
    _os_log_impl(&_mh_execute_header, v24, v25, "latestLocationFromCache - no cached location for %s", v26, 0xCu);
    sub_100004984(v27);
  }

  if (qword_1005A7EE0 != -1)
  {
    swift_once();
    if (static SystemInfo.underTest.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if ((static SystemInfo.underTest.getter() & 1) == 0)
  {
LABEL_8:
    v28 = String._bridgeToObjectiveC()();
    v29 = swift_allocObject();
    *(v29 + 16) = 4;
    v77 = sub_1000C91DC;
    v78 = v29;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_1000119E4;
    v76 = &unk_10058DAA8;
    v30 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v30);
  }

LABEL_9:
  (*(v18 + 56))(v14, 1, 1, v22);
  v71(v14, 0);
  sub_100002CE0(v14, &unk_1005AB3F0, &qword_1004C4BF0);
LABEL_46:
  Transaction.capture()();
}

BOOL sub_10009E904(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  sub_1000FC0C4(a1, a2, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000A6F0(v14, qword_1005DFB98);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "proactiveSubscriptionNeedsRenewal is true since there is no last proactive subscribtion time.", v17, 2u);
    }

    return 1;
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    static Date.trustedNow.getter(v11);
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v8 + 8);
    v21(v11, v7);
    v18 = v20 >= 64800.0;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109632;
      *(v25 + 4) = v20 >= 64800.0;
      *(v25 + 8) = 2048;
      *(v25 + 10) = 0x40EFA40000000000;
      *(v25 + 18) = 2048;
      *(v25 + 20) = v20;
      _os_log_impl(&_mh_execute_header, v23, v24, "proactiveSubscriptionNeedsRenewal %{BOOL}d threshold %f timeSinceLastSubscribe %f", v25, 0x1Cu);
    }

    v21(v13, v7);
  }

  return v18;
}

void sub_10009ECAC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1))
{
  if (*(a2 + 16))
  {
    v6 = *result;
    v7 = result[1];
    v8 = sub_1000110D8(*result, v7);
    if ((v9 & 1) != 0 && (*(*(a2 + 56) + v8) & 1) == 0)
    {
      sub_1000FC5D8(v6, v7, a4);
    }
  }
}

uint64_t sub_10009ED28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void), uint64_t a6)
{
  v12 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  [v12 setSubscriptionMode:0];
  v13 = String._bridgeToObjectiveC()();
  [v12 setClientApp:v13];

  [v12 setFetchMode:0];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004C1900;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;

  sub_1000BC7AC(v14, v12, 0, a2, a5, a6, a1);
}

void sub_10009EE84(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v6 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  v10 = type metadata accessor for SecureLocation(0);
  v11 = *(v10 - 8);
  v12 = v11;
  if (v9)
  {
    sub_1000CA264(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v8, type metadata accessor for SecureLocation);
    (*(v12 + 56))(v8, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v8, 1, 1, v10);
  }

  a3(v8, a2);
  sub_100002CE0(v8, &unk_1005AB3F0, &qword_1004C4BF0);
  Transaction.capture()();
}

uint64_t sub_10009EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  [v8 setSubscriptionMode:0];
  v9 = String._bridgeToObjectiveC()();
  [v8 setClientApp:v9];

  [v8 setFetchMode:0];
  sub_10004B564(&qword_1005AFA60, &unk_1004CE390);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C1900;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  sub_1000BD148(v10, v8, 1, a2, a1);
}

void sub_10009F120(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for SecureLocation(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000BB328())
  {
    goto LABEL_10;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v14 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v14);
  v15 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v14 + *(v15 + 28), v13, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v14);

  v16 = v13[8];
  sub_1000CA2CC(v13, type metadata accessor for SecureLocationsConfig);
  if (v16 != 1)
  {
LABEL_10:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000A6F0(v24, qword_1005DFB98);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "publishLocation: secureLocations feature is disabled. Not publishing location", v27, 2u);
    }

    type metadata accessor for SecureLocationsError(0);
    v29 = 6;
    sub_1000BC07C(_swiftEmptyArrayStorage);
    sub_10001DFA8(&qword_1005A88C0, type metadata accessor for SecureLocationsError, &unk_1004C15BC);
    _BridgedStoredNSError.init(_:userInfo:)();
    v28 = v30;
    (a2)(v30);
  }

  else
  {
    v17 = v3;
    sub_10008B75C(a1, v10);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000A6F0(v18, qword_1005DFB98);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Resolving labels for publish", v21, 2u);
    }

    sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
    v22 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1004C1900;
    sub_1000CA264(v10, v23 + v22, type metadata accessor for SecureLocation);

    sub_1000BFAFC(v23, 1, v17, v17, a2, a3);

    sub_1000CA2CC(v10, type metadata accessor for SecureLocation);
  }
}

void sub_10009F5B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v8 = &off_1005A7000;
  if (a2)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v10, v11))
    {

      if (*(a1 + 16))
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v12 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v13 = String.init<A>(describing:)();
    v15 = a5;
    v16 = sub_10000D01C(v13, v14, &v23);

    *(v12 + 4) = v16;
    a5 = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "Error resolving label before publish. Proceeding without label. Error %s", v12, 0xCu);
    sub_100004984(v22);

    v8 = &off_1005A7000;
  }

  if (*(a1 + 16))
  {
LABEL_7:
    v17 = *(type metadata accessor for SecureLocation(0) - 8);
    sub_10009F89C(a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), 0, a4, a5);
    return;
  }

LABEL_9:
  if (v8[477] != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Got empty locations after resolving labels. This shouldn't happen", v21, 2u);
  }
}

void sub_10009F89C(uint64_t a1, int a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  LODWORD(v81) = a2;
  v9 = sub_10004B564(&qword_1005A9DA8, &unk_1004D1130);
  __chkstk_darwin(v9 - 8);
  v79 = v72 - v10;
  v11 = type metadata accessor for Credentials(0);
  v77 = *(v11 - 8);
  v78 = v11;
  v12 = __chkstk_darwin(v11);
  v76 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v72 - v14;
  v82 = type metadata accessor for SecureLocation(0);
  v16 = __chkstk_darwin(v82);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v72 - v19;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000A6F0(v21, qword_1005DFB98);
  sub_1000CA264(a1, v20, type metadata accessor for SecureLocation);
  sub_1000CA264(a1, v18, type metadata accessor for SecureLocation);
  v80 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v75 = a4;
    v26 = v25;
    v27 = swift_slowAlloc();
    v74 = a3;
    v72[1] = v27;
    v83 = v27;
    *v26 = 136446466;
    v28 = sub_10008AEA8(*&v20[*(v82 + 60)]);
    v29 = v5;
    v30 = v15;
    v32 = v31;
    v73 = a1;
    sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
    v33 = sub_10000D01C(v28, v32, &v83);
    v15 = v30;
    v5 = v29;

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = sub_10008BC88();
    v36 = v35;
    a1 = v73;
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
    v37 = sub_10000D01C(v34, v36, &v83);

    *(v26 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v23, v24, "publishLocation with reason %{public}s location: %s", v26, 0x16u);
    swift_arrayDestroy();
    a3 = v74;

    a4 = v75;
  }

  else
  {

    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v20, type metadata accessor for SecureLocation);
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v38 = sub_100021BB4();

  if ((v38 & 1) == 0 && (v81 & 1) == 0)
  {
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Not a location publishing device. Not publishing location", v41, 2u);
    }

    sub_1000BEB1C();
    v42 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:12 userInfo:0];
LABEL_13:
    v43 = v42;
    a3();

    return;
  }

  if (*(a1 + *(v82 + 60)) != 8)
  {
    if (qword_1005A8098 != -1)
    {
      swift_once();
    }

    v45 = sub_10004B564(&qword_1005A9DB0, &qword_1004C3270);
    v46 = sub_10000A6F0(v45, qword_1005AF7C0);
    os_unfair_lock_lock(v46);
    v47 = v46 + *(v45 + 28);
    v48 = v79;
    sub_100005F04(v47, v79, &qword_1005A9DA8, &unk_1004D1130);
    os_unfair_lock_unlock(v46);
    if ((*(v77 + 48))(v48, 1, v78) == 1)
    {
      sub_100002CE0(v48, &qword_1005A9DA8, &unk_1004D1130);
      v83 = 0;
      v84 = 0;
      v85 = 2;
      sub_1000C7488();
      swift_willThrowTypedImpl();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Unable to get credentials for server SubscribeAndFetch", v51, 2u);
      }

      v42 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
      goto LABEL_13;
    }

    v52 = v76;
    sub_1000C9DE8(v48, v76, type metadata accessor for Credentials);
    sub_1000C9DE8(v52, v15, type metadata accessor for Credentials);
    v53 = [objc_opt_self() currentDevice];
    if (v53 && (v54 = v53, v55 = [v53 uniqueDeviceIdentifier], v54, v55))
    {
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      OS_dispatch_queue.sync<A>(execute:)();
      v59 = v84;
      if (v84)
      {
        v80 = v83;
        v81 = 0;
        v82 = swift_allocBox();
        v61 = v60;
        sub_1000CA264(a1, v60, type metadata accessor for SecureLocation);
        *v61 = v56;
        v61[1] = v58;

        v62 = type metadata accessor for Transaction();
        __chkstk_darwin(v62);
        v72[-10] = v5;
        v72[-9] = v82;
        v72[-8] = a3;
        v72[-7] = a4;
        v72[-6] = a1;
        v72[-5] = v80;
        v72[-4] = v59;
        v72[-3] = v56;
        v72[-2] = v58;
        v72[-1] = v15;
        static Transaction.named<A>(_:with:)();

        v63 = v15;
LABEL_32:
        sub_1000CA2CC(v63, type metadata accessor for Credentials);
        return;
      }

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "No APS token. Not proceeding", v71, 2u);
      }

      v67 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
    }

    else
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&_mh_execute_header, v64, v65, "Unable to get device identifier for server SubscribeAndFetch", v66, 2u);
      }

      v67 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
    }

    v68 = v67;
    a3();

    v63 = v15;
    goto LABEL_32;
  }

  v44 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
  if (*(v5 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
  {

    DispatchTimer.cancel()();

    *(v5 + v44) = 0;
  }

  sub_10010BEB0(a1);
  (a3)(0);
}

uint64_t sub_1000A02E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v50 = a7;
  v51 = a8;
  v46 = a4;
  v47 = a5;
  v38 = a2;
  v39 = a3;
  v44 = a1;
  v48 = a9;
  v49 = a10;
  v41 = a6;
  v42 = a11;
  v12 = type metadata accessor for Credentials(0);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  __chkstk_darwin(v12 - 8);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocation(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  v36 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  v43 = &v36 - v18;
  v20 = swift_projectBox();
  v45 = *(a2 + 16);
  swift_beginAccess();
  sub_1000CA264(v20, v19, type metadata accessor for SecureLocation);
  sub_1000CA264(v41, &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  sub_1000CA264(v42, &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Credentials);
  v21 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (*(v40 + 80) + v23 + 16) & ~*(v40 + 80);
  v25 = swift_allocObject();
  v26 = v46;
  v27 = v47;
  v25[2] = v44;
  v25[3] = v26;
  v28 = v38;
  v29 = v39;
  v25[4] = v27;
  v25[5] = v28;
  v25[6] = v29;
  sub_1000C9DE8(v36, v25 + v21, type metadata accessor for SecureLocation);
  v30 = (v25 + v22);
  v31 = v51;
  *v30 = v50;
  v30[1] = v31;
  v32 = (v25 + v23);
  v33 = v49;
  *v32 = v48;
  v32[1] = v33;
  sub_1000C9DE8(v37, v25 + v24, type metadata accessor for Credentials);

  v34 = v43;
  sub_100101950(v43, sub_1000C9408, v25);

  return sub_1000CA2CC(v34, type metadata accessor for SecureLocation);
}

void sub_1000A0618(uint64_t a1, void *a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v116 = a8;
  v118 = a2;
  v109 = a12;
  v115 = a10;
  v17 = type metadata accessor for SecureLocation(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v110 = v19;
  v112 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Credentials(0);
  v106 = *(v20 - 8);
  __chkstk_darwin(v20 - 8);
  v107 = v21;
  v108 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v22 - 8);
  v111 = &v101 - v23;
  v24 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v24 - 8);
  if (*(a1 + 16))
  {
    v105 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v113 = a3;
    v114 = a4;
    v26 = swift_projectBox();
    v117 = a5;
    sub_10004B564(&qword_1005A9E48, &qword_1004D6A20);
    v27 = *(v18 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1004C1900;
    swift_beginAccess();
    sub_1000CA264(v26, v28 + ((v27 + 32) & ~v27), type metadata accessor for SecureLocation);
    sub_1000FE000(v28, 1, DarwinNotification.init(name:value:), 0);

    v29 = *(a7 + *(v17 + 60));
    if (v29 == 7)
    {
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000A6F0(v30, qword_1005E0DE0);

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      v33 = os_log_type_enabled(v31, v32);
      v34 = v113;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 134217984;
        v36 = *(a1 + 80);
        if (*(v36 + 16))
        {
          v37 = *(v36 + 48);
        }

        else
        {
          v37 = -1.0;
        }

        *(v35 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v31, v32, "Publish reason: .live (timestamp: %f)", v35, 0xCu);
      }

      v100 = *(a1 + 48);
      v120 = *(a1 + 32);
      v121 = v100;
      v122 = *(a1 + 64);
      v123 = *(a1 + 80);
      sub_1000C980C(&v120, v119);
      sub_1000A12FC(&v120);
      sub_1000C9868(&v120);
      (v34)(0);
      Transaction.capture()();
    }

    else
    {
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      sub_10004B564(&qword_1005A9630, &qword_1004C5680);
      unsafeFromAsyncTask<A>(_:)();

      v43 = v120;
      v44 = sub_10008AEA8(v29);
      *&v120 = v116;
      *(&v120 + 1) = a9;
      *&v121 = v115;
      *(&v121 + 1) = a11;
      strcpy(&v122, "searchpartyd");
      BYTE13(v122) = 0;
      HIWORD(v122) = -5120;
      LOBYTE(v123) = 0;
      v124 = v44;
      v125 = v45;
      v126 = v43;

      v47 = sub_10018DEC0(v46, &v120);
      if (v47)
      {
        v50 = v47;
        v51 = v48;
        v52 = v49;
        v115 = a7;
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        sub_10000A6F0(v53, qword_1005DFB98);
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Sending SubmitLocation server request", v56, 2u);
        }

        sub_1000C95B4(v50, v51, v52);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        sub_1000C95FC(v50, v51, v52);
        v59 = os_log_type_enabled(v57, v58);
        v116 = v51;
        if (v59)
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v119[0] = v61;
          *v60 = 136315138;

          v62 = v52;
          v63 = Dictionary.description.getter();
          v65 = v64;

          v66 = sub_10000D01C(v63, v65, v119);

          *(v60 + 4) = v66;
          v52 = v62;
          _os_log_impl(&_mh_execute_header, v57, v58, "SubmitLocation request headers %s", v60, 0xCu);
          sub_100004984(v61);

          v51 = v116;
        }

        v67 = ~v27;
        sub_1000C95B4(v50, v51, v52);
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.debug.getter();
        v104 = v50;
        sub_1000C95FC(v50, v51, v52);
        v70 = os_log_type_enabled(v68, v69);
        v103 = v52;
        if (v70)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v119[0] = v72;
          *v71 = 136315138;
          v102 = ~v27;
          if (v52 >> 60 == 15)
          {
            v73 = 0;
          }

          else
          {
            v73 = v51;
          }

          if (v52 >> 60 == 15)
          {
            v74 = 0xC000000000000000;
          }

          else
          {
            v74 = v52;
          }

          sub_10002CF44(v51, v52);
          static String.Encoding.utf8.getter();
          v75 = String.init(data:encoding:)();
          v77 = v76;
          sub_1000049D0(v73, v74);
          if (v77)
          {
            v78 = v75;
          }

          else
          {
            v78 = 7104878;
          }

          if (v77)
          {
            v79 = v77;
          }

          else
          {
            v79 = 0xE300000000000000;
          }

          v80 = sub_10000D01C(v78, v79, v119);
          v67 = v102;

          *(v71 + 4) = v80;
          _os_log_impl(&_mh_execute_header, v68, v69, "SubmitLocation request body %s", v71, 0xCu);
          sub_100004984(v72);
        }

        v81 = type metadata accessor for TaskPriority();
        v82 = v111;
        (*(*(v81 - 8) + 56))(v111, 1, 1, v81);
        v83 = v108;
        sub_1000CA264(v109, v108, type metadata accessor for Credentials);
        v84 = v112;
        sub_1000CA264(v115, v112, type metadata accessor for SecureLocation);
        v85 = (*(v106 + 80) + 64) & ~*(v106 + 80);
        v86 = (v107 + v27 + v85) & v67;
        v87 = (v110 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        v88[2] = 0;
        v88[3] = 0;
        v89 = v104;
        v88[4] = v117;
        v88[5] = v89;
        v90 = v103;
        v88[6] = v116;
        v88[7] = v90;
        sub_1000C9DE8(v83, v88 + v85, type metadata accessor for Credentials);
        sub_1000C9DE8(v84, v88 + v86, type metadata accessor for SecureLocation);
        v91 = (v88 + v87);
        v92 = v114;
        *v91 = v113;
        v91[1] = v92;
        *(v88 + ((v87 + 23) & 0xFFFFFFFFFFFFFFF8)) = v118;

        sub_1001D7F30(0, 0, v82, &unk_1004C3468, v88);
      }

      else
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v93 = type metadata accessor for Logger();
        sub_10000A6F0(v93, qword_1005DFB98);
        v94 = Logger.logObject.getter();
        v95 = static os_log_type_t.default.getter();
        v96 = os_log_type_enabled(v94, v95);
        v97 = v113;
        if (v96)
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&_mh_execute_header, v94, v95, "Failed to create request for server SubscribeAndFetch", v98, 2u);
        }

        v99 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
        v97();
        Transaction.capture()();
      }
    }
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_10000A6F0(v38, qword_1005DFB98);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Encoded payload to submit locations is empty.", v41, 2u);
    }

    Transaction.capture()();
    v118 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:14 userInfo:0];
    a3();
    v42 = v118;
  }
}

void sub_1000A12FC(unint64_t a1)
{
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 BOOLForKey:v3];

  if (v4)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFB98);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "autoMe is active - not publishing live location", v7, 2u);
    }
  }

  else
  {

    sub_10012385C(a1);

    sub_1000C98BC();
  }
}

uint64_t sub_1000A14DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000A14FC, 0, 0);
}

uint64_t sub_1000A14FC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1000A1590;

  return sub_1000847C8();
}

uint64_t sub_1000A1590(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_1000CA9BC, 0, 0);
}

uint64_t sub_1000A1690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v17;
  *(v8 + 192) = v18;
  *(v8 + 168) = v16;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  *(v8 + 248) = v11;
  *(v8 + 256) = *(v11 - 8);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = type metadata accessor for SecureLocation(0);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v12 = type metadata accessor for Response();
  *(v8 + 296) = v12;
  v13 = *(v12 - 8);
  *(v8 + 304) = v13;
  *(v8 + 312) = *(v13 + 64);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 344) = swift_task_alloc();

  return _swift_task_switch(sub_1000A18E8, 0, 0);
}

uint64_t sub_1000A18E8(uint64_t a1)
{
  v2 = v1[17];
  sub_1000C98BC();
  v3 = swift_task_alloc();
  v1[44] = v3;
  *v3 = v1;
  v3[1] = sub_1000A19A0;
  v4 = v1[43];
  v5 = v1[19];
  v6 = v1[20];
  v7 = v1[18];

  return sub_1001CF6CC(v4, v2, v7, v5, 2, v6, 1, 0);
}

uint64_t sub_1000A19A0()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_1000A21E8;
  }

  else
  {
    v2 = sub_1000A1AB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A1AB4()
{
  v69 = v0;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = v0[42];
  v2 = v0[43];
  v65 = v0[41];
  v3 = v0[37];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[21];
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  v9 = *(v4 + 16);
  v9(v1, v2, v3);
  sub_1000CA264(v7, v5, type metadata accessor for SecureLocation);
  sub_1000CA264(v7, v6, type metadata accessor for SecureLocation);
  v64 = v9;
  v9(v65, v2, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[41];
  v13 = v0[42];
  v16 = v0[37];
  v15 = v0[38];
  v17 = v0[35];
  v18 = v0[36];
  if (v12)
  {
    log = v10;
    v19 = v0[34];
    v66 = v0[41];
    v20 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    *v20 = 134218754;
    v21 = Response.statusCode.getter();
    v60 = v11;
    v22 = *(v15 + 8);
    v22(v13, v16);
    *(v20 + 4) = v21;
    *(v20 + 12) = 2082;
    v23 = sub_10008AEA8(*(v18 + *(v19 + 60)));
    v25 = v24;
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
    v26 = sub_10000D01C(v23, v25, &v68);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2080;
    v27 = sub_10008BC88();
    v29 = v28;
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    v30 = sub_10000D01C(v27, v29, &v68);

    *(v20 + 24) = v30;
    *(v20 + 32) = 2080;
    sub_10001DFA8(&qword_1005A9F08, &type metadata accessor for Response, &protocol conformance descriptor for Response);
    v31 = v66;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v67 = v22;
    v22(v31, v16);
    v35 = sub_10000D01C(v32, v34, &v68);

    *(v20 + 34) = v35;
    _os_log_impl(&_mh_execute_header, log, v60, "SubmitLocation received status %ld for reason %{public}s location: %s. response: %s", v20, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v36 = *(v15 + 8);
    v36(v13, v16);

    v67 = v36;
    v36(v14, v16);
    sub_1000CA2CC(v17, type metadata accessor for SecureLocation);
    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
  }

  v37 = v0[43];
  v38 = v0[40];
  v52 = v0[39];
  v39 = v0[37];
  v40 = v0[38];
  v41 = v0[32];
  v42 = v0[33];
  v43 = v0[31];
  v55 = v0[30];
  v61 = v0[29];
  v62 = v0[28];
  v59 = v0[26];
  v57 = v0[27];
  v58 = v0[25];
  v53 = v0[22];
  v54 = v0[23];
  v44 = v0[16];
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v41 + 104))(v42, enum case for DispatchQoS.QoSClass.default(_:), v43);
  v56 = static OS_dispatch_queue.global(qos:)();
  (*(v41 + 8))(v42, v43);
  v64(v38, v37, v39);
  v45 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v46 = (v52 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  (*(v40 + 32))(v47 + v45, v38, v39);
  *(v47 + v46) = v44;
  v48 = (v47 + ((v46 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v48 = v53;
  v48[1] = v54;
  v0[12] = sub_1000C9990;
  v0[13] = v47;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058DE90;
  v49 = _Block_copy(v0 + 8);

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v49);

  (*(v59 + 8))(v57, v58);
  (*(v61 + 8))(v55, v62);

  Transaction.capture()();
  v67(v37, v39);

  v50 = v0[1];

  return v50();
}

uint64_t sub_1000A21E8()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "SubmitLocation failed %{public}@", v4, 0xCu);
    sub_100002CE0(v5, &qword_1005A9670, &unk_1004C2480);
  }

  v7 = v0[45];
  v8 = v0[32];
  v9 = v0[33];
  v10 = v0[31];
  v18 = v0[30];
  v22 = v0[29];
  v23 = v0[28];
  v20 = v0[27];
  v21 = v0[26];
  v11 = v0[25];
  v13 = v0[22];
  v12 = v0[23];

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v9, enum case for DispatchQoS.QoSClass.default(_:), v10);
  v19 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v9, v10);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = v7;
  v0[6] = sub_1000CA964;
  v0[7] = v14;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058DE40;
  v15 = _Block_copy(v0 + 2);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v20, v11);
  (*(v22 + 8))(v18, v23);

  Transaction.capture()();

  v16 = v0[1];

  return v16();
}

void sub_1000A2638(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = Response.statusCode.getter();
  if (v4 == 428)
  {
    sub_1000C1590(0, 0, 0, 0, 1);
    goto LABEL_5;
  }

  if (v4 == 200)
  {
    v5 = Response.body.getter();
    v7 = v6;
    sub_1000A3648(v5, v6);
    sub_1000049D0(v5, v7);
LABEL_5:
    (a3)(0);
    return;
  }

  v8 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:0 userInfo:0];
  a3();
}

void sub_1000A2748()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "republishLastLocation requested", v3, 2u);
  }

  v4 = [objc_opt_self() currentDevice];
  if (v4 && (v5 = v4, v6 = [v4 uniqueDeviceIdentifier], v5, v6))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = type metadata accessor for Transaction();
    __chkstk_darwin(v7);
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v10 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v10, v8, "Unable to get device identifier for server Republish", v9, 2u);
    }
  }
}

uint64_t sub_1000A29B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a5;
  *(v10 + 32) = a1;

  sub_10010029C(a3, a4, sub_1000C93E0, v10);
}

void sub_1000A2A64(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a3;
  v36 = a2;
  v6 = type metadata accessor for Date();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v9 = __chkstk_darwin(v32);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v37 = &v31 - v12;
  __chkstk_darwin(v11);
  v14 = &v31 - v13;
  v15 = type metadata accessor for SecureLocation(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v14, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100002CE0(v14, &unk_1005AB3F0, &qword_1004C4BF0);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000A6F0(v19, qword_1005DFB98);
    v20 = a1;
    v21 = v37;
    sub_100005F04(v20, v37, &unk_1005AB3F0, &qword_1004C4BF0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      sub_100005F04(v21, v31, &unk_1005AB3F0, &qword_1004C4BF0);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_100002CE0(v21, &unk_1005AB3F0, &qword_1004C4BF0);
      v29 = sub_10000D01C(v26, v28, &v38);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to get location for republish %s", v24, 0xCu);
      sub_100004984(v25);
    }

    else
    {

      sub_100002CE0(v21, &unk_1005AB3F0, &qword_1004C4BF0);
    }

    Transaction.capture()();
  }

  else
  {
    sub_1000C9DE8(v14, v18, type metadata accessor for SecureLocation);
    v30 = *(v15 + 52);
    Date.addingTimeInterval(_:)();
    (*(v33 + 40))(&v18[v30], v8, v34);

    sub_1000C0B38(v18, v35 & 1, v36, a4);

    sub_1000CA2CC(v18, type metadata accessor for SecureLocation);
  }
}

void sub_1000A2EDC(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);
  if (sub_100112E80(0))
  {
    sub_1001146E8(a1, a2);
    sub_100109B74();
    v9 = OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer;
    if (*(v2 + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieLocationWaitTimer))
    {

      DispatchTimer.cancel()();

      *(v2 + v9) = 0;
    }

    swift_allocObject();
    swift_weakInit();
    type metadata accessor for DispatchTimer();
    swift_allocObject();
    *(v2 + v9) = DispatchTimer.init(deadline:repeating:leeway:queue:block:)();

    DispatchTimer.resume()();

    sub_1000AB450();
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      v15 = v8 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix;
      v16 = *(v8 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix);
      v17 = *(v15 + 8);

      v18 = sub_10000D01C(v16, v17, &v24);

      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s - not available for publish.", v13, 0xCu);
      sub_100004984(v14);
    }

    v19 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    v20 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFA8(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error, &protocol conformance descriptor for SecureLocationsStewie.Error);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v20);
    a1(v7, v21);

    sub_100002CE0(v7, &unk_1005AB4C0, &qword_1004C3440);
  }
}

uint64_t sub_1000A32D8(uint64_t a1)
{
  v1 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  __chkstk_darwin(v1 - 8);
  v3 = v21 - v2 + 24;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136315138;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = *(Strong + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);

      v12 = *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
      v11 = *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x3A636F6C6574696CLL;
    }

    v13 = sub_10000D01C(v12, v11, v21);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s timed out waiting to get a location fix from GPS", v7, 0xCu);
    sub_100004984(v8);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + OBJC_IVAR____TtC13findmylocated26SecureLocationsCoordinator_stewieManager);

    v16 = enum case for SecureLocationsStewie.Error.locationFixTimeout(_:);
    v17 = type metadata accessor for SecureLocationsStewie.Error();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v3, v16, v17);
    (*(v18 + 56))(v3, 0, 1, v17);
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *(&v20 - 2) = v15;
    *(&v20 - 1) = v3;
    static Transaction.named<A>(_:with:)();

    return sub_100002CE0(v3, &qword_1005A9F00, &qword_1004C3448);
  }

  return result;
}

uint64_t sub_1000A3648(uint64_t a1, uint64_t a2)
{
  if (qword_1005A7ED8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005A98B8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000D01C(0xD00000000000002FLL, 0x80000001004DFB60, &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s", v5, 0xCu);
    sub_100004984(v6);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000C933C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v9 != 1)
  {
    sub_10009D80C(v8);
  }
}

void sub_1000A38D4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void), uint64_t a6)
{
  v117 = a6;
  v121 = a4;
  v122 = a5;
  v127 = a3;
  v8 = type metadata accessor for Credentials(0);
  v115 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v116 = v9;
  v118 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  __chkstk_darwin(v10 - 8);
  v119 = &v97 - v11;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v125 = a2;
  v126 = v12;
  v120 = a1;
  if (v12)
  {
    v14 = (a1 + 40);
    do
    {
      v16 = *(v14 - 1);
      v17 = *v14;

      v18 = sub_1000FD46C(v16, v17);
      v20 = v19;
      v22 = v21;

      if (v22)
      {
        v23 = [v127 subscriptionMode];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1001FD094(0, *(v13 + 2) + 1, 1, v13);
        }

        v25 = *(v13 + 2);
        v24 = *(v13 + 3);
        v26 = v13;
        if (v25 >= v24 >> 1)
        {
          v26 = sub_1001FD094((v24 > 1), v25 + 1, 1, v13);
        }

        *(v26 + 2) = v25 + 1;
        v13 = v26;
        v15 = &v26[32 * v25];
        *(v15 + 4) = v18;
        *(v15 + 5) = v20;
        *(v15 + 6) = v22;
        *(v15 + 7) = v23;
      }

      v14 += 2;
      v12 = (v12 - 1);
    }

    while (v12);
  }

  if (*(v13 + 2))
  {
    v27 = [objc_opt_self() currentDevice];
    if (v27 && (v28 = v27, v29 = [v27 uniqueDeviceIdentifier], v28, v29))
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = v125;
      sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
      OS_dispatch_queue.sync<A>(execute:)();
      if (*(&v145 + 1))
      {
        v124 = v13;
        v108 = *(&v145 + 1);
        v109 = v30;
        v114 = v145;
        v34 = v127;
        v35 = [v127 clientApp];
        v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v36;

        v37 = [v34 subscriptionMode];
        v110 = v32;
        if (v37 == 1)
        {
          if (qword_1005A7EE0 != -1)
          {
            v37 = swift_once();
          }

          v38 = qword_1005DFB60;
          __chkstk_darwin(v37);
          *(&v97 - 4) = v120;
          *(&v97 - 3) = v38;
          *(&v97 - 16) = 1;

          sub_10004B564(&qword_1005A9EC0, &unk_1004C33F8);
          OS_dispatch_queue.sync<A>(execute:)();

          v111 = v145;
          v32 = v110;
        }

        else
        {
          v111 = _swiftEmptyDictionarySingleton;
        }

        if ([v127 subscriptionMode] == 2)
        {
          v53 = v124;
          if (qword_1005A7EE0 != -1)
          {
            swift_once();
          }

          sub_10004B564(&qword_1005A9EB8, &qword_1004C33F0);
          OS_dispatch_queue.sync<A>(execute:)();

          v54 = v148;
          v55 = v108;
          if (v148)
          {
            v56 = *(&v145 + 1);
            v57 = v145;
            v58 = v146;
            v59 = v147;
            v60 = v149;
            v61 = v150;
          }

          else
          {
            v56 = 0;
            v57 = 0;
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = 0;
          }

          v62 = v109;
          v32 = v110;
        }

        else
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v59 = 0;
          v54 = 0;
          v60 = 0;
          v61 = 0;
          v55 = v108;
          v62 = v109;
          v53 = v124;
        }

        *&v145 = v114;
        *(&v145 + 1) = v55;
        v146 = v62;
        v147 = v32;
        v148 = v112;
        v149 = v113;
        v150 = v111;
        v151 = v57;
        v105 = v57;
        v106 = v56;
        v152 = v56;
        v153 = v58;
        v103 = v59;
        v104 = v58;
        v154 = v59;
        v155 = v54;
        v107 = v54;
        v102 = v60;
        v156 = v60;
        v101 = v61;
        v157 = v61;
        v158 = _swiftEmptyArrayStorage;

        sub_1000C8BA0(&v145, &v128);
        v63 = sub_10018F440(v53, &v145);
        if (v63)
        {
          v98 = v65;
          v99 = v64;
          v100 = v63;
          v123 = &v130;
          v66 = (v120 + 40);
          v67 = v126 + 1;
          while (--v67)
          {
            v126 = v66 + 2;
            v68 = *(v66 - 1);
            v69 = *v66;
            v70 = *(v33 + 48);
            v71 = *(v70 + 16);
            v72 = swift_allocObject();
            *(v72 + 16) = v70;
            *(v72 + 24) = v68;
            v73 = v127;
            *(v72 + 32) = v69;
            *(v72 + 40) = v73;
            *(v72 + 48) = 3;
            v74 = swift_allocObject();
            *(v74 + 16) = sub_1000CA9B0;
            *(v74 + 24) = v72;
            v132 = sub_1000CAA0C;
            v133 = v74;
            v128 = _NSConcreteStackBlock;
            v129 = 1107296256;
            v130 = sub_10013EC94;
            v131 = &unk_10058D7D8;
            v75 = _Block_copy(&v128);
            swift_bridgeObjectRetain_n();

            v76 = v73;

            dispatch_sync(v71, v75);

            _Block_release(v75);
            LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();
            v33 = v125;

            v66 = v126;
            if (v75)
            {
              __break(1u);
              break;
            }
          }

          v77 = type metadata accessor for TaskPriority();
          v78 = v119;
          (*(*(v77 - 8) + 56))(v119, 1, 1, v77);
          v79 = v118;
          sub_1000CA264(v117, v118, type metadata accessor for Credentials);
          v80 = (*(v115 + 80) + 64) & ~*(v115 + 80);
          v81 = (v116 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
          v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
          v83 = swift_allocObject();
          v83[2] = 0;
          v83[3] = 0;
          v85 = v99;
          v84 = v100;
          v83[4] = v33;
          v83[5] = v84;
          v86 = v98;
          v83[6] = v85;
          v83[7] = v86;
          sub_1000C9DE8(v79, v83 + v80, type metadata accessor for Credentials);
          v87 = v121;
          *(v83 + v81) = v120;
          v88 = v127;
          *(v83 + v82) = v127;
          v89 = (v83 + ((v82 + 15) & 0xFFFFFFFFFFFFFFF8));
          v90 = v122;
          *v89 = v87;
          v89[1] = v90;
          v91 = v88;

          sub_1001D7F30(0, 0, v78, &unk_1004C33E8, v83);

          v128 = v114;
          v129 = v108;
          v130 = v109;
          v131 = v110;
          v132 = v112;
          v133 = v113;
          v134 = v111;
          v135 = v105;
          v136 = v106;
          v137 = v104;
          v138 = v103;
          v139 = v107;
          v140 = v102;
          v141 = v101;
          *v142 = v144[0];
          *&v142[3] = *(v144 + 3);
          v143 = _swiftEmptyArrayStorage;
        }

        else
        {

          if (qword_1005A7EE8 != -1)
          {
            swift_once();
          }

          v92 = type metadata accessor for Logger();
          sub_10000A6F0(v92, qword_1005DFB98);
          v93 = Logger.logObject.getter();
          v94 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v93, v94))
          {
            v95 = swift_slowAlloc();
            *v95 = 0;
            _os_log_impl(&_mh_execute_header, v93, v94, "Failed to create request for server SubscribeAndFetch", v95, 2u);
          }

          v96 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
          v121();

          v128 = v114;
          v129 = v55;
          v130 = v62;
          v131 = v32;
          v132 = v112;
          v133 = v113;
          v134 = v111;
          v135 = v105;
          v136 = v106;
          v137 = v104;
          v138 = v103;
          v139 = v107;
          v140 = v102;
          v141 = v101;
          *v142 = v144[0];
          *&v142[3] = *(v144 + 3);
          v143 = _swiftEmptyArrayStorage;
        }

        sub_1000C8BFC(&v128);
      }

      else
      {

        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for Logger();
        sub_10000A6F0(v48, qword_1005DFB98);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&_mh_execute_header, v49, v50, "No APS token. Not proceeding with unsubscribe request", v51, 2u);
        }

        v52 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:13 userInfo:0];
        v121();
      }
    }

    else
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_10000A6F0(v39, qword_1005DFB98);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Unable to get device identifier for server Unsubscribe", v42, 2u);
      }

      v127 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
      v121();
      v43 = v127;
    }
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "No Unsubscribe request data generated. Not sending request", v47, 2u);
    }

    (v121)(0);
  }
}

uint64_t sub_1000A45E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 184) = v16;
  *(v8 + 192) = v17;
  *(v8 + 168) = v15;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 200) = v9;
  *(v8 + 208) = *(v9 - 8);
  *(v8 + 216) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 224) = v10;
  *(v8 + 232) = *(v10 - 8);
  *(v8 + 240) = swift_task_alloc();
  v11 = type metadata accessor for Response();
  *(v8 + 248) = v11;
  v12 = *(v11 - 8);
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return _swift_task_switch(sub_1000A4790, 0, 0);
}

uint64_t sub_1000A4790()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Sending Unsubscribe server request", v4, 2u);
  }

  v5 = v0[17];

  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_1000A4900;
  v7 = v0[35];
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[18];

  return sub_1001CF6CC(v7, v5, v10, v8, 3, v9, 1, 0);
}

uint64_t sub_1000A4900()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1000A4D5C;
  }

  else
  {
    v2 = sub_1000A4A14;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000A4A14()
{
  v1 = v0[34];
  v24 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[31];
  v20 = v0[30];
  v25 = v0[29];
  v26 = v0[28];
  v21 = v0[27];
  v22 = v0[25];
  v19 = v0[24];
  v17 = v0[22];
  v18 = v0[23];
  v15 = v0[16];
  v16 = v0[21];
  v23 = v0[26];
  (*(v2 + 16))(v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  (*(v2 + 32))(v9 + v5, v1, v4);
  *(v9 + v6) = v16;
  *(v9 + v7) = v17;
  *(v9 + v8) = v15;
  v10 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v10 = v18;
  v10[1] = v19;
  v0[12] = sub_1000C8E20;
  v0[13] = v9;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100020828;
  v0[11] = &unk_10058D8A0;
  v11 = _Block_copy(v0 + 8);

  v12 = v17;

  static DispatchQoS.unspecified.getter();
  v0[15] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);
  (*(v23 + 8))(v21, v22);
  (*(v25 + 8))(v20, v26);
  (*(v2 + 8))(v24, v4);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000A4D5C()
{
  v1 = v0[37];
  v2 = v0[27];
  v12 = v0[29];
  v13 = v0[28];
  v3 = v0[25];
  v11 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v10 = v0[30];
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v5;
  v0[6] = sub_1000C8E14;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100020828;
  v0[5] = &unk_10058D850;
  v7 = _Block_copy(v0 + 2);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);

  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v10, v13);

  v8 = v0[1];

  return v8();
}

void sub_1000A4FD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v70 = a4;
  v11 = type metadata accessor for Response();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = Response.statusCode.getter();
  v66 = a6;
  v67 = a5;
  if (v15 == 200)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    v17 = sub_10000A6F0(v16, qword_1005DFB98);

    v18 = a3;
    v64[1] = v17;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v65 = a2;
    v69 = v18;
    if (v21)
    {
      v22 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v22 = 134218498;
      *(v22 + 4) = *(v65 + 16);

      *(v22 + 12) = 2080;
      v23 = [v18 clientApp];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_10000D01C(v24, v26, aBlock);

      *(v22 + 14) = v27;
      *(v22 + 22) = 2080;
      v28 = Array.description.getter();
      v30 = sub_10000D01C(v28, v29, aBlock);

      *(v22 + 24) = v30;
      _os_log_impl(&_mh_execute_header, v19, v20, "Unsubscribe received status 200 - Success for %ld IDs for clientApp %s ids %s", v22, 0x20u);
      swift_arrayDestroy();

      a2 = v65;
    }

    else
    {
    }

    v45 = *(a2 + 16);
    v68 = v72;
    v46 = (a2 + 40);
    v64[0] = v45;
    v47 = v45 + 1;
    v48 = v69;
    while (--v47)
    {
      v49 = v46 + 2;
      v50 = *(v46 - 1);
      v51 = *v46;
      v52 = *(v70 + 48);
      v53 = *(v52 + 16);
      v54 = swift_allocObject();
      v54[2] = v52;
      v54[3] = v50;
      v54[4] = v51;
      v54[5] = v48;
      v55 = swift_allocObject();
      *(v55 + 16) = sub_1000C8ED4;
      *(v55 + 24) = v54;
      v72[2] = sub_1000CAA0C;
      v72[3] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v72[0] = sub_10013EC94;
      v72[1] = &unk_10058D918;
      v56 = _Block_copy(aBlock);
      swift_bridgeObjectRetain_n();
      v57 = v48;

      dispatch_sync(v53, v56);

      _Block_release(v56);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      v46 = v49;
      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        break;
      }
    }

    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = v64[0];

      _os_log_impl(&_mh_execute_header, v59, v60, "Unsubscribe removed subscription for %ld subs", v61, 0xCu);
    }

    else
    {
    }

    (v67)(0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000A6F0(v31, qword_1005DFB98);
    (*(v12 + 16))(v14, a1, v11);

    v32 = a3;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock[0] = v70;
      *v35 = 134218754;
      v36 = Response.statusCode.getter();
      (*(v12 + 8))(v14, v11);
      *(v35 + 4) = v36;
      *(v35 + 12) = 2048;
      *(v35 + 14) = *(a2 + 16);

      *(v35 + 22) = 2080;
      v37 = [v32 clientApp];
      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = v39;

      v41 = sub_10000D01C(v38, v40, aBlock);

      *(v35 + 24) = v41;
      *(v35 + 32) = 2080;
      v42 = Array.description.getter();
      v44 = sub_10000D01C(v42, v43, aBlock);

      *(v35 + 34) = v44;
      _os_log_impl(&_mh_execute_header, v33, v34, "Error during Unsubscribe %ld for %ld IDs for clientApp %s ids %s", v35, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      (*(v12 + 8))(v14, v11);
    }

    v62 = v67;
    v63 = [objc_allocWithZone(NSError) initWithDomain:SPSecureLocationsErrorDomain code:4 userInfo:0];
    v62();
  }
}

uint64_t sub_1000A5708(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFB98);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v9 = String.init<A>(describing:)();
    v11 = sub_10000D01C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unsubscribe failed %s", v7, 0xCu);
    sub_100004984(v8);
  }

  return a2(a1);
}

double sub_1000A58A4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v94 - v10;
  v12 = __chkstk_darwin(v9);
  v110 = v94 - v13;
  __chkstk_darwin(v12);
  v15 = v94 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v117 = v94 - v22;
  __chkstk_darwin(v21);
  if (*a1 == 1)
  {
    v118 = v94 - v23;
    v95 = v5;
    v102 = *(a2 + 24);
    v25 = sub_1004B7328();
    if (!*(v25 + 16) && (sub_1000F4A14() & 1) != 0)
    {

      v25 = sub_1004B7328();
    }

    v108 = *(v25 + 16);
    if (v108)
    {
      v101 = a2;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      v27 = sub_10000A6F0(v26, qword_1005DFB98);

      v119 = v27;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      v30 = os_log_type_enabled(v28, v29);
      v100 = v4;
      if (v30)
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = *(v25 + 16);

        _os_log_impl(&_mh_execute_header, v28, v29, "Shared keys found %ld. Determining if we need to delete", v31, 0xCu);
      }

      else
      {
      }

      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v96 = v25;
      v109 = v11;
      v99 = v8;

      sub_10004B564(&qword_1005A9FC0, &qword_1004C3520);
      OS_dispatch_queue.sync<A>(execute:)();

      v33 = *(v120[0] + 16);
      v94[1] = v120[0];
      if (v33)
      {
        *&v115 = v17 + 16;
        v105 = v17 + 32;
        v104 = (v17 + 8);
        v34 = (v120[0] + 64);
        v35 = _swiftEmptyArrayStorage;
        *&v32 = 136315394;
        v97 = v32;
        v116 = v20;
        do
        {
          v37 = *(v34 - 3);
          v38 = *(v34 - 2);
          v40 = *(v34 - 1);
          v39 = *v34;
          v111 = v34;
          v113 = v37;
          v114 = v33;

          *&v112 = v38;

          v107 = v40;
          v41 = String.utf8Data.getter();
          v43 = v42;
          v120[0] = v41;
          v120[1] = v42;
          sub_1000CA210();
          v44 = v118;
          DataProtocol.stableUUID.getter();
          sub_1000049D0(v41, v43);
          v45 = *v115;
          (*v115)(v117, v44, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1001FD1A0(0, v35[2] + 1, 1, v35);
          }

          v47 = v35[2];
          v46 = v35[3];
          if (v47 >= v46 >> 1)
          {
            v35 = sub_1001FD1A0((v46 > 1), v47 + 1, 1, v35);
          }

          v35[2] = v47 + 1;
          (*(v17 + 32))(v35 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v47, v117, v16);
          v48 = v116;
          v45(v116, v118, v16);

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.default.getter();

          v106 = v50;
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v103 = swift_slowAlloc();
            v120[0] = v103;
            *v51 = v97;

            v52 = sub_10000D01C(v107, v39, v120);

            *(v51 + 4) = v52;
            *(v51 + 12) = 2080;
            sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v53 = dispatch thunk of CustomStringConvertible.description.getter();
            v55 = v54;
            v56 = *v104;
            (*v104)(v116, v16);
            v57 = sub_10000D01C(v53, v55, v120);

            *(v51 + 14) = v57;
            _os_log_impl(&_mh_execute_header, v49, v106, "Handle serverId %s UUID %s", v51, 0x16u);
            swift_arrayDestroy();

            v56(v118, v16);
          }

          else
          {

            v36 = *v104;
            (*v104)(v48, v16);
            v36(v118, v16);
          }

          v34 = v111 + 5;
          v33 = v114 - 1;
        }

        while (v114 != 1);
      }

      else
      {
        v35 = _swiftEmptyArrayStorage;
      }

      v58 = 0;
      v117 = (v96 + ((*(v95 + 80) + 32) & ~*(v95 + 80)));
      v116 = *(v95 + 72);
      *&v59 = 136315138;
      v115 = v59;
      *&v59 = 136315394;
      v112 = v59;
      v60 = v109;
      v98 = v15;
      do
      {
        sub_1000CA264(&v117[v116 * v58], v15, type metadata accessor for SecureLocationsCachedSharedKey);
        v61 = v110;
        sub_1000CA264(v15, v110, type metadata accessor for SecureLocationsCachedSharedKey);
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = v61;
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v118 = v58;
          v67 = v66;
          v120[0] = v66;
          *v65 = v115;
          sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          v71 = v64;
          v15 = v98;
          sub_1000CA2CC(v71, type metadata accessor for SecureLocationsCachedSharedKey);
          v72 = sub_10000D01C(v68, v70, v120);
          v60 = v109;

          *(v65 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v62, v63, "Cached key identifier %s", v65, 0xCu);
          sub_100004984(v67);
          v58 = v118;
        }

        else
        {

          sub_1000CA2CC(v61, type metadata accessor for SecureLocationsCachedSharedKey);
        }

        v73 = 0;
        ++v58;
        v74 = v35[2];
        while (v74 != v73)
        {
          v75 = v73 + 1;
          sub_10001DFA8(&qword_1005A9FC8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v76 = dispatch thunk of static Equatable.== infix(_:_:)();
          v73 = v75;
          if (v76)
          {
            goto LABEL_29;
          }
        }

        v77 = v100;
        v78 = &v15[*(v100 + 20)];
        v79 = *v78;
        v80 = v78[1];
        sub_1000DDBD8(*v78, v80);
        sub_100100688(v79, v80, DarwinNotification.init(name:value:), 0);
        sub_1000CA264(v15, v60, type metadata accessor for SecureLocationsCachedSharedKey);
        v81 = v99;
        sub_1000CA264(v15, v99, type metadata accessor for SecureLocationsCachedSharedKey);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          v118 = v58;
          v85 = v84;
          v114 = swift_slowAlloc();
          v120[0] = v114;
          *v85 = v112;
          v86 = (v60 + *(v77 + 20));
          LODWORD(v113) = v83;
          v87 = *v86;
          v88 = v86[1];

          sub_1000CA2CC(v109, type metadata accessor for SecureLocationsCachedSharedKey);
          v89 = sub_10000D01C(v87, v88, v120);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2080;
          sub_10001DFA8(&qword_1005A92C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          sub_1000CA2CC(v81, type metadata accessor for SecureLocationsCachedSharedKey);
          v93 = sub_10000D01C(v90, v92, v120);
          v60 = v109;

          *(v85 + 14) = v93;
          _os_log_impl(&_mh_execute_header, v82, v113, "Removing keys for %s %s", v85, 0x16u);
          swift_arrayDestroy();

          v58 = v118;
        }

        else
        {

          sub_1000CA2CC(v81, type metadata accessor for SecureLocationsCachedSharedKey);
          sub_1000CA2CC(v60, type metadata accessor for SecureLocationsCachedSharedKey);
        }

LABEL_29:
        sub_1000CA2CC(v15, type metadata accessor for SecureLocationsCachedSharedKey);
      }

      while (v58 != v108);
    }

    else
    {
    }
  }

  return result;
}

double sub_1000A65AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFB98);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_10000D01C(v4, v3, &v13);
    _os_log_impl(&_mh_execute_header, v6, v7, "Received sink of friend stopped sharing %s", v8, 0xCu);
    sub_100004984(v9);
  }

  v10 = [objc_allocWithZone(SPSecureLocationsSubscriptionContext) init];
  v11 = String._bridgeToObjectiveC()();
  [v10 setClientApp:v11];

  [v10 setSubscriptionMode:2];

  sub_1000C2AC4(v4, v3, v10, a2, a2, v4, v3);

  return result;
}

double sub_1000A67B4(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v119 = a5;
  v123 = a4;
  v113 = type metadata accessor for DispatchWorkItemFlags();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DispatchQoS();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9280, &qword_1004C27F8);
  __chkstk_darwin(v11 - 8);
  v117 = &v106 - v12;
  v13 = type metadata accessor for Destination();
  v14 = *(v13 - 8);
  v121 = v13;
  v122 = v14;
  v15 = __chkstk_darwin(v13);
  v107 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v106 - v17;
  v18 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v18 - 8);
  v19 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v22 = type metadata accessor for SecureLocationsSubscription(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v5;
  v126 = *(v5 + 48);
  v127 = a1;
  v124 = a2;
  v125 = a1;
  v128 = a2;
  v129 = a3;
  v118 = a3;
  OS_dispatch_queue.sync<A>(execute:)();
  v26 = &off_1005A7000;
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v27 = sub_100002CE0(v21, &qword_1005A9EC8, &unk_1004C3420);
    v29 = v123;
    v28 = v124;
    v30 = v121;
  }

  else
  {
    sub_1000C9DE8(v21, v25, type metadata accessor for SecureLocationsSubscription);
    v29 = v123;
    if (*&v25[*(v22 + 32) + 8])
    {
      if (qword_1005A7EF8 != -1)
      {
        swift_once();
      }

      v31 = Data.init(base64Encoded:options:)();
      if (v32 >> 60 == 15)
      {
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for Logger();
        sub_10000A6F0(v33, qword_1005DFB98);
        v34 = Logger.logObject.getter();
        v35 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v34, v35, "failed to decode server provided push identifier", v36, 2u);
        }

        v116 = 0;
        v37 = 0;
      }

      else
      {
        v38 = v31;
        v39 = v32;
        static String.Encoding.utf8.getter();
        v116 = String.init(data:encoding:)();
        v37 = v40;
        sub_10001A794(v38, v39);
      }

      v28 = v124;
      if (qword_1005A8608 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10000A6F0(v41, qword_1005E0DE0);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 141558787;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2081;
        v130 = v45;
        aBlock = v116;
        v132 = v37;

        sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
        v46 = String.init<A>(describing:)();
        v48 = sub_10000D01C(v46, v47, &v130);

        *(v44 + 14) = v48;
        *(v44 + 22) = 2160;
        *(v44 + 24) = 1752392040;
        *(v44 + 32) = 2081;
        *(v44 + 34) = sub_10000D01C(v125, v124, &v130);
        _os_log_impl(&_mh_execute_header, v42, v43, "stopLiveLocations: Got handle from server %{private,mask.hash}s for findMyId %{private,mask.hash}s", v44, 0x2Au);
        swift_arrayDestroy();
        v28 = v124;
      }

      v29 = v123;
      v30 = v121;
      v27 = sub_1000CA2CC(v25, type metadata accessor for SecureLocationsSubscription);
      v26 = &off_1005A7000;
      if (v37)
      {
        v49 = v120;
        v50 = v122;
        v51 = v117;
        goto LABEL_28;
      }
    }

    else
    {
      v27 = sub_1000CA2CC(v25, type metadata accessor for SecureLocationsSubscription);
      v28 = v124;
      v30 = v121;
      v26 = &off_1005A7000;
    }
  }

  if (v26[479] != -1)
  {
    v27 = swift_once();
  }

  v52 = qword_1005DFBC8;
  __chkstk_darwin(v27);
  v53 = v125;
  *(&v106 - 4) = v52;
  *(&v106 - 3) = v53;
  *(&v106 - 2) = v28;

  sub_10004B564(&qword_1005A96A8, &qword_1004C3320);
  OS_dispatch_queue.sync<A>(execute:)();

  v54 = aBlock;
  v37 = v132;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_10000A6F0(v55, qword_1005E0DE0);
  swift_bridgeObjectRetain_n();

  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  v58 = os_log_type_enabled(v56, v57);
  v116 = v54;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v115 = v37;
    v60 = v59;
    v130 = swift_slowAlloc();
    aBlock = v54;
    *v60 = 141558787;
    *(v60 + 4) = 1752392040;
    *(v60 + 12) = 2081;
    v132 = v115;
    v61 = String.init<A>(describing:)();
    v63 = sub_10000D01C(v61, v62, &v130);

    *(v60 + 14) = v63;
    *(v60 + 22) = 2160;
    *(v60 + 24) = 1752392040;
    *(v60 + 32) = 2081;
    *(v60 + 34) = sub_10000D01C(v125, v124, &v130);
    _os_log_impl(&_mh_execute_header, v56, v57, "stopLiveLocations: Got handle from fmf following %{private,mask.hash}s for findMyId %{private,mask.hash}s", v60, 0x2Au);
    swift_arrayDestroy();
    v28 = v124;

    v29 = v123;
    v37 = v115;
  }

  else
  {
  }

  v49 = v120;
  v50 = v122;
  v51 = v117;
  if (!v37)
  {
    goto LABEL_30;
  }

LABEL_28:

  Destination.init(string:)();
  if ((*(v50 + 48))(v51, 1, v30) == 1)
  {
    sub_100002CE0(v51, &qword_1005A9280, &qword_1004C27F8);
LABEL_30:
    aBlock = 0;
    v132 = 0xE000000000000000;
    _StringGuts.grow(_:)(67);
    v64._countAndFlagsBits = 0xD000000000000031;
    v64._object = 0x80000001004DF9A0;
    String.append(_:)(v64);
    v65._countAndFlagsBits = v125;
    v65._object = v28;
    String.append(_:)(v65);
    v66._countAndFlagsBits = 0xD000000000000010;
    v66._object = 0x80000001004DF9E0;
    String.append(_:)(v66);
    v68 = aBlock;
    v67 = v132;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_10000A6F0(v69, qword_1005E0DE0);

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_10000D01C(v68, v67, &aBlock);
      _os_log_impl(&_mh_execute_header, v70, v71, "LiveLocations: %s", v72, 0xCu);
      sub_100004984(v73);
      v28 = v124;
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC7D4(v68, v67);

    v74 = type metadata accessor for Transaction();
    __chkstk_darwin(v74);
    v75 = v125;
    *(&v106 - 4) = v49;
    *(&v106 - 3) = v75;
    v76 = v118;
    *(&v106 - 2) = v28;
    *(&v106 - 1) = v76;
    static Transaction.named<A>(_:with:)();
    v29(0);
    goto LABEL_51;
  }

  (*(v50 + 32))(v114, v51, v30);
  v77 = sub_100123484();
  v115 = v37;
  if (v77)
  {
    v78 = v30;
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for Logger();
    sub_10000A6F0(v79, qword_1005E0DE0);
    v80 = v122;
    v81 = v107;
    v82 = v78;
    (*(v122 + 16))(v107, v114, v78);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      aBlock = v86;
      *v85 = 141558275;
      *(v85 + 4) = 1752392040;
      *(v85 + 12) = 2081;
      sub_10001DFA8(&qword_1005A9260, &type metadata accessor for Destination, &protocol conformance descriptor for Destination);
      v87 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v81;
      v90 = v89;
      (*(v80 + 8))(v88, v82);
      v91 = sub_10000D01C(v87, v90, &aBlock);
      v49 = v120;

      *(v85 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v83, v84, "LiveLocations: Ending session: %{private,mask.hash}s", v85, 0x16u);
      sub_100004984(v86);
    }

    else
    {

      (*(v80 + 8))(v81, v82);
    }
  }

  else
  {
    if (qword_1005A8608 != -1)
    {
      swift_once();
    }

    v92 = type metadata accessor for Logger();
    sub_10000A6F0(v92, qword_1005E0DE0);
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      aBlock = v96;
      *v95 = 136446210;
      *(v95 + 4) = sub_10000D01C(0xD000000000000062, 0x80000001004DFA00, &aBlock);
      _os_log_impl(&_mh_execute_header, v93, v94, "LiveLocations: %{public}s", v95, 0xCu);
      sub_100004984(v96);
    }

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    sub_1000CC27C(0, 1, 0xD000000000000062, 0x80000001004DFA00);

    v82 = v121;
    v80 = v122;
  }

  v97 = swift_allocObject();
  v98 = v125;
  v97[2] = v49;
  v97[3] = v98;
  v99 = v118;
  v97[4] = v28;
  v97[5] = v99;
  v135 = sub_1000C8FDC;
  v136 = v97;
  aBlock = _NSConcreteStackBlock;
  v132 = 1107296256;
  v133 = sub_100020828;
  v134 = &unk_10058D9B8;
  v100 = _Block_copy(&aBlock);

  v101 = v99;
  v102 = v108;
  static DispatchQoS.unspecified.getter();
  v130 = _swiftEmptyArrayStorage;
  sub_10001DFA8(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820, &protocol conformance descriptor for [A]);
  v103 = v110;
  v104 = v113;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v100);
  (*(v112 + 8))(v103, v104);
  (*(v109 + 8))(v102, v111);

  v123(0);
  (*(v80 + 8))(v114, v82);
LABEL_51:

  return result;
}

double sub_1000A7A6C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for DispatchTime();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = *(a1 + 136);
  if (v11)
  {
    *a2 = *(a1 + 128);
    a2[1] = v11;
  }

  else
  {
    v26 = a2;
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = [objc_opt_self() sharedInstance];
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = a1;
    aBlock[4] = sub_1000C7DF0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A7F4C;
    aBlock[3] = &unk_10058CF90;
    v16 = _Block_copy(aBlock);
    v17 = v13;

    [v14 fetchAPNSTokenWithCompletion:v16];
    _Block_release(v16);

    static DispatchTime.now()();
    + infix(_:_:)();
    v18 = *(v5 + 8);
    v18(v8, v4);
    OS_dispatch_group.wait(timeout:)();
    v18(v10, v4);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000A6F0(v19, qword_1005DFB98);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Timed out waiting for APS token call to return", v22, 2u);
      }
    }

    v23 = *(a1 + 136);
    v24 = v26;
    *v26 = *(a1 + 128);
    v24[1] = v23;
  }

  return result;
}

void sub_1000A7D90(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  if (a3)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000A6F0(v6, qword_1005DFB98);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = Error.localizedDescription.getter();
      v13 = sub_10000D01C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching APS token %s", v9, 0xCu);
      sub_100004984(v10);
    }

    else
    {
    }
  }

  else
  {
    *(a5 + 128) = a1;
    *(a5 + 136) = a2;
  }

  dispatch_group_leave(a4);
}

double sub_1000A7F4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

void sub_1000A7FE4()
{
  v0 = type metadata accessor for SecureLocationsConfig(0);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000BB328())
  {
    goto LABEL_7;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v3 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v3);
  v4 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_1000CA264(v3 + *(v4 + 28), v2, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v3);

  v5 = v2[8];
  sub_1000CA2CC(v2, type metadata accessor for SecureLocationsConfig);
  if (v5 != 1)
  {
LABEL_7:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v7 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v7, v10, "LocationMonitor: secureLocations feature is disabled. Not proceeding with starting monitor", v11, 2u);
    }
  }

  else
  {
    sub_1000A9700();

    v6 = sub_100021BB4();

    if ((v6 & 1) == 0)
    {
      return;
    }

    v7 = [objc_opt_self() sharedInstance];
    aBlock[4] = sub_1000A82A8;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A8DE8;
    aBlock[3] = &unk_10058DD28;
    v8 = _Block_copy(aBlock);
    [v7 startLocationMonitoring:v8];
    _Block_release(v8);
  }
}