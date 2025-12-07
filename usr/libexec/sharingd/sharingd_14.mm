uint64_t sub_1002F1D34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v48 = a4;
  v46 = a3;
  v58 = a1;
  v7 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = __chkstk_darwin(v7);
  v52 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v51 = v44 - v10;
  v11 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  __chkstk_darwin(v11 - 8);
  v44[0] = v44 - v12;
  v57 = type metadata accessor for DispatchTime();
  v47 = *(v57 - 8);
  v13 = __chkstk_darwin(v57);
  v49 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = v44 - v15;
  v45 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v45);
  v44[1] = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F17FC(a2, v5 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_noLaterThan);
  sub_1000276B4(0, &qword_10097DBA0, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002F30F0(&unk_100977390, &type metadata accessor for OS_dispatch_source.TimerFlags, &protocol conformance descriptor for OS_dispatch_source.TimerFlags);
  sub_10028088C(&qword_1009820E0, &qword_1008085E0);
  sub_100011630(qword_1009773A0, &qword_1009820E0, &qword_1008085E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v46;
  v22 = a2;
  v23 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v18 + 8))(v20, v17);
  *(v56 + OBJC_IVAR____TtC16DaemoniOSLibrary13PushableTimer_timer) = v23;
  aBlock[4] = v48;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v24 = v44[0];
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008DAAD8;
  _Block_copy(aBlock);
  v59 = _swiftEmptyArrayStorage;
  sub_1002F30F0(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  v25 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v26 = DispatchWorkItem.init(flags:block:)();

  v27 = v57;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v48 = v26;
  OS_dispatch_source.setEventHandler(handler:)();
  swift_unknownObjectRelease();
  v53 = v22;
  sub_1002F17FC(v22, v24);
  v28 = *(v25 + 48);
  if (v28(v24, 1, v27) == 1)
  {
    v29 = v49;
    static DispatchTime.distantFuture.getter();
    if (v28(v24, 1, v27) != 1)
    {
      sub_100005508(v24, &qword_100976C00, &unk_1007F9D70);
    }
  }

  else
  {
    v29 = v49;
    (*(v25 + 32))(v49, v24, v27);
  }

  sub_1002F30F0(&qword_100976C08, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v30 = v58;
  v31 = dispatch thunk of static Comparable.< infix(_:_:)();
  v32 = v50;
  if (v31)
  {
    (*(v25 + 32))(v50, v29, v27);
  }

  else
  {
    (*(v25 + 8))(v29, v27);
    (*(v25 + 16))(v32, v30, v27);
  }

  v33 = v25;
  swift_getObjectType();
  v35 = v54;
  v34 = v55;
  v36 = *(v54 + 104);
  v37 = v51;
  v36(v51, enum case for DispatchTimeInterval.never(_:), v55);
  v38 = v52;
  *v52 = 0;
  v36(v38, enum case for DispatchTimeInterval.nanoseconds(_:), v34);
  v39 = v32;
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();

  sub_100005508(v53, &qword_100976C00, &unk_1007F9D70);
  v40 = *(v33 + 8);
  v41 = v57;
  v40(v58, v57);
  v42 = *(v35 + 8);
  v42(v38, v34);
  v42(v37, v34);
  v40(v39, v41);
  return v56;
}

unint64_t sub_1002F24FC()
{
  result = qword_100976C38;
  if (!qword_100976C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976C38);
  }

  return result;
}

uint64_t _s7FeatureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FeatureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1002F26EC(uint64_t a1)
{
  sub_1002F2784(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002F2784(uint64_t a1)
{
  if (!qword_100976D40)
  {
    type metadata accessor for DispatchTime();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100976D40);
    }
  }
}

void sub_1002F28F4(uint64_t a1)
{
  sub_1002F298C();
  if (v1 <= 0x3F)
  {
    sub_1002F29BC(319);
    if (v2 <= 0x3F)
    {
      sub_1000276B4(319, &unk_100977150, SFB389NFCPromptConfiguration_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1002F298C()
{
  result = qword_100977140;
  if (!qword_100977140)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100977140);
  }

  return result;
}

void sub_1002F29BC(uint64_t a1)
{
  if (!qword_100977148)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100977148);
    }
  }
}

void sub_1002F2A70(uint64_t a1)
{
  type metadata accessor for B389PresentationConfig.Mode(319);
  if (v1 <= 0x3F)
  {
    sub_1002F2B90(319, &qword_1009771E8, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      sub_1002F2B90(319, qword_1009771F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1002F2B90(319, &unk_100978AB0, &type metadata for Data);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002F2B90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002F2BDC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6580592 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F43726F6C6F63 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7375655A7369 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5079726574746162 && a2 == 0xEE0064616F6C7961 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5479726574746162 && a2 == 0xED0000776F4C6F6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6572685469737372 && a2 == 0xED0000646C6F6873 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010078B020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E69766172676E65 && a2 == 0xED00006174614467)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t sub_1002F2F84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D7690, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1002F2FF4()
{
  result = qword_100977268;
  if (!qword_100977268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977268);
  }

  return result;
}

unint64_t sub_1002F3048()
{
  result = qword_100977270;
  if (!qword_100977270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977270);
  }

  return result;
}

unint64_t sub_1002F309C()
{
  result = qword_100977278;
  if (!qword_100977278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977278);
  }

  return result;
}

uint64_t sub_1002F30F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F3138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1002F3198()
{
  result = qword_1009772B0;
  if (!qword_1009772B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009772B0);
  }

  return result;
}

