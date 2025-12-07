uint64_t sub_1003C28A0()
{
  sub_100003B08();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);

  return _swift_task_switch(sub_1003C29A4, v2, v1);
}

uint64_t sub_1003C29A4()
{
  sub_100003B08();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003C2A04(uint64_t a1, uint64_t (*a2)(uint64_t, double, double, double, double))
{
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v41, v42);
  dispatch thunk of WindowType.bounds.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_100006F14(v41);
  v15 = a2(v14, v7, v9, v11, v13);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v15 + 32;
    do
    {
      sub_100035B30(v17, v41);
      v18 = v42;
      v19 = v43;
      sub_1000161C0(v41, v42);
      v20 = (*(v19 + 16))(v18, v19);
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = v42;
      v28 = v43;
      sub_1000161C0(v41, v42);
      v29 = (*(v28 + 24))(v27, v28);
      v30 = v42;
      v31 = v43;
      sub_1000161C0(v41, v42);
      v32 = qword_100A46C48[(*(v31 + 8))(v30, v31)];
      v33 = objc_allocWithZone(RPTScrollViewTestParameters);
      v34 = sub_1007B9B14(v20, v22, v24, v26, v29, 0, 0, v32, 0, 0);
      v35 = [v4 sharedApplication];
      v36 = UIApplication.maybeWindow.getter();

      if (v36)
      {
        v37 = [objc_opt_self() converterFromWindow:v36];
        [v34 setConversion:v37];
      }

      sub_100006F14(v41);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 += 40;
      --v16;
    }

    while (v16);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  v39 = objc_allocWithZone(type metadata accessor for GroupTestParameters());
  v40 = sub_1003C2EFC(_swiftEmptyArrayStorage, sub_1003C30B8, v38);
  [objc_opt_self() runTestWithParameters:v40];
}

uint64_t sub_1003C2D74(uint64_t a1)
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performed Scroll instruction", v5, 2u);
  }

  return _swift_continuation_throwingResume(a1);
}

uint64_t sub_1003C2E64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10033B470;

  return sub_1003C2608();
}

id sub_1003C2EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v6 = objc_msgSendSuper2(&v11, "init");
  sub_10022C350(&qword_100CD81E0, &unk_100A46C38);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setParameters:isa];

  v10[4] = a2;
  v10[5] = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000742F0;
  v10[3] = &unk_100C53AE0;
  v8 = _Block_copy(v10);

  [v6 setCompletionHandler:v8];

  _Block_release(v8);
  return v6;
}

uint64_t sub_1003C30E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1003C31FC(char a1)
{
  if (!a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x726F68636E61;
  }

  return 0x6552656372756F73;
}

