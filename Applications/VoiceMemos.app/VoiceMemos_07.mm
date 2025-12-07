unint64_t sub_100141D54()
{
  result = qword_1002D2878;
  if (!qword_1002D2878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2878);
  }

  return result;
}

Swift::Int sub_100141DA8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100141E30(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100141EA4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100141F28@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CD08, *a1);

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

void sub_100141F88(uint64_t *a1@<X8>)
{
  v2 = 0x6E49646567676F6CLL;
  if (*v1)
  {
    v2 = 0x754F646567676F6CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10014208C()
{
  result = qword_1002D2880;
  if (!qword_1002D2880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2880);
  }

  return result;
}

uint64_t sub_10014221C()
{
  v0 = type metadata accessor for TimeDurationGranularity();
  sub_100018DC8(v0, static AppSessionEndEvent.timeDurationGranularity);
  sub_100018D90(v0, static AppSessionEndEvent.timeDurationGranularity);
  return static TimeDurationGranularity.seconds.getter();
}

uint64_t AppSessionEndEvent.sessionSummaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE8, &unk_100248CC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionSummaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 20);
  v4 = sub_1000C773C(&qword_1002CDFE8, &unk_100248CC0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.recordingDurationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_1000C773C(&qword_1002CDFF0, &unk_100240550);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.recordingDurationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 24);
  v4 = sub_1000C773C(&qword_1002CDFF0, &unk_100240550);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.sessionEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_1000C773C(&qword_1002CDFF8, &unk_100248CD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.sessionEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 28);
  v4 = sub_1000C773C(&qword_1002CDFF8, &unk_100248CD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_1000C773C(&qword_1002CE000, &qword_100240560);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionEndEvent(0) + 32);
  v4 = sub_1000C773C(&qword_1002CE000, &qword_100240560);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionEndEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for EventProperty.required<A>(_:);
  v3 = sub_1000C773C(&qword_1002CDFD8, &qword_100240538);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for AppSessionEndEvent(0);
  v5 = v4[5];
  v6 = sub_1000C773C(&qword_1002CDFE8, &unk_100248CC0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = sub_1000C773C(&qword_1002CDFF0, &unk_100240550);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = sub_1000C773C(&qword_1002CDFF8, &unk_100248CD0);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = sub_1000C773C(&qword_1002CE000, &qword_100240560);
  v13 = *(*(v12 - 8) + 104);

  return v13(a1 + v11, v2, v12);
}

unint64_t AppSessionEndEvent.Model.sessionSummaryData.getter()
{
  v1 = (v0 + *(type metadata accessor for AppSessionEndEvent.Model(0) + 20));
  v2 = &_mh_execute_header;
  if (!*(v1 + 4))
  {
    v2 = 0;
  }

  v3 = v2 | *v1 | (*(v1 + 5) << 40);

  return v3;
}

uint64_t AppSessionEndEvent.Model.timedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionEndEvent.Model(0) + 32);
  v4 = type metadata accessor for TimedData();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionEndEvent.Model.init(eventData:sessionSummaryData:recordingDurationData:sessionEndData:timedData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v9 = a6;
  v10 = a5;
  v16 = a2 >> 40;
  v17 = HIDWORD(a5);
  v18 = HIDWORD(a6);
  v19 = type metadata accessor for EventData();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for AppSessionEndEvent.Model(0);
  v21 = a9 + v20[5];
  *v21 = a2;
  *(v21 + 4) = BYTE4(a2) & 1;
  *(v21 + 5) = v16;
  *(v21 + 8) = a3;
  *(v21 + 16) = a4 & 1;
  *(v21 + 17) = HIBYTE(a4) & 1;
  v22 = (a9 + v20[6]);
  *v22 = v10;
  v22[1] = v17;
  v22[2] = v9;
  v22[3] = v18;
  *(a9 + v20[7]) = a7;
  v23 = v20[8];
  v24 = type metadata accessor for TimedData();
  v25 = *(*(v24 - 8) + 32);

  return v25(a9 + v23, a8, v24);
}

unint64_t sub_100142CDC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000015;
  v4 = 0x456E6F6973736573;
  if (v1 != 3)
  {
    v4 = 0x74614464656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100142D90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100143F50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100142DB8(uint64_t a1)
{
  v2 = sub_10014312C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100142DF4(uint64_t a1)
{
  v2 = sub_10014312C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AppSessionEndEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000C773C(&qword_1002D2888, &qword_100248CE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000AACC(a1, a1[3]);
  sub_10014312C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for EventData();
  sub_1001436F0(&qword_1002D2078, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AppSessionEndEvent.Model(0);
    v10 = (v3 + v9[5]);
    v11 = *v10;
    v12 = *(v10 + 4);
    v13 = *(v10 + 5);
    v14 = *(v10 + 1);
    v15 = *(v10 + 16);
    LOBYTE(v10) = *(v10 + 17);
    LODWORD(v19) = v11;
    BYTE4(v19) = v12;
    BYTE5(v19) = v13;
    *(&v19 + 1) = v14;
    v20 = v15;
    v21 = v10;
    v18 = 1;
    sub_1000225E8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = *(v3 + v9[6]);
    v18 = 2;
    sub_1000219E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = *(v3 + v9[7]);
    v18 = 3;
    sub_10013C1E4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 4;
    type metadata accessor for TimedData();
    sub_1001436F0(&qword_1002D28A8, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10014312C()
{
  result = qword_1002D2890;
  if (!qword_1002D2890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2890);
  }

  return result;
}

uint64_t AppSessionEndEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = type metadata accessor for TimedData();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EventData();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000C773C(&qword_1002D28B0, &qword_100248CE8);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v26 - v7;
  v9 = type metadata accessor for AppSessionEndEvent.Model(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000AACC(a1, a1[3]);
  sub_10014312C();
  v33 = v8;
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return sub_100014B64(a1);
  }

  v35 = v4;
  v13 = v30;
  LOBYTE(v36) = 0;
  sub_1001436F0(&qword_1002D2090, &type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  v14 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v11;
  (*(v13 + 32))(v11, v14, v5);
  v39 = 1;
  sub_100022590();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = BYTE4(v36);
  v17 = BYTE5(v36);
  v18 = *(&v36 + 1);
  v19 = v37;
  v20 = v38;
  v21 = v9;
  v22 = v15 + v9[5];
  *v22 = v36;
  *(v22 + 4) = v16;
  *(v22 + 5) = v17;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  *(v22 + 17) = v20;
  v39 = 2;
  sub_10002198C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + v9[6]) = v36;
  v39 = 3;
  sub_10013C18C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = 0;
  *(v15 + v9[7]) = v36;
  LOBYTE(v36) = 4;
  sub_1001436F0(&qword_1002D28C8, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
  v23 = v35;
  v24 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v32 + 8))(v33, v34);
  (*(v27 + 32))(v15 + v21[8], v23, v24);
  sub_100143738(v15, v28);
  sub_100014B64(a1);
  return sub_10014379C(v15);
}

uint64_t sub_1001436F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100143738(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10014379C(uint64_t a1)
{
  v2 = type metadata accessor for AppSessionEndEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001438D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = enum case for EventProperty.required<A>(_:);
  v5 = sub_1000C773C(&qword_1002CDFD8, &qword_100240538);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = sub_1000C773C(&qword_1002CDFE8, &unk_100248CC0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = sub_1000C773C(&qword_1002CDFF0, &unk_100240550);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = sub_1000C773C(&qword_1002CDFF8, &unk_100248CD0);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = sub_1000C773C(&qword_1002CE000, &qword_100240560);
  v14 = *(*(v13 - 8) + 104);

  return v14(a2 + v12, v4, v13);
}

void sub_100143AB4(uint64_t a1)
{
  sub_10013A0B0(319);
  if (v1 <= 0x3F)
  {
    sub_100143C28(319, &qword_1002D2938, sub_100022590, sub_1000225E8, &type metadata for SessionSummaryData);
    if (v2 <= 0x3F)
    {
      sub_100143C28(319, &qword_1002D2940, sub_10002198C, sub_1000219E0, &type metadata for RecordingDurationData);
      if (v3 <= 0x3F)
      {
        sub_100143C28(319, &qword_1002D2948, sub_10013C18C, sub_10013C1E4, &type metadata for SessionEndData);
        if (v4 <= 0x3F)
        {
          sub_100143CA4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100143C28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = type metadata accessor for EventProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_100143CA4(uint64_t a1)
{
  if (!qword_1002D2950)
  {
    type metadata accessor for TimedData();
    sub_1001436F0(&qword_1002D28C8, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    sub_1001436F0(&qword_1002D28A8, &type metadata accessor for TimedData, &protocol conformance descriptor for TimedData);
    v1 = type metadata accessor for EventProperty();
    if (!v2)
    {
      atomic_store(v1, &qword_1002D2950);
    }
  }
}

uint64_t sub_100143D98(uint64_t a1)
{
  result = type metadata accessor for EventData();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TimedData();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100143E4C()
{
  result = qword_1002D2A30;
  if (!qword_1002D2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A30);
  }

  return result;
}

unint64_t sub_100143EA4()
{
  result = qword_1002D2A38;
  if (!qword_1002D2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A38);
  }

  return result;
}

unint64_t sub_100143EFC()
{
  result = qword_1002D2A40;
  if (!qword_1002D2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A40);
  }

  return result;
}

uint64_t sub_100143F50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001002326F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100232710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x456E6F6973736573 && a2 == 0xEE0061746144646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BOOL SecondLayerType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CD58, v2);

  return v3 != 0;
}

unint64_t sub_10014417C()
{
  result = qword_1002D2A48;
  if (!qword_1002D2A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A48);
  }

  return result;
}

Swift::Int sub_1001441D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100144234(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100144280@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CD90, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1001443AC()
{
  result = qword_1002D2A50;
  if (!qword_1002D2A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A50);
  }

  return result;
}

BOOL UserIDContext.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CDC8, v2);

  return v3 != 0;
}

Swift::Int sub_100144464()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001444D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10014452C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CE00, *a1);

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_100144650()
{
  result = qword_1002D2A60;
  if (!qword_1002D2A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A60);
  }

  return result;
}

uint64_t SessionSummaryData.micModes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

VoiceMemos::SessionSummaryData __swiftcall SessionSummaryData.init(totalCountOfRecordings:viewedTranscription:recordingMode:micModes:editedStudioVoicesSlider:studioVoicesToggledOn:)(Swift::Int32 totalCountOfRecordings, Swift::Bool viewedTranscription, VoiceMemos::RecordingModes recordingMode, Swift::OpaquePointer micModes, Swift::Bool editedStudioVoicesSlider, Swift::Bool studioVoicesToggledOn)
{
  v6 = &_mh_execute_header;
  if (!viewedTranscription)
  {
    v6 = 0;
  }

  v7 = v6 | totalCountOfRecordings | (recordingMode << 40);
  if (studioVoicesToggledOn)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 & 0xFFFE | editedStudioVoicesSlider;
  result.micModes = micModes;
  result.totalCountOfRecordings = v7;
  result.viewedTranscription = BYTE4(v7);
  result.recordingMode = BYTE5(v7);
  result.editedStudioVoicesSlider = v9;
  result.studioVoicesToggledOn = HIBYTE(v9);
  return result;
}

unint64_t sub_1001447B0()
{
  v1 = *v0;
  v2 = 0x6E6964726F636572;
  v3 = 0x7365646F4D63696DLL;
  v4 = 0xD000000000000018;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_100144884@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100144DD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001448AC(uint64_t a1)
{
  v2 = sub_100144BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001448E8(uint64_t a1)
{
  v2 = sub_100144BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SessionSummaryData.encode(to:)(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v13[1] = a4;
  v6 = BYTE5(a2);
  v8 = sub_1000C773C(&qword_1002D2A68, &qword_1002490E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000AACC(a1, a1[3]);
  sub_100144BFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v6;
    v18 = 2;
    sub_100144C50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = a3;
    v17 = 3;
    sub_1000C773C(&qword_1002D2A80, &qword_1002490F0);
    sub_100145500(&qword_1002D2A88, sub_100144CA4, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100144BFC()
{
  result = qword_1002D2A70;
  if (!qword_1002D2A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A70);
  }

  return result;
}

unint64_t sub_100144C50()
{
  result = qword_1002D2A78;
  if (!qword_1002D2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A78);
  }

  return result;
}

unint64_t sub_100144CA4()
{
  result = qword_1002D2A90;
  if (!qword_1002D2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A90);
  }

  return result;
}

unint64_t sub_100144D30@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100144FDC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
    *(a1 + 5) = BYTE5(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t sub_100144D80(void *a1)
{
  v2 = &_mh_execute_header;
  if (!*(v1 + 4))
  {
    v2 = 0;
  }

  if (*(v1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return SessionSummaryData.encode(to:)(a1, v2 | *v1 | (*(v1 + 5) << 40), *(v1 + 1), v3 | *(v1 + 16));
}

uint64_t sub_100144DD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x8000000100232730 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100232750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xED000065646F4D67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365646F4D63696DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100232770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100232790 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_100144FDC(void *a1)
{
  v3 = sub_1000C773C(&qword_1002D2AB0, &qword_1002492F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  sub_10000AACC(a1, a1[3]);
  sub_100144BFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100014B64(a1);
  }

  v20 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = 2;
  sub_1001454AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v18;
  sub_1000C773C(&qword_1002D2A80, &qword_1002490F0);
  v16 = 3;
  sub_100145500(&qword_1002D2AC0, sub_100145578, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v10;
  v15 = 4;
  v12[3] = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 5;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  sub_100014B64(a1);
  v11 = &_mh_execute_header;
  if ((v8 & 1) == 0)
  {
    v11 = 0;
  }

  return v11 | v7 | (v13 << 40);
}

__n128 sub_1001452F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10014530C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_100145354(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001453A8()
{
  result = qword_1002D2A98;
  if (!qword_1002D2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2A98);
  }

  return result;
}

unint64_t sub_100145400()
{
  result = qword_1002D2AA0;
  if (!qword_1002D2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2AA0);
  }

  return result;
}

unint64_t sub_100145458()
{
  result = qword_1002D2AA8;
  if (!qword_1002D2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2AA8);
  }

  return result;
}

unint64_t sub_1001454AC()
{
  result = qword_1002D2AB8;
  if (!qword_1002D2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2AB8);
  }

  return result;
}

uint64_t sub_100145500(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(&qword_1002D2A80, &qword_1002490F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100145578()
{
  result = qword_1002D2AC8;
  if (!qword_1002D2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2AC8);
  }

  return result;
}

uint64_t sub_1001455EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64726F6365527369 && a2 == 0xEB00000000676E69)
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

uint64_t sub_100145678(uint64_t a1)
{
  v2 = sub_100147058();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001456B4(uint64_t a1)
{
  v2 = sub_100147058();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001456F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1000C773C(&qword_1002D2BD8, &qword_1002494C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000AACC(a1, a1[3]);
  sub_100147058();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100014B64(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_100014B64(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_100145854(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2BE8, &qword_1002494D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000AACC(a1, a1[3]);
  sub_100147058();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_10014598C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100145A00(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100145A50@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_100145A80(uint64_t a1)
{
  v2 = sub_1001470AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100145ABC(uint64_t a1)
{
  v2 = sub_1001470AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100145B20(void *a1)
{
  v2 = sub_1000C773C(&qword_1002D2BF0, &qword_1002494D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000AACC(a1, a1[3]);
  sub_1001470AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100145C34(int a1)
{
  v2 = v1;
  v36[1] = a1;
  v3 = type metadata accessor for ActivityPresentationOptions();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002CED20, &qword_1002494F0);
  __chkstk_darwin(v6 - 8);
  v8 = v36 - v7;
  v9 = sub_1000C773C(&qword_1002D2C08, &qword_1002494E8);
  v37 = *(v9 - 8);
  v38 = v9;
  __chkstk_darwin(v9);
  v11 = v36 - v10;
  if (*(v1 + 16))
  {

    v12 = Activity.id.getter();
    sub_100146AD8(v12, v13);
  }

  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100018D90(v14, qword_1002E8CB0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v41 = v2;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001901C(0xD000000000000027, 0x8000000100232840, v42);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s Requesting begin activity", v18, 0xCu);
    sub_100014B64(v19);
  }

  LOBYTE(v42[0]) = 1;
  v20 = type metadata accessor for Date();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_100146EFC();
  sub_100146F54();
  sub_100146FAC();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  sub_1000C773C(&qword_1002D2C10, &qword_1002494F8);
  v21 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100244070;
  v26 = v25 + v24;
  v27 = *(v22 + 104);
  v27(v26, enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:), v21);
  v27(v26 + v23, enum case for ActivityPresentationOptions.ActivityPresentationDestination.banner(_:), v21);
  v27(v26 + 2 * v23, enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:), v21);
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  ActivityPresentationOptions.isActionButtonInitiated.setter();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000C773C(&qword_1002D2C18, &qword_100249500);
  v28 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();

  v29 = v41;
  *(v41 + 16) = v28;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v42[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_10001901C(0xD000000000000027, 0x8000000100232840, v42);
    _os_log_impl(&_mh_execute_header, v30, v31, "%s Requested an activity successfully", v32, 0xCu);
    sub_100014B64(v33);
  }

  (*(v39 + 8))(v5, v40);
  (*(v37 + 8))(v11, v38);
  if (!*(v29 + 16))
  {
    return 0;
  }

  v34 = Activity.id.getter();

  return v34;
}

uint64_t sub_1001463EC(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 97) = a1;
  sub_1000C773C(&qword_1002CED20, &qword_1002494F0);
  *(v2 + 24) = swift_task_alloc();
  v3 = sub_1000C773C(&qword_1002D2C08, &qword_1002494E8);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return _swift_task_switch(sub_100146528, v5, v4);
}

uint64_t sub_100146528()
{
  v21 = v0;
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 80) = v1;
  if (v1)
  {
    *(v0 + 96) = *(v0 + 97);
    v2 = *(v0 + 24);
    v3 = type metadata accessor for Date();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_100146EFC();
    sub_100146F54();
    sub_100146FAC();

    ActivityContent.init(state:staleDate:relevanceScore:)();
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100018D90(v4, qword_1002E8CB0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 97);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315394;
      *(v8 + 4) = sub_10001901C(0xD000000000000021, 0x8000000100232810, &v20);
      *(v8 + 12) = 1024;
      *(v8 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Updating activity state: isRecording %{BOOL}d", v8, 0x12u);
      sub_100014B64(v9);
    }

    v19 = (&async function pointer to dispatch thunk of Activity.update(_:) + async function pointer to dispatch thunk of Activity.update(_:));
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_100146914;
    v11 = *(v0 + 48);

    return v19(v11);
  }

  else
  {

    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100018D90(v13, qword_1002E8CB0);
    v14 = static os_log_type_t.error.getter();
    v15 = Logger.logObject.getter();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_10001901C(0xD000000000000021, 0x8000000100232810, &v20);
      _os_log_impl(&_mh_execute_header, v15, v14, "%s Unable to update activity state. No activity in progress.", v16, 0xCu);
      sub_100014B64(v17);
    }

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100146914()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100146A34, v3, v2);
}

uint64_t sub_100146A34()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100146AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ActivityUIDismissalPolicy();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D2C00, &qword_1002494E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  if (!*(v2 + 16))
  {
    return 0;
  }

  if (Activity.id.getter() != a1 || v13 != a2)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v14)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100018D90(v15, qword_1002E8CB0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_10001901C(0xD000000000000018, 0x80000001002327F0, &v24);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s Requesting end activity", v18, 0xCu);
    sub_100014B64(v19);
  }

  v20 = sub_1000C773C(&qword_1002D2C08, &qword_1002494E8);
  v21 = 1;
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  static ActivityUIDismissalPolicy.immediate.getter();
  dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

  (*(v7 + 8))(v9, v6);
  sub_100147100(v12);
  *(v3 + 16) = 0;

  return v21;
}

uint64_t AppLifecycleTrackingController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_100146E4C()
{
  result = qword_1002D2BA8;
  if (!qword_1002D2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BA8);
  }

  return result;
}

unint64_t sub_100146EA4()
{
  result = qword_1002D2BB0;
  if (!qword_1002D2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BB0);
  }

  return result;
}

unint64_t sub_100146EFC()
{
  result = qword_1002D2BB8;
  if (!qword_1002D2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BB8);
  }

  return result;
}

unint64_t sub_100146F54()
{
  result = qword_1002D2BC0;
  if (!qword_1002D2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BC0);
  }

  return result;
}

unint64_t sub_100146FAC()
{
  result = qword_1002D2BC8;
  if (!qword_1002D2BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BC8);
  }

  return result;
}

unint64_t sub_100147004()
{
  result = qword_1002D2BD0;
  if (!qword_1002D2BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BD0);
  }

  return result;
}

unint64_t sub_100147058()
{
  result = qword_1002D2BE0;
  if (!qword_1002D2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BE0);
  }

  return result;
}

unint64_t sub_1001470AC()
{
  result = qword_1002D2BF8;
  if (!qword_1002D2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2BF8);
  }

  return result;
}

uint64_t sub_100147100(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D2C00, &qword_1002494E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for RecordingActivityAttributes.ContentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10014723C()
{
  result = qword_1002D2C20;
  if (!qword_1002D2C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C20);
  }

  return result;
}

unint64_t sub_100147294()
{
  result = qword_1002D2C28;
  if (!qword_1002D2C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C28);
  }

  return result;
}