Swift::Int sub_1002F31EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975460, &qword_1007F8820);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_100010684(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_100010684(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = sub_100285E74(v18);
        if (v11)
        {
          sub_100285E74(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_1002F334C(uint64_t a1)
{
  v149 = sub_10028088C(&unk_100978CD0, &unk_1007FC090);
  __chkstk_darwin(v149);
  v3 = &v144 - v2;
  v156 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  v4 = __chkstk_darwin(v156);
  v160 = (&v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v148 = &v144 - v6;
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  v8 = __chkstk_darwin(v7 - 8);
  v155 = (&v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v146 = &v144 - v10;
  v11 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  v12 = __chkstk_darwin(v11 - 8);
  v153 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v144 - v14;
  v15 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v17);
  v22 = (&v144 - v21);
  v23 = __chkstk_darwin(v20);
  v24 = __chkstk_darwin(v23);
  v26 = &v144 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v144 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = (&v144 - v31);
  __chkstk_darwin(v30);
  v166 = &v144 - v34;
  v35 = *(a1 + 16);
  if (!v35)
  {
    return _swiftEmptySetSingleton;
  }

  v159 = v33;
  sub_10028088C(&unk_100977340, &unk_1007FA1C0);
  v164 = a1;
  v36 = static _SetStorage.allocate(capacity:)();
  v37 = 0;
  v165 = v36;
  v163 = v36 + 56;
  v152 = v164 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v164 = *(v16 + 72);
  v38 = v149;
  v161 = v22;
  v158 = v26;
  v151 = v32;
  v154 = v19;
  v150 = v35;
  while (1)
  {
    v157 = v37;
    v39 = v166;
    sub_1002F4C20(v152 + v164 * v37, v166, type metadata accessor for SDAirDropDiscoveredEndpoint);
    Hasher.init(_seed:)();
    sub_1002F4C20(v39, v32, type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v44 = v148;
        sub_1002F5394(v32, v148, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        Hasher._combine(_:)(2uLL);
        Data.hash(into:)();
        v45 = v156;
        type metadata accessor for UUID();
        sub_1002F30F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        if (*(v44 + *(v45 + 28) + 8))
        {
          Hasher._combine(_:)(1u);
          String.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v38 = v149;
        v48 = v148;
        Hasher._combine(_:)(*(v148 + *(v156 + 36)));
        sub_1002F3138(v48, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        v22 = v161;
        v26 = v158;
      }

      else
      {
        v47 = *v32;
        Hasher._combine(_:)(3uLL);
        NSObject.hash(into:)();

        v22 = v161;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v46 = v32;
        v42 = v146;
        sub_1002F5394(v46, v146, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        Hasher._combine(_:)(1uLL);
        sub_10032D050(__s1);
        v43 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      }

      else
      {
        v41 = v32;
        v42 = v145;
        sub_1002F5394(v41, v145, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        Hasher._combine(_:)(0);
        sub_10032CD80(__s1);
        v43 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
      }

      sub_1002F3138(v42, v43);
    }

    v49 = Hasher._finalize()();
    v50 = v165;
    v162 = ~(-1 << *(v165 + 32));
    v51 = v49 & v162;
    v52 = (v49 & v162) >> 6;
    v53 = *(v163 + 8 * v52);
    v54 = 1 << (v49 & v162);
    if ((v54 & v53) != 0)
    {
      break;
    }

LABEL_17:
    *(v163 + 8 * v52) = v53 | v54;
    sub_1002F5394(v166, *(v50 + 48) + v51 * v164, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v55 = *(v50 + 16);
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
    }

    *(v50 + 16) = v57;
LABEL_4:
    v37 = v157 + 1;
    v32 = v151;
    if (v157 + 1 == v150)
    {
      return v165;
    }
  }

  while (1)
  {
    sub_1002F4C20(*(v50 + 48) + v51 * v164, v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v58 = *(v38 + 48);
    sub_1002F4C20(v29, v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002F4C20(v166, &v3[v58], type metadata accessor for SDAirDropDiscoveredEndpoint);
    v59 = swift_getEnumCaseMultiPayload();
    if (v59 > 1)
    {
      break;
    }

    if (!v59)
    {
      sub_1002F4C20(v3, v26, type metadata accessor for SDAirDropDiscoveredEndpoint);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v60 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
        v61 = v26;
LABEL_46:
        sub_1002F3138(v61, v60);
LABEL_48:
        v50 = v165;
        sub_100005508(v3, &unk_100978CD0, &unk_1007FC090);
        goto LABEL_24;
      }

      v76 = v153;
      sub_1002F5394(&v3[v58], v153, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      v77 = sub_100331670();
      sub_1002F3138(v76, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_1002F3138(v26, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      if (v77)
      {
LABEL_3:
        sub_1002F3138(v166, type metadata accessor for SDAirDropDiscoveredEndpoint);
        sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v22 = v161;
        goto LABEL_4;
      }

      goto LABEL_50;
    }

    v70 = v159;
    sub_1002F4C20(v3, v159, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v60 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
      v61 = v70;
      goto LABEL_46;
    }

    v71 = v155;
    sub_1002F5394(&v3[v58], v155, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    v72 = sub_100331B60(v70, v71);
    sub_1002F3138(v71, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    sub_1002F3138(v70, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
    if (v72)
    {
      sub_1002F3138(v166, type metadata accessor for SDAirDropDiscoveredEndpoint);
      sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v22 = v161;
      v26 = v158;
      goto LABEL_4;
    }

    sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v22 = v161;
    v26 = v158;
LABEL_23:
    v50 = v165;
LABEL_24:
    v51 = (v51 + 1) & v162;
    v52 = v51 >> 6;
    v53 = *(v163 + 8 * (v51 >> 6));
    v54 = 1 << v51;
    if ((v53 & (1 << v51)) == 0)
    {
      goto LABEL_17;
    }
  }

  if (v59 != 2)
  {
    sub_1002F4C20(v3, v19, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v73 = *v19;
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);

      v22 = v161;
      goto LABEL_48;
    }

    v74 = *&v3[v58];
    sub_1000276B4(0, &qword_1009772D8, NSObject_ptr);
    v75 = static NSObject.== infix(_:_:)();

    sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    if (v75)
    {
      goto LABEL_3;
    }

LABEL_50:
    sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v22 = v161;
    goto LABEL_23;
  }

  sub_1002F4C20(v3, v22, type metadata accessor for SDAirDropDiscoveredEndpoint);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v60 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
    v61 = v22;
    goto LABEL_46;
  }

  v62 = v160;
  sub_1002F5394(&v3[v58], v160, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
  v63 = *v22;
  v64 = v22[1];
  v66 = *v62;
  v65 = v62[1];
  v67 = v64 >> 62;
  v68 = v65 >> 62;
  if (v64 >> 62 == 3)
  {
    v69 = 0;
    if (!v63 && v64 == 0xC000000000000000 && v65 >> 62 == 3)
    {
      v69 = 0;
      if (!v66 && v65 == 0xC000000000000000)
      {
        goto LABEL_168;
      }
    }

LABEL_61:
    if (v68 <= 1)
    {
      goto LABEL_62;
    }

    goto LABEL_67;
  }

  if (v67 <= 1)
  {
    if (!v67)
    {
      v69 = BYTE6(v64);
      if (v68 <= 1)
      {
        goto LABEL_62;
      }

      goto LABEL_67;
    }

    LODWORD(v69) = HIDWORD(v63) - v63;
    if (__OFSUB__(HIDWORD(v63), v63))
    {
      goto LABEL_187;
    }

    v69 = v69;
    goto LABEL_61;
  }

  if (v67 == 2)
  {
    v79 = *(v63 + 16);
    v78 = *(v63 + 24);
    v56 = __OFSUB__(v78, v79);
    v69 = v78 - v79;
    if (v56)
    {
      goto LABEL_186;
    }

    goto LABEL_61;
  }

  v69 = 0;
  if (v68 <= 1)
  {
LABEL_62:
    if (v68)
    {
      LODWORD(v80) = HIDWORD(v66) - v66;
      if (__OFSUB__(HIDWORD(v66), v66))
      {
        goto LABEL_185;
      }

      v80 = v80;
    }

    else
    {
      v80 = BYTE6(v65);
    }

    goto LABEL_69;
  }

LABEL_67:
  if (v68 != 2)
  {
    if (v69)
    {
      goto LABEL_20;
    }

    goto LABEL_168;
  }

  v82 = *(v66 + 16);
  v81 = *(v66 + 24);
  v56 = __OFSUB__(v81, v82);
  v80 = v81 - v82;
  if (v56)
  {
    goto LABEL_184;
  }

LABEL_69:
  if (v69 != v80)
  {
    goto LABEL_20;
  }

  if (v69 < 1)
  {
    goto LABEL_168;
  }

  if (v67 <= 1)
  {
    if (!v67)
    {
      *__s1 = v63;
      *&__s1[8] = v64;
      __s1[10] = BYTE2(v64);
      __s1[11] = BYTE3(v64);
      __s1[12] = BYTE4(v64);
      __s1[13] = BYTE5(v64);
      if (v68)
      {
        if (v68 == 1)
        {
          v83 = v66;
          if (v66 >> 32 < v66)
          {
            goto LABEL_191;
          }

          v144 = (v66 >> 32) - v66;
          v84 = __DataStorage._bytes.getter();
          if (!v84)
          {
            goto LABEL_222;
          }

          v85 = v84;
          v86 = __DataStorage._offset.getter();
          if (__OFSUB__(v83, v86))
          {
            goto LABEL_196;
          }

          v87 = v83 - v86 + v85;
          v88 = __DataStorage._length.getter();
          if (!v87)
          {
            goto LABEL_221;
          }

          goto LABEL_137;
        }

        v116 = *(v66 + 16);
        v117 = *(v66 + 24);
        v99 = __DataStorage._bytes.getter();
        if (v99)
        {
          v118 = __DataStorage._offset.getter();
          if (__OFSUB__(v116, v118))
          {
            goto LABEL_201;
          }

          v99 += v116 - v118;
        }

        v101 = v117 - v116;
        if (__OFSUB__(v117, v116))
        {
          goto LABEL_193;
        }

        v102 = __DataStorage._length.getter();
        if (!v99)
        {
          goto LABEL_220;
        }

        goto LABEL_128;
      }

LABEL_96:
      v167 = v66;
      v168 = v65;
      v169 = BYTE2(v65);
      v170 = BYTE3(v65);
      v171 = BYTE4(v65);
      v103 = BYTE6(v65);
      v172 = BYTE5(v65);
      v104 = __s1;
      v105 = &v167;
      goto LABEL_167;
    }

    v93 = v63;
    if (v63 > v63 >> 32)
    {
      goto LABEL_188;
    }

    v147 = v62[1];
    v94 = __DataStorage._bytes.getter();
    if (v94)
    {
      v95 = v94;
      v96 = __DataStorage._offset.getter();
      if (__OFSUB__(v93, v96))
      {
        goto LABEL_190;
      }

      v144 = v93 - v96 + v95;
    }

    else
    {
      v144 = 0;
    }

    __DataStorage._length.getter();
    v38 = v149;
    v26 = v158;
    if (v68 != 2)
    {
      v106 = BYTE6(v147);
      if (v68 == 1)
      {
        v112 = v66;
        v113 = (v66 >> 32) - v66;
        if (v66 >> 32 < v66)
        {
          goto LABEL_199;
        }

        v87 = __DataStorage._bytes.getter();
        if (v87)
        {
          v114 = __DataStorage._offset.getter();
          if (__OFSUB__(v112, v114))
          {
            goto LABEL_206;
          }

          v87 += v112 - v114;
        }

        v115 = __DataStorage._length.getter();
        if (v115 >= v113)
        {
          v111 = v113;
        }

        else
        {
          v111 = v115;
        }

        v104 = v144;
        if (!v144)
        {
          goto LABEL_214;
        }

        if (!v87)
        {
          goto LABEL_213;
        }

        goto LABEL_162;
      }

      v104 = v144;
      *__s1 = v66;
      *&__s1[8] = v147;
      *&__s1[12] = WORD2(v147);
      if (!v144)
      {
        goto LABEL_217;
      }

LABEL_166:
      v103 = v106;
      v105 = __s1;
LABEL_167:
      if (memcmp(v104, v105, v103))
      {
        goto LABEL_20;
      }

      goto LABEL_168;
    }

    v129 = *(v66 + 16);
    v130 = *(v66 + 24);
    v87 = __DataStorage._bytes.getter();
    if (v87)
    {
      v131 = __DataStorage._offset.getter();
      if (__OFSUB__(v129, v131))
      {
        goto LABEL_204;
      }

      v87 += v129 - v131;
    }

    if (__OFSUB__(v130, v129))
    {
      goto LABEL_200;
    }

    v132 = __DataStorage._length.getter();
    if (v132 >= v130 - v129)
    {
      v111 = v130 - v129;
    }

    else
    {
      v111 = v132;
    }

    v104 = v144;
    if (!v144)
    {
      goto LABEL_210;
    }

    v38 = v149;
    v26 = v158;
    if (!v87)
    {
      goto LABEL_209;
    }

    goto LABEL_162;
  }

  if (v67 == 2)
  {
    v147 = v62[1];
    v89 = *(v63 + 16);
    v90 = __DataStorage._bytes.getter();
    if (v90)
    {
      v91 = v90;
      v92 = __DataStorage._offset.getter();
      if (__OFSUB__(v89, v92))
      {
        goto LABEL_189;
      }

      v144 = v89 - v92 + v91;
    }

    else
    {
      v144 = 0;
    }

    __DataStorage._length.getter();
    v38 = v149;
    v26 = v158;
    if (v68 != 2)
    {
      v106 = BYTE6(v147);
      if (v68 == 1)
      {
        v107 = v66;
        v108 = (v66 >> 32) - v66;
        if (v66 >> 32 < v66)
        {
          goto LABEL_194;
        }

        v87 = __DataStorage._bytes.getter();
        if (v87)
        {
          v109 = __DataStorage._offset.getter();
          if (__OFSUB__(v107, v109))
          {
            goto LABEL_205;
          }

          v87 += v107 - v109;
        }

        v110 = __DataStorage._length.getter();
        if (v110 >= v108)
        {
          v111 = v108;
        }

        else
        {
          v111 = v110;
        }

        v104 = v144;
        if (!v144)
        {
          goto LABEL_212;
        }

        if (!v87)
        {
          goto LABEL_211;
        }

        goto LABEL_162;
      }

      v104 = v144;
      *__s1 = v66;
      *&__s1[8] = v147;
      *&__s1[12] = WORD2(v147);
      if (!v144)
      {
        goto LABEL_215;
      }

      goto LABEL_166;
    }

    v125 = *(v66 + 16);
    v126 = *(v66 + 24);
    v87 = __DataStorage._bytes.getter();
    if (v87)
    {
      v127 = __DataStorage._offset.getter();
      if (__OFSUB__(v125, v127))
      {
        goto LABEL_203;
      }

      v87 += v125 - v127;
    }

    if (__OFSUB__(v126, v125))
    {
      goto LABEL_198;
    }

    v128 = __DataStorage._length.getter();
    if (v128 >= v126 - v125)
    {
      v111 = v126 - v125;
    }

    else
    {
      v111 = v128;
    }

    v104 = v144;
    if (!v144)
    {
      goto LABEL_219;
    }

    v38 = v149;
    v26 = v158;
    if (!v87)
    {
      goto LABEL_218;
    }

LABEL_162:
    if (v104 != v87)
    {
      v103 = v111;
LABEL_164:
      v105 = v87;
      goto LABEL_167;
    }

LABEL_168:
    if (static UUID.== infix(_:_:)())
    {
      v133 = *(v156 + 28);
      v22 = v161;
      v134 = (v161 + v133);
      v135 = *(v161 + v133 + 8);
      v136 = (v160 + v133);
      v137 = v136[1];
      if (!v135)
      {
        sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v19 = v154;
        if (!v137)
        {
          goto LABEL_177;
        }

        goto LABEL_21;
      }

      if (v137)
      {
        if (*v134 == *v136 && v135 == v137)
        {
          sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
          v19 = v154;
          v22 = v161;
          goto LABEL_177;
        }

        v138 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
        v19 = v154;
        v22 = v161;
        if (v138)
        {
LABEL_177:
          v139 = *(v156 + 36);
          v140 = *(v22 + v139);
          v141 = *(v160 + v139);
          sub_1002F3138(v160, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          sub_1002F3138(v22, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v142 = v140 == v141;
          v26 = v158;
          v38 = v149;
          if (v142)
          {
            sub_1002F3138(v166, type metadata accessor for SDAirDropDiscoveredEndpoint);
            sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
            goto LABEL_4;
          }

          goto LABEL_22;
        }

LABEL_21:
        sub_1002F3138(v160, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        sub_1002F3138(v22, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
LABEL_22:
        sub_1002F3138(v3, type metadata accessor for SDAirDropDiscoveredEndpoint);
        goto LABEL_23;
      }
    }

LABEL_20:
    sub_1002F3138(v29, type metadata accessor for SDAirDropDiscoveredEndpoint);
    v19 = v154;
    v22 = v161;
    goto LABEL_21;
  }

  *&__s1[6] = 0;
  *__s1 = 0;
  if (!v68)
  {
    goto LABEL_96;
  }

  if (v68 == 2)
  {
    v97 = *(v66 + 16);
    v98 = *(v66 + 24);
    v99 = __DataStorage._bytes.getter();
    if (v99)
    {
      v100 = __DataStorage._offset.getter();
      if (__OFSUB__(v97, v100))
      {
        goto LABEL_202;
      }

      v99 += v97 - v100;
    }

    v101 = v98 - v97;
    if (__OFSUB__(v98, v97))
    {
      goto LABEL_195;
    }

    v102 = __DataStorage._length.getter();
    if (!v99)
    {
      goto LABEL_216;
    }

LABEL_128:
    if (v102 >= v101)
    {
      v119 = v101;
    }

    else
    {
      v119 = v102;
    }

    v120 = memcmp(__s1, v99, v119);
    v38 = v149;
    v26 = v158;
    if (v120)
    {
      goto LABEL_20;
    }

    goto LABEL_168;
  }

  v121 = v66;
  if (v66 >> 32 < v66)
  {
    goto LABEL_192;
  }

  v144 = (v66 >> 32) - v66;
  v122 = __DataStorage._bytes.getter();
  if (v122)
  {
    v123 = v122;
    v124 = __DataStorage._offset.getter();
    if (__OFSUB__(v121, v124))
    {
      goto LABEL_197;
    }

    v87 = v121 - v124 + v123;
    v88 = __DataStorage._length.getter();
    if (!v87)
    {
      goto LABEL_208;
    }

LABEL_137:
    if (v88 >= v144)
    {
      v103 = v144;
    }

    else
    {
      v103 = v88;
    }

    v104 = __s1;
    goto LABEL_164;
  }

  __DataStorage._length.getter();
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

void sub_1002F48E0(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_10028088C(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1000276B4(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_1000276B4(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_1002F4BCC()
{
  result = qword_1009772E8;
  if (!qword_1009772E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009772E8);
  }

  return result;
}

uint64_t sub_1002F4C20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002F4C88()
{
  result = qword_100977308;
  if (!qword_100977308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977308);
  }

  return result;
}

void sub_1002F4CDC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10028088C(&qword_100977360, &qword_1007FA1E0);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SDAirDropSendConnection(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SDAirDropSendConnection(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_1002F4FA8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_10028088C(&unk_100977310, &unk_1007FA1A0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1002F30F0(&qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1002F30F0(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_1002F5340()
{
  result = qword_100977320;
  if (!qword_100977320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977320);
  }

  return result;
}

uint64_t sub_1002F5394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002F5508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for SDAirDropAgentClient.DeviceFilter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SDAirDropAgentClient.DeviceFilter(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for B389PresentationConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for B389PresentationConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002F57A8()
{
  result = qword_1009774A8;
  if (!qword_1009774A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774A8);
  }

  return result;
}

unint64_t sub_1002F5800()
{
  result = qword_1009774B0;
  if (!qword_1009774B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774B0);
  }

  return result;
}

unint64_t sub_1002F5858()
{
  result = qword_1009774B8;
  if (!qword_1009774B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774B8);
  }

  return result;
}

unint64_t sub_1002F58CC()
{
  result = qword_1009774C0;
  if (!qword_1009774C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774C0);
  }

  return result;
}

unint64_t sub_1002F5924()
{
  result = qword_1009774C8;
  if (!qword_1009774C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774C8);
  }

  return result;
}

unint64_t sub_1002F597C()
{
  result = qword_1009774D0;
  if (!qword_1009774D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774D0);
  }

  return result;
}

unint64_t sub_1002F59D4()
{
  result = qword_1009774D8;
  if (!qword_1009774D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009774D8);
  }

  return result;
}

uint64_t sub_1002F5A6C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009774E0);
  v1 = sub_10000C4AC(v0, qword_1009774E0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002F5B34(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F5BD0, v3, 0);
}

uint64_t sub_1002F5BD0(uint64_t a1)
{
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (!v2)
  {
    goto LABEL_3;
  }

  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v3)
  {
    goto LABEL_3;
  }

  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000014 && 0x800000010078B170 == v8)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_3:
      v4 = 0;
      goto LABEL_4;
    }
  }

  v4 = sub_1002F5CC4(*(v1 + 16));
LABEL_4:
  v5 = *(v1 + 8);
  v6 = v4 & 1;

  return v5(v6);
}

uint64_t sub_1002F5CC4(void *a1)
{
  v2 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = SFVoiceMemosAppAvailable();
  if (result)
  {
    v47 = v9;
    v48 = v7;
    v43 = v5;
    v44 = v3;
    v49 = v6;
    v45 = v2;
    v46 = a1;
    v15 = SFAirDropReceive.AskRequest.files.getter();
    v16 = 0;
    v17 = *(v15 + 16);
    while (1)
    {
      if (v17 == v16)
      {

        v20 = objc_allocWithZone(LSApplicationRecord);
        v21 = sub_10066F3F8(0xD000000000000014, 0x800000010078B170, 1);
        v38 = v50;
        v39 = *(v50 + 16);
        *(v50 + 16) = v21;

        return *(v38 + 16) != 0;
      }

      if (v16 >= *(v15 + 16))
      {
        break;
      }

      (*(v11 + 16))(v13, v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16++, v10);
      SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
      (*(v11 + 8))(v13, v10);
      v18 = String._bridgeToObjectiveC()();

      v19 = SFIsVoiceMemo();

      if ((v19 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
    swift_once();
    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_1009774E0);
    v24 = v47;
    v23 = v48;
    v25 = v49;
    (*(v48 + 16))(v47, v46, v49);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v28 = 136315394;
      v29 = v43;
      SFAirDropReceive.AskRequest.id.getter();
      sub_1002F7108(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      v30 = v45;
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v41 = v27;
      v32 = v31;
      v34 = v33;
      (*(v44 + 8))(v29, v30);
      (*(v23 + 8))(v24, v25);
      v35 = sub_10000C4E4(v32, v34, &v51);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v36;
      v37 = v42;
      *v42 = v36;
      _os_log_impl(&_mh_execute_header, v26, v41, "Failed to get Voice Memo app for ask request %s: %@", v28, 0x16u);
      sub_100005508(v37, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v46);
    }

    else
    {

      (*(v23 + 8))(v24, v25);
    }

    v38 = v50;
    return *(v38 + 16) != 0;
  }

  return result;
}

uint64_t sub_1002F6228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v4[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F62C8, v5, 0);
}

uint64_t sub_1002F62C8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_1002F7108(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = sub_10028088C(&qword_100975610, &qword_1007F89B0);
  *v5 = v0;
  v5[1] = sub_1002F6410;
  v7 = v0[2];

  return withCheckedContinuation<A>(isolation:function:_:)(v7, v1, v3, 0xD000000000000027, 0x800000010078B120, sub_1002F6FB0, v4, v6);
}

uint64_t sub_1002F6410()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_1002F6524(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_1002F6FB8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002F6764;
  aBlock[3] = &unk_1008DADF8;
  v10 = _Block_copy(aBlock);

  [v6 importMemosForItems:isa completion:v10];
  _Block_release(v10);
}

uint64_t sub_1002F6704(void *a1)
{

  sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002F6764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for URL();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5(v4, a3);
}

uint64_t sub_1002F67E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t sub_1002F6C50@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerVoiceMemos();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1002F6C88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1002F5B34(a1);
}

uint64_t sub_1002F6D24(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;

  sub_10028088C(&qword_100975610, &qword_1007F89B0);
  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

void sub_1002F6E28(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x454D5F4543494F56;
  v5 = inited + 32;
  *(inited + 40) = 0xEA00000000004F4DLL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002F6FB8(void *a1)
{
  sub_10028088C(&qword_1009775E8, &qword_1007FA6D8);

  return sub_1002F6704(a1);
}

uint64_t sub_1002F7044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100005C00;

  return sub_1003D19DC(a1, a2, a3, v9, v8);
}

uint64_t sub_1002F7108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002F7174()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009775F0);
  v1 = sub_10000C4AC(v0, qword_1009775F0);
  if (qword_1009736F8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1002F723C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browserQueue;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  *&v2[v7] = static OS_dispatch_queue.main.getter();
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_managedConfig;
  *&v3[v8] = [objc_opt_self() sharedConnection];
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints] = &_swiftEmptyDictionarySingleton;
  v9 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler];
  *v9 = a1;
  *(v9 + 1) = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "init");
}

void sub_1002F733C()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  if (!*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_managedConfig);
    if (v2)
    {
      if ([v2 isClassroomEnabled])
      {
        v3 = [objc_allocWithZone(CRKShareTargetBrowser) initWithDelegate:v0 queue:*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browserQueue)];
        v4 = *(v0 + v1);
        *(v0 + v1) = v3;

        v5 = *(v0 + v1);
        if (v5)
        {

          [v5 resume];
        }
      }
    }
  }
}

uint64_t sub_1002F73F8(uint64_t a1)
{
  v72 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint(0);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint(0);
  __chkstk_darwin(v3 - 8);
  v70 = (&v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = type metadata accessor for UUID();
  v5 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint(0);
  __chkstk_darwin(v7 - 8);
  v67 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v65 = *(v75 - 8);
  v9 = __chkstk_darwin(v75);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v65 - v13);
  __chkstk_darwin(v12);
  v16 = &v65 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
    v19 = a1 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v20 = *(v65 + 72);
    v73 = v14;
    v74 = v20;
    v66 = (v5 + 8);
    v76 = &v65 - v15;
    do
    {
      sub_1002940CC(v19, v16);
      sub_1002940CC(v16, v14);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v32 = v71;
          sub_10000ECA8(v14, v71, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
          v28 = UUID.uuidString.getter();
          v30 = v33;
          sub_1002F96B0(v32, type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint);
        }

        else
        {
          v35 = *v14;
          v36 = [*v14 identifier];
          if (!v36)
          {
            goto LABEL_32;
          }

          v37 = v36;
          v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v38;
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v34 = v70;
        sub_10000ECA8(v14, v70, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
        v28 = *v34;
        v30 = v34[1];

        sub_1002F96B0(v34, type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint);
      }

      else
      {
        v25 = v67;
        v26 = sub_10000ECA8(v14, v67, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
        v27 = v68;
        sub_10032C0AC(v26);
        v28 = UUID.uuidString.getter();
        v30 = v29;
        (*v66)(v27, v69);
        v31 = v25;
        v16 = v76;
        sub_1002F96B0(v31, type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint);
      }

      v39 = v77;
      swift_beginAccess();
      v40 = v11;
      sub_1002940CC(v16, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = *(v39 + v18);
      v42 = v79;
      *(v39 + v18) = 0x8000000000000000;
      v44 = sub_100012854(v28, v30);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v48 = v43;
      if (v42[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v16 = v76;
          if (v43)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1002CEC98();
          v16 = v76;
          if (v48)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_100572DF0(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_100012854(v28, v30);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_33;
        }

        v44 = v49;
        v16 = v76;
        if (v48)
        {
LABEL_3:

          v21 = v79;
          v22 = v79[7] + v44 * v74;
          v23 = v74;
          v11 = v40;
          sub_1002F964C(v40, v22);
          goto LABEL_4;
        }
      }

      v21 = v79;
      v79[(v44 >> 6) + 8] |= 1 << v44;
      v51 = (v21[6] + 16 * v44);
      *v51 = v28;
      v51[1] = v30;
      v52 = v21[7] + v44 * v74;
      v23 = v74;
      v11 = v40;
      sub_10000ECA8(v40, v52, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v53 = v21[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_30;
      }

      v21[2] = v55;
LABEL_4:
      *(v77 + v18) = v21;

      swift_endAccess();
      sub_1002F96B0(v16, type metadata accessor for SDAirDropDiscoveredEndpoint);
      v19 += v23;
      --v17;
      v14 = v73;
    }

    while (v17);
  }

  v56 = v77;
  v57 = *(v77 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler);
  v58 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
  swift_beginAccess();
  v59 = *(v56 + v58);
  v60 = v59[2];
  if (v60)
  {
    v77 = v57;
    v61 = sub_10028F688(v60, 0);
    v62 = sub_100291D40(&v78, &v61[(*(v65 + 80) + 32) & ~*(v65 + 80)], v60, v59);
    v63 = v78;

    sub_100027D64(v63);
    if (v62 != v60)
    {
      goto LABEL_31;
    }

    v77(v61);
  }

  else
  {
    v57(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1002F7AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v12 = *v9;
      swift_beginAccess();

      v13 = sub_100012854(v11, v12);
      v15 = v14;

      if (v15)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *(v2 + v8);
        v33[0] = v17;
        *(v2 + v8) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CEC98();
          v17 = v33[0];
        }

        v18 = *(v17 + 56);
        v19 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        v20 = *(v19 - 8);
        sub_10000ECA8(v18 + *(v20 + 72) * v13, v6, type metadata accessor for SDAirDropDiscoveredEndpoint);
        sub_1002D45E0(v13, v17);
        *(v2 + v8) = v17;

        (*(v20 + 56))(v6, 0, 1, v19);
      }

      else
      {
        v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
        (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      }

      sub_1002F94BC(v6);
      swift_endAccess();
      v9 += 2;
      --v7;
    }

    while (v7);
  }

  v21 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_endpointsUpdateHandler);
  v22 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_classroomEndpoints;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v24 = v23[2];
  if (!v24)
  {
    v21(_swiftEmptyArrayStorage);
  }

  v31 = v21;
  v25 = sub_10028F688(v24, 0);
  v26 = *(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8);
  v27 = sub_100291D40(&v32, &v25[(*(v26 + 80) + 32) & ~*(v26 + 80)], v24, v23);
  v28 = v32;

  result = sub_100027D64(v28);
  if (v27 == v24)
  {
    v31(v25);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F7E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1002F7E2C, 0, 0);
}

uint64_t sub_1002F7E2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F7F24, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1002F7F24()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_1002F73F8(v2);

  return _swift_task_switch(sub_1002F7F9C, 0, 0);
}

uint64_t sub_1002F7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_1002F8000, 0, 0);
}

uint64_t sub_1002F8000()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 72) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F80F8, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1002F80F8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_1002F7AD4(v2);

  return _swift_task_switch(sub_1002F9710, 0, 0);
}

uint64_t sub_1002F8188(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v6 = a4;
  if (a4)
  {
    sub_1000276B4(0, &qword_1009776F8, CRKShareTarget_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = a3;
  v10 = a1;
  a5(v6);
}

uint64_t sub_1002F8220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[14] = swift_task_alloc();

  return _swift_task_switch(sub_1002F82BC, 0, 0);
}

uint64_t sub_1002F82BC()
{
  v23 = v0;
  if (qword_1009735A8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009775F0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315138;
    if (!v4)
    {
      __break(1u);
      return _swift_task_switch(v6, v7, v8);
    }

    v9 = v6;

    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_10000C4E4(v10, v11, &v22);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Classroom browser failed %s", v5, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_delegate;
    v0[17] = type metadata accessor for MainActor();
    v0[18] = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    v17 = sub_1002F85A0;
    goto LABEL_11;
  }

  swift_beginAccess();
  v18 = swift_unknownObjectWeakLoadStrong();
  v0[20] = v18;
  if (v18)
  {
    type metadata accessor for MainActor();
    v0[21] = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v19;
    v17 = sub_1002F8A18;
LABEL_11:
    v6 = v17;
    v7 = v14;
    v8 = v16;

    return _swift_task_switch(v6, v7, v8);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002F85A0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 152) = Strong;
  if (Strong)
  {
    v2 = sub_1002F8728;
  }

  else
  {
    v2 = sub_1002F862C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F862C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 168) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F8A18, v3, v2);
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1002F8728()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002F87C8, v1, 0);
}

uint64_t sub_1002F87C8()
{
  v1 = *(v0 + 112);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v3;

  sub_1002B3098(0, 0, v1, &unk_1007FA798, v5);
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1002F8924, 0, 0);
}

uint64_t sub_1002F8924()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[21] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002F8A18, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002F8A18()
{
  v1 = *(v0 + 160);

  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropClassroomBrowser_browser);
  v4 = *(v0 + 160);
  if (v3)
  {
    [v3 invalidate];
    v5 = *(v1 + v2);
    *(v1 + v2) = 0;

    v4 = v5;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1002F8CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F8220(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F8D90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_100485FCC(a1, v4, v5, v6);
}

uint64_t sub_1002F8E44(unint64_t a1)
{
  v26 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v23 - v8;
  if (a1)
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = &v23 - v8;
    for (i = v1; v11; i = v1)
    {
      v12 = 0;
      v25 = a1 & 0xC000000000000001;
      v13 = _swiftEmptyArrayStorage;
      v14 = a1;
      v15 = v10;
      v1 = v11;
      while (v25)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_17;
        }

LABEL_8:
        *v5 = v16;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_10028E820(0, v13[2] + 1, 1, v13);
        }

        v9 = v13[2];
        v17 = v13[3];
        if (v9 >= v17 >> 1)
        {
          v13 = sub_10028E820((v17 > 1), v9 + 1, 1, v13);
        }

        v13[2] = v9 + 1;
        sub_10000ECA8(v5, v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v9, type metadata accessor for SDAirDropDiscoveredEndpoint);
        ++v12;
        v18 = a1 == v1;
        a1 = v14;
        v10 = v15;
        if (v18)
        {
          goto LABEL_21;
        }
      }

      if (v12 >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v16 = *(a1 + 8 * v12 + 32);
      a1 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        goto LABEL_8;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v9;
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_21:
    v19 = type metadata accessor for TaskPriority();
    v20 = v23;
    (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v21;
    v22[5] = v13;
    sub_1002B3398(0, 0, v20, &unk_1007FA7C0, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F9164(unint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  if (a1)
  {
    if (a1 >> 62)
    {
LABEL_22:
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v27 = v1;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v9 = _swiftEmptyArrayStorage;
        v1 = &selRef_finishedEventForRecordID_withResults_;
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
              if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v11 = *(a1 + 8 * v10 + 32);
            }

            v12 = v11;
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              __break(1u);
LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

            v13 = [v11 identifier];
            if (v13)
            {
              break;
            }

            ++v10;
            if (v8 == v7)
            {
              goto LABEL_24;
            }
          }

          v26 = v6;
          v14 = v13;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v16;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_10028E1C8(0, *(v9 + 2) + 1, 1, v9);
          }

          v18 = *(v9 + 2);
          v17 = *(v9 + 3);
          if (v18 >= v17 >> 1)
          {
            v9 = sub_10028E1C8((v17 > 1), v18 + 1, 1, v9);
          }

          *(v9 + 2) = v18 + 1;
          v19 = &v9[16 * v18];
          v20 = v25;
          v6 = v26;
          *(v19 + 4) = v15;
          *(v19 + 5) = v20;
        }

        while (v8 != v7);
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v1;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    v9 = _swiftEmptyArrayStorage;
LABEL_24:
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v22;
    v23[5] = v9;
    sub_1002B3398(0, 0, v6, &unk_1007FA7A8, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F93FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F7FDC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F94BC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002F9524(void (*a1)(void), void (*a2)(void))
{
  swift_unknownObjectRelease();
  a1(*(v2 + 32));
  a2(*(v2 + 40));

  return _swift_deallocObject(v2, 48);
}

uint64_t sub_1002F958C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002F7E08(a1, v4, v5, v7, v6);
}

uint64_t sub_1002F964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F96B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002F9714()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1007FA7D0;
  if (qword_1009735B0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.RecordSessionStart;
  *(result + 64) = &off_10097BDE8;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeStart;
  *(result + 104) = &off_10097BDD0;
  *(result + 136) = &type metadata for SDAuthentication.Operation.CheckIsBluetoothEnabled;
  *(result + 144) = &off_10097BDB8;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckIsWiFiEnabled;
  *(result + 184) = &off_10097BDA0;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckWatchIsNearby;
  *(result + 224) = &off_10097BD88;
  *(result + 256) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 264) = &off_10097BE00;
  *(result + 296) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 304) = &off_10097BD70;
  *(result + 336) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 344) = &off_10097BD58;
  *(result + 376) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(result + 384) = &off_10097BD40;
  *(result + 416) = &type metadata for SDAuthentication.Operation.IncludeLastUnlockDateInMessage;
  *(result + 424) = &off_10097BD28;
  *(result + 456) = &type metadata for SDAuthentication.Operation.IncludeRangingTokenInMessage;
  *(result + 464) = &off_10097BD10;
  *(result + 496) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(result + 504) = &off_10097BCF8;
  return result;
}

void sub_1002F98D0(uint64_t a1)
{
  type metadata accessor for SDAuthenticationCommonOperationInput(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_1009756D0, &protocol descriptor for SDAuthenticationOperationInput);
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

uint64_t sub_1002F99A0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1002F99BC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1002F99E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002F9A00(uint64_t *a1, int a2)
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

uint64_t sub_1002F9A48(uint64_t result, int a2, int a3)
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

void sub_1002F9AF4(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6BEC(319);
        if (v4 <= 0x3F)
        {
          sub_1002F9C34(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1002F9C34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1002F9CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 + *(a3 + 40);
  result = sub_10028BCC0(*v6, *(v6 + 8));
  *v6 = a1;
  *(v6 + 8) = a2;
  return result;
}

uint64_t sub_1002F9D64()
{
  v1 = *(v0 + 48);
  sub_100294008(v1, *(v0 + 56));
  return v1;
}

id sub_1002F9D98(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 44);
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

id sub_1002F9E18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsResponder;
  *(v6 + 104) = &off_10097C0F0;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.IncludeAWDLInfoInMessage;
  *(v6 + 144) = &off_10097BD40;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 184) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s10NanoWalletV20HandleRequestContextVMa(0);
  *(a3 + v7[11]) = 0;
  *(a3 + v7[12]) = 1;
  if ([a1 hasVersion] && objc_msgSend(a1, "hasType") && objc_msgSend(a1, "hasAwdlInfo") && objc_msgSend(a1, "hasRangingToken") && objc_msgSend(a1, "hasUnlockDate"))
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = *(a2 + 48);
    v9 = *(a2 + 56);
    v10 = (a3 + v7[9]);
    *v10 = v8;
    v10[1] = v9;
    sub_100294008(v8, v9);
    *(a3 + v7[8]) = [a1 version];
    result = [a1 awdlInfo];
    if (result)
    {
      v12 = result;
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = (a3 + v7[10]);
      *v16 = v13;
      v16[1] = v15;
      result = [a1 rangingToken];
      if (result)
      {
        v17 = result;
        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = (a3 + v7[7]);
        *v21 = v18;
        v21[1] = v20;
        [a1 unlockDate];
        Date.init(timeIntervalSince1970:)();

        return sub_1002FAF88(a2);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(32);
    v22 = [a1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = 0xD00000000000001CLL;
    v26._object = 0x800000010078B2C0;
    String.append(_:)(v26);
    v27._object = 0x80000001007FAA90;
    v27._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v27);
    v28 = sub_100010F88(1, v23, v25);
    v30 = v29;
    sub_1000115C8();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    swift_willThrow();

    sub_1002FAF88(a2);
  }

  return result;
}

uint64_t sub_1002FA174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1002FA1E8(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1002F9D98(a3, a4);
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

id sub_1002FA364()
{
  v1 = *(_s10NanoWalletV21HandleResponseContextVMa(0) + 40);
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

id sub_1002FA3D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007FA7E0;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.RecordKeyExchangeEnd;
  *(v6 + 64) = &off_10097C1F8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RangeAsInitiator;
  *(v6 + 104) = &off_10097C0D8;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 144) = &off_10097C270;
  *(v6 + 176) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 184) = &off_10097BB00;
  *a3 = v6;
  v7 = _s10NanoWalletV21HandleResponseContextVMa(0);
  *(a3 + v7[10]) = 0;
  *(a3 + v7[11]) = 2;
  v8 = _s10NanoWalletV18InitialLockContextVMa(0);
  v9 = a2 + *(v8 + 40);
  v10 = *(v9 + 8);
  if (v10 >> 60 == 15)
  {
    v11 = sub_100010F88(10, 0xD000000000000015, 0x800000010078B2E0);
    v13 = v12;
    sub_1000115C8();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    swift_willThrow();
LABEL_9:

    sub_1002FAFB8(a2, _s10NanoWalletV18InitialLockContextVMa);
  }

  v15 = v8;
  v16 = *v9;
  sub_100294008(*v9, *(v9 + 8));
  if (![a1 hasAwdlInfo])
  {
    v24 = sub_100010F88(1, 0xD000000000000011, 0x800000010078B300);
    v26 = v25;
    sub_1000115C8();
    swift_allocError();
    *v27 = v24;
    *(v27 + 8) = v26;
    swift_willThrow();
    sub_10028BCC0(v16, v10);
    goto LABEL_9;
  }

  sub_1002FB018(a2 + *(v15 + 24), a3 + v7[5], type metadata accessor for SDAuthenticationSessionMetrics);
  sub_1002A9938(a2 + 8, a3 + v7[6]);
  v17 = (a3 + v7[7]);
  *v17 = v16;
  v17[1] = v10;
  *(a3 + v7[8]) = [a1 version];
  result = [a1 awdlInfo];
  if (result)
  {
    v19 = result;
    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    result = sub_1002FAFB8(a2, _s10NanoWalletV18InitialLockContextVMa);
    v23 = (a3 + v7[9]);
    *v23 = v20;
    v23[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FA724(uint64_t a1)
{
  v2 = v1 + *(a1 + 36);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA760(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002FA7A0()
{
  v0 = sub_1002FA364();
  v1 = [v0 data];

  if (v1)
  {
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v2;
  }

  else
  {
    v4 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v6 = v5;
    sub_1000115C8();
    swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v6;
    return swift_willThrow();
  }
}

uint64_t sub_1002FA870@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F5670;
  if (qword_1009735B0 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, a3 + 8);
    v7 = [a1 success];

    result = sub_1002FAFB8(a2, _s10NanoWalletV20HandleRequestContextVMa);
    *(a3 + 48) = v7;
  }

  else
  {
    v9 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v11 = v10;
    sub_1000115C8();
    swift_allocError();
    *v12 = v9;
    *(v12 + 8) = v11;
    swift_willThrow();

    sub_1002FAFB8(a2, _s10NanoWalletV20HandleRequestContextVMa);
  }

  return result;
}

void sub_1002FAA0C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v6 = _s10NanoWalletV18InitialLockContextVMa(0);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = _s10NanoWalletV21HandleResponseContextVMa(0);
  __chkstk_darwin(v33);
  v10 = (&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = _s10NanoWalletV20HandleRequestContextVMa(0);
  v11 = __chkstk_darwin(v34);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = (&v32 - v14);
  sub_1002A9938(a1, v35);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v35);
    sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
    if (swift_dynamicCast())
    {
      v18 = v37[0];
      sub_1002A9938(a2, v35);
      v19 = v18;
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_1002FA3D4(v19, v8, v10);
      if (!v3)
      {
        v20 = v38;
        v38[3] = v33;
        v20[4] = &off_1008DB4A8;
        v21 = sub_10002F604(v20);
        sub_1002FAF20(v10, v21, _s10NanoWalletV21HandleResponseContextVMa);
      }
    }

    else
    {
      sub_1002A9938(a1, v35);
      sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
      if (!swift_dynamicCast())
      {
        v28 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
        v30 = v29;
        sub_1000115C8();
        swift_allocError();
        *v31 = v28;
        *(v31 + 8) = v30;
        swift_willThrow();
        return;
      }

      v22 = v37[0];
      sub_1002A9938(a2, v37);
      v19 = v22;
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      swift_dynamicCast();
      sub_1002FA870(v19, v13, v35);
      if (!v3)
      {
        v23 = v38;
        v38[3] = &_s10NanoWalletV25HandleConfirmationContextVN;
        v23[4] = &off_1008DB4C0;
        v24 = swift_allocObject();
        *v23 = v24;
        v25 = v35[1];
        *(v24 + 16) = v35[0];
        *(v24 + 32) = v25;
        *(v24 + 48) = v35[2];
        *(v24 + 64) = v36;
      }
    }

    return;
  }

  v16 = v37[0];
  sub_1002A9938(a2, v37);
  v17 = v16;
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  swift_dynamicCast();
  sub_1002F9E18(v17, v35, v15);
  if (!v3)
  {
    v26 = v38;
    v38[3] = v34;
    v26[4] = &off_1008DB490;
    v27 = sub_10002F604(v26);
    sub_1002FAF20(v15, v27, _s10NanoWalletV20HandleRequestContextVMa);
  }
}

uint64_t sub_1002FAF20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FAFB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002FB018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_1002FB080(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1002FB09C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1002FB0E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002FB16C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002FB294(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics(319);
    if (v2 <= 0x3F)
    {
      sub_1002A6B90(319, &unk_100977800, &protocol descriptor for SDAuthenticationRangingSessionProtocol);
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

uint64_t sub_1002FB3B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1002FBF54(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_1002FB470(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1002FBFFC(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1002FB508@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = _HashTable.startBucket.getter();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1002FC04C(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1002FB5DC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = _StringObject.sharedUTF8.getter();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

uint64_t sub_1002FB66C(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1002FC620(v2, *(a1 + 36), 0, a1);

  return v4;
}

void sub_1002FB6E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for SFPlatform();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SFPlatform.macOS.getter();
  v13 = static SFPlatform.isPlatform(_:)();
  (*(v10 + 8))(v12, v9);
  if ((v13 & 1) != 0 || (v14 = objc_allocWithZone(LSApplicationRecord), v15 = sub_10066F3F8(0xD000000000000016, 0x800000010078B360, 1), !v15))
  {
    v16 = 0;
  }

  else
  {
    v37 = v15;
    v38 = v15;
    v16 = v37;
  }

  v17 = *(a1 + 16);
  v39 = a1;
  v40 = v17;
  v41 = v16;
  if (v17)
  {
    v18 = v4 + 16;
    v19 = *(v4 + 16);
    v45 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = a1 + v45;
    v21 = *(v18 + 56);
    v47 = (v18 + 16);
    v43 = (v18 - 8);
    v22 = _swiftEmptyArrayStorage;
    v46 = v3;
    v44 = v21;
    v19(v8, v20, v3);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v43)(v8, v3);
      }

      else
      {
        v23 = *v47;
        (*v47)(v48, v8, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v22[2] + 1, 1);
          v22 = v49;
        }

        v26 = v22[2];
        v25 = v22[3];
        if (v26 >= v25 >> 1)
        {
          sub_10028FAB4((v25 > 1), v26 + 1, 1);
          v22 = v49;
        }

        v22[2] = v26 + 1;
        v27 = v22 + v45 + v26 * v44;
        v21 = v44;
        v3 = v46;
        v23(v27, v48, v46);
      }

      v20 += v21;
      if (!--v17)
      {
        break;
      }

      v19(v8, v20, v3);
    }
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v28 = v22[2];
  if (v28)
  {
    v29 = v41;
    if (v28 != v40)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_10000C4AC(v30, qword_10097B528);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Asked to view mixed files and links, only viewing links", v33, 2u);
      }
    }

    v49 = 0;
    v34 = swift_allocObject();
    *(v34 + 16) = v22;
    *(v34 + 24) = v29;
    SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }

  else
  {

    v49 = 0;
    v35 = swift_allocObject();
    v36 = v41;
    *(v35 + 16) = v41;
    *(v35 + 24) = 1;
    *(v35 + 32) = v39;

    SFProgressTask.init(_:initialProgress:operation:file:line:)();
  }
}

uint64_t sub_1002FBC5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerWebLinks();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1002FBC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1002FC674(a1);
}

void sub_1002FBD54(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1002FCA54();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1002FCA54();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_1002FBF54@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(type metadata accessor for SDAirDropDiscoveredEndpoint(0) - 8) + 72) * result;

  return sub_1002940CC(v6, a4);
}

uint64_t sub_1002FBFFC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002FC04C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

void sub_1002FC110(uint64_t a1, char a2)
{
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  v11 = SFAirDropReceive.AskRequest.itemsDescription.getter();
  v13 = v12;
  if (v10 != 1)
  {
    goto LABEL_4;
  }

  v14 = v11;
  v15 = SFAirDropReceive.AskRequest.urlItems.getter();
  sub_1002FB508(v15, &type metadata accessor for URL, &type metadata accessor for URL, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100005508(v5, &unk_100974E00, &qword_1007F8940);
LABEL_4:
    sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
    inited = swift_initStackObject();
    v33 = xmmword_1007F5670;
    *(inited + 16) = xmmword_1007F5670;
    *(inited + 32) = 0x45544953424557;
    v17 = inited + 32;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v10;
    sub_1003D8D18(inited, a2 & 1);
    swift_setDeallocating();
    sub_100005508(v17, &qword_100981D40, &unk_1007FA6C0);
    v18 = String._bridgeToObjectiveC()();
    v19 = SFLocalizedStringForKey();

    if (v19)
    {

      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
      v20 = swift_allocObject();
      *(v20 + 16) = v33;
      *(v20 + 56) = &type metadata for Int;
      *(v20 + 64) = &protocol witness table for Int;
      *(v20 + 32) = v10;
      static String.localizedStringWithFormat(_:_:)();

LABEL_15:

      return;
    }

    __break(1u);
    goto LABEL_17;
  }

  (*(v7 + 32))(v9, v5, v6);
  if (SFAirDropReceive.AskRequest.senderBundleID.getter() == 0xD000000000000016 && 0x800000010078B360 == v21)
  {

    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 & 1) == 0 || !v13)
  {
LABEL_12:
    URL._bridgeToObjectiveC()(v22);
    v25 = v24;
    v26 = [v24 _lp_simplifiedDisplayString];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v13 = v28;
  }

LABEL_13:
  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  v29 = swift_initStackObject();
  v33 = xmmword_1007F5670;
  *(v29 + 16) = xmmword_1007F5670;
  *(v29 + 32) = 0xD000000000000012;
  *(v29 + 40) = 0x800000010078B380;
  *(v29 + 48) = 1;

  sub_1003D8D18(v29, a2 & 1);
  swift_setDeallocating();
  sub_100005508(v29 + 32, &qword_100981D40, &unk_1007FA6C0);
  v30 = String._bridgeToObjectiveC()();
  v31 = SFLocalizedStringForKey();

  if (v31)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v32 = swift_allocObject();
    *(v32 + 16) = v33;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100026764();
    *(v32 + 32) = v14;
    *(v32 + 40) = v13;
    static String.localizedStringWithFormat(_:_:)();

    (*(v7 + 8))(v9, v6);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1002FC620(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002FC674(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for SFAirDrop.TransferType();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FC7C8, v4, 0);
}

uint64_t sub_1002FC7C8(uint64_t a1)
{
  v3 = v1[7];
  v2 = v1[8];
  v4 = v1[6];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v6 = v1[4];
    result = SFAirDropReceive.AskRequest.urlItems.getter();
    v8 = 0;
    v9 = result + 56;
    v10 = -1;
    v11 = -1 << *(result + 32);
    if (-v11 < 64)
    {
      v10 = ~(-1 << -v11);
    }

    v12 = v10 & *(result + 56);
    v13 = (63 - v11) >> 6;
    v24 = result;
    while (v12)
    {
LABEL_11:
      v15 = v1[5];
      v16 = v1[3];
      (*(v6 + 16))(v15, *(v24 + 48) + *(v6 + 72) * (__clz(__rbit64(v12)) | (v8 << 6)), v16);
      URL.scheme.getter();
      v18 = v17;
      (*(v6 + 8))(v15, v16);
      if (!v18)
      {
        goto LABEL_20;
      }

      v12 &= v12 - 1;
      v19 = String.lowercased()();

      v20 = v19._countAndFlagsBits == 1886680168 && v19._object == 0xE400000000000000;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v19._countAndFlagsBits == 0x7370747468 && v19._object == 0xE500000000000000)
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
LABEL_20:
          v22 = 0;
LABEL_23:

          goto LABEL_24;
        }
      }
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v22 = 1;
        goto LABEL_23;
      }

      v12 = *(v9 + 8 * v14);
      ++v8;
      if (v12)
      {
        v8 = v14;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v22 = 0;
LABEL_24:

    v23 = v1[1];

    return v23(v22);
  }

  return result;
}

unint64_t sub_1002FCA54()
{
  result = qword_100974F60;
  if (!qword_100974F60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100974F60);
  }

  return result;
}

