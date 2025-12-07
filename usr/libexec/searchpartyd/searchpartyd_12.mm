uint64_t sub_100164054(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100161FCC(a1, a2);
}

unint64_t sub_100164118()
{
  result = qword_1016985D0;
  if (!qword_1016985D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985D0);
  }

  return result;
}

unint64_t sub_1001641BC()
{
  result = qword_1016985E0;
  if (!qword_1016985E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985E0);
  }

  return result;
}

uint64_t sub_10016425C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A530);
  sub_1000076D4(v0, qword_10177A530);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001642DC(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 120);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 104);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 320);
  v12 = *(a1 + 328);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 336);
  v15 = *(a1 + 344);
  *&v50 = v11;
  *(&v50 + 1) = &off_1016080C0;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 216);
  v30 = *(a1 + 208);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_10016492C(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v3 = Data.trimmed.getter();
  v5 = v4;
  *&v55 = v3;
  *(&v55 + 1) = v4;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v6 = String.init<A>(bytes:encoding:)();
  v41 = v5;
  v40 = v3;
  if (!v7)
  {
    v6 = Data.hexString.getter();
  }

  v8 = v6;
  v9 = v7;
  v42 = *(a1 + 96);
  sub_1000E0A3C();
  v10 = DataProtocol.intValue.getter();
  v48 = *(a1 + 80);
  v11 = DataProtocol.intValue.getter();
  v13 = *(a1 + 208);
  v12 = *(a1 + 216);
  *&v49 = 0;
  *(&v49 + 1) = v10;
  v14 = *(a1 + 224);
  v15 = *(a1 + 232);
  *&v50 = v11;
  *(&v50 + 1) = &off_1016080F0;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v52 = xmmword_10138FDA0;
  *&v53 = v13;
  *(&v53 + 1) = v12;
  *&v54 = v14;
  *(&v54 + 1) = v15;
  v55 = v49;
  v56 = v50;
  v59 = v53;
  v60 = v54;
  v57 = v51;
  v58 = xmmword_10138FDA0;
  sub_100017D5C(v13, v12);
  sub_100017D5C(v14, v15);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177C418);
  sub_1001650CC(&v49, &v42);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  sub_100165128(&v49);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v48 = v20;
    *v19 = 136315138;
    sub_1001650CC(&v49, &v42);
    sub_10107D964();
    v22 = v21;
    v24 = v23;
    sub_100165128(&v49);
    v25 = sub_1000136BC(v22, v24, &v48);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v17, v18, "BAARKProperties %s", v19, 0xCu);
    sub_100007BAC(v20);
  }

  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v42 = v55;
  v43 = v56;
  sub_10016517C();
  v26 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v28 = v27;
  v29 = *(a1 + 152);
  v30 = *(a1 + 144);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v30, v29);
  sub_100017D5C(v26, v28);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.debug.getter();
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  if (os_log_type_enabled(v31, v32))
  {
    v39 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v48 = v38;
    *v39 = 136315138;
    *&v42 = v30;
    *(&v42 + 1) = v29;
    *&v43 = v26;
    *(&v43 + 1) = v28;
    sub_100017D5C(v30, v29);
    sub_100017D5C(v26, v28);
    v33 = String.init<A>(describing:)();
    v35 = sub_1000136BC(v33, v34, &v48);

    *(v39 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v31, v32, "BAARequestPayload %s", v39, 0xCu);
    sub_100007BAC(v38);
  }

  *&v42 = v30;
  *(&v42 + 1) = v29;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  sub_1001651D0();
  v36 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v40, v41);

  sub_100165128(&v49);
  sub_100016590(v30, v29);
  sub_100016590(v26, v28);
  return v36;
}

uint64_t sub_100164FFC(uint64_t a1)
{
  sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);

  return sub_100163570(a1);
}

unint64_t sub_100165078()
{
  result = qword_101698608;
  if (!qword_101698608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698608);
  }

  return result;
}

unint64_t sub_10016517C()
{
  result = qword_101698610;
  if (!qword_101698610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698610);
  }

  return result;
}

unint64_t sub_1001651D0()
{
  result = qword_101698618;
  if (!qword_101698618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698618);
  }

  return result;
}

uint64_t sub_100165328(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_100016590(a2, a3);
  }

  return result;
}

uint64_t sub_10016542C(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_101698630, &unk_10138FF90) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(v1 + v5);

  return sub_10015FC70(a1, v1 + v4, v6, (v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1001654E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100165554(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001655B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016561C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100165668()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A548);
  sub_1000076D4(v0, qword_10177A548);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10016579C()
{
  v1 = 0x656C707061;
  v2 = 0x6579656B776168;
  if (*v0 != 2)
  {
    v2 = 1701602664;
  }

  if (*v0)
  {
    v1 = 0x6E6169727564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001658B8@<X0>(unsigned __int8 *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_10001993C(*a1);
  *a2 = result & 0x10101FF;
  return result;
}

uint64_t sub_1001658F0()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100019E48(v3 | *v0 | v2 | v1);
}

uint64_t SPBeaconGroupStatus.description.getter(uint64_t a1)
{
  result = 0x6574617261706573;
  if (a1 <= 1)
  {
    if (a1 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E75;
  }

  if (a1 == 2)
  {
    return 0x646570756F7267;
  }

  if (a1 == 3)
  {
    return 0x49646570756F7267;
  }

  if (a1 != 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

uint64_t sub_100165AB8()
{
  result = 0x6574617261706573;
  v2 = *v0;
  if (*v0 <= 1)
  {
    if (v2 == 1)
    {
      return result;
    }

    return 0x6E776F6E6B6E75;
  }

  if (v2 == 2)
  {
    return 0x646570756F7267;
  }

  if (v2 == 3)
  {
    return 0x49646570756F7267;
  }

  if (v2 != 4)
  {
    return 0x6E776F6E6B6E75;
  }

  return result;
}

unint64_t sub_100165B80()
{
  result = qword_101698658;
  if (!qword_101698658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698658);
  }

  return result;
}

void *sub_100165BD4(uint8_t a1, char a2, char a3, char a4)
{
  v17 = &_swiftEmptySetSingleton;
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (!a1)
      {
        if (a2)
        {
          sub_100DE9DC0(&v16, 1);
          if ((a3 & 1) == 0)
          {
LABEL_6:
            if ((a4 & 1) == 0)
            {
              return v17;
            }

            goto LABEL_28;
          }
        }

        else if ((a3 & 1) == 0)
        {
          goto LABEL_6;
        }

        sub_100DE9DC0(&v16, 2);
        if (a4)
        {
LABEL_28:
          v12 = 3;
LABEL_38:
          sub_100DE9DC0(&v16, v12);
        }

        return v17;
      }

      if (a2)
      {
        sub_100DE9DC0(&v16, 2);
        if ((a3 & 1) == 0)
        {
LABEL_20:
          if ((a4 & 1) == 0)
          {
            return v17;
          }

          goto LABEL_34;
        }
      }

      else if ((a3 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_100DE9DC0(&v16, 3);
      if ((a4 & 1) == 0)
      {
        return v17;
      }

LABEL_34:
      v12 = 0;
      goto LABEL_38;
    }

    if (a1 == 2)
    {
      if (a2)
      {
        sub_100DE9DC0(&v16, 3);
        if ((a3 & 1) == 0)
        {
LABEL_16:
          if ((a4 & 1) == 0)
          {
            return v17;
          }

          goto LABEL_31;
        }
      }

      else if ((a3 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_100DE9DC0(&v16, 0);
      if ((a4 & 1) == 0)
      {
        return v17;
      }

LABEL_31:
      v12 = 1;
      goto LABEL_38;
    }

    if (a2)
    {
      sub_100DE9DC0(&v16, 0);
      if ((a3 & 1) == 0)
      {
LABEL_24:
        if ((a4 & 1) == 0)
        {
          return v17;
        }

        goto LABEL_37;
      }
    }

    else if ((a3 & 1) == 0)
    {
      goto LABEL_24;
    }

    sub_100DE9DC0(&v16, 1);
    if ((a4 & 1) == 0)
    {
      return v17;
    }

LABEL_37:
    v12 = 2;
    goto LABEL_38;
  }

  if (qword_101694478 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A548);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 16777472;
    v9[4] = a1;
    _os_log_impl(&_mh_execute_header, v7, v8, "illegal selfPart: %hhu!", v9, 5u);
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100165E40()
{
  result = qword_101698668;
  if (!qword_101698668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698668);
  }

  return result;
}

uint64_t sub_100165E94(char a1, char a2, char a3, uint64_t a4)
{
  v4 = 2;
  if (a1)
  {
    v4 = 3;
  }

  v5 = 4;
  if ((a1 & 1) == 0)
  {
    v5 = 1;
  }

  if ((a3 & 1) == 0)
  {
    v4 = v5;
  }

  v6 = 2;
  if (a2)
  {
    v6 = 3;
  }

  v7 = 4;
  if ((a2 & 1) == 0)
  {
    v7 = 1;
  }

  if ((a1 & 1) == 0)
  {
    v6 = v7;
  }

  if (a4)
  {
    v6 = 0;
  }

  if (a4 == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

uint64_t getEnumTagSinglePayload for Type18Status.Multipart(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Type18Status.Multipart(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100165FA4()
{
  result = qword_101698670;
  if (!qword_101698670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698670);
  }

  return result;
}

unint64_t sub_100165FFC()
{
  result = qword_101698678;
  if (!qword_101698678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698678);
  }

  return result;
}

unint64_t sub_100166050()
{
  result = qword_101698680;
  if (!qword_101698680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698680);
  }

  return result;
}

unint64_t sub_1001660A4()
{
  result = qword_101698688;
  if (!qword_101698688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698688);
  }

  return result;
}

uint64_t sub_10016610C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for UUID() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

void sub_1001661F0(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v15 = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = *(*(a4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v10)))));
      sub_100017D5C(v14, *(&v14 + 1));
      a2(&v15, &v14);
      sub_100016590(v14, *(&v14 + 1));
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void *sub_10016632C()
{
  v1 = *(v0 + *(type metadata accessor for OwnerSharingCircle(0) + 32));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1003A85FC(*(v1 + 16), 0);
  type metadata accessor for UUID();
  v4 = sub_1003CC2CC();

  sub_1000128F8(v6);
  if (v4 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_10016642C()
{
  v1 = *(v0 + *(type metadata accessor for MemberSharingCircle(0) + 36));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1003A85FC(*(v1 + 16), 0);
  type metadata accessor for UUID();
  v4 = sub_1003CC2CC();

  sub_1000128F8(v6);
  if (v4 != v2)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10016652C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A560);
  sub_1000076D4(v0, qword_10177A560);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001665B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v12;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  v9 = type metadata accessor for UUID();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_100166680, 0, 0);
}

uint64_t sub_100166680()
{
  v64 = v0;
  v1 = v0[9];
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      sub_1000035D0((v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
      v2 = swift_task_alloc();
      v0[18] = v2;
      *v2 = v0;
      v2[1] = sub_100166DF4;
      v4 = v0[11];
      v3 = v0[12];

      return sub_10018F2A8(v4, v3);
    }

    sub_100111BE4();
    v9 = swift_allocError();
    *v10 = 2;
    swift_willThrow();
    if (qword_101694480 != -1)
    {
LABEL_52:
      swift_once();
    }

    v11 = v0[16];
    v12 = v0[17];
    v13 = v0[15];
    v14 = v0[11];
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177A560);
    (*(v11 + 16))(v12, v14, v13);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[16];
    v20 = v0[17];
    v21 = v0[15];
    if (v18)
    {
      v22 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v63 = v61;
      *v22 = 141558531;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v19 + 8))(v20, v21);
      v26 = sub_1000136BC(v23, v25, &v63);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2114;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 24) = v27;
      *v59 = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v22, 0x20u);
      sub_10000B3A8(v59, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v61);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v28 = v0[12];
    v62 = v9;
    if ((v28 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
      sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
      Set.Iterator.init(_cocoa:)();
      v29 = v0[2];
      v30 = v0[3];
      v32 = v0[4];
      v31 = v0[5];
      v33 = v0[6];
    }

    else
    {
      v34 = -1 << *(v28 + 32);
      v30 = v28 + 56;
      v32 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v33 = v36 & *(v28 + 56);

      v31 = 0;
    }

    v37 = (v32 + 64) >> 6;
    v38 = _swiftEmptyDictionarySingleton;
    for (i = v29; ; v29 = i)
    {
      if (v29 < 0)
      {
        v43 = __CocoaSet.Iterator.next()();
        if (!v43 || (v0[8] = v43, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v42 = v0[7], v9 = v31, v41 = v33, !v42))
        {
LABEL_42:
          v57 = v0[13];
          sub_1000128F8(i);
          v57(0, v38);

          v58 = v0[1];

          return v58();
        }
      }

      else
      {
        v39 = v31;
        v40 = v33;
        v9 = v31;
        if (!v33)
        {
          while (1)
          {
            v9 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              break;
            }

            if (v9 >= v37)
            {
              goto LABEL_42;
            }

            v40 = *(v30 + 8 * v9);
            ++v39;
            if (v40)
            {
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_27:
        v41 = (v40 - 1) & v40;
        v42 = *(*(v29 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v40)))));
        if (!v42)
        {
          goto LABEL_42;
        }
      }

      swift_errorRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v38;
      v45 = sub_1007720C0(v42);
      v47 = v38[2];
      v48 = (v46 & 1) == 0;
      v49 = __OFADD__(v47, v48);
      v50 = v47 + v48;
      if (v49)
      {
        goto LABEL_50;
      }

      v51 = v46;
      if (v38[3] >= v50)
      {
        v53 = v62;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v46)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v56 = v45;
          sub_10100670C();
          v45 = v56;
          v53 = v62;
          v38 = v63;
          if (v51)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_100FE91CC(v50, isUniquelyReferenced_nonNull_native);
        v38 = v63;
        v45 = sub_1007720C0(v42);
        if ((v51 & 1) != (v52 & 1))
        {
          sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v53 = v62;
        if (v51)
        {
LABEL_20:
          *(v38[7] + 8 * v45) = v53;

          goto LABEL_21;
        }
      }

      v38[(v45 >> 6) + 8] |= 1 << v45;
      *(v38[6] + 8 * v45) = v42;
      *(v38[7] + 8 * v45) = v53;
      v54 = v38[2];
      v49 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v49)
      {
        goto LABEL_51;
      }

      v38[2] = v55;
LABEL_21:
      v31 = v9;
      v33 = v41;
    }
  }

  sub_1000035D0((v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[10] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100167594;
  v8 = v0[11];
  v7 = v0[12];

  return sub_100190208(v8, v7);
}

uint64_t sub_100166DF4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100166F9C;
  }

  else
  {
    v2 = sub_100166F08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100166F08()
{
  v1 = *(v0 + 104);
  v2 = sub_100908670(_swiftEmptyArrayStorage);
  v1(1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100166F9C()
{
  v55 = v0;
  v1 = v0[19];
  if (qword_101694480 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = sub_1000136BC(v14, v16, &v54);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v50 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v52);
  }

  else
  {
    v18 = v1;

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[12];
  v51 = v0;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v21 = v0[2];
    v22 = v0[3];
    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[6];
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v23 = 0;
  }

  v0 = v18;
  v29 = _swiftEmptyDictionarySingleton;
  for (i = v21; ; v21 = i)
  {
    if (v21 < 0)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34 || (v51[8] = v34, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v33 = v51[7], v1 = v23, v32 = v25, !v33))
      {
LABEL_33:
        v47 = v51[13];
        sub_1000128F8(i);
        v47(0, v29);

        v48 = v51[1];

        return v48();
      }
    }

    else
    {
      v30 = v23;
      v31 = v25;
      v1 = v23;
      if (!v25)
      {
        while (1)
        {
          v1 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v1 >= ((v24 + 64) >> 6))
          {
            goto LABEL_33;
          }

          v31 = *(v22 + 8 * v1);
          ++v30;
          if (v31)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_19:
      v32 = (v31 - 1) & v31;
      v33 = *(*(v21 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v31)))));
      if (!v33)
      {
        goto LABEL_33;
      }
    }

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v29;
    v36 = sub_1007720C0(v33);
    v38 = v29[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_40;
    }

    v42 = v37;
    if (v29[3] < v41)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v46 = v36;
    sub_10100670C();
    v36 = v46;
    v29 = v54;
    if (v42)
    {
LABEL_12:
      *(v29[7] + 8 * v36) = v0;

      goto LABEL_13;
    }

LABEL_29:
    v29[(v36 >> 6) + 8] |= 1 << v36;
    *(v29[6] + 8 * v36) = v33;
    *(v29[7] + 8 * v36) = v0;
    v44 = v29[2];
    v40 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v29[2] = v45;
LABEL_13:
    v23 = v1;
    v25 = v32;
  }

  sub_100FE91CC(v41, isUniquelyReferenced_nonNull_native);
  v29 = v54;
  v36 = sub_1007720C0(v33);
  if ((v42 & 1) == (v43 & 1))
  {
LABEL_28:
    if (v42)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100167594()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1001676A8;
  }

  else
  {
    v2 = sub_1001BE49C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001676A8()
{
  v55 = v0;
  v1 = v0[21];
  if (qword_101694480 != -1)
  {
LABEL_42:
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = v0[11];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177A560);
  (*(v2 + 16))(v3, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v54 = v52;
    *v13 = 141558531;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v11, v12);
    v17 = sub_1000136BC(v14, v16, &v54);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2114;
    swift_errorRetain();
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v19;
    *v50 = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to share beacon: %{private,mask.hash}s, error: %{public}@.", v13, 0x20u);
    sub_10000B3A8(v50, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v52);
  }

  else
  {
    v18 = v1;

    (*(v10 + 8))(v11, v12);
  }

  v20 = v0[12];
  v51 = v0;
  if ((v20 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
    sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
    Set.Iterator.init(_cocoa:)();
    v21 = v0[2];
    v22 = v0[3];
    v24 = v0[4];
    v23 = v0[5];
    v25 = v0[6];
  }

  else
  {
    v26 = -1 << *(v20 + 32);
    v22 = v20 + 56;
    v24 = ~v26;
    v27 = -v26;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v25 = v28 & *(v20 + 56);

    v23 = 0;
  }

  v0 = v18;
  v29 = _swiftEmptyDictionarySingleton;
  for (i = v21; ; v21 = i)
  {
    if (v21 < 0)
    {
      v34 = __CocoaSet.Iterator.next()();
      if (!v34 || (v51[8] = v34, sub_100008BB8(0, &qword_101698D00, SPHandle_ptr), swift_dynamicCast(), v33 = v51[7], v1 = v23, v32 = v25, !v33))
      {
LABEL_33:
        v47 = v51[13];
        sub_1000128F8(i);
        v47(0, v29);

        v48 = v51[1];

        return v48();
      }
    }

    else
    {
      v30 = v23;
      v31 = v25;
      v1 = v23;
      if (!v25)
      {
        while (1)
        {
          v1 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          if (v1 >= ((v24 + 64) >> 6))
          {
            goto LABEL_33;
          }

          v31 = *(v22 + 8 * v1);
          ++v30;
          if (v31)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

LABEL_19:
      v32 = (v31 - 1) & v31;
      v33 = *(*(v21 + 48) + ((v1 << 9) | (8 * __clz(__rbit64(v31)))));
      if (!v33)
      {
        goto LABEL_33;
      }
    }

    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v29;
    v36 = sub_1007720C0(v33);
    v38 = v29[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_40;
    }

    v42 = v37;
    if (v29[3] < v41)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v46 = v36;
    sub_10100670C();
    v36 = v46;
    v29 = v54;
    if (v42)
    {
LABEL_12:
      *(v29[7] + 8 * v36) = v0;

      goto LABEL_13;
    }

LABEL_29:
    v29[(v36 >> 6) + 8] |= 1 << v36;
    *(v29[6] + 8 * v36) = v33;
    *(v29[7] + 8 * v36) = v0;
    v44 = v29[2];
    v40 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (v40)
    {
      goto LABEL_41;
    }

    v29[2] = v45;
LABEL_13:
    v23 = v1;
    v25 = v32;
  }

  sub_100FE91CC(v41, isUniquelyReferenced_nonNull_native);
  v29 = v54;
  v36 = sub_1007720C0(v33);
  if ((v42 & 1) == (v43 & 1))
  {
LABEL_28:
    if (v42)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

void sub_100167FB8(char a1, uint64_t a2, uint64_t a3)
{
  sub_100008BB8(0, &qword_101698D00, SPHandle_ptr);
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  sub_100009CC8(&qword_101698E28, &qword_101698D00, SPHandle_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, a1 & 1, isa);
}

uint64_t sub_100168094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100168158, 0, 0);
}

uint64_t sub_100168158()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100168208;
  v2 = v0[3];

  return sub_1001986AC(v2);
}

uint64_t sub_100168208()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10016831C;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016831C()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove share: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100168658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10016871C, 0, 0);
}