BOOL sub_1003C3254(uint64_t a1, uint64_t a2)
{
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AirQualityDetailViewState(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = a2 + v6;
  if ((v8 & 1) == 0)
  {
    return (*(v9 + 32) & 1) == 0 && CGRectEqualToRect(*v7, *v9);
  }

  return (*(v9 + 32) & 1) != 0;
}

uint64_t sub_1003C32E4(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB3FD0, &qword_100A46DB8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = v20 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C3B2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20[0]) = 0;
  type metadata accessor for Location();
  sub_10001EAE4();
  sub_1003C3D4C(v11, v12, &protocol conformance descriptor for Location);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for AirQualityDetailViewState(0);
    LOBYTE(v20[0]) = *(v3 + *(v13 + 20));
    v22 = 1;
    sub_1003C3C94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = v3 + *(v13 + 24);
    v15 = *(v14 + 32);
    v16 = *(v14 + 16);
    v20[0] = *v14;
    v20[1] = v16;
    v21 = v15;
    v22 = 2;
    type metadata accessor for CGRect(0);
    sub_10001C0D8();
    sub_1003C3D4C(v17, v18, &protocol conformance descriptor for CGRect);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C34FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for Location();
  sub_1000037C4();
  v27 = v5;
  __chkstk_darwin(v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022C350(&qword_100CB3FB8, &qword_100A46DB0);
  sub_1000037C4();
  v29 = v9;
  v30 = v8;
  __chkstk_darwin(v8);
  v10 = type metadata accessor for AirQualityDetailViewState(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003C3B2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v25 = a1;
  v13 = v27;
  LOBYTE(v31) = 0;
  sub_10001EAE4();
  sub_1003C3D4C(v14, v15, &protocol conformance descriptor for Location);
  v16 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v16, v4);
  v34 = 1;
  sub_1003C3B80();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[*(v10 + 20)] = v31;
  type metadata accessor for CGRect(0);
  v34 = 2;
  sub_10001C0D8();
  sub_1003C3D4C(v17, v18, &protocol conformance descriptor for CGRect);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = &v12[*(v10 + 24)];
  v20 = sub_100005A84();
  v21(v20);
  v22 = v33;
  v23 = v32;
  *v19 = v31;
  *(v19 + 1) = v23;
  v19[32] = v22;
  sub_1003C3BD4(v12, v26);
  sub_100006F14(v25);
  return sub_1003C3C38(v12);
}

uint64_t sub_1003C38AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C30E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C38D4(uint64_t a1)
{
  v2 = sub_1003C3B2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C3910(uint64_t a1)
{
  v2 = sub_1003C3B2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C39B0@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB3FE0, &qword_100A46DC0);
  a1[4] = sub_1003C3CE8();
  sub_100042FB0(a1);
  type metadata accessor for AirQualityDetailViewState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003C3A78(uint64_t a1)
{
  sub_1003C3D4C(&qword_100CB3FF0, type metadata accessor for AirQualityDetailViewState, byte_100A46CB4);

  return ShortDescribable.description.getter();
}

unint64_t sub_1003C3B2C()
{
  result = qword_100CB3FC0;
  if (!qword_100CB3FC0)
  {
    result = swift_getWitnessTable(aEj_0, &type metadata for AirQualityDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB3FC0);
  }

  return result;
}

unint64_t sub_1003C3B80()
{
  result = qword_100CB3FC8;
  if (!qword_100CB3FC8)
  {
    result = swift_getWitnessTable(byte_100A6DE90, &type metadata for AirQualityDetailAnchor, v0, v1);
    atomic_store(result, &qword_100CB3FC8);
  }

  return result;
}

uint64_t sub_1003C3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityDetailViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C3C38(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityDetailViewState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003C3C94()
{
  result = qword_100CB3FD8;
  if (!qword_100CB3FD8)
  {
    result = swift_getWitnessTable(asc_100A6DE68, &type metadata for AirQualityDetailAnchor, v0, v1);
    atomic_store(result, &qword_100CB3FD8);
  }

  return result;
}

unint64_t sub_1003C3CE8()
{
  result = qword_100CB3FE8;
  if (!qword_100CB3FE8)
  {
    v3 = sub_10022E824(&qword_100CB3FE0, &qword_100A46DC0);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB3FE8);
  }

  return result;
}

uint64_t sub_1003C3D4C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C3E74()
{
  result = qword_100CB3FF8;
  if (!qword_100CB3FF8)
  {
    result = swift_getWitnessTable(byte_100A46E64, &type metadata for AirQualityDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB3FF8);
  }

  return result;
}

unint64_t sub_1003C3ECC()
{
  result = qword_100CB4000;
  if (!qword_100CB4000)
  {
    result = swift_getWitnessTable(aK_3, &type metadata for AirQualityDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4000);
  }

  return result;
}

unint64_t sub_1003C3F24()
{
  result = qword_100CB4008;
  if (!qword_100CB4008)
  {
    result = swift_getWitnessTable(byte_100A46DFC, &type metadata for AirQualityDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4008);
  }

  return result;
}

uint64_t sub_1003C3F8C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3F && *(a1 + 96))
    {
      v2 = *a1 + 62;
    }

    else
    {
      v2 = (*a1 & 6 | ((*a1 >> 58) >> 5) & 0xFFFFFFC7 | (8 * (((*a1 >> 58) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1003C3FE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3E)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 63;
    if (a3 >= 0x3F)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1F | (32 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
    }
  }

  return result;
}

uint64_t sub_1003C4094(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v3 = *(a1 + 88);
    v13 = *a1 & 0x7FFFFFFFFFFFFFFFLL;
    v14 = *(a1 + 8);
    v15 = *(a1 + 24);
    v16 = *(a1 + 40);
    v17 = *(a1 + 56);
    v18 = *(a1 + 72);
    v19 = v3;
    if ((*a2 & 0x8000000000000000) != 0)
    {
      v4 = *(a2 + 88);
      v6 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
      v7 = *(a2 + 8);
      v8 = *(a2 + 24);
      v9 = *(a2 + 40);
      v10 = *(a2 + 56);
      v11 = *(a2 + 72);
      v12 = v4;
      v2 = sub_1005F7E98(&v13, &v6);
      return v2 & 1;
    }

    goto LABEL_5;
  }

  if ((*a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  type metadata accessor for ReportWeatherContentViewModel._Storage(0);
  sub_1002D61E4();
  return v2 & 1;
}

void sub_1003C4180(void *a1@<X8>)
{
  sub_100756EA0();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_1003C4220@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CB4018, &qword_100A470A8);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  v12 = sub_1000161C0(a1, a1[3]);
  sub_1003C4CB8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v45[0] = 0;
  sub_1003C4D0C();
  sub_10000FE94(&type metadata for ReportWeatherViewModel.CodingType, v45);
  v14 = v7 + 8;
  if (v45[1])
  {
    v44 = 2;
    sub_1003C4D60();
    sub_10000FE94(&unk_100C61E18, &v44);
    v15 = sub_100005A94();
    v16(v15);
    v30 = v34;
    v31 = v33;
    v29 = v35;
    v27 = v37;
    v28 = v36;
    v12 = v39;
    v26 = v38;
    v5 = v40;
    v10 = v41;
    v14 = v42;
    v11 = v43;
    v17 = v32 & 0xFFFFFFFFFFFFFF9 | 0x8000000000000000;
  }

  else
  {
    v44 = 1;
    sub_1003C4DB4();
    sub_10000FE94(&type metadata for ReportWeatherContentViewModel, &v44);
    v18 = sub_100005A94();
    v19(v18);
    v17 = v32 & 0xFFFFFFFFFFFFFF9;
  }

  result = sub_100006F14(a1);
  v21 = v30;
  v20 = v31;
  *a2 = v17;
  a2[1] = v20;
  v23 = v28;
  v22 = v29;
  a2[2] = v21;
  a2[3] = v22;
  v24 = v26;
  v25 = v27;
  a2[4] = v23;
  a2[5] = v25;
  a2[6] = v24;
  a2[7] = v12;
  a2[8] = v5;
  a2[9] = v10;
  a2[10] = v14;
  a2[11] = v11;
  return result;
}

uint64_t sub_1003C4464(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4040, &qword_100A470B0);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C4CB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  if ((*v3 & 0x8000000000000000) != 0)
  {
    v20 = *(v3 + 8);
    v30 = *(v3 + 24);
    v31 = v20;
    v21 = *(v3 + 40);
    v28 = *(v3 + 56);
    v29 = v21;
    v27 = *(v3 + 72);
    v22 = *(v3 + 88);
    LOBYTE(v32) = 1;
    v39 = 0;
    v23 = sub_1003C4E08();
    sub_10001EAFC(v23, v24, v25, &type metadata for ReportWeatherViewModel.CodingType, v23);
    if (!v2)
    {
      v32 = v11 & 0x7FFFFFFFFFFFFFFFLL;
      v33 = v31;
      v34 = v30;
      v35 = v29;
      v36 = v28;
      v37 = v27;
      v38 = v22;
      v39 = 2;
      v15 = sub_1003C4E5C();
      v18 = v15;
      v19 = &unk_100C61E18;
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v32) = 0;
    v39 = 0;
    v12 = sub_1003C4E08();
    sub_10001EAFC(v12, v13, v14, &type metadata for ReportWeatherViewModel.CodingType, v12);
    if (!v2)
    {
      v32 = v11;
      v39 = 1;
      v15 = sub_1003C4EB0();
      v18 = v15;
      v19 = &type metadata for ReportWeatherContentViewModel;
LABEL_6:
      sub_10001EAFC(v15, v16, v17, v19, v18);
    }
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C4660(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C439A8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003C46B4(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

unint64_t sub_1003C4708@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E18A0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4738@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E18EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1003C476C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E18A0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4794(uint64_t a1)
{
  v2 = sub_1003C4CB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C47D0(uint64_t a1)
{
  v2 = sub_1003C4CB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C4830@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003C4660(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1003C4860@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1003C46B4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1003C493C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1003C4220(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1003C49A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10022C350(&qword_100CB4060, &unk_100A470B8);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    v11 = *(v1 + 88);
    v20 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    v21 = *(v1 + 8);
    v22 = *(v1 + 24);
    v23 = *(v1 + 40);
    v24 = *(v1 + 56);
    v25 = *(v1 + 72);
    v26 = v11;
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v18 = v16;
    v19 = v17;
    v12._countAndFlagsBits = 0x2C6567617373656DLL;
    v12._object = 0xEF3D6C65646F6D20;
    String.append(_:)(v12);
    sub_1005F8064(&v16);
    sub_10022C350(&qword_100CB0D60, &unk_100A41090);
    _print_unlocked<A, B>(_:_:)();
    sub_100006F14(&v16);
  }

  else
  {
    v20 = 0;
    *&v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    v16 = v20;
    v17 = v21;
    v10._countAndFlagsBits = 0x2C746E65746E6F63;
    v10._object = 0xEF3D6C65646F6D20;
    String.append(_:)(v10);
    sub_100587D08(v9, &v20);
    sub_10022C350(&qword_100CB0D60, &unk_100A41090);
    _print_unlocked<A, B>(_:_:)();
    sub_100006F14(&v20);
  }

  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v3;
  a1[4] = sub_1003C4F04();
  v13 = sub_100042FB0(a1);
  return (*(v5 + 32))(v13, v8, v3);
}

uint64_t sub_1003C4C24(uint64_t a1)
{
  sub_1003C4F68();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003C4C64()
{
  result = qword_100CB4010;
  if (!qword_100CB4010)
  {
    result = swift_getWitnessTable(aH_5, &type metadata for ReportWeatherViewModel, v0, v1);
    atomic_store(result, &qword_100CB4010);
  }

  return result;
}

unint64_t sub_1003C4CB8()
{
  result = qword_100CB4020;
  if (!qword_100CB4020)
  {
    result = swift_getWitnessTable(a1f, &type metadata for ReportWeatherViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4020);
  }

  return result;
}

unint64_t sub_1003C4D0C()
{
  result = qword_100CB4028;
  if (!qword_100CB4028)
  {
    result = swift_getWitnessTable(byte_100A47298, &type metadata for ReportWeatherViewModel.CodingType, v0, v1);
    atomic_store(result, &qword_100CB4028);
  }

  return result;
}

unint64_t sub_1003C4D60()
{
  result = qword_100CB4030;
  if (!qword_100CB4030)
  {
    result = swift_getWitnessTable(byte_100A69AA0, &unk_100C61E18, v0, v1);
    atomic_store(result, &qword_100CB4030);
  }

  return result;
}

unint64_t sub_1003C4DB4()
{
  result = qword_100CB4038;
  if (!qword_100CB4038)
  {
    result = swift_getWitnessTable(byte_100A386F4, &type metadata for ReportWeatherContentViewModel, v0, v1);
    atomic_store(result, &qword_100CB4038);
  }

  return result;
}

unint64_t sub_1003C4E08()
{
  result = qword_100CB4048;
  if (!qword_100CB4048)
  {
    result = swift_getWitnessTable(byte_100A47270, &type metadata for ReportWeatherViewModel.CodingType, v0, v1);
    atomic_store(result, &qword_100CB4048);
  }

  return result;
}

unint64_t sub_1003C4E5C()
{
  result = qword_100CB4050;
  if (!qword_100CB4050)
  {
    result = swift_getWitnessTable(byte_100A69A78, &unk_100C61E18, v0, v1);
    atomic_store(result, &qword_100CB4050);
  }

  return result;
}

unint64_t sub_1003C4EB0()
{
  result = qword_100CB4058;
  if (!qword_100CB4058)
  {
    result = swift_getWitnessTable(byte_100A386CC, &type metadata for ReportWeatherContentViewModel, v0, v1);
    atomic_store(result, &qword_100CB4058);
  }

  return result;
}

unint64_t sub_1003C4F04()
{
  result = qword_100CB4068;
  if (!qword_100CB4068)
  {
    v3 = sub_10022E824(&qword_100CB4060, &unk_100A470B8);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB4068);
  }

  return result;
}

unint64_t sub_1003C4F68()
{
  result = qword_100CB4070;
  if (!qword_100CB4070)
  {
    result = swift_getWitnessTable(byte_100A46FD8, &type metadata for ReportWeatherViewModel, v0, v1);
    atomic_store(result, &qword_100CB4070);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherViewModel.CodingType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C5178()
{
  result = qword_100CB4078;
  if (!qword_100CB4078)
  {
    result = swift_getWitnessTable(aYc, &type metadata for ReportWeatherViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4078);
  }

  return result;
}

unint64_t sub_1003C51D0()
{
  result = qword_100CB4080;
  if (!qword_100CB4080)
  {
    result = swift_getWitnessTable(byte_100A47248, &type metadata for ReportWeatherViewModel.CodingType, v0, v1);
    atomic_store(result, &qword_100CB4080);
  }

  return result;
}

unint64_t sub_1003C5228()
{
  result = qword_100CB4088;
  if (!qword_100CB4088)
  {
    result = swift_getWitnessTable(byte_100A470E0, &type metadata for ReportWeatherViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4088);
  }

  return result;
}

unint64_t sub_1003C5280()
{
  result = qword_100CB4090;
  if (!qword_100CB4090)
  {
    result = swift_getWitnessTable(byte_100A47108, &type metadata for ReportWeatherViewModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4090);
  }

  return result;
}

unint64_t sub_1003C52D4()
{
  result = qword_100CB4098;
  if (!qword_100CB4098)
  {
    result = swift_getWitnessTable(aAc, &type metadata for ReportWeatherViewModel.CodingType, v0, v1);
    atomic_store(result, &qword_100CB4098);
  }

  return result;
}

uint64_t sub_1003C5350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656C6573 && a2 == 0xEC00000065746144;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x8000000100AC53A0 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6552656372756F73 && a2 == 0xEA00000000007463;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E694B776F727261 && a2 == 0xE900000000000064)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1003C550C(char a1)
{
  result = 0x6E6F697461636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x64657463656C6573;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x6552656372756F73;
      break;
    case 4:
      result = 0x6E694B776F727261;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1003C55BC(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for Date();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v60 = v8 - v7;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v9);
  sub_100003828();
  __chkstk_darwin(v10);
  v61 = &v56 - v11;
  v12 = sub_10022C350(qword_100CA4F80, &unk_100A580C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  type metadata accessor for MoonDetailSelectedDate(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  v20 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v56 - v22;
  v24 = sub_10022C350(&qword_100CB4150, &qword_100A47450);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v25);
  v27 = &v56 - v26;
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v57 = v5;
  v28 = type metadata accessor for MoonDetailViewState(0);
  v63 = a2;
  v29 = *(v28 + 20);
  v30 = *(v24 + 48);
  v58 = v28;
  v59 = a1;
  sub_1000177DC(a1 + v29, v27);
  sub_1000177DC(v63 + v29, &v27[v30]);
  sub_10000E7EC(v27);
  if (v31)
  {
    sub_10000E7EC(&v27[v30]);
    if (v31)
    {
      sub_1000180EC(v27, qword_100CA66A0, &unk_100A314C0);
      goto LABEL_12;
    }

LABEL_10:
    v32 = &qword_100CB4150;
    v33 = &qword_100A47450;
    v34 = v27;
LABEL_18:
    sub_1000180EC(v34, v32, v33);
    return 0;
  }

  sub_1000955E0(v27, v23, qword_100CA66A0, &unk_100A314C0);
  sub_10000E7EC(&v27[v30]);
  if (v31)
  {
    sub_1003C6784(v23, type metadata accessor for MoonDetailSelectedDate);
    goto LABEL_10;
  }

  sub_1003C6614(&v27[v30], v19);
  v35 = sub_10070B2E4(v23, v19);
  sub_1003C6784(v19, type metadata accessor for MoonDetailSelectedDate);
  sub_1003C6784(v23, type metadata accessor for MoonDetailSelectedDate);
  sub_1000180EC(v27, qword_100CA66A0, &unk_100A314C0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v37 = v58;
  v36 = v59;
  v38 = *(v58 + 24);
  v39 = *(v12 + 48);
  sub_1000177DC(v59 + v38, v15);
  v40 = v63 + v38;
  v41 = v63;
  sub_1000177DC(v40, &v15[v39]);
  v42 = v62;
  if (sub_100024D10(v15, 1, v62) == 1)
  {
    if (sub_100024D10(&v15[v39], 1, v42) == 1)
    {
      sub_1000180EC(v15, &unk_100CB2CF0, &unk_100A2D7F0);
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  v43 = v61;
  sub_1000955E0(v15, v61, &unk_100CB2CF0, &unk_100A2D7F0);
  if (sub_100024D10(&v15[v39], 1, v42) == 1)
  {
    (*(v57 + 8))(v43, v42);
LABEL_17:
    v32 = qword_100CA4F80;
    v33 = &unk_100A580C0;
    v34 = v15;
    goto LABEL_18;
  }

  v45 = v57;
  v46 = &v15[v39];
  v47 = v60;
  (*(v57 + 32))(v60, v46, v42);
  sub_10001EB20();
  sub_1003C6894(v48, v49, &protocol conformance descriptor for Date);
  v50 = dispatch thunk of static Equatable.== infix(_:_:)();
  v51 = *(v45 + 8);
  v51(v47, v42);
  v51(v43, v42);
  v41 = v63;
  sub_1000180EC(v15, &unk_100CB2CF0, &unk_100A2D7F0);
  if ((v50 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v52 = *(v37 + 28);
  v53 = (v36 + v52);
  v54 = *(v36 + v52 + 32);
  v55 = v41 + v52;
  if (v54)
  {
    if (*(v55 + 32))
    {
      return *(v36 + *(v37 + 32)) == *(v41 + *(v37 + 32));
    }

    return 0;
  }

  if (*(v55 + 32))
  {
    return 0;
  }

  result = CGRectEqualToRect(*v53, *v55);
  if (result)
  {
    return *(v36 + *(v37 + 32)) == *(v41 + *(v37 + 32));
  }

  return result;
}

uint64_t sub_1003C5B1C(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4178, &qword_100A47460);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003C6678();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  type metadata accessor for Location();
  sub_100004094();
  sub_1003C6894(v11, v12, &protocol conformance descriptor for Location);
  sub_1000058DC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for MoonDetailViewState(0);
    LOBYTE(v26) = 1;
    type metadata accessor for MoonDetailSelectedDate(0);
    sub_100008488();
    sub_1003C6894(v14, v15, byte_100A7BF98);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v26) = 2;
    type metadata accessor for Date();
    sub_10001EB20();
    sub_1003C6894(v16, v17, &protocol conformance descriptor for Date);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + *(v13 + 28));
    v19 = *(v18 + 32);
    v20 = v18[1];
    v26 = *v18;
    v27 = v20;
    v28 = v19;
    v25 = 3;
    type metadata accessor for CGRect(0);
    sub_100014528();
    sub_1003C6894(v21, v22, &protocol conformance descriptor for CGRect);
    sub_1000058DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v26) = *(v3 + *(v13 + 32));
    v25 = 4;
    sub_1003C67DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003C5DE0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v44 = &v43 - v5;
  v6 = sub_10022C350(qword_100CA66A0, &unk_100A314C0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for Location();
  sub_1000037C4();
  v45 = v11;
  __chkstk_darwin(v12);
  sub_1000037D8();
  v48 = v14 - v13;
  sub_10022C350(&qword_100CB4158, &qword_100A47458);
  sub_1000037C4();
  v46 = v16;
  v47 = v15;
  sub_100003828();
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = type metadata accessor for MoonDetailViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  sub_1000161C0(a1, a1[3]);
  sub_1003C6678();
  v49 = v19;
  v25 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return sub_100006F14(a1);
  }

  v26 = v45;
  LOBYTE(v51) = 0;
  sub_100004094();
  sub_1003C6894(v27, v28, &protocol conformance descriptor for Location);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = *(v26 + 32);
  v50 = v10;
  v29(v24, v48, v10);
  type metadata accessor for MoonDetailSelectedDate(0);
  LOBYTE(v51) = 1;
  sub_100008488();
  sub_1003C6894(v30, v31, byte_100A7BFC0);
  sub_100049784();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002F758(v9, v24 + v20[5], qword_100CA66A0, &unk_100A314C0);
  type metadata accessor for Date();
  LOBYTE(v51) = 2;
  sub_10001EB20();
  sub_1003C6894(v32, v33, &protocol conformance descriptor for Date);
  v34 = v44;
  sub_100049784();
  v48 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10002F758(v34, v24 + v20[6], &unk_100CB2CF0, &unk_100A2D7F0);
  type metadata accessor for CGRect(0);
  v54 = 3;
  sub_100014528();
  sub_1003C6894(v35, v36, &protocol conformance descriptor for CGRect);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = v24 + v20[7];
  v38 = v53;
  v39 = v52;
  *v37 = v51;
  *(v37 + 16) = v39;
  *(v37 + 32) = v38;
  v54 = 4;
  sub_1003C66CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v40 = sub_100022ACC();
  v41(v40);
  *(v24 + v20[8]) = v51;
  sub_1003C6720(v24, v43);
  sub_100006F14(a1);
  return sub_1003C6784(v24, type metadata accessor for MoonDetailViewState);
}

uint64_t sub_1003C6394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003C5350(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003C63BC(uint64_t a1)
{
  v2 = sub_1003C6678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003C63F8(uint64_t a1)
{
  v2 = sub_1003C6678();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003C6498@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CB4190, &qword_100A47468);
  a1[4] = sub_1003C6830();
  sub_100042FB0(a1);
  type metadata accessor for MoonDetailViewState(0);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1003C6560(uint64_t a1)
{
  sub_1003C6894(&qword_100CB41A0, type metadata accessor for MoonDetailViewState, aD_5);

  return ShortDescribable.description.getter();
}

uint64_t sub_1003C6614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailSelectedDate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003C6678()
{
  result = qword_100CB4160;
  if (!qword_100CB4160)
  {
    result = swift_getWitnessTable(byte_100A47534, &type metadata for MoonDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4160);
  }

  return result;
}

unint64_t sub_1003C66CC()
{
  result = qword_100CB4170;
  if (!qword_100CB4170)
  {
    result = swift_getWitnessTable(byte_100A61FF4, &type metadata for MoonScrubberHeaderArrowKind, v0, v1);
    atomic_store(result, &qword_100CB4170);
  }

  return result;
}

uint64_t sub_1003C6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonDetailViewState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C6784(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1003C67DC()
{
  result = qword_100CB4188;
  if (!qword_100CB4188)
  {
    result = swift_getWitnessTable(byte_100A61FCC, &type metadata for MoonScrubberHeaderArrowKind, v0, v1);
    atomic_store(result, &qword_100CB4188);
  }

  return result;
}

unint64_t sub_1003C6830()
{
  result = qword_100CB4198;
  if (!qword_100CB4198)
  {
    v3 = sub_10022E824(&qword_100CB4190, &qword_100A47468);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB4198);
  }

  return result;
}

uint64_t sub_1003C6894(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MoonDetailViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003C69BC()
{
  result = qword_100CB41A8;
  if (!qword_100CB41A8)
  {
    result = swift_getWitnessTable(byte_100A4750C, &type metadata for MoonDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB41A8);
  }

  return result;
}

unint64_t sub_1003C6A14()
{
  result = qword_100CB41B0;
  if (!qword_100CB41B0)
  {
    result = swift_getWitnessTable(aEd_0, &type metadata for MoonDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB41B0);
  }

  return result;
}

unint64_t sub_1003C6A6C()
{
  result = qword_100CB41B8;
  if (!qword_100CB41B8)
  {
    result = swift_getWitnessTable(aC_3, &type metadata for MoonDetailViewState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB41B8);
  }

  return result;
}

uint64_t sub_1003C6ADC()
{
  sub_10022C350(&qword_100CA53B0, &qword_100A47610);
  sub_10022C350(&qword_100CB4260, &qword_100A47618);
  sub_100270C80();
  sub_100006F64(&qword_100CB4268, &qword_100CB4260, &qword_100A47618, &protocol conformance descriptor for Picker<A, B, C>);
  return Menu.init(content:label:)();
}

uint64_t sub_1003C6BC8(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB41C0, &unk_100A47590);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v5 = type metadata accessor for ConditionPickerMenuView(0);
  sub_100035AD0(a1 + *(v5 + 20), v4, &qword_100CB41C0, &unk_100A47590);
  v9 = 0xD000000000000012;
  v10 = 0x8000000100AC53E0;
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v8 = a1;
  sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  sub_10022C350(&qword_100CB4270, &qword_100A47650);
  sub_1003C7964();
  sub_1003C7A18();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_1003C6D2C(uint64_t a1)
{
  type metadata accessor for ConditionPickerMenuViewModel(0);

  sub_10022C350(&qword_100CB42B0, &qword_100A47670);
  sub_10022C350(&qword_100CB4298, &qword_100A47658);
  sub_100006F64(&qword_100CB42B8, &qword_100CB42B0, &qword_100A47670, &protocol conformance descriptor for [A]);
  sub_1003C7A9C();
  sub_1003C7CD4(&qword_100CB42C0, type metadata accessor for ConditionPickerMenuViewModel.Row, byte_100A4AF2C);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1003C6E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v69 = sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  v63 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v60 - v3;
  v70 = sub_10022C350(&qword_100CB42C8, &qword_100A47678);
  v65 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = &v60 - v4;
  v67 = sub_10022C350(&qword_100CB42D0, &qword_100A47680);
  __chkstk_darwin(v67);
  v68 = &v60 - v5;
  v75 = sub_10022C350(&qword_100CB42A8, &unk_100A47660);
  __chkstk_darwin(v75);
  v71 = &v60 - v6;
  v74 = sub_10022C350(&qword_100CB42D8, &qword_100A47688);
  __chkstk_darwin(v74);
  v8 = &v60 - v7;
  v9 = sub_10022C350(&qword_100CB42E0, &unk_100A47690);
  v72 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  __chkstk_darwin(v12);
  v66 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for WeatherCondition();
  v73 = *(v17 - 8);
  __chkstk_darwin(v17);
  v78 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for ConditionPickerMenuViewModel.Row(0) + 20);
  sub_100035AD0(a1 + v19, v16, &qword_100CA2CD8, &unk_100A2C420);
  v77 = v17;
  if (sub_100024D10(v16, 1, v17) == 1)
  {
    sub_1000180EC(v16, &qword_100CA2CD8, &unk_100A2C420);
    v20 = &v11[*(sub_10022C350(&qword_100CA2CD0, &qword_100A2C418) + 36)];
    sub_100035AD0(a1 + v19, v20, &qword_100CA2CD8, &unk_100A2C420);
    *(v20 + *(sub_10022C350(&qword_100CA2CE0, &unk_100A476A0) + 36)) = 1;
    *v11 = 0xD00000000000001FLL;
    *(v11 + 1) = 0x8000000100AC5400;
    v11[16] = 0;
    *(v11 + 3) = _swiftEmptyArrayStorage;
    v21 = v72;
    (*(v72 + 16))(v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    sub_1003C7B80();
    v22 = sub_1003C7964();
    v79 = &type metadata for Text;
    v80 = v12;
    v81 = &protocol witness table for Text;
    v82 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v11, v9);
  }

  else
  {
    v60 = v12;
    v61 = v8;
    v24 = v73;
    (*(v73 + 32))(v78, v16, v77);
    if (WeatherCondition.conditionIconName(isDaytime:)(1).value._object)
    {
      v25 = v78;
      v79 = WeatherCondition.rawValue.getter();
      v80 = v26;
      sub_10002D5A4();
      v27 = v62;
      Label<>.init<A>(_:systemImage:)();
      v28 = v66;
      v29 = v25;
      v30 = v77;
      (*(v24 + 16))(v66, v29, v77);
      sub_10001B350(v28, 0, 1, v30);
      v31 = sub_10022C350(&qword_100CA2CE8, &unk_100A2C430);
      v32 = v64;
      v33 = &v64[*(v31 + 36)];
      sub_1003C7D1C(v28, v33);
      *(v33 + *(sub_10022C350(&qword_100CA2CE0, &unk_100A476A0) + 36)) = 1;
      v34 = v69;
      (*(v63 + 32))(v32, v27, v69);
      v35 = v65;
      v36 = v70;
      (*(v65 + 16))(v68, v32, v70);
      swift_storeEnumTagMultiPayload();
      v37 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
      v38 = sub_1003C7964();
      v79 = v34;
      v39 = v60;
      v80 = v60;
      v81 = v37;
      v82 = v38;
      swift_getOpaqueTypeConformance2();
      v79 = &type metadata for Text;
      v80 = v39;
      v81 = &protocol witness table for Text;
      v82 = v38;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      _ConditionalContent<>.init(storage:)();
      v41 = v32;
      v42 = v73;
      (*(v35 + 8))(v41, v36);
    }

    else
    {
      v43 = v78;
      v79 = WeatherCondition.rawValue.getter();
      v80 = v44;
      sub_10002D5A4();
      v45 = Text.init<A>(_:)();
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v52 = v66;
      v53 = v43;
      v54 = v77;
      (*(v24 + 16))(v66, v53, v77);
      sub_10001B350(v52, 0, 1, v54);
      v55 = &v11[*(sub_10022C350(&qword_100CA2CD0, &qword_100A2C418) + 36)];
      sub_1003C7D1C(v52, v55);
      *(v55 + *(sub_10022C350(&qword_100CA2CE0, &unk_100A476A0) + 36)) = 1;
      v56 = v72;
      v42 = v73;
      *v11 = v45;
      *(v11 + 1) = v47;
      v11[16] = v49 & 1;
      *(v11 + 3) = v51;
      (*(v56 + 16))(v68, v11, v9);
      swift_storeEnumTagMultiPayload();
      v57 = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
      v58 = sub_1003C7964();
      v39 = v60;
      v79 = v69;
      v80 = v60;
      v81 = v57;
      v82 = v58;
      swift_getOpaqueTypeConformance2();
      v79 = &type metadata for Text;
      v80 = v39;
      v81 = &protocol witness table for Text;
      v82 = v58;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      _ConditionalContent<>.init(storage:)();
      (*(v56 + 8))(v11, v9);
    }

    sub_1001E1C5C(v40, v61);
    swift_storeEnumTagMultiPayload();
    sub_1003C7B80();
    v59 = sub_1003C7964();
    v79 = &type metadata for Text;
    v80 = v39;
    v81 = &protocol witness table for Text;
    v82 = v59;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_1001E1CC4(v40);
    return (*(v42 + 8))(v78, v77);
  }
}

uint64_t sub_1003C7850@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = Image.init(systemName:)();
  v6 = type metadata accessor for Font.Design();
  sub_10001B350(v4, 1, 1, v6);
  v7 = static Font.system(size:weight:design:)();
  sub_1000180EC(v4, &qword_100CA4020, &qword_100A2E080);
  result = swift_getKeyPath();
  *a1 = v5;
  a1[1] = result;
  a1[2] = v7;
  return result;
}

unint64_t sub_1003C7964()
{
  result = qword_100CB4278;
  if (!qword_100CB4278)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CA2CD8, &unk_100A2C420);
    v4[0] = sub_1003C7CD4(&qword_100CB4280, &type metadata accessor for WeatherCondition, &protocol conformance descriptor for WeatherCondition);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CB4278);
  }

  return result;
}

unint64_t sub_1003C7A18()
{
  result = qword_100CB4288;
  if (!qword_100CB4288)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CB4270, &qword_100A47650);
    v4[0] = sub_1003C7A9C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ForEach<A, B, C>, v3, v4);
    atomic_store(result, &qword_100CB4288);
  }

  return result;
}

unint64_t sub_1003C7A9C()
{
  result = qword_100CB4290;
  if (!qword_100CB4290)
  {
    v5[10] = v0;
    v5[11] = v1;
    v3 = sub_10022E824(&qword_100CB4298, &qword_100A47658);
    v4 = sub_1003C7B80();
    v5[2] = &type metadata for Text;
    v5[3] = sub_10022E824(&qword_100CA2CD8, &unk_100A2C420);
    v5[4] = &protocol witness table for Text;
    v5[5] = sub_1003C7964();
    v5[0] = v4;
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CB4290);
  }

  return result;
}

unint64_t sub_1003C7B80()
{
  result = qword_100CB42A0;
  if (!qword_100CB42A0)
  {
    v5[12] = v0;
    v5[13] = v1;
    v3 = sub_10022E824(&qword_100CB42A8, &unk_100A47660);
    sub_10022E824(&qword_100CA2CF0, &unk_100A6F8C0);
    v4 = sub_10022E824(&qword_100CA2CD8, &unk_100A2C420);
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
    v5[2] = &type metadata for Text;
    v5[3] = v4;
    v5[4] = &protocol witness table for Text;
    v5[5] = sub_1003C7964();
    v5[0] = swift_getOpaqueTypeConformance2();
    v5[1] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v5);
    atomic_store(result, &qword_100CB42A0);
  }

  return result;
}

uint64_t sub_1003C7CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003C7D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA2CD8, &unk_100A2C420);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C7DB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v27 - v9);
  v11 = sub_10022C350(&qword_100CB4398, &unk_100A47700);
  sub_1000037E8();
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  if ((static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = type metadata accessor for MapComponentViewModel(0);
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_1003C8028(a1 + v16, v14);
  sub_1003C8028(a2 + v16, &v14[v17]);
  sub_10000394C(v14);
  if (!v18)
  {
    sub_1003C8028(v14, v10);
    sub_10000394C(&v14[v17]);
    if (!v18)
    {
      sub_1003BD374(&v14[v17], v7);
      v20 = sub_100883064(v10, v7);
      sub_1003C8098(v7);
      sub_1003C8098(v10);
      sub_1000180EC(v14, &qword_100CA3898, &qword_100A314D0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1003C8098(v10);
LABEL_11:
    sub_1000180EC(v14, &qword_100CB4398, &unk_100A47700);
    return 0;
  }

  sub_10000394C(&v14[v17]);
  if (!v18)
  {
    goto LABEL_11;
  }

  sub_1000180EC(v14, &qword_100CA3898, &qword_100A314D0);
LABEL_15:
  v21 = *(v15 + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1003C8028(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C8098(uint64_t a1)
{
  v2 = type metadata accessor for WeatherData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C80F4()
{
  v0 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = type metadata accessor for MapComponentViewModel(0);
  sub_100007074(v14, qword_100D8FC88);
  v15 = sub_10000703C(v14, qword_100D8FC88);
  v16 = enum case for WeatherMapPrecipitationOverlayKind.auto(_:);
  type metadata accessor for WeatherMapPrecipitationOverlayKind();
  sub_1000037E8();
  (*(v17 + 104))(v13, v16);
  (*(v9 + 104))(v13, enum case for WeatherMapOverlayKind.precipitation(_:), v7);
  static Location.cupertino.getter();
  v18 = v14[6];
  v19 = type metadata accessor for WeatherData(0);
  sub_10001B350(v15 + v18, 1, 1, v19);
  (*(v9 + 32))(v15, v13, v7);
  result = (*(v2 + 32))(v15 + v14[5], v6, v0);
  v21 = (v15 + v14[7]);
  *v21 = 0;
  v21[1] = 0;
  return result;
}

uint64_t sub_1003C8310(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  __chkstk_darwin(v2 - 8);
  v45 = &v44 - v3;
  v44 = type metadata accessor for Calendar();
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v15);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v21 = &v44 - v20;
  v46 = v23;
  v47 = v22;
  (*(v23 + 16))(&v44 - v20, a1, v19);
  v24 = *(type metadata accessor for PastDataComparisonTextContext(0) + 24);
  v48 = v11;
  v49 = v9;
  (*(v11 + 16))(v14, a1 + v24, v9);
  static Calendar.currentCalendar(with:)();
  Date.wc_addDays(_:calendar:)();
  (*(v5 + 8))(v8, v44);
  v25 = v45;
  v50 = v21;
  v51 = v14;
  sub_1008DBCAC();
  v26 = sub_1003C8820(a1, v17, v14, "Failed to find yesterday's humidity");
  v27 = sub_1003C8820(a1, v21, v14, "Failed to find today's humidity");
  if (v26 >= v27)
  {
    if (v27 >= v26)
    {
      v35 = sub_100005AA8();
      v31 = Text.init(_:tableName:bundle:comment:)(v35, v37, v36 & 1, v38, 0, 0, 0, "Comparison description of yesterday and today in humidity L2. It indicates today’s average relative humidity is similar to than yesterday’s", 143, 0);
    }

    else
    {
      v32 = sub_100005AA8();
      v31 = Text.init(_:tableName:bundle:comment:)(v32, v33, v36 & 1, v34, 0, 0, 0, "Comparison description of yesterday and today in humidity L2. It indicates today’s average relative humidity is sufficiently lower than yesterday’s", 151, 0);
    }
  }

  else
  {
    v28 = LocalizedStringKey.init(stringLiteral:)();
    v31 = Text.init(_:tableName:bundle:comment:)(v28, v29, v36 & 1, v30, 0, 0, 0, "Comparison description of yesterday and today in humidity L2. It indicates today’s average relative humidity is sufficiently higher than yesterday’s", 152, 0);
  }

  v39 = v31;
  sub_1003C8984(v25);
  v40 = *(v46 + 8);
  v41 = v17;
  v42 = v47;
  v40(v41, v47);
  (*(v48 + 8))(v14, v49);
  v40(v21, v42);
  return v39;
}

uint64_t sub_1003C8724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v7 = Date.isSameDay(as:timeZone:)();
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

double sub_1003C8820(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  type metadata accessor for PastDataComparisonTextContext(0);
  v5 = COERCE_DOUBLE(Array<A>.humidity(for:timeZone:)());
  if ((v6 & 1) == 0)
  {
    return round(v5 * 100.0);
  }

  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000703C(v7, qword_100D90B68);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 2u);
  }

  return 0.0;
}

uint64_t sub_1003C8984(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CAB9B0, &qword_100A3A820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1003C89EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4448, &qword_100A47790);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4A38, &unk_100A7B8A0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4458, &qword_100A96990);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4460, &unk_100A6B650);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v6 = v19;
  if (!v19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v20;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB4468, &unk_100A4FE60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v18)
  {
    v8 = type metadata accessor for VFXTestModule();
    ObjectType = swift_getObjectType();
    v10 = sub_10002D7F8(v23, v24);
    v11 = __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v13, v11);
    v15 = type metadata accessor for VFXTestInteractor();
    v16 = sub_100703650(v13, v5, &v21, v6, &v17, v8, v15, ObjectType, &off_100C4ADB0, v7);
    result = sub_100006F14(v23);
    a2[3] = v8;
    a2[4] = &off_100C68928;
    *a2 = v16;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1003C8CC0()
{
  sub_10022C350(&qword_100CB4440, &qword_100A47788);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB4448, &qword_100A47790);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CB4450, &qword_100A47798);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4A38, &unk_100A7B8A0);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_1003C8DEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Tracker();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    a2[3] = &type metadata for VFXTestTracker;
    a2[4] = &off_100C5D558;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1003C8E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4910, &unk_100A3BEC0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v5 = v24;
  if (v24)
  {
    v6 = v25;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB4440, &qword_100A47788);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v7 = sub_10002D7F8(v22, v23);
      v8 = __chkstk_darwin(v7);
      v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v21[3] = &type metadata for VFXTestTracker;
      v21[4] = &off_100C5D558;
      v21[0] = v12;
      v13 = type metadata accessor for VFXTestInteractor();
      v14 = swift_allocObject();
      v15 = sub_10002D7F8(v21, &type metadata for VFXTestTracker);
      v16 = __chkstk_darwin(v15);
      v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      v14[7] = &type metadata for VFXTestTracker;
      v14[8] = &off_100C5D558;
      v14[3] = v6;
      v14[4] = v20;
      v14[2] = v5;
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v13;
      a2[4] = &off_100C4ADB0;
      *a2 = v14;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1003C90F8(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0, &unk_100A419F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  v3 = v16;
  if (v16)
  {
    v5 = v18;
    v4 = v19;
    v6 = v17;
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CB4450, &qword_100A47798);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v15)
    {
      v7 = *sub_1000161C0(v14, v15);
      v13[3] = type metadata accessor for VFXTestViewModelFactory();
      v13[4] = &off_100C5A1B8;
      v13[0] = v7;
      sub_100035B30(v13, v12);
      v8 = swift_allocObject();
      sub_100013188(v12, v8 + 16);

      sub_100006F14(v13);
      sub_100006F14(v14);
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1003C93E4;
      *(v9 + 24) = v8;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1003C93EC;
      *(v10 + 24) = v9;
      v11 = swift_allocObject();
      *(v11 + 16) = sub_10009F868;
      *(v11 + 24) = v10;
      sub_10022C350(&qword_100CA4A38, &unk_100A7B8A0);
      swift_allocObject();
      return sub_10024AC58(v3, v6, v5, v4, sub_100266DE8, 0, sub_10009F610, 0, sub_10009F81C, v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003C9390@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for VFXTestViewModel(0);

  return sub_10001B350(a2, 0, 1, v3);
}

BOOL sub_1003C93F4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocationPreviewContentInput(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for LocationPreviewInput(0);
  v9 = sub_100003810(v8);
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  v13 = sub_10022C350(&unk_100CB4660, &unk_100A47880);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  v18 = *(v17 + 56);
  sub_1003C9F50(a1, &v22 - v15, type metadata accessor for LocationPreviewInput);
  sub_1003C9F50(a2, &v16[v18], type metadata accessor for LocationPreviewInput);
  sub_10000394C(v16);
  if (!v20)
  {
    sub_1003C9F50(v16, v12, type metadata accessor for LocationPreviewInput);
    sub_10000394C(&v16[v18]);
    if (!v20)
    {
      sub_1003CA020(&v16[v18], v7, type metadata accessor for LocationPreviewContentInput);
      v19 = sub_1003C9618(v12, v7);
      sub_1003C9EF8(v7, type metadata accessor for LocationPreviewContentInput);
      sub_1003C9EF8(v12, type metadata accessor for LocationPreviewContentInput);
      sub_1000084A0();
      return v19;
    }

    sub_1003C9EF8(v12, type metadata accessor for LocationPreviewContentInput);
LABEL_9:
    sub_1000180EC(v16, &unk_100CB4660, &unk_100A47880);
    return 0;
  }

  sub_10000394C(&v16[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_1000084A0();
  return 1;
}

BOOL sub_1003C9618(uint64_t a1, uint64_t a2)
{
  sub_1006E6E98();
  result = 0;
  if (v4)
  {
    v5 = type metadata accessor for LocationPreviewContentInput(0);
    if (sub_10043F9F0(a1 + v5[5], a2 + v5[5]))
    {
      sub_100003CE8();
      if (v20)
      {
        sub_1000B9770();
        if (v6)
        {
          sub_1000B9424();
          if (v7)
          {
            sub_100003CE8();
            if (v20)
            {
              sub_100003CE8();
              if (v20)
              {
                v8 = v5[11];
                v9 = a1 + v8;
                v10 = *(a1 + v8);
                v11 = (a2 + v8);
                if (v10 == *v11)
                {
                  v12 = *(v11 + 2);
                  v13 = *(v9 + 16);
                  sub_1000BDA70();
                  if (v14)
                  {
                    sub_1000BDD2C(v13, v12);
                    if (v15 & 1) != 0 && (static Date.== infix(_:_:)())
                    {
                      sub_100003CE8();
                      if (v20)
                      {
                        v16 = v5[14];
                        v17 = *(a1 + v16);
                        v18 = *(a1 + v16 + 8);
                        v19 = (a2 + v16);
                        v20 = v17 == *v19 && v18 == v19[1];
                        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {
                          sub_1000BCFBC();
                          if (v21)
                          {
                            sub_1000BD330();
                            if (v22)
                            {
                              return 1;
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
    }
  }

  return result;
}

uint64_t sub_1003C978C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = type metadata accessor for TimeState(0);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v92 = v6 - v5;
  v90 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v91 = v9 - v8;
  v10 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_100003C38();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = v83 - v16;
  v18 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003C38();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  v89 = v83 - v24;
  __chkstk_darwin(v25);
  v27 = v83 - v26;
  __chkstk_darwin(v28);
  v30 = v83 - v29;
  v88 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003C38();
  v34 = v32 - v33;
  __chkstk_darwin(v35);
  v37 = v83 - v36;
  __chkstk_darwin(v38);
  v93 = v83 - v39;
  v40 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_10001C0F0();
  sub_1003C9F50(a1 + v40, v30, v41);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_10001EB38();
    sub_1003CA020(v30, v37, v45);
LABEL_9:
    sub_10001EB38();
    v50 = v37;
    v51 = v93;
    sub_1003CA020(v50, v93, v52);
    v53 = v51;
    v54 = v94;
    sub_1003C9F50(v51, v94, type metadata accessor for PreviewLocation);
    v55 = *(v88 + 20);
    v56 = type metadata accessor for LocationPreviewContentInput(0);
    sub_1003C9F50(v53 + v55, v54 + v56[5], type metadata accessor for LocationPreviewModalViewState);
    sub_10001C0F0();
    v85 = v57;
    v86 = v40;
    v58 = a1;
    v59 = v89;
    sub_1003C9F50(a1 + v40, v89, v60);
    v84 = type metadata accessor for ModalViewState.MapViewModal(0);
    sub_10001B350(v22, 1, 1, v84);
    v83[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_1000BC008();
    LODWORD(v88) = v61;
    sub_1003C9EF8(v22, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v59, type metadata accessor for ModalViewState);
    v62 = v90;
    v63 = v91;
    v87 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v90 + 36));
    v64 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v90 + 28));
    sub_1003C9F50(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v91, type metadata accessor for LocationsState);
    v65 = *(*(v63 + *(v62 + 24)) + 16);
    type metadata accessor for SavedLocationsManager();

    v66 = v64;

    LODWORD(v90) = v65 < static SavedLocationsManager.maxAllowedLocationsCount.getter();
    sub_1003C9EF8(v63, type metadata accessor for LocationsState);
    sub_1003C9F50(a1 + v86, v59, v85);
    sub_10001B350(v22, 1, 1, v84);
    v48 = v94;
    swift_storeEnumTagMultiPayload();
    sub_1000BC008();
    LODWORD(v91) = v67;
    sub_1003C9EF8(v22, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v59, type metadata accessor for ModalViewState);
    sub_1003C9EF8(v93, type metadata accessor for LocationPreviewViewState);
    LOBYTE(v59) = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v69 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v68 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v70 = v92;
    sub_1003C9F50(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_time, v92, type metadata accessor for TimeState);
    v71 = v56[12];
    type metadata accessor for Date();
    sub_1000037E8();
    (*(v72 + 32))(v48 + v71, v70);
    v73 = v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
    swift_beginAccess();
    v74 = *(v73 + *(type metadata accessor for EnvironmentState(0) + 40));
    v75 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v76 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v77 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v78 = *(v58 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    *(v48 + v56[6]) = v88 & 1;
    *(v48 + v56[7]) = v87;
    *(v48 + v56[8]) = v66;
    *(v48 + v56[9]) = v90;
    *(v48 + v56[10]) = v91 & 1;
    v79 = v48 + v56[11];
    *v79 = v59;
    *(v79 + 8) = v69;
    *(v79 + 16) = v68;
    *(v48 + v56[13]) = v74;
    v80 = (v48 + v56[14]);
    *v80 = v75;
    v80[1] = v76;
    v80[2] = v77;
    v80[3] = v78;
    sub_10001B350(v48, 0, 1, v56);

    goto LABEL_10;
  }

  sub_100005AC8();
  sub_1003C9EF8(v30, v42);
  sub_10001C0F0();
  sub_1003C9F50(a1 + v40, v27, v43);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_100005AC8();
    sub_1003C9EF8(v27, v46);
    goto LABEL_7;
  }

  sub_1003C9FB0(v27, v17);
  sub_1003C9FB0(v17, v14);
  v44 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v14, 1, v44) != 1)
  {
    sub_10001EB38();
    sub_1003CA020(v14, v34, v49);
    v37 = v34;
    goto LABEL_9;
  }

  sub_1000180EC(v14, &qword_100CA65E0, &unk_100A31400);
LABEL_7:
  v47 = type metadata accessor for LocationPreviewContentInput(0);
  v48 = v94;
  sub_10001B350(v94, 1, 1, v47);
LABEL_10:
  v81 = type metadata accessor for LocationPreviewInput(0);
  return sub_10001B350(v48, 0, 1, v81);
}

uint64_t sub_1003C9EF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1003C9F50(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1003C9FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CA020(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1003CA080(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v36 = a4;
  v37 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  sub_100007FD0();
  v44 = v11;
  __chkstk_darwin(v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DispatchQoS();
  sub_100007FD0();
  v42 = v16;
  v43 = v15;
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchTime();
  v39 = v19;
  sub_100007FD0();
  v21 = v20;
  __chkstk_darwin(v22);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v35 - v26;
  sub_100040690();
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v38 = *(v21 + 8);
  v38(v24, v19);
  v29 = swift_allocObject();
  v30 = v37;
  *(v29 + 16) = v36;
  *(v29 + 24) = v30;
  *(v29 + 32) = a1;
  v31 = v40;
  v32 = v41;
  *(v29 + 40) = a6;
  *(v29 + 48) = v31;
  *(v29 + 56) = v32;
  aBlock[4] = sub_1003CA48C;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C53EE0;
  v33 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100074390();
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v33);

  (*(v44 + 8))(v14, v10);
  (*(v42 + 8))(v18, v43);
  return (v38)(v27, v39);
}

void sub_1003CA404(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, double a6)
{
  v6 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    swift_getObjectType();

    sub_1003CA4A0(v6, a3, a4, a5, result, a6);
  }
}

void sub_1003CA4A0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, double a6)
{
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = swift_allocObject();
    *(v13 + 16) = a6;
    *(v13 + 24) = a5;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    *(v13 + 48) = a3;
    *(v13 + 56) = a4;
    v15[4] = sub_1003CA5D4;
    v15[5] = v13;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1007AEBB4;
    v15[3] = &unk_100C53F30;
    v14 = _Block_copy(v15);
    swift_unknownObjectRetain();

    [ObjCClassFromMetadata runTestWithParameters:a2 resultHandler:v14];
    _Block_release(v14);
  }

  else
  {
    (a3)(0, a2, a3, a4, a5, a6);
  }
}

void sub_1003CA618(uint64_t a1)
{
  sub_1003CA6A4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003CA6A4(uint64_t a1)
{
  if (!qword_100CB46F0)
  {
    type metadata accessor for WeatherAlert();
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB46F0);
    }
  }
}

uint64_t sub_1003CA6FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000100AC5720 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x44746E6572727563 && a2 == 0xEB00000000657461)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1003CA814(char a1)
{
  if (!a1)
  {
    return 0x73746E657665;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x44746E6572727563;
}

uint64_t sub_1003CA874(void *a1, void *a2)
{
  sub_1009ED720();
  if ((v4 & 1) == 0 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for SevereAlertComponent(0);

  return static Date.== infix(_:_:)();
}

uint64_t sub_1003CA8EC(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CB4750, &qword_100A47930);
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1003CAF4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  HIBYTE(v21) = 0;
  sub_10022C350(&qword_100CB4738, &qword_100A47928);
  v11 = sub_1003CB060(&qword_100CB4758, &qword_100CB4760, &protocol conformance descriptor for WeatherAlert, &protocol conformance descriptor for <A> [A]);
  sub_100005AE0(&v22, &v21 + 7, v12, v13, v11);
  if (!v2)
  {
    BYTE6(v21) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(type metadata accessor for SevereAlertComponent(0) + 24);
    BYTE5(v21) = 2;
    type metadata accessor for Date();
    sub_10001EB50();
    v17 = sub_1003CB0FC(v15, v16, &protocol conformance descriptor for Date);
    sub_100005AE0(v3 + v14, &v21 + 5, v18, v19, v17);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1003CAAF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for Date();
  sub_1000037C4();
  v21 = v4;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CB4728, &qword_100A47920);
  sub_1000037C4();
  v23 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for SevereAlertComponent(0);
  __chkstk_darwin(v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1, a1[3]);
  sub_1003CAF4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v20 = a1;
  v13 = v24;
  sub_10022C350(&qword_100CB4738, &qword_100A47928);
  v28 = 0;
  sub_1003CB060(&qword_100CB4740, &qword_100CB4748, &protocol conformance descriptor for WeatherAlert, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v29;
  *v12 = v29;
  v27 = 1;
  *(v12 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 2;
  sub_10001EB50();
  sub_1003CB0FC(v14, v15, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = sub_10000FEB4();
  v17(v16);
  (*(v21 + 32))(&v12[*(v10 + 24)], v7, v13);
  sub_1003CAFA0(v12, v22);
  sub_100006F14(v20);
  return sub_1003CB004(v12);
}

uint64_t sub_1003CAE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CA6FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CAEA0(uint64_t a1)
{
  v2 = sub_1003CAF4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CAEDC(uint64_t a1)
{
  v2 = sub_1003CAF4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1003CAF4C()
{
  result = qword_100CB4730;
  if (!qword_100CB4730)
  {
    result = swift_getWitnessTable(byte_100A479FC, &type metadata for SevereAlertComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4730);
  }

  return result;
}

uint64_t sub_1003CAFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SevereAlertComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CB004(uint64_t a1)
{
  v2 = type metadata accessor for SevereAlertComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003CB060(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10022E824(&qword_100CB4738, &qword_100A47928);
    v10 = sub_1003CB0FC(a2, &type metadata accessor for WeatherAlert, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003CB0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SevereAlertComponent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003CB224()
{
  result = qword_100CB4768;
  if (!qword_100CB4768)
  {
    result = swift_getWitnessTable(asc_100A479D4, &type metadata for SevereAlertComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4768);
  }

  return result;
}

unint64_t sub_1003CB27C()
{
  result = qword_100CB4770;
  if (!qword_100CB4770)
  {
    result = swift_getWitnessTable(byte_100A47944, &type metadata for SevereAlertComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4770);
  }

  return result;
}

unint64_t sub_1003CB2D4()
{
  result = qword_100CB4778;
  if (!qword_100CB4778)
  {
    result = swift_getWitnessTable(aE_41, &type metadata for SevereAlertComponent.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4778);
  }

  return result;
}

double sub_1003CB328(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA1FE8 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA1FF8 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA1FF0 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA1FE0 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA1FD8 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void sub_1003CB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BB80;
  v22[0] = xmmword_100A2C3F0;
  v22[1] = xmmword_100A3BB90;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A3BBB0;
  v20[1] = xmmword_100A3BBC0;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BB70;
  v19[1] = xmmword_100A3BBD0;
  v18[0] = xmmword_100A2C3F0;
  v18[1] = xmmword_100A3BBC0;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BB70;
  v17[1] = xmmword_100A3BBE0;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BB90;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBF0;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC00;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC10;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 0, 1, 10, 11, 0, 1, 12, 13, 0, 1, 9, 10);
  qword_100D8FCA0 = v8;
}

void sub_1003CB5BC()
{
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BB80;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BBC0;
  v16 = v15;
  v17 = v14;
  v13[0] = xmmword_100A3BB70;
  v13[1] = xmmword_100A3BBA0;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC10;
  v18 = v13;
  v19 = v12;
  v11[0] = xmmword_100A3BB70;
  v11[1] = xmmword_100A3BBD0;
  v10[0] = xmmword_100A2C3F0;
  v10[1] = xmmword_100A3BC10;
  v20 = v11;
  v21 = v10;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v8[0] = xmmword_100A3BB70;
  v8[1] = xmmword_100A2C3F0;
  v22 = v9;
  v23 = v8;
  v7[0] = xmmword_100A2C3F0;
  v7[1] = xmmword_100A3BC00;
  v6[0] = xmmword_100A2C3F0;
  v6[1] = xmmword_100A3BC20;
  v24 = v7;
  v25 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A2C3F0;
  v4[1] = xmmword_100A3BC30;
  v26 = v5;
  v27 = v4;
  v3[0] = xmmword_100A3BBB0;
  v3[1] = xmmword_100A3BC30;
  v2[0] = xmmword_100A3BBB0;
  v2[1] = xmmword_100A3BC00;
  v28 = v3;
  v29 = v2;
  v1[0] = xmmword_100A3BBB0;
  v1[1] = xmmword_100A3BC20;
  v30 = v1;
  sub_100555FC0();
  qword_100D8FCA8 = v0;
}

void sub_1003CB6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A2D320;
  v24[1] = xmmword_100A3BC40;
  v23[0] = xmmword_100A3BC40;
  v23[1] = xmmword_100A3BC30;
  v25 = v24;
  v26 = v23;
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBA0;
  v21[0] = xmmword_100A3BBD0;
  v21[1] = xmmword_100A3BB80;
  v27 = v22;
  v28 = v21;
  v19[0] = 0;
  v19[1] = 4;
  v20 = xmmword_100A3BBD0;
  v18[0] = xmmword_100A3BBB0;
  v18[1] = xmmword_100A3BC30;
  v29 = v19;
  v30 = v18;
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A3BB80;
  v31 = v17;
  v32 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC30;
  v33 = v15;
  v34 = v14;
  v13[0] = xmmword_100A3BC40;
  v13[1] = xmmword_100A3BB80;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v35 = v13;
  v36 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC50;
  v37 = v11;
  v38 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 2, 4, 4, 5, 1, 2, 7, 8, 2, 3, 5, 6);
  qword_100D8FCB0 = v8;
}

void sub_1003CB808()
{
  v17[0] = xmmword_100A2D320;
  v17[1] = xmmword_100A3BBD0;
  v16[0] = xmmword_100A3BC40;
  v16[1] = xmmword_100A3BB80;
  v18 = v17;
  v19 = v16;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3AEB0;
  v14[0] = xmmword_100A3BBD0;
  v14[1] = xmmword_100A3BC50;
  v20 = v15;
  v21 = v14;
  v11 = 0;
  v12 = xmmword_100A3BC70;
  v13 = 2;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BB80;
  v22 = &v11;
  v23 = v10;
  v9[0] = xmmword_100A3BB70;
  v9[1] = xmmword_100A3BC50;
  v8[0] = xmmword_100A2D320;
  v8[1] = xmmword_100A3BBB0;
  v24 = v9;
  v25 = v8;
  v7[0] = xmmword_100A3BBD0;
  v7[1] = xmmword_100A3BB80;
  v6[0] = xmmword_100A3BC40;
  v6[1] = xmmword_100A3BC50;
  v26 = v7;
  v27 = v6;
  v5[0] = xmmword_100A3BB70;
  v5[1] = xmmword_100A3BBB0;
  v4[0] = xmmword_100A3BC40;
  v4[1] = xmmword_100A3BC60;
  v28 = v5;
  v29 = v4;
  v3[0] = xmmword_100A3BBD0;
  v3[1] = xmmword_100A3BC60;
  v2[0] = xmmword_100A2C3F0;
  v2[1] = xmmword_100A3BB80;
  v30 = v3;
  v31 = v2;
  v1[0] = xmmword_100A2D320;
  v1[1] = xmmword_100A3BC40;
  v32 = v1;
  sub_100555FC0();
  qword_100D8FCB8 = v0;
}

void sub_1003CB93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A2D320;
  v23[1] = xmmword_100A3BBD0;
  v22[0] = xmmword_100A3BC50;
  v22[1] = xmmword_100A3BC60;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A3BC60;
  v20[1] = xmmword_100A3BC40;
  v26 = v21;
  v27 = v20;
  v19[0] = xmmword_100A3BC80;
  v19[1] = xmmword_100A2C3F0;
  v18[0] = xmmword_100A3BC50;
  v18[1] = xmmword_100A3BC40;
  v28 = v19;
  v29 = v18;
  v17[0] = xmmword_100A3BC90;
  v17[1] = xmmword_100A3BB70;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v30 = v17;
  v31 = v16;
  v15[0] = xmmword_100A2D320;
  v15[1] = xmmword_100A3BBB0;
  v14[0] = xmmword_100A3BC60;
  v14[1] = xmmword_100A3BC60;
  v32 = v15;
  v33 = v14;
  v13[0] = xmmword_100A3BC50;
  v13[1] = xmmword_100A3BBD0;
  v12[0] = xmmword_100A3BB70;
  v12[1] = xmmword_100A3BBB0;
  v34 = v13;
  v35 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  v36 = v11;
  v37 = &v10;
  sub_1000177F4(&v9, a2, a3, a4, a5, a6, a7, a8, 4, 5, 2, 3, 3, 4, 4, 5, 2, 3, 3, 4);
  qword_100D8FCC0 = v8;
}

uint64_t sub_1003CBA5C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v39 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v42 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v41 = v9;
  __chkstk_darwin(v10);
  sub_100003878();
  v40 = v11;
  __chkstk_darwin(v12);
  sub_100013628();
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for LocationViewComponent(0);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v37 - v28;

  sub_1005D71C4(v30, a2);
  v38 = v31;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_map, v22, type metadata accessor for LocationViewComponent);
  a2(v22);
  sub_100020648();
  sub_10001B350(v29, 0, 1, v39);
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_airQuality);
  a2(v22);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_nextHourPrecipitation);
  a2(v22);
  sub_100020648();
  sub_1000176E8(OBJC_IVAR____TtCV7Weather30LocationSevereNhpConfiguration8_Storage_severeAlert);
  a2(v22);
  sub_100020648();
  sub_100035AD0(v29, v26, &qword_100CA5008, &unk_100A2F7B0);
  v32 = v40;
  sub_10031694C(v18, v40, type metadata accessor for LocationComponentContainerViewModel);
  v33 = v41;
  sub_10031694C(v15, v41, type metadata accessor for LocationComponentContainerViewModel);
  v34 = v42;
  sub_10031694C(v3, v42, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for SevereNhpContent._Storage(0);
  swift_allocObject();
  v35 = sub_1002D9968(v38, v26, v32, v33, v34);
  sub_1003169AC(v3, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v15, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v18, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v29, &qword_100CA5008, &unk_100A2F7B0);
  return v35;
}

uint64_t sub_1003CBDF0(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v131 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v135 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    sub_10001361C(v16, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10000E904(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v30 = sub_100013600();
    sub_100003E18(v30);
    sub_10000E904(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v30);
    *(v12 + 136) = v31;
    *(v12 + 144) = v32;
    v132 = v13 + 2 * v14;
    v133 = v14;
    v33 = v14;
    v34 = v15;
    v35 = swift_allocObject();
    v36 = sub_10001361C(v35, xmmword_100A2D320) + v13;
    v37 = a1;
    v38 = *(a1 + 16);
    v39 = v37;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v38 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v36[v33], v7);
    *(v12 + 152) = sub_1001B38A0(v35);
    *(v12 + 160) = v40;
    *(v12 + 168) = v41;
    v134 = v34;
    v42 = swift_allocObject();
    sub_1000056EC(v42);
    v44 = v43 + v13;
    v45 = *(v39 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v45 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, &v133[v44], v7);
    *(v12 + 176) = sub_1001B38A0(v35);
    *(v12 + 184) = v46;
    *(v12 + 192) = v47;
    v48 = swift_allocObject();
    sub_1000056EC(v48);
    v50 = v49 + v13;
    v51 = v135;
    v52 = *(v135 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v53 = v133;
    sub_10031694C(v52 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, &v133[v50], v7);
    *(v12 + 200) = sub_1001B38A0(v35);
    *(v12 + 208) = v54;
    *(v12 + 216) = v55;
    v56 = sub_10000C998();
    sub_1000056EC(v56);
    v58 = v57 + v13;
    v59 = *(v51 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v60 = v58 + v53;
    v61 = v53;
    sub_10031694C(v59 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v60, v7);
    *(v12 + 224) = sub_1001B38A0(v35);
    *(v12 + 232) = v62;
    *(v12 + 240) = v63;
    v64 = sub_10000C998();
    sub_100003E18(v64);
    v66 = v65 + v13;
    v67 = *(v51 + 16);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v65 + v13, v7);
    sub_10031694C(v67 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v66 + v61, v7);
    *(v12 + 248) = sub_1001B38A0(v64);
    *(v12 + 256) = v68;
    *(v12 + 264) = v69;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A3BCA0;
    v70 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v71 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v72 = *(v7 + 72);
    v73 = *(v7 + 80);
    v74 = v70;
    v75 = swift_allocObject();
    sub_10001361C(v75, xmmword_100A2C3F0);
    sub_100003E24();
    sub_10031694C(a1 + v76, v75 + v71, v77);
    *(v12 + 32) = sub_1001B38A0(v75);
    *(v12 + 40) = v78;
    *(v12 + 48) = v79;
    sub_1000167B0();
    v80 = swift_allocObject();
    sub_1000056EC(v80);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_nextHourPrecipitation);
    *(v12 + 56) = sub_1001B38A0(v75);
    *(v12 + 64) = v81;
    *(v12 + 72) = v82;
    sub_1000167B0();
    v83 = swift_allocObject();
    sub_1000056EC(v83);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast);
    *(v12 + 80) = sub_1001B38A0(v75);
    *(v12 + 88) = v84;
    *(v12 + 96) = v85;
    sub_1000167B0();
    v86 = swift_allocObject();
    sub_1000056EC(v86);
    sub_10002C5F4(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast);
    *(v12 + 104) = sub_1001B38A0(v75);
    *(v12 + 112) = v87;
    *(v12 + 120) = v88;
    sub_1000167B0();
    v89 = swift_allocObject();
    sub_1000056EC(v89);
    sub_10002C5F4(a1 + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality);
    *(v12 + 128) = sub_1001B38A0(v75);
    *(v12 + 136) = v90;
    *(v12 + 144) = v91;
    v134 = v73;
    v92 = swift_allocObject();
    sub_1000056EC(v92);
    sub_10031694C(v9, v93 + v71, v7);
    *(v12 + 152) = sub_1001B38A0(v75);
    *(v12 + 160) = v94;
    *(v12 + 168) = v95;
    v96 = v71 + 2 * v72;
    v97 = v72;
    sub_1000167B0();
    v98 = swift_allocObject();
    v99 = sub_10001361C(v98, xmmword_100A2D320);
    v133 = v9;
    v100 = v99 + v71;
    v101 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v131[0] = v97;
    sub_10031694C(v101 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, &v100[v97], v7);
    *(v12 + 176) = sub_1001B38A0(v98);
    *(v12 + 184) = v102;
    *(v12 + 192) = v103;
    v131[1] = v96;
    v104 = swift_allocObject();
    sub_100003E18(v104);
    v106 = v105 + v71;
    v107 = v135;
    v108 = *(v135 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v108 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v106 + v97, v7);
    *(v12 + 200) = sub_1001B38A0(v104);
    *(v12 + 208) = v109;
    *(v12 + 216) = v110;
    sub_1000167B0();
    v132 = v74;
    v111 = swift_allocObject();
    sub_100003E18(v111);
    v113 = v112 + v71;
    v114 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v115 = v131[0];
    sub_10031694C(v114 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v113 + v131[0], v7);
    *(v12 + 224) = sub_1001B38A0(v111);
    *(v12 + 232) = v116;
    *(v12 + 240) = v117;
    sub_1000167B0();
    v118 = swift_allocObject();
    sub_100003E18(v118);
    v120 = v119 + v71;
    v121 = *(v107 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v121 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v120 + v115, v7);
    *(v12 + 248) = sub_1001B38A0(v118);
    *(v12 + 256) = v122;
    *(v12 + 264) = v123;
    v124 = swift_allocObject();
    sub_100003E18(v124);
    v126 = v125 + v71;
    v127 = *(v135 + 16);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v125 + v71, v7);
    sub_10031694C(v127 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v126 + v115, v7);
    *(v12 + 272) = sub_1001B38A0(v124);
    *(v12 + 280) = v128;
    *(v12 + 288) = v129;
    sub_1003169AC(v133, v7);
  }

  return v12;
}

void *sub_1003CC6C8(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_1003CB328(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather16SevereNhpContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for NetworkAction(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v6 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NetworkAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *(result + 1) = -a2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003CCEBC(uint64_t a1)
{
  sub_1003CCEF8();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003CCEF8()
{
  result = qword_100CB4798;
  if (!qword_100CB4798)
  {
    result = swift_getWitnessTable(byte_100A47AE8, &type metadata for NetworkAction, v0, v1);
    atomic_store(result, &qword_100CB4798);
  }

  return result;
}

uint64_t sub_1003CCF4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003CCF8C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1003CCFEC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1003CD108(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656964617267 && a2 == 0xED0000656C616353;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000100AC5760 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x8000000100AC5780 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100AC57A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65726566666964 && a2 == 0xEE00747865546563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7247796144657375 && a2 == 0xEE00746E65696461)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1003CD310(char a1)
{
  result = 0x746E656964617267;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6E65726566666964;
      break;
    case 5:
      result = 0x7247796144657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1003CD3FC(uint64_t a1, uint64_t a2)
{
  if (static TemperatureScaleConfiguration.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0), sub_100014558(*(v4 + 20)), v9) && (v6 = v5, sub_100014558(v5[6]), v9) && (sub_100014558(v6[7]), v9) && ((sub_100005824(v6[8]), v9) ? (v9 = v7 == v8) : (v9 = 0), v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    v10 = *(a1 + v6[9]) ^ *(a2 + v6[9]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1003CD49C(void *a1)
{
  v3 = sub_10022C350(&qword_100CB49C0, &qword_100A47D38);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003CE8FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  type metadata accessor for TemperatureScaleConfiguration();
  sub_100019648();
  sub_1003CE8B4(v9, v10, &protocol conformance descriptor for TemperatureScaleConfiguration);
  sub_100016834();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_100017810();
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[13] = 2;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[12] = 3;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[11] = 4;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12[10] = 5;
    sub_100016834();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003CD6D0(void *a1)
{
  v4 = type metadata accessor for TemperatureScaleConfiguration();
  sub_1000037C4();
  v30 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v27 = sub_10022C350(&qword_100CB49A8, &qword_100A47D30);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v10);
  v11 = sub_1000114FC();
  v28 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v29 = v14 - v13;
  sub_1000161C0(a1, a1[3]);
  sub_1003CE8FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_100019648();
  sub_1003CE8B4(v15, v16, &protocol conformance descriptor for TemperatureScaleConfiguration);
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v30 + 32))(v29, v9, v4);
  sub_100017810();
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v29 + v28[5]) = v17;
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v29 + v28[6]) = v18;
  sub_100013748();
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v29 + v28[7]) = v19;
  sub_100013748();
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = (v29 + v28[8]);
  *v21 = v20;
  v21[1] = v22;
  sub_100013748();
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = sub_10002838C();
  v25(v24, v27);
  *(v29 + v28[9]) = v23 & 1;
  sub_100014540();
  sub_1003CE85C();
  sub_100006F14(a1);
  return sub_1003CE950(v29, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance);
}

uint64_t sub_1003CDAC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614C6C6175746361 && a2 == 0xEB000000006C6562;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1003CDB8C(char a1)
{
  if (a1)
  {
    return 0x65636E6169726176;
  }

  else
  {
    return 0x614C6C6175746361;
  }
}

uint64_t sub_1003CDBCC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0) + 20);

  return sub_1003CD3FC(a1 + v5, a2 + v5);
}

uint64_t sub_1003CDC48(void *a1)
{
  v3 = sub_10022C350(&qword_100CB4998, &qword_100A47D28);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1003CE7B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    sub_100017810();
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    sub_1000040AC();
    sub_1003CE8B4(v9, v10, aQ_46);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1003CDDDC(void *a1)
{
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v19 = sub_10022C350(&qword_100CB4980, &qword_100A47D20);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_1000114FC();
  type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v6);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = (v9 - v8);
  sub_1000161C0(a1, a1[3]);
  sub_1003CE7B0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  sub_100013748();
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v11;
  sub_100017810();
  sub_1000040AC();
  sub_1003CE8B4(v12, v13, aY_56);
  sub_100013748();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = sub_10002838C();
  v15(v14, v19);
  sub_1003CE804();
  sub_1003CE85C();
  sub_100006F14(a1);
  v16 = sub_1000084C8();
  return sub_1003CE950(v16, v17);
}

uint64_t sub_1003CE088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CD108(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CE0B0(uint64_t a1)
{
  v2 = sub_1003CE8FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CE0EC(uint64_t a1)
{
  v2 = sub_1003CE8FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CE164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1003CDAC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1003CE18C(uint64_t a1)
{
  v2 = sub_1003CE7B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1003CE1C8(uint64_t a1)
{
  v2 = sub_1003CE7B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1003CE238()
{
  v2 = sub_100003B38();
  v3 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(v2);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  sub_10022C350(&qword_100CACF38, &unk_100A47BB0);
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = (&v37 - v9);
  v11 = sub_10022C350(&qword_100CB4978, &qword_100A7E7B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v37 - v13;
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v16 = v1[3];
  v17 = v0[3];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_25;
    }

    v18 = v1[2] == v0[2] && v16 == v17;
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v17)
  {
LABEL_25:
    v27 = 0;
    return v27 & 1;
  }

  v19 = type metadata accessor for FeelsLikeComponentViewModel(0);
  v20 = v19[6];
  v21 = *(v11 + 48);
  sub_1001163D0(v1 + v20, v14);
  sub_1001163D0(v0 + v20, &v14[v21]);
  sub_10000394C(v14);
  if (v15)
  {
    sub_10000394C(&v14[v21]);
    if (v15)
    {
      sub_1000180EC(v14, &qword_100CACF38, &unk_100A47BB0);
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  sub_1001163D0(v14, v10);
  sub_10000394C(&v14[v21]);
  if (v22)
  {
    v23 = sub_1000084C8();
    sub_1003CE950(v23, v24);
LABEL_23:
    v25 = &qword_100CB4978;
    v26 = &qword_100A7E7B0;
LABEL_24:
    sub_1000180EC(v14, v25, v26);
    goto LABEL_25;
  }

  sub_1003CE804();
  v29 = *v10 == *v7 && v10[1] == v7[1];
  if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    sub_1003CE950(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    sub_1003CE950(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
    v25 = &qword_100CACF38;
    v26 = &unk_100A47BB0;
    goto LABEL_24;
  }

  v30 = sub_1003CD3FC(v10 + *(v3 + 20), v7 + *(v3 + 20));
  sub_1003CE950(v7, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
  sub_1003CE950(v10, type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference);
  sub_1000180EC(v14, &qword_100CACF38, &unk_100A47BB0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_33:
  sub_100005824(v19[7]);
  v33 = v15 && v31 == v32;
  if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100005824(v19[8]);
  if (v15 && v34 == v35)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v27 & 1;
}

uint64_t sub_1003CE55C()
{
  v0 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  sub_100007074(v0, qword_100D8FCC8);
  v1 = sub_10000703C(v0, qword_100D8FCC8);
  if (qword_100CA2008 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_10000703C(v2, qword_100D8FCE0);
  sub_100014540();
  result = sub_1003CE85C();
  *v1 = 0x203A6C6175746341;
  v1[1] = 0xAC000000B0C23536;
  return result;
}

uint64_t sub_1003CE618()
{
  v0 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for TemperatureScaleConfiguration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  sub_100007074(v5, qword_100D8FCE0);
  v6 = sub_10000703C(v5, qword_100D8FCE0);
  static TemperatureScaleConfiguration.Gradient.default.getter();
  TemperatureScaleConfiguration.init(gradient:)();
  result = (*(v2 + 32))(v6, v4, v1);
  *(v6 + v5[5]) = 0x4050400000000000;
  *(v6 + v5[6]) = 0x404B800000000000;
  *(v6 + v5[7]) = 0x402E000000000000;
  v8 = (v6 + v5[8]);
  *v8 = 2965516337;
  v8[1] = 0xA400000000000000;
  *(v6 + v5[9]) = 1;
  return result;
}

unint64_t sub_1003CE7B0()
{
  result = qword_100CB4988;
  if (!qword_100CB4988)
  {
    result = swift_getWitnessTable(byte_100A47F0C, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB4988);
  }

  return result;
}

uint64_t sub_1003CE804()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1003CE85C()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1003CE8B4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003CE8FC()
{
  result = qword_100CB49B0;
  if (!qword_100CB49B0)
  {
    result = swift_getWitnessTable(a5_20, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49B0);
  }

  return result;
}

uint64_t sub_1003CE950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003CEB64()
{
  result = qword_100CB49D0;
  if (!qword_100CB49D0)
  {
    result = swift_getWitnessTable(a7_0, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49D0);
  }

  return result;
}

unint64_t sub_1003CEBBC()
{
  result = qword_100CB49D8;
  if (!qword_100CB49D8)
  {
    result = swift_getWitnessTable(aM6, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49D8);
  }

  return result;
}

unint64_t sub_1003CEC14()
{
  result = qword_100CB49E0;
  if (!qword_100CB49E0)
  {
    result = swift_getWitnessTable(byte_100A47E04, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49E0);
  }

  return result;
}

unint64_t sub_1003CEC6C()
{
  result = qword_100CB49E8;
  if (!qword_100CB49E8)
  {
    result = swift_getWitnessTable(byte_100A47E2C, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.Variance.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49E8);
  }

  return result;
}

unint64_t sub_1003CECC4()
{
  result = qword_100CB49F0;
  if (!qword_100CB49F0)
  {
    result = swift_getWitnessTable(byte_100A47D4C, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49F0);
  }

  return result;
}

unint64_t sub_1003CED1C()
{
  result = qword_100CB49F8;
  if (!qword_100CB49F8)
  {
    result = swift_getWitnessTable(asc_100A47D74, &type metadata for FeelsLikeComponentViewModel.SignificantDifference.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CB49F8);
  }

  return result;
}

uint64_t sub_1003CED8C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CB4A98, &qword_100A47FC8);
  return sub_1003CEDDC(v2, a2 + *(v4 + 44));
}

uint64_t sub_1003CEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v119 = sub_10022C350(&qword_100CB4AA0, &qword_100A47FD0);
  __chkstk_darwin(v119);
  v107 = (&v104 - v3);
  v111 = sub_10022C350(&qword_100CB4AA8, &qword_100A47FD8);
  __chkstk_darwin(v111);
  v108 = (&v104 - v4);
  v116 = sub_10022C350(&qword_100CB4AB0, &qword_100A47FE0);
  __chkstk_darwin(v116);
  v118 = &v104 - v5;
  v109 = sub_10022C350(&qword_100CB4AB8, &qword_100A47FE8);
  __chkstk_darwin(v109);
  v110 = &v104 - v6;
  v117 = sub_10022C350(&qword_100CB4AC0, &qword_100A47FF0);
  __chkstk_darwin(v117);
  v112 = &v104 - v7;
  v8 = sub_10022C350(&qword_100CB4AC8, &qword_100A47FF8);
  __chkstk_darwin(v8 - 8);
  v120 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = &v104 - v11;
  v12 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v12 - 8);
  v126 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = &v104 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v123 = *(v16 - 8);
  v124 = v16;
  __chkstk_darwin(v16);
  KeyPath = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v125 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v21 - 8);
  v22 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v22 - 8);
  v24 = &v104 - v23;
  v25 = sub_10022C350(&qword_100CB4AD0, &qword_100A48010);
  __chkstk_darwin(v25);
  v27 = &v104 - v26;
  v28 = sub_10022C350(&qword_100CB4AD8, &qword_100A48018);
  __chkstk_darwin(v28 - 8);
  v129 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v104 - v31;
  v33 = 1;
  if (sub_1003CFE0C())
  {
    *v27 = static VerticalAlignment.center.getter();
    *(v27 + 1) = 0;
    v27[16] = 1;
    v34 = sub_10022C350(&qword_100CB4B20, &qword_100A48070);
    sub_1003D0834(a1, &v27[*(v34 + 44)]);
    sub_1001E27DC();
    v33 = 0;
  }

  v128 = v32;
  sub_10001B350(v32, v33, 1, v25);
  v35 = a1 + *(type metadata accessor for LocationFooterView(0) + 24);
  v36 = *(v35 + 16);
  v37 = 0;
  if (!v36)
  {
    goto LABEL_13;
  }

  v38 = *(v35 + 8);
  type metadata accessor for LocationFooterViewModel(0);
  sub_100095588();
  v39 = type metadata accessor for LocationOfInterest();
  if (sub_100024D10(v24, 1, v39) != 1)
  {
    sub_100018144(v24, &qword_100CA3588, &unk_100A4F350);
LABEL_13:
    v65 = 0;
    v123 = 0;
    v124 = 0;
    v113 = 0;
    v114 = 0;
    KeyPath = 0;
    v126 = 0;
    v127 = 0;
    v125 = 0;
    v75 = 0;
    v77 = 0;
    v79 = 0;
    goto LABEL_14;
  }

  v104 = v35;
  sub_100018144(v24, &qword_100CA3588, &unk_100A4F350);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v40._countAndFlagsBits = 0x2072656874616557;
  v40._object = 0xEC00000020726F66;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v40);
  v41._countAndFlagsBits = v38;
  v41._object = v36;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v41);
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
  v43 = LocalizedStringKey.init(stringInterpolation:)();
  v113 = Text.init(_:tableName:bundle:comment:)(v43, v45, v44 & 1, v46, 0, 0, 0, "The location for which we're showing the weather", 48, 2);
  v114 = v47;
  v106 = v48;
  v105 = v49;
  v50 = v125;
  v51 = *(v125 + 104);
  v51(v20, enum case for Font.TextStyle.subheadline(_:), v18);
  static Font.Weight.semibold.getter();
  v52 = static Font.system(_:weight:)();
  v53 = *(v50 + 8);
  v53(v20, v18);
  v51(v20, enum case for Font.TextStyle.footnote(_:), v18);
  static Font.Weight.bold.getter();
  v54 = static Font.system(_:weight:)();
  v53(v20, v18);
  v55 = *a1;
  v115 = a1;
  if (*(a1 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v56 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v57 = KeyPath;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v55, 0);
    (*(v123 + 8))(v57, v124);
    LOBYTE(v55) = v138;
  }

  v58 = enum case for Font.Leading.tight(_:);
  v59 = type metadata accessor for Font.Leading();
  v60 = v127;
  (*(*(v59 - 8) + 104))(v127, v58, v59);
  sub_10001B350(v60, 0, 1, v59);
  v61 = v126;
  sub_100095588();

  sub_1001C987C(v52, v54, v55 & 1, v61);
  v62 = v105;
  v63 = v113;
  v64 = v106;
  v65 = Text.font(_:)();
  v123 = v67;
  v124 = v66;
  LODWORD(v126) = v68;

  sub_10010CD64(v63, v64, v62 & 1);

  sub_100018144(v60, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_100A2D320;
  v70 = static Edge.Set.leading.getter();
  *(v69 + 32) = v70;
  v71 = static Edge.Set.trailing.getter();
  *(v69 + 33) = v71;
  v72 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v70)
  {
    v72 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v71)
  {
    v72 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v37 = v73;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v136 = v126 & 1;
  v132 = 0;
  v137[0] = v65;
  v137[1] = v124;
  LOBYTE(v137[2]) = v126 & 1;
  *(&v137[2] + 1) = *v135;
  HIDWORD(v137[2]) = *&v135[3];
  v137[3] = v123;
  v137[4] = KeyPath;
  LOBYTE(v137[5]) = 1;
  HIDWORD(v137[5]) = *&v134[3];
  *(&v137[5] + 1) = *v134;
  LOBYTE(v137[6]) = v72;
  HIDWORD(v137[6]) = *&v133[3];
  *(&v137[6] + 1) = *v133;
  v137[7] = v73;
  v137[8] = v74;
  v137[9] = v76;
  v137[10] = v78;
  LOBYTE(v137[11]) = 0;
  v114 = v137[2];
  v113 = v137[5];
  LOBYTE(v140) = v126 & 1;
  HIDWORD(v140) = *&v135[3];
  *(&v140 + 1) = *v135;
  v126 = v137[6];
  v127 = 0;
  v131 = 0;
  v138 = v65;
  v139 = v124;
  v141 = v123;
  v142 = KeyPath;
  LOBYTE(v143) = 1;
  HIDWORD(v143) = *&v134[3];
  *(&v143 + 1) = *v134;
  LOBYTE(v144) = v72;
  HIDWORD(v144) = *&v133[3];
  *(&v144 + 1) = *v133;
  v145 = v73;
  v146 = v74;
  v147 = v76;
  v148 = v78;
  LOBYTE(v149) = 0;
  sub_100095588();
  sub_100018144(&v138, &qword_100CB4B18, &qword_100A495F0);
  v125 = 0x4010000000000000;
  a1 = v115;
  v35 = v104;
LABEL_14:
  v80 = *(v35 + *(type metadata accessor for LocationFooterViewModel(0) + 52));
  v115 = v65;
  if (v80)
  {
    if (v80 == 1)
    {
      v81 = static VerticalAlignment.center.getter();
      v82 = v108;
      *v108 = v81;
      v82[1] = 0;
      *(v82 + 16) = 1;
      v83 = sub_10022C350(&qword_100CB4B10, &qword_100A48038);
      sub_1003CFF0C(a1, v82 + *(v83 + 44));
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8, &qword_100A47FD8, &protocol conformance descriptor for HStack<A>);
      v84 = v112;
      _ConditionalContent<>.init(storage:)();
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_1003D2240();
      sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0, &qword_100A47FD0, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      sub_100018144(v84, &qword_100CB4AC0, &qword_100A47FF0);
      v85 = v82;
      v86 = &qword_100CB4AA8;
      v87 = &qword_100A47FD8;
    }

    else
    {
      v89 = static VerticalAlignment.center.getter();
      v90 = v107;
      *v107 = v89;
      v90[1] = 0;
      *(v90 + 16) = 1;
      v91 = sub_10022C350(&qword_100CB4AE0, &qword_100A48020);
      sub_1003D0398(a1, v90 + *(v91 + 44));
      sub_100095588();
      swift_storeEnumTagMultiPayload();
      sub_1003D2240();
      sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0, &qword_100A47FD0, &protocol conformance descriptor for HStack<A>);
      _ConditionalContent<>.init(storage:)();
      v85 = v90;
      v86 = &qword_100CB4AA0;
      v87 = &qword_100A47FD0;
    }
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8, &qword_100A47FD8, &protocol conformance descriptor for HStack<A>);
    v88 = v112;
    _ConditionalContent<>.init(storage:)();
    sub_100095588();
    swift_storeEnumTagMultiPayload();
    sub_1003D2240();
    sub_100006F64(&qword_100CB4AF8, &qword_100CB4AA0, &qword_100A47FD0, &protocol conformance descriptor for HStack<A>);
    _ConditionalContent<>.init(storage:)();
    v85 = v88;
    v86 = &qword_100CB4AC0;
    v87 = &qword_100A47FF0;
  }

  sub_100018144(v85, v86, v87);
  v92 = v120;
  v93 = v121;
  sub_1001E2718();
  sub_100095588();
  sub_1001E2718();
  v94 = sub_10022C350(&qword_100CB4B00, &qword_100A48028);
  v95 = v93 + *(v94 + 48);
  *v95 = 0x4030000000000000;
  *(v95 + 8) = 0;
  v96 = *(v94 + 64);
  v97 = v114;
  v98 = v115;
  v99 = v123;
  v100 = v124;
  v137[0] = v115;
  v137[1] = v124;
  v137[2] = v114;
  v137[3] = v123;
  v101 = KeyPath;
  v102 = v113;
  v137[4] = KeyPath;
  v137[5] = v113;
  v137[6] = v126;
  v137[7] = v37;
  v137[8] = v75;
  v137[9] = v77;
  v137[10] = v79;
  v137[11] = v127;
  v137[12] = v125;
  LOBYTE(v137[13]) = 0;
  memcpy((v93 + v96), v137, 0x69uLL);
  sub_100095588();
  sub_100095588();
  sub_100018144(v130, &qword_100CB4AC8, &qword_100A47FF8);
  sub_1001E2778(v128);
  sub_100018144(v92, &qword_100CB4AC8, &qword_100A47FF8);
  v138 = v98;
  v139 = v100;
  v140 = v97;
  v141 = v99;
  v142 = v101;
  v143 = v102;
  v144 = v126;
  v145 = v37;
  v146 = v75;
  v147 = v77;
  v148 = v79;
  v149 = v127;
  v150 = v125;
  v151 = 0;
  sub_100018144(&v138, &qword_100CB4B08, &qword_100A48030);
  return sub_1001E2778(v129);
}

BOOL sub_1003CFE0C()
{
  v1 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = v0 + *(type metadata accessor for LocationFooterView(0) + 24);
  if ((*v4 & 1) != 0 || *(v4 + 24))
  {
    return 1;
  }

  type metadata accessor for LocationFooterViewModel(0);
  sub_100095588();
  v7 = type metadata accessor for LocationOfInterest();
  v5 = sub_100024D10(v3, 1, v7) != 1;
  sub_100018144(v3, &qword_100CA3588, &unk_100A4F350);
  return v5;
}

uint64_t sub_1003CFF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_10022C350(&qword_100CB4BF0, &qword_100A481C0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v48 - v5;
  v49 = sub_10022C350(&qword_100CB4BF8, &qword_100A481C8);
  __chkstk_darwin(v49);
  v8 = &v48 - v7;
  v9 = sub_10022C350(&qword_100CB4C00, &qword_100A481D0);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for LocationFooterView(0);
  type metadata accessor for LocationFooterViewModel(0);
  sub_1003D3AB8();
  v19 = *(*(a1 + *(v18 + 28) + 8) + 8);
  v20 = type metadata accessor for LearnMoreAttributorView(0);
  *&v6[v20[5] + 8] = v19;
  swift_unknownObjectWeakInit();
  v21 = &v6[v20[6]];
  v22 = LocalizedStringKey.init(stringLiteral:)();
  *v21 = Text.init(_:tableName:bundle:comment:)(v22, v24, v23 & 1, v25, 0, 0, 0, "Accessibility hint for a link hint where the destination has already been stated", 80, 2);
  *(v21 + 1) = v26;
  v21[16] = v27 & 1;
  *(v21 + 3) = v28;
  v29 = &v6[v20[7]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v6[*(v4 + 44)] = 0;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v20) = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v31 = static Edge.Set.trailing.getter();
  *(inited + 33) = v31;
  v32 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100051BBC();
  v41 = &v8[*(v49 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = *(v9 + 36);
  v43 = enum case for BlendMode.plusLighter(_:);
  v44 = type metadata accessor for BlendMode();
  (*(*(v44 - 8) + 104))(&v14[v42], v43, v44);
  sub_100051BBC();
  sub_100051BBC();
  sub_100095588();
  v45 = v50;
  sub_100095588();
  v46 = v45 + *(sub_10022C350(&qword_100CB4C08, &qword_100A481D8) + 48);
  *v46 = 0x4010000000000000;
  *(v46 + 8) = 0;
  sub_100018144(v17, &qword_100CB4C00, &qword_100A481D0);
  return sub_100018144(v11, &qword_100CB4C00, &qword_100A481D0);
}

uint64_t sub_1003D0398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB4BF0, &qword_100A481C0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v50 = sub_10022C350(&qword_100CB4BF8, &qword_100A481C8);
  __chkstk_darwin(v50);
  v9 = &v48 - v8;
  v49 = sub_10022C350(&qword_100CB4C00, &qword_100A481D0);
  __chkstk_darwin(v49);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  v18 = type metadata accessor for LocationFooterView(0);
  type metadata accessor for LocationFooterViewModel(0);
  sub_1003D3AB8();
  v19 = *(*(a1 + *(v18 + 28) + 8) + 8);
  v20 = type metadata accessor for LearnMoreAttributorView(0);
  *&v7[v20[5] + 8] = v19;
  swift_unknownObjectWeakInit();
  v21 = &v7[v20[6]];
  v22 = LocalizedStringKey.init(stringLiteral:)();
  *v21 = Text.init(_:tableName:bundle:comment:)(v22, v24, v23 & 1, v25, 0, 0, 0, "Accessibility hint for a link hint where the destination has already been stated", 80, 2);
  *(v21 + 1) = v26;
  v21[16] = v27 & 1;
  *(v21 + 3) = v28;
  v29 = &v7[v20[7]];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v7[*(v5 + 44)] = 0;
  sub_10022C350(&qword_100CA4060, &qword_100A2E120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v20) = static Edge.Set.leading.getter();
  *(inited + 32) = v20;
  v31 = static Edge.Set.trailing.getter();
  *(inited + 33) = v31;
  v32 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v20)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v31)
  {
    v32 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_100051BBC();
  v41 = &v9[*(v50 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = *(v49 + 36);
  v43 = enum case for BlendMode.plusLighter(_:);
  v44 = type metadata accessor for BlendMode();
  (*(*(v44 - 8) + 104))(&v14[v42], v43, v44);
  sub_100051BBC();
  sub_100051BBC();
  sub_100095588();
  *a2 = 0;
  *(a2 + 8) = 1;
  v45 = sub_10022C350(&qword_100CB4C10, &unk_100A481E0);
  sub_100095588();
  v46 = a2 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_100018144(v17, &qword_100CB4C00, &qword_100A481D0);
  return sub_100018144(v11, &qword_100CB4C00, &qword_100A481D0);
}

uint64_t sub_1003D0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CB4B28, &qword_100A48078);
  __chkstk_darwin(v4);
  v6 = &KeyPath - v5;
  v7 = sub_10022C350(&qword_100CB4B30, &qword_100A48080);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &KeyPath - v12;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0x402A000000000000;
  v6[16] = 0;
  v14 = sub_10022C350(&qword_100CB4B38, &qword_100A48088);
  sub_1003D0AD4(a1, &v6[*(v14 + 44)]);
  KeyPath = swift_getKeyPath();
  v21 = 0;
  sub_100006F64(&qword_100CB4B40, &qword_100CB4B28, &qword_100A48078, &protocol conformance descriptor for VStack<A>);
  sub_1003D3928();
  View.labelStyle<A>(_:)();

  sub_100018144(v6, &qword_100CB4B28, &qword_100A48078);
  v15 = *(v8 + 16);
  v15(v10, v13, v7);
  *a2 = 0x4040000000000000;
  *(a2 + 8) = 0;
  v16 = sub_10022C350(&qword_100CB4B50, &qword_100A480B8);
  v15((a2 + *(v16 + 48)), v10, v7);
  v17 = a2 + *(v16 + 64);
  *v17 = 0x4040000000000000;
  *(v17 + 8) = 0;
  v18 = *(v8 + 8);
  v18(v13, v7);
  return (v18)(v10, v7);
}

uint64_t sub_1003D0AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = sub_10022C350(&qword_100CB4B58, &qword_100A480C0);
  __chkstk_darwin(v132);
  v123 = &v106[-v3];
  v121 = sub_10022C350(&qword_100CB4B60, &qword_100A480C8);
  __chkstk_darwin(v121);
  v122 = &v106[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v120 = &v106[-v6];
  v7 = sub_10022C350(&qword_100CB4B68, &qword_100A480D0);
  __chkstk_darwin(v7 - 8);
  v133 = &v106[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v139 = &v106[-v10];
  v128 = sub_10022C350(&qword_100CB4B70, &qword_100A480D8);
  __chkstk_darwin(v128);
  v119 = &v106[-v11];
  v12 = type metadata accessor for LocationFooterView(0);
  v114 = *(v12 - 8);
  __chkstk_darwin(v12);
  v115 = v13;
  v110 = &v106[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = sub_10022C350(&qword_100CB4B78, &qword_100A480E0);
  __chkstk_darwin(v116);
  v118 = &v106[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v117 = &v106[-v16];
  v17 = sub_10022C350(&qword_100CB4B80, &qword_100A480E8);
  __chkstk_darwin(v17 - 8);
  v131 = &v106[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v140 = &v106[-v20];
  v126 = sub_10022C350(&qword_100CB4B88, &unk_100A480F0);
  __chkstk_darwin(v126);
  v113 = &v106[-v21];
  v22 = sub_10022C350(&qword_100CB4B90, &qword_100A7AFD0);
  __chkstk_darwin(v22 - 8);
  v112 = &v106[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v109 = &v106[-v25];
  v108 = type metadata accessor for HomeAndWorkRefinementRow(0);
  __chkstk_darwin(v108);
  v111 = &v106[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v29 = &v106[-v28];
  v30 = sub_10022C350(&qword_100CB4B98, &qword_100A48100);
  __chkstk_darwin(v30 - 8);
  v32 = &v106[-v31];
  *&v124 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  __chkstk_darwin(v124);
  v125 = &v106[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_10022C350(&qword_100CB4BA0, &qword_100A48108);
  __chkstk_darwin(v34 - 8);
  v130 = &v106[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v138 = &v106[-v37];
  v141 = type metadata accessor for Divider();
  v38 = *(v141 - 8);
  __chkstk_darwin(v141);
  v135 = &v106[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v40);
  v42 = &v106[-v41];
  v43 = sub_10022C350(&qword_100CB4BA8, &qword_100A48110);
  __chkstk_darwin(v43);
  v45 = &v106[-v44];
  v46 = sub_10022C350(&qword_100CB4BB0, &qword_100A48118);
  __chkstk_darwin(v46 - 8);
  v129 = &v106[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v48);
  v50 = &v106[-v49];
  v51 = *(v12 + 24);
  v127 = a1;
  v52 = a1 + v51;
  v53 = *(type metadata accessor for LocationFooterViewModel(0) + 48);
  v137 = v52;
  v107 = *(v52 + v53);
  v136 = v38;
  if (v107 == 1)
  {
    *v45 = 0;
    v45[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1003D3DF4(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    Divider.init()();
    v54 = v12;
    v55 = v141;
    (*(v38 + 16))(v45, v42, v141);
    swift_storeEnumTagMultiPayload();
    sub_1003D3DF4(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    _ConditionalContent<>.init(storage:)();
    v56 = v55;
    v12 = v54;
    (*(v38 + 8))(v42, v56);
  }

  v57 = v137;
  sub_100095588();
  v58 = sub_100024D10(v32, 1, v124);
  v142 = v50;
  if (v58 == 1)
  {
    sub_100018144(v32, &qword_100CB4B98, &qword_100A48100);
    v59 = 1;
    v60 = v138;
  }

  else
  {
    sub_1003D3A60();
    v61 = v108;
    v124 = *(v127 + *(v12 + 28));
    sub_1003D3AB8();
    *&v29[*(v61 + 24)] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    *v29 = swift_getKeyPath();
    v29[8] = 0;
    *(v29 + 2) = swift_getKeyPath();
    v29[24] = 0;
    *&v29[*(v61 + 28)] = v124;
    if (v107)
    {
      v62 = v109;
      sub_10001B350(v109, 1, 1, v141);
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      Divider.init()();
      v62 = v109;
      v63 = v141;
      (*(v136 + 32))(v109, v42, v141);
      sub_10001B350(v62, 0, 1, v63);
    }

    v64 = v111;
    sub_1003D3AB8();
    v65 = v112;
    sub_100095588();
    sub_1003D3AB8();
    sub_10022C350(&qword_100CB4BE0, &qword_100A481B0);
    sub_100095588();
    sub_100018144(v62, &qword_100CB4B90, &qword_100A7AFD0);
    sub_1003D3B10(v29, type metadata accessor for HomeAndWorkRefinementRow);
    sub_1003D3B10(v125, type metadata accessor for HomeAndWorkRefinementRowViewModel);
    sub_100018144(v65, &qword_100CB4B90, &qword_100A7AFD0);
    sub_1003D3B10(v64, type metadata accessor for HomeAndWorkRefinementRow);
    v60 = v138;
    sub_100051BBC();
    v59 = 0;
  }

  v66 = 1;
  sub_10001B350(v60, v59, 1, v126);
  if (*v57 == 1)
  {
    v67 = v127;
    sub_1003D3AB8();
    swift_allocObject();
    v68 = sub_1003D3A60();
    __chkstk_darwin(v68);
    *&v106[-16] = v67;
    sub_10022C350(&qword_100CB4BC8, &qword_100A481A0);
    sub_1003D39B0();
    v69 = v117;
    Button.init(action:label:)();
    v70 = v69 + *(v116 + 36);
    *v70 = swift_getKeyPath();
    *(v70 + 8) = 0;
    v71 = *(type metadata accessor for LocationFooterButtonStyleModifier(0) + 20);
    *(v70 + v71) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    Divider.init()();
    v72 = v118;
    sub_100095588();
    v73 = v136;
    v74 = *(v136 + 16);
    v75 = v42;
    v76 = v135;
    v77 = v141;
    v74(v135, v75, v141);
    v78 = v119;
    sub_100095588();
    v79 = sub_10022C350(&qword_100CB4BD8, &qword_100A481A8);
    v74(&v78[*(v79 + 48)], v76, v77);
    v80 = *(v73 + 8);
    v80(v75, v77);
    sub_100018144(v69, &qword_100CB4B78, &qword_100A480E0);
    v81 = v76;
    v42 = v75;
    v82 = v77;
    v57 = v137;
    v80(v81, v82);
    sub_100018144(v72, &qword_100CB4B78, &qword_100A480E0);
    sub_100051BBC();
    v66 = 0;
  }

  v83 = 1;
  sub_10001B350(v140, v66, 1, v128);
  v84 = *(v57 + 24);
  if (v84)
  {
    v85 = *(v57 + 32);
    sub_10007A47C(v84);
    v137 = v85;

    sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
    sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
    v86 = v120;
    Button.init(action:label:)();
    v87 = v86 + *(v121 + 36);
    *v87 = swift_getKeyPath();
    *(v87 + 8) = 0;
    v88 = *(type metadata accessor for LocationFooterButtonStyleModifier(0) + 20);
    *(v87 + v88) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0, &qword_100A32330);
    swift_storeEnumTagMultiPayload();
    Divider.init()();
    v89 = v42;
    v90 = v122;
    sub_100095588();
    v91 = v135;
    v92 = v136;
    v93 = v141;
    v94 = *(v136 + 16);
    v94(v135, v89, v141);
    v95 = v123;
    sub_100095588();
    v96 = sub_10022C350(&qword_100CB4BC0, &qword_100A48198);
    v94(&v95[*(v96 + 48)], v91, v93);
    sub_10002B028(v84);
    v97 = *(v92 + 8);
    v97(v89, v93);
    sub_100018144(v86, &qword_100CB4B60, &qword_100A480C8);
    v97(v91, v93);
    sub_100018144(v90, &qword_100CB4B60, &qword_100A480C8);
    v98 = v139;
    sub_100051BBC();
    v83 = 0;
  }

  else
  {
    v98 = v139;
  }

  sub_10001B350(v98, v83, 1, v132);
  v99 = v129;
  sub_100095588();
  v100 = v138;
  v101 = v130;
  sub_100095588();
  v102 = v140;
  v103 = v131;
  sub_100095588();
  v104 = v133;
  sub_100095588();
  sub_100095588();
  sub_10022C350(&qword_100CB4BB8, &unk_100A48120);
  sub_100095588();
  sub_100095588();
  sub_100095588();
  sub_100018144(v139, &qword_100CB4B68, &qword_100A480D0);
  sub_100018144(v102, &qword_100CB4B80, &qword_100A480E8);
  sub_100018144(v100, &qword_100CB4BA0, &qword_100A48108);
  sub_100018144(v142, &qword_100CB4BB0, &qword_100A48118);
  sub_100018144(v104, &qword_100CB4B68, &qword_100A480D0);
  sub_100018144(v103, &qword_100CB4B80, &qword_100A480E8);
  sub_100018144(v101, &qword_100CB4BA0, &qword_100A48108);
  return sub_100018144(v99, &qword_100CB4BB0, &qword_100A48118);
}

uint64_t sub_1003D1D98(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for LocationFooterView(0) + 24);
  v2 = type metadata accessor for LocationFooterViewModel(0);
  return sub_10078D534(*(v1 + *(v2 + 40)));
}

uint64_t sub_1003D1DEC(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB4BE8, &qword_100A481B8);
  __chkstk_darwin(v2);
  v4 = &v19 - v3;
  v5 = sub_10022C350(&qword_100CA2CF0, &unk_100A6F8C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = a1 + *(type metadata accessor for LocationFooterView(0) + 24);
  if (*(v9 + 1) == 1 && (*(v9 + 2) & 1) != 0)
  {
    v10 = [objc_opt_self() mainBundle];
    v20._object = 0x8000000100AC5870;
    v11._object = 0x8000000100AC0350;
    v20._countAndFlagsBits = 0xD00000000000003DLL;
    v11._countAndFlagsBits = 0xD000000000000014;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v20);

    v19 = v13;
    sub_10002D5A4();
    Label<>.init<A>(_:systemImage:)();
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
    v21._object = 0x8000000100AC5820;
    v15._countAndFlagsBits = 0xD000000000000015;
    v15._object = 0x8000000100AC5800;
    v21._countAndFlagsBits = 0xD000000000000040;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v21);

    v19 = v17;
    sub_10002D5A4();
    Label<>.init<A>(_:systemImage:)();
  }

  (*(v6 + 16))(v4, v8, v5);
  swift_storeEnumTagMultiPayload();
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
  _ConditionalContent<>.init(storage:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003D214C()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0x8000000100AC58B0;
  v1._countAndFlagsBits = 0x206E69206E65704FLL;
  v1._object = 0xEC0000007370614DLL;
  v4._countAndFlagsBits = 0xD00000000000003DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  sub_10002D5A4();
  return Label<>.init<A>(_:systemImage:)();
}

unint64_t sub_1003D2240()
{
  result = qword_100CB4AE8;
  if (!qword_100CB4AE8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB4AC0, &qword_100A47FF0);
    v4[0] = &protocol witness table for EmptyView;
    v4[1] = sub_100006F64(&qword_100CB4AF0, &qword_100CB4AA8, &qword_100A47FD8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB4AE8);
  }

  return result;
}

uint64_t sub_1003D22F8()
{
  v1 = v0 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32);
  v2 = *(v1 + *(type metadata accessor for HomeAndWorkRefinementRowViewModel(0) + 28));
  sub_1003D2444();
  sub_100028398();
  if ((v2 & 1) == 0)
  {
    sub_1000040C4();
    v3 = static Text.+ infix(_:_:)();
    v16 = v4;
    v17 = v3;
    v15 = v5;
    v6 = sub_1000040C4();
    sub_10010CD64(v6, v7, v8);

    Image.init(systemName:)();
    v9 = Text.init(_:)();
    v11 = v10;
    v13 = v12;
    static Text.+ infix(_:_:)();
    sub_100028398();
    sub_10010CD64(v9, v11, v13 & 1);

    sub_10010CD64(v17, v16, v15 & 1);
  }

  return sub_1000040C4();
}

uint64_t sub_1003D2444()
{
  v0 = type metadata accessor for LocationOfInterestType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocationOfInterest.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for LocationOfInterestType.home(_:))
  {
    v5 = LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)(v5, v6, v10 & 1, v7, 0, 0, 0, "Location footer action title for home refinement action", 55, 2);
  }

  else
  {
    if (v4 != enum case for LocationOfInterestType.work(_:))
    {
      v14 = LocalizedStringKey.init(stringLiteral:)();
      v13 = Text.init(_:tableName:bundle:comment:)(v14, v16, v15 & 1, v17, 0, 0, 0, 0, 0, 256);
      (*(v1 + 8))(v3, v0);
      return v13;
    }

    v9 = LocalizedStringKey.init(stringLiteral:)();
    return Text.init(_:tableName:bundle:comment:)(v9, v11, v10 & 1, v12, 0, 0, 0, "Location footer action title for work refinement action", 55, 2);
  }
}

uint64_t sub_1003D2654@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HomeAndWorkRefinementRow(0);
  __chkstk_darwin(v2 - 8);
  sub_1003D3AB8();
  swift_allocObject();
  sub_1003D3A60();
  sub_10022C350(&qword_100CB4CC8, &qword_100A48268);
  sub_100006F64(&qword_100CB4CD0, &qword_100CB4CC8, &qword_100A48268, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v3 = a1 + *(sub_10022C350(&qword_100CB4CD8, &qword_100A48270) + 36);
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = *(type metadata accessor for LocationFooterButtonStyleModifier(0) + 20);
  *(v3 + v4) = swift_getKeyPath();
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003D285C(uint64_t a1)
{
  v2 = type metadata accessor for LocationFooterAction(0);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(sub_10022C350(&qword_100CA6650, &unk_100A3FAB0) + 48);
  v6 = a1 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32);
  v7 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  v8 = *(v7 + 20);
  v9 = type metadata accessor for Location();
  (*(*(v9 - 8) + 16))(v4, v6 + v8, v9);
  v10 = *(v7 + 24);
  v11 = type metadata accessor for LocationOfInterest();
  (*(*(v11 - 8) + 16))(&v4[v5], v6 + v10, v11);
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  sub_10078D194(v4, v13);
  return sub_1003D3B10(v4, type metadata accessor for LocationFooterAction);
}

void *sub_1003D29D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static VerticalAlignment.center.getter();
  v9 = 0;
  sub_1003D2AB4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v11, __src, sizeof(v11));
  sub_100095588();
  sub_100018144(v11, &qword_100CB4CE0, &qword_100A48278);
  memcpy(&v8[7], __dst, 0xA0uLL);
  v5 = v9;
  *a2 = v4;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v8, 0xA7uLL);
}

uint64_t sub_1003D2AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for HomeAndWorkRefinementRow(0) + 32));
  v5 = *v4;
  if (v5 == 1)
  {
    v6 = static HorizontalAlignment.center.getter();
  }

  else
  {
    v6 = static HorizontalAlignment.leading.getter();
  }

  v7 = v6;
  LOBYTE(v10[0]) = 1;
  sub_1003D2CA4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, __src, 0x69uLL);
  sub_100095588();
  sub_100018144(v17, &qword_100CB4CE8, &qword_100A48280);
  memcpy(&v15[7], __dst, 0x69uLL);
  v8 = 0;
  if (v4[*(type metadata accessor for HomeAndWorkRefinementRowViewModel(0) + 28)] == 1)
  {
    v8 = Image.init(systemName:)();
  }

  v10[0] = v7;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, v15, 0x70uLL);
  memcpy(__src, v10, 0x81uLL);
  sub_100095588();
  memcpy(a2, __src, 0x88uLL);
  *(a2 + 136) = 0;
  *(a2 + 144) = v5 ^ 1;
  *(a2 + 145) = v5;
  *(a2 + 152) = v8;

  v12[0] = v7;
  v12[1] = 0;
  v13 = 1;
  memcpy(v14, v15, sizeof(v14));
  return sub_100018144(v12, &qword_100CB4CF0, &unk_100A48288);
}

uint64_t sub_1003D2CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v85 = type metadata accessor for Location();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v4 - 8);
  v113 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v114 = &v83 - v7;
  v109 = type metadata accessor for EnvironmentValues();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v10 - 8);
  v12 = &v83 - v11;
  v13 = type metadata accessor for Font.TextStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1003D22F8();
  v110 = v17;
  LODWORD(v88) = v18;
  KeyPath = v19;
  v20 = *(v14 + 104);
  v20(v16, enum case for Font.TextStyle.subheadline(_:), v13);
  v97 = type metadata accessor for Font.Design();
  sub_10001B350(v12, 1, 1, v97);
  v87 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020, &qword_100A2E080);
  v21 = *(v14 + 8);
  v21(v16, v13);
  v91 = enum case for Font.TextStyle.footnote(_:);
  v99 = v14 + 104;
  v98 = v20;
  (v20)(v16);
  static Font.Weight.bold.getter();
  v22 = static Font.system(_:weight:)();
  v96 = v13;
  v101 = v14 + 8;
  v95 = v21;
  v21(v16, v13);
  v23 = *a1;
  v100 = a1;
  v92 = *(a1 + 8);
  v106 = v9;
  v102 = v23;
  if (v92 == 1)
  {
    v25 = v23;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v23, 0);
    (*(v108 + 8))(v9, v109);
    v25 = v120;
  }

  v26 = enum case for Font.Leading.tight(_:);
  v27 = type metadata accessor for Font.Leading();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v30 = v114;
  v93 = v26;
  v90 = v29;
  v89 = v28 + 104;
  v29(v114, v26, v27);
  v94 = v27;
  sub_10001B350(v30, 0, 1, v27);
  v31 = v113;
  sub_100095588();
  v32 = v87;

  sub_1001C987C(v32, v22, v25 & 1, v31);
  LOBYTE(v27) = v88;
  v33 = v111;
  v34 = v110;
  v104 = Text.font(_:)();
  v103 = v35;
  LODWORD(v86) = v36;
  v105 = v37;

  sub_10010CD64(v33, v34, v27 & 1);

  sub_100018144(v30, &qword_100CACFF0, &unk_100A48000);
  KeyPath = swift_getKeyPath();
  v38 = *(v100 + 16);
  if (*(v100 + 24) == 1)
  {
    if ((v38 & 1) == 0)
    {
LABEL_6:
      v39 = static Color.primary.getter();
      goto LABEL_9;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v40 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v41 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v38, 0);
    (*(v108 + 8))(v41, v109);
    if (v120 != 1)
    {
      goto LABEL_6;
    }
  }

  v39 = static Color.white.getter();