uint64_t sub_1002FCAA0()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100977A70);
  v1 = sub_10000C4AC(v0, qword_100977A70);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002FCB68@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection))
  {

    sub_10062D138(a1);
  }

  else
  {
    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100977A70);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "UPLOAD connection is not active", v7, 2u);
    }

    v8 = enum case for SFNWInterfaceType.other(_:);
    v9 = type metadata accessor for SFNWInterfaceType();
    v10 = *(*(v9 - 8) + 104);

    return v10(a1, v8, v9);
  }
}

id sub_1002FCCDC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v40 = type metadata accessor for URL();
  v2 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFSandboxTokenURLPair();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &ObjectType - v9;
  if (qword_1009735B8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    v45 = sub_10000C4AC(v11, qword_100977A70);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropSendConnection deinit", v14, 2u);
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection))
    {

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection))
    {

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection))
    {

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection))
    {

      NWConnection.cancel()();
    }

    if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection))
    {

      NWConnection.cancel()();
    }

    v32 = v1;
    v1 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs);
    v15 = v1[2];

    v44 = v15;
    if (!v15)
    {
      break;
    }

    v17 = 0;
    v43 = v5 + 16;
    v34 = (v2 + 8);
    *&v16 = 136315138;
    v33 = v16;
    v42 = (v5 + 8);
    v41 = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v37 = v5;
    v38 = v4;
    v35 = v1;
    v36 = v10;
    while (v17 < v1[2])
    {
      v19 = *(v5 + 16);
      v19(v10, v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v4);
      v19(v8, v10, v4);
      v20 = Logger.logObject.getter();
      v2 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v2))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v47 = v22;
        *v21 = v33;
        v23 = v39;
        SFSandboxTokenURLPair.url.getter();
        sub_1000106F0(&qword_100975160, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v24 = v40;
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v27 = v26;
        v28 = v23;
        v4 = v38;
        (*v34)(v28, v24);
        v18 = *v42;
        (*v42)(v8, v4);
        v29 = sub_10000C4E4(v25, v27, &v47);
        v5 = v37;

        *(v21 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v20, v2, "Releasing extension for %s", v21, 0xCu);
        sub_10000C60C(v22);
        v10 = v36;

        v1 = v35;
      }

      else
      {

        v18 = *v42;
        (*v42)(v8, v4);
      }

      ++v17;
      SFSandboxTokenURLPair.releaseSandboxExtension()();
      v18(v10, v4);
      if (v44 == v17)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_21:

  v46.receiver = v32;
  v46.super_class = ObjectType;
  return objc_msgSendSuper2(&v46, "dealloc");
}