unint64_t sub_1001472EC()
{
  result = qword_1002D2C30;
  if (!qword_1002D2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C30);
  }

  return result;
}

unint64_t sub_100147344()
{
  result = qword_1002D2C38;
  if (!qword_1002D2C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C38);
  }

  return result;
}

unint64_t sub_10014739C()
{
  result = qword_1002D2C40;
  if (!qword_1002D2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C40);
  }

  return result;
}

unint64_t sub_1001473F4()
{
  result = qword_1002D2C48;
  if (!qword_1002D2C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C48);
  }

  return result;
}

unint64_t sub_10014744C()
{
  result = qword_1002D2C50;
  if (!qword_1002D2C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C50);
  }

  return result;
}

unint64_t sub_1001474A4()
{
  result = qword_1002D2C58;
  if (!qword_1002D2C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C58);
  }

  return result;
}

unint64_t sub_1001474F8()
{
  result = qword_1002D2C60;
  if (!qword_1002D2C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C60);
  }

  return result;
}

id sub_100147558@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v42 - v9;
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v42 - v19;
  result = [v1 uuid];
  if (!result)
  {
    goto LABEL_7;
  }

  v50 = v10;
  v51 = v7;
  v22 = result;
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [v1 title];
  if (!v25)
  {
LABEL_6:

LABEL_7:
    v41 = 0;
    v24 = 0;
    v33 = 0;
    v34 = 0;
    v36 = 0;
    goto LABEL_8;
  }

  v26 = v25;
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v27;

  v28 = [v1 creationDate];
  if (!v28)
  {

    goto LABEL_6;
  }

  v29 = v28;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v5 + 32);
  v46 = v20;
  v30(v20, v16, v4);
  v45 = v5;
  v43 = *(v5 + 16);
  v44 = v5 + 16;
  v43(v13, v20, v4);
  [v1 length];
  v32 = v31;
  sub_1000C773C(&qword_1002D3540, &qword_10024B1E0);
  LocalizedStringResource.init(stringLiteral:)();
  v33 = EntityProperty<>.init(title:)();
  sub_1000C773C(&qword_1002D3070, &qword_10024B1E8);

  LocalizedStringResource.init(stringLiteral:)();
  v34 = EntityProperty<>.init(title:)();
  sub_1000C773C(&qword_1002D3078, &unk_10024B1F0);
  v35 = v13;
  v42 = v13;

  LocalizedStringResource.init(stringLiteral:)();
  v36 = EntityProperty<>.init(title:)();
  v52 = v47;
  v53 = v48;

  EntityProperty.wrappedValue.setter();
  v37 = v50;
  v38 = v35;
  v39 = v43;
  v43(v50, v38, v4);
  v39(v51, v37, v4);
  EntityProperty.wrappedValue.setter();
  v40 = *(v45 + 8);
  v40(v37, v4);
  v52 = v32;
  EntityProperty.wrappedValue.setter();
  v40(v42, v4);
  v40(v46, v4);

  v41 = v49;
LABEL_8:
  *a1 = v41;
  a1[1] = v24;
  a1[2] = v33;
  a1[3] = v34;
  a1[4] = v36;
  return result;
}

__n128 sub_100147A14@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

void sub_100147A90(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = *(a1 + 16);
  v10 = a1 + 64;
  v13 = v4;
LABEL_2:
  v5 = v3 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      *a2 = _swiftEmptyArrayStorage;
      return;
    }

    if (v2 >= v4)
    {
      break;
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_12;
    }

    v12 = v2 + 1;
    v6 = objc_opt_self();

    v7 = [v6 sharedApplicationModel];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 compositionLoadedForSavedRecordingUUID:v8];

    v4 = v13;

    ++v2;
    v5 += 40;
    if (v9)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v12;
      v3 = v10;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_100147C58()
{
  v0 = [objc_opt_self() sharedApplicationModel];
  v1 = [v0 context];
  sub_1000C773C(&qword_1002D3060, &qword_10024B1D0);
  NSManagedObjectContext.performAndWait<A>(_:)();

  v2 = v16;
  v3 = [objc_allocWithZone(NSItemProvider) init];
  if (v16)
  {
    v4 = v16;
    if ([v16 compositionIsShareable])
    {
      v5 = [objc_allocWithZone(RCShareableComposition) initWithComposition:v16];
      v16 = 0;
      if ([v5 registerAudioFileRepresentationWithItemProvider:v3 error:&v16])
      {
        v6 = v16;
      }

      else
      {
        v7 = v16;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1002CDD88 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100018D90(v8, qword_1002E8CB0);
        swift_errorRetain();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v11 = 136315394;
          *(v11 + 4) = sub_10001901C(0x766F72506D657469, 0xEC00000072656469, &v16);
          *(v11 + 12) = 2080;
          swift_getErrorValue();
          v12 = Error.localizedDescription.getter();
          v14 = sub_10001901C(v12, v13, &v16);

          *(v11 + 14) = v14;
          _os_log_impl(&_mh_execute_header, v9, v10, "%s Unable to register audio file representation. Error: %s", v11, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }
      }

      EntityProperty.wrappedValue.getter();
      v4 = String._bridgeToObjectiveC()();

      [v3 setSuggestedName:v4];
    }
  }

  return v3;
}

void sub_100147FC8(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedApplicationModel];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 compositionLoadedForSavedRecordingUUID:v3];

  *a1 = v4;
}

uint64_t sub_100148060()
{
  v0 = type metadata accessor for String.LocalizationValue.Placeholder();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100018DC8(v10, qword_1002E8EF8);
  sub_100018D90(v10, qword_1002E8EF8);
  LocalizedStringResource.init(stringLiteral:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  (*(v1 + 104))(v3, enum case for String.LocalizationValue.Placeholder.int(_:), v0);
  String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)();
  (*(v1 + 8))(v3, v0);
  v12._countAndFlagsBits = 0x4944524F43455220;
  v12._object = 0xEB0000000053474ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v9 + 56))(v7, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100148338@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_1000C773C(&unk_1002D38C0, qword_10024C020);
  __chkstk_darwin(v3 - 8);
  v55 = &v48 - v4;
  v5 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v5 - 8);
  v54 = &v48 - v6;
  v7 = type metadata accessor for Date();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v48 - v15;
  __chkstk_darwin(v17);
  v19 = &v48 - v18;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v57);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  v52 = v19;
  LocalizedStringResource.init(stringInterpolation:)();
  EntityProperty.wrappedValue.getter();
  v22 = RCLocalizedDuration();
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x80000001002330C0;
  v26._countAndFlagsBits = 0xD000000000000031;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
  v48 = v23;
  v27._countAndFlagsBits = v23;
  v27._object = v25;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v27);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  v49 = v16;
  LocalizedStringResource.init(stringInterpolation:)();
  v29 = EntityProperty.wrappedValue.getter();
  v31 = *v2;
  v30 = v2[1];
  if (qword_1002CDF00 != -1)
  {
    v29 = swift_once();
  }

  v32 = qword_1002D3430;
  __chkstk_darwin(v29);
  *(&v48 - 4) = v9;
  *(&v48 - 3) = v31;
  *(&v48 - 2) = v30;
  os_unfair_lock_lock((v32 + 24));
  sub_100157010((v32 + 16), &v57._countAndFlagsBits);
  os_unfair_lock_unlock((v32 + 24));
  countAndFlagsBits = v57._countAndFlagsBits;
  object = v57._object;
  (*(v50 + 8))(v9, v51);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000036;
  v35._object = 0x8000000100233100;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
  v36._countAndFlagsBits = countAndFlagsBits;
  v36._object = object;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v36);

  v37._countAndFlagsBits = 0x495441525544202CLL;
  v37._object = 0xEB00000000204E4FLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
  v38._countAndFlagsBits = v48;
  v38._object = v25;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v38);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
  v40 = v53;
  LocalizedStringResource.init(stringInterpolation:)();
  v41 = *(v12 + 8);
  v42 = v49;
  v41(v49, v11);
  (*(v12 + 32))(v42, v40, v11);
  v43 = *(v12 + 16);
  v44 = v52;
  v43(v40, v52, v11);
  v45 = v54;
  v43(v54, v42, v11);
  (*(v12 + 56))(v45, 0, 1, v11);
  v46 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
  DisplayRepresentation.init(title:subtitle:image:)();
  v41(v42, v11);
  return (v41)(v44, v11);
}

unint64_t sub_1001488FC()
{
  result = qword_1002D2C68;
  if (!qword_1002D2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C68);
  }

  return result;
}

id sub_100148950@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100152874(a2);
  *a1 = result;
  return result;
}

unint64_t sub_100148984()
{
  result = qword_1002D2C70;
  if (!qword_1002D2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C70);
  }

  return result;
}

unint64_t sub_1001489D8()
{
  result = qword_1002D2C78;
  if (!qword_1002D2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C78);
  }

  return result;
}

unint64_t sub_100148A30()
{
  result = qword_1002D2C80;
  if (!qword_1002D2C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C80);
  }

  return result;
}

uint64_t sub_100148B3C(uint64_t a1)
{
  v2 = sub_1000DC3A4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100148B8C()
{
  result = qword_1002D2C98;
  if (!qword_1002D2C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2C98);
  }

  return result;
}

uint64_t sub_100148BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002001C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100148CA8(uint64_t a1)
{
  v2 = sub_100148A30();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100148CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10010707C;

  return sub_100152D0C(a2, a3);
}

unint64_t sub_100148DB0()
{
  result = qword_1002D2CA0;
  if (!qword_1002D2CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CA0);
  }

  return result;
}

unint64_t sub_100148E08()
{
  result = qword_1002D2CA8;
  if (!qword_1002D2CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CA8);
  }

  return result;
}

uint64_t sub_100148E5C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001570D0;

  return sub_100152994(a1);
}

uint64_t sub_100148F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001FF1C;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_100148FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100149078;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100149078(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_10014917C()
{
  result = qword_1002D2CB0;
  if (!qword_1002D2CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CB0);
  }

  return result;
}

uint64_t sub_1001491D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1001474F8();
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100149284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001FF1C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100149338()
{
  result = qword_1002D2CC8;
  if (!qword_1002D2CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CC8);
  }

  return result;
}

uint64_t sub_10014938C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8F10);
  sub_100018D90(v0, qword_1002E8F10);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100149414(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1001494AC, v4, v3);
}

uint64_t sub_1001494AC()
{
  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v0[7] = v4, v3, v4))
  {
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_100149624;
    v6 = v0[3];

    return sub_1001946F4(v6, v4);
  }

  else
  {

    sub_1000E454C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100149624()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1000DE154;
  }

  else
  {
    v5 = sub_100157084;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1001497D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C773C(&qword_1002D3048, &qword_10024B180);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000C773C(&qword_1002D3050, &qword_10024B188);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100233050;
  v4._countAndFlagsBits = 0xD00000000000002ALL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_1000C773C(&qword_1002D3058, &qword_10024B1B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100149968(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_100149414(a1, v4);
}

uint64_t sub_100149A08@<X0>(uint64_t *a2@<X8>)
{
  result = sub_100152518();
  *a2 = result;
  return result;
}

unint64_t sub_100149A34()
{
  result = qword_1002D2CE0;
  if (!qword_1002D2CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CE0);
  }

  return result;
}

unint64_t sub_100149A8C()
{
  result = qword_1002D2CE8;
  if (!qword_1002D2CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CE8);
  }

  return result;
}

unint64_t sub_100149B28()
{
  result = qword_1002D2CF0;
  if (!qword_1002D2CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CF0);
  }

  return result;
}

uint64_t sub_100149B7C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8F28);
  sub_100018D90(v0, qword_1002E8F28);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100149BE0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_100149C7C, v3, v2);
}

uint64_t sub_100149C7C()
{
  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v0[7] = v4, v3, v4))
  {
    v0[8] = static MainActor.shared.getter();
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_100149DF8;

    return sub_100199CE4();
  }

  else
  {

    sub_1000E454C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100149DF8()
{
  *(*v1 + 80) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10014A030;
  }

  else
  {
    v4 = sub_100149F54;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100149F54()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_100149FB8, v1, v2);
}

uint64_t sub_100149FB8()
{
  v1 = *(v0 + 56);

  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014A030()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_10014A094, v1, v2);
}

uint64_t sub_10014A094()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014A138(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_100149BE0(a1);
}

uint64_t sub_10014A1D0(uint64_t a1)
{
  v2 = sub_100149B28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10014A20C()
{
  result = qword_1002D2CF8;
  if (!qword_1002D2CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2CF8);
  }

  return result;
}

unint64_t sub_10014A264()
{
  result = qword_1002D60B0;
  if (!qword_1002D60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D60B0);
  }

  return result;
}

unint64_t sub_10014A2BC()
{
  result = qword_1002D2D00;
  if (!qword_1002D2D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D00);
  }

  return result;
}

unint64_t sub_10014A314()
{
  result = qword_1002D2D08;
  if (!qword_1002D2D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D08);
  }

  return result;
}

uint64_t sub_10014A3B0()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8F40);
  sub_100018D90(v0, qword_1002E8F40);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10014A414(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10014A4AC, v3, v2);
}

uint64_t sub_10014A4AC()
{
  v1 = [objc_opt_self() sharedAppDelegate];
  if (v1 && (v2 = v1, v3 = [v1 defaultSceneDelegate], v2, v3) && (v4 = objc_msgSend(v3, "mainViewController"), v0[6] = v4, v3, v4))
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_10014A61C;

    return sub_100195094(v4);
  }

  else
  {

    sub_1000E454C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10014A61C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_10014A7CC;
  }

  else
  {
    v5 = sub_10014A758;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10014A758()
{
  v1 = *(v0 + 48);

  static IntentResult.result<>()();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014A7CC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10014A870(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001FF1C;

  return sub_10014A414(a1);
}

uint64_t sub_10014A908(uint64_t a1)
{
  v2 = sub_10014A264();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10014A948()
{
  result = qword_1002D2D10;
  if (!qword_1002D2D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D10);
  }

  return result;
}

uint64_t sub_10014A99C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8F58);
  sub_100018D90(v0, qword_1002E8F58);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10014AA00(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_10014AB20, v5, v4);
}

uint64_t sub_10014AB20()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[2];
  v0[13] = v1;
  v2 = IntentParameter.projectedValue.getter();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10014ABEC;

  return sub_10015B718(v1, v2);
}