LABEL_9:
  v111 = v39;
  v88 = swift_getKeyPath();
  LODWORD(v110) = v86 & 1;
  v133 = v86 & 1;
  type metadata accessor for HomeAndWorkRefinementRow(0);
  type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
  v42 = LocationOfInterest.shortAddress.getter();
  if (v43)
  {
    v44 = v42;
    v45 = v43;
  }

  else
  {
    v46 = v83;
    LocationOfInterest.location.getter();
    v44 = Location.inlineName.getter();
    v45 = v47;
    (*(v84 + 8))(v46, v85);
  }

  v120 = v44;
  v121 = v45;
  sub_10002D5A4();
  v87 = Text.init<A>(_:)();
  v86 = v48;
  LODWORD(v85) = v49;
  v100 = v50;
  v51 = v91;
  v52 = v96;
  v53 = v98;
  v98(v16, v91, v96);
  v54 = v97;
  sub_10001B350(v12, 1, 1, v97);
  v84 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020, &qword_100A2E080);
  v55 = v95;
  v95(v16, v52);
  v53(v16, v51, v52);
  sub_10001B350(v12, 1, 1, v54);
  v56 = static Font.system(_:design:weight:)();
  sub_100018144(v12, &qword_100CA4020, &qword_100A2E080);
  v55(v16, v52);
  if (v92)
  {
    v57 = v102;
    v130 = v102 & 1;
  }

  else
  {
    v58 = v102;

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v106;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v58, 0);
    (*(v108 + 8))(v60, v109);
    v57 = v130;
  }

  v61 = v114;
  v62 = v94;
  v90(v114, v93, v94);
  sub_10001B350(v61, 0, 1, v62);
  v63 = v113;
  sub_100095588();
  v64 = v84;

  sub_1001C987C(v64, v56, v57 & 1, v63);
  v65 = v85;
  v66 = v87;
  v67 = v86;
  v68 = Text.font(_:)();
  v109 = v69;
  LOBYTE(v62) = v70;
  v113 = v71;

  sub_10010CD64(v66, v67, v65 & 1);

  sub_100018144(v61, &qword_100CACFF0, &unk_100A48000);
  v72 = swift_getKeyPath();
  v73 = v104;
  v74 = v103;
  *&v116 = v104;
  *(&v116 + 1) = v103;
  LOBYTE(v117) = v110;
  *(&v117 + 1) = *v132;
  DWORD1(v117) = *&v132[3];
  v75 = v105;
  *(&v117 + 1) = v105;
  *&v118 = KeyPath;
  BYTE8(v118) = 0;
  *(&v118 + 9) = *v131;
  HIDWORD(v118) = *&v131[3];
  v76 = v88;
  *&v119 = v88;
  *(&v119 + 1) = v111;
  LOBYTE(v62) = v62 & 1;
  v115 = v62;
  v77 = v116;
  v78 = v117;
  v79 = v119;
  v80 = v107;
  *(v107 + 32) = v118;
  *(v80 + 48) = v79;
  *v80 = v77;
  *(v80 + 16) = v78;
  v81 = v109;
  *(v80 + 64) = v68;
  *(v80 + 72) = v81;
  *(v80 + 80) = v62;
  *(v80 + 88) = v113;
  *(v80 + 96) = v72;
  *(v80 + 104) = 0;
  sub_100095588();
  sub_10010CD54(v68, v81, v62);

  sub_10010CD64(v68, v81, v62);

  v120 = v73;
  v121 = v74;
  v122 = v110;
  *v123 = *v132;
  *&v123[3] = *&v132[3];
  v124 = v75;
  v125 = KeyPath;
  v126 = 0;
  *v127 = *v131;
  *&v127[3] = *&v131[3];
  v128 = v76;
  v129 = v111;
  return sub_100018144(&v120, &qword_100CB4CF8, &unk_100A482C8);
}