uint64_t type metadata accessor for SDAirDropSendConnection(uint64_t a1)
{
  result = qword_100977B28;
  if (!qword_100977B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002FD580(uint64_t a1)
{
  v2 = v1;
  v4 = _s12HelloRequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v23[-4] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100977B90, &qword_1007FADC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-4] - v9;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = v2;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending HELLO request", v14, 2u);
    v2 = v22;
  }

  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logStartHello()();
  swift_endAccess();
  sub_10030D7A0(a1, v10, _s12HelloRequestVMa);
  (*(v5 + 56))(v10, 0, 1, v4);
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloRequest;
  swift_beginAccess();
  sub_10000C788(v10, v2 + v15, &qword_100977B90, &qword_1007FADC0);
  swift_endAccess();
  strcpy(v23, "Send HELLO [");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_10030D7A0(a1, v7, _s12HelloRequestVMa);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  sub_10030D808(v7, v19 + v18, _s12HelloRequestVMa);
  v20 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_1002FD96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s12HelloRequestVMa(0) - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[11] = swift_task_alloc();
  sub_10028088C(&qword_100977B98, &qword_1007FADC8);
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FDAE0, v5, 0);
}

uint64_t sub_1002FDAE0()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();
  v7 = sub_1002FDFC8(0, 0);
  v0[14] = v7;
  v9 = v0[10];
  v8 = v0[11];
  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];
  *&v13[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection] = v7;
  v14 = v7;

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_10030D7A0(v12, v9, _s12HelloRequestVMa);
  v16 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v0[15] = v17;
  *(v17 + 16) = v13;
  sub_10030D808(v9, v17 + v16, _s12HelloRequestVMa);
  *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  v18 = swift_allocObject();
  v0[16] = v18;
  *(v18 + 16) = v13;
  v19 = v13;

  v20 = v19;
  v21 = swift_task_alloc();
  v0[17] = v21;
  *v21 = v0;
  v21[1] = sub_1002FDE30;
  v22 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v21, v22, &unk_1007FAF68, v17, &unk_1007FAF78, v18, &type metadata for () + 8);
}