uint64_t sub_10014ABEC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return _swift_task_switch(sub_10014AD54, v4, v3);
}

uint64_t sub_10014AD54()
{
  v1 = v0[16];
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010022E8D0;
  v2._countAndFlagsBits = 0xD000000000000019;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v2);
  v0[3] = *(v1 + 16);
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v3);
  LocalizedStringResource.init(stringInterpolation:)();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_10014AE84;
  v5 = v0[9];
  v6 = v0[5];

  return sub_10014B154(v6, v5);
}

uint64_t sub_10014AE84()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10014B0B8;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10014AFA0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10014AFA0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  v4 = [objc_opt_self() sharedRecordingsModelInteractor];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deleteRecordingsWithUUIDs:isa];

  static IntentResult.result<>()();
  (*(v3 + 8))(v1, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10014B0B8()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10014B154(uint64_t a1, uint64_t a2)
{
  v2[4] = a2;
  v4 = type metadata accessor for ConfirmationActionName();
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();
  v5 = type metadata accessor for ConfirmationConditions();
  v2[8] = v5;
  v2[9] = *(v5 - 8);
  v2[10] = swift_task_alloc();
  v6 = type metadata accessor for LocalizedStringResource();
  v2[11] = v6;
  v2[12] = *(v6 - 8);
  v2[13] = swift_task_alloc();
  v7 = type metadata accessor for IntentDialog();
  v2[14] = v7;
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();
  v2[2] = a1;
  type metadata accessor for MainActor();
  v2[17] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[18] = v9;
  v2[19] = v8;

  return _swift_task_switch(sub_10014B364, v9, v8);
}

uint64_t sub_10014B364()
{
  v1 = [objc_opt_self() sharedSettingsUserDefaults];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rc_deletionIsImmediate];

    if (v3)
    {
      (*(v0[12] + 16))(v0[13], v0[4], v0[11]);
      IntentDialog.init(_:)();
      v0[3] = _swiftEmptyArrayStorage;
      sub_100156FC8(&qword_1002CF800, &type metadata accessor for ConfirmationConditions, &protocol conformance descriptor for ConfirmationConditions);
      sub_1000C773C(&qword_1002CF808, &qword_10024B160);
      sub_100008034(&qword_1002CF810, &qword_1002CF808, &qword_10024B160, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      static ConfirmationActionName.continue.getter();
      v4 = swift_task_alloc();
      v0[20] = v4;
      v5 = sub_100012C70();
      *v4 = v0;
      v4[1] = sub_10014B640;
      v6 = v0[16];
      v7 = v0[10];
      v8 = v0[7];

      return AppIntent.requestConfirmation(conditions:actionName:dialog:)(v7, v8, v6, &type metadata for DeleteRecording, v5);
    }

    v9 = v0[1];
  }

  else
  {

    sub_1000E45A0();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_10014B640()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  (*(v2[6] + 8))(v2[7], v2[5]);
  (*(v4 + 8))(v3, v5);
  v6 = v2[19];
  v7 = v2[18];
  if (v0)
  {
    v8 = sub_10014B8D8;
  }

  else
  {
    v8 = sub_10014B824;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10014B824()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10014B8D8()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10014BA44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_10014AA00(a1, v4);
}

uint64_t sub_10014BAE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100153488();
  *a1 = result;
  return result;
}

uint64_t sub_10014BB0C()
{
  v0 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100018DC8(v5, qword_1002E8F70);
  sub_100018D90(v5, qword_1002E8F70);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10014BC7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEB00000000656369;
  v3 = 0x656C695370696B73;
  v4 = *a1;
  v5 = 0x6F566F6964757473;
  if (v4 == 1)
  {
    v5 = 0x656C695370696B73;
    v6 = 0xEB0000000065636ELL;
  }

  else
  {
    v6 = 0xEB00000000656369;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000010022D240;
  }

  if (*a2 == 1)
  {
    v2 = 0xEB0000000065636ELL;
  }

  else
  {
    v3 = 0x6F566F6964757473;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000010022D240;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_10014BD7C()
{
  result = qword_1002D2D28;
  if (!qword_1002D2D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D28);
  }

  return result;
}

Swift::Int sub_10014BDD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014BE80(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10014BF1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10014BFC8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001537BC(*a1);
  *a2 = result;
  return result;
}

void sub_10014BFF8(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000065636ELL;
  v3 = 0x656C695370696B73;
  if (*v1 != 1)
  {
    v3 = 0x6F566F6964757473;
    v2 = 0xEB00000000656369;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (*v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0x800000010022D240;
  }

  *a1 = v4;
  a1[1] = v5;
}

unint64_t sub_10014C068()
{
  result = qword_1002D2D30;
  if (!qword_1002D2D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D30);
  }

  return result;
}

unint64_t sub_10014C0C0()
{
  result = qword_1002D2D38;
  if (!qword_1002D2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D38);
  }

  return result;
}

unint64_t sub_10014C118()
{
  result = qword_1002D2D40;
  if (!qword_1002D2D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D40);
  }

  return result;
}

unint64_t sub_10014C17C()
{
  result = qword_1002D2D48;
  if (!qword_1002D2D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D48);
  }

  return result;
}

unint64_t sub_10014C1D0()
{
  result = qword_1002D2D50;
  if (!qword_1002D2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D50);
  }

  return result;
}

unint64_t sub_10014C224()
{
  result = qword_1002D2D58;
  if (!qword_1002D2D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D58);
  }

  return result;
}

unint64_t sub_10014C27C()
{
  result = qword_1002D2D60;
  if (!qword_1002D2D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D60);
  }

  return result;
}

unint64_t sub_10014C334()
{
  result = qword_1002D2D68;
  if (!qword_1002D2D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D68);
  }

  return result;
}

uint64_t sub_10014C388(uint64_t a1)
{
  v2 = sub_10014C334();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014C3D8()
{
  result = qword_1002D2D70;
  if (!qword_1002D2D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D70);
  }

  return result;
}

unint64_t sub_10014C430()
{
  result = qword_1002D2D78;
  if (!qword_1002D2D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D78);
  }

  return result;
}

unint64_t sub_10014C488()
{
  result = qword_1002D2D80;
  if (!qword_1002D2D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D80);
  }

  return result;
}

unint64_t sub_10014C4DC()
{
  sub_1000C773C(&qword_1002D3038, &unk_10024B140);
  v0 = *(sub_1000C773C(&qword_1002CECD0, &qword_100241E20) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100244070;
  v4 = (v3 + v2);
  *v4 = 0;
  DisplayRepresentation.init(stringLiteral:)();
  v4[v1] = 1;
  DisplayRepresentation.init(stringLiteral:)();
  v4[2 * v1] = 2;
  DisplayRepresentation.init(stringLiteral:)();
  v5 = sub_1000D4874(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_10014C678(uint64_t a1)
{
  v2 = sub_10014C27C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10014C71C()
{
  result = qword_1002D2D98;
  if (!qword_1002D2D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2D98);
  }

  return result;
}

uint64_t sub_10014C774()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8F88);
  sub_100018D90(v0, qword_1002E8F88);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10014C7D8()
{
  v0 = type metadata accessor for IntentModes.ForegroundMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntentModes();
  sub_100018DC8(v4, qword_1002E8FA0);
  sub_100018D90(v4, qword_1002E8FA0);
  sub_1000C773C(&qword_1002D3028, &qword_10024B130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  static IntentModes.ForegroundMode.deferred.getter();
  static IntentModes.foreground(_:)();
  (*(v1 + 8))(v3, v0);
  v7[1] = v5;
  sub_100156FC8(&unk_1002D3880, &type metadata accessor for IntentModes, &protocol conformance descriptor for IntentModes);
  sub_1000C773C(&qword_1002D3030, &qword_10024B138);
  sub_100008034(&qword_1002D3890, &qword_1002D3030, &qword_10024B138, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_10014CA28(uint64_t a1)
{
  v2 = type metadata accessor for ChangeOperation();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_10014CB18(uint64_t *a1))(void *)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100157088;
}

void *sub_10014CB8C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_10014CC00(uint64_t *a1))(void *)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100157088;
}

uint64_t sub_10014CD50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100153808();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014CD7C()
{
  result = qword_1002D2DB0;
  if (!qword_1002D2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DB0);
  }

  return result;
}

uint64_t sub_10014CDD0()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8FB8);
  sub_100018D90(v0, qword_1002E8FB8);
  return LocalizedStringResource.init(stringLiteral:)();
}

__n128 sub_10014CE34@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10014CE7C(void *a1)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_10014CF14(uint64_t *a1))(void *)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10014CF88;
}

uint64_t sub_10014D010@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100153D38();
  *a1 = result;
  return result;
}

uint64_t sub_10014D038()
{
  v0 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100018DC8(v5, qword_1002E8FD0);
  sub_100018D90(v5, qword_1002E8FD0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10014D1A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6369666963657073;
  }

  else
  {
    v3 = 0x6563655274736F6DLL;
  }

  if (v2)
  {
    v4 = 0xEA0000000000746ELL;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6369666963657073;
  }

  else
  {
    v5 = 0x6563655274736F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA0000000000746ELL;
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

unint64_t sub_10014D258()
{
  result = qword_1002D2DC8;
  if (!qword_1002D2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DC8);
  }

  return result;
}

Swift::Int sub_10014D2AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014D334(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10014D3A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10014D42C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CF18, *a1);

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

void sub_10014D48C(uint64_t *a1@<X8>)
{
  v2 = 0x6563655274736F6DLL;
  if (*v1)
  {
    v2 = 0x6369666963657073;
  }

  v3 = 0xEA0000000000746ELL;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10014D4D4()
{
  result = qword_1002D2DD0;
  if (!qword_1002D2DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DD0);
  }

  return result;
}

unint64_t sub_10014D52C()
{
  result = qword_1002D2DD8;
  if (!qword_1002D2DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DD8);
  }

  return result;
}

unint64_t sub_10014D584()
{
  result = qword_1002D2DE0;
  if (!qword_1002D2DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DE0);
  }

  return result;
}

unint64_t sub_10014D5DC()
{
  result = qword_1002D2DE8;
  if (!qword_1002D2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DE8);
  }

  return result;
}

unint64_t sub_10014D630()
{
  result = qword_1002D2DF0;
  if (!qword_1002D2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DF0);
  }

  return result;
}

unint64_t sub_10014D684()
{
  result = qword_1002D2DF8;
  if (!qword_1002D2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2DF8);
  }

  return result;
}

unint64_t sub_10014D6DC()
{
  result = qword_1002D2E00;
  if (!qword_1002D2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E00);
  }

  return result;
}

unint64_t sub_10014D7DC()
{
  result = qword_1002D2E08;
  if (!qword_1002D2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E08);
  }

  return result;
}

uint64_t sub_10014D830(uint64_t a1)
{
  v2 = sub_10014D7DC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10014D880()
{
  result = qword_1002D2E10;
  if (!qword_1002D2E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E10);
  }

  return result;
}

unint64_t sub_10014D8D8()
{
  result = qword_1002D2E18;
  if (!qword_1002D2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E18);
  }

  return result;
}

unint64_t sub_10014D930()
{
  result = qword_1002D2E20;
  if (!qword_1002D2E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E20);
  }

  return result;
}