uint64_t sub_10016871C()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1001687CC;
  v2 = v0[7];

  return sub_1001993A0(v2);
}

uint64_t sub_1001687CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1001688E0;
  }

  else
  {
    v2 = sub_1001BE454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001688E0()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v26);

    *(v11 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to revoke share: %{private,mask.hash}s, error: %{public}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[14];
  v23 = v0[8];
  swift_errorRetain();
  v23(0, v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100168C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100168CD4, 0, 0);
}

uint64_t sub_100168CD4()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100168D84;
  v2 = v0[3];

  return sub_10019DA84(v2);
}

uint64_t sub_100168D84()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100168E98;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100168E98()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to accept share: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001691D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100169298, 0, 0);
}

uint64_t sub_100169298()
{
  v0[9] = *sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_100169364;
  v2 = v0[3];

  return sub_1003B218C(v2, 0);
}

uint64_t sub_100169364()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001696F0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_1001694D8;
    v4 = v2[3];

    return sub_100187710(v4);
  }
}

uint64_t sub_1001694D8()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_1001695E8, v1, 0);
}

uint64_t sub_1001695E8()
{
  type metadata accessor for Transaction();
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  return _swift_task_switch(sub_1001BE450, 0, 0);
}

uint64_t sub_1001696F0()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to decline share: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[11];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_100169A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_100169AF0, 0, 0);
}

uint64_t sub_100169AF0()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100169BA0;
  v2 = v0[3];

  return sub_10019E338(v2);
}

uint64_t sub_100169BA0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100169D28;
  }

  else
  {
    v2 = sub_100169CB4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100169CB4()
{
  (*(v0 + 32))(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100169D28()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Stop share with beaconIdentifier: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10016A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  return _swift_task_switch(sub_10016A088, 0, 0);
}

uint64_t sub_10016A088()
{
  sub_1000035D0((v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[3] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10016A138;
  v2 = v0[4];

  return sub_10019F7B4(v2);
}

uint64_t sub_10016A138()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10016A2B8;
  }

  else
  {
    v2 = sub_10016A24C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016A24C()
{
  (*(v0 + 40))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016A2B8()
{
  v17 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136446466;
    v0[2] = v4;
    type metadata accessor for SPShareType(0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v16);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v11;
    *v6 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to force break all shares of types: %{public}s, error: %{public}@.", v5, 0x16u);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v7);
  }

  v12 = v0[8];
  v13 = v0[5];
  swift_errorRetain();
  v13(0, v12);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10016A52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016A550, 0, 0);
}

uint64_t sub_10016A550()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10016A600;
  v2 = v0[3];

  return sub_1001A19A0(v2);
}

uint64_t sub_10016A600()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10016A714;
  }

  else
  {
    v2 = sub_1001BE46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016A714()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = [v6 destination];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000136BC(v11, v13, &v20);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to force break all shares with user: %{private,mask.hash}s, error: %{public}@.", v7, 0x20u);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v9);
  }

  v16 = v0[7];
  v17 = v0[4];
  swift_errorRetain();
  v17(0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10016A9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016AA88, 0, 0);
}

uint64_t sub_10016AA88()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10016AB38;
  v2 = v0[3];

  return sub_1001A455C(v2);
}

uint64_t sub_10016AB38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10016AC4C;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016AC4C()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to force decline shareIdentifier: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10016AF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016AFAC, 0, 0);
}

uint64_t sub_10016AFAC()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = type metadata accessor for BeaconSharingService(0);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_10016B0E8;
  v3 = v0[3];

  return (sub_1001B79C4)(v3, v1, &off_101610E30);
}

uint64_t sub_10016B0E8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10016B268;
  }

  else
  {
    v2 = sub_10016B1FC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016B1FC()
{
  (*(v0 + 32))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016B268()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to cleanupAll(recordsType:completion:), error: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[7];
  v8 = v0[4];

  swift_errorRetain();
  v8(0, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10016B460(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a7;
  v19[7] = v17;
  v20 = a1;
  sub_10025EDD4(0, 0, v15, a8, v19);
}

uint64_t sub_10016B5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016B668, 0, 0);
}

uint64_t sub_10016B668()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10016B718;
  v2 = v0[3];

  return sub_1001A4B04(v2);
}

uint64_t sub_10016B718()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10016B82C;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016B82C()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "                        Failed to force stop sharing beaconIdentifier: %{private,mask.hash}s,\n                        error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10016BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016BB8C, 0, 0);
}

uint64_t sub_10016BB8C()
{
  sub_1000035D0((*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10016BC40;

  return sub_1001A6AA0(0, 0, 1);
}

uint64_t sub_10016BC40(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1001BE448, 0, 0);
}

void sub_10016BD7C(uint64_t a1, uint64_t a2)
{
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009CC8(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_10016BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016BE50, 0, 0);
}

uint64_t sub_10016BE50()
{
  sub_1000035D0((*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 32) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10016BF04;

  return sub_1001A6AA0(1, 0, 1);
}

uint64_t sub_10016BF04(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10016C004, 0, 0);
}

uint64_t sub_10016C004()
{
  (*(v0 + 16))(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016C0B4(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a6;
  v17[5] = v15;
  v17[6] = a1;
  v18 = a1;
  sub_10025EDD4(0, 0, v13, a7, v17);
}

uint64_t sub_10016C314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for UUID();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return _swift_task_switch(sub_10016C3D8, 0, 0);
}

uint64_t sub_10016C3D8()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_10016C488;
  v2 = v0[3];

  return sub_10019C574(v2);
}

uint64_t sub_10016C488()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10016C59C;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016C59C()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to request unknown beacon: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10016C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_10016C8FC, 0, 0);
}

uint64_t sub_10016C8FC()
{
  sub_1000035D0((v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[2] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_10016C9AC;
  v2 = v0[3];

  return sub_10018A968(v2);
}

uint64_t sub_10016C9AC()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_10016CAC0;
  }

  else
  {
    v2 = sub_1001BE46C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016CAC0()
{
  v16 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v4 = 141558531;
    *(v4 + 4) = 1752392040;
    *(v4 + 12) = 2081;
    type metadata accessor for UUID();
    v7 = Array.description.getter();
    v9 = sub_1000136BC(v7, v8, &v15);

    *(v4 + 14) = v9;
    *(v4 + 22) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 24) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to update circle identifiers: %{private,mask.hash}s, error: %{public}@.", v4, 0x20u);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v6);
  }

  v11 = v0[7];
  v12 = v0[4];
  swift_errorRetain();
  v12(0, v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_10016CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 113) = a6;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10016CF50, 0, 0);
}

uint64_t sub_10016CF50()
{
  sub_1000035D0((*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 40) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_10016D004;
  v2 = *(v0 + 113);
  v3 = *(v0 + 48);

  return sub_100193A94(v3, v2);
}

uint64_t sub_10016D004()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_10016D18C;
  }

  else
  {
    v2 = sub_10016D118;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016D118()
{
  (*(v0 + 56))(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016D18C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 48);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = *(v0 + 72);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v30);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to upload keys for circle identifier: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v29);
  }

  else
  {
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 72);

    (*(v19 + 8))(v18, v20);
  }

  *(v0 + 16) = *(v0 + 104);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  v21 = swift_dynamicCast();
  v22 = *(v0 + 56);
  if (v21)
  {
    v23 = *(v0 + 112);
    sub_1001BAEE0();
    v24 = swift_allocError();
    *v25 = v23;
    v22(0, v24);
  }

  else
  {
    type metadata accessor for SPBeaconSharingError(0);
    *(v0 + 32) = 3;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1001B8FE4(&qword_101696340, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v26 = *(v0 + 24);
    v22(0, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10016D5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 88) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = type metadata accessor for UUID();
  *(v8 + 48) = v9;
  *(v8 + 56) = *(v9 - 8);
  *(v8 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_10016D6A8, 0, 0);
}

uint64_t sub_10016D6A8()
{
  sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_10016D764;
  v2 = *(v0 + 88);
  v3 = *(v0 + 24);

  return sub_1001948A8(v3, v2, 0, 1);
}

uint64_t sub_10016D764()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_10016D878;
  }

  else
  {
    v2 = sub_1001BE450;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10016D878()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_1000136BC(v13, v15, &v26);

    *(v11 + 14) = v16;
    *(v11 + 22) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v17;
    *v12 = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to download keys for circle identifier: %{private,mask.hash}s, error: %{public}@.", v11, 0x20u);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v25);
  }

  else
  {
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[6];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[10];
  v22 = v0[4];
  swift_errorRetain();
  v22(0, v21);

  v23 = v0[1];

  return v23();
}

uint64_t sub_10016DBD0(void *a1, uint64_t a2, uint64_t a3, int a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a7;
  v34 = a4;
  v35 = a8;
  v36 = a9;
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v32 = &v31 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v18 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v31 - v19;
  v21 = _Block_copy(a5);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  (*(v15 + 16))(v18, v20, v14);
  v24 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v25 = v24 + v16;
  v26 = (v24 + v16) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a1;
  (*(v15 + 32))(&v27[v24], v18, v14);
  v27[v25] = v34;
  v28 = &v27[v26];
  *(v28 + 1) = v35;
  *(v28 + 2) = v22;
  v29 = a1;

  sub_10025EDD4(0, 0, v32, v36, v27);

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_10016DE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_10016DF18;

  return sub_1003C08B8(a5);
}

uint64_t sub_10016DF18(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_10016E0CC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_10016E040;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016E040()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v1;
  v2(1, v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10016E0CC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to check data integrity, error: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[5];
  v8 = v0[2];

  swift_errorRetain();
  v8(0, 0, v7);

  v9 = v0[1];

  return v9();
}

void sub_10016E598(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1 & 1, a2);
}

uint64_t sub_10016E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  type metadata accessor for CheckDataIntegrityUseCase();
  swift_allocObject();
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_10016E6C0;

  return sub_100111F58();
}

uint64_t sub_10016E6C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 40) = a1;

  if (v1)
  {
    *(v3 + 72) = v1;

    return _swift_task_switch(sub_10016EA5C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v3 + 48) = v5;
    *v5 = v4;
    v5[1] = sub_10016E844;

    return sub_1001173F8();
  }
}