uint64_t sub_1002FDE30()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  sub_100005508(*(v2 + 88), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_10030DB14;
  }

  else
  {
    v4 = sub_10030DB0C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002FDFC8(int a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v41[-v9];
  v11 = sub_10046938C();
  v12 = sub_100636668(v11);
  v14 = v13;

  swift_beginAccess();
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  SFAirDrop.NetworkMetrics.log(senderTLSCertDigest:)(v15);
  swift_endAccess();

  sub_1002A9938(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, v43);
  v16 = v44;
  v17 = v45;
  sub_10002CDC0(v43, v44);
  (*(v17 + 8))(v16, v17);
  sub_10000C60C(v43);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  sub_10030D7A0(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v10, type metadata accessor for SDAirDropDiscoveredEndpoint);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
      goto LABEL_6;
    }

    v20 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  }

  else if (!EnumCaseMultiPayload)
  {
    v21 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
LABEL_6:
    sub_10030D1B4(v10, v21);
    v22 = a2;
    goto LABEL_10;
  }

  sub_10030D1B4(v10, v20);
  v22 = a2;
  if (a2)
  {
    NWConnection.cancel()();
  }

LABEL_10:
  sub_10030D7A0(v3 + v18, v8, type metadata accessor for SDAirDropDiscoveredEndpoint);
  v23 = swift_getEnumCaseMultiPayload();
  v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.ApplicationServiceEndpoint;
  if (v23 > 1)
  {
    if (v23 != 2)
    {
      v25 = type metadata accessor for SDAirDropDiscoveredEndpoint;
      goto LABEL_17;
    }

    v24 = type metadata accessor for SDAirDropDiscoveredEndpoint.NearFieldEndpoint;
LABEL_15:
    sub_10030D1B4(v8, v24);

    goto LABEL_18;
  }

  if (!v23)
  {
    goto LABEL_15;
  }

  v25 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
LABEL_17:
  sub_10030D1B4(v8, v25);
  v22 = 0;
LABEL_18:
  v26 = v46;
  v27 = sub_100306CC4(v22, v3, v42 & 1);
  if (!v26)
  {
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;

    NWConnection.stateUpdateHandler.setter();

    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100977A70);

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v46 = v22;
      v35 = v34;
      v36 = swift_slowAlloc();
      v43[0] = v36;
      *v35 = 136315138;
      v37 = NWConnection.debugDescription.getter();
      v39 = sub_10000C4E4(v37, v38, v43);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Starting connection %s", v35, 0xCu);
      sub_10000C60C(v36);
    }

    NWConnection.start(queue:)();
  }

  return v27;
}

uint64_t sub_1002FE4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[9] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1002FE5A4;

  return sub_1006718A8(a3, a4);
}

uint64_t sub_1002FE5A4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 72);

    return _swift_task_switch(sub_1002FE6E8, v6, 0);
  }
}

uint64_t sub_1002FE6E8()
{
  *(v0 + 88) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logSentHello()();
  swift_endAccess();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002FE7AC;

  return sub_1002FE944();
}

uint64_t sub_1002FE7AC()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1002FE8BC, v1, 0);
}

uint64_t sub_1002FE8BC()
{
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logFinishedHello()();
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FE944()
{
  v1[11] = v0;
  sub_10028088C(&qword_100977B98, &qword_1007FADC8);
  v1[12] = swift_task_alloc();
  v2 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[16] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FEA84, v3, 0);
}

uint64_t sub_1002FEA84()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection);
  v0[17] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002FEB94;

    return sub_1006725BC(v1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1002FEB94(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 128);
  if (v1)
  {
    v6 = sub_1002FEE9C;
  }

  else
  {
    v6 = sub_1002FECC8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002FECC8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags) = *(v0 + 152);
  *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection) = v1;

  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  if ((*(v3 + 48))(v4 + v5, 1, v2))
  {
  }

  else
  {
    v6 = *(v0 + 152);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 104);
    (*(v8 + 16))(v7, v4 + v5, v9);
    *(v0 + 168) = v6;
    *(v0 + 172) = BYTE4(v6);
    SFProgressContinuation.finish(with:)();

    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  (*(*(v0 + 112) + 56))(v11, 1, 1, *(v0 + 104));
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v11, v10 + v12, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002FEE9C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s", v13);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    (*(v6 + 16))(v5, v3 + v4, v7);
    SFProgressContinuation.fail(with:)();

    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[11];
  v9 = v0[12];
  (*(v0[14] + 56))(v9, 1, 1, v0[13]);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  sub_10000C788(v9, v8 + v10, &qword_100977B98, &qword_1007FADC8);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002FF058(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FF218, v6, 0);
}

uint64_t sub_1002FF218(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_1002FF2E4;

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_1002FF2E4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v4 = sub_10030DB10;
  }

  else
  {
    v4 = sub_1002FF460;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002FF460()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "HELLO request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s", v25);
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1002FF790(uint64_t a1)
{
  v2 = v1;
  v4 = _s10AskRequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22[0] = v5;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending ASK request", v14, 2u);
    v5 = v22[0];
  }

  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logStartAsk()();
  swift_endAccess();
  sub_10030D7A0(a1, v10, _s10AskRequestVMa);
  (*(v5 + 56))(v10, 0, 1, v4);
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000C788(v10, v2 + v15, &qword_100977BA0, &qword_1007FADD0);
  swift_endAccess();
  v22[1] = 0;
  v22[2] = 0xE000000000000000;
  v16._countAndFlagsBits = 0x4B534120646E6553;
  v16._object = 0xEA00000000005B20;
  String.append(_:)(v16);
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_10030D7A0(a1, v7, _s10AskRequestVMa);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  sub_10030D808(v7, v19 + v18, _s10AskRequestVMa);
  v20 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_1002FFB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s10AskRequestVMa(0) - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[11] = swift_task_alloc();
  sub_10028088C(&qword_100977BA8, &qword_1007FADD8);
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002FFCDC, v5, 0);
}

uint64_t sub_1002FFCDC()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v8 = sub_1002FDFC8(0, v7);
  v0[14] = v8;
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v8;

  *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection] = v15;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_10030D7A0(v13, v9, _s10AskRequestVMa);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v0[15] = v18;
  *(v18 + 16) = v14;
  sub_10030D808(v9, v18 + v17, _s10AskRequestVMa);
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v19 = swift_allocObject();
  v0[16] = v19;
  *(v19 + 16) = v14;
  v20 = v14;

  v21 = v20;
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_100300054;
  v23 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v22, v23, &unk_1007FAF30, v18, &unk_1007FAF40, v19, &type metadata for () + 8);
}

uint64_t sub_100300054()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 104);
  sub_100005508(*(v2 + 88), &qword_100976160, &qword_1007F8770);

  if (v0)
  {
    v4 = sub_100300278;
  }

  else
  {
    v4 = sub_1003001EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003001EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100300278()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100300300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4[9] = static AirDropActor.shared;
  v7 = swift_task_alloc();
  v4[10] = v7;
  *v7 = v4;
  v7[1] = sub_1003003F8;

  return sub_100671C2C(a3, a4);
}

uint64_t sub_1003003F8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 72);

    return _swift_task_switch(sub_10030053C, v6, 0);
  }
}

uint64_t sub_10030053C()
{
  *(v0 + 88) = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_metrics;
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logSentAsk()();
  swift_endAccess();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100300600;

  return sub_100300798();
}

uint64_t sub_100300600()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100300710, v1, 0);
}

uint64_t sub_100300710()
{
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logFinishedAsk()();
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100300798()
{
  v1[37] = v0;
  sub_10028088C(&qword_100977BA8, &qword_1007FADD8);
  v1[38] = swift_task_alloc();
  v2 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[42] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003008D8, v3, 0);
}