unint64_t sub_10014D984()
{
  sub_1000C773C(&qword_1002D3020, &unk_10024B120);
  v0 = *(sub_1000C773C(&qword_1002CECC0, &qword_100241E10) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100241790;
  v4 = (v3 + v2);
  *v4 = 0;
  DisplayRepresentation.init(stringLiteral:)();
  v4[v1] = 1;
  DisplayRepresentation.init(stringLiteral:)();
  v5 = sub_1000D4A5C(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v5;
}

uint64_t sub_10014DAE0(uint64_t a1)
{
  v2 = sub_10014D6DC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10014DBB8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E8FE8);
  sub_100018D90(v0, qword_1002E8FE8);
  return LocalizedStringResource.init(stringLiteral:)();
}

double sub_10014DC50@<D0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_10014DCB8@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1000C773C(&qword_1002D2FD0, &qword_10024B0C0);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = v25 - v5;
  v6 = sub_1000C773C(&qword_1002D2FD8, &qword_10024B0C8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  __chkstk_darwin(v12);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_1000C773C(&qword_1002D2FE0, &qword_10024B0D0);
  v25[3] = sub_100012DB0();
  v14 = sub_10014D684();
  v25[2] = sub_100008034(&qword_1002D2FE8, &qword_1002D2FE0, &qword_10024B0D0, &protocol conformance descriptor for IntentParameterSummary<A>);
  ParameterSummaryCaseCondition.init(_:_:)();
  v25[1] = sub_100008034(&qword_1002D2FF0, &qword_1002D2FD8, &qword_10024B0C8, &protocol conformance descriptor for ParameterSummaryCaseCondition<A, B, C>);
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  ParameterSummaryCaseCondition.init(_:_:)();
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v36(v15, v6);
  v16 = v30;
  ParameterSummaryDefaultCaseCondition.init(_:)();
  sub_100008034(&qword_1002D2FF8, &qword_1002D2FD0, &qword_10024B0C0, &protocol conformance descriptor for ParameterSummaryDefaultCaseCondition<A, B, C>);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  static ParameterSummaryCaseBuilder.buildExpression<A>(_:)();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  static ParameterSummaryCaseBuilder.buildBlock<A, B, C>(_:_:_:)();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_10014E184@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1000C773C(&qword_1002D3000, &qword_10024B0D8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000C773C(&qword_1002D3008, &qword_10024B0E0);
  __chkstk_darwin(v2);
  v3 = sub_1000C773C(&qword_1002D2FE0, &qword_10024B0D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  sub_100012DB0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100232E60;
  v10._countAndFlagsBits = 0xD000000000000031;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1000C773C(&qword_1002D3010, &qword_10024B0E8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  sub_1000C773C(&qword_1002D3018, &qword_10024B118);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v12);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_100008034(&qword_1002D2FE8, &qword_1002D2FE0, &qword_10024B0D0, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v13)(v9, v3);
}

uint64_t sub_10014E4B0@<X0>(uint64_t a1@<X8>)
{
  v14[1] = a1;
  v1 = sub_1000C773C(&qword_1002D3000, &qword_10024B0D8);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1000C773C(&qword_1002D3008, &qword_10024B0E0);
  __chkstk_darwin(v2);
  v3 = sub_1000C773C(&qword_1002D2FE0, &qword_10024B0D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  sub_100012DB0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._object = 0x8000000100232E20;
  v10._countAndFlagsBits = 0xD000000000000034;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  sub_1000C773C(&qword_1002D3010, &qword_10024B0E8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v11);
  ParameterSummaryString.init(stringInterpolation:)();
  IntentParameterSummary.init(_:table:)();
  sub_100008034(&qword_1002D2FE8, &qword_1002D2FE0, &qword_10024B0D0, &protocol conformance descriptor for IntentParameterSummary<A>);
  static ParameterSummaryBuilder.buildExpression<A>(_:)();
  v12 = *(v4 + 8);
  v12(v6, v3);
  static ParameterSummaryBuilder.buildBlock<A>(_:)();
  return (v12)(v9, v3);
}

uint64_t sub_10014E790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v5;
  v3[12] = v4;

  return _swift_task_switch(sub_10014E82C, v5, v4);
}

uint64_t sub_10014E82C()
{
  sub_1000DF818(v0 + 2);
  v1 = sub_10000AACC(v0 + 2, v0[5]);
  v3 = *v1;
  v2 = v1[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10014E930;
  v6 = v0[8];
  v5 = v0[9];

  return sub_100197BA8(v6, v5, v3, v2);
}

uint64_t sub_10014E930()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1000DF7AC;
  }

  else
  {
    v5 = sub_10014EA6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10014EA6C()
{

  static IntentResult.result<>()();
  sub_100014B64((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10014EB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for IntentAuthenticationPolicy.requiresLocalDeviceAuthentication(_:);
  v3 = type metadata accessor for IntentAuthenticationPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10014EB90(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1000C773C(&qword_1002D2FC0, &qword_10024B0B8);
  v5 = sub_100008034(&qword_1002D2FC8, &qword_1002D2FC0, &qword_10024B0B8, &protocol conformance descriptor for ParameterSummaryTupleCaseCondition<A, B, C>);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_10014DCB8, 0, v4, a2, v5);
}

uint64_t sub_10014EC58(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002001C;

  return sub_10014E790(a1, v5, v4);
}

uint64_t sub_10014ED04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100154074();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10014ED30()
{
  result = qword_1002D2E48;
  if (!qword_1002D2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E48);
  }

  return result;
}

uint64_t sub_10014ED84()
{
  sub_1000C773C(&qword_1002D0780, &qword_1002444E0);
  type metadata accessor for _AssistantIntent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100249700;
  sub_100154074();
  sub_100012DB0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100154074();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100152518();
  sub_100012A90();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100149B28();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100153488();
  sub_100012C70();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100153808();
  sub_1000130A8();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100153D38();
  sub_100012F68();
  result = _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  qword_1002E9000 = v0;
  return result;
}

uint64_t sub_10014F0AC()
{
  v0 = sub_1000C773C(&qword_1002D2FA0, &qword_10024B048);
  v15 = *(v0 - 8);
  v16 = v0;
  __chkstk_darwin(v0);
  v2 = &v15 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D2FA8, &qword_10024B050);
  __chkstk_darwin(v7);
  sub_100012DB0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x2079616C70;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  sub_10014D684();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  (*(v4 + 104))(v6, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v3);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v4 + 8))(v6, v3);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v11 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (*(v15 + 8))(v2, v16);
  sub_1000C773C(&qword_1002D2FB0, &qword_10024B058);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100242C70;
  *(v12 + 32) = v11;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10014F410()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000C773C(&qword_1002D37E0, &qword_100244518);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100242C70;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10014F498(uint64_t a1)
{
  v27 = a1;
  v30 = sub_1000C773C(&qword_1002D2FA0, &qword_10024B048);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = v20 - v1;
  v2 = type metadata accessor for _AssistantIntent.PhraseToken();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C773C(&qword_1002D2FA8, &qword_10024B050);
  __chkstk_darwin(v6);
  v24 = sub_100012DB0();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x2079616C70;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v26 = sub_100156EFC(&qword_1002D2F98, &qword_1002CF488, qword_100242750, &protocol conformance descriptor for <A> A?);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 32;
  v8._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v23 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v22 = *(v3 + 104);
  v22(v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v9 = *(v3 + 8);
  v20[1] = v3 + 8;
  v21 = v9;
  v9(v5, v2);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v11 = v29;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = *(v28 + 8);
  (v28)(v11, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D2079616C70;
  v12._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  (v22)(v5, v23, v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v21(v5, v2);
  v13._countAndFlagsBits = 32;
  v13._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v29;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v28)(v15, v30);
  sub_1000C773C(&qword_1002D2FB0, &qword_10024B058);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100241790;
  *(v17 + 32) = v25;
  *(v17 + 40) = v16;
  v18 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v18;
}

uint64_t sub_10014F98C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100156EFC(&qword_1002D2F98, &qword_1002CF488, qword_100242750, &protocol conformance descriptor for <A> A?);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100012DB0();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10014FB28(uint64_t a1)
{
  v77 = a1;
  v1 = sub_1000C773C(&qword_1002D2F80, &qword_10024B008);
  v85 = *(v1 - 8);
  v86 = v1;
  __chkstk_darwin(v1);
  v3 = &v66 - v2;
  v4 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C773C(&qword_1002D2F88, &qword_10024B010);
  __chkstk_darwin(v8);
  v9 = sub_100012A90();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6120657461657263;
  v10._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v81 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v82 = *(v5 + 104);
  v83 = v5 + 104;
  v82(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v84 = *(v5 + 8);
  v80 = v5 + 8;
  v84(v7, v4);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v75 = v9;
  v73 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = *(v85 + 8);
  v85 += 8;
  v79 = v12;
  v12(v3, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x20657461657243;
  v13._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v76 = sub_100156E78();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 544106784;
  v14._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v15 = v81;
  v78 = v4;
  v16 = v82;
  (v82)(v7, v81, v4);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v17 = v84;
  v84(v7, v4);
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v74 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v72 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v79(v3, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0x20657461657263;
  v19._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  v20 = v15;
  v21 = v78;
  v16(v7, v20, v78);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v22 = v21;
  v17(v7, v21);
  v23._countAndFlagsBits = 0x2064656D616E20;
  v23._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v71 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26 = v79;
  v79(v25, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0x2061207472617473;
  v27._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  (v82)(v7, v81, v22);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v84(v7, v22);
  v28._countAndFlagsBits = 0x2064656C6C616320;
  v28._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  v30 = v74;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v70 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v26(v30, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0x612064726F636572;
  v31._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v78;
  (v82)(v7, v81, v78);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v84(v7, v32);
  v33._countAndFlagsBits = 0x2064656C6C616320;
  v33._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v77 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v35 = v30;
  v36 = v86;
  v79(v30, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0x612064726F636572;
  v37._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v81;
  v39 = v82;
  (v82)(v7, v81, v32);
  v67 = v7;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v84(v7, v32);
  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v40);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v76 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v41 = v36;
  v42 = v79;
  v79(v35, v41);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0x612064726F636572;
  v43._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  v44 = v67;
  v45 = v38;
  v46 = v78;
  v39(v67, v45, v78);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v47 = v44;
  v48 = v44;
  v49 = v84;
  v84(v47, v46);
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v50);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v69 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42(v35, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v51._object = 0x8000000100232DC0;
  v51._countAndFlagsBits = 0xD000000000000012;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v51);
  v52 = v78;
  (v82)(v48, v81, v78);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v49(v48, v52);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v53);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v54 = v86;
  v55 = v79;
  v79(v35, v86);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v56._countAndFlagsBits = 0xD000000000000016;
  v56._object = 0x8000000100232DE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v56);
  (v82)(v48, v81, v52);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v84(v48, v52);
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v57);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v55(v35, v54);
  sub_1000C773C(&qword_1002D2F90, &qword_10024B018);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100249710;
  v60 = v72;
  *(v59 + 32) = v73;
  *(v59 + 40) = v60;
  v61 = v70;
  *(v59 + 48) = v71;
  *(v59 + 56) = v61;
  v62 = v76;
  *(v59 + 64) = v77;
  *(v59 + 72) = v62;
  v63 = v68;
  *(v59 + 80) = v69;
  *(v59 + 88) = v63;
  *(v59 + 96) = v58;
  v64 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v64;
}

uint64_t sub_1001506F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v7 = type metadata accessor for _AssistantIntent.Value();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  _AssistantIntent.IntentProjection.subscript.getter();

  a4(v11);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v12 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v8 + 8))(v10, v7);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100242C70;
  *(v13 + 32) = v12;
  v14 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v14;
}

uint64_t sub_100150870()
{
  v18 = type metadata accessor for _AssistantIntent.PhraseToken();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002D2F60, &qword_10024AFC0);
  __chkstk_darwin(v3);
  v4 = sub_1000C773C(&qword_1002D2F68, &qword_10024AFC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  sub_100149B28();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796D20706F7473;
  v9._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v10 = v18;
  (*(v0 + 104))(v2, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v18);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v0 + 8))(v2, v10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v12 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v13 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v14 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v4);
  sub_1000C773C(&qword_1002D2F70, &qword_10024AFD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100241D40;
  *(v15 + 32) = v19;
  *(v15 + 40) = v12;
  *(v15 + 48) = v13;
  *(v15 + 56) = v14;
  v16 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v16;
}

uint64_t sub_100150C34(uint64_t a1)
{
  v2 = sub_1000C773C(&qword_1002D2F38, &qword_10024AFA0);
  v3 = *(v2 - 8);
  v51 = v2;
  v52 = v3;
  __chkstk_darwin(v2);
  v5 = &v37 - v4;
  v6 = type metadata accessor for _AssistantIntent.PhraseToken();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C773C(&qword_1002D2F40, &qword_10024AFA8);
  __chkstk_darwin(v10);
  sub_100012C70();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x206574656C6544;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v47 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = *(v7 + 104);
  v45 = v7 + 104;
  v46 = v12;
  v42 = v6;
  v12(v9);
  v41 = v9;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v7 + 8);
  v43 = v7 + 8;
  v44 = v13;
  v13(v9, v6);
  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  v15 = sub_100156EFC(&qword_1002D2F30, &qword_1002D2CC0, qword_100249AA0, &protocol conformance descriptor for <A> [A]);
  v49 = a1;
  v50 = v15;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v51;
  v18 = *(v52 + 8);
  v52 += 8;
  v38 = v18;
  v18(v5, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._object = 0x8000000100232CF0;
  v19._countAndFlagsBits = 0xD000000000000011;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21 = v17;
  v22 = v38;
  v38(v5, v21);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0xD000000000000019;
  v23._object = 0x8000000100232D10;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v51;
  v22(v5, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._countAndFlagsBits = 0x206574656C6564;
  v26._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v41;
  v28 = v42;
  v46(v41, v47, v42);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v44(v27, v28);
  v29._countAndFlagsBits = 0x2064656C6C616320;
  v29._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22(v5, v25);
  sub_1000C773C(&qword_1002D2F48, &qword_10024AFB0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100241D40;
  v33 = v39;
  v34 = v40;
  *(v32 + 32) = v48;
  *(v32 + 40) = v34;
  *(v32 + 48) = v33;
  *(v32 + 56) = v31;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t sub_100151290()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100156EFC(&qword_1002D2F30, &qword_1002D2CC0, qword_100249AA0, &protocol conformance descriptor for <A> [A]);
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100012C70();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_1000C773C(&qword_1002D0788, &qword_100244510);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10015142C(uint64_t a1)
{
  v24 = a1;
  v1 = type metadata accessor for _AssistantIntent.PhraseToken();
  v27 = *(v1 - 8);
  v28 = v1;
  __chkstk_darwin(v1);
  v26 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002D2EF0, &qword_10024AF48);
  __chkstk_darwin(v3);
  v4 = sub_1000C773C(&qword_1002D2EF8, &qword_10024AF50);
  v30 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  sub_1000130A8();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v23 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD000000000000028;
  v9._object = 0x8000000100232BE0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v22[1] = sub_10014C224();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v7, v30);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x2065676E616863;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v12 = v26;
  v13 = v27;
  v14 = v28;
  (*(v27 + 104))(v26, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v28);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  (*(v13 + 8))(v12, v14);
  v15._countAndFlagsBits = 0x676E697474657320;
  v15._object = 0xEC000000206F7420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v7, v30);
  sub_1000C773C(&qword_1002D2F00, &qword_10024AF58);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100244070;
  v19 = v25;
  *(v18 + 32) = v29;
  *(v18 + 40) = v19;
  *(v18 + 48) = v17;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_1001518F4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_1000C773C(&qword_1002D37E0, &qword_100244518);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100244070;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_1001519C4(uint64_t a1)
{
  v35 = a1;
  v31 = type metadata accessor for _AssistantIntent.PhraseToken();
  v36 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002D2ED0, &qword_10024AF00);
  v29 = v3;
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1000C773C(&qword_1002D2ED8, &qword_10024AF08);
  __chkstk_darwin(v6);
  sub_100012F68();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x636572206E65706FLL;
  v7._object = 0xEF20676E6964726FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v34 = sub_10012EC78();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = *(v37 + 8);
  v37 += 8;
  v32 = v9;
  v33 = v10;
  v10(v5, v3);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x206E65706FLL;
  v11._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v28 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v12 = v36;
  v27 = *(v36 + 104);
  v13 = v31;
  v27(v2);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v14 = *(v12 + 8);
  v36 = v12 + 8;
  v26 = v14;
  v14(v2, v13);
  v15._countAndFlagsBits = 32;
  v15._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v29;
  v33(v5, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x207463656C6573;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  (v27)(v2, v28, v13);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v2, v13);
  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v33(v5, v17);
  sub_1000C773C(&qword_1002D2EE0, &qword_10024AF10);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100244070;
  v23 = v30;
  *(v22 + 32) = v32;
  *(v22 + 40) = v23;
  *(v22 + 48) = v21;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_100151F20(void *a1)
{

  return IntentParameter.wrappedValue.setter();
}

unint64_t sub_100152038()
{
  result = qword_1002D2E50;
  if (!qword_1002D2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E50);
  }

  return result;
}

uint64_t sub_10015208C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100105618;

  return sub_10015497C();
}

unint64_t sub_100152134()
{
  result = qword_1002D2E58;
  if (!qword_1002D2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2E58);
  }

  return result;
}

uint64_t sub_100152188(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10010707C;

  return sub_100154C9C();
}

uint64_t sub_100152218()
{
  v0 = type metadata accessor for ShortcutTileColor();
  sub_100018DC8(v0, qword_1002E9010);
  v1 = sub_100018D90(v0, qword_1002E9010);
  v2 = enum case for ShortcutTileColor.red(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1001522DC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100018D90(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

__n128 sub_100152464(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100152478(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1001524C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100152518()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000C773C(&unk_1002D3840, &unk_100244540);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D1D28, &qword_100246C00);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = type metadata accessor for String.IntentInputOptions();
  v19 = 0;
  v20 = 0;
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  IntentDialog.init(stringLiteral:)();
  v15 = type metadata accessor for IntentDialog();
  (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  return IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
}

id sub_100152874(uint64_t a1)
{
  v1 = [objc_opt_self() sharedApplicationModel];
  v2 = [v1 context];
  sub_1000C773C(&qword_1002D3068, &qword_10024B1D8);
  NSManagedObjectContext.performAndWait<A>(_:)();

  v3 = objc_opt_self();
  sub_1000067AC(0, &qword_1002D02B8, RCComposition_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 activityItemsConfigurationForCompositions:isa];

  return v5;
}

uint64_t sub_100152994(uint64_t a1)
{
  *(v1 + 56) = a1;
  type metadata accessor for MainActor();
  *(v1 + 64) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100152A2C, v3, v2);
}

uint64_t sub_100152A2C()
{
  v1 = *(v0 + 56);

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = v1 + 40;
LABEL_2:
  v5 = v4 + 16 * v2;
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_29;
    }

    v7 = objc_opt_self();

    v8 = [v7 sharedRecordingsModelInteractor];
    v9 = String._bridgeToObjectiveC()();
    v10 = [v8 recordingForUUID:v9];

    v5 += 16;
    ++v2;
    if (v10)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v6;
      v4 = v1 + 40;
      goto LABEL_2;
    }
  }

  v3 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_32:
  v11 = _CocoaArrayWrapper.endIndex.getter();
LABEL_12:
  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  while (v11 != v12)
  {
    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v3 + 16))
      {
        goto LABEL_31;
      }

      v14 = _swiftEmptyArrayStorage[v12 + 4];
    }

    v15 = v14;
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_30;
    }

    sub_100147558((v0 + 16));
    v17 = *(v0 + 16);
    v26 = *(v0 + 40);
    v27 = *(v0 + 24);

    ++v12;
    if (v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_1000F2648(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      v21 = v26;
      v20 = v27;
      if (v19 >= v18 >> 1)
      {
        v23 = sub_1000F2648((v18 > 1), v19 + 1, 1, v13);
        v21 = v26;
        v20 = v27;
        v13 = v23;
      }

      *(v13 + 2) = v19 + 1;
      v22 = &v13[40 * v19];
      *(v22 + 4) = v17;
      *(v22 + 40) = v20;
      *(v22 + 56) = v21;
      v12 = v16;
    }
  }

  v24 = *(v0 + 8);

  return v24(v13);
}

uint64_t sub_100152D0C(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_1000C773C(&qword_1002CF9D8, &qword_100242DB0);
  v2[18] = swift_task_alloc();
  v3 = type metadata accessor for CharacterSet();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100152E6C, v5, v4);
}

uint64_t sub_100152E6C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];

  v6 = [objc_opt_self() sharedApplicationModel];
  v0[7] = v5;
  v0[8] = v4;
  static CharacterSet.whitespaces.getter();
  sub_100028710();
  v55 = StringProtocol.trimmingCharacters(in:)();
  v8 = v7;
  v54 = *(v3 + 8);
  v54(v1, v2);
  v9 = String._bridgeToObjectiveC()();
  v0[15] = 0;
  v10 = v0 + 15;
  v11 = [v6 existingRecordingsWithName:v9 searchOption:2 error:v0 + 15];

  v12 = v0[15];
  if (v11)
  {
    sub_1000067AC(0, &qword_1002D1208, RCCloudRecording_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    if (v13 >> 62)
    {
      goto LABEL_23;
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v6; v15; i = v6)
    {
      v16 = 0;
      v50 = v10;
      v56 = v13 & 0xFFFFFFFFFFFFFF8;
      v57 = v13 & 0xC000000000000001;
      v60 = v0;
      v52 = v15;
      v53 = v13;
      while (1)
      {
        if (v57)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v16 >= *(v56 + 16))
          {
            goto LABEL_22;
          }

          v18 = *(v13 + 8 * v16 + 32);
        }

        v19 = v18;
        v0 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v20 = [v18 title];
        if (v20)
        {
          v58 = v19;
          v21 = v60[21];
          v22 = v60[18];
          v10 = v60[19];
          v23 = v20;
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v8;
          v27 = v26;

          v60[9] = v24;
          v60[10] = v27;
          static CharacterSet.whitespaces.getter();
          v28 = StringProtocol.trimmingCharacters(in:)();
          v6 = v29;
          v54(v21, v10);
          v8 = v25;

          v60[11] = v28;
          v60[12] = v6;
          v60[13] = v55;
          v60[14] = v25;
          v30 = type metadata accessor for Locale();
          (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
          v31 = StringProtocol.compare<A>(_:options:range:locale:)();
          sub_100003CBC(v22, &qword_1002CF9D8, &qword_100242DB0);

          if (v31)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v10 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          v15 = v52;
          v13 = v53;
          v0 = (v16 + 1);
        }

        else
        {
        }

        ++v16;
        v17 = v0 == v15;
        v0 = v60;
        if (v17)
        {
          v10 = v50;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

LABEL_24:
    v35 = v10 - 13;

    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
LABEL_45:
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = _swiftEmptyArrayStorage[2];
    }

    v37 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (v36 != v37)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v37 >= _swiftEmptyArrayStorage[2])
        {
          goto LABEL_44;
        }

        v39 = _swiftEmptyArrayStorage[v37 + 4];
      }

      v40 = v39;
      v41 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      sub_100147558(v35);
      v42 = v0[2];
      v61 = *(v0 + 3);
      v59 = *(v0 + 5);

      ++v37;
      if (v61)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1000F2648(0, *(v38 + 2) + 1, 1, v38);
        }

        v44 = *(v38 + 2);
        v43 = *(v38 + 3);
        v45 = v61;
        v46 = v59;
        if (v44 >= v43 >> 1)
        {
          v48 = sub_1000F2648((v43 > 1), v44 + 1, 1, v38);
          v46 = v59;
          v45 = v61;
          v38 = v48;
        }

        *(v38 + 2) = v44 + 1;
        v47 = &v38[40 * v44];
        *(v47 + 4) = v42;
        *(v47 + 40) = v45;
        *(v47 + 56) = v46;
        v37 = v41;
      }
    }

    v49 = v0[1];

    return v49(v38);
  }

  else
  {
    v32 = v12;

    _convertNSErrorToError(_:)();

    swift_willThrow();

    v33 = v0[1];

    return v33();
  }
}