unint64_t sub_1003D3928()
{
  result = qword_100CB4B48;
  if (!qword_100CB4B48)
  {
    result = swift_getWitnessTable(byte_100A8B674, &type metadata for LocationFooterViewRowStyle, v0, v1);
    atomic_store(result, &qword_100CB4B48);
  }

  return result;
}

unint64_t sub_1003D39B0()
{
  result = qword_100CB4BD0;
  if (!qword_100CB4BD0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB4BC8, &qword_100A481A0);
    v4[0] = sub_100006F64(&qword_100CAF788, &qword_100CA2CF0, &unk_100A6F8C0, &protocol conformance descriptor for Label<A, B>);
    v4[1] = v4[0];
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB4BD0);
  }

  return result;
}

uint64_t sub_1003D3A60()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1003D3AB8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1003D3B10(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1003D3B8C(uint64_t a1)
{
  sub_1000077F0();
  if (v1 <= 0x3F)
  {
    sub_10013BCD0(319);
    if (v2 <= 0x3F)
    {
      sub_100137A94();
      if (v3 <= 0x3F)
      {
        type metadata accessor for HomeAndWorkRefinementRowViewModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1003D3C88(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1003D3D0C()
{
  result = qword_100CB4D00;
  if (!qword_100CB4D00)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB4CD8, &qword_100A48270);
    v4[0] = sub_100006F64(&qword_100CB4D08, &qword_100CB4D10, &qword_100A482D8, &protocol conformance descriptor for Button<A>);
    v4[1] = sub_1003D3DF4(&qword_100CB4D18, type metadata accessor for LocationFooterButtonStyleModifier, byte_100A8B624);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB4D00);
  }

  return result;
}

uint64_t sub_1003D3DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003D3E3C(uint64_t a1, uint64_t a2, int a3)
{
  v606 = a2;
  v4 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v6);
  v8 = &v513 - v7;
  v554 = type metadata accessor for WeatherCoalescedLocationResult();
  sub_1000037C4();
  v552 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v12 = sub_100003918(v11);
  v541 = type metadata accessor for WeatherMapPresentationState(v12);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v16 = sub_100003918(v15);
  v540 = type metadata accessor for DisplayMetrics(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v40 = sub_100003918(v39);
  active = type metadata accessor for LocationViewerActiveLocationState(v40);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000038E4();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CA65B8, &unk_100A313D0);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_10000E70C();
  sub_100003990(v46);
  v47 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v48 = sub_100003810(v47);
  __chkstk_darwin(v48);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_10000E70C();
  sub_100003990(v52);
  v53 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  v54 = sub_100003810(v53);
  __chkstk_darwin(v54);
  sub_100003918(&v513 - v55);
  v531 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_1000038E4();
  v58 = sub_100003918(v57);
  v558 = type metadata accessor for ViewState.SecondaryViewState(v58);
  sub_1000037E8();
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  v63 = sub_100003918(v62);
  v605 = type metadata accessor for ViewState(v63);
  sub_1000037E8();
  __chkstk_darwin(v64);
  sub_100003C38();
  v67 = v65 - v66;
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_10000E70C();
  v74 = sub_100003918(v73);
  v585 = type metadata accessor for TimeState(v74);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_100003C38();
  v78 = v76 - v77;
  __chkstk_darwin(v79);
  sub_10000E70C();
  v600 = v80;
  v81 = sub_1000038CC();
  v602 = type metadata accessor for NotificationsOptInState(v81);
  sub_1000037E8();
  __chkstk_darwin(v82);
  sub_100003C38();
  v85 = v83 - v84;
  __chkstk_darwin(v86);
  sub_10000E70C();
  v599 = v87;
  v88 = sub_1000038CC();
  v601 = type metadata accessor for NotificationsState(v88);
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_10000E70C();
  v598 = v91;
  v92 = sub_1000038CC();
  v586 = type metadata accessor for LocationsState(v92);
  sub_1000037E8();
  __chkstk_darwin(v93);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_10000E70C();
  v597 = v96;
  v97 = sub_1000038CC();
  v604 = type metadata accessor for AppConfigurationState(v97);
  sub_1000037E8();
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_10000E70C();
  v596 = v100;
  v101 = sub_1000038CC();
  v584 = type metadata accessor for ModalViewState(v101);
  sub_1000037E8();
  __chkstk_darwin(v102);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  v595 = v107;
  v108 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v109 = sub_100003810(v108);
  __chkstk_darwin(v109);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_10000E70C();
  sub_100003990(v113);
  v114 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v115 = sub_100003810(v114);
  __chkstk_darwin(v115);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_10000E70C();
  v594 = v119;
  v120 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v121 = sub_100003810(v120);
  __chkstk_darwin(v121);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_10000E70C();
  v593 = v125;
  v126 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v127 = sub_100003810(v126);
  __chkstk_darwin(v127);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_10000E70C();
  v591 = v131;
  v132 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v133 = sub_100003810(v132);
  __chkstk_darwin(v133);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_10000E70C();
  v590 = v137;
  v138 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v139 = sub_100003810(v138);
  __chkstk_darwin(v139);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_10000E70C();
  sub_100003918(v143);
  v603 = type metadata accessor for Locale();
  sub_1000037C4();
  v583 = v144;
  __chkstk_darwin(v145);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_10000E70C();
  v148 = v147;
  v149 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  v150 = sub_100003810(v149);
  __chkstk_darwin(v150);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  v154 = &v513 - v153;
  __chkstk_darwin(v155);
  v607 = type metadata accessor for EnvironmentState(0);
  sub_1000037E8();
  __chkstk_darwin(v156);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  v592 = v159;
  __chkstk_darwin(v160);
  v162 = &v513 - v161;
  v163 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v164 = sub_100003810(v163);
  __chkstk_darwin(v164);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  v169 = &v513 - v168;
  v170 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v171 = sub_100003810(v170);
  __chkstk_darwin(v171);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_10000E70C();
  sub_100003990(v175);
  v587 = a3;
  if ((a3 - 1) >= 2u)
  {
    v515 = v8;
    v176 = LocationAuthorizationState.rawValue.getter(v587);
    v178 = v177;
    v179 = v176 == 0x7265746544746F6ELL && v177 == 0xED000064656E696DLL;
    if (v179)
    {
    }

    else
    {
      v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000794B0();
      if ((v180 & 1) == 0)
      {
        v181 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
        sub_10001EB68();
        v182 = v545;
        sub_100095048();
        v183 = v605;
        sub_100013754();
        v184 = v544;
        sub_100095048();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v599 = v85;
        v600 = v78;
        v597 = v181;
        v514 = v67;
        if (EnumCaseMultiPayload == 1)
        {
          sub_100005B1C();
          sub_10009EDBC(v182, v186);
          sub_10009EDBC(v184, type metadata accessor for ViewState.SecondaryViewState);
          v187 = v557;
          v188 = v606;
LABEL_59:
          sub_10001EB68();
          sub_100095048();
          v301 = v604;
          v302 = v583;
          goto LABEL_60;
        }

        v294 = *v184;
        v178 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
        v187 = v557;
        if (*(v182 + v183[9] + 8) == 1)
        {
          v295 = [objc_opt_self() currentDevice];
          [v295 userInterfaceIdiom];

          LOBYTE(v295) = *(v182 + v183[7]);
          sub_100005B1C();
          sub_10009EDBC(v182, v296);
          v188 = v606;
          if ((v295 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {
          sub_100005B1C();
          sub_10009EDBC(v182, v297);
          v188 = v606;
        }

        if (sub_1003D6E88())
        {
          if (LocationAuthorizationState.rawValue.getter(v587) == 0x7265746544746F6ELL && v298 == 0xED000064656E696DLL)
          {

            goto LABEL_58;
          }

          v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v300 & 1) == 0)
          {
            v410 = v532;
            sub_1003DFA4C(*(v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations + *(v586 + 20)), v532);
            v411 = sub_1000131C4();
            sub_1000038B4(v411, v412, v531);
            if (v179)
            {

              sub_1000180EC(v410, &qword_100CA6890, &qword_100A31680);
              sub_10001EB68();
              sub_1000325C0();
              sub_100095048();
              sub_100003934();
              v413 = v558;
              sub_10001B350(v414, v415, v416, v558);
              v417 = type metadata accessor for SearchViewState(0);
              v418 = sub_100003BCC(&v553);
              sub_10001B350(v418, v419, v420, v417);
              v421 = sub_100003BCC(v556);
              v422 = v540;
              sub_10001B350(v421, v423, v424, v540);
              v425 = sub_100003BCC(&v558);
              v426 = v541;
              sub_10001B350(v425, v427, v428, v541);
              v178 = *&MainInitialStateProvider.flags;
              v429 = v518;
              sub_100051BBC();
              sub_100005404(v429);
              v598 = v178;
              if (v179)
              {
                sub_100013754();
                sub_100095048();
                v430 = sub_100024D10(v429, 1, v413);

                v179 = v430 == 1;
                v178 = v515;
                v445 = v522;
                if (!v179)
                {
                  sub_1000180EC(v429, &qword_100CA6608, &unk_100A31430);
                }
              }

              else
              {
                sub_100022ADC();
                sub_1003D705C();

                sub_1000794B0();
                v445 = v522;
              }

              LODWORD(v596) = *(v542 + v183[6]);
              sub_100051BBC();
              sub_100003BFC(v445);
              if (v179)
              {
                sub_100095588();
                sub_100003BFC(v445);
                v446 = v445;
                v476 = v523;
                if (!v179)
                {
                  sub_1000180EC(v446, &qword_100CA6600, &unk_100A5C400);
                }
              }

              else
              {
                sub_100037114();
                sub_10003778C();
                sub_1003D705C();
                sub_10000E7B0();
                sub_10001B350(v473, v474, v475, v417);
                v476 = v523;
              }

              sub_100051BBC();
              v477 = sub_1000131C4();
              sub_1000038B4(v477, v478, v422);
              v479 = v525;
              if (v179)
              {
                sub_1000303F8();
                sub_100095048();
                v480 = sub_1000131C4();
                sub_1000038B4(v480, v481, v422);
                v303 = v559;
                if (!v179)
                {
                  sub_1000180EC(v476, &qword_100CA65F8, &dword_100A31420);
                }
              }

              else
              {
                sub_100019660();
                sub_1003D705C();
                v303 = v559;
              }

              sub_100051BBC();
              v489 = sub_1000162A4();
              sub_1000038B4(v489, v490, v426);
              if (v179)
              {
                sub_1000B9900();
                sub_100095048();
                v491 = sub_1000162A4();
                sub_1000038B4(v491, v492, v426);
                if (!v179)
                {
                  sub_1000180EC(v479, &qword_100CA65F0, &unk_100A5C3F0);
                }
              }

              else
              {
                sub_1000040D4();
                sub_1003D705C();
              }

              v499 = *(v542 + v183[11]);
              sub_100005B1C();
              sub_10009EDBC(v500, v501);
              v502 = v564;
              *v564 = v598;
              sub_100022ADC();
              sub_1003D705C();
              *(v502 + v183[6]) = v596;
              *(v502 + v183[7]) = 0;
              sub_100051BBC();
              sub_100019660();
              sub_1003D705C();
              sub_1000040D4();
              sub_1003D705C();
              *(v502 + v183[11]) = v499;
              v301 = v604;
              v302 = v583;
              goto LABEL_61;
            }

            sub_1000113EC();
            sub_1003D705C();
            sub_10001EB68();
            sub_100095048();
            v431 = v517;
            SavedLocation.identifier.getter();
            type metadata accessor for Location.Identifier();
            sub_10000E7B0();
            sub_10001B350(v432, v433, v434, v435);
            sub_10000E7B0();
            v436 = active;
            sub_10001B350(v437, v438, v439, active);
            sub_10003778C();
            sub_100051BBC();
            v440 = sub_1000131C4();
            sub_1000038B4(v440, v441, v436);
            if (v442)
            {
              sub_100095048();
              v443 = sub_1000131C4();
              sub_1000038B4(v443, v444, v436);
              if (!v179)
              {
                sub_1000180EC(v431, &qword_100CA65B8, &unk_100A313D0);
              }
            }

            else
            {
              sub_1003D705C();
            }

            v447 = *(v294 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
            v448 = *(v294 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
            v449 = *(v294 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
            v450 = *(v294 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
            v451 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v294);
            type metadata accessor for LocationViewerViewState._Storage(0);
            swift_allocObject();
            v452 = sub_10003DDB8(v533, v451, v447, v450, v448, v449);
            v453 = v536;
            *v536 = v452;
            v454 = v558;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v455, v456, v457, v454);
            v458 = type metadata accessor for SearchViewState(0);
            v459 = sub_100003BCC(&v557);
            sub_10001B350(v459, v460, v461, v458);
            v462 = sub_100003BCC(&v561);
            sub_10001B350(v462, v463, v464, v540);
            v465 = sub_100003BCC(&v563);
            sub_10001B350(v465, v466, v467, v541);
            v468 = v543;
            v469 = *v543;
            sub_100021424();
            sub_100095588();
            sub_100003BFC(v453);
            v598 = v469;
            if (v179)
            {
              v596 = v458;
              v482 = v605;
              sub_100013754();
              sub_100095048();
              v470 = sub_100024D10(v453, 1, v454);
              v471 = v453;
              v472 = v470;
              v458 = v596;

              if (v472 != 1)
              {
                sub_1000180EC(v471, &qword_100CA6608, &unk_100A31430);
              }
            }

            else
            {
              sub_100022ADC();
              sub_1003D705C();

              v482 = v605;
            }

            LODWORD(v596) = *(v468 + v482[6]);
            v483 = [objc_opt_self() currentDevice];
            v484 = [v483 userInterfaceIdiom];

            sub_1000180EC(v536, &qword_100CA6608, &unk_100A31430);
            sub_10009EDBC(v534, &type metadata accessor for SavedLocation);
            if (v484 && *(v468 + v482[9] + 8) == 2)
            {
              v485 = 1;
            }

            else
            {
              v485 = *(v468 + v482[7]);
            }

            LODWORD(v595) = v485;
            sub_1000794B0();
            v187 = v557;
            v486 = v541;
            v302 = v583;
            v487 = v524;
            sub_100051BBC();
            sub_100005404(v487);
            if (v179)
            {
              sub_1000714AC(v605[8]);
              sub_100095588();
              sub_100005404(v487);
              v488 = v487;
              v496 = v526;
              if (!v179)
              {
                sub_1000180EC(v488, &qword_100CA6600, &unk_100A5C400);
              }
            }

            else
            {
              sub_100037114();
              sub_1003D705C();
              sub_10000E7B0();
              sub_10001B350(v493, v494, v495, v458);
              v496 = v526;
            }

            sub_100051BBC();
            sub_100003BFC(v496);
            v497 = v528;
            if (v179)
            {
              sub_1000303F8();
              sub_1000714AC(v498);
              sub_100095048();
              sub_100003BFC(v496);
              if (!v179)
              {
                sub_1000180EC(v496, &qword_100CA65F8, &dword_100A31420);
              }
            }

            else
            {
              sub_100019660();
              sub_1003D705C();
            }

            sub_100051BBC();
            v503 = sub_1000131C4();
            sub_1000038B4(v503, v504, v486);
            if (v179)
            {
              sub_1000B9900();
              sub_1000714AC(v505);
              sub_100095048();
              v506 = sub_1000131C4();
              sub_1000038B4(v506, v507, v486);
              if (!v179)
              {
                sub_1000180EC(v497, &qword_100CA65F0, &unk_100A5C3F0);
              }
            }

            else
            {
              sub_1000040D4();
              sub_1003D705C();
            }

            v508 = v605;
            v509 = *(v543 + v605[11]);
            sub_100005B1C();
            sub_10009EDBC(v510, v511);
            v512 = v564;
            *v564 = v598;
            sub_100022ADC();
            sub_1003D705C();
            *(v512 + v508[6]) = v596;
            *(v512 + v508[7]) = v595;
            sub_100051BBC();
            sub_100019660();
            sub_1003D705C();
            sub_1000040D4();
            sub_1003D705C();
            *(v512 + v508[11]) = v509;
            v301 = v604;
LABEL_60:
            v303 = v559;
LABEL_61:
            v304 = (v188 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
            sub_1000161C0((v187 + 16), *(v187 + 40));
            type metadata accessor for CurrentLocation();
            sub_100003934();
            v595 = v305;
            sub_10001B350(v306, v307, v308, v305);
            v598 = v304;
            v309 = v551;
            dispatch thunk of WeatherLocationCoalescenceManagerType.coalesceLocations(currentLocation:locationList:locationsOfInterest:)();
            sub_1000180EC(v178, &unk_100CE49F0, &unk_100A3AFA0);
            v596 = WeatherCoalescedLocationResult.coalescedLocations.getter();
            (*(v552 + 8))(v309, v554);
            v310 = sub_100003BCC(&v589);
            sub_10001B350(v310, v311, v312, v301);
            v313 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
            swift_beginAccess();
            sub_100014568();
            v577 = v313;
            v314 = v546;
            sub_100095048();
            sub_100003934();
            v315 = v603;
            sub_10001B350(v316, v317, v318, v603);
            LODWORD(v592) = *v314;
            LODWORD(v594) = v314[2];
            LODWORD(v593) = v314[3];
            sub_10003778C();
            sub_100051BBC();
            sub_1000191D0();
            if (v179)
            {
              v319 = v607;
              (*(v302 + 16))(v303, &v314[v607[8]], v315);
              sub_1000191D0();
              if (!v179)
              {
                sub_1000180EC(v309, &qword_100CAA9F0, qword_100A44F50);
              }
            }

            else
            {
              (*(v302 + 32))(v303, v309, v315);
              v319 = v607;
            }

            v320 = v319[10];
            v321 = &v314[v319[9]];
            v322 = *(v321 + 1);
            v590 = *v321;
            LODWORD(v591) = v314[v320];
            v323 = v319[12];
            v588 = v314[v319[11]];
            v589 = v314[v323];
            v324 = v319[14];
            LODWORD(v582) = v314[v319[13]];
            v583 = *&v314[v324];
            v325 = v319[16];
            LODWORD(v580) = v314[v319[15]];
            v581 = v314[v325];
            v326 = v319[18];
            LODWORD(v578) = v314[v319[17]];
            v327 = *&v314[v326];
            v328 = *&v314[v326 + 8];
            v329 = *&v314[v326 + 16];
            v330 = *&v314[v326 + 24];
            v331 = *&v314[v326 + 32];
            v332 = *&v314[v326 + 40];
            v579 = v314[v319[19]];
            v333 = v332;

            v334 = v327;
            v335 = v328;
            v336 = v329;
            v337 = v330;
            v338 = v331;
            sub_1000419C0();
            sub_10009EDBC(v314, v339);
            v340 = v561;
            sub_100043704(v592);
            *(v340 + 2) = v594;
            *(v340 + 3) = v593;
            (*(v302 + 32))(v340 + v319[8], v559, v603);
            v341 = (v340 + v319[9]);
            *v341 = v590;
            v341[1] = v322;
            *(v340 + v319[10]) = v591;
            sub_100011524(v319[11]);
            sub_100011524(v319[12]);
            sub_100011524(v319[13]);
            *(v340 + v319[14]) = v583;
            sub_100011524(v319[15]);
            sub_100011524(v319[16]);
            sub_100011524(v319[17]);
            v342 = (v340 + v319[18]);
            *v342 = v327;
            v342[1] = v328;
            v342[2] = v329;
            v342[3] = v330;
            v342[4] = v331;
            v342[5] = v332;
            sub_100011524(v319[19]);
            sub_10000E7B0();
            sub_10001B350(v343, v344, v345, v319);
            sub_10004E530();
            sub_100021424();
            sub_100095048();
            v346 = v515;
            sub_100003934();
            sub_10001B350(v347, v348, v349, v595);
            sub_100095588();
            v350 = v586;
            v351 = v322 + *(v586 + 48);
            v352 = *v351;
            v353 = *(v351 + 8);
            v354 = *(v351 + 16);

            sub_1000DC3D4(v352, v353, v354);

            sub_10003A500();
            sub_1000180EC(v346, &unk_100CE49F0, &unk_100A3AFA0);
            sub_10009EDBC(v322, type metadata accessor for LocationsState);
            sub_10000E7B0();
            sub_10001B350(v355, v356, v357, v350);
            v358 = sub_100003BCC(&v592);
            v359 = v601;
            sub_10001B350(v358, v360, v361, v601);
            v362 = sub_100003BCC(&v594);
            sub_10001B350(v362, v363, v364, v602);
            v365 = sub_100003BCC(&v596);
            v366 = v585;
            sub_10001B350(v365, v367, v368, v585);
            sub_1000168DC();
            sub_1003D705C();
            sub_10000E7B0();
            sub_10001B350(v369, v370, v371, v605);
            v372 = v549;
            sub_100003934();
            v373 = v584;
            sub_10001B350(v374, v375, v376, v584);
            sub_10002FE9C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
            sub_100021424();
            sub_100095048();
            sub_1000325C0();
            sub_100051BBC();
            v377 = sub_1000162B0();
            sub_1000038B4(v377, v378, v373);
            if (v179)
            {
              sub_1000180EC(v372, &qword_100CA65E8, &unk_100A31410);
            }

            else
            {
              sub_100024128();
              sub_10009EDBC(v322, v379);
              sub_10001C108();
              sub_1003D705C();
            }

            v380 = v547;
            sub_10001C108();
            sub_1003D705C();
            v381 = *(v352 + 16);
            LODWORD(v596) = *(v352 + 24);
            sub_100051BBC();
            v382 = sub_1000201BC();
            v383 = v604;
            sub_1000038B4(v382, v384, v604);
            v385 = v548;
            v603 = v381;
            if (v179)
            {
              sub_10003A188(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
              sub_100095048();
              v386 = sub_1000201BC();
              v388 = sub_100024D10(v386, v387, v383);

              v389 = v555;
              if (v388 != 1)
              {
                sub_1000180EC(v380, &qword_100CA6640, qword_100A32640);
              }
            }

            else
            {
              sub_100036CE4();
              sub_1003D705C();

              v389 = v555;
            }

            sub_100051BBC();
            v390 = sub_1000162B0();
            v391 = v607;
            sub_1000038B4(v390, v392, v607);
            if (v179)
            {
              sub_100014568();
              sub_100095048();
              v393 = sub_1000162B0();
              sub_1000038B4(v393, v394, v391);
              v395 = v553;
              v396 = v586;
              if (!v179)
              {
                sub_1000180EC(v385, &qword_100CA6638, &unk_100A31460);
              }
            }

            else
            {
              sub_100071CC0();
              sub_1003D705C();
              v395 = v553;
              v396 = v586;
            }

            sub_1000325C0();
            sub_100051BBC();
            v397 = sub_1000162B0();
            sub_1000038B4(v397, v398, v396);
            if (v179)
            {
              sub_10004E530();
              sub_100095048();
              v399 = sub_1000162B0();
              sub_1000038B4(v399, v400, v396);
              if (!v179)
              {
                sub_1000180EC(v385, &qword_100CA6630, &unk_100A32630);
              }
            }

            else
            {
              sub_100016368();
              sub_1003D705C();
            }

            v401 = v550;
            sub_100051BBC();
            v402 = sub_1000201BC();
            sub_1000038B4(v402, v403, v359);
            if (v179)
            {
              sub_10002512C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
              sub_100095048();
              v404 = sub_1000201BC();
              sub_1000038B4(v404, v405, v359);
              if (!v179)
              {
                sub_1000180EC(v401, &qword_100CA6628, &unk_100A31450);
              }
            }

            else
            {
              sub_100020EF8();
              sub_1003D705C();
            }

            sub_100051BBC();
            sub_100003BFC(v395);
            if (v179)
            {
              sub_10006A76C();
              sub_100003BFC(v395);
              if (!v179)
              {
                sub_1000180EC(v395, &qword_100CA6620, &unk_100A32620);
              }
            }

            else
            {
              sub_10003BDA0();
              sub_1003D705C();
            }

            sub_100051BBC();
            sub_100005404(v389);
            if (v179)
            {
              sub_10003B998();
              sub_100005404(v389);
              if (!v179)
              {
                sub_1000180EC(v389, &qword_100CA6618, &unk_100A31440);
              }
            }

            else
            {
              sub_10002143C();
              sub_1003D705C();
            }

            sub_10003778C();
            sub_100051BBC();
            sub_1000191D0();
            if (v179)
            {
              sub_10001EB68();
              sub_1000113EC();
              sub_100095048();
              sub_1000191D0();
              if (!v179)
              {
                sub_1000180EC(v366, &qword_100CA6610, &unk_100A32610);
              }
            }

            else
            {
              sub_1000168DC();
              sub_1000113EC();
              sub_1003D705C();
            }

            sub_10001C108();
            sub_10003778C();
            sub_1003D705C();
            v407 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
            v406 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
            v408 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
            v409 = *(v352 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
            sub_1000716D4();
            type metadata accessor for MainState._Storage(0);
            swift_allocObject();
            sub_1000D41E4();
            v517 = v408;
            v518 = v409;
            v515 = v407;
            v516 = v406;
            v513 = v389;
            v514 = v366;
            v285 = v603;
            v286 = v596;
            v287 = v571;
            v289 = v566;
            v288 = v572;
            v290 = v573;
            goto LABEL_46;
          }
        }

LABEL_56:

LABEL_58:
        sub_1000794B0();
        goto LABEL_59;
      }
    }
  }

  v189 = sub_100003BCC(&v608);
  sub_10001B350(v189, v190, v191, v604);
  v192 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100014568();
  v560 = v192;
  sub_100095048();
  sub_100003934();
  v193 = v603;
  sub_10001B350(v194, v195, v196, v603);
  LODWORD(v571) = *v162;
  LODWORD(v573) = v162[2];
  LODWORD(v572) = v162[3];
  sub_100051BBC();
  sub_100005404(v154);
  v570 = v148;
  if (v179)
  {
    v198 = v607;
    v197 = v583;
    (*(v583 + 16))(v148, &v162[v607[8]], v193);
    sub_100005404(v154);
    if (!v179)
    {
      sub_1000180EC(v154, &qword_100CAA9F0, qword_100A44F50);
    }
  }

  else
  {
    v197 = v583;
    (*(v583 + 32))(v148, v154, v193);
    v198 = v607;
  }

  v199 = v198[10];
  v200 = &v162[v198[9]];
  v201 = *(v200 + 1);
  v569 = *v200;
  LODWORD(v583) = v162[v199];
  v202 = v198[12];
  v567 = v162[v198[11]];
  v568 = v162[v202];
  v203 = v198[14];
  v565 = v162[v198[13]];
  v566 = *&v162[v203];
  v204 = v198[16];
  v563 = v162[v198[15]];
  LODWORD(v564) = v162[v204];
  v205 = v198[18];
  LODWORD(v561) = v162[v198[17]];
  v206 = *&v162[v205];
  v207 = *&v162[v205 + 8];
  v208 = *&v162[v205 + 16];
  v209 = *&v162[v205 + 24];
  v210 = *&v162[v205 + 32];
  v211 = *&v162[v205 + 40];
  v562 = v162[v607[19]];
  v212 = v211;

  v213 = v206;
  v214 = v207;
  v215 = v208;
  v216 = v209;
  v217 = v210;
  sub_1000419C0();
  sub_10009EDBC(v162, v218);
  sub_100043704(v571);
  v169[2] = v573;
  v169[3] = v572;
  (*(v197 + 32))(&v169[v607[8]], v570, v603);
  v219 = &v169[v607[9]];
  *v219 = v569;
  *(v219 + 1) = v201;
  sub_10000CA3C(v607[10]);
  sub_10000CA3C(*(v220 + 44));
  sub_10000CA3C(*(v221 + 48));
  sub_10000CA3C(*(v222 + 52));
  *&v169[*(v223 + 56)] = v566;
  sub_10000CA3C(v607[15]);
  sub_10000CA3C(*(v224 + 64));
  sub_100011524(*(v225 + 68));
  v226 = v607;
  v227 = &v169[v607[18]];
  *v227 = v206;
  *(v227 + 1) = v207;
  *(v227 + 2) = v208;
  *(v227 + 3) = v209;
  *(v227 + 4) = v210;
  *(v227 + 5) = v211;
  sub_100011524(v226[19]);
  sub_10000E7B0();
  sub_10001B350(v228, v229, v230, v226);
  v231 = sub_100003BCC(&v609);
  v232 = v586;
  sub_10001B350(v231, v233, v234, v586);
  sub_100003934();
  sub_10001B350(v235, v236, v237, v601);
  sub_100003934();
  sub_10001B350(v238, v239, v240, v602);
  sub_100003934();
  v241 = v585;
  sub_10001B350(v242, v243, v244, v585);
  sub_100003934();
  sub_10001B350(v245, v246, v247, v605);
  v248 = v575;
  sub_100003934();
  sub_10001B350(v249, v250, v251, v584);
  sub_10002FE9C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  sub_1000113EC();
  sub_100095048();
  sub_10003778C();
  sub_100051BBC();
  sub_1000191D0();
  if (v179)
  {
    sub_1000180EC(v248, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_100024128();
    sub_10009EDBC(v210, v252);
    sub_10001C108();
    sub_1003D705C();
  }

  v253 = v604;
  sub_10001C108();
  sub_1003D705C();
  v254 = *(v207 + 16);
  LODWORD(v604) = *(v207 + 24);
  sub_1000113EC();
  sub_100051BBC();
  sub_1000038B4(v210, 1, v253);
  v255 = v574;
  if (v179)
  {
    sub_10003A188(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100095048();
    v256 = sub_100024D10(v210, 1, v253);
    v257 = v254;

    v179 = v256 == 1;
    v258 = v582;
    if (!v179)
    {
      sub_1000180EC(v210, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_100036CE4();
    sub_1003D705C();
    v257 = v254;

    v258 = v582;
  }

  sub_100051BBC();
  v259 = sub_1000131C4();
  sub_1000038B4(v259, v260, v226);
  v261 = v241;
  v603 = v257;
  if (v179)
  {
    sub_100014568();
    sub_100095048();
    v262 = sub_1000131C4();
    sub_1000038B4(v262, v263, v226);
    v264 = v580;
    v265 = v601;
    if (!v179)
    {
      sub_1000180EC(v255, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100071CC0();
    sub_1003D705C();
    v264 = v580;
    v265 = v601;
  }

  v266 = v576;
  sub_100051BBC();
  v267 = sub_1000201BC();
  sub_1000038B4(v267, v268, v232);
  v269 = v602;
  if (v179)
  {
    sub_10004E530();
    sub_100095048();
    v270 = sub_1000201BC();
    sub_1000038B4(v270, v271, v232);
    if (!v179)
    {
      sub_1000180EC(v266, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100016368();
    sub_1003D705C();
  }

  v272 = v578;
  sub_100051BBC();
  sub_1000038B4(v272, 1, v265);
  if (v179)
  {
    sub_10002512C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100095048();
    sub_1000038B4(v272, 1, v265);
    if (!v179)
    {
      sub_1000180EC(v272, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100020EF8();
    sub_1003D705C();
  }

  sub_1000325C0();
  sub_100051BBC();
  v273 = sub_1000162B0();
  sub_1000038B4(v273, v274, v269);
  if (v179)
  {
    sub_10006A76C();
    v275 = sub_1000162B0();
    sub_1000038B4(v275, v276, v269);
    if (!v179)
    {
      sub_1000180EC(v265, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_10003BDA0();
    sub_1003D705C();
  }

  sub_100051BBC();
  v277 = sub_1000162A4();
  sub_1000038B4(v277, v278, v261);
  if (v179)
  {
    sub_10003B998();
    v279 = sub_1000162A4();
    sub_1000038B4(v279, v280, v261);
    if (!v179)
    {
      sub_1000180EC(v264, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_10002143C();
    sub_1003D705C();
  }

  sub_100021424();
  sub_100051BBC();
  sub_100005404(v261);
  if (v179)
  {
    sub_10001EB68();
    sub_100095048();
    sub_100005404(v261);
    if (!v179)
    {
      sub_1000180EC(v261, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000168DC();
    sub_1003D705C();
  }

  sub_10001C108();
  sub_100021424();
  sub_1003D705C();
  v282 = *(v207 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v281 = *(v207 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v283 = *(v207 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v284 = *(v207 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  sub_1000716D4();
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  sub_1000D41E4();
  v517 = v283;
  v518 = v284;
  v515 = v282;
  v516 = v281;
  v513 = v258;
  v514 = v261;
  v285 = v603;
  v286 = v604;
  v287 = v596;
  v288 = v597;
  v289 = v592;
  v290 = v598;
LABEL_46:
  sub_10003E038(v285, v286, v287, v289, v288, v290, v599, v600, v513, v514, v515, v516, v517, v518, v519, active, v521, v522, v523, v524, v525, v526, v527, v528, v529, v530, v531, v532, v533, v534, v535, v536, v537, v538, v539);
  v292 = v291;

  return v292;
}

uint64_t sub_1003D6E88()
{
  v0 = type metadata accessor for Location.Identifier();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095048();
  v7 = 1;
  if (sub_100024D10(v6, 1, v0) != 1)
  {
    (*(v1 + 32))(v3, v6, v0);
    Location.Identifier.kind.getter();
    v8 = Location.Identifier.Kind.rawValue.getter();
    v10 = v9;
    if (v8 != Location.Identifier.Kind.rawValue.getter() || v10 != v11)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v1 + 8))(v3, v0);
  }

  return v7 & 1;
}

uint64_t sub_1003D705C()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t getEnumTagSinglePayload for AddLocationContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReportWeatherComponentViewModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1003D7244(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1003D72B4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10000FEC4();
  return static Published.subscript.setter();
}

uint64_t sub_1003D7320(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000206E4();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1003D7390(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10000FEC4();
  return static Published.subscript.setter();
}

uint64_t sub_1003D73FC()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_100040690();
  static DispatchQoS.userInitiated.getter();
  v8 = _swiftEmptyArrayStorage;
  sub_10006736C(&qword_100CA2E50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10022C350(&qword_100CA2E58, &qword_100A2C5A0);
  sub_100067638(&qword_100CA2E60, &qword_100CA2E58, &qword_100A2C5A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_100CB4DC0 = result;
  return result;
}

uint64_t sub_1003D764C()
{
  sub_10022C350(&qword_100CB4F20, &unk_100A484F8);
  swift_allocObject();
  result = LRUCache.init(maxSize:)();
  qword_100CB4DC8 = result;
  return result;
}

uint64_t sub_1003D769C()
{
  v0 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v0);
  sub_10022C350(&qword_100CA2D40, &unk_100A41F80);
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static UnfairLock.Options.dataSynchronization.getter();
  sub_10006736C(&qword_100CA2D48, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_10022C350(&qword_100CA2D50, &qword_100A2C490);
  sub_100067638(&qword_100CA2D58, &qword_100CA2D50, &qword_100A2C490);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init(options:)();
  qword_100CB4DD0 = result;
  return result;
}

void sub_1003D7854(unint64_t a1, void *a2, int a3)
{
  v240 = a3;
  v224 = a2;
  v243 = a1;
  v217 = *v3;
  v211 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v210 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100003918(v8 - v7);
  v209 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v207 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100003990(v12 - v11);
  v13 = sub_10022C350(&qword_100CB4EE8, &unk_100A484C8);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003918(&v199[-v15]);
  v214 = type metadata accessor for MicaLayer();
  sub_1000037C4();
  v205 = v16;
  __chkstk_darwin(v17);
  sub_1000037D8();
  sub_100003990(v19 - v18);
  v20 = sub_10022C350(&qword_100CB3AB0, &unk_100A2FB80);
  sub_100003810(v20);
  sub_100003828();
  __chkstk_darwin(v21);
  sub_100003918(&v199[-v22]);
  v227 = type metadata accessor for URL();
  sub_1000037C4();
  v226 = v23;
  __chkstk_darwin(v24);
  sub_100003990(&v199[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v202 = v26;
  __chkstk_darwin(v27);
  sub_10000E70C();
  sub_100003990(v28);
  v233 = sub_10022C350(&qword_100CB4EF0, &qword_100A484D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v29);
  sub_100003918(&v199[-v30]);
  v231 = type metadata accessor for WeatherConditionBackgroundOptions();
  sub_1000037C4();
  v230 = v31;
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_10000E70C();
  sub_100003918(v34);
  v35 = type metadata accessor for WeatherCondition();
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_1000037D8();
  sub_100003918(v38 - v37);
  v236 = type metadata accessor for MicaResourceModel();
  sub_1000037C4();
  v239 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CB4EF8, &qword_100A484E0);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v45);
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003918(v47);
  v48 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v50 = v49;
  __chkstk_darwin(v51);
  v201 = v52;
  sub_10001376C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CB4F00, &unk_100A484E8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v55);
  v57 = &v199[-v56];
  v58 = sub_10022C350(&qword_100CB4ED8, &qword_100AA0B40);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_100003908();
  __chkstk_darwin(v61);
  sub_100003908();
  __chkstk_darwin(v62);
  v64 = &v199[-v63];
  __chkstk_darwin(v65);
  v67 = &v199[-v66];
  v68 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v70 = v69;
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = (v73 - v72);
  sub_100040690();
  *v74 = static OS_dispatch_queue.main.getter();
  (*(v70 + 104))(v74, enum case for DispatchPredicate.onQueue(_:), v68);
  v75 = _dispatchPreconditionTest(_:)();
  (*(v70 + 8))(v74, v68);
  if ((v75 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  v221 = v50;
  v76 = *(v50 + 16);
  v223 = v50 + 16;
  v222 = v76;
  v76(v67, v243, v48);
  sub_10001B350(v67, 0, 1, v48);
  v77 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__lastModel;
  v78 = v241;

  Atomic.wrappedValue.getter();

  v79 = *(v54 + 48);
  sub_100035AD0(v67, v57, &qword_100CB4ED8, &qword_100AA0B40);
  sub_100035AD0(v64, &v57[v79], &qword_100CB4ED8, &qword_100AA0B40);
  sub_1000038B4(v57, 1, v48);
  v80 = v78;
  v242 = v48;
  if (v92)
  {
    sub_10000FEC4();
    sub_1000180EC(v81, v82, v83);
    sub_10000FEC4();
    sub_1000180EC(v84, v85, v86);
    sub_1000038B4(&v57[v79], 1, v242);
    v87 = v236;
    if (v92)
    {
      v88 = sub_1000180EC(v57, &qword_100CB4ED8, &qword_100AA0B40);
      v90 = v240;
      goto LABEL_12;
    }

LABEL_10:
    v88 = sub_1000180EC(v57, &qword_100CB4F00, &unk_100A484E8);
    v90 = v240;
    goto LABEL_16;
  }

  v91 = v218;
  sub_100035AD0(v57, v218, &qword_100CB4ED8, &qword_100AA0B40);
  sub_1000038B4(&v57[v79], 1, v242);
  if (v92)
  {
    sub_10000FEC4();
    sub_1000180EC(v93, v94, v95);
    sub_10000FEC4();
    sub_1000180EC(v96, v97, v98);
    (*(v221 + 8))(v91, v242);
    v87 = v236;
    goto LABEL_10;
  }

  v99 = v221;
  v100 = &v57[v79];
  v101 = v215;
  v102 = v242;
  (*(v221 + 32))(v215, v100, v242);
  sub_10006736C(&qword_100CB4F18, &type metadata accessor for BackgroundAnimationData.Model, &protocol conformance descriptor for BackgroundAnimationData.Model);
  v200 = dispatch thunk of static Equatable.== infix(_:_:)();
  v103 = *(v99 + 8);
  v103(v101, v102);
  sub_10003C400();
  sub_1000180EC(v104, v105, v106);
  sub_10003C400();
  sub_1000180EC(v107, v108, v109);
  v103(v91, v102);
  v80 = v241;
  sub_10003C400();
  v88 = sub_1000180EC(v110, v111, v112);
  v87 = v236;
  v90 = v240;
  if ((v200 & 1) == 0)
  {
LABEL_16:
    v218 = v77;
    if ((sub_1003D7320(v88, v89) & 1) == 0)
    {
      sub_1003D7390(1, v116);
    }

    v117 = v237;
    sub_1003D8E68(v80, v90 & 1, v237);
    BackgroundAnimationData.Model.conditionKind.getter();
    BackgroundAnimationData.Model.isDayTime.getter();
    v118 = v228;
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.windowBounds.getter();
    v119 = *(v230 + 8);
    v120 = v118;
    v121 = v231;
    v119(v120, v231);
    v122 = v229;
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.displayScale.getter();
    v119(v122, v121);
    v123 = v238;
    MicaResourceModel.init(condition:isDay:windowBounds:displayScale:)();
    v124 = v239;
    v125 = v232;
    v126 = v87;
    (*(v239 + 16))(v232, v123, v87);
    sub_10001B350(v125, 0, 1, v87);
    v127 = *(v233 + 48);
    v128 = v117;
    v129 = v234;
    sub_100035AD0(v128, v234, &qword_100CB4EF8, &qword_100A484E0);
    sub_100035AD0(v125, v129 + v127, &qword_100CB4EF8, &qword_100A484E0);
    sub_1000038B4(v129, 1, v87);
    if (v92)
    {
      sub_1000180EC(v125, &qword_100CB4EF8, &qword_100A484E0);
      sub_1000038B4(v129 + v127, 1, v87);
      v130 = v235;
      if (v92)
      {
        IsVerySlow = sub_1000180EC(v129, &qword_100CB4EF8, &qword_100A484E0);
LABEL_38:
        if ((v240 & 1) != 0 && (IsVerySlow = DeviceIsVerySlow(), IsVerySlow))
        {
          sub_10001C120();
          sub_10006736C(v180, v181, a9z);
          v182 = sub_100074958();
          WeatherConditionPlaybackCoordinatorType.pause(_:)(v182);
          v183 = v239;
          v184 = v238;
        }

        else
        {
          v183 = v239;
          v184 = v238;
          if (*(v241 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
          {
            v185 = sub_1003D7244(IsVerySlow, v132);
            MicaBackgroundAnimation.play(_:)(0);
          }
        }

        (*(v183 + 8))(v184, v126);
LABEL_52:
        v145 = &qword_100CB4EF8;
        v146 = &qword_100A484E0;
        v147 = v237;
        goto LABEL_53;
      }
    }

    else
    {
      v133 = v216;
      sub_100035AD0(v129, v216, &qword_100CB4EF8, &qword_100A484E0);
      sub_1000038B4(v129 + v127, 1, v87);
      v130 = v235;
      if (!v134)
      {
        v176 = v129 + v127;
        v177 = v212;
        (*(v124 + 32))(v212, v176, v87);
        sub_10006736C(&qword_100CB4F10, &type metadata accessor for MicaResourceModel, &protocol conformance descriptor for MicaResourceModel);
        v178 = dispatch thunk of static Equatable.== infix(_:_:)();
        v179 = *(v124 + 8);
        v179(v177, v126);
        sub_1000180EC(v125, &qword_100CB4EF8, &qword_100A484E0);
        v179(v133, v126);
        IsVerySlow = sub_1000180EC(v129, &qword_100CB4EF8, &qword_100A484E0);
        if (v178)
        {
          goto LABEL_38;
        }

LABEL_27:
        v135 = v220;
        v136 = v242;
        sub_10002C6A8();
        v137();
        sub_10001B350(v135, 0, 1, v136);
        v138 = v241;
        sub_100035AD0(v135, v219, &qword_100CB4ED8, &qword_100AA0B40);

        Atomic.wrappedValue.setter();

        sub_1000206E4();
        sub_1000180EC(v139, v140, v141);
        if (v240)
        {
          v4 = 0.0;
        }

        else
        {
          v4 = 0.3;
        }

        sub_1000161C0(v224, v224[3]);
        v142 = v238;
        sub_1000206E4();
        dispatch thunk of MicaLoaderType.loadMicaURL(for:)();
        v143 = v227;
        sub_1000038B4(v130, 1, v227);
        if (v92)
        {
          sub_10000E73C();
          v144(v142, v126);
          sub_1000180EC(v237, &qword_100CB4EF8, &qword_100A484E0);
          v145 = &qword_100CB3AB0;
          v146 = &unk_100A2FB80;
          v147 = v130;
LABEL_53:
          sub_1000180EC(v147, v145, v146);
          return;
        }

        v148 = v138;
        v149 = *(v226 + 32);
        v149(v225, v130, v143);
        v150 = sub_1003D9910();
        v151 = v213;
        sub_1003D9CC4(v150, v152);

        v153 = v214;
        sub_1000038B4(v151, 1, v214);
        v155 = v239;
        if (!v154)
        {
          v187 = v205;
          v188 = v204;
          v189 = (*(v205 + 32))(v204, v151, v153);
          v191 = sub_1003D7244(v189, v190);
          MicaBackgroundAnimation.updateForNewLayer(_:duration:)();

          if ((v240 & 1) != 0 && (v192 = DeviceIsVerySlow(), v192))
          {
            sub_10001C120();
            sub_10006736C(v194, v195, a9z);
            v196 = sub_100074958();
            WeatherConditionPlaybackCoordinatorType.pause(_:)(v196);
          }

          else if (*(v148 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
          {
            v197 = sub_1003D7244(v192, v193);
            MicaBackgroundAnimation.play(_:)(0);
          }

          (*(v187 + 8))(v188, v153);
          sub_10000E73C();
          v198(v225, v227);
          (*(v155 + 8))(v142, v126);
          goto LABEL_52;
        }

        v233 = v149;
        sub_1000180EC(v151, &qword_100CB4EE8, &unk_100A484C8);
        if (qword_100CA2010 == -1)
        {
LABEL_36:
          v234 = qword_100CB4DC0;
          v235 = swift_allocObject();
          swift_weakInit();
          v156 = v215;
          sub_10002C6A8();
          v157();
          sub_100035B30(v224, &v246);
          v158 = v226;
          v159 = v203;
          v160 = v227;
          (*(v226 + 16))(v203, v225, v227);
          v161 = v221;
          v162 = (*(v221 + 80) + 24) & ~*(v221 + 80);
          v163 = (v201 + v162 + 7) & 0xFFFFFFFFFFFFFFF8;
          v164 = (*(v158 + 80) + v163 + 40) & ~*(v158 + 80);
          v243 = (v164 + v202 + 7) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v164 + v202 + 23) & 0xFFFFFFFFFFFFFFF8;
          v166 = swift_allocObject();
          *(v166 + 16) = v235;
          (*(v161 + 32))(v166 + v162, v156, v242);
          sub_100013188(&v246, v166 + v163);
          (v233)(v166 + v164, v159, v160);
          v167 = v166 + v243;
          *v167 = v4;
          *(v167 + 8) = v240 & 1;
          *(v166 + v165) = v241;
          aBlock[4] = sub_1003DA808;
          aBlock[5] = v166;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000742F0;
          aBlock[3] = &unk_100C543D0;
          v168 = _Block_copy(aBlock);

          v169 = v206;
          static DispatchQoS.unspecified.getter();
          v244 = _swiftEmptyArrayStorage;
          sub_10006736C(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
          sub_100067638(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
          v170 = v208;
          v171 = v211;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v168);
          sub_10000E73C();
          v172(v170, v171);
          sub_10000E73C();
          v173(v169, v209);
          sub_10000E73C();
          v174(v225, v160);
          sub_10000E73C();
          v175(v238, v236);
          sub_1000180EC(v237, &qword_100CB4EF8, &qword_100A484E0);

          return;
        }

LABEL_56:
        sub_1000283AC(&qword_100CA2010);
        goto LABEL_36;
      }

      sub_1000180EC(v125, &qword_100CB4EF8, &qword_100A484E0);
      (*(v124 + 8))(v133, v87);
    }

    sub_1000180EC(v129, &qword_100CB4EF0, &qword_100A484D8);
    goto LABEL_27;
  }

LABEL_12:
  v88 = sub_1003D7320(v88, v89);
  if ((v88 & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((v90 & 1) != 0 && (v88 = DeviceIsVerySlow(), v88))
  {
    sub_10001C120();
    sub_10006736C(v113, v114, a9z);
    v115 = sub_100074958();
    WeatherConditionPlaybackCoordinatorType.pause(_:)(v115);
  }

  else if (*(v80 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
  {
    v186 = sub_1003D7244(v88, v89);
    MicaBackgroundAnimation.play(_:)(0);
  }
}

void sub_1003D8E14(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_1003D7244(a1, a2);
  MicaBackgroundAnimation.play(_:)(v2);
}

uint64_t sub_1003D8E68@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v5 = type metadata accessor for WeatherConditionBackgroundOptions();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = type metadata accessor for WeatherCondition();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10022C350(&qword_100CB4ED8, &qword_100AA0B40);
  __chkstk_darwin(v12 - 8);
  v14 = &v29[-v13];
  v15 = type metadata accessor for BackgroundAnimationData.Model();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];

  Atomic.wrappedValue.getter();

  if (sub_100024D10(v14, 1, v15) == 1)
  {
    IsVerySlow = sub_1000180EC(v14, &qword_100CB4ED8, &qword_100AA0B40);
    if ((v30 & 1) != 0 && (IsVerySlow = DeviceIsVerySlow(), IsVerySlow))
    {
      type metadata accessor for WeatherMicaConditionBackground(0);
      sub_10006736C(&qword_100CB4F08, type metadata accessor for WeatherMicaConditionBackground, a9z);
      WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
    }

    else if (*(a1 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
    {
      v26 = sub_1003D7244(IsVerySlow, v20);
      MicaBackgroundAnimation.play(_:)(0);
    }

    v25 = 1;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    BackgroundAnimationData.Model.conditionKind.getter();
    v30 = BackgroundAnimationData.Model.isDayTime.getter();
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.windowBounds.getter();
    v21 = a3;
    v22 = *(v31 + 8);
    v23 = v10;
    v24 = v32;
    v22(v23, v32);
    BackgroundAnimationData.Model.options.getter();
    WeatherConditionBackgroundOptions.displayScale.getter();
    v22(v7, v24);
    a3 = v21;
    MicaResourceModel.init(condition:isDay:windowBounds:displayScale:)();
    (*(v16 + 8))(v18, v15);
    v25 = 0;
  }

  v27 = type metadata accessor for MicaResourceModel();
  return sub_10001B350(a3, v25, 1, v27);
}

uint64_t sub_1003D9264(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, char a5, uint64_t a6, double a7)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a5 & 1;
    *(v14 + 24) = a6;

    sub_1003D9448(a2, a3, a4, sub_1003DA90C, v14, a7);
  }

  return result;
}

void sub_1003D9354(uint64_t IsVerySlow, uint64_t a2)
{
  if ((IsVerySlow & 1) != 0 && (IsVerySlow = DeviceIsVerySlow(), IsVerySlow))
  {
    sub_10006736C(&qword_100CB4F08, type metadata accessor for WeatherMicaConditionBackground, a9z);
    WeatherConditionPlaybackCoordinatorType.pause(_:)(0);
  }

  else if (*(a2 + OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground_isWindowActive) == 1)
  {
    v3 = sub_1003D7244(IsVerySlow, a2);
    MicaBackgroundAnimation.play(_:)(0);
  }
}

uint64_t sub_1003D9448(unint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v58 = a4;
  v59 = a5;
  v55 = a3;
  v53 = a1;
  v51 = v7;
  v57 = *v7;
  v65 = type metadata accessor for URL();
  sub_1000037C4();
  v56 = v10;
  __chkstk_darwin(v11);
  v54 = v12;
  sub_10001376C();
  v64 = v13;
  v63 = type metadata accessor for BackgroundAnimationData.Model();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  v52 = v17;
  sub_10001376C();
  v61 = v18;
  v62 = type metadata accessor for MicaLayer();
  sub_1000037C4();
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v23);
  v60 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  sub_10000E70C();
  v26 = v25;
  v27 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v29 = v28;
  __chkstk_darwin(v30);
  sub_1000037D8();
  v33 = (v32 - v31);
  if (qword_100CA2010 != -1)
  {
    sub_1000283AC(&qword_100CA2010);
  }

  v34 = qword_100CB4DC0;
  *v33 = qword_100CB4DC0;
  (*(v29 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v27);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  result = (*(v29 + 8))(v33, v27);
  if (v34)
  {
    sub_1000161C0(a2, a2[3]);
    v37 = v55;
    sub_10003C400();
    v38 = dispatch thunk of MicaLoaderType.loadMicaLayer(at:)();
    v49 = v26;
    v50 = v38;
    MicaLayer.init(layer:)();
    (*(v15 + 16))(v61, v53, v63);
    (*(v20 + 16))(v60, v26, v62);
    v39 = v56;
    (*(v56 + 16))(v64, v37, v65);
    v40 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v41 = (v52 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v20 + 80) + v41 + 16) & ~*(v20 + 80);
    v53 = (v22 + *(v39 + 80) + v42) & ~*(v39 + 80);
    v43 = v51;
    v55 = (v54 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = v59;
    v45 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    (*(v15 + 32))(v46 + v40, v61, v63);
    v47 = (v46 + v41);
    *v47 = v58;
    v47[1] = v44;
    v48 = v62;
    (*(v20 + 32))(v46 + v42, v60, v62);
    (*(v39 + 32))(v46 + v53, v64, v65);
    *(v46 + v55) = a6;
    *(v46 + v45) = v57;

    asyncMain(block:)();

    return (*(v20 + 8))(v49, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9910()
{
  v0 = type metadata accessor for WeatherConditionBackgroundOptions.DisplayLocation();
  v1 = *(v0 - 8);
  v37 = v0;
  v38 = v1;
  __chkstk_darwin(v0);
  v35 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for WeatherConditionBackgroundOptions();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Location();
  v5 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = BackgroundAnimationData.Model.isReduceMotionEnabled.getter();
  if (v12)
  {
    v13 = 0x4D6563756465722DLL;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xED00006E6F69746FLL;
  if ((v12 & 1) == 0)
  {
    v14 = 0xE000000000000000;
  }

  v32 = v14;
  v33 = v13;
  URL.deletingPathExtension()();
  v15 = URL.lastPathComponent.getter();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v39 = 0;
  v40 = 0xE000000000000000;
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 45;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  BackgroundAnimationData.Model.location.getter();
  v20 = Location.id.getter();
  v22 = v21;
  (*(v5 + 8))(v7, v31);
  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24._countAndFlagsBits = 45;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  BackgroundAnimationData.Model.options.getter();
  v25 = v35;
  WeatherConditionBackgroundOptions.displayLocation.getter();
  (*(v34 + 8))(v4, v36);
  v26 = v25;
  v27 = v37;
  _print_unlocked<A, B>(_:_:)();
  (*(v38 + 8))(v26, v27);
  v28._countAndFlagsBits = v33;
  v28._object = v32;
  String.append(_:)(v28);

  return v39;
}

uint64_t sub_1003D9CC4(uint64_t a1, uint64_t a2)
{
  if (qword_100CA2020 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for UnfairLock();

  sub_10022C350(&qword_100CB4EE8, &unk_100A484C8);
  Lock.sync<A>(_:)();
}

uint64_t sub_1003D9DDC(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = (v7 - v6);
  sub_100040690();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    if (a1)
    {
      static Animation.easeInOut(duration:)();
    }

    withAnimation<A>(_:_:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003D9F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v41 = a6;
  v42 = a7;
  v44 = a5;
  v46 = a4;
  v47 = a3;
  v10 = type metadata accessor for BackgroundAnimationData.Model();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CB4F00, &unk_100A484E8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = sub_10022C350(&qword_100CB4ED8, &qword_100AA0B40);
  __chkstk_darwin(v17 - 8);
  v45 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  __chkstk_darwin(v22);
  v24 = &v38 - v23;
  v43 = a1;

  Atomic.wrappedValue.getter();

  v25 = *(v11 + 16);
  v40 = a2;
  v25(v21, a2, v10);
  sub_10001B350(v21, 0, 1, v10);
  v26 = *(v14 + 56);
  sub_100035AD0(v24, v16, &qword_100CB4ED8, &qword_100AA0B40);
  sub_100035AD0(v21, &v16[v26], &qword_100CB4ED8, &qword_100AA0B40);
  if (sub_100024D10(v16, 1, v10) == 1)
  {
    sub_1000180EC(v21, &qword_100CB4ED8, &qword_100AA0B40);
    sub_1000180EC(v24, &qword_100CB4ED8, &qword_100AA0B40);
    if (sub_100024D10(&v16[v26], 1, v10) == 1)
    {
      sub_1000180EC(v16, &qword_100CB4ED8, &qword_100AA0B40);
LABEL_8:
      v32 = sub_1003D9910();
      sub_1003DA3DC(v44, v32, v33);

      v36 = sub_1003D7244(v34, v35);
      MicaBackgroundAnimation.updateForNewLayer(_:duration:)();

      return v47(v28);
    }

    goto LABEL_6;
  }

  v27 = v45;
  sub_100035AD0(v16, v45, &qword_100CB4ED8, &qword_100AA0B40);
  if (sub_100024D10(&v16[v26], 1, v10) == 1)
  {
    sub_1000180EC(v21, &qword_100CB4ED8, &qword_100AA0B40);
    sub_1000180EC(v24, &qword_100CB4ED8, &qword_100AA0B40);
    (*(v11 + 8))(v27, v10);
LABEL_6:
    v28 = sub_1000180EC(v16, &qword_100CB4F00, &unk_100A484E8);
    return v47(v28);
  }

  v29 = v39;
  (*(v11 + 32))(v39, &v16[v26], v10);
  sub_10006736C(&qword_100CB4F18, &type metadata accessor for BackgroundAnimationData.Model, &protocol conformance descriptor for BackgroundAnimationData.Model);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v11 + 8);
  v31(v29, v10);
  sub_1000180EC(v21, &qword_100CB4ED8, &qword_100AA0B40);
  sub_1000180EC(v24, &qword_100CB4ED8, &qword_100AA0B40);
  v31(v27, v10);
  v28 = sub_1000180EC(v16, &qword_100CB4ED8, &qword_100AA0B40);
  if (v30)
  {
    goto LABEL_8;
  }

  return v47(v28);
}

uint64_t sub_1003DA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100CA2020 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  type metadata accessor for UnfairLock();

  Lock.sync<A>(_:)();
}

uint64_t sub_1003DA4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100CA2018 != -1)
  {
    swift_once();
  }

  LRUCache.subscript.getter();
}

uint64_t sub_1003DA574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100CA2018 != -1)
  {
    swift_once();
  }

  return LRUCache.cache(value:for:expires:)();
}

uint64_t sub_1003DA5F8()
{
  v1 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__animation;
  sub_10022C350(&qword_100CB4EC8, &qword_100A484A8);
  sub_1000037E8();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7Weather30WeatherMicaConditionBackground__isLoaded;
  sub_10022C350(&qword_100CB4ED0, &unk_100A484B0);
  sub_1000037E8();
  (*(v4 + 8))(v0 + v3);

  return v0;
}

uint64_t sub_1003DA6B0()
{
  sub_1003DA5F8();

  return swift_deallocClassInstance();
}

void sub_1003DA710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1003D7244(a1, a2);
  MicaBackgroundAnimation.pause(_:completion:)();
}

uint64_t sub_1003DA808()
{
  v2 = type metadata accessor for BackgroundAnimationData.Model();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_10002466C();
  v5 = type metadata accessor for URL();
  sub_100003AE8(v5);
  v7 = v6;
  v9 = v8;
  v10 = (v1 + *(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(v0 + 16);
  v13 = v0 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  v15 = *(v13 + 8);
  v16 = *(v0 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D9264(v12, v0 + v4, (v0 + v1), v0 + v10, v15, v16, v14);
}

uint64_t sub_1003DA918()
{
  v2 = type metadata accessor for BackgroundAnimationData.Model();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_10002466C();
  v5 = type metadata accessor for MicaLayer();
  sub_100003AE8(v5);
  v7 = (v1 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for URL();
  sub_100003AE8(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v0 + 16);
  v18 = *(v0 + v1);
  v19 = *(v0 + v1 + 8);
  v20 = *(v0 + v16);
  v21 = *(v0 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003D9F34(v17, v0 + v4, v18, v19, v0 + v7, v0 + v15, v21, v20);
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsViewAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1003DAB98()
{
  result = qword_100CB4F28;
  if (!qword_100CB4F28)
  {
    result = swift_getWitnessTable(aQ_47, &type metadata for NotificationSettingsViewAction, v0, v1);
    atomic_store(result, &qword_100CB4F28);
  }

  return result;
}

uint64_t sub_1003DABEC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CB4F38, &unk_100A48630);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1003DAE4C();
  v7 = sub_100042FB0(a2);
  return (*(v4 + 32))(v7, v6, v3);
}

uint64_t sub_1003DADB8(uint64_t a1)
{
  sub_1003DAEB0();

  return ShortDescribable.description.getter();
}

unint64_t sub_1003DADF8()
{
  result = qword_100CB4F30;
  if (!qword_100CB4F30)
  {
    result = swift_getWitnessTable(byte_100A485D8, &type metadata for NotificationSettingsViewAction, v0, v1);
    atomic_store(result, &qword_100CB4F30);
  }

  return result;
}

unint64_t sub_1003DAE4C()
{
  result = qword_100CB4F40;
  if (!qword_100CB4F40)
  {
    v3 = sub_10022E824(&qword_100CB4F38, &unk_100A48630);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CB4F40);
  }

  return result;
}