uint64_t sub_1003008D8()
{
  v1 = *(v0[37] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection);
  v0[43] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[44] = v2;
    *v2 = v0;
    v2[1] = sub_1003009F0;

    return sub_100672BF0((v0 + 2), v1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003009F0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_100300F78;
  }

  else
  {
    v4 = sub_100300B1C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100300B1C()
{
  v42 = v0;
  v1 = *(v0 + 296);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);
  if (!v3)
  {
  }

  *(v1 + v2) = v3;
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 80);
  v7 = *(v0 + 96);
  v39 = *(v0 + 88);
  v40 = *(v0 + 72);
  v8 = qword_1009735B8;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_100977A70);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v38 = v5;
  if (!os_log_type_enabled(v10, v11))
  {

    if (!*(v1 + v2))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v12 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *v12 = 136315650;
  v37 = v2;
  if (v4)
  {
    v13 = v5;
  }

  else
  {
    v13 = 0xD000000000000015;
  }

  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v14 = 0x8000000100789F30;
  }

  v15 = sub_10000C4E4(v13, v14, &v41);

  *(v12 + 4) = v15;
  *(v12 + 12) = 2080;
  if (v6)
  {
    v16 = v40;
  }

  else
  {
    v16 = 0xD000000000000015;
  }

  if (v6)
  {
    v17 = v6;
  }

  else
  {
    v17 = 0x8000000100789F30;
  }

  v18 = sub_10000C4E4(v16, v17, &v41);

  *(v12 + 14) = v18;
  *(v12 + 22) = 2080;
  if (v7)
  {
    v19 = v39;
  }

  else
  {
    v19 = 0xD000000000000015;
  }

  if (v7)
  {
    v20 = v7;
  }

  else
  {
    v20 = 0x8000000100789F30;
  }

  v21 = sub_10000C4E4(v19, v20, &v41);

  *(v12 + 24) = v21;
  _os_log_impl(&_mh_execute_header, v10, v11, "Sender extracted IDS session ID %s, pseudonym: %s, push token: %s from ask response", v12, 0x20u);
  swift_arrayDestroy();

  if (*(v1 + v37))
  {
LABEL_27:

    sub_10062DD18(v38, v4, v40, v6, v39, v7);
  }

LABEL_28:
  v23 = *(v0 + 312);
  v22 = *(v0 + 320);
  v24 = *(v0 + 296);
  v25 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  if ((*(v22 + 48))(v24 + v25, 1, v23))
  {
  }

  else
  {
    v27 = *(v0 + 320);
    v26 = *(v0 + 328);
    v28 = *(v0 + 312);
    (*(v27 + 16))(v26, v24 + v25, v28);
    v29 = *(v0 + 48);
    *(v0 + 168) = *(v0 + 64);
    v30 = *(v0 + 96);
    *(v0 + 184) = *(v0 + 80);
    *(v0 + 200) = v30;
    *(v0 + 216) = *(v0 + 112);
    v31 = *(v0 + 32);
    *(v0 + 120) = *(v0 + 16);
    *(v0 + 136) = v31;
    *(v0 + 152) = v29;
    SFProgressContinuation.finish(with:)();

    (*(v27 + 8))(v26, v28);
  }

  sub_10030D74C(v0 + 16);
  v32 = *(v0 + 296);
  v33 = *(v0 + 304);
  (*(*(v0 + 320) + 56))(v33, 1, 1, *(v0 + 312));
  v34 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v33, v32 + v34, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_100300F78()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s", v13);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {
  }

  else
  {
    v6 = v0[40];
    v5 = v0[41];
    v7 = v0[39];
    (*(v6 + 16))(v5, v3 + v4, v7);
    SFProgressContinuation.fail(with:)();

    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[37];
  v9 = v0[38];
  (*(v0[40] + 56))(v9, 1, 1, v0[39]);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  sub_10000C788(v9, v8 + v10, &qword_100977BA8, &qword_1007FADD8);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100301134(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v2[19] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030135C, v7, 0);
}

uint64_t sub_10030135C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  SFAirDropSend.Request.type.getter();
  (*(v4 + 104))(v2, enum case for SFAirDrop.TransferType.peerPayment(_:), v3);
  v5 = static SFAirDrop.TransferType.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = 0x8155A43676E00000;
  }

  else
  {
    v7 = 0x70801D946C940000;
  }

  if (v5)
  {
    v8 = 6;
  }

  else
  {
    v8 = 2;
  }

  static Clock<>.continuous.getter();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1003014E8;

  return sub_10002ED10(v7, v8, 0, 0, 1);
}

uint64_t sub_1003014E8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = v2[19];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v4 = sub_1003019A8;
  }

  else
  {
    v4 = sub_100301664;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100301664()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ASK request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s", v25);
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003019A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100301A48(uint64_t result, uint64_t *a2, char *a3, ...)
{
  v4 = *a2;
  if (*(v3 + *a2))
  {
    v6 = v3;
    v7 = result;
    v8 = qword_1009735B8;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100977A70);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      format = a3;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = NWConnection.debugDescription.getter();
      v16 = sub_10000C4E4(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, format, v12, 0xCu);
      sub_10000C60C(v13);
    }

    if (v7)
    {
      NWConnection.forceCancel()();
    }

    else
    {
      NWConnection.cancel()();
    }

    *(v6 + v4) = 0;
  }

  return result;
}

uint64_t sub_100301C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDrop.Progress();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100977A70);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = a2;
    v14 = v13;
    v24 = swift_slowAlloc();
    v25 = v3;
    v27[0] = v24;
    *v14 = 136315138;
    type metadata accessor for URL();
    v15 = Array.description.getter();
    v17 = sub_10000C4E4(v15, v16, v27);

    *(v14 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Sending UPLOAD request %s", v14, 0xCu);
    sub_10000C60C(v24);
    v3 = v25;
  }

  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v27, "Send UPLOAD [");
  HIWORD(v27[1]) = -4864;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 93;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  (*(v7 + 104))(v9, enum case for SFAirDrop.Progress.notStarted(_:), v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = a1;

  v21 = v3;
  withProgressTask<A, B>(_:initialProgress:operation:)();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100301FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = type metadata accessor for SFSecurityScopedURL();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for SFSandboxTokenURLPair();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  sub_10028088C(&qword_100977BB8, &qword_1007FADE8);
  v3[18] = swift_task_alloc();
  sub_10028088C(&qword_100977BA0, &qword_1007FADD0);
  v3[19] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v3[20] = static AirDropActor.shared;

  return _swift_task_switch(sub_100302178, v6, 0);
}

void *sub_100302178()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askRequest;
  swift_beginAccess();
  sub_10000FF90(v2 + v3, v1, &qword_100977BA0, &qword_1007FADD0);
  v4 = _s10AskRequestVMa(0);
  LODWORD(v2) = (*(*(v4 - 8) + 48))(v1, 1, v4);
  sub_100005508(v1, &qword_100977BA0, &qword_1007FADD0);
  if (v2 == 1)
  {
    v5 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.badRequest(_:), v5);
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    v0[8] = v0[11];
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    sub_10030D150();
    v7 = RandomAccessCollection<>.securityScopedURLs.getter();
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = v0[16];
      v10 = v0[13];
      result = sub_10028FC5C(0, v8, 0);
      v12 = 0;
      v30 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      while (v12 < *(v7 + 16))
      {
        (*(v10 + 16))(v0[14], v30 + *(v10 + 72) * v12, v0[12]);
        static SFSecurityScopedURL.consumeSandboxToken(item:)();
        (*(v10 + 8))(v0[14], v0[12]);
        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_10028FC5C((v13 > 1), v14 + 1, 1);
        }

        ++v12;
        v15 = v0[17];
        v16 = v0[15];
        _swiftEmptyArrayStorage[2] = v14 + 1;
        result = (*(v9 + 32))(_swiftEmptyArrayStorage + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v15, v16);
        if (v8 == v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      v17 = v0[18];
      v19 = v0[9];
      v18 = v0[10];
      *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs) = _swiftEmptyArrayStorage;

      v20 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
      v21 = *(v20 - 8);
      (*(v21 + 16))(v17, v19, v20);
      (*(v21 + 56))(v17, 0, 1, v20);
      v22 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
      swift_beginAccess();
      sub_10000C788(v17, v18 + v22, &qword_100977BB8, &qword_1007FADE8);
      swift_endAccess();
      v23 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

      v24 = sub_1002FDFC8(0, v23);
      v0[21] = v24;
      v26 = v0[10];
      v27 = v24;

      *(v26 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection) = v27;

      v28 = swift_task_alloc();
      v0[22] = v28;
      *v28 = v0;
      v28[1] = sub_1003026D0;
      v29 = v0[11];

      return sub_100302928(v29);
    }
  }

  return result;
}

uint64_t sub_1003026D0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_100302894;
  }

  else
  {
    v4 = sub_1003027FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003027FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100302894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100302928(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003029C8, v3, 0);
}

uint64_t sub_1003029C8()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = v0[3];
    v3 = v2[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_receiverFeatureFlags];
    type metadata accessor for SDAirDropSendCompressionAdapter(0);
    swift_allocObject();

    v4 = v2;
    v5 = sub_100294F7C(v1, (v3 >> 2) & 1, v2, &off_1008DB5A0);
    v0[5] = v5;
    *&v4[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = v5;

    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_100302BC4;

    return sub_100295F98();
  }

  else
  {
    v8 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for SFAirDropSend.Failure.badRequest(_:), v8);
    swift_willThrow();
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100302BC4()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100302CD4, v1, 0);
}

uint64_t sub_100302CD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100302D38(uint64_t a1)
{
  v2 = v1;
  v4 = _s15ExchangeRequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100977A70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Sending EXCHANGE request", v10, 2u);
  }

  _StringGuts.grow(_:)(18);

  v17[0] = 0x43584520646E6553;
  v17[1] = 0xEF5B2045474E4148;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 93;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  sub_10030D7A0(a1, v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), _s15ExchangeRequestVMa);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_10030D808(v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, _s15ExchangeRequestVMa);
  _s16ExchangeResponseVMa(0);
  v15 = v2;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_100303020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = *(_s15ExchangeRequestVMa(0) - 8);
  v3[8] = v4;
  v3[9] = *(v4 + 64);
  v3[10] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[11] = swift_task_alloc();
  sub_10028088C(&unk_100977BC0, &qword_1007FADF0);
  v3[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[13] = static AirDropActor.shared;

  return _swift_task_switch(sub_100303194, v5, 0);
}

uint64_t sub_100303194()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v1, v2 + v6, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v8 = sub_1002FDFC8(0, v7);
  v0[14] = v8;
  v9 = v0[10];
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  v14 = v0[6];
  v13 = v0[7];
  v15 = v8;

  *&v14[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection] = v15;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_10030D7A0(v13, v9, _s15ExchangeRequestVMa);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v0[15] = v18;
  *(v18 + 16) = v14;
  sub_10030D808(v9, v18 + v17, _s15ExchangeRequestVMa);
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v19 = swift_allocObject();
  v0[16] = v19;
  *(v19 + 16) = v14;
  v20 = v14;

  v21 = v20;
  v22 = swift_task_alloc();
  v0[17] = v22;
  *v22 = v0;
  v22[1] = sub_1002FDE30;
  v23 = v0[11];

  return concurrentRace<A>(priority:operation:against:)(v22, v23, &unk_1007FAE68, v18, &unk_1007FAE78, v19, &type metadata for () + 8);
}

uint64_t sub_10030350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_1003035F4;

  return sub_1006720EC(a3, a4);
}

uint64_t sub_1003035F4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 32) = v6;
    *v6 = v3;
    v6[1] = sub_100303764;

    return sub_10030385C();
  }
}

uint64_t sub_100303764()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030385C()
{
  v1[11] = v0;
  sub_10028088C(&unk_100977BC0, &qword_1007FADF0);
  v1[12] = swift_task_alloc();
  v2 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  _s16ExchangeResponseVMa(0);
  v1[16] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[17] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003039C8, v3, 0);
}

uint64_t sub_1003039C8()
{
  v1 = *(v0[11] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection);
  v0[18] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_100303AE8;
    v3 = v0[16];

    return sub_100673718(v3, v1);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100303AE8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 136);
  if (v0)
  {
    v4 = sub_100303DF4;
  }

  else
  {
    v4 = sub_100303C14;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100303C14()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  v5 = (*(v1 + 48))(v3 + v4, 1, v2);
  v6 = v0[16];
  if (v5)
  {
    sub_10030D1B4(v0[16], _s16ExchangeResponseVMa);
    swift_endAccess();
  }

  else
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    (*(v8 + 16))(v7, v3 + v4, v9);
    swift_endAccess();
    SFProgressContinuation.finish(with:)();

    (*(v8 + 8))(v7, v9);
    sub_10030D1B4(v6, _s16ExchangeResponseVMa);
  }

  v10 = v0[11];
  v11 = v0[12];
  (*(v0[14] + 56))(v11, 1, 1, v0[13]);
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v11, v10 + v12, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100303DF4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s", v13);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = v0[13];
    (*(v6 + 16))(v5, v3 + v4, v7);
    SFProgressContinuation.fail(with:)();

    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[11];
  v9 = v0[12];
  (*(v0[14] + 56))(v9, 1, 1, v0[13]);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  sub_10000C788(v9, v8 + v10, &unk_100977BC0, &qword_1007FADF0);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100303FB8(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_100304178, v6, 0);
}

uint64_t sub_100304178(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_100304244;

  return sub_10002ED10(0x70801D946C940000, 2, 0, 0, 1);
}

uint64_t sub_100304244()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v4 = sub_10030DB10;
  }

  else
  {
    v4 = sub_1003043C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1003043C0()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "EXCHANGE request timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s", v25);
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1003046F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s12ErrorRequestVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);
  sub_10030D7A0(a1, v10, _s12ErrorRequestVMa);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v5;
    v17 = v16;
    v33[0] = v16;
    *v15 = 136315138;
    v18 = CodableError.description.getter();
    v20 = v19;
    sub_10030D1B4(v10, _s12ErrorRequestVMa);
    v21 = sub_10000C4E4(v18, v20, v33);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Sending ERROR request %s", v15, 0xCu);
    sub_10000C60C(v17);
    v5 = v30;
  }

  else
  {

    sub_10030D1B4(v10, _s12ErrorRequestVMa);
  }

  strcpy(v33, "Send ERROR [");
  BYTE5(v33[1]) = 0;
  HIWORD(v33[1]) = -5120;
  type metadata accessor for SFAirDrop.TransferIdentifier();
  sub_1000106F0(&qword_100977BF0, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v22);

  v23._countAndFlagsBits = 93;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  sub_10030D7A0(a1, v8, _s12ErrorRequestVMa);
  v24 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v32;
  sub_10030D808(v8, v25 + v24, _s12ErrorRequestVMa);
  v27 = v26;
  withProgressTask<A, B>(_:initialProgress:operation:)();
}

uint64_t sub_100304AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(_s12ErrorRequestVMa(0) - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3[7] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  v3[8] = static AirDropActor.shared;

  return _swift_task_switch(sub_100304BEC, v5, 0);
}