uint64_t sub_100153488()
{
  v17[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D2F50, &qword_10024AFB8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v17[1] = 0;
  IntentDialog.init(stringLiteral:)();
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100156E24();
  sub_1000DC3A4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

unint64_t sub_1001537BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10028CE38, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100153808()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v33 = v0;
  v34 = v1;
  __chkstk_darwin(v0);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v5;
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_1000C773C(&qword_1002D2F08, &qword_10024AF60);
  __chkstk_darwin(v9 - 8);
  v11 = &v25 - v10;
  v26 = &v25 - v10;
  v12 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for LocalizedStringResource();
  v32 = v15;
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v30 = sub_1000C773C(&qword_1002D2F10, &qword_10024AF68);
  LocalizedStringResource.init(stringLiteral:)();
  v31 = *(v16 + 56);
  v31(v14, 1, 1, v15);
  v17 = type metadata accessor for ChangeOperation();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v20 = v8;
  v19(v8, 1, 1, v18);
  v19(v5, 1, 1, v18);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v21 = *(v34 + 104);
  v34 += 104;
  v28 = v21;
  v22 = v29;
  v21(v29);
  sub_100156FC8(&qword_1002D2F18, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_100156FC8(&qword_1002D2F20, &type metadata accessor for ChangeOperation, &protocol conformance descriptor for ChangeOperation);
  v23 = v25;
  v30 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v26 = sub_1000C773C(&qword_1002D2F28, &qword_10024AF70);
  LocalizedStringResource.init(stringLiteral:)();
  v31(v14, 1, 1, v32);
  v35 = 3;
  IntentDialog.init(stringLiteral:)();
  v19(v20, 0, 1, v18);
  v19(v23, 1, 1, v18);
  v28(v22, v27, v33);
  sub_10014C334();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v30;
}

uint64_t sub_100153D38()
{
  v18 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_1000C773C(&qword_1002D2EE8, &qword_10024AF18);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 1, 1, v12);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  IntentDialog.init(stringLiteral:)();
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 0, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_100156D60();
  sub_1000DC3A4();
  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
}

uint64_t sub_100154074()
{
  v27 = type metadata accessor for InputConnectionBehavior();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v8 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for LocalizedStringResource();
  v24 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v25 = sub_1000C773C(&qword_1002D2EB8, &qword_10024AEA8);
  LocalizedStringResource.init(stringLiteral:)();
  v23 = *(v12 + 56);
  v23(v10, 1, 1, v11);
  LOBYTE(v28) = 0;
  v13 = type metadata accessor for IntentDialog();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v19 = v4;
  v14(v4, 1, 1, v13);
  v22 = enum case for InputConnectionBehavior.default(_:);
  v15 = *(v0 + 104);
  v20 = v0 + 104;
  v21 = v15;
  v16 = v26;
  v15(v26);
  sub_10014D7DC();
  v25 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  sub_1000C773C(&qword_1002D2EC0, &unk_10024AEB0);
  LocalizedStringResource.init(stringLiteral:)();
  v23(v10, 1, 1, v24);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  IntentDialog.init(stringLiteral:)();
  v14(v7, 0, 1, v13);
  v14(v19, 1, 1, v13);
  v21(v16, v22, v27);
  sub_100156D60();
  sub_1000DC3A4();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  return v25;
}

uint64_t sub_1001544B4(int a1, __int128 *a2)
{
  v31 = a2;
  v30 = a1;
  v33 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for LocalizedStringResource();
  v29 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v24 = sub_1000C773C(&qword_1002D2EB8, &qword_10024AEA8);
  LocalizedStringResource.init(stringLiteral:)();
  v28 = *(v14 + 56);
  v28(v12, 1, 1, v13);
  LOBYTE(v35) = 0;
  v15 = type metadata accessor for IntentDialog();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v6, 1, 1, v15);
  v27 = enum case for InputConnectionBehavior.default(_:);
  v17 = *(v2 + 104);
  v25 = v2 + 104;
  v26 = v17;
  v17(v32);
  sub_10014D7DC();
  v18 = v6;
  v19 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v24 = sub_1000C773C(&qword_1002D2EC0, &unk_10024AEB0);

  LocalizedStringResource.init(stringLiteral:)();
  v28(v12, 1, 1, v29);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  IntentDialog.init(stringLiteral:)();
  v16(v9, 0, 1, v15);
  v16(v18, 1, 1, v15);
  v26(v32, v27, v33);
  sub_100156D60();
  sub_1000DC3A4();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  LOBYTE(v35) = v30 & 1;

  IntentParameter.wrappedValue.setter();
  v20 = v31;
  v21 = v31[1];
  v35 = *v31;
  v36 = v21;
  v37 = *(v31 + 4);
  sub_100156DB4(v31, v34);
  IntentParameter.wrappedValue.setter();
  sub_100003CBC(v20, &qword_1002CF488, qword_100242750);

  return v19;
}

uint64_t sub_10015497C()
{
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100154A10, v2, v1);
}

uint64_t sub_100154A10()
{

  v1 = objc_opt_self();
  v2 = [v1 sharedApplicationModel];
  v3 = [v2 recordings];

  sub_1000067AC(0, &qword_1002D1208, RCCloudRecording_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = [v1 sharedApplicationModel];
  v6 = [v5 deletedRecordings];

  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001B1F78(v7);
  v8 = v4;
  v9 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_21:
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_20;
      }

      v13 = *(v8 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_100147558((v0 + 16));
    v16 = *(v0 + 16);
    v25 = *(v0 + 40);
    v26 = *(v0 + 24);

    ++v11;
    if (v26)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1000F2648(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      v20 = v25;
      v19 = v26;
      if (v18 >= v17 >> 1)
      {
        v22 = sub_1000F2648((v17 > 1), v18 + 1, 1, v12);
        v20 = v25;
        v19 = v26;
        v12 = v22;
      }

      *(v12 + 2) = v18 + 1;
      v21 = &v12[40 * v18];
      *(v21 + 4) = v16;
      *(v21 + 40) = v19;
      *(v21 + 56) = v20;
      v11 = v15;
    }
  }

  v23 = *(v0 + 8);

  return v23(v12);
}

uint64_t sub_100154C9C()
{
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100154D30, v2, v1);
}

uint64_t sub_100154D30()
{

  v1 = [objc_opt_self() sharedApplicationModel];
  v2 = [v1 recordings];

  sub_1000067AC(0, &qword_1002D1208, RCCloudRecording_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
LABEL_21:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_100147558((v0 + 16));
    v10 = *(v0 + 16);
    v19 = *(v0 + 40);
    v20 = *(v0 + 24);

    ++v5;
    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1000F2648(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      v14 = v19;
      v13 = v20;
      if (v12 >= v11 >> 1)
      {
        v16 = sub_1000F2648((v11 > 1), v12 + 1, 1, v6);
        v14 = v19;
        v13 = v20;
        v6 = v16;
      }

      *(v6 + 2) = v12 + 1;
      v15 = &v6[40 * v12];
      *(v15 + 4) = v10;
      *(v15 + 40) = v13;
      *(v15 + 56) = v14;
      v5 = v9;
    }
  }

  v17 = *(v0 + 8);

  return v17(v6);
}

uint64_t sub_100154F58()
{
  v215 = sub_1000C773C(&qword_1002D2E80, &qword_10024AE70);
  __chkstk_darwin(v215);
  v222 = &v196 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v221 = &v196 - v2;
  __chkstk_darwin(v3);
  v220 = &v196 - v4;
  __chkstk_darwin(v5);
  v219 = &v196 - v6;
  __chkstk_darwin(v7);
  v218 = &v196 - v8;
  __chkstk_darwin(v9);
  v217 = &v196 - v10;
  __chkstk_darwin(v11);
  v216 = &v196 - v12;
  __chkstk_darwin(v13);
  v214 = &v196 - v14;
  __chkstk_darwin(v15);
  v213 = &v196 - v16;
  v17 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v17 - 8);
  v224 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppShortcutPhraseToken();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v196 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C773C(&qword_1002D2E88, &qword_10024AE78);
  __chkstk_darwin(v23);
  v212 = (&v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v211 = &v196 - v26;
  __chkstk_darwin(v27);
  v210 = &v196 - v28;
  __chkstk_darwin(v29);
  v208 = &v196 - v30;
  __chkstk_darwin(v31);
  v207 = &v196 - v32;
  __chkstk_darwin(v33);
  v206 = &v196 - v34;
  __chkstk_darwin(v35);
  v205 = &v196 - v36;
  __chkstk_darwin(v37);
  v204 = &v196 - v38;
  __chkstk_darwin(v39);
  v203 = &v196 - v40;
  __chkstk_darwin(v41);
  v202 = &v196 - v42;
  __chkstk_darwin(v43);
  v201 = &v196 - v44;
  __chkstk_darwin(v45);
  v200 = &v196 - v46;
  __chkstk_darwin(v47);
  v199 = &v196 - v48;
  __chkstk_darwin(v49);
  v198 = &v196 - v50;
  __chkstk_darwin(v51);
  v197 = &v196 - v52;
  __chkstk_darwin(v53);
  v196 = &v196 - v54;
  __chkstk_darwin(v55);
  v56 = type metadata accessor for AppShortcut();
  v57 = *(v56 - 8);
  v225 = v56;
  v226 = v57;
  __chkstk_darwin(v56);
  v223 = &v196 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v238[0] = sub_100152518();
  sub_1000C773C(&qword_1002D2E90, &qword_10024AE80);
  v59 = *(sub_1000C773C(&qword_1002D2E98, &qword_10024AE88) - 8);
  v227 = *(v59 + 72);
  v60 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v61 = swift_allocObject();
  v209 = v61;
  *(v61 + 16) = xmmword_100249720;
  v229 = v61 + v60;
  v62 = sub_100012A90();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0x2064726F636552;
  v63._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v63);
  v234 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v233 = *(v20 + 104);
  v235 = v20 + 104;
  v233(v22);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v64 = *(v20 + 8);
  v232 = v20 + 8;
  v64(v22, v19);
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v65);
  v230 = v62;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v66._countAndFlagsBits = 544695630;
  v66._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v66);
  v67 = v234;
  v228 = v19;
  v68 = v233;
  (v233)(v22, v234, v19);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v231 = v64;
  v64(v22, v19);
  v69._countAndFlagsBits = 0;
  v69._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v69);
  v70 = v227;
  AppShortcutPhrase.init(stringInterpolation:)();
  v196 = (2 * v70);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v71._countAndFlagsBits = 0x2061207472617453;
  v71._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v71);
  v72 = v67;
  v73 = v228;
  v68(v22, v72, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v64(v22, v73);
  v74._countAndFlagsBits = 0x6964726F63655220;
  v74._object = 0xEA0000000000676ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v74);
  v75 = v196;
  AppShortcutPhrase.init(stringInterpolation:)();
  v76 = v227;
  v197 = &v75[v227];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v77._object = 0x80000001002328E0;
  v77._countAndFlagsBits = 0xD000000000000012;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v77);
  v78 = v234;
  v79 = v233;
  (v233)(v22, v234, v73);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v231(v22, v73);
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v80);
  AppShortcutPhrase.init(stringInterpolation:)();
  v198 = (4 * v76);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v81._countAndFlagsBits = 0x206120656B6154;
  v81._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v81);
  v82 = v78;
  v83 = v228;
  v79(v22, v82, v228);
  v84 = v79;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v231(v22, v83);
  v85._countAndFlagsBits = 0;
  v85._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v85);
  v86 = v198;
  AppShortcutPhrase.init(stringInterpolation:)();
  v199 = &v86[v227];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v87._countAndFlagsBits = 0x6120657461657243;
  v87._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v87);
  v88 = v234;
  v84(v22, v234, v83);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v89 = v83;
  v90 = v231;
  v231(v22, v89);
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v91);
  v92 = v229;
  AppShortcutPhrase.init(stringInterpolation:)();
  v200 = (v92 + 6 * v227);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v93._countAndFlagsBits = 0;
  v93._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v93);
  v94 = v228;
  v84(v22, v88, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v90(v22, v94);
  v95._countAndFlagsBits = 0x6964726F63655220;
  v95._object = 0xEA0000000000676ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v95);
  AppShortcutPhrase.init(stringInterpolation:)();
  v96 = 8 * v227;
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v97._countAndFlagsBits = 0x207472617453;
  v97._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v97);
  v98 = v234;
  v99 = v233;
  (v233)(v22, v234, v94);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v100 = v94;
  v101 = v231;
  v231(v22, v100);
  v102._countAndFlagsBits = 0;
  v102._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v102);
  AppShortcutPhrase.init(stringInterpolation:)();
  v103 = v227;
  v202 = (v96 + v227);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v104._countAndFlagsBits = 0x2061207472617453;
  v104._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v104);
  v105 = v228;
  v99(v22, v98, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v101(v22, v105);
  v106._countAndFlagsBits = 0;
  v106._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v106);
  v107 = v229;
  AppShortcutPhrase.init(stringInterpolation:)();
  v203 = (v107 + 10 * v103);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v108._countAndFlagsBits = 0x206E69676542;
  v108._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v108);
  v109 = v234;
  (v233)(v22, v234, v105);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v101(v22, v105);
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v110);
  AppShortcutPhrase.init(stringInterpolation:)();
  v204 = (v229 + 11 * v103);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v111._countAndFlagsBits = 0x2061206E69676542;
  v111._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v111);
  v112 = v109;
  v113 = v109;
  v114 = v105;
  v115 = v233;
  (v233)(v22, v113, v105);
  v116 = v22;
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v231(v22, v114);
  v117._countAndFlagsBits = 0;
  v117._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v117);
  AppShortcutPhrase.init(stringInterpolation:)();
  v118 = v229;
  v119 = v227;
  v205 = (v229 + 12 * v227);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v120._countAndFlagsBits = 0x612064726F636552;
  v120._object = 0xE900000000000020;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v120);
  v115(v116, v112, v114);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v121 = v231;
  v231(v116, v114);
  v122._countAndFlagsBits = 0;
  v122._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v122);
  AppShortcutPhrase.init(stringInterpolation:)();
  v206 = (v118 + 13 * v119);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v123._countAndFlagsBits = 0x20656B6154;
  v123._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v123);
  v124 = v234;
  v125 = v228;
  v126 = v233;
  (v233)(v116, v234, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v121(v116, v125);
  v127._countAndFlagsBits = 0;
  v127._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v127);
  AppShortcutPhrase.init(stringInterpolation:)();
  v128 = v227;
  v207 = v229 + 14 * v227;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v129._countAndFlagsBits = 0x207472617453;
  v129._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v129);
  v126(v116, v124, v125);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v130 = v231;
  v231(v116, v125);
  v131._countAndFlagsBits = 0x6964726F63655220;
  v131._object = 0xEA0000000000676ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v131);
  AppShortcutPhrase.init(stringInterpolation:)();
  v208 = (16 * v128);
  v207 = 15 * v128;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v132._countAndFlagsBits = 0x206E69676542;
  v132._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v132);
  v133 = v234;
  v126(v116, v234, v125);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v130(v116, v125);
  v134._countAndFlagsBits = 0x6964726F63655220;
  v134._object = 0xEA0000000000676ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v134);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v135._countAndFlagsBits = 0x2061206E69676542;
  v135._object = 0xE800000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v135);
  v136 = v133;
  v137 = v233;
  (v233)(v116, v136, v125);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v138 = v231;
  v231(v116, v125);
  v139._countAndFlagsBits = 0x6964726F63655220;
  v139._object = 0xEA0000000000676ELL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v139);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v140._object = 0x8000000100232920;
  v140._countAndFlagsBits = 0xD000000000000012;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v140);
  v141 = v228;
  (v137)(v116, v234, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v138(v116, v141);
  v142._countAndFlagsBits = 0;
  v142._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v142);
  AppShortcutPhrase.init(stringInterpolation:)();
  LocalizedStringResource.init(stringLiteral:)();
  v143 = v223;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v144 = static AppShortcutsBuilder.buildExpression(_:)();
  v145 = *(v226 + 8);
  v226 += 8;
  v227 = v144;
  v212 = v145;
  v145(v143, v225);
  v239 = 0;
  memset(v238, 0, sizeof(v238));
  v236 = sub_1001544B4(0, v238);
  v237 = v146;
  sub_1000C773C(&qword_1002D2EA0, &qword_10024AE90);
  v147 = *(sub_1000C773C(&qword_1002D2EA8, &qword_10024AE98) - 8);
  v229 = *(v147 + 72);
  v148 = (*(v147 + 80) + 32) & ~*(v147 + 80);
  v149 = swift_allocObject();
  v211 = v149;
  *(v149 + 16) = xmmword_100249730;
  v230 = v149 + v148;
  v150 = sub_100012DB0();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v151._countAndFlagsBits = 0x73614C2079616C50;
  v151._object = 0xEA00000000002074;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v151);
  v152 = v234;
  v153 = v233;
  (v233)(v116, v234, v141);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v154 = v231;
  v231(v116, v141);
  v155._countAndFlagsBits = 0;
  v155._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v155);
  v210 = v150;
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v156._countAndFlagsBits = 0x2079616C50;
  v156._object = 0xE500000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v156);
  v157 = v228;
  v153(v116, v152, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v154(v116, v157);
  v158 = v154;
  v159._countAndFlagsBits = 0;
  v159._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v159);
  v160 = v229;
  AppShortcutPhrase.init(stringInterpolation:)();
  v213 = (2 * v160);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v161._countAndFlagsBits = 0xD000000000000011;
  v214 = 0xD000000000000011;
  v161._object = 0x8000000100232990;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v161);
  v162 = v234;
  v163 = v228;
  v164 = v233;
  (v233)(v116, v234, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v158(v116, v163);
  v165._countAndFlagsBits = 0;
  v165._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v165);
  v166 = v213;
  AppShortcutPhrase.init(stringInterpolation:)();
  v216 = &v166[v229];
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v167._countAndFlagsBits = 0x74206E657473694CLL;
  v167._object = 0xEA0000000000206FLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v167);
  v164(v116, v162, v163);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v158(v116, v163);
  v168._countAndFlagsBits = 0;
  v168._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v168);
  AppShortcutPhrase.init(stringInterpolation:)();
  v169 = v229;
  AppShortcutPhrase.init(stringLiteral:)();
  v217 = 5 * v169;
  v170 = v169;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v171._object = 0xEF207473614C206FLL;
  v171._countAndFlagsBits = 0x74206E657473694CLL;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v171);
  v172 = v162;
  v173 = v228;
  v174 = v233;
  (v233)(v116, v172, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v158(v116, v173);
  v175._countAndFlagsBits = 0;
  v175._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v175);
  v176 = v230;
  AppShortcutPhrase.init(stringInterpolation:)();
  v218 = v176 + 6 * v170;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v177._countAndFlagsBits = 0xD000000000000016;
  v177._object = 0x80000001002329D0;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v177);
  v178 = v234;
  v179 = v228;
  (v174)(v116, v234, v228);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v231(v116, v179);
  v180._countAndFlagsBits = 0;
  v180._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v180);
  AppShortcutPhrase.init(stringInterpolation:)();
  v219 = (8 * v229);
  v218 = 7 * v229;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v181._object = 0x80000001002329F0;
  v181._countAndFlagsBits = v214;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v181);
  v182 = v179;
  v183 = v179;
  v184 = v233;
  (v233)(v116, v178, v183);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v185 = v231;
  v231(v116, v182);
  v186._countAndFlagsBits = 0;
  v186._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v186);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v187._countAndFlagsBits = 0xD000000000000010;
  v187._object = 0x8000000100232A10;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v187);
  (v184)(v116, v234, v182);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v185(v116, v182);
  v188._countAndFlagsBits = 0;
  v188._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v188);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.init(stringLiteral:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v189._countAndFlagsBits = 0;
  v189._object = 0xE000000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v189);
  (v233)(v116, v234, v182);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v185(v116, v182);
  v190._countAndFlagsBits = 0x726579616C5020;
  v190._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v190);
  AppShortcutPhrase.init(stringInterpolation:)();
  LocalizedStringResource.init(stringLiteral:)();
  v191 = v223;
  AppShortcut.init<A>(intent:phrases:shortTitle:systemImageName:)();
  v192 = static AppShortcutsBuilder.buildExpression(_:)();
  v212(v191, v225);
  sub_1000C773C(&qword_1002D2EB0, &qword_10024AEA0);
  v193 = swift_allocObject();
  *(v193 + 16) = xmmword_100241790;
  *(v193 + 32) = v227;
  *(v193 + 40) = v192;
  v194 = static AppShortcutsBuilder.buildBlock(_:)();

  return v194;
}