uint64_t sub_10016E844(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_10016E9EC;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_10016E974;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016E974()
{
  v1 = *(v0 + 64);
  (*(v0 + 16))(1, v1, 0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016E9EC()
{

  *(v0 + 72) = *(v0 + 56);

  return _swift_task_switch(sub_10016EA5C, 0, 0);
}

uint64_t sub_10016EA5C()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to look for orphaned records, error: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  v7 = v0[9];
  v8 = v0[2];

  v9 = objc_allocWithZone(SPOrphanedRecordsResult);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = [v9 initWithRecordsInfo:isa];

  swift_errorRetain();
  v8(0, v11, v7);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10016ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10016ECC8, 0, 0);
}

uint64_t sub_10016ECC8()
{
  sub_1000035D0((*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(*(v0 + 16) + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_10016ED70;

  return sub_100181BBC();
}

uint64_t sub_10016ED70()
{

  return _swift_task_switch(sub_10016EE6C, 0, 0);
}

uint64_t sub_10016EE6C()
{
  (*(v0 + 24))(1, 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016EF14(void *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(a3);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = a6;
  v17[6] = v15;
  v18 = a1;
  sub_10025EDD4(0, 0, v13, a7, v17);
}

uint64_t sub_10016F054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(sub_10016F074, 0, 0);
}

uint64_t sub_10016F074()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  *(v0 + 40) = qword_10177B348;

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_10016F174;

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_10016F174()
{

  return _swift_task_switch(sub_10016F28C, 0, 0);
}

uint64_t sub_10016F28C()
{
  v1 = v0[2];
  result = sub_101074A20(v1);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  v4 = sub_101074D18(v1);

  if (v4 < 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = v0[3];
  v6 = [objc_allocWithZone(SPBeaconSharingLimits) initWithMaxCircleMembers:v3 maxDelegatedShares:v4];
  v5();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10016F48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_10016F4B0, 0, 0);
}

uint64_t sub_10016F4B0()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_10016F560;
  v2 = v0[7];

  return sub_100191044(v2);
}

uint64_t sub_10016F560(char a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_10016F6F8;
  }

  else
  {
    *(v4 + 96) = a1 & 1;
    v5 = sub_10016F68C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10016F68C()
{
  (*(v0 + 64))(*(v0 + 96), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10016F6F8()
{
  v21 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v8 = [v6 inputUrl];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, &v20);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v20);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to import url: %{private,mask.hash}s,\nerror: %{public}s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  v16 = v0[11];
  v17 = v0[8];
  swift_errorRetain();
  v17(0, v16);

  v18 = v0[1];

  return v18();
}

uint64_t sub_10016F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return _swift_task_switch(sub_10016F9C4, 0, 0);
}

uint64_t sub_10016F9C4()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10016FAC8;
  v5 = v0[7];

  return sub_1001914DC(v5, sub_1001BC1E4, v3);
}

uint64_t sub_10016FAC8()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10016FC18, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10016FC18()
{
  v19 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v8 = [v6 inputUrl];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1000136BC(v9, v11, &v18);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2082;
    swift_getErrorValue();
    v13 = Error.localizedDescription.getter();
    v15 = sub_1000136BC(v13, v14, &v18);

    *(v7 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to import url: %{private,mask.hash}s,\nerror: %{public}s.", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_10016FEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_10016FF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_10016FFDC, 0, 0);
}

uint64_t sub_10016FFDC()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100170090;
  v2 = v0[7];

  return sub_100191968(v2, 0);
}

uint64_t sub_100170090()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100170218;
  }

  else
  {
    v2 = sub_1001701A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001701A4()
{
  (*(v0 + 64))(1, 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100170218()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177A560);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[11];
    v8 = v0[12];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v26);

    *(v11 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to remove imported share: %{private,mask.hash}s,\nerror: %{public}s.", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[14];
  v23 = v0[8];
  swift_errorRetain();
  v23(0, v22);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100170548(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v28[1] = a6;
  v10 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v17 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = v28 - v18;
  v20 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v14 + 16))(v17, v19, v13);
  v23 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = a1;
  (*(v14 + 32))(&v24[v23], v17, v13);
  v25 = &v24[(v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v29;
  v25[1] = v21;
  v26 = a1;

  sub_10025EDD4(0, 0, v12, v30, v24);

  return (*(v14 + 8))(v19, v13);
}

uint64_t sub_1001707D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100170898, 0, 0);
}

uint64_t sub_100170898()
{
  v1 = v0[8];
  v2 = v0[9];
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10017099C;
  v5 = v0[7];

  return sub_100191F2C(v5, sub_1001BBFA4, v3);
}

uint64_t sub_10017099C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100170B00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100170B00()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to create delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_100170E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100170EC8, 0, 0);
}

uint64_t sub_100170EC8()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100170F7C;
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  return sub_10019260C(v4, v2, v3);
}

uint64_t sub_100170F7C()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1001710B8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1001710B8()
{
  v22 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000136BC(v12, v14, &v21);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v21);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get status of the delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001713BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v7[13] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();

  return _swift_task_switch(sub_100171514, 0, 0);
}

uint64_t sub_100171514()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1001715C8;
  v2 = v0[16];
  v3 = v0[7];

  return sub_100192E2C(v2, v3);
}

uint64_t sub_1001715C8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1001717F0;
  }

  else
  {
    v2 = sub_1001716DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001716DC()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[8];
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v5(v4, 0);
  sub_10000B3A8(v4, &unk_101696AC0, &qword_101390A60);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001717F0()
{
  v25 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000136BC(v12, v14, &v24);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v24);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get status of the delegation for beacon: %{private,mask.hash}s, error: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  v19 = v0[18];
  v20 = v0[13];
  v21 = v0[8];
  (*(v0[15] + 56))(v20, 1, 1, v0[14]);
  swift_errorRetain();
  v21(v20, v19);

  sub_10000B3A8(v20, &unk_101696AC0, &qword_101390A60);

  v22 = v0[1];

  return v22();
}

void sub_100171B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  sub_1000D2A70(a1, &v15 - v7, &unk_101696AC0, &qword_101390A60);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v12 = v13;
    (*(v10 + 8))(v8, v9);
  }

  if (a2)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  (*(a3 + 16))(a3, v12, v14);
}

uint64_t sub_100171CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = type metadata accessor for UUID();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100171D78, 0, 0);
}

uint64_t sub_100171D78()
{
  sub_1000035D0((v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation), *(v0[6] + OBJC_IVAR____TtC12searchpartyd23BeaconSharingTrampoline_implementation + 24));
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_100171E28;
  v2 = v0[7];

  return sub_1001933C0(v2);
}

uint64_t sub_100171E28()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100171F3C;
  }

  else
  {
    v2 = sub_1001BE454;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100171F3C()
{
  v24 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177A560);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[10];
    v9 = v0[7];
    v10 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v10 = 141558531;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2081;
    v11 = [v9 beaconIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v7 + 8))(v6, v8);
    v15 = sub_1000136BC(v12, v14, &v23);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2082;
    swift_getErrorValue();
    v16 = Error.localizedDescription.getter();
    v18 = sub_1000136BC(v16, v17, &v23);

    *(v10 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to stop location share for beacon: %{private,mask.hash}s, error: %{public}s.", v10, 0x20u);
    swift_arrayDestroy();
  }

  v19 = v0[14];
  v20 = v0[8];
  swift_errorRetain();
  v20(0, v19);

  v21 = v0[1];

  return v21();
}

uint64_t sub_100172254(void *a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a7;
  v19[7] = v17;
  v20 = a3;
  v21 = a1;
  sub_10025EDD4(0, 0, v15, a8, v19);
}

id sub_1001723CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_10017244C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001724C0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100172514@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1016081D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100172588()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100172628()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177A578);
  v1 = sub_1000076D4(v0, qword_10177A578);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177A560);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001726F0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = type metadata accessor for UUID();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v2[6] = *(v5 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for OwnerSharingCircle(0);
  v2[10] = v6;
  v2[11] = *(v6 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100172854, a2, 0);
}

uint64_t sub_100172854()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[13] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);

  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1001729B0;
  v9 = v0[8];
  v8 = v0[9];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B0, v6, v9);
}

uint64_t sub_1001729B0()
{

  return _swift_task_switch(sub_100172AC8, 0, 0);
}

uint64_t sub_100172AC8()
{
  v1 = v0[11];
  v2 = v0[9];
  if ((*(v1 + 48))(v2, 1, v0[10]) == 1)
  {
    sub_10000B3A8(v2, &unk_1016AFA00, &qword_10138C4D0);
    v10 = sub_1003B7584;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_100172CA0;
    v4 = v0[2];
  }

  else
  {
    v5 = v0[12];
    sub_1001BAAE8(v2, v5, type metadata accessor for OwnerSharingCircle);
    sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
    v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v7 = swift_allocObject();
    v0[16] = v7;
    *(v7 + 16) = xmmword_101385D80;
    sub_1001BB2E0(v5, v7 + v6, type metadata accessor for OwnerSharingCircle);
    v10 = sub_1003B64C0;
    v8 = swift_task_alloc();
    v0[17] = v8;
    *v8 = v0;
    v8[1] = sub_100172DF0;
    v4 = v7;
  }

  return v10(v4);
}

uint64_t sub_100172CA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100172DF0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100172FB8;
  }

  else
  {
    v2 = sub_100172F20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100172F20()
{
  sub_1001BA80C(*(v0 + 96), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100172FB8()
{
  sub_1001BA80C(*(v0 + 96), type metadata accessor for OwnerSharingCircle);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100173058()
{
  v1[4] = v0;
  v2 = sub_1000BC4D4(&qword_101698D90, &qword_101390930);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1000BC4D4(&qword_101698D98, &qword_101390938);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1001731C4, v0, 0);
}

uint64_t sub_1001731C4()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BeaconSharingService: Starting up.", v4, 2u);
  }

  v5 = v0[11];
  v6 = v0[4];

  sub_100187B94();
  v7 = *(v6 + 192);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_1001B8FE4(&qword_101698BB8, type metadata accessor for BeaconSharingService, &unk_1013906B0);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v9;
  v10[4] = v7;
  v10[5] = v6;
  swift_retain_n();

  sub_10025EDD4(0, 0, v5, &unk_101390948, v10);

  v11 = *(v6 + 136);
  v0[12] = v11;

  return _swift_task_switch(sub_1001733D4, v11, 0);
}

uint64_t sub_1001733D4()
{
  v1 = *(v0 + 32);
  *(v0 + 104) = sub_100A96C40();

  return _swift_task_switch(sub_100173448, v1, 0);
}

uint64_t sub_100173448()
{
  v7 = v0[12];
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[4];
  v0[2] = v0[13];
  sub_1000BC4D4(&qword_101698DA0, &unk_101390950);
  sub_1000041A4(&qword_101698DA8, &qword_101698DA0, &unk_101390950, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  sub_1000041A4(&unk_101698DB0, &qword_101698D98, &qword_101390938, &protocol conformance descriptor for Publishers.Filter<A>);

  v5 = Publisher<>.sink(receiveValue:)();

  (*(v1 + 8))(v2, v3);
  *(v4 + 224) = v5;

  return _swift_task_switch(sub_1001735F0, v7, 0);
}

uint64_t sub_1001735F0()
{
  v1 = v0[4];
  v0[14] = *(*(v0[12] + 128) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_recordDeletedPublisher);

  return _swift_task_switch(sub_100173678, v1, 0);
}

uint64_t sub_100173678()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v0[3] = v0[14];
  sub_1000BC4D4(&qword_1016B2880, &qword_1013CAF30);
  sub_1000041A4(&qword_101698DC0, &qword_1016B2880, &qword_1013CAF30, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.filter(_:)();

  sub_1000041A4(&qword_101698DC8, &qword_101698D90, &qword_101390930, &protocol conformance descriptor for Publishers.Filter<A>);

  v5 = Publisher<>.sink(receiveValue:)();

  (*(v2 + 8))(v1, v4);
  v3[29] = v5;

  type metadata accessor for StateCapture();
  swift_allocObject();

  v3[33] = StateCapture.init(_:)();

  v6 = v3[18];
  v0[15] = v6;

  return _swift_task_switch(sub_100173868, v6, 0);
}

uint64_t sub_100173868()
{
  v4 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_100173934;
  v2 = *(v0 + 120);

  return v4(&unk_101390970, v2);
}

uint64_t sub_100173934()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_100173A68(uint64_t a1)
{
  v22 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v22);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SharedBeaconRecord(0);
  __chkstk_darwin(v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharingCircleSecret(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001F280(a1, v23);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  if (swift_dynamicCast())
  {
    v15 = type metadata accessor for MemberSharingCircle;
    v16 = v14;
LABEL_9:
    sub_1001BA80C(v16, v15);
    return 1;
  }

  sub_10001F280(a1, v23);
  if (swift_dynamicCast())
  {
    v15 = type metadata accessor for SharingCircleSecret;
    v16 = v11;
    goto LABEL_9;
  }

  sub_10001F280(a1, v23);
  if (swift_dynamicCast())
  {
    v15 = type metadata accessor for SharedBeaconRecord;
    v16 = v8;
    goto LABEL_9;
  }

  sub_10001F280(a1, v23);
  if (swift_dynamicCast())
  {
    v15 = type metadata accessor for OwnerSharingCircle;
    v16 = v5;
    goto LABEL_9;
  }

  sub_10001F280(a1, v23);
  v18 = v21;
  result = swift_dynamicCast();
  if (result)
  {
    v19 = result;
    sub_1001BA80C(v18, type metadata accessor for LostModeRecord);
    return v19;
  }

  return result;
}

uint64_t sub_100173DAC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100174A54(a2);
}

uint64_t sub_100173E48(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for OwnerSharingCircle(0);
  __chkstk_darwin(v5);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10001F280(a1, v11);
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  if (swift_dynamicCast())
  {
    sub_1001BA80C(v7, type metadata accessor for OwnerSharingCircle);
    return 1;
  }

  else
  {
    sub_10001F280(a1, v11);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = result;
      sub_1001BA80C(v4, type metadata accessor for LostModeRecord);
      return v9;
    }
  }

  return result;
}

uint64_t sub_100173FC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t), uint64_t a5, uint64_t a6)
{
  type metadata accessor for Transaction();
  sub_10001F280(a1, v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  a4(v11, v9 + 24);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_100174088(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_10017B5C4(a2);
}

uint64_t sub_100174124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for StateCaptureDateType();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3[9] = swift_task_alloc();
  v6 = type metadata accessor for StateCaptureHintAPI();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001742C0, a3, 0);
}

uint64_t sub_1001742C0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  StateCaptureHint.api.getter();
  (*(v4 + 104))(v2, enum case for StateCaptureHintAPI.request(_:), v3);
  sub_1001B8FE4(&qword_101698DD0, &type metadata accessor for StateCaptureHintAPI, &protocol conformance descriptor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  if (*(v0 + 136) == *(v0 + 140))
  {
    v6 = *(v0 + 72);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_100174580;
    v9 = *(v0 + 72);

    return sub_1003C08B8(v9);
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = type metadata accessor for StateCaptureStateData();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_100174580(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v5 = *(v3 + 72);
  v6 = *(v3 + 40);
  sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);
  if (v1)
  {
    v7 = sub_100174998;
  }

  else
  {
    v7 = sub_10017470C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10017470C()
{
  v1 = objc_opt_self();
  sub_100B9B76C();
  sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v3 = [v1 dataWithPropertyList:isa format:200 options:0 error:v0 + 16];

  v4 = *(v0 + 16);
  v5 = *(v0 + 120);
  if (v3)
  {
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 104))(v6, enum case for StateCaptureDateType.serialized(_:), v8);
    StateCaptureStateData.init(type:title:data:)();

    v9 = *(v0 + 24);
    v10 = type metadata accessor for StateCaptureStateData();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100174998()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100174A54(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for Date();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = type metadata accessor for OwnerSharingCircle(0);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for SharedBeaconRecord(0);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = sub_1000BC4D4(&unk_101698BC0, &qword_10138C440);
  v2[47] = swift_task_alloc();
  v4 = type metadata accessor for SharingCircleSecret(0);
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[53] = v5;
  v6 = *(v5 - 8);
  v2[54] = v6;
  v2[55] = *(v6 + 64);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v7 = type metadata accessor for MemberSharingCircle(0);
  v2[58] = v7;
  v2[59] = *(v7 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = type metadata accessor for MemberPeerTrust(0);
  v2[64] = swift_task_alloc();
  v2[65] = type metadata accessor for OwnerPeerTrust(0);
  v2[66] = swift_task_alloc();
  v2[67] = type metadata accessor for LostModeRecord(0);
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();

  return _swift_task_switch(sub_100174E6C, v1, 0);
}

uint64_t sub_100174E6C()
{
  v1 = qword_101698690;
  *(v0 + 576) = qword_101698690;
  v2 = v1 + 1;
  if (v1 == -1)
  {
    __break(1u);
    return daemon.getter();
  }

  v3 = *(v0 + 208);
  if (v2 >= 0x3E8)
  {
    v2 = 1;
  }

  qword_101698690 = v2;
  sub_10001F280(v3, v0 + 16);
  sub_1000BC4D4(&unk_101698D60, &unk_1013A37E0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 544);
    v5 = *(v0 + 536);
    sub_1001BAAE8(*(v0 + 552), v4, type metadata accessor for LostModeRecord);
    v6 = *(v5 + 24);
    v7 = swift_task_alloc();
    *(v0 + 584) = v7;
    *v7 = v0;
    v7[1] = sub_100175650;

    return sub_1001896BC(v4 + v6);
  }

  v9 = type metadata accessor for OwnerPeerTrust;
  if (swift_dynamicCast())
  {
    v10 = (v0 + 528);
LABEL_12:
    v11 = *v10;
    (*(*(v0 + 432) + 56))(*(v0 + 568), 1, 1, *(v0 + 424));
    type metadata accessor for Transaction();
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v1;
    *(v13 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v11, v9);
    v14 = *(v0 + 568);
    v15 = *(v0 + 560);
    v16 = *(v0 + 424);
    v17 = *(v0 + 432);
    sub_100007BAC((v0 + 16));
    sub_1000D2A70(v14, v15, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v18 = *(v0 + 560);
      sub_10000B3A8(*(v0 + 568), &qword_1016980D0, &unk_10138F3B0);
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
LABEL_14:

      v19 = *(v0 + 8);

      return v19();
    }

    (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 560), *(v0 + 424));
    v20 = swift_task_alloc();
    *(v0 + 936) = v20;
    *v20 = v0;
    v20[1] = sub_10017B288;
    v21 = *(v0 + 576);
    v22 = *(v0 + 448);

    return sub_10017FFA4(v22, v21, 0);
  }

  v9 = type metadata accessor for MemberPeerTrust;
  if (swift_dynamicCast())
  {
    v10 = (v0 + 512);
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    v23 = *(v0 + 464);
    v24 = *(v0 + 216);
    sub_1001BAAE8(*(v0 + 496), *(v0 + 488), type metadata accessor for MemberSharingCircle);
    *(v0 + 944) = *(v23 + 28);
    v25 = *(v24 + 136);
    *(v0 + 592) = v25;
    v26 = sub_100175AA0;
LABEL_24:

    return _swift_task_switch(v26, v25, 0);
  }

  if (swift_dynamicCast())
  {
    v27 = *(v0 + 384);
    v28 = *(v0 + 216);
    sub_1001BAAE8(*(v0 + 416), *(v0 + 408), type metadata accessor for SharingCircleSecret);
    *(v0 + 948) = *(v27 + 24);
    v25 = *(v28 + 136);
    *(v0 + 640) = v25;
    v26 = sub_1001761BC;
    goto LABEL_24;
  }

  if (swift_dynamicCast())
  {
    sub_1001BAAE8(*(v0 + 360), *(v0 + 352), type metadata accessor for SharedBeaconRecord);
    v29 = swift_task_alloc();
    *(v0 + 704) = v29;
    *v29 = v0;
    v29[1] = sub_100177080;

    return daemon.getter();
  }

  if (!swift_dynamicCast())
  {
    sub_100007BAC((v0 + 16));
    goto LABEL_14;
  }

  sub_1001BAAE8(*(v0 + 320), *(v0 + 312), type metadata accessor for OwnerSharingCircle);
  v30 = swift_task_alloc();
  *(v0 + 800) = v30;
  *v30 = v0;
  v30[1] = sub_100178AFC;
  v31 = *(v0 + 312);

  return sub_1003C3774(v31);
}

uint64_t sub_100175650()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100175760, v1, 0);
}