uint64_t sub_100304BEC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_primaryConnection);

  v2 = sub_1002FDFC8(0, v1);
  v0[9] = v2;

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection] = v2;

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_10030D7A0(v7, v4, _s12ErrorRequestVMa);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  v0[10] = v11;
  *(v11 + 16) = v8;
  sub_10030D808(v4, v11 + v10, _s12ErrorRequestVMa);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;
  v12 = swift_allocObject();
  v0[11] = v12;
  *(v12 + 16) = v8;
  v13 = v8;

  v14 = v13;
  v15 = swift_task_alloc();
  v0[12] = v15;
  *v15 = v0;
  v15[1] = sub_100304E8C;
  v16 = v0[7];

  return concurrentRace<A>(priority:operation:against:)(v15, v16, &unk_1007FAF00, v11, &unk_1007FAF10, v12, &type metadata for () + 8);
}

uint64_t sub_100304E8C()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 104) = v0;

  sub_100005508(v3, &qword_100976160, &qword_1007F8770);

  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_10030509C;
  }

  else
  {
    v5 = sub_100305024;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100305024()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10030509C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100305110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  v4[4] = static AirDropActor.shared;
  v4[5] = v7;
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_100305208;

  return sub_100672354(a3, a4);
}

uint64_t sub_100305208()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return _swift_task_switch(sub_10030534C, v6, 0);
  }
}

uint64_t sub_10030534C()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection);
  v0[7] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1003054F8;

    return sub_100673E40(v1);
  }

  else
  {
    v4 = v0[3];
    v5 = *(_s12ErrorRequestVMa(0) + 20);
    v6 = type metadata accessor for CodableError();
    sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
    swift_allocError();
    (*(*(v6 - 8) + 16))(v7, v4 + v5, v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1003054F8(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 72) = v2;

  v7 = *(v6 + 32);
  if (v2)
  {
    v8 = sub_10030575C;
  }

  else
  {
    sub_100026AC0(a1, a2);
    v8 = sub_100305644;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100305644()
{

  v1 = *(v0 + 24);
  v2 = *(_s12ErrorRequestVMa(0) + 20);
  v3 = type metadata accessor for CodableError();
  sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  swift_allocError();
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10030575C()
{
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection, "Cancelling ERROR connection %s", v7);

  v1 = *(v0 + 24);
  v2 = *(_s12ErrorRequestVMa(0) + 20);
  v3 = type metadata accessor for CodableError();
  sub_1000106F0(&qword_100977C18, &type metadata accessor for CodableError, &protocol conformance descriptor for CodableError);
  swift_allocError();
  (*(*(v3 - 8) + 16))(v4, v1 + v2, v3);
  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003058A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = type metadata accessor for ContinuousClock();
  v2[3] = v3;
  v2[4] = *(v3 - 8);
  v2[5] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v4 = static AirDropActor.shared;
  v2[6] = static AirDropActor.shared;

  return _swift_task_switch(sub_10030599C, v4, 0);
}

uint64_t sub_10030599C(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 56) = v2;
  *v2 = v1;
  v2[1] = sub_100305A68;

  return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_100305A68()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_100305DD0;
  }

  else
  {
    v7 = sub_100305BF0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100305BF0()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "ERROR request timeout", v4, 2u);
  }

  sub_100301A48(1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_errorConnection, "Cancelling ERROR connection %s", v9);
  v5 = type metadata accessor for SFAirDropSend.Failure();
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(*(v5 - 8) + 104))(v6, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v5);
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100305DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100305E34(char a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v25[-1] - v4;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100977A70);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v10 = 136315138;
    v12 = sub_10032B99C();
    v14 = sub_10000C4E4(v12, v13, v25);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finish send connection to endpoint %s", v10, 0xCu);
    sub_10000C60C(v11);
  }

  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection, "Cancelling HELLO connection %s", v24);
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection, "Cancelling ASK connection %s", v24);
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s", v24);
  sub_100301A48(a1 & 1, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection, "Cancelling UPLOAD connection %s", v24);
  sub_1002A9938(v7 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, v25);
  v15 = v26;
  v16 = v27;
  sub_10002CDC0(v25, v26);
  (*(v16 + 16))(v15, v16);
  sub_10000C60C(v25);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = qword_1009735E0;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static AirDropActor.shared;
  v21 = sub_1000106F0(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v22 = swift_allocObject();
  v22[2] = v20;
  v22[3] = v21;
  v22[4] = v18;

  sub_1002B3098(0, 0, v5, &unk_1007FAEC0, v22);
}

uint64_t sub_1003061D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;
  *(v4 + 72) = static AirDropActor.shared;

  return _swift_task_switch(sub_100306278, v5, 0);
}

uint64_t sub_100306278()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter];
    v0[10] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[11] = v4;
      *v4 = v0;
      v4[1] = sub_1003063C8;

      return sub_100296198();
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    *&v6[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003063C8()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1003064F4, v1, 0);
}

uint64_t sub_1003064F4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendCompressionAdapter] = 0;
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10030658C()
{
  v1[16] = v0;
  sub_10028088C(&qword_100977BB8, &qword_1007FADE8);
  v1[17] = swift_task_alloc();
  v2 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[21] = static AirDropActor.shared;

  return _swift_task_switch(sub_1003066CC, v3, 0);
}

uint64_t sub_1003066CC()
{
  v1 = *(v0[16] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  v0[22] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[23] = v2;
    *v2 = v0;
    v2[1] = sub_1003067DC;

    return sub_100673208(v1);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1003067DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = a1;
  v5[25] = a2;
  v5[26] = v2;

  v6 = v4[21];
  if (v2)
  {
    v7 = sub_100306B08;
  }

  else
  {
    v7 = sub_100306914;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100306914()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = *(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sandboxTokenURLPairs) + 16);
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v4);
  swift_endAccess();
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v5, 1, v1))
  {
    v6 = v0[24];
    v7 = v0[25];

    v8 = v6;
    v9 = v7;
  }

  else
  {
    v11 = v0[24];
    v10 = v0[25];
    v13 = v0[19];
    v12 = v0[20];
    v14 = v0[18];
    (*(v13 + 16))(v12, v3 + v5, v14);
    v0[14] = v11;
    v0[15] = v10;
    SFProgressContinuation.finish(with:)();

    (*(v13 + 8))(v12, v14);
    v8 = v11;
    v9 = v10;
  }

  sub_100026AC0(v8, v9);
  v15 = v0[16];
  v16 = v0[17];
  (*(v0[19] + 56))(v16, 1, 1, v0[18]);
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  sub_10000C788(v16, v15 + v17, &qword_100977BB8, &qword_1007FADE8);
  swift_endAccess();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100306B08()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s", v13);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  if ((*(v2 + 48))(v3 + v4, 1, v1))
  {
  }

  else
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = v0[18];
    (*(v6 + 16))(v5, v3 + v4, v7);
    SFProgressContinuation.fail(with:)();

    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[16];
  v9 = v0[17];
  (*(v0[19] + 56))(v9, 1, 1, v0[18]);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  sub_10000C788(v9, v8 + v10, &qword_100977BB8, &qword_1007FADE8);
  swift_endAccess();

  v11 = v0[1];

  return v11();
}

uint64_t sub_100306CC4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for NWEndpoint();
  v8 = __chkstk_darwin(v7);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v12 = qword_1009735B8;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100977A70);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      v18 = NWConnection.debugDescription.getter();
      v20 = sub_10000C4E4(v18, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "Creating new AirDrop connection from existing %s", v16, 0xCu);
      sub_10000C60C(v17);
    }

    v21 = sub_100636820(a1);
  }

  else
  {
    v30 = v9;
    v31 = v8;
    if (qword_1009735B8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000C4AC(v22, qword_100977A70);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Creating new AirDrop connection", v25, 2u);
    }

    v26 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_queue);
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v21 = sub_10062E05C(v26, a2, a3 & 1, sub_10030CF24, v27, sub_10030CF2C, v28);

    if (!v3)
    {
      *v11 = sub_10032BCF4();
      (*(v30 + 104))(v11, enum case for NWEndpoint.opaque(_:), v31);
      type metadata accessor for NWConnection();
      swift_allocObject();
      return NWConnection.init(to:using:)();
    }
  }

  return v21;
}

void sub_1003070D8(uint64_t a1, NSObject *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10030C9E4(a2, a3);
  }
}

void *sub_100307150(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_10046949C();
    a2();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003071E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for NWConnection.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v5 + 16))(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v14 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v13;
  *(v15 + 5) = v11;
  (*(v5 + 32))(&v15[v14], &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  sub_1002B3098(0, 0, v9, &unk_1007FAE90, v15);
}

uint64_t sub_10030745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return _swift_task_switch(sub_100307480, 0, 0);
}

uint64_t sub_100307480()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[12] = v3;
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_1003075AC;
      v5 = v0[10];

      return sub_100307720(v5, v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003075AC()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_1003076C0, 0, 0);
}

uint64_t sub_1003076C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100307720(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3[14] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for NWError();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for NWConnection.State();
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  v3[29] = static AirDropActor.shared;

  return _swift_task_switch(sub_100307944, v7, 0);
}

uint64_t sub_100307944()
{
  v146 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  (*(v2 + 16))(v1, v0[10], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for NWConnection.State.waiting(_:))
  {
    if (v4 == enum case for NWConnection.State.failed(_:))
    {
      v34 = v0[28];
      v35 = v0[21];
      v36 = v0[18];
      v37 = v0[19];
      (*(v0[27] + 96))(v34, v0[26]);
      (*(v37 + 32))(v35, v34, v36);
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v38 = v0[20];
      v39 = v0[21];
      v40 = v0[18];
      v41 = v0[19];
      v42 = type metadata accessor for Logger();
      sub_10000C4AC(v42, qword_100977A70);
      v142 = *(v41 + 16);
      v142(v38, v39, v40);

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();

      v45 = os_log_type_enabled(v43, v44);
      v47 = v0[19];
      v46 = v0[20];
      v48 = v0[18];
      if (v45)
      {
        v49 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v145 = v138;
        *v49 = 136315394;
        v50 = NWConnection.debugDescription.getter();
        v52 = sub_10000C4E4(v50, v51, &v145);

        *(v49 + 4) = v52;
        *(v49 + 12) = 2112;
        sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v142(v53, v46, v48);
        v54 = _swift_stdlib_bridgeErrorToNSError();
        v57 = *(v47 + 8);
        v55 = v47 + 8;
        v56 = v57;
        v57(v46, v48);
        *(v49 + 14) = v54;
        *v135 = v54;
        _os_log_impl(&_mh_execute_header, v43, v44, "Transfer connection failed %s %@", v49, 0x16u);
        sub_100005508(v135, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v138);
      }

      else
      {

        v98 = *(v47 + 8);
        v55 = v47 + 8;
        v56 = v98;
        v98(v46, v48);
      }

      v0[33] = v55;
      v0[34] = v56;
      v99 = v0[21];
      v100 = v0[18];
      NWConnection.cancel()();
      sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
      v94 = swift_allocError();
      v0[35] = v94;
      v142(v101, v99, v100);
      v96 = swift_task_alloc();
      v0[36] = v96;
      *v96 = v0;
      v97 = sub_100308DD4;
      goto LABEL_30;
    }

    if (v4 == enum case for NWConnection.State.setup(_:))
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_10000C4AC(v75, qword_100977A70);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_39;
      }

      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v145 = v79;
      *v78 = 136315138;
      v80 = NWConnection.debugDescription.getter();
      v82 = sub_10000C4E4(v80, v81, &v145);

      *(v78 + 4) = v82;
      v83 = "Setting up transfer connection %s";
    }

    else if (v4 == enum case for NWConnection.State.preparing(_:))
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v104 = type metadata accessor for Logger();
      sub_10000C4AC(v104, qword_100977A70);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_39;
      }

      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v145 = v79;
      *v78 = 136315138;
      v105 = NWConnection.debugDescription.getter();
      v107 = sub_10000C4E4(v105, v106, &v145);

      *(v78 + 4) = v107;
      v83 = "Preparing transfer connection %s";
    }

    else
    {
      if (v4 == enum case for NWConnection.State.ready(_:))
      {
        if (qword_1009735B8 != -1)
        {
          swift_once();
        }

        v109 = type metadata accessor for Logger();
        sub_10000C4AC(v109, qword_100977A70);

        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v145 = v113;
          *v112 = 136315138;
          v114 = NWConnection.debugDescription.getter();
          v116 = sub_10000C4E4(v114, v115, &v145);

          *(v112 + 4) = v116;
          _os_log_impl(&_mh_execute_header, v110, v111, "Transfer connection ready %s", v112, 0xCu);
          sub_10000C60C(v113);
        }

        v117 = v0[11];
        sub_1002A9938(v0[12] + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_p2pMonitor, (v0 + 2));
        v118 = v0[5];
        v119 = v0[6];
        sub_10002CDC0(v0 + 2, v118);
        v120 = (*(v119 + 24))(v117, v118, v119);
        swift_beginAccess();
        SFAirDrop.NetworkMetrics.log(rssi:)(v120);
        swift_endAccess();
        sub_10000C60C(v0 + 2);
        goto LABEL_57;
      }

      if (v4 != enum case for NWConnection.State.cancelled(_:))
      {
        if (qword_1009735B8 != -1)
        {
          swift_once();
        }

        v125 = type metadata accessor for Logger();
        sub_10000C4AC(v125, qword_100977A70);

        v126 = Logger.logObject.getter();
        v127 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v145 = v129;
          *v128 = 136315138;
          v130 = NWConnection.debugDescription.getter();
          v132 = sub_10000C4E4(v130, v131, &v145);

          *(v128 + 4) = v132;
          _os_log_impl(&_mh_execute_header, v126, v127, "Unknown transfer connection state %s", v128, 0xCu);
          sub_10000C60C(v129);
        }

        (*(v0[27] + 8))(v0[28], v0[26]);
        goto LABEL_57;
      }

      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v121 = type metadata accessor for Logger();
      sub_10000C4AC(v121, qword_100977A70);

      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v76, v77))
      {
        goto LABEL_39;
      }

      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v145 = v79;
      *v78 = 136315138;
      v122 = NWConnection.debugDescription.getter();
      v124 = sub_10000C4E4(v122, v123, &v145);

      *(v78 + 4) = v124;
      v83 = "Transfer connection invalidated %s";
    }

    _os_log_impl(&_mh_execute_header, v76, v77, v83, v78, 0xCu);
    sub_10000C60C(v79);