unint64_t sub_100156D60()
{
  result = qword_1002D2EC8;
  if (!qword_1002D2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2EC8);
  }

  return result;
}

uint64_t sub_100156DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C773C(&qword_1002CF488, qword_100242750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100156E24()
{
  result = qword_1002D2F58;
  if (!qword_1002D2F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D2F58);
  }

  return result;
}

unint64_t sub_100156E78()
{
  result = qword_1002D3810;
  if (!qword_1002D3810)
  {
    sub_1000C7784(&qword_1002D2F78, &qword_10024B000);
    sub_10010EE88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3810);
  }

  return result;
}

uint64_t sub_100156EFC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000C7784(a2, a3);
    sub_10012EC78();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_100156F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100156FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001570D8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      type metadata accessor for AppSessionEndEvent(0);
      sub_1001576D8(&qword_1002D3130, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      v12 = 0u;
      v13 = 0u;
      AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
      sub_10010D150(&v12);
      return;
    }

    if (a2 == 3)
    {
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    if (a2 == 1)
    {
      type metadata accessor for AppSessionStartEvent(0);
      sub_1001576D8(&qword_1002D3138, type metadata accessor for AppSessionStartEvent, &protocol conformance descriptor for AppSessionStartEvent);
      v12 = 0u;
      v13 = 0u;
      AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
      sub_10010D150(&v12);
      type metadata accessor for AppSessionEndEvent(0);
      sub_1001576D8(&qword_1002D3130, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
      AccessTracker.time<A>(_:submitAndRestartWithSession:)();
      return;
    }
  }

  v8 = v5;
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unknown enum case encountered.  Please update this switch statement to handle the new case.", v11, 2u);
  }

  (*(v4 + 8))(v7, v8);
}

uint64_t sub_100157490()
{
  LOBYTE(v5[0]) = 2;
  sub_1000C773C(&qword_1002D3140, &qword_10024B268);
  v0 = type metadata accessor for DataEventTrait();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100242C70;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.unique(_:), v0);
  sub_100157720();
  AccessTracker.push<A>(data:traits:file:line:)();

  type metadata accessor for AppSessionEndEvent(0);
  sub_1001576D8(&qword_1002D3130, type metadata accessor for AppSessionEndEvent, &protocol conformance descriptor for AppSessionEndEvent);
  memset(v5, 0, sizeof(v5));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10010D150(v5);
}

uint64_t sub_1001576D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100157720()
{
  result = qword_1002D3148;
  if (!qword_1002D3148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3148);
  }

  return result;
}

uint64_t sub_100157774()
{
  sub_100157938();
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for SecondLayerRecordEvent(0);
  sub_10015798C(&qword_1002D3238, type metadata accessor for SecondLayerRecordEvent, &protocol conformance descriptor for SecondLayerRecordEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10010D150(v1);
}

uint64_t sub_100157844()
{
  sub_100157938();
  AccessTracker.push<A>(data:traits:file:line:)();
  type metadata accessor for SecondLayerEnableEvent(0);
  sub_10015798C(&qword_1002D3230, type metadata accessor for SecondLayerEnableEvent, &protocol conformance descriptor for SecondLayerEnableEvent);
  memset(v1, 0, sizeof(v1));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10010D150(v1);
}

unint64_t sub_100157938()
{
  result = qword_1002D3228;
  if (!qword_1002D3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3228);
  }

  return result;
}

uint64_t sub_10015798C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100157D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController] = 0;
  *&v3[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider;
  *&v3[v7] = [objc_opt_self() sharedStyleProvider];
  *&v3[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_splitViewController] = a1;
  *&v3[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController] = a2;
  *&v3[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_playbackViewController] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for RCRecordingCardPresentationHelper();
  return objc_msgSendSuper2(&v9, "init");
}

void sub_100157E78(void *a1, char a2, void (*a3)(void), uint64_t a4)
{
  v5 = OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController;
  if (!*(v4 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController))
  {
    v9 = *(v4 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
    v10 = [v9 supportsCompactRecordingCard];
    v11 = v10 & a2 | v10 ^ 1;
    v12 = sub_100158BD0();
    sub_100159AB4(v11);
    sub_1001591C8(v12, v11);
    [v12 setModalInPresentation:1];
    v13 = *(v4 + v5);
    *(v4 + v5) = v12;
    v34 = v12;

    v14 = *(v4 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController);
    v15 = [v14 currentActiveFolderViewController];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 recordingViewController];

      if (v17)
      {
        v18 = *(v4 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController);
        if (v18)
        {
          v19 = v18;
          [v19 addChildViewController:v17];
          v20 = [v17 view];
          [v19 setHostedView:v20];

          [v17 didMoveToParentViewController:v19];
          sub_10015ABE0(v17, v11);

          v17 = v19;
        }
      }
    }

    [a1 setDefinesPresentationContext:1];
    [a1 presentViewController:v34 animated:objc_msgSend(v9 completion:{"animatesRecordingCardPresentation"), 0}];
    swift_unknownObjectWeakAssign();
    v21 = [v34 transitionCoordinator];
    if (v21)
    {
      v22 = v21;
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v11;
      *(v24 + 32) = a3;
      *(v24 + 40) = a4;
      v39 = sub_10015AE98;
      v40 = v24;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10015834C;
      v38 = &unk_100293120;
      v25 = _Block_copy(&aBlock);
      sub_1000D0DAC(a3, a4);

      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = sub_10015AEA8;
      v40 = v26;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10015834C;
      v38 = &unk_100293148;
      v27 = _Block_copy(&aBlock);

      [v22 animateAlongsideTransition:v25 completion:v27];

      _Block_release(v27);
      _Block_release(v25);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10015ACBC();
      if (a3)
      {
        a3();
      }

      v28 = [v14 currentActiveFolderViewController];
      if (v28)
      {
        v29 = v28;
        v33 = [v28 recordingViewController];

        v30 = [v33 view];
        [v30 completePresent];

        v31 = v33;
      }

      else
      {
        v31 = v34;
      }
    }
  }
}

void sub_1001582D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10015ACBC();
    if (a4)
    {
      a4();
    }
  }
}

uint64_t sub_10015834C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1001583AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) currentActiveFolderViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 recordingViewController];

      v7 = [v6 view];
      [v7 completePresent];

      v3 = v6;
    }
  }
}

void sub_100158554(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController;
  if (*(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
      v9 = [v8 supportsCompactRecordingCard] ^ 1;
      v10 = [v8 animatesRecordingCardPresentation] ^ 1;
      sub_100159C48(v9, v10);
      v11 = [v8 animatesRecordingCardPresentation];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v9;
      *(v13 + 25) = v10;
      *(v13 + 32) = a1;
      *(v13 + 40) = a2;
      v17[4] = sub_10015ABCC;
      v17[5] = v13;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 1107296256;
      v17[2] = sub_10012ED20;
      v17[3] = &unk_1002930D0;
      v14 = _Block_copy(v17);
      sub_1000D0DAC(a1, a2);

      [v7 dismissViewControllerAnimated:v11 completion:v14];

      _Block_release(v14);
      v15 = *(v2 + v3);
      *(v2 + v3) = 0;

      v16 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController);
      *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController) = 0;
    }
  }
}

void sub_100158720(uint64_t a1, char a2, char a3, void (*a4)(void), uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100159E84((a2 & 1) == 0, a3 & 1, a4);
  }
}

void sub_100158864()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 presentationController];
    if (v3)
    {
      v11 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = sub_100159350();
        v8 = v7;
        sub_10015A92C(v5, v6, v7, v9 & 0x10101);
        sub_1000338B4(v6, v8);
      }

      v10 = v11;
    }

    else
    {
      v10 = v2;
    }
  }
}

void sub_100158994()
{
  if ([*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider) supportsCompactRecordingCard])
  {
    v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
    v4 = [v1 view];

    if (v4)
    {
      v2 = [v4 displayStyle];
      v3 = sub_10015A0BC();
      if (v3 != 2)
      {
        if (v3)
        {
          if (v2 == 2)
          {
            sub_100159820();
          }
        }

        else if (v2 == 3)
        {
          sub_100159640();
        }
      }
    }
  }
}

void sub_100158ACC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 presentationController];
    if (v3)
    {
      v6 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        [v4 setSelectedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];
      }

      v5 = v6;
    }

    else
    {
      v5 = v2;
    }
  }
}

id sub_100158BD0()
{
  v1 = [objc_allocWithZone(RCRecordingCardViewController) init];
  v2 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController);
  *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedCardViewController) = v1;
  v3 = v1;

  v4 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v3];
  v5 = [objc_allocWithZone(UIZoomTransitionOptions) init];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UIZoomTransitionOptions.alignmentRectProvider.setter();

  sub_1000067AC(0, &qword_1002D3428, UIViewControllerTransition_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v4;
  v7 = v5;

  v8 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

  [v6 setPreferredTransition:v8];

  [v6 setModalPresentationStyle:2];
  return v6;
}

void sub_100158D88(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v4 = Strong;
  v5 = [*(Strong + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
  v6 = [v5 view];

  if (!v6)
  {
    v6 = v4;
LABEL_12:

LABEL_13:
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100018D90(v14, qword_1002E8CB0);
    v15 = static os_log_type_t.error.getter();
    v16 = Logger.logObject.getter();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_10001901C(0xD000000000000027, 0x8000000100233830, &v26);
      _os_log_impl(&_mh_execute_header, v16, v15, "%s - Unable to calculate record button frame. Returning nil for the alignmentRectProvider.", v17, 0xCu);
      sub_100014B64(v18);
    }

    goto LABEL_18;
  }

  v7 = [v6 recordButton];
  if (!v7)
  {

    goto LABEL_12;
  }

  v8 = v7;
  [v7 bounds];
  [v6 convertRect:v8 fromCoordinateSpace:?];
  width = v27.size.width;
  x = v27.origin.x;
  y = v27.origin.y;
  height = v27.size.height;
  if (!CGRectIsEmpty(v27))
  {

    v20 = 0;
    *&v19 = x;
    *(&v19 + 1) = y;
    *&v21 = width;
    *(&v21 + 1) = height;
    goto LABEL_19;
  }

  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100018D90(v9, qword_1002E8CB0);
  v10 = static os_log_type_t.error.getter();
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10001901C(0xD000000000000027, 0x8000000100233830, &v26);
    _os_log_impl(&_mh_execute_header, v11, v10, "%s - Record button frame is empty. Returning nil for the alignmentRectProvider.", v12, 0xCu);
    sub_100014B64(v13);
  }

LABEL_18:
  v19 = 0uLL;
  v20 = 1;
  v21 = 0uLL;
LABEL_19:
  *a2 = v19;
  *(a2 + 16) = v21;
  *(a2 + 32) = v20;
}

char *sub_1001590F0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = *&result[OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController];

    v5 = [v4 currentActiveFolderViewController];
    if (v5)
    {
      v6 = [v5 view];
      v7 = [v6 zoomTransitionSourceView];

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1001591C8(void *a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
  if ([v5 supportsSheetPresentationSPI])
  {
    v6 = [a1 presentationController];
    if (v6)
    {
      v14 = v6;
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        v8 = v7;
        v9 = sub_100159350();
        v11 = v10;
        sub_10015A92C(v8, v9, v10, v12 & 0x10101);
        if (a2)
        {
          [v8 setSelectedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];
        }

        v13 = [v5 recordingCardBottomAccessoryBackgroundColor];
        [v8 _setNonLargeBackground:v13];

        sub_1000338B4(v9, v11);
      }
    }
  }

  else
  {

    [a1 setModalPresentationStyle:5];
  }
}

double (*sub_100159350())()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
  v2 = [v1 view];
  if (!v2)
  {
    if (qword_1002CDD88 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100018D90(v6, qword_1002E8CB0);
    v7 = static os_log_type_t.error.getter();
    v8 = Logger.logObject.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10001901C(0xD000000000000021, 0x8000000100233800, &v14);
      _os_log_impl(&_mh_execute_header, v8, v7, "%s - recordingView is unexpectedly nil.", v9, 0xCu);
      sub_100014B64(v10);
    }

    goto LABEL_10;
  }

  v3 = v2;
  v4 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider) supportsCompactRecordingCard];
  v5 = [v3 recordingViewState];
  if (v4)
  {
    if (v5 == 8)
    {

LABEL_10:
      return 0;
    }

    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = v1;
    v13[4] = v3;
    return sub_10015A920;
  }

  else
  {

    return 0;
  }
}

double sub_1001595A0(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v6 = Strong;
  [a3 customDetentFixedHeight:objc_msgSend(a2 includeBottomSafeArea:{"shouldHideNavigationBar") ^ 1, 0}];
  v8 = v7;

  return v8;
}

void sub_100159640()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (v1)
  {
    v12 = v1;
    v2 = [v12 presentationController];
    if (v2)
    {
      v11 = v2;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
        if ([v5 supportsCompactRecordingCard])
        {
          [v4 setSelectedDetentIdentifier:UISheetPresentationControllerDetentIdentifierLarge];
          v6 = [v5 expandCompactRecordingCardPropertyAnimator];
          v7 = swift_allocObject();
          *(v7 + 16) = v4;
          aBlock[4] = sub_10015B1E8;
          aBlock[5] = v7;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10012ED20;
          aBlock[3] = &unk_100293008;
          v8 = _Block_copy(aBlock);
          v9 = v11;

          [v6 addAnimations:v8];
          _Block_release(v8);
          [v6 startAnimation];

          return;
        }
      }

      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }
}

void sub_100159820()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 presentationController];
    if (v2)
    {
      v12 = v2;
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
        if ([v5 supportsCompactRecordingCard])
        {
          v6 = String._bridgeToObjectiveC()();
          [v4 setSelectedDetentIdentifier:v6];

          v7 = [v5 expandCompactRecordingCardPropertyAnimator];
          v8 = swift_allocObject();
          *(v8 + 16) = v4;
          aBlock[4] = sub_10015A900;
          aBlock[5] = v8;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10012ED20;
          aBlock[3] = &unk_100292FB8;
          v9 = _Block_copy(aBlock);
          v10 = v12;

          [v7 addAnimations:v9];
          _Block_release(v9);
          [v7 startAnimation];

          return;
        }
      }

      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }
}

void sub_100159A1C(void *a1)
{
  v1 = [a1 presentedView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 layoutIfNeeded];
    }
  }
}

void sub_100159AB4(char a1)
{
  if ([*(v1 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider) shouldHidePrimaryColumnInEditView])
  {
    [*(v1 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_splitViewController) hidePrimaryColumnForEnteringEditModeIfNeeded];
  }

  sub_100159B7C();
  v3 = [*(v1 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
  v4 = [v3 view];

  [v4 prepareForPresent:a1 & 1];
}

void sub_100159B7C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) currentActiveFolderViewController];
  if (v1)
  {
    v5 = v1;
    v2 = [v1 recordingsCollectionViewController];
    if (v2)
    {
      v3 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
      v4 = v2;
      [v4 setEditing:0 animated:{objc_msgSend(v3, "animatesRecordingCardPresentation")}];
    }
  }
}