uint64_t sub_100175760()
{
  v1 = v0[71];
  v2 = v0[53];
  v3 = v0[54];
  sub_1001BA80C(v0[68], type metadata accessor for LostModeRecord);
  (*(v3 + 56))(v1, 1, 1, v2);
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[53];
  v7 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v4, v5, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v8 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v11 = swift_task_alloc();
    v0[117] = v11;
    *v11 = v0;
    v11[1] = sub_10017B288;
    v12 = v0[72];
    v13 = v0[56];

    return sub_10017FFA4(v13, v12, 0);
  }
}

uint64_t sub_100175AA0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 944);
  v3 = *(v0 + 488);
  v4 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 424);
  v7 = *(v5 + 16);
  *(v0 + 600) = v7;
  *(v0 + 608) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v3 + v2, v6);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v0 + 616) = v9;
  *(v9 + 16) = v1;
  (*(v5 + 32))(v9 + v8, v4, v6);

  v10 = swift_task_alloc();
  *(v0 + 624) = v10;
  v11 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v10 = v0;
  v10[1] = sub_100175C34;

  return unsafeBlocking<A>(context:_:)(v0 + 200, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4BC, v9, v11);
}

uint64_t sub_100175C34()
{
  v1 = *(*v0 + 592);

  return _swift_task_switch(sub_100175D60, v1, 0);
}

uint64_t sub_100175D60()
{
  v1 = v0[27];
  v0[79] = v0[25];
  return _swift_task_switch(sub_100175D84, v1, 0);
}

uint64_t sub_100175D84()
{
  v1 = *(*(v0 + 632) + 16);

  if (!v1)
  {
    sub_1001BA80C(*(v0 + 488), type metadata accessor for MemberSharingCircle);
    sub_100007BAC((v0 + 16));
    goto LABEL_5;
  }

  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 488);
  v5 = *(v0 + 424);
  v6 = *(v0 + 432);
  (*(v0 + 600))(v3, v4 + *(*(v0 + 464) + 24), v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  *(v8 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v4, type metadata accessor for MemberSharingCircle);

  v9 = *(v0 + 568);
  v10 = *(v0 + 560);
  v11 = *(v0 + 424);
  v12 = *(v0 + 432);
  sub_100007BAC((v0 + 16));
  sub_1000D2A70(v9, v10, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v13 = *(v0 + 560);
    sub_10000B3A8(*(v0 + 568), &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
LABEL_5:

    v14 = *(v0 + 8);

    return v14();
  }

  (*(*(v0 + 432) + 32))(*(v0 + 448), *(v0 + 560), *(v0 + 424));
  v16 = swift_task_alloc();
  *(v0 + 936) = v16;
  *v16 = v0;
  v16[1] = sub_10017B288;
  v17 = *(v0 + 576);
  v18 = *(v0 + 448);

  return sub_10017FFA4(v18, v17, 0);
}

uint64_t sub_1001761BC()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 948);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 424);
  v6 = *(v0 + 408);
  v7 = *(v4 + 16);
  *(v0 + 648) = v7;
  *(v0 + 656) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v2, v5);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v0 + 664) = v9;
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v3, v5);

  v10 = swift_task_alloc();
  *(v0 + 672) = v10;
  *v10 = v0;
  v10[1] = sub_100176338;
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);

  return unsafeBlocking<A>(context:_:)(v11, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B4, v9, v12);
}

uint64_t sub_100176338()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100176464, v1, 0);
}

uint64_t sub_100176464()
{
  v1 = v0[58];
  v2 = v0[47];
  if ((*(v0[59] + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &unk_101698BC0, &qword_10138C440);
    v3 = 1;
  }

  else
  {
    v4 = v0[81];
    v5 = v0[71];
    v6 = v0[60];
    v7 = v0[53];
    sub_1001BAAE8(v2, v6, type metadata accessor for MemberSharingCircle);
    v4(v5, v6 + *(v1 + 24), v7);
    sub_1001BA80C(v6, type metadata accessor for MemberSharingCircle);
    v3 = 0;
  }

  v8 = v0[51];
  v9 = v0[49];
  (*(v0[54] + 56))(v0[71], v3, 1, v0[53]);
  sub_1000BC4D4(&qword_101698D88, &qword_101390910);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  v0[85] = v11;
  *(v11 + 16) = xmmword_101385D80;
  sub_1001BB2E0(v8, v11 + v10, type metadata accessor for SharingCircleSecret);
  v12 = swift_task_alloc();
  v0[86] = v12;
  *v12 = v0;
  v12[1] = sub_10017665C;

  return sub_1003C3240(v11);
}

uint64_t sub_10017665C()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = sub_100176A9C;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_100176784;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100176784()
{
  sub_1001BA80C(v0[51], type metadata accessor for SharingCircleSecret);
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[53];
  v4 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v1, v2, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v5, &qword_1016980D0, &unk_10138F3B0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v8 = swift_task_alloc();
    v0[117] = v8;
    *v8 = v0;
    v8[1] = sub_10017B288;
    v9 = v0[72];
    v10 = v0[56];

    return sub_10017FFA4(v10, v9, 0);
  }
}

uint64_t sub_100176A9C()
{
  v33 = v0;

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[51];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for SharingCircleSecret);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[72];
    v7 = v0[50];
    v31 = v0[51];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v8 = 136315907;
    v0[24] = v6;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v7, type metadata accessor for SharingCircleSecret);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v8 + 24) = v16;
    *(v8 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v17;
    *v9 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to backup sharing circle secrets for: %{private,mask.hash}s, error: %{public}@.", v8, 0x2Au);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v18 = v31;
  }

  else
  {
    v20 = v0[50];
    v19 = v0[51];

    sub_1001BA80C(v20, type metadata accessor for SharingCircleSecret);
    v18 = v19;
  }

  sub_1001BA80C(v18, type metadata accessor for SharingCircleSecret);
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[53];
  v24 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v21, v22, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v28 = swift_task_alloc();
    v0[117] = v28;
    *v28 = v0;
    v28[1] = sub_10017B288;
    v29 = v0[72];
    v30 = v0[56];

    return sub_10017FFA4(v30, v29, 0);
  }
}

uint64_t sub_100177080(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[89] = a1;

  v3 = swift_task_alloc();
  v2[90] = v3;
  v4 = type metadata accessor for Daemon();
  v2[91] = v4;
  v5 = type metadata accessor for LegacyServiceContainer();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&unk_101698D70, type metadata accessor for LegacyServiceContainer, &unk_1014015E0);
  *v3 = v9;
  v3[1] = sub_100177260;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100177260(uint64_t a1)
{
  v4 = *v2;
  v4[92] = a1;
  v4[93] = v1;

  if (v1)
  {

    v4[99] = v1;
    v5 = v4[27];
    v6 = sub_1001784FC;
  }

  else
  {
    v6 = sub_1001773A0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1001773A0()
{
  v1 = v0[93];
  sub_10001B108();
  v0[94] = v2;
  v0[95] = v1;
  sub_1001B8FE4(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v5 = sub_100178480;
  }

  else
  {
    v5 = sub_10017747C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10017747C()
{
  v1 = *(v0 + 216);

  return _swift_task_switch(sub_1001774F4, v1, 0);
}

uint64_t sub_1001774F4()
{
  v1 = v0[44];
  v0[10] = v0[41];
  v0[11] = sub_1001B8FE4(&qword_101698D80, type metadata accessor for SharedBeaconRecord, &unk_10140BB3C);
  v2 = sub_1000280DC(v0 + 7);
  sub_1001BB2E0(v1, v2, type metadata accessor for SharedBeaconRecord);

  return _swift_task_switch(sub_1001775C0, 0, 0);
}

uint64_t sub_1001775C0()
{
  v1 = *(v0 + 576);
  v2 = swift_allocObject();
  swift_weakInit();
  sub_10001F280(v0 + 56, v0 + 96);
  v3 = swift_allocObject();
  *(v0 + 768) = v3;
  sub_10000A748((v0 + 96), v3 + 16);
  *(v3 + 56) = v2;
  *(v3 + 64) = v1;
  *(v3 + 72) = 0;
  v4 = swift_task_alloc();
  *(v0 + 776) = v4;
  *v4 = v0;
  v4[1] = sub_1001776F4;

  return withTimeout<A>(_:block:)(v4, 0x40AAD21B3B700000, 3, &unk_101390908, v3, &type metadata for () + 1);
}

uint64_t sub_1001776F4()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_100177E04;
  }

  else
  {

    v2 = sub_100177810;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100177810()
{
  v1 = *(v0 + 216);
  sub_100007BAC((v0 + 56));

  return _swift_task_switch(sub_10017787C, v1, 0);
}

uint64_t sub_10017787C()
{
  v31 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[44];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for SharedBeaconRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[72];
    v7 = v0[43];
    v29 = v0[44];
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315651;
    v0[23] = v6;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = sub_1000136BC(v9, v10, &v30);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v7, type metadata accessor for SharedBeaconRecord);
    v15 = sub_1000136BC(v12, v14, &v30);

    *(v8 + 24) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Fetched product info for shared beacon %{private,mask.hash}s", v8, 0x20u);
    swift_arrayDestroy();

    v16 = v29;
  }

  else
  {
    v18 = v0[43];
    v17 = v0[44];

    sub_1001BA80C(v18, type metadata accessor for SharedBeaconRecord);
    v16 = v17;
  }

  sub_1001BA80C(v16, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[53];
  v22 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v19, v20, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v23 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v23, &qword_1016980D0, &unk_10138F3B0);

    v24 = v0[1];

    return v24();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v26 = swift_task_alloc();
    v0[117] = v26;
    *v26 = v0;
    v26[1] = sub_10017B288;
    v27 = v0[72];
    v28 = v0[56];

    return sub_10017FFA4(v28, v27, 0);
  }
}

uint64_t sub_100177E04()
{
  v1 = *(v0 + 216);

  return _swift_task_switch(sub_100177E70, v1, 0);
}

uint64_t sub_100177E70()
{
  v33 = v0;

  sub_100007BAC(v0 + 7);
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[42];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[72];
    v31 = v0[44];
    v7 = v0[42];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v8 = 136315907;
    v0[22] = v6;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v7, type metadata accessor for SharedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v8 + 24) = v16;
    *(v8 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v17;
    *v9 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for shared beacon %{private,mask.hash}s error = %{public}@!", v8, 0x2Au);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v18 = v31;
  }

  else
  {
    v19 = v0[44];
    v20 = v0[42];

    sub_1001BA80C(v20, type metadata accessor for SharedBeaconRecord);
    v18 = v19;
  }

  sub_1001BA80C(v18, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[53];
  v24 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v21, v22, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v28 = swift_task_alloc();
    v0[117] = v28;
    *v28 = v0;
    v28[1] = sub_10017B288;
    v29 = v0[72];
    v30 = v0[56];

    return sub_10017FFA4(v30, v29, 0);
  }
}

uint64_t sub_100178480()
{

  v0[99] = v0[95];
  v1 = v0[27];

  return _swift_task_switch(sub_1001784FC, v1, 0);
}

uint64_t sub_1001784FC()
{
  v33 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[42];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for SharedBeaconRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[72];
    v31 = v0[44];
    v7 = v0[42];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v8 = 136315907;
    v0[22] = v6;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v32);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2160;
    *(v8 + 14) = 1752392040;
    *(v8 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v7, type metadata accessor for SharedBeaconRecord);
    v16 = sub_1000136BC(v13, v15, &v32);

    *(v8 + 24) = v16;
    *(v8 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 34) = v17;
    *v9 = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Failed to fetch product info for shared beacon %{private,mask.hash}s error = %{public}@!", v8, 0x2Au);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v18 = v31;
  }

  else
  {
    v19 = v0[44];
    v20 = v0[42];

    sub_1001BA80C(v20, type metadata accessor for SharedBeaconRecord);
    v18 = v19;
  }

  sub_1001BA80C(v18, type metadata accessor for SharedBeaconRecord);
  (*(v0[54] + 56))(v0[71], 1, 1, v0[53]);
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[53];
  v24 = v0[54];
  sub_100007BAC(v0 + 2);
  sub_1000D2A70(v21, v22, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[70];
    sub_10000B3A8(v0[71], &qword_1016980D0, &unk_10138F3B0);
    sub_10000B3A8(v25, &qword_1016980D0, &unk_10138F3B0);

    v26 = v0[1];

    return v26();
  }

  else
  {
    (*(v0[54] + 32))(v0[56], v0[70], v0[53]);
    v28 = swift_task_alloc();
    v0[117] = v28;
    *v28 = v0;
    v28[1] = sub_10017B288;
    v29 = v0[72];
    v30 = v0[56];

    return sub_10017FFA4(v30, v29, 0);
  }
}

uint64_t sub_100178AFC()
{
  v2 = *v1;
  *(*v1 + 808) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_100179004;
  }

  else
  {
    v4 = sub_100178C28;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100178C28()
{
  *(v0 + 816) = *(v0 + 808);
  v1 = *(v0 + 312);
  v2 = *(v1 + *(*(v0 + 256) + 28));
  type metadata accessor for DelegatedShareUseCase();
  v3 = sub_10059DE04(v1);
  v4 = *(v0 + 312);
  if (v2 != 3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + 256);
  v6 = *(v4 + *(v5 + 36));
  if (v3)
  {
    if (v6 == 4)
    {
      v7 = *(v5 + 20);
      *(v0 + 952) = v7;
      v8 = swift_task_alloc();
      *(v0 + 824) = v8;
      *v8 = v0;
      v8[1] = sub_100179748;

      return sub_1003C3BD0(v4 + v7);
    }

    goto LABEL_8;
  }

  if (v6 == 4)
  {
LABEL_8:
    v10 = *(v0 + 576);
    type metadata accessor for Transaction();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    *(v12 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v4, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));

    v13 = *(v0 + 8);

    return v13();
  }

  v14 = *(*(v0 + 216) + 136);
  *(v0 + 856) = v14;
  *(v0 + 956) = *(v5 + 20);

  return _swift_task_switch(sub_10017A818, v14, 0);
}