LABEL_39:

LABEL_57:

    v133 = v0[1];

    return v133();
  }

  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[24];
  v8 = v0[18];
  v9 = v0[19];
  (*(v0[27] + 96))(v5, v0[26]);
  (*(v9 + 32))(v6, v5, v8);
  v10 = *(v9 + 16);
  v10(v7, v6, v8);
  v11 = (*(v9 + 88))(v7, v8);
  v12 = v0[18];
  v13 = v0[19];
  if (v11 == enum case for NWError.posix(_:))
  {
    (*(v13 + 96))(v0[24], v12);
    v14 = POSIXErrorCode.rawValue.getter();
    if (v14 == POSIXErrorCode.rawValue.getter())
    {
      if (qword_1009735B8 != -1)
      {
        swift_once();
      }

      v15 = v0[25];
      v16 = v0[23];
      v17 = v0[18];
      v18 = type metadata accessor for Logger();
      sub_10000C4AC(v18, qword_100977A70);
      v10(v16, v15, v17);

      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = v0[25];
      v23 = v10;
      v24 = v0[23];
      v25 = v0[18];
      v26 = v0[19];
      if (v21)
      {
        v27 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v145 = v141;
        *v27 = 138412546;
        sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v137 = v22;
        v23(v28, v24, v25);
        v29 = _swift_stdlib_bridgeErrorToNSError();
        v30 = *(v26 + 8);
        v30(v24, v25);
        *(v27 + 4) = v29;
        *v134 = v29;
        *(v27 + 12) = 2080;
        v31 = NWConnection.debugDescription.getter();
        v33 = sub_10000C4E4(v31, v32, &v145);

        *(v27 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring error %@ for connection %s", v27, 0x16u);
        sub_100005508(v134, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v141);

        v30(v137, v25);
      }

      else
      {

        v108 = *(v26 + 8);
        v108(v24, v25);
        v108(v22, v25);
      }

      goto LABEL_57;
    }
  }

  else
  {
    (*(v13 + 8))(v0[24], v12);
  }

  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v58 = v0[25];
  v59 = v0[22];
  v60 = v0[18];
  v61 = type metadata accessor for Logger();
  sub_10000C4AC(v61, qword_100977A70);
  v10(v59, v58, v60);

  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[22];
  v66 = v0[18];
  v67 = v0[19];
  if (v64)
  {
    v68 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v145 = v143;
    *v68 = 136315394;
    v69 = NWConnection.debugDescription.getter();
    v136 = v10;
    v71 = sub_10000C4E4(v69, v70, &v145);

    *(v68 + 4) = v71;
    *(v68 + 12) = 2112;
    sub_1000106F0(&qword_100977BF8, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
    swift_allocError();
    v136(v72, v65, v66);
    v73 = _swift_stdlib_bridgeErrorToNSError();
    v74 = *(v67 + 8);
    v74(v65, v66);
    *(v68 + 14) = v73;
    *v139 = v73;
    _os_log_impl(&_mh_execute_header, v62, v63, "Waiting for transfer connection %s %@", v68, 0x16u);
    sub_100005508(v139, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v143);
  }

  else
  {

    v74 = *(v67 + 8);
    v74(v65, v66);
  }

  v0[30] = v74;
  v140 = v0[12];
  v144 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint;
  sub_10030D7A0(v140 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, v0[14], type metadata accessor for SDAirDropDiscoveredEndpoint);
  v84 = swift_getEnumCaseMultiPayload() == 1;
  if (v84)
  {
    v85 = type metadata accessor for SDAirDropDiscoveredEndpoint.BonjourEndpoint;
  }

  else
  {
    v85 = type metadata accessor for SDAirDropDiscoveredEndpoint;
  }

  sub_10030D1B4(v0[14], v85);
  v87 = v0[16];
  v86 = v0[17];
  v88 = v0[15];
  v89 = v0[12];
  v90 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_sendRequest;
  *v86 = v84;
  v91 = enum case for SFAirDropSend.Failure.resolveFailure(_:);
  v92 = type metadata accessor for SFAirDropSend.Failure();
  v93 = *(*(v92 - 8) + 104);
  v93(v86, v91, v92);
  (*(v87 + 104))(v86, enum case for SFAirDropSend.Transfer.Metrics.TransferResult.failure(_:), v88);
  sub_1003E6A4C(v89 + v90, v140 + v144, v86);
  (*(v87 + 8))(v86, v88);
  NWConnection.cancel()();
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  v94 = swift_allocError();
  v0[31] = v94;
  *v95 = 0;
  v93(v95, v91, v92);
  v96 = swift_task_alloc();
  v0[32] = v96;
  *v96 = v0;
  v97 = sub_100308BC0;
LABEL_30:
  v96[1] = v97;
  v102 = v0[11];

  return sub_100308FE4(v102, v94);
}

uint64_t sub_100308BC0()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_100308CEC, v1, 0);
}

uint64_t sub_100308CEC()
{
  (*(v0 + 240))(*(v0 + 200), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100308DD4()
{
  v1 = *(*v0 + 232);

  return _swift_task_switch(sub_100308F00, v1, 0);
}

uint64_t sub_100308F00()
{
  (*(v0 + 272))(*(v0 + 168), *(v0 + 144));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100308FE4(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_10028088C(&qword_100977B88, &qword_1007FAD88);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100977B60, &qword_1007FAD78);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v7 = sub_10028088C(&qword_100977B48, &qword_1007FAD70);
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;

  return _swift_task_switch(sub_100309224, v8, 0);
}

uint64_t sub_100309224()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloConnection);
  if (v3)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v11 = v0 + 27;
    v17 = v0[27];
    v14 = v0 + 26;
    v18 = v0[26];
    v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_helloContinuation;
    swift_beginAccess();
    if ((*(v17 + 48))(v15, 1, v18))
    {
      goto LABEL_27;
    }

    v16 = 28;
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askConnection);
    if (v5)
    {
      v6 = v2 == v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v11 = v0 + 24;
      v19 = v0[24];
      v14 = v0 + 23;
      v20 = v0[23];
      v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_askContinuation;
      swift_beginAccess();
      if ((*(v19 + 48))(v15, 1, v20))
      {
        goto LABEL_27;
      }

      v16 = 25;
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
      if (v7)
      {
        v8 = v2 == v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        v11 = v0 + 21;
        v21 = v0[21];
        v14 = v0 + 20;
        v22 = v0[20];
        v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
        swift_beginAccess();
        if ((*(v21 + 48))(v15, 1, v22))
        {
          goto LABEL_27;
        }

        v16 = 22;
      }

      else
      {
        v9 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeConnection);
        if (v9)
        {
          v10 = v2 == v9;
        }

        else
        {
          v10 = 0;
        }

        if (!v10)
        {
          goto LABEL_27;
        }

        v11 = v0 + 18;
        v12 = v0[18];
        v14 = v0 + 17;
        v13 = v0[17];
        v15 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_exchangeContinuation;
        swift_beginAccess();
        if ((*(v12 + 48))(v15, 1, v13))
        {
          goto LABEL_27;
        }

        v16 = 19;
      }
    }
  }

  v23 = v0[v16];
  v24 = *v14;
  v25 = *v11;
  (*(*v11 + 16))(v23, v15, v24);
  SFProgressContinuation.fail(with:)();
  (*(v25 + 8))(v23, v24);
LABEL_27:

  v26 = v0[1];

  return v26();
}

uint64_t sub_1003094D4()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005CF8;

  return sub_10030658C();
}

uint64_t sub_100309594(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  v3 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropSend.Failure();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for ContinuousClock();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;
  v2[15] = static AirDropActor.shared;

  return _swift_task_switch(sub_100309754, v6, 0);
}

uint64_t sub_100309754(uint64_t a1)
{
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v1 + 128) = v2;
  *v2 = v1;
  v2[1] = sub_100309820;

  return sub_10002ED10(0x8155A43676E00000, 6, 0, 0, 1);
}

uint64_t sub_100309820()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v4 = sub_100309CCC;
  }

  else
  {
    v4 = sub_10030999C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10030999C()
{
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100977A70);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "UPLOAD response timeout", v4, 2u);
  }

  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  sub_100301A48(0, &OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection, "Cancelling UPLOAD connection %s", v25);
  (*(v6 + 104))(v5, enum case for SFAirDropSend.Failure.receiverDeclined(_:), v7);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13 = v0[10];
    v12 = v0[11];
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[6];
    v17 = v0[7];
    (*(v17 + 16))(v15, v10 + v11, v16);
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(v13 + 16))(v18, v12, v14);
    SFProgressContinuation.fail(with:)();
    (*(v17 + 8))(v15, v16);
  }

  v20 = v0[10];
  v19 = v0[11];
  v21 = v0[9];
  sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
  swift_allocError();
  (*(v20 + 16))(v22, v19, v21);
  swift_willThrow();
  (*(v20 + 8))(v19, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100309CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100309D50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v25 - v6;
  v7 = type metadata accessor for SFAirDrop.Progress();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100977A70);
  (*(v8 + 16))(v10, a1, v7);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v26 = v1;
    v27 = v5;
    v28 = a1;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v14 = 136315138;
    SFAirDrop.Progress.percent.getter();
    if (v16)
    {
      v17 = 0x800000010078B610;
      v18 = 0xD000000000000015;
    }

    else
    {
      v18 = Double.description.getter();
      v17 = v19;
    }

    (*(v8 + 8))(v10, v7);
    v20 = sub_10000C4E4(v18, v17, v30);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Upload progress %s", v14, 0xCu);
    sub_10000C60C(v15);

    v5 = v27;
    v2 = v26;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  result = (*(v5 + 48))(v2 + v21, 1, v4);
  if (!result)
  {
    v23 = v2 + v21;
    v24 = v29;
    (*(v5 + 16))(v29, v23, v4);
    SFProgressContinuation.yield(_:)();
    return (*(v5 + 8))(v24, v4);
  }

  return result;
}

uint64_t sub_10030A0C8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10028088C(&qword_100977B78, &qword_1007FAD80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - v5;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000C4AC(v7, qword_100977A70);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Send compression failed %@", v10, 0xCu);
    sub_100005508(v11, &qword_100975400, &qword_1007F65D0);
  }

  v13 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContinuation;
  swift_beginAccess();
  result = (*(v4 + 48))(v2 + v13, 1, v3);
  if (!result)
  {
    (*(v4 + 16))(v6, v2 + v13, v3);
    SFProgressContinuation.fail(with:)();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_10030A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v6 = static AirDropActor.shared;

  return _swift_task_switch(sub_10030A3D8, v6, 0);
}

uint64_t sub_10030A3D8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = sub_1006373F8(*(v0 + 80));
    v4 = v3;
    swift_beginAccess();
    v5._countAndFlagsBits = v2;
    v5._object = v4;
    SFAirDrop.NetworkMetrics.log(receiverTLSCertDigest:)(v5);
    swift_endAccess();
  }

  **(v0 + 64) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

void sub_10030A4F0(uint64_t a1)
{
  type metadata accessor for SDAirDropDiscoveredEndpoint(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDropSend.Request();
    if (v2 <= 0x3F)
    {
      sub_10030A8D8(319, &qword_100977B38, _s12HelloRequestVMa);
      if (v3 <= 0x3F)
      {
        sub_10030A92C(319, &qword_100977B40, &qword_100977B48, &qword_1007FAD70);
        if (v4 <= 0x3F)
        {
          sub_10030A8D8(319, &qword_100977B50, _s10AskRequestVMa);
          if (v5 <= 0x3F)
          {
            sub_10030A92C(319, &qword_100977B58, &qword_100977B60, &qword_1007FAD78);
            if (v6 <= 0x3F)
            {
              sub_10030A8D8(319, &qword_100977B68, _s13UploadRequestVMa);
              if (v7 <= 0x3F)
              {
                sub_10030A92C(319, &qword_100977B70, &qword_100977B78, &qword_1007FAD80);
                if (v8 <= 0x3F)
                {
                  sub_10030A92C(319, &qword_100977B80, &qword_100977B88, &qword_1007FAD88);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SFAirDrop.NetworkMetrics();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for SFNWInterfaceType();
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10030A8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10030A92C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100280938(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10030A980(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 200) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  *(v5 + 88) = swift_task_alloc();
  v6 = type metadata accessor for SFNWInterfaceType();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;
  *(v5 + 120) = static AirDropActor.shared;

  return _swift_task_switch(sub_10030AAEC, v7, 0);
}

uint64_t sub_10030AAEC()
{
  v34 = v0;
  if (qword_1009735B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = type metadata accessor for Logger();
  *(v0 + 128) = sub_10000C4AC(v4, qword_100977A70);
  sub_100294008(v3, v2);
  v5 = v1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  sub_100026AC0(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 104);
    v8 = *(v0 + 112);
    v32 = *(v0 + 96);
    v10 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v10 = 136315394;
    v11 = Data.description.getter();
    v13 = sub_10000C4E4(v11, v12, v33);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_1002FCB68(v8);
    sub_1000106F0(&qword_100977BD0, &type metadata accessor for SFNWInterfaceType, &protocol conformance descriptor for SFNWInterfaceType);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v9 + 8))(v8, v32);
    v17 = sub_10000C4E4(v14, v16, v33);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Sending compressed data %s on interface %s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(v0 + 64);
  v19 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadConnection);
  *(v0 + 136) = v19;
  if (v19 && (v20 = *(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_uploadContext), (*(v0 + 144) = v20) != 0))
  {
    sub_10030D7A0(v18 + OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropSendConnection_endpoint, *(v0 + 88), type metadata accessor for SDAirDropDiscoveredEndpoint);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

    swift_unknownObjectRetain();
    v22 = off_1008DB910[EnumCaseMultiPayload];
    v23 = qword_1007FAF90[EnumCaseMultiPayload];
    sub_10030D1B4(*(v0 + 88), v22);
    v24 = swift_task_alloc();
    *(v0 + 152) = v24;
    *v24 = v0;
    v24[1] = sub_10030AF3C;
    v25 = *(v0 + 200);
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);

    return sub_100633940(v20, v26, v27, v23, v25);
  }

  else
  {
    v29 = type metadata accessor for SFAirDropSend.Failure();
    sub_1000106F0(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v29 - 8) + 104))(v30, enum case for SFAirDropSend.Failure.cancelled(_:), v29);
    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}