void sub_100159C48(char a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider);
  if ([v5 shouldHidePrimaryColumnInEditView])
  {
    [*(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_splitViewController) showPrimaryColumnForExitingEditModeIfNeeded];
  }

  v6 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController);
  v7 = [v6 currentActiveFolderViewController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 recordingViewController];

    v20 = [v9 view];
    v7 = v20;
  }

  v21 = v7;
  [v7 prepareForDismiss];
  if (a2)
  {
    [objc_opt_self() setAnimationsEnabled:0];
  }

  if ([v5 supportsCompactRecordingCard])
  {
    v10 = *(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
    if (v10)
    {
      v11 = v10;
      v12 = [v11 presentationController];
      if (v12)
      {
        v13 = v12;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          [v14 setPrefersGrabberVisible:0];
        }
      }

      else
      {
        v13 = v11;
      }
    }
  }

  if (a1)
  {
    v15 = [v6 recordingViewController];
    [v15 willMoveToParentViewController:0];
    [v15 removeFromParentViewController];
    v16 = [v15 view];
    if (v16)
    {
      v17 = v16;
      [v16 removeFromSuperview];

      v18 = v17;
    }

    else
    {
      v18 = v21;
    }

    v19 = v15;
  }

  else
  {
    v19 = v21;
  }
}

void sub_100159E84(char a1, char a2, void (*a3)(void))
{
  if (a1)
  {
    v6 = [*(v3 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
    [v6 willMoveToParentViewController:0];
    [v6 removeFromParentViewController];
    v7 = [v6 view];
    if (v7)
    {
      v8 = v7;
      [v7 removeFromSuperview];
    }
  }

  v9 = *(v3 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController);
  v10 = [v9 activeRecordingsCollectionViewController];
  v11 = String._bridgeToObjectiveC()();
  [v10 _setSearchString:v11];

  if (a3)
  {
    a3();
  }

  v14 = [v9 recordingViewController];
  [v14 cleanupAfterDismiss];
  if (a2)
  {
    [objc_opt_self() setAnimationsEnabled:1];
  }

  v12 = [v9 recordingViewController];
  v13 = [v12 view];

  if (v13)
  {
    [v13 setCardPresentationDelegate:0];
  }
}

uint64_t sub_10015A0BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = [v2 presentationController];
  if (!v3)
  {

    return 2;
  }

  v4 = v3;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5 || (v6 = v5, v7 = [*(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController], v8 = objc_msgSend(v7, "view"), v7, !v8))
  {

    return 2;
  }

  [v8 customDetentFixedHeight:0 includeBottomSafeArea:1];
  v10 = v9;
  v11 = v8;
  v12 = [v11 window];
  if (v12)
  {
    v13 = v12;
    [v12 bounds];
    v15 = v14;
    _UISheetMinimumTopInset();
    v17 = v16;

    v18 = v15 - v17;
  }

  else
  {
    v18 = 0.0;
  }

  [v11 bounds];
  v21 = v20;

  v22 = sub_10015A8F0(v21, v10, v18);
  v23 = [v6 selectedDetentIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)() ^ 1;
    }

    if (v22 < 1.0 && v22 > 0.5 && (v29 & 1) == 0 && [v11 transcriptViewState] == 1)
    {
      [v11 setTranscriptViewState:0];
    }
  }

  return v22 > 0.5;
}

id sub_10015A554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass() != 0;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
LABEL_3:
      v4 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    objc_opt_self();
    v3 = 0;
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [*(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_styleProvider) animatesRecordingCardPresentation];
  if ((v4 | v3) == 1 && v5 != 0)
  {
    v7 = [*(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController) recordingViewController];
    v8 = [v7 view];

    if (v8)
    {
      v9 = [objc_allocWithZone(_UISheetAnimationController) init];
      [v9 setIsReversed:!v3];
      [v8 bottomAccessoryDisplayStyleFixedHeight];
      v10 = v8;
      [v10 frame];
      if (CGRectIsEmpty(v16) && (v11 = [*(v2 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_splitViewController) viewControllerForColumn:1]) != 0 && (v12 = v11, v13 = objc_msgSend(v11, "view"), v12, v13))
      {

        [v13 bounds];
      }

      else
      {
        v14 = [v10 window];
        if (!v14)
        {

          goto LABEL_20;
        }

        v13 = v14;
        [v10 bounds];
      }

      [v13 bounds];

LABEL_20:
      [v9 setSourceFrame:sub_10015A8DC()];

      return v9;
    }
  }

  return 0;
}

id sub_10015A7E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCRecordingCardPresentationHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10015A908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10015A92C(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a2)
  {
    sub_1000067AC(0, &qword_1002D3420, UISheetPresentationControllerDetent_ptr);

    v8 = String._bridgeToObjectiveC()();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v10 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    v11 = v10;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1000338B4(a2, a3);
  }

  if (a4)
  {
    v12 = [objc_opt_self() largeDetent];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_1000067AC(0, &qword_1002D3420, UISheetPresentationControllerDetent_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setDetents:isa];

  [a1 setPrefersGrabberVisible:(a4 >> 8) & 1];

  return [a1 _setWantsFullScreen:HIWORD(a4) & 1];
}

void sub_10015ABE0(void *a1, char a2)
{
  v4 = [a1 view];
  if (v4)
  {
    v8 = v4;
    if ([v4 displayStyle] == 1)
    {
      if (a2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      [v8 setDisplayStyle:v5];
      v6 = [a1 waveformContainerViewControllers];
      [v6 setIsCompactView:(a2 & 1) == 0];

      v7 = v6;
    }

    else
    {
      v7 = v8;
    }
  }
}

void sub_10015ACBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_browseFoldersViewController);
  v2 = [v1 currentActiveFolderViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 recordingViewController];

    if (v4)
    {
      v5 = [v4 view];
      if (v5)
      {
        v6 = v5;
        [v5 setCardPresentationDelegate:v0];
      }

      v7 = *(v0 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_playbackViewController);
      if (v7)
      {
        v8 = v7;
        if ([v8 isDisplayingTranscriptView] && (objc_msgSend(v4, "isDisplayingTranscriptView") & 1) == 0)
        {
          [v4 toggleTranscriptView];
        }
      }

      v9 = [v1 activeRecordingsCollectionViewController];
      v10 = [v9 searchController];
      [v10 setActive:0];

      v11 = String._bridgeToObjectiveC()();
      [v9 _setSearchString:v11];
    }
  }
}

uint64_t sub_10015AE50()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10015AEB0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10VoiceMemos33RCRecordingCardPresentationHelper_presentedViewController);
  if (!v2)
  {
    return;
  }

  v21 = v2;
  v4 = [v21 presentationController];
  if (!v4)
  {
    v11 = v21;
LABEL_18:

    return;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    v12 = v21;
LABEL_17:

    v11 = v5;
    goto LABEL_18;
  }

  v7 = [v6 detents];
  sub_1000067AC(0, &qword_1002D3420, UISheetPresentationControllerDetent_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = [a1 displayStyle];
  if (v10 == 2)
  {
    if (v9 != 2 || !sub_10015A0BC())
    {
LABEL_16:
      v12 = v5;
      v5 = v21;
      goto LABEL_17;
    }
  }

  else
  {
    if (v9 != 2 || v10 != 3)
    {
      goto LABEL_16;
    }

    v14 = sub_10015A0BC();
    if (v14 != 2 && (v14 & 1) != 0)
    {
      goto LABEL_16;
    }
  }

  v15 = objc_opt_self();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_10015B188;
  *(v17 + 24) = v16;
  aBlock[4] = sub_1000FF364;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100157BA4;
  aBlock[3] = &unk_1002931C0;
  v18 = _Block_copy(aBlock);
  v19 = a1;

  [v15 performWithoutAnimation:v18];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

id sub_10015B188()
{
  v1 = *(v0 + 16);
  [v1 toggleFullCompact];

  return [v1 layoutIfNeeded];
}

uint64_t sub_10015B200()
{
  v0 = [objc_allocWithZone(RCDateFormatter) init];
  sub_1000C773C(&qword_1002D3538, &unk_10024B370);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1002D3430 = result;
  return result;
}

void sub_10015B268(void **a1@<X0>, NSString a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6.super.isa = Date._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v7 = [v5 formattedDateStringFromDate:v6.super.isa forUUID:a2];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *a3 = v8;
  a3[1] = v10;
}

uint64_t sub_10015B334@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = [a2 playableCountForFolder:{a1, __chkstk_darwin(v7 - 8).n128_f64[0]}];
  v9 = [a1 uuid];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  result = sub_10015D8A8();
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = [a1 folderType];
    sub_1000C773C(&qword_1002D3540, &qword_10024B1E0);
    LocalizedStringResource.init(stringLiteral:)();
    v14 = EntityProperty<>.init(title:)();
    sub_1000C773C(&qword_1002D3548, &qword_10024B380);

    LocalizedStringResource.init(stringLiteral:)();
    v15 = EntityProperty<>.init(title:)();

    EntityProperty.wrappedValue.setter();
    EntityProperty.wrappedValue.setter();

    *a4 = v10;
    a4[1] = v12;
    a4[2] = v14;
    a4[3] = v15;
    a4[4] = v16;
  }

  return result;
}

uint64_t sub_10015B524(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = 0;
  v3 = result + 64;
  v4 = _swiftEmptyArrayStorage;
  v20 = *(result + 16);
  v18 = result + 64;
  do
  {
    v19 = v4;
    for (i = (v3 + 40 * v2); ; i += 5)
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      if (__OFADD__(v2, 1))
      {
        goto LABEL_18;
      }

      v21 = v2 + 1;
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v10 = *(i - 4);
      v9 = *(i - 3);
      v11 = objc_opt_self();

      v12 = [v11 sharedRecordingsModelInteractor];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 isRecentlyDeletedForUUID:v13];

      if ((v14 & 1) == 0)
      {
        break;
      }

      ++v2;
      v1 = v20;
      if (v21 == v20)
      {
        return v19;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v19;
    if ((result & 1) == 0)
    {
      result = sub_1001AE5D4(0, v19[2] + 1, 1);
      v4 = v19;
    }

    v3 = v18;
    v16 = v4[2];
    v15 = v4[3];
    if (v16 >= v15 >> 1)
    {
      result = sub_1001AE5D4((v15 > 1), v16 + 1, 1);
      v4 = v19;
    }

    v4[2] = v16 + 1;
    v17 = &v4[5 * v16];
    v17[4] = v10;
    v17[5] = v9;
    v17[6] = v6;
    v17[7] = v7;
    v17[8] = v8;
    v1 = v20;
    v2 = v21;
  }

  while (v21 != v20);
  return v4;
}

uint64_t sub_10015B718(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v5;
  v2[9] = v4;

  return _swift_task_switch(sub_10015B80C, v5, v4);
}

uint64_t sub_10015B80C()
{
  v1 = sub_10015B524(v0[2]);
  v0[10] = v1;
  LocalizedStringResource.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_10015B908;
  v3 = v0[6];
  v4 = v0[3];

  return sub_1000E1058(v1, v4, v3, sub_1000E0FF4, 0);
}

uint64_t sub_10015B908(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);

  return _swift_task_switch(sub_10015BAB0, v7, v6);
}

uint64_t sub_10015BAB0()
{
  v1 = *(v0 + 96);

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (*(v0 + 96) + 40);
    v6 = _swiftEmptyArrayStorage;
    while (v4 < *(v1 + 16))
    {
      v8 = *(v5 - 1);
      v7 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000F253C(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_1000F253C((v9 > 1), v10 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      v5 += 5;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_11:

    v12 = *(v0 + 8);

    return v12(v6);
  }

  return result;
}

char *sub_10015BC08()
{
  v0 = [objc_opt_self() sharedRecordingsModelInteractor];
  v1 = [v0 visibleBuiltInFolders];
  sub_1000C773C(&qword_1002D1200, &unk_100245410);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = v0;
  v3 = [v0 allUserFolders];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v17[0] = v2;
  sub_1001B1F90(v4);
  v5 = v2;
  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((*&v17[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while ((v5 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      swift_getObjectType();
      sub_10015D824(v17);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1000F2768(0, *(v8 + 2) + 1, 1, v8);
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        v8 = sub_1000F2768((v10 > 1), v11 + 1, 1, v8);
      }

      *(v8 + 2) = v11 + 1;
      v12 = &v8[40 * v11];
      v13 = v17[0];
      v14 = v17[1];
      *(v12 + 8) = v18;
      *(v12 + 2) = v13;
      *(v12 + 3) = v14;
      ++v7;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    swift_unknownObjectRetain();
    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_19:

  return v8;
}

char *sub_10015BE44()
{
  v12 = [objc_opt_self() sharedRecordingsModelInteractor];
  v0 = [v12 allUserFolders];
  sub_1000C773C(&qword_1002D1200, &unk_100245410);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    while ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      swift_getObjectType();
      sub_10015D824(v13);
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1000F2768(0, *(v4 + 2) + 1, 1, v4);
      }

      v7 = *(v4 + 2);
      v6 = *(v4 + 3);
      if (v7 >= v6 >> 1)
      {
        v4 = sub_1000F2768((v6 > 1), v7 + 1, 1, v4);
      }

      *(v4 + 2) = v7 + 1;
      v8 = &v4[40 * v7];
      v9 = v13[0];
      v10 = v13[1];
      *(v8 + 8) = v14;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      ++v3;
      if (v5 == i)
      {
        goto LABEL_19;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    swift_unknownObjectRetain();
    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_19:

  return v4;
}

unint64_t sub_10015C04C()
{
  result = qword_1002D3550;
  if (!qword_1002D3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3550);
  }

  return result;
}

char *sub_10015C5F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_group;
  *&v3[v10] = dispatch_group_create();
  *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_punchInTime] = 0;
  *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller] = 0;
  v11 = &v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion];
  *v12 = 0;
  *(v12 + 1) = 0;
  (*(v7 + 16))(v9, a1, v6);
  v13 = objc_allocWithZone(type metadata accessor for CaptureSessionRecorder(0));
  *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder] = sub_100185DC8(v9);
  *&v3[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_outputFileSettings] = a2;
  v14 = type metadata accessor for RCSpatialRecorder();
  v17.receiver = v3;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "init");
  (*(v7 + 8))(a1, v6);
  *(*&v15[OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder] + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_delegate + 8) = &off_1002932C8;
  swift_unknownObjectWeakAssign();
  return v15;
}

id sub_10015C8A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RCSpatialRecorder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10015C99C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedInstance];
  v4 = _convertErrorToNSError(_:)();
  v5 = _convertErrorToNSError(_:)();

  [v3 setRecordingError:v5];
  if (*(a2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller))
  {
    v6 = *(a2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller);
    sub_10015CA4C(&v6, &v7);
  }
}

id sub_10015CA4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_opt_self() sharedInstance];
  v8 = 0;
  v5 = [v4 stopRecordingWithController:v3 error:&v8];

  if (v5)
  {
    result = v8;
  }

  else
  {
    v7 = v8;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *a2 = v5 ^ 1;
  return result;
}

uint64_t sub_10015CD64(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_captureSessionRecorder);
  v6 = *(v5 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_captureSession);
  _Block_copy(a2);
  if ([v6 isRunning])
  {
    v7 = (a1 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
    v8 = *(a1 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion);
    v9 = *(a1 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_stopRecordingCompletion + 8);
    *v7 = sub_1000FF38C;
    v7[1] = v4;

    sub_1000338B4(v8, v9);
    [*(v5 + OBJC_IVAR____TtC10VoiceMemos22CaptureSessionRecorder_fileOutput) stopRecording];
  }

  else
  {
    a2[2](a2);
  }
}

uint64_t sub_10015CE60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002CDD88 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100018D90(v11, qword_1002E8CB0);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v4;
    v16 = v8;
    v17 = v2;
    v18 = v5;
    v19 = v15;
    *v14 = 138412290;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v20;
    *v19 = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Capture session recorder failed with error: %@", v14, 0xCu);
    sub_10015D618(v19);
    v5 = v18;
    v2 = v17;
    v8 = v16;
    v4 = v26;
  }

  sub_100017154();
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = v2;
  aBlock[4] = sub_10015D5F8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10012ED20;
  aBlock[3] = &unk_100293318;
  v23 = _Block_copy(aBlock);
  swift_errorRetain();
  v24 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100119B28();
  sub_1000C773C(&unk_1002D1080, &qword_100241B40);
  sub_1000FF000();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v27);
}