uint64_t sub_100179004()
{
  v43 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 296);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v2, v1, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v2, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v40 = v6;
    v7 = *(v0 + 576);
    log = v5;
    v8 = *(v0 + 304);
    v39 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v9 = 136316419;
    *(v0 + 168) = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v42);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v42);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v39, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v42);

    *(v9 + 44) = v20;
    *(v9 + 52) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 54) = v21;
    *v41 = v21;
    _os_log_impl(&_mh_execute_header, log, v40, "%s Failed to retry apns registration for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v9, 0x3Eu);
    sub_10000B3A8(v41, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 296);
    v22 = *(v0 + 304);

    sub_1001BA80C(v23, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v22, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 816) = 0;
  v24 = *(v0 + 312);
  v25 = *(v24 + *(*(v0 + 256) + 28));
  type metadata accessor for DelegatedShareUseCase();
  v26 = sub_10059DE04(v24);
  v27 = *(v0 + 312);
  if (v25 != 3)
  {
    goto LABEL_13;
  }

  v28 = *(v0 + 256);
  v29 = *(v27 + *(v28 + 36));
  if (v26)
  {
    if (v29 == 4)
    {
      v30 = *(v28 + 20);
      *(v0 + 952) = v30;
      v31 = swift_task_alloc();
      *(v0 + 824) = v31;
      *v31 = v0;
      v31[1] = sub_100179748;

      return sub_1003C3BD0(v27 + v30);
    }

    goto LABEL_13;
  }

  if (v29 == 4)
  {
LABEL_13:
    v33 = *(v0 + 576);
    type metadata accessor for Transaction();
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;
    *(v35 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v27, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));

    v36 = *(v0 + 8);

    return v36();
  }

  v37 = *(*(v0 + 216) + 136);
  *(v0 + 856) = v37;
  *(v0 + 956) = *(v28 + 20);

  return _swift_task_switch(sub_10017A818, v37, 0);
}

uint64_t sub_100179748(char a1)
{
  v2 = *(*v1 + 216);
  *(*v1 + 968) = a1;

  return _swift_task_switch(sub_100179860, v2, 0);
}

void sub_100179860()
{
  v1 = *(v0 + 312);
  if (*(v0 + 968) == 1)
  {
    v2 = *(v0 + 816);
    v3 = *(v0 + 240);
    static Date.trustedNow.getter(*(v0 + 248));
    v4 = objc_autoreleasePoolPush();
    sub_100D148E0(v1, v3);
    objc_autoreleasePoolPop(v4);
    if (!v2)
    {
      v9 = *(v0 + 240);
      v10 = *(v0 + 248);
      v11 = *(v0 + 224);
      v12 = *(v0 + 232);
      Date.timeIntervalSince(_:)();
      v14 = v13;
      v15 = *(v12 + 8);
      v15(v9, v11);
      v15(v10, v11);
      if (v14 <= 86400.0)
      {
        v19 = swift_task_alloc();
        *(v0 + 832) = v19;
        *v19 = v0;
        v19[1] = sub_100179CF0;
        v20 = *(v0 + 312);

        sub_1003C476C(v20, 0, 0, 2);
      }

      else
      {
        v16 = *(v0 + 952);
        v17 = *(v0 + 312);
        v18 = swift_task_alloc();
        *(v0 + 840) = v18;
        *v18 = v0;
        v18[1] = sub_100179E50;

        sub_1003C4D3C(v17 + v16);
      }
    }
  }

  else
  {
    v5 = *(v0 + 576);
    type metadata accessor for Transaction();
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    *(v7 + 32) = 0;

    static Transaction.asyncTask(name:block:)();

    sub_1001BA80C(v1, type metadata accessor for OwnerSharingCircle);
    sub_100007BAC((v0 + 16));

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_100179CF0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = *(v1 + 952);
  v4 = *(v1 + 312);
  v5 = swift_task_alloc();
  *(v1 + 840) = v5;
  *v5 = v2;
  v5[1] = sub_100179E50;

  return sub_1003C4D3C(v4 + v3);
}

uint64_t sub_100179E50()
{
  v2 = *v1;
  *(*v1 + 848) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_10017A214;
  }

  else
  {
    v4 = sub_100179F7C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100179F7C()
{
  v1 = v0[72];
  v2 = v0[39];
  type metadata accessor for Transaction();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v2, type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10017A214()
{
  v35 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v32 = v6;
    v7 = v0[72];
    log = v5;
    v8 = v0[36];
    v31 = v0[35];
    v9 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136316419;
    v0[20] = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v34);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v34);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v31, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v34);

    *(v9 + 44) = v20;
    *(v9 + 52) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 54) = v21;
    *v33 = v21;
    _os_log_impl(&_mh_execute_header, log, v32, "%s Failed to expire delegated circle for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v9, 0x3Eu);
    sub_10000B3A8(v33, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[35];
    v22 = v0[36];

    sub_1001BA80C(v23, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v22, type metadata accessor for OwnerSharingCircle);
  }

  v24 = v0[72];
  v25 = v0[39];
  type metadata accessor for Transaction();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v24;
  *(v27 + 32) = 0;

  static Transaction.asyncTask(name:block:)();

  sub_1001BA80C(v25, type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v28 = v0[1];

  return v28();
}

uint64_t sub_10017A818()
{
  v1 = *(v0 + 956);
  v2 = *(v0 + 856);
  v3 = *(v0 + 456);
  v4 = *(v0 + 432);
  v5 = *(v0 + 424);
  v6 = *(v0 + 312);
  v7 = *(v4 + 16);
  *(v0 + 864) = v7;
  *(v0 + 872) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6 + v1, v5);
  v8 = *(v4 + 80);
  *(v0 + 960) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 880) = v10;
  *(v10 + 16) = v2;
  v11 = *(v4 + 32);
  *(v0 + 888) = v11;
  *(v0 + 896) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v3, v5);

  v12 = swift_task_alloc();
  *(v0 + 904) = v12;
  v13 = sub_1000BC4D4(&qword_1016975F8, &qword_10138C230);
  *v12 = v0;
  v12[1] = sub_10017A9C4;

  return unsafeBlocking<A>(context:_:)(v0 + 136, 0xD000000000000010, 0x800000010134A8C0, sub_1001BB1FC, v10, v13);
}

uint64_t sub_10017A9C4()
{
  v1 = *(*v0 + 856);

  return _swift_task_switch(sub_10017AAF0, v1, 0);
}

uint64_t sub_10017AAF0()
{
  v1 = v0[17];
  v0[114] = v1;
  v2 = swift_task_alloc();
  v0[115] = v2;
  *v2 = v0;
  v2[1] = sub_10017AB9C;

  return sub_1003C3240(v1);
}

uint64_t sub_10017AB9C()
{
  v2 = *v1;
  *(*v1 + 928) = v0;

  v3 = *(v2 + 216);
  if (v0)
  {
    v4 = sub_10017AD3C;
  }

  else
  {
    v4 = sub_10017ACC8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017ACC8()
{

  *(v0 + 964) = *(*(v0 + 256) + 24);

  return _swift_task_switch(sub_10017B13C, 0, 0);
}

uint64_t sub_10017AD3C()
{
  v30 = v0;

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v27 = v6;
    v7 = *(v0 + 576);
    log = v5;
    v8 = *(v0 + 272);
    v26 = *(v0 + 264);
    v9 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v9 = 136316419;
    *(v0 + 144) = v7;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = sub_1000136BC(v10, v11, &v29);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2160;
    *(v9 + 14) = 1752392040;
    *(v9 + 22) = 2081;
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    sub_1001BA80C(v8, type metadata accessor for OwnerSharingCircle);
    v16 = sub_1000136BC(v13, v15, &v29);

    *(v9 + 24) = v16;
    *(v9 + 32) = 2160;
    *(v9 + 34) = 1752392040;
    *(v9 + 42) = 2081;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001BA80C(v26, type metadata accessor for OwnerSharingCircle);
    v20 = sub_1000136BC(v17, v19, &v29);

    *(v9 + 44) = v20;
    *(v9 + 52) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 54) = v21;
    *v28 = v21;
    _os_log_impl(&_mh_execute_header, log, v27, "%s Failed to backup sharing circle secrets for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v9, 0x3Eu);
    sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();
  }

  else
  {
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);

    sub_1001BA80C(v23, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v22, type metadata accessor for OwnerSharingCircle);
  }

  *(v0 + 964) = *(*(v0 + 256) + 24);

  return _swift_task_switch(sub_10017B13C, 0, 0);
}

uint64_t sub_10017B13C()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 888);
  v2 = *(v0 + 960);
  v3 = *(v0 + 456);
  v4 = *(v0 + 424);
  v5 = *(v0 + 216);
  (*(v0 + 864))(v3, *(v0 + 312) + *(v0 + 964), v4);
  v6 = swift_allocObject();
  v1(v6 + ((v2 + 16) & ~v2), v3, v4);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_1001BE498, v5, 0);
}

uint64_t sub_10017B288()
{
  v2 = *v1;

  v3 = *(v2 + 216);
  if (v0)
  {

    v4 = sub_1001BE44C;
  }

  else
  {
    v4 = sub_10017B3C0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017B3C0()
{
  v1 = v0[71];
  (*(v0[54] + 8))(v0[56], v0[53]);
  sub_10000B3A8(v1, &qword_1016980D0, &unk_10138F3B0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10017B5C4(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for LostModeRecord(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for OwnerSharingCircle(0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_10017B6B8, v1, 0);
}

uint64_t sub_10017B6B8()
{
  sub_10001F280(v0[7], (v0 + 2));
  sub_1000BC4D4(&qword_101698D58, &unk_1013908E0);
  if (swift_dynamicCast())
  {
    v1 = v0[15];
    v2 = v0[12];
    sub_1001BAAE8(v0[16], v1, type metadata accessor for OwnerSharingCircle);
    v3 = *(v2 + 20);
    v4 = swift_task_alloc();
    v0[17] = v4;
    *v4 = v0;
    v4[1] = sub_10017B924;

    return sub_1003C4D3C(v1 + v3);
  }

  else if (swift_dynamicCast())
  {
    v6 = v0[10];
    v7 = v0[9];
    sub_1001BAAE8(v0[11], v6, type metadata accessor for LostModeRecord);
    v8 = *(v7 + 24);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *v9 = v0;
    v9[1] = sub_10017BF10;

    return sub_10018B6EC(v6 + v8);
  }

  else
  {
    sub_100007BAC(v0 + 2);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10017B924()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_10017BB18;
  }

  else
  {
    v4 = sub_10017BA50;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017BA50()
{
  sub_1001BA80C(v0[15], type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017BB18()
{
  v27 = v0;
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for OwnerSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for OwnerSharingCircle);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 141559043;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2081;
    type metadata accessor for UUID();
    sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = v8;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v15 = sub_1000136BC(v12, v14, &v26);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2081;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    v19 = sub_1000136BC(v16, v18, &v26);

    *(v11 + 34) = v19;
    *(v11 + 42) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 44) = v20;
    *v24 = v20;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to remove local circle data for: %{private,mask.hash}s, beacon: %{private,mask.hash}s error: %{public}@.", v11, 0x34u);
    sub_10000B3A8(v24, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    v21 = v25;
  }

  else
  {

    sub_1001BA80C(v10, type metadata accessor for OwnerSharingCircle);
    sub_1001BA80C(v9, type metadata accessor for OwnerSharingCircle);
    v21 = v8;
  }

  sub_1001BA80C(v21, type metadata accessor for OwnerSharingCircle);
  sub_100007BAC(v0 + 2);

  v22 = v0[1];

  return v22();
}

uint64_t sub_10017BF10()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10017C020, v1, 0);
}

uint64_t sub_10017C020()
{
  sub_1001BA80C(v0[10], type metadata accessor for LostModeRecord);
  sub_100007BAC(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017C0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v5[4] = swift_task_alloc();

  return _swift_task_switch(sub_10017C188, a4, 0);
}

uint64_t sub_10017C188()
{
  v1 = *(v0 + 24);

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_10017C240, v1, 0);
}

uint64_t sub_10017C240()
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

  sub_1008CE048(0, 0, v2, &unk_1013909B0, v5);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017C364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v7 = sub_1000BC4D4(&qword_101698DE0, &unk_1013EED90);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101698DE8, &qword_1013909C0);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v9 = sub_1000BC4D4(&unk_101698DF0, &qword_1013909C8);
  v5[14] = v9;
  v5[15] = *(v9 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_10017C510, a4, 0);
}

uint64_t sub_10017C510()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  type metadata accessor for Transaction();
  (*(v4 + 104))(v1, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v3);
  (*(v4 + 16))(v2, v1, v3);
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v4 + 8))(v1, v3);

  return _swift_task_switch(sub_10017C630, 0, 0);
}

uint64_t sub_10017C630()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v0[17] = OBJC_IVAR____TtC12searchpartyd20BeaconSharingService_dailySharesCountAnalyticsThrottle;
  v4 = swift_task_alloc();
  v0[18] = v4;
  *v4 = v0;
  v4[1] = sub_10017C718;
  v5 = v0[14];

  return AsyncStream.Iterator.next(isolation:)(v0 + 4, 0, 0, v5);
}

uint64_t sub_10017C718()
{

  return _swift_task_switch(sub_10017C814, 0, 0);
}

uint64_t sub_10017C814()
{
  v1 = v0[4];
  v0[19] = v1;
  if (v1)
  {
    v2 = v0[6];

    return _swift_task_switch(sub_10017C8FC, v2, 0);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v3 = v0[1];

    return v3();
  }
}

void sub_10017C8FC()
{
  v2 = qword_101698690;
  *(v0 + 160) = qword_101698690;
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (v4 >= 0x3E8)
    {
      v4 = 1;
    }

    qword_101698690 = v4;
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_10017C9B0;

    sub_100181BBC();
  }
}

uint64_t sub_10017C9B0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 176) = v3;
  *v3 = v2;
  v3[1] = sub_10017CAF0;

  return sub_10018218C();
}

uint64_t sub_10017CAF0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v2;
  v3[1] = sub_10017CC4C;
  v4 = *(v1 + 160);

  return sub_100182738(v4, 0);
}

uint64_t sub_10017CC4C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 192) = v3;
  *v3 = v2;
  v3[1] = sub_10017CDA8;
  v4 = *(v1 + 160);

  return sub_1001857C8(v4, 0);
}

uint64_t sub_10017CDA8()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10017CEB8, v1, 0);
}

uint64_t sub_10017CEB8()
{
  v1 = v0[6];
  v0[25] = *(v1 + v0[17]);
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v0[26] = v3;
  v0[2] = v2;
  v0[3] = v3;
  v0[27] = swift_allocObject();
  swift_weakInit();

  sub_1000BC4D4(&qword_1016B1270, &qword_101390A00);
  sub_1000041A4(&qword_101698E00, &qword_1016B1270, &qword_101390A00, &protocol conformance descriptor for AsyncKeyedThrottle<A>);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10017CFD0, v5, v4);
}

uint64_t sub_10017CFD0()
{
  v1 = *(v0 + 48);
  dispatch thunk of AsyncKeyedThrottle.throttle(key:block:)();

  return _swift_task_switch(sub_10017D078, v1, 0);
}

uint64_t sub_10017D078()
{
  Transaction.capture()();

  return _swift_task_switch(sub_10017D0E0, 0, 0);
}

uint64_t sub_10017D0E0()
{

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10017C718;
  v2 = *(v0 + 112);

  return AsyncStream.Iterator.next(isolation:)(v0 + 32, 0, 0, v2);
}

uint64_t sub_10017D190()
{
  v1[19] = v0;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v1[20] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v1[23] = *(v3 + 64);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101698D30, &qword_1013908B8);
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101698D38, &qword_1013908C0);
  v1[29] = v5;
  v1[30] = *(v5 - 8);
  v1[31] = swift_task_alloc();
  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v1;
  v6[1] = sub_10017D39C;

  return daemon.getter();
}

uint64_t sub_10017D39C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[33] = a1;

  v3 = swift_task_alloc();
  v2[34] = v3;
  v4 = type metadata accessor for Daemon();
  v2[35] = v4;
  v5 = type metadata accessor for APSNotificationService();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[36] = v6;
  v7 = sub_1001B8FE4(&qword_101698D40, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  *v3 = v9;
  v3[1] = sub_10017D57C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10017D57C(uint64_t a1)
{
  v3 = a1;
  v4 = *v2;
  v4[37] = a1;
  v4[38] = v1;

  if (v1)
  {
    v3 = v4[19];

    v5 = sub_10017F7DC;
  }

  else
  {

    v5 = sub_10017D6D4;
  }

  return _swift_task_switch(v5, v3, 0);
}

uint64_t sub_10017D6D4()
{
  v1 = *(v0 + 152);
  sub_100E7B264(0xD000000000000023, 0x800000010134CBA0);

  return _swift_task_switch(sub_10017D75C, v1, 0);
}

uint64_t sub_10017D75C()
{
  AsyncStream.makeAsyncIterator()();
  v1 = sub_1001B8FE4(&qword_101698BB8, type metadata accessor for BeaconSharingService, &unk_1013906B0);
  v2 = v0[38];
  v0[39] = v1;
  v0[40] = v2;
  v3 = v0[19];
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_10017D85C;
  v5 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v3, v1, v5);
}

uint64_t sub_10017D85C()
{
  v1 = *(*v0 + 152);

  return _swift_task_switch(sub_10017D96C, v1, 0);
}

uint64_t sub_10017D96C()
{
  v73 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  *(v0 + 336) = v2;
  *(v0 + 344) = v3;
  if (!v1)
  {
    v16 = *(v0 + 240);
    v15 = *(v0 + 248);
    v18 = *(v0 + 224);
    v17 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);

    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
LABEL_8:

    v21 = *(v0 + 8);

    return v21();
  }

  v4 = *(v0 + 320);

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1001BB088();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v4)
  {

    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177AE28);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 336);
    if (v8)
    {
      loga = *(v0 + 344);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v72[0] = v11;
      *v10 = 136446210;
      *(v0 + 136) = v4;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v12 = String.init<A>(describing:)();
      v14 = sub_1000136BC(v12, v13, v72);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unable to decode APS message due to %{public}s", v10, 0xCu);
      sub_100007BAC(v11);

      sub_100016590(v9, loga);
    }

    else
    {
      sub_100016590(*(v0 + 336), *(v0 + 344));
    }

    goto LABEL_17;
  }

  v23 = v0 + 16;
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);
  v26 = *(v0 + 160);

  *(v0 + 47) = *(v0 + 87);
  v27 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v27;
  v28 = *(v0 + 24);
  v29 = *(v0 + 32);

  UUID.init(uuidString:)();
  sub_1001BB0DC(v0 + 16);
  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    v67 = v28;
    sub_10000B3A8(*(v0 + 160), &qword_1016980D0, &unk_10138F3B0);
    if (qword_101694778 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177AE28);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    sub_1001BB0DC(v0 + 16);
    log = v31;
    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 240);
    v34 = *(v0 + 248);
    v36 = *(v0 + 232);
    v69 = *(v0 + 224);
    v37 = *(v0 + 216);
    v68 = *(v0 + 208);
    if (v33)
    {
      v66 = *(v0 + 248);
      v38 = swift_slowAlloc();
      v65 = v36;
      v39 = swift_slowAlloc();
      v72[0] = v39;
      *v38 = 136315138;
      v40 = sub_1000136BC(v67, v29, v72);
      sub_1001BB0DC(v23);
      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, log, v32, "Invalid share ID received from the APNS message: %s", v38, 0xCu);
      sub_100007BAC(v39);

      sub_100016590(v2, v3);

      (*(v37 + 8))(v69, v68);
      (*(v35 + 8))(v66, v65);
    }

    else
    {
      sub_100016590(v2, v3);

      sub_1001BB0DC(v23);
      (*(v37 + 8))(v69, v68);
      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_8;
  }

  v45 = *(v0 + 200);
  v46 = *(v0 + 168);
  v47 = *(v0 + 176);
  v48 = *(v0 + 160);
  v49 = *(v47 + 32);
  *(v0 + 352) = v49;
  *(v0 + 360) = (v47 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v49(v45, v48, v46);
  v50 = *(v0 + 49);
  *(v0 + 368) = *(v0 + 40);
  *(v0 + 51) = *(v0 + 48);
  *(v0 + 52) = *(v0 + 50);
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  *(v0 + 376) = sub_1000076D4(v51, qword_10177AE28);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  sub_1001BB0DC(v0 + 16);
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v72[0] = v55;
    *v54 = 141558275;
    *(v54 + 4) = 1752392040;
    *(v54 + 12) = 2081;
    v56 = sub_101109B78();
    v58 = v57;
    sub_1001BB0DC(v0 + 16);
    v59 = sub_1000136BC(v56, v58, v72);

    *(v54 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v52, v53, "APS message: %{private,mask.hash}s.", v54, 0x16u);
    sub_100007BAC(v55);

    if (v50 == 2)
    {
      goto LABEL_29;
    }
  }

  else
  {

    sub_1001BB0DC(v0 + 16);
    if (v50 == 2)
    {
      goto LABEL_29;
    }
  }

  if (v50)
  {
    v60 = swift_task_alloc();
    *(v0 + 384) = v60;
    *v60 = v0;
    v61 = sub_10017E234;
LABEL_34:
    v60[1] = v61;

    return daemon.getter();
  }

LABEL_29:
  if ((*(v0 + 51) & 1) == 0)
  {
    v60 = swift_task_alloc();
    *(v0 + 432) = v60;
    *v60 = v0;
    v61 = sub_10017ECE4;
    goto LABEL_34;
  }

  *(v0 + 504) = 0;
  v62 = *(v0 + 52);
  if (v62 == 2 || (v62 & 1) != 0)
  {
    v64 = *(v0 + 336);
    v63 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v64, v63);
LABEL_17:
    *(v0 + 320) = 0;
    v41 = *(v0 + 312);
    v42 = *(v0 + 152);
    v43 = swift_task_alloc();
    *(v0 + 328) = v43;
    *v43 = v0;
    v43[1] = sub_10017D85C;
    v44 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v42, v41, v44);
  }

  return _swift_task_switch(sub_10017F5BC, 0, 0);
}

uint64_t sub_10017E234(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 392) = a1;

  v5 = swift_task_alloc();
  *(v3 + 400) = v5;
  v6 = type metadata accessor for DeviceBeaconPayloadPublisher();
  v7 = sub_1001B8FE4(&qword_101698D50, type metadata accessor for DeviceBeaconPayloadPublisher, &unk_1013BF878);
  *v5 = v4;
  v5[1] = sub_10017E3E8;
  v8 = *(v2 + 288);
  v9 = *(v2 + 280);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10017E3E8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 408) = a1;

  v4 = *(v3 + 152);
  if (v1)
  {

    v5 = sub_10017F924;
  }

  else
  {

    v5 = sub_10017E54C;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10017E54C()
{
  v1 = *(v0 + 408);

  return _swift_task_switch(sub_10017E5BC, v1, 0);
}

uint64_t sub_10017E5BC()
{
  v0[15] = 0xD000000000000013;
  v0[16] = 0x800000010134CBD0;
  v4 = &async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:) + async function pointer to dispatch thunk of AsyncKeyedThrottle.throttle(key:block:skipBlock:);

  v1 = swift_task_alloc();
  v0[52] = v1;
  *v1 = v0;
  v1[1] = sub_10017E6CC;
  v2 = v0[51];

  return (v4)(v0 + 15, &unk_10139D750, v2, sub_100853598, 0);
}

uint64_t sub_10017E6CC()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 408);

    v4 = sub_10017E9B0;
  }

  else
  {
    v3 = *(v2 + 152);

    v4 = sub_10017E7FC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017E7FC()
{

  if (*(v0 + 51))
  {
    v1 = *(v0 + 424);
    *(v0 + 504) = v1;
    v2 = *(v0 + 52);
    if (v2 == 2 || (v2 & 1) != 0)
    {
      v3 = *(v0 + 336);
      v4 = *(v0 + 344);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      sub_100016590(v3, v4);
      *(v0 + 320) = v1;
      v5 = *(v0 + 312);
      v6 = *(v0 + 152);
      v7 = swift_task_alloc();
      *(v0 + 328) = v7;
      *v7 = v0;
      v7[1] = sub_10017D85C;
      v8 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 96, v6, v5, v8);
    }

    else
    {

      return _swift_task_switch(sub_10017F5BC, 0, 0);
    }
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 432) = v9;
    *v9 = v0;
    v9[1] = sub_10017ECE4;

    return daemon.getter();
  }
}

uint64_t sub_10017E9B0()
{
  v1 = *(v0 + 152);

  return _swift_task_switch(sub_10017EA1C, v1, 0);
}

uint64_t sub_10017EA1C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure on publishing beacons when requested through APNS push message: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);

    if ((*(v0 + 51) & 1) == 0)
    {
LABEL_3:
      v6 = swift_task_alloc();
      *(v0 + 432) = v6;
      *v6 = v0;
      v6[1] = sub_10017ECE4;

      return daemon.getter();
    }
  }

  else
  {

    if ((*(v0 + 51) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *(v0 + 504) = 0;
  v7 = *(v0 + 52);
  if (v7 == 2 || (v7 & 1) != 0)
  {
    v8 = *(v0 + 336);
    v9 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v8, v9);
    *(v0 + 320) = 0;
    v10 = *(v0 + 312);
    v11 = *(v0 + 152);
    v12 = swift_task_alloc();
    *(v0 + 328) = v12;
    *v12 = v0;
    v12[1] = sub_10017D85C;
    v13 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v11, v10, v13);
  }

  else
  {

    return _swift_task_switch(sub_10017F5BC, 0, 0);
  }
}

uint64_t sub_10017ECE4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  *(v3 + 440) = a1;

  v5 = swift_task_alloc();
  *(v3 + 448) = v5;
  v6 = type metadata accessor for BeaconStoreActor();
  v7 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v5 = v4;
  v5[1] = sub_10017EE98;
  v8 = *(v2 + 288);
  v9 = *(v2 + 280);

  return ActorServiceDaemon.getService<A>()(v9, v6, v8, v7);
}

uint64_t sub_10017EE98(uint64_t a1)
{
  v4 = *v2;
  v4[57] = a1;
  v4[58] = v1;

  if (v1)
  {
    v5 = v4[19];

    v6 = sub_10017FACC;
    v7 = v5;
  }

  else
  {

    v6 = sub_10017EFEC;
    v7 = a1;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10017EFEC()
{

  v1 = swift_task_alloc();
  *(v0 + 472) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_10017F0CC;
  v3 = *(v0 + 456);

  return unsafeBlocking<A>(context:_:)(v0 + 144, 0xD000000000000010, 0x800000010134A8C0, sub_1000D3168, v3, v2);
}

uint64_t sub_10017F0CC()
{
  v1 = *(*v0 + 456);

  return _swift_task_switch(sub_10017F1E4, v1, 0);
}

uint64_t sub_10017F1E4()
{
  v0[60] = v0[18];
  v1 = swift_task_alloc();
  v0[61] = v1;
  *v1 = v0;
  v1[1] = sub_10017F284;
  v2 = v0[46];
  v3 = v0[25];

  return sub_1012DA140(v3, v2);
}

uint64_t sub_10017F284()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 152);

  if (v0)
  {
    v4 = sub_10017FD30;
  }

  else
  {
    v4 = sub_10017F3CC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10017F3CC()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 496);
  *(v0 + 504) = v3;
  v4 = *(v0 + 52);
  if (v4 == 2 || (v4 & 1) != 0)
  {
    v5 = *(v0 + 336);
    v6 = *(v0 + 344);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    sub_100016590(v5, v6);
    *(v0 + 320) = v3;
    v7 = *(v0 + 312);
    v8 = *(v0 + 152);
    v9 = swift_task_alloc();
    *(v0 + 328) = v9;
    *v9 = v0;
    v9[1] = sub_10017D85C;
    v10 = *(v0 + 208);

    return AsyncStream.Iterator.next(isolation:)(v0 + 96, v8, v7, v10);
  }

  else
  {

    return _swift_task_switch(sub_10017F5BC, 0, 0);
  }
}

uint64_t sub_10017F5BC()
{
  if (qword_1016946C0 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[21];
  v5 = v0[19];
  (*(v3 + 16))(v2, v0[25], v4);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v1(v7 + v6, v2, v4);
  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_10017F6F4, v5, 0);
}

uint64_t sub_10017F6F4()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  sub_100016590(v0[42], v0[43]);
  (*(v3 + 8))(v1, v2);
  v0[40] = v0[63];
  v4 = v0[39];
  v5 = v0[19];
  v6 = swift_task_alloc();
  v0[41] = v6;
  *v6 = v0;
  v6[1] = sub_10017D85C;
  v7 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v5, v4, v7);
}

uint64_t sub_10017F7DC()
{
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AE28);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing service: APSNotificationService", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10017F924()
{
  if (*(v0 + 51))
  {
    *(v0 + 504) = 0;
    v1 = *(v0 + 52);
    if (v1 == 2 || (v1 & 1) != 0)
    {
      v2 = *(v0 + 336);
      v3 = *(v0 + 344);
      (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
      sub_100016590(v2, v3);
      *(v0 + 320) = 0;
      v4 = *(v0 + 312);
      v5 = *(v0 + 152);
      v6 = swift_task_alloc();
      *(v0 + 328) = v6;
      *v6 = v0;
      v6[1] = sub_10017D85C;
      v7 = *(v0 + 208);

      return AsyncStream.Iterator.next(isolation:)(v0 + 96, v5, v4, v7);
    }

    else
    {

      return _swift_task_switch(sub_10017F5BC, 0, 0);
    }
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 432) = v8;
    *v8 = v0;
    v8[1] = sub_10017ECE4;

    return daemon.getter();
  }
}

uint64_t sub_10017FACC()
{
  v19 = v0;
  (*(v0[22] + 8))(v0[25], v0[21]);
  v1 = v0[58];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177AE28);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[42];
  v6 = v0[43];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v0[17] = v1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000136BC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unable to decode APS message due to %{public}s", v8, 0xCu);
    sub_100007BAC(v9);

    sub_100016590(v7, v6);
  }

  else
  {
    sub_100016590(v0[42], v0[43]);
  }

  v0[40] = 0;
  v13 = v0[39];
  v14 = v0[19];
  v15 = swift_task_alloc();
  v0[41] = v15;
  *v15 = v0;
  v15[1] = sub_10017D85C;
  v16 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v14, v13, v16);
}

uint64_t sub_10017FD30()
{
  v22 = v0;
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];

  (*(v3 + 8))(v1, v2);
  v4 = v0[62];
  if (qword_101694778 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AE28);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[42];
  v9 = v0[43];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136446210;
    v0[17] = v4;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000136BC(v13, v14, &v21);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "Unable to decode APS message due to %{public}s", v11, 0xCu);
    sub_100007BAC(v12);

    sub_100016590(v10, v9);
  }

  else
  {
    sub_100016590(v0[42], v0[43]);
  }

  v0[40] = 0;
  v16 = v0[39];
  v17 = v0[19];
  v18 = swift_task_alloc();
  v0[41] = v18;
  *v18 = v0;
  v18[1] = sub_10017D85C;
  v19 = v0[26];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v17, v16, v19);
}

uint64_t sub_10017FFA4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 312) = a2;
  *(v4 + 320) = v3;
  *(v4 + 581) = a3;
  *(v4 + 304) = a1;
  v5 = type metadata accessor for MemberSharingCircle(0);
  *(v4 + 328) = v5;
  *(v4 + 336) = *(v5 - 8);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  *(v4 + 368) = v6;
  v7 = *(v6 - 8);
  *(v4 + 376) = v7;
  *(v4 + 384) = *(v7 + 64);
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();

  return _swift_task_switch(sub_100180100, v3, 0);
}

uint64_t sub_100180100()
{
  v1 = *(*(v0 + 320) + 136);
  *(v0 + 416) = v1;
  return _swift_task_switch(sub_100180124, v1, 0);
}

uint64_t sub_100180124()
{
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[47];
  v4 = v0[46];
  v5 = v0[38];
  v6 = *(v3 + 16);
  v0[53] = v6;
  v0[54] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[55] = v8;
  *(v8 + 16) = v2;
  (*(v3 + 32))(v8 + v7, v1, v4);

  v9 = swift_task_alloc();
  v0[56] = v9;
  v10 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v9 = v0;
  v9[1] = sub_1001802A8;

  return unsafeBlocking<A>(context:_:)(v0 + 32, 0xD000000000000010, 0x800000010134A8C0, sub_1001BE4B8, v8, v10);
}

uint64_t sub_1001802A8()
{
  v1 = *(*v0 + 416);

  return _swift_task_switch(sub_1001803D4, v1, 0);
}

uint64_t sub_1001803D4()
{
  v1 = v0[40];
  v0[57] = v0[32];
  return _swift_task_switch(sub_1001803F8, v1, 0);
}