void sub_10015D21C(void *a1, double a2)
{
  v5 = sub_1000C773C(&unk_1002D3680, &unk_10024B480);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = [objc_allocWithZone(AVAudioTime) initWithHostTime:{objc_msgSend(objc_opt_self(), "hostTimeForSeconds:", a2)}];
  v10 = OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller;
  v11 = *(v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_controller);
  if (!v11)
  {
    v19 = v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime;
    if ((*(v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime + 8) & 1) == 0)
    {
      [0 processAudioBuffer:a1];
      v12 = 0;
      v14 = 0;
      goto LABEL_27;
    }

    v18 = 0;
    v12 = 0;
    *v19 = a2;
    *(v19 + 8) = 0;
    goto LABEL_23;
  }

  v12 = [v11 activityWaveformProcessor];
  v13 = *(v2 + v10);
  if (v13)
  {
    v14 = [v13 liveTranscription];
    v15 = *(v2 + v10);
    if (v15)
    {
      v16 = [v15 waveformDataSource];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 waveformGenerator];

        goto LABEL_10;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = 0;
LABEL_10:
  v20 = v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime;
  if (*(v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_firstSampleMediaTime + 8))
  {
    v28 = v8;
    v29 = v5;
    v30 = v6;
    *v20 = a2;
    *(v20 + 8) = 0;
    if (v12)
    {
      v21 = v12;
      v22 = a1;
      v23 = [a1 format];
      [v21 prepareToProcessWithFormat:v23 audioTime:v9 punchInTime:*(v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_punchInTime)];

      if (v14)
      {
LABEL_13:
        v24 = v14;
        v25 = [v22 format];
        a1 = v22;
        sub_10011E5C0(v25, *(v2 + OBJC_IVAR____TtC10VoiceMemos17RCSpatialRecorder_punchInTime));

        [v12 processAudioBuffer:v22];
        v8 = v28;
        v5 = v29;
        goto LABEL_16;
      }
    }

    else
    {
      v22 = a1;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    a1 = v22;
LABEL_23:
    [v12 processAudioBuffer:{a1, v28, v29}];
    v14 = 0;
    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  [v12 processAudioBuffer:a1];
  if (!v14)
  {
    goto LABEL_18;
  }

  v30 = v6;
  v24 = v14;
LABEL_16:
  if (*&v24[OBJC_IVAR____TtC10VoiceMemos19RCLiveTranscription_liveTranscription])
  {
    v31 = a1;
    v26 = v24;

    v27 = a1;
    sub_1000C773C(&qword_1002CEF68, &qword_1002422F0);
    AsyncStream.Continuation.yield(_:)();

    (*(v30 + 8))(v8, v5);
  }

LABEL_18:
  if (!v18)
  {
    goto LABEL_27;
  }

LABEL_24:
  if ([v18 state] == 1)
  {
    [v18 appendAveragePowerLevelsByDigestingAudioPCMBuffer:a1];
  }

LABEL_27:
}

double sub_10015D600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10015D618(uint64_t a1)
{
  v2 = sub_1000C773C(&unk_1002D3690, &qword_100242370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015D680()
{
  result = qword_1002D36A0;
  if (!qword_1002D36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36A0);
  }

  return result;
}

unint64_t sub_10015D6D8()
{
  result = qword_1002D36A8;
  if (!qword_1002D36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36A8);
  }

  return result;
}

unint64_t sub_10015D730()
{
  result = qword_1002D36B0;
  if (!qword_1002D36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36B0);
  }

  return result;
}

unint64_t sub_10015D784()
{
  result = qword_1002D36B8;
  if (!qword_1002D36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36B8);
  }

  return result;
}

__n128 sub_10015D7D8@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

double sub_10015D824@<D0>(uint64_t a2@<X8>)
{
  v4 = [objc_opt_self() sharedApplicationModel];
  sub_10015B334(v2, v4, v7);

  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_10015D8A8()
{
  if ([v0 folderType] == 4 || (v1 = objc_msgSend(objc_opt_self(), "folderNameForBuiltInFolderOfType:", objc_msgSend(v0, "folderType"))) == 0)
  {
    v1 = [v0 name];
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_10015D974()
{
  v0 = type metadata accessor for String.LocalizationValue.Placeholder();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100018DC8(v10, qword_1002E9028);
  sub_100018D90(v10, qword_1002E9028);
  LocalizedStringResource.init(stringLiteral:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  (*(v1 + 104))(v3, enum case for String.LocalizationValue.Placeholder.int(_:), v0);
  String.LocalizationValue.StringInterpolation.appendInterpolation(placeholder:specifier:)();
  (*(v1 + 8))(v3, v0);
  v12._countAndFlagsBits = 0x535245444C4F4620;
  v12._object = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v9 + 56))(v7, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10015DC44@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_1000C773C(&qword_1002D07A8, &unk_10024AE60);
  __chkstk_darwin(v2 - 8);
  v33 = &v31 - v3;
  v4 = sub_1000C773C(&unk_1002D38C0, qword_10024C020);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v35);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._object = 0x8000000100233ED0;
  v22._countAndFlagsBits = 0xD00000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  LocalizedStringResource.init(stringInterpolation:)();
  v24 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v25 = [objc_opt_self() folderSystemImageNameForFolderOfType:*(v1 + 32)];
  if (v25)
  {
    v26 = v25;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
    sub_100003CBC(v9, &unk_1002D38C0, qword_10024C020);
    sub_10016377C(v6, v9);
  }

  v27 = *(v12 + 16);
  v27(v32, v19, v11);
  v28 = v33;
  v27(v33, v16, v11);
  (*(v12 + 56))(v28, 0, 1, v11);
  sub_10016370C(v9, v6);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_100003CBC(v9, &unk_1002D38C0, qword_10024C020);
  v29 = *(v12 + 8);
  v29(v16, v11);
  return (v29)(v19, v11);
}

unint64_t sub_10015E0A8()
{
  result = qword_1002D36C0;
  if (!qword_1002D36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36C0);
  }

  return result;
}

unint64_t sub_10015E0FC()
{
  result = qword_1002D36C8;
  if (!qword_1002D36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36C8);
  }

  return result;
}

unint64_t sub_10015E150()
{
  result = qword_1002D36D0;
  if (!qword_1002D36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36D0);
  }

  return result;
}

unint64_t sub_10015E1A8()
{
  result = qword_1002D36D8;
  if (!qword_1002D36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36D8);
  }

  return result;
}

uint64_t sub_10015E278(uint64_t a1)
{
  v2 = sub_10015E4D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10015E2C8()
{
  result = qword_1002D36F0;
  if (!qword_1002D36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36F0);
  }

  return result;
}

uint64_t sub_10015E320(uint64_t a1)
{
  v2 = sub_10015E1A8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10015E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_100105618;

  return sub_100162918(a2, a3);
}

unint64_t sub_10015E428()
{
  result = qword_1002D36F8;
  if (!qword_1002D36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D36F8);
  }

  return result;
}

unint64_t sub_10015E480()
{
  result = qword_1002D3700;
  if (!qword_1002D3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3700);
  }

  return result;
}

unint64_t sub_10015E4D4()
{
  result = qword_1002D3708;
  if (!qword_1002D3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3708);
  }

  return result;
}

uint64_t sub_10015E528(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1001570D0;

  return sub_100162664(a1);
}

unint64_t sub_10015E5D4()
{
  result = qword_1002D3710;
  if (!qword_1002D3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3710);
  }

  return result;
}

uint64_t sub_10015E628(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10015D784();
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_10015E6E0()
{
  result = qword_1002D3728;
  if (!qword_1002D3728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3728);
  }

  return result;
}

unint64_t sub_10015E738()
{
  result = qword_1002D3730;
  if (!qword_1002D3730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3730);
  }

  return result;
}

unint64_t sub_10015E790()
{
  result = qword_1002D3738;
  if (!qword_1002D3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3738);
  }

  return result;
}

unint64_t sub_10015E7E8()
{
  result = qword_1002D3740;
  if (!qword_1002D3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3740);
  }

  return result;
}

uint64_t sub_10015E89C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9040);
  sub_100018D90(v0, qword_1002E9040);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10015E900(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  v2[18] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v2[19] = swift_task_alloc();
  v3 = type metadata accessor for IntentDialog();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[23] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015EA58, v5, v4);
}

uint64_t sub_10015EA58()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v3 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = sub_10015EDCC(v2, *(v0 + 120), *(v0 + 136));
      v10 = *(v0 + 168);
      v11 = *(v0 + 176);
      v12 = *(v0 + 160);
      v13 = v4;

      swift_getObjectType();
      sub_10015D824(v0 + 16);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v14._object = 0x8000000100233E20;
      v14._countAndFlagsBits = 0xD000000000000024;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
      v15 = [v13 name];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19._countAndFlagsBits = v16;
      v19._object = v18;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      IntentDialog.init(stringInterpolation:)();
      v21 = *(v0 + 32);
      *(v0 + 56) = *(v0 + 16);
      *(v0 + 72) = v21;
      *(v0 + 88) = *(v0 + 48);
      sub_10015E150();
      static IntentResult.result<A>(value:dialog:)();
      swift_unknownObjectRelease();
      (*(v10 + 8))(v11, v12);
      *(v0 + 96) = *(v0 + 16);
      sub_10012ECCC(v0 + 96);

      v22 = *(v0 + 8);
      goto LABEL_8;
    }
  }

  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v7 = *(v0 + 160);
  v8 = *(v0 + 144);
  IntentDialog.init(stringLiteral:)();
  IntentParameter.projectedValue.getter();
  (*(v6 + 16))(v8, v5, v7);
  (*(v6 + 56))(v8, 0, 1, v7);
  type metadata accessor for AppIntentError();
  sub_1001636C4(&qword_1002D3898, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
  swift_allocError();
  IntentParameter.needsValueError(_:)();

  sub_100003CBC(v8, &qword_1002CF820, &unk_10024AE50);
  swift_willThrow();
  (*(v6 + 8))(v5, v7);

  v22 = *(v0 + 8);
LABEL_8:

  return v22();
}

id sub_10015EDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v3 = sub_1000C773C(&qword_1002CF820, &unk_10024AE50);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = type metadata accessor for IntentDialog();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedRecordingsModelInteractor];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 userFolderExistsWithName:v11];

  if (v12)
  {
    IntentDialog.init(stringLiteral:)();
    IntentParameter.projectedValue.getter();
    (*(v7 + 16))(v5, v9, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    type metadata accessor for AppIntentError();
    sub_1001636C4(&qword_1002D3898, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_100003CBC(v5, &qword_1002CF820, &unk_10024AE50);
    swift_willThrow();

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = [objc_opt_self() sharedApplicationModel];
    v15 = String._bridgeToObjectiveC()();
    v16 = [v14 folderWithName:v15];

    return v16;
  }
}

uint64_t sub_10015F0F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000C773C(&qword_1002D38A0, &qword_10024BFD0);
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000C773C(&qword_1002D38A8, &qword_10024BFD8);
  __chkstk_darwin(v3);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100233E80;
  v4._countAndFlagsBits = 0xD000000000000027;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_1000C773C(&unk_1002D38B0, &qword_10024C008);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10015F290(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002001C;

  return sub_10015E900(a1, v4);
}

uint64_t sub_10015F330@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100162BE8();
  *a1 = result;
  return result;
}

uint64_t sub_10015F358(uint64_t a1)
{
  v2 = sub_10015E738();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10015F398()
{
  result = qword_1002D3758;
  if (!qword_1002D3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3758);
  }

  return result;
}

uint64_t sub_10015F3EC()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9058);
  sub_100018D90(v0, qword_1002E9058);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10015F450(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[11] = v5;
  v2[12] = v4;

  return _swift_task_switch(sub_10015F544, v5, v4);
}

uint64_t sub_10015F544()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[4];
  v0[13] = v1;
  v2 = IntentParameter.projectedValue.getter();
  v0[14] = v2;
  LocalizedStringResource.init(stringLiteral:)();
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_10015F654;
  v4 = v0[9];

  return sub_1000E1FFC(v1, v2, v4, sub_1000E0FF4, 0);
}

uint64_t sub_10015F654(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 128) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  v7 = *(v2 + 88);

  return _swift_task_switch(sub_10015F820, v7, v6);
}

void sub_10015F820()
{
  v1 = 0;
  v2 = v0[16];
  v3 = *(v2 + 16);
LABEL_2:
  v0[17] = _swiftEmptyArrayStorage;
  v4 = v2 + 40 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    ++v1;
    v5 = (v4 + 40);
    v6 = *(v4 + 64);
    v4 += 40;
    if (v6 == 4)
    {
      v8 = *(v5 - 1);
      v7 = *v5;
      v9 = v5[1];
      v10 = v5[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1001AE614(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1001AE614((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[5 * v12];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v9;
      v13[7] = v10;
      v13[8] = 4;
      goto LABEL_2;
    }
  }

  v14 = swift_task_alloc();
  v0[18] = v14;
  *v14 = v0;
  v14[1] = sub_10015F9E4;
  v15 = v0[6];

  sub_1000E34E4(v15, _swiftEmptyArrayStorage);
}

uint64_t sub_10015F9E4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10015FC60;
  }

  else
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10015FB00;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10015FB00()
{
  v1 = *(v0 + 136);

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 136);
    v4 = objc_opt_self();
    v5 = v3 + 56;
    do
    {
      v5 += 40;

      v6 = [v4 sharedRecordingsModelInteractor];
      EntityProperty.wrappedValue.getter();
      v7 = String._bridgeToObjectiveC()();

      [v6 deleteUserFolderWithName:v7];

      --v2;
    }

    while (v2);
  }

  static IntentResult.result<>()();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10015FC60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015FD3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001FF1C;

  return sub_10015F450(a1, v4);
}

uint64_t sub_10015FDDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100162F44();
  *a1 = result;
  return result;
}

unint64_t sub_10015FE08()
{
  result = qword_1002D3778;
  if (!qword_1002D3778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002D3778);
  }

  return result;
}

uint64_t sub_10015FE5C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100018DC8(v0, qword_1002E9070);
  sub_100018D90(v0, qword_1002E9070);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10015FEC0()
{
  v0 = type metadata accessor for IntentModes.ForegroundMode();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IntentModes();
  sub_100018DC8(v4, qword_1002E9088);
  sub_100018D90(v4, qword_1002E9088);
  sub_1000C773C(&qword_1002D3028, &qword_10024B130);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100242C70;
  static IntentModes.ForegroundMode.deferred.getter();
  static IntentModes.foreground(_:)();
  (*(v1 + 8))(v3, v0);
  v7[1] = v5;
  sub_1001636C4(&unk_1002D3880, &type metadata accessor for IntentModes, &protocol conformance descriptor for IntentModes);
  sub_1000C773C(&qword_1002D3030, &qword_10024B138);
  sub_100008034(&qword_1002D3890, &qword_1002D3030, &qword_10024B138, &protocol conformance descriptor for [A]);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

__n128 sub_1001600EC@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_100160138(void *a1)
{

  IntentParameter.wrappedValue.setter();
}

void (*sub_1001601B8(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10010DCE8;
}

uint64_t sub_100160328@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100018D90(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1001603D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100163274();
  *a1 = result;
  return result;
}

uint64_t sub_1001603F8()
{
  sub_1000C773C(&qword_1002D0780, &qword_1002444E0);
  type metadata accessor for _AssistantIntent();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100244070;
  sub_100163274();
  sub_100013328();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100162BE8();
  sub_10015E738();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  sub_100162F44();
  sub_1000131E8();
  result = _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  qword_1002E90A0 = v0;
  return result;
}

uint64_t sub_1001605C0(uint64_t a1)
{
  v41 = a1;
  v1 = sub_1000C773C(&qword_1002D3850, &qword_10024BFA0);
  v2 = *(v1 - 8);
  v42 = v1;
  v43 = v2;
  __chkstk_darwin(v1);
  v4 = v31 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C773C(&qword_1002D3858, &qword_10024BFA8);
  __chkstk_darwin(v9);
  v10 = sub_100013328();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x6C6F66206E65706FLL;
  v11._object = 0xEC00000020726564;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v40 = sub_10015E150();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 544106784;
  v12._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v38 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v33 = *(v6 + 104);
  v33(v8);
  v31[0] = v6 + 104;
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13 = *(v6 + 8);
  v31[1] = v6 + 8;
  v32 = v13;
  v13(v8, v5);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v37 = v4;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = v10;
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = *(v43 + 8);
  v43 += 8;
  v39 = v15;
  v15(v4, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20796D206E65706FLL;
  v16._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x207265646C6F6620;
  v17._object = 0xEB00000000206E69;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v33;
  (v33)(v8, v38, v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v19 = v32;
  v32(v8, v5);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v21, v42);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x20796D206E65706FLL;
  v22._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  (v18)(v8, v38, v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v19(v8, v5);
  v23._countAndFlagsBits = 32;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x7265646C6F6620;
  v24._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v37;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v26 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v39(v25, v42);
  sub_1000C773C(&qword_1002D3860, &qword_10024BFB0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100244070;
  v28 = v34;
  *(v27 + 32) = v35;
  *(v27 + 40) = v28;
  *(v27 + 48) = v26;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t sub_100160B7C(void *a1)
{

  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100160C2C(uint64_t a1)
{
  v52 = a1;
  v61 = sub_1000C773C(&qword_1002D3828, &qword_10024BF60);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v2 = &v44 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C773C(&qword_1002D3830, &qword_10024BF68);
  __chkstk_darwin(v7);
  v8 = sub_10015E738();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x6620657461657263;
  v9._object = 0xEE00207265646C6FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v51 = sub_100156E78();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v56 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = *(v4 + 104);
  v57 = v4 + 104;
  v58 = v3;
  v55 = v11;
  v48 = v6;
  (v11)(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v4 + 8);
  v54 = v4 + 8;
  v12(v6, v3);
  v13 = v12;
  v50 = v12;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v49 = v2;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v53 = v8;
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v59 + 8;
  v60 = *(v59 + 8);
  v60(v2, v61);
  v59 = v15;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x6120657461657263;
  v16._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v48;
  v18 = v56;
  v19 = v58;
  v20 = v55;
  v55(v48, v56, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v13(v17, v19);
  v21._countAndFlagsBits = 0x7265646C6F6620;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v49;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v22, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6120657461657263;
  v23._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v48;
  v25 = v58;
  v20(v48, v18, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26 = v50;
  v50(v24, v25);
  v27._countAndFlagsBits = 0x207265646C6F6620;
  v27._object = 0xEE002064656D616ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v49;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v29, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x6120657461657263;
  v30._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  v31 = v58;
  v55(v24, v56, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v24, v31);
  v32._object = 0xEF2064656C6C6163;
  v32._countAndFlagsBits = 0x207265646C6F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v29, v61);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v34._countAndFlagsBits = 0x6120657461657263;
  v34._object = 0xED00002077656E20;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v34);
  v35 = v58;
  v55(v24, v56, v58);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v50(v24, v35);
  v36._object = 0xEF2064656C746974;
  v36._countAndFlagsBits = 0x207265646C6F6620;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v60(v29, v61);
  sub_1000C773C(&qword_1002D3838, &qword_10024BF70);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100245420;
  v40 = v46;
  *(v39 + 32) = v47;
  *(v39 + 40) = v40;
  v41 = v44;
  *(v39 + 48) = v45;
  *(v39 + 56) = v41;
  *(v39 + 64) = v38;
  v42 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v42;
}