uint64_t sub_1001803F8()
{
  v1 = *(v0 + 456);
  v2 = *(v1 + 16);
  *(v0 + 464) = v2;
  if (v2)
  {
    v3 = *(v0 + 336);
    v4 = *(*(v0 + 320) + 200);
    *(v0 + 472) = v4;
    v5 = *(v3 + 80);
    *(v0 + 576) = v5;
    *(v0 + 582) = 0;
    *(v0 + 480) = 0;
    if (*(v1 + 16))
    {
      sub_1001BB2E0(v1 + ((v5 + 32) & ~v5), *(v0 + 360), type metadata accessor for MemberSharingCircle);
      v6 = type metadata accessor for MemberCircleRevokeManager();
      *(v0 + 488) = v6;
      *(v0 + 40) = v6;
      *(v0 + 48) = &off_1016634E8;
      *(v0 + 16) = v4;

      v7 = swift_task_alloc();
      *(v0 + 496) = v7;
      *v7 = v0;
      v7[1] = sub_1001805F0;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {

    sub_1001BAB50();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1001805F0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 504) = a1;

  v3 = swift_task_alloc();
  *(v2 + 512) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_1001807CC;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1001807CC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 520) = a1;
  *(v3 + 528) = v1;

  if (v1)
  {
    v4 = sub_100180DAC;
  }

  else
  {

    v4 = sub_1001808EC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001808EC()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  v24 = *(v0 + 581);
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 536) = v4;
  v22 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 16, v0 + 56);
  v6 = *(v0 + 80);
  sub_10015049C(v0 + 56, v6);
  v7 = *(v6 - 8);
  v23 = swift_task_alloc();
  (*(v7 + 16))();
  v8 = *v23;
  *(v0 + 96) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = &off_10164E4F0;
  *(v0 + 160) = v2;
  *(v0 + 168) = &off_1016634E8;
  *(v0 + 136) = v8;
  type metadata accessor for ShareKeysDownloadUseCase();
  v9 = swift_allocObject();
  *(v0 + 544) = v9;
  v10 = sub_10015049C(v0 + 96, v3);
  v11 = *(v3 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v3);
  v13 = *(v0 + 160);
  v14 = sub_10015049C(v0 + 136, v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *v16;
  *(v0 + 176) = *v12;
  *(v0 + 200) = v3;
  *(v0 + 208) = &off_10164E4F0;
  *(v0 + 240) = v2;
  *(v0 + 248) = &off_1016634E8;
  *(v0 + 216) = v17;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 176), v9 + 112);
  *(v9 + 152) = v22;
  sub_10000A748((v0 + 216), v9 + 160);
  sub_100007BAC((v0 + 136));

  sub_100007BAC((v0 + 96));

  sub_100007BAC((v0 + 56));

  v18 = swift_task_alloc();
  *(v0 + 552) = v18;
  *v18 = v0;
  v18[1] = sub_100180C98;
  v19 = *(v0 + 360);
  v20 = *(v0 + 312);

  return sub_1007C5654(v19, v20, v24 & 1);
}

uint64_t sub_100180C98()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_100181130;
  }

  else
  {
    v2 = sub_100180E1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100180DAC()
{

  v0[71] = v0[66];
  v1 = v0[40];

  return _swift_task_switch(sub_1001811B8, v1, 0);
}

uint64_t sub_100180E1C()
{
  v1 = *(v0 + 320);

  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_100180EB0, v1, 0);
}

uint64_t sub_100180EB0()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 480) + 1;
  sub_1001BA80C(*(v0 + 360), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {

    v3 = *(v0 + 581);
    v4 = *(v0 + 312);
    type metadata accessor for Transaction();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3 & 1;

    static Transaction.asyncTask(name:block:)();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 480) + 1;
    *(v0 + 582) = 1;
    *(v0 + 480) = v9;
    v10 = *(v0 + 456);
    if (v9 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v0 + 472);
      sub_1001BB2E0(v10 + ((*(v0 + 576) + 32) & ~*(v0 + 576)) + *(*(v0 + 336) + 72) * v9, *(v0 + 360), type metadata accessor for MemberSharingCircle);
      v12 = type metadata accessor for MemberCircleRevokeManager();
      *(v0 + 488) = v12;
      *(v0 + 40) = v12;
      *(v0 + 48) = &off_1016634E8;
      *(v0 + 16) = v11;

      v13 = swift_task_alloc();
      *(v0 + 496) = v13;
      *v13 = v0;
      v13[1] = sub_1001805F0;
    }

    return daemon.getter();
  }
}

uint64_t sub_100181130()
{

  v0[71] = v0[70];
  v1 = v0[40];

  return _swift_task_switch(sub_1001811B8, v1, 0);
}

uint64_t sub_1001811B8()
{
  v1 = *(v0 + 568);
  sub_100007BAC((v0 + 16));
  *(v0 + 264) = v1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 580) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 424);
  v3 = *(v0 + 392);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 304);
  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A560);
  v2(v3, v7, v4);
  sub_1001BB2E0(v5, v6, type metadata accessor for MemberSharingCircle);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v9, v10))
  {
    v15 = *(v0 + 392);
    v16 = *(v0 + 368);
    v17 = *(v0 + 376);
    v18 = *(v0 + 360);
    v19 = *(v0 + 344);
    goto LABEL_16;
  }

  v80 = v10;
  v11 = *(v0 + 581);
  v12 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  *(v0 + 272) = swift_slowAlloc();
  *v12 = 136316419;
  if (v11)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 280) = *(v0 + 312);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v32;
  }

  v33 = *(v0 + 392);
  v35 = *(v0 + 368);
  v34 = *(v0 + 376);
  v77 = *(v0 + 360);
  v36 = *(v0 + 344);
  v37 = sub_1000136BC(v13, v14, (v0 + 272));

  *(v12 + 4) = v37;
  *(v12 + 12) = 2160;
  *(v12 + 14) = 1752392040;
  *(v12 + 22) = 2081;
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v39;
  (*(v34 + 8))(v33, v35);
  v41 = sub_1000136BC(v38, v40, (v0 + 272));

  *(v12 + 24) = v41;
  *(v12 + 32) = 2160;
  *(v12 + 34) = 1752392040;
  *(v12 + 42) = 2081;
  v42 = dispatch thunk of CustomStringConvertible.description.getter();
  v44 = v43;
  sub_1001BA80C(v36, type metadata accessor for MemberSharingCircle);
  v45 = sub_1000136BC(v42, v44, (v0 + 272));

  *(v12 + 44) = v45;
  *(v12 + 52) = 2112;
  swift_errorRetain();
  v46 = _swift_stdlib_bridgeErrorToNSError();
  *(v12 + 54) = v46;
  *v78 = v46;
  _os_log_impl(&_mh_execute_header, v9, v80, "%s Failed to download keys for beaconIdentifier %{private,mask.hash}s,\nshare-id: %{private,mask.hash}s, error: %@.", v12, 0x3Eu);
  sub_10000B3A8(v78, &qword_10169BB30, &unk_10138B3C0);

  swift_arrayDestroy();

  v47 = v77;
  while (1)
  {
    sub_1001BA80C(v47, type metadata accessor for MemberSharingCircle);
    v48 = *(v0 + 480) + 1;
    if (v48 == *(v0 + 464))
    {
      v49 = *(v0 + 582);

      if (v49 == 1)
      {
        v50 = *(v0 + 581);
        v51 = *(v0 + 312);
        type metadata accessor for Transaction();
        v52 = swift_allocObject();
        swift_weakInit();
        v53 = swift_allocObject();
        *(v53 + 16) = v52;
        *(v53 + 24) = v51;
        *(v53 + 32) = v50 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      v54 = *(v0 + 8);

      return v54();
    }

    *(v0 + 480) = v48;
    v56 = *(v0 + 456);
    if (v48 < *(v56 + 16))
    {
      break;
    }

    __break(1u);
LABEL_30:
    swift_once();
LABEL_10:
    v20 = *(v0 + 424);
    v21 = *(v0 + 400);
    v23 = *(v0 + 360);
    v22 = *(v0 + 368);
    v24 = *(v0 + 352);
    v25 = *(v0 + 304);
    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177A560);
    v20(v21, v25, v22);
    sub_1001BB2E0(v23, v24, type metadata accessor for MemberSharingCircle);
    v9 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v27))
    {
      v81 = v27;
      v28 = *(v0 + 581);
      v29 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *(v0 + 288) = swift_slowAlloc();
      *v29 = 136316419;
      if (v28)
      {
        v30 = 0;
        v31 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 296) = *(v0 + 312);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v31 = v60;
      }

      v61 = *(v0 + 400);
      v63 = *(v0 + 368);
      v62 = *(v0 + 376);
      v64 = *(v0 + 352);
      v76 = *(v0 + 360);
      v65 = sub_1000136BC(v30, v31, (v0 + 288));

      *(v29 + 4) = v65;
      *(v29 + 12) = 2160;
      *(v29 + 14) = 1752392040;
      *(v29 + 22) = 2081;
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v66 = dispatch thunk of CustomStringConvertible.description.getter();
      v68 = v67;
      (*(v62 + 8))(v61, v63);
      v69 = sub_1000136BC(v66, v68, (v0 + 288));

      *(v29 + 24) = v69;
      *(v29 + 32) = 2160;
      *(v29 + 34) = 1752392040;
      *(v29 + 42) = 2081;
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      sub_1001BA80C(v64, type metadata accessor for MemberSharingCircle);
      v73 = sub_1000136BC(v70, v72, (v0 + 288));

      *(v29 + 44) = v73;
      *(v29 + 52) = 2112;
      sub_1001BB034();
      swift_allocError();
      *v74 = 0;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 54) = v75;
      *v79 = v75;
      _os_log_impl(&_mh_execute_header, v9, v81, "%s Throttled key download for beaconIdentifier %{private,mask.hash}s,\nshare-id: %{private,mask.hash}s, error: %@.", v29, 0x3Eu);
      sub_10000B3A8(v79, &qword_10169BB30, &unk_10138B3C0);

      swift_arrayDestroy();

      v47 = v76;
    }

    else
    {
      v15 = *(v0 + 400);
      v16 = *(v0 + 368);
      v17 = *(v0 + 376);
      v19 = *(v0 + 352);
      v18 = *(v0 + 360);
LABEL_16:

      sub_1001BA80C(v19, type metadata accessor for MemberSharingCircle);
      (*(v17 + 8))(v15, v16);
      v47 = v18;
    }
  }

  v57 = *(v0 + 472);
  sub_1001BB2E0(v56 + ((*(v0 + 576) + 32) & ~*(v0 + 576)) + *(*(v0 + 336) + 72) * v48, *(v0 + 360), type metadata accessor for MemberSharingCircle);
  v58 = type metadata accessor for MemberCircleRevokeManager();
  *(v0 + 488) = v58;
  *(v0 + 40) = v58;
  *(v0 + 48) = &off_1016634E8;
  *(v0 + 16) = v57;

  v59 = swift_task_alloc();
  *(v0 + 496) = v59;
  *v59 = v0;
  v59[1] = sub_1001805F0;

  return daemon.getter();
}

uint64_t sub_100181BDC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[8] = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Looking for expired records...", v4, 2u);
  }

  v5 = v0[7];

  v6 = *(v5 + 200);
  v0[5] = type metadata accessor for MemberCircleRevokeManager();
  v0[6] = &off_1016634E8;
  v0[2] = v6;

  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_100181D5C;

  return sub_10039ECAC((v0 + 2));
}

uint64_t sub_100181D5C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100181F84;
  }

  else
  {
    v5 = *(v2 + 56);
    sub_100007BAC((v2 + 16));
    v4 = sub_100181E84;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100181E84()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100181F84()
{
  sub_100007BAC((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Expired share cleanup failed due to error: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1001821AC()
{
  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_1000076D4(v1, qword_10177A560);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Looking for tentatively revoked delegated records...", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_10018230C;

  return sub_1003C59AC();
}

uint64_t sub_10018230C()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = sub_100182538;
  }

  else
  {
    v4 = sub_100182438;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100182438()
{
  type metadata accessor for Transaction();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0;
  *(v2 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100182538()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Tentatively revoked delegated share cleanup due to error: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  type metadata accessor for Transaction();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;

  static Transaction.asyncTask(name:block:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100182738(uint64_t a1, char a2)
{
  *(v3 + 552) = v2;
  *(v3 + 837) = a2;
  *(v3 + 544) = a1;
  v4 = type metadata accessor for MemberSharingCircle(0);
  *(v3 + 560) = v4;
  *(v3 + 568) = *(v4 - 8);
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 592) = swift_task_alloc();
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();

  return _swift_task_switch(sub_100182830, v2, 0);
}

uint64_t sub_100182830()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 integerForKey:v4];

    v6 = v5 != 2;
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 838) = v6;
  v7 = *(*(v0 + 552) + 136);
  *(v0 + 616) = v7;

  return _swift_task_switch(sub_100182954, v7, 0);
}

uint64_t sub_100182954()
{

  v1 = swift_task_alloc();
  *(v0 + 624) = v1;
  v2 = sub_1000BC4D4(&unk_101698C40, &qword_10138C1C0);
  *v1 = v0;
  v1[1] = sub_100182A40;
  v3 = *(v0 + 616);

  return unsafeBlocking<A>(context:_:)(v0 + 496, 0xD000000000000010, 0x800000010134A8C0, sub_10012B4B8, v3, v2);
}

uint64_t sub_100182A40()
{
  v1 = *(*v0 + 616);

  return _swift_task_switch(sub_100182B58, v1, 0);
}

uint64_t sub_100182B58()
{
  v1 = v0[69];
  v0[79] = v0[62];
  return _swift_task_switch(sub_100182B7C, v1, 0);
}

uint64_t sub_100182B7C()
{
  v1 = *(v0 + 632);
  v2 = *(v1 + 16);
  *(v0 + 640) = v2;
  if (v2)
  {
    v3 = *(v0 + 838);
    v4 = *(*(v0 + 568) + 80);
    *(v0 + 832) = v4;
    *(v0 + 839) = 0;
    *(v0 + 648) = 0;
    if (*(v1 + 16))
    {
      sub_1001BB2E0(v1 + ((v4 + 32) & ~v4), *(v0 + 608), type metadata accessor for MemberSharingCircle);
      v5 = *(v0 + 552);
      if (v3)
      {
        v6 = *(v5 + 200);
        v7 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 656) = v7;
        *(v0 + 280) = v7;
        *(v0 + 288) = &off_1016634E8;
        *(v0 + 256) = v6;

        v8 = swift_task_alloc();
        *(v0 + 664) = v8;
        *v8 = v0;
        v9 = sub_100182DF4;
      }

      else
      {
        v14 = *(v5 + 200);
        v15 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 744) = v15;
        *(v0 + 40) = v15;
        *(v0 + 48) = &off_1016634E8;
        *(v0 + 16) = v14;

        v8 = swift_task_alloc();
        *(v0 + 752) = v8;
        *v8 = v0;
        v9 = sub_10018447C;
      }

      v8[1] = v9;
    }

    else
    {
      __break(1u);
    }

    return daemon.getter();
  }

  else
  {

    if (*(v0 + 838))
    {
      v10 = [objc_opt_self() standardUserDefaults];
      v11 = String._bridgeToObjectiveC()();
      [v10 setInteger:2 forKey:v11];
    }

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_100182DF4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 672) = a1;

  v3 = swift_task_alloc();
  *(v2 + 680) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100182FD0;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100182FD0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_100183580;
  }

  else
  {

    v4 = sub_1001830F0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1001830F0()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 656);
  v24 = v2;
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 704) = v4;
  v25 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 256, v0 + 296);
  v6 = *(v0 + 320);
  v7 = sub_10015049C(v0 + 296, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v10 = *v9;
  *(v0 + 360) = v3;
  *(v0 + 368) = &off_10164E4F0;
  *(v0 + 336) = v4;
  *(v0 + 400) = v2;
  *(v0 + 408) = &off_1016634E8;
  *(v0 + 376) = v10;
  type metadata accessor for ShareKeysDownloadUseCase();
  v11 = swift_allocObject();
  *(v0 + 712) = v11;
  v12 = sub_10015049C(v0 + 336, v3);
  v13 = *(v3 - 8);
  v14 = swift_task_alloc();
  (*(v13 + 16))(v14, v12, v3);
  v15 = *(v0 + 400);
  v16 = sub_10015049C(v0 + 376, v15);
  v17 = *(v15 - 8);
  v18 = swift_task_alloc();
  (*(v17 + 16))(v18, v16, v15);
  v19 = *v14;
  v20 = *v18;
  *(v0 + 440) = v3;
  *(v0 + 448) = &off_10164E4F0;
  *(v0 + 416) = v19;
  *(v0 + 480) = v24;
  *(v0 + 488) = &off_1016634E8;
  *(v0 + 456) = v20;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 416), v11 + 112);
  *(v11 + 152) = v25;
  sub_10000A748((v0 + 456), v11 + 160);
  sub_100007BAC((v0 + 376));

  sub_100007BAC((v0 + 336));

  sub_100007BAC((v0 + 296));

  v21 = swift_task_alloc();
  *(v0 + 720) = v21;
  *v21 = v0;
  v21[1] = sub_10018346C;
  v22 = *(v0 + 608);

  return sub_1007CFB78(v22);
}

uint64_t sub_10018346C()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1001839F0;
  }

  else
  {
    v2 = sub_1001835F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100183580()
{

  v0[92] = v0[87];
  v1 = v0[69];

  return _swift_task_switch(sub_100183A78, v1, 0);
}

uint64_t sub_1001835F0()
{
  v1 = *(v0 + 552);

  sub_100007BAC((v0 + 256));

  return _swift_task_switch(sub_100183684, v1, 0);
}

uint64_t sub_100183684()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 648) + 1;
  sub_1001BA80C(*(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v2 == v1)
  {

    v3 = *(v0 + 837);
    v4 = *(v0 + 544);
    type metadata accessor for Transaction();
    v5 = swift_allocObject();
    swift_weakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3 & 1;

    static Transaction.asyncTask(name:block:)();

    if (*(v0 + 838) == 1)
    {
      v7 = [objc_opt_self() standardUserDefaults];
      v8 = String._bridgeToObjectiveC()();
      [v7 setInteger:2 forKey:v8];
    }

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 648) + 1;
    *(v0 + 839) = 1;
    *(v0 + 648) = v11;
    v12 = *(v0 + 632);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
    }

    else
    {
      v13 = *(v0 + 838);
      sub_1001BB2E0(v12 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v11, *(v0 + 608), type metadata accessor for MemberSharingCircle);
      v14 = *(v0 + 552);
      if (v13 == 1)
      {
        v15 = *(v14 + 200);
        v16 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 656) = v16;
        *(v0 + 280) = v16;
        *(v0 + 288) = &off_1016634E8;
        *(v0 + 256) = v15;

        v17 = swift_task_alloc();
        *(v0 + 664) = v17;
        *v17 = v0;
        v18 = sub_100182DF4;
      }

      else
      {
        v19 = *(v14 + 200);
        v20 = type metadata accessor for MemberCircleRevokeManager();
        *(v0 + 744) = v20;
        *(v0 + 40) = v20;
        *(v0 + 48) = &off_1016634E8;
        *(v0 + 16) = v19;

        v17 = swift_task_alloc();
        *(v0 + 752) = v17;
        *v17 = v0;
        v18 = sub_10018447C;
      }

      v17[1] = v18;
    }

    return daemon.getter();
  }
}

uint64_t sub_1001839F0()
{

  v0[92] = v0[91];
  v1 = v0[69];

  return _swift_task_switch(sub_100183A78, v1, 0);
}

uint64_t sub_100183A78()
{
  sub_100007BAC((v0 + 256));
  *(v0 + 504) = *(v0 + 736);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 836) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);

    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for MemberSharingCircle);
    i = v11;
    goto LABEL_19;
  }

  v72 = v6;
  v7 = *(v0 + 837);
  v8 = swift_slowAlloc();
  *(v0 + 512) = swift_slowAlloc();
  *v8 = 136316419;
  if (v7)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 520) = *(v0 + 544);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v23;
  }

  v69 = *(v0 + 838);
  v71 = *(v0 + 608);
  v24 = *(v0 + 584);
  v67 = *(v0 + 576);
  v25 = sub_1000136BC(v9, v10, (v0 + 512));

  *(v8 + 4) = v25;
  *(v8 + 12) = 2160;
  *(v8 + 14) = 1752392040;
  *(v8 + 22) = 2081;
  type metadata accessor for UUID();
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
  v29 = sub_1000136BC(v26, v28, (v0 + 512));

  *(v8 + 24) = v29;
  *(v8 + 32) = 2160;
  *(v8 + 34) = 1752392040;
  *(v8 + 42) = 2081;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  sub_1001BA80C(v67, type metadata accessor for MemberSharingCircle);
  v33 = sub_1000136BC(v30, v32, (v0 + 512));

  *(v8 + 44) = v33;
  *(v8 + 52) = 1024;
  *(v8 + 54) = v69;
  v34 = "%s Failed to download keys on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
LABEL_18:
  _os_log_impl(&_mh_execute_header, v5, v72, v34, v8, 0x3Au);
  swift_arrayDestroy();

  for (i = v71; ; i = v35)
  {
LABEL_19:
    sub_1001BA80C(i, type metadata accessor for MemberSharingCircle);
    v49 = *(v0 + 648) + 1;
    if (v49 == *(v0 + 640))
    {
      v50 = *(v0 + 839);

      if (v50 == 1)
      {
        v51 = *(v0 + 837);
        v52 = *(v0 + 544);
        type metadata accessor for Transaction();
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        *(v54 + 24) = v52;
        *(v54 + 32) = v51 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      if (*(v0 + 838) == 1)
      {
        v55 = [objc_opt_self() standardUserDefaults];
        v56 = String._bridgeToObjectiveC()();
        [v55 setInteger:2 forKey:v56];
      }

      v57 = *(v0 + 8);

      return v57();
    }

    *(v0 + 648) = v49;
    v59 = *(v0 + 632);
    if (v49 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_10:
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    sub_1001BB2E0(v15, v16, type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v15, v17, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v72 = v19;
      v20 = *(v0 + 837);
      v8 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v8 = 136316419;
      if (v20)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 536) = *(v0 + 544);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v38;
      }

      v70 = *(v0 + 838);
      v71 = *(v0 + 608);
      v39 = *(v0 + 600);
      v68 = *(v0 + 592);
      v40 = sub_1000136BC(v21, v22, (v0 + 528));

      *(v8 + 4) = v40;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      type metadata accessor for UUID();
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
      v44 = sub_1000136BC(v41, v43, (v0 + 528));

      *(v8 + 24) = v44;
      *(v8 + 32) = 2160;
      *(v8 + 34) = 1752392040;
      *(v8 + 42) = 2081;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_1001BA80C(v68, type metadata accessor for MemberSharingCircle);
      v48 = sub_1000136BC(v45, v47, (v0 + 528));

      *(v8 + 44) = v48;
      *(v8 + 52) = 1024;
      *(v8 + 54) = v70;
      v34 = "%s Throttled key download on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
      goto LABEL_18;
    }

    v35 = *(v0 + 608);
    v36 = *(v0 + 600);
    v37 = *(v0 + 592);

    sub_1001BA80C(v37, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v36, type metadata accessor for MemberSharingCircle);
  }

  v60 = *(v0 + 838);
  sub_1001BB2E0(v59 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v49, *(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v60 == 1)
  {
    v61 = *(*(v0 + 552) + 200);
    v62 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 656) = v62;
    *(v0 + 280) = v62;
    *(v0 + 288) = &off_1016634E8;
    *(v0 + 256) = v61;

    v63 = swift_task_alloc();
    *(v0 + 664) = v63;
    *v63 = v0;
    v64 = sub_100182DF4;
  }

  else
  {
    v65 = *(*(v0 + 552) + 200);
    v66 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 744) = v66;
    *(v0 + 40) = v66;
    *(v0 + 48) = &off_1016634E8;
    *(v0 + 16) = v65;

    v63 = swift_task_alloc();
    *(v0 + 752) = v63;
    *v63 = v0;
    v64 = sub_10018447C;
  }

  v63[1] = v64;

  return daemon.getter();
}

uint64_t sub_10018447C(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 760) = a1;

  v3 = swift_task_alloc();
  *(v2 + 768) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_1001B8FE4(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1001B8FE4(&qword_101698D20, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100184658;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100184658(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {
    v4 = sub_100184C38;
  }

  else
  {

    v4 = sub_100184778;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100184778()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 744);
  v24 = *(v0 + 837);
  v3 = type metadata accessor for SharingCircleKeyManager();
  v4 = swift_allocObject();
  *(v0 + 792) = v4;
  v22 = v1;

  swift_defaultActor_initialize();
  type metadata accessor for KeyDropInterface();
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 112) = 0;
  *(v5 + 120) = 0;
  *(v4 + 112) = v5;
  *(v4 + 120) = v1;
  sub_10001F280(v0 + 16, v0 + 56);
  v6 = *(v0 + 80);
  sub_10015049C(v0 + 56, v6);
  v7 = *(v6 - 8);
  v23 = swift_task_alloc();
  (*(v7 + 16))();
  v8 = *v23;
  *(v0 + 96) = v4;
  *(v0 + 120) = v3;
  *(v0 + 128) = &off_10164E4F0;
  *(v0 + 160) = v2;
  *(v0 + 168) = &off_1016634E8;
  *(v0 + 136) = v8;
  type metadata accessor for ShareKeysDownloadUseCase();
  v9 = swift_allocObject();
  *(v0 + 800) = v9;
  v10 = sub_10015049C(v0 + 96, v3);
  v11 = *(v3 - 8);
  v12 = swift_task_alloc();
  (*(v11 + 16))(v12, v10, v3);
  v13 = *(v0 + 160);
  v14 = sub_10015049C(v0 + 136, v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *v16;
  *(v0 + 176) = *v12;
  *(v0 + 200) = v3;
  *(v0 + 208) = &off_10164E4F0;
  *(v0 + 240) = v2;
  *(v0 + 248) = &off_1016634E8;
  *(v0 + 216) = v17;

  swift_defaultActor_initialize();
  sub_10000A748((v0 + 176), v9 + 112);
  *(v9 + 152) = v22;
  sub_10000A748((v0 + 216), v9 + 160);
  sub_100007BAC((v0 + 136));

  sub_100007BAC((v0 + 96));

  sub_100007BAC((v0 + 56));

  v18 = swift_task_alloc();
  *(v0 + 808) = v18;
  *v18 = v0;
  v18[1] = sub_100184B24;
  v19 = *(v0 + 608);
  v20 = *(v0 + 544);

  return sub_1007C5654(v19, v20, v24 & 1);
}

uint64_t sub_100184B24()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_100184D3C;
  }

  else
  {
    v2 = sub_100184CA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100184C38()
{

  v0[103] = v0[98];
  v1 = v0[69];

  return _swift_task_switch(sub_100184DC4, v1, 0);
}

uint64_t sub_100184CA8()
{
  v1 = *(v0 + 552);

  sub_100007BAC((v0 + 16));

  return _swift_task_switch(sub_1001BE4D4, v1, 0);
}

uint64_t sub_100184D3C()
{

  v0[103] = v0[102];
  v1 = v0[69];

  return _swift_task_switch(sub_100184DC4, v1, 0);
}

uint64_t sub_100184DC4()
{
  sub_100007BAC((v0 + 16));
  *(v0 + 504) = *(v0 + 824);
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  if ((swift_dynamicCast() & 1) != 0 && (*(v0 + 836) & 1) == 0)
  {
    if (qword_101694480 != -1)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (qword_101694480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 608);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = type metadata accessor for Logger();
  sub_1000076D4(v4, qword_10177A560);
  sub_1001BB2E0(v1, v2, type metadata accessor for MemberSharingCircle);
  sub_1001BB2E0(v1, v3, type metadata accessor for MemberSharingCircle);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v5, v6))
  {
    v11 = *(v0 + 608);
    v12 = *(v0 + 584);
    v13 = *(v0 + 576);

    sub_1001BA80C(v13, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v12, type metadata accessor for MemberSharingCircle);
    i = v11;
    goto LABEL_19;
  }

  v72 = v6;
  v7 = *(v0 + 837);
  v8 = swift_slowAlloc();
  *(v0 + 512) = swift_slowAlloc();
  *v8 = 136316419;
  if (v7)
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    *(v0 + 520) = *(v0 + 544);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v23;
  }

  v69 = *(v0 + 838);
  v71 = *(v0 + 608);
  v24 = *(v0 + 584);
  v67 = *(v0 + 576);
  v25 = sub_1000136BC(v9, v10, (v0 + 512));

  *(v8 + 4) = v25;
  *(v8 + 12) = 2160;
  *(v8 + 14) = 1752392040;
  *(v8 + 22) = 2081;
  type metadata accessor for UUID();
  sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v26 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v27;
  sub_1001BA80C(v24, type metadata accessor for MemberSharingCircle);
  v29 = sub_1000136BC(v26, v28, (v0 + 512));

  *(v8 + 24) = v29;
  *(v8 + 32) = 2160;
  *(v8 + 34) = 1752392040;
  *(v8 + 42) = 2081;
  v30 = dispatch thunk of CustomStringConvertible.description.getter();
  v32 = v31;
  sub_1001BA80C(v67, type metadata accessor for MemberSharingCircle);
  v33 = sub_1000136BC(v30, v32, (v0 + 512));

  *(v8 + 44) = v33;
  *(v8 + 52) = 1024;
  *(v8 + 54) = v69;
  v34 = "%s Failed to download keys on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
LABEL_18:
  _os_log_impl(&_mh_execute_header, v5, v72, v34, v8, 0x3Au);
  swift_arrayDestroy();

  for (i = v71; ; i = v35)
  {
LABEL_19:
    sub_1001BA80C(i, type metadata accessor for MemberSharingCircle);
    v49 = *(v0 + 648) + 1;
    if (v49 == *(v0 + 640))
    {
      v50 = *(v0 + 839);

      if (v50 == 1)
      {
        v51 = *(v0 + 837);
        v52 = *(v0 + 544);
        type metadata accessor for Transaction();
        v53 = swift_allocObject();
        swift_weakInit();
        v54 = swift_allocObject();
        *(v54 + 16) = v53;
        *(v54 + 24) = v52;
        *(v54 + 32) = v51 & 1;

        static Transaction.asyncTask(name:block:)();
      }

      if (*(v0 + 838) == 1)
      {
        v55 = [objc_opt_self() standardUserDefaults];
        v56 = String._bridgeToObjectiveC()();
        [v55 setInteger:2 forKey:v56];
      }

      v57 = *(v0 + 8);

      return v57();
    }

    *(v0 + 648) = v49;
    v59 = *(v0 + 632);
    if (v49 < *(v59 + 16))
    {
      break;
    }

    __break(1u);
LABEL_35:
    swift_once();
LABEL_10:
    v15 = *(v0 + 608);
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177A560);
    sub_1001BB2E0(v15, v16, type metadata accessor for MemberSharingCircle);
    sub_1001BB2E0(v15, v17, type metadata accessor for MemberSharingCircle);
    v5 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v19))
    {
      v72 = v19;
      v20 = *(v0 + 837);
      v8 = swift_slowAlloc();
      *(v0 + 528) = swift_slowAlloc();
      *v8 = 136316419;
      if (v20)
      {
        v21 = 0;
        v22 = 0xE000000000000000;
      }

      else
      {
        *(v0 + 536) = *(v0 + 544);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v38;
      }

      v70 = *(v0 + 838);
      v71 = *(v0 + 608);
      v39 = *(v0 + 600);
      v68 = *(v0 + 592);
      v40 = sub_1000136BC(v21, v22, (v0 + 528));

      *(v8 + 4) = v40;
      *(v8 + 12) = 2160;
      *(v8 + 14) = 1752392040;
      *(v8 + 22) = 2081;
      type metadata accessor for UUID();
      sub_1001B8FE4(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      sub_1001BA80C(v39, type metadata accessor for MemberSharingCircle);
      v44 = sub_1000136BC(v41, v43, (v0 + 528));

      *(v8 + 24) = v44;
      *(v8 + 32) = 2160;
      *(v8 + 34) = 1752392040;
      *(v8 + 42) = 2081;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      sub_1001BA80C(v68, type metadata accessor for MemberSharingCircle);
      v48 = sub_1000136BC(v45, v47, (v0 + 528));

      *(v8 + 44) = v48;
      *(v8 + 52) = 1024;
      *(v8 + 54) = v70;
      v34 = "%s Throttled key download on schedule for\nmemberCircle: %{private,mask.hash}s,\nbeacon: %{private,mask.hash}s,\nrestoreAllKeys: %{BOOL}d.";
      goto LABEL_18;
    }

    v35 = *(v0 + 608);
    v36 = *(v0 + 600);
    v37 = *(v0 + 592);

    sub_1001BA80C(v37, type metadata accessor for MemberSharingCircle);
    sub_1001BA80C(v36, type metadata accessor for MemberSharingCircle);
  }

  v60 = *(v0 + 838);
  sub_1001BB2E0(v59 + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(*(v0 + 568) + 72) * v49, *(v0 + 608), type metadata accessor for MemberSharingCircle);
  if (v60 == 1)
  {
    v61 = *(*(v0 + 552) + 200);
    v62 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 656) = v62;
    *(v0 + 280) = v62;
    *(v0 + 288) = &off_1016634E8;
    *(v0 + 256) = v61;

    v63 = swift_task_alloc();
    *(v0 + 664) = v63;
    *v63 = v0;
    v64 = sub_100182DF4;
  }

  else
  {
    v65 = *(*(v0 + 552) + 200);
    v66 = type metadata accessor for MemberCircleRevokeManager();
    *(v0 + 744) = v66;
    *(v0 + 40) = v66;
    *(v0 + 48) = &off_1016634E8;
    *(v0 + 16) = v65;

    v63 = swift_task_alloc();
    *(v0 + 752) = v63;
    *v63 = v0;
    v64 = sub_10018447C;
  }

  v63[1] = v64;

  return daemon.getter();
}