uint64_t sub_100FCCEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[440] = a4;
  v4[439] = a3;
  v4[438] = a2;
  v4[437] = a1;
  v5 = type metadata accessor for HashAlgorithm();
  v4[441] = v5;
  v4[442] = *(v5 - 8);
  v4[443] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v4[444] = v6;
  v4[445] = *(v6 - 8);
  v4[446] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v4[447] = v7;
  v4[448] = *(v7 - 8);
  v4[449] = swift_task_alloc();

  return _swift_task_switch(sub_100FCD044, 0, 0);
}

void sub_100FCD044()
{
  v1 = sub_100907E70(_swiftEmptyArrayStorage);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(1702195828, 0xE400000000000000, 0xD00000000000001BLL, 0x800000010134EA20, isUniquelyReferenced_nonNull_native);
  v3 = [objc_opt_self() currentDevice];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  v5 = [v3 serverFriendlyDescription];

  if (!v5)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v6 = *(v0 + 3592);
  v7 = *(v0 + 3584);
  v8 = *(v0 + 3576);
  v9 = *(v0 + 3568);
  v48 = *(v0 + 3560);
  v49 = *(v0 + 3552);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v10, v12, 0xD000000000000011, 0x800000010134EA40, v13);
  v14 = v1;
  Date.init()();
  v15 = Date.epoch.getter();
  (*(v7 + 8))(v6, v8);
  *(v0 + 3480) = v15;
  v16 = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v16, v18, 0xD000000000000015, 0x800000010134EA60, v19);
  *(v0 + 3488) = 1;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v20, v22, 0xD000000000000013, 0x800000010134EA80, v23);
  v24 = v14;
  v25 = sub_100EB2DF0();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v25, v27, 0x6567412D72657355, 0xEA0000000000746ELL, v28);
  static Locale.current.getter();
  v29 = Locale.acceptLanguageCode.getter();
  v31 = v30;
  (*(v48 + 8))(v9, v49);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_100FFACA0(v29, v31, 0x4C2D747065636341, 0xEF65676175676E61, v32);
  v33 = v24;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v34 = qword_10177C218;
  v35 = [objc_opt_self() sharedInstance];
  v36 = [v35 isInternalBuild];

  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
    v38 = [v34 BOOLForKey:v37];

    if (v38)
    {
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_100FFACA0(0x7465722C6C616572, 0xEF302D726F727245, 0xD000000000000012, 0x800000010134F950, v39);
    }
  }

  *(v0 + 3600) = v33;
  v40 = *(v0 + 3512);
  v41 = *(v0 + 3504);
  v42 = *(v0 + 3496);
  sub_10093DC08(v42, v0 + 3088);

  sub_100FCC430(v42, v41, v40, (v0 + 16));
  sub_10093DC70(v42);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  memcpy((v0 + 400), (v0 + 16), 0x180uLL);
  sub_100FCE710();
  v43 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 3608) = 0;
  *(v0 + 3616) = v43;
  *(v0 + 3624) = v44;
  v45 = v43;
  v46 = v44;

  sub_100017D5C(v45, v46);
  v47 = swift_task_alloc();
  *(v0 + 3632) = v47;
  *v47 = v0;
  v47[1] = sub_100FCD788;

  sub_100EA67B4();
}

uint64_t sub_100FCD788(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 3640) = a1;
  *(v3 + 3648) = a2;

  return _swift_task_switch(sub_100FCD88C, 0, 0);
}

uint64_t sub_100FCD88C()
{
  v1 = *(v0 + 3648);
  v2 = *(v0 + 3640);
  v3 = *(v0 + 3544);
  v4 = *(v0 + 3536);
  v5 = *(v0 + 3528);
  *(v0 + 3464) = v2;
  *(v0 + 3472) = v1;
  *(v0 + 3448) = &type metadata for Data;
  *(v0 + 3456) = &protocol witness table for Data;
  *(v0 + 3424) = *(v0 + 3616);
  v6 = sub_1000035D0((v0 + 3424), &type metadata for Data);
  v7 = *v6;
  v8 = v6[1];
  sub_100017D5C(v2, v1);
  sub_100017DB0(v7, v8, v0 + 3464);
  sub_100016590(v2, v1);
  sub_100007BAC((v0 + 3424));
  *(v0 + 3656) = *(v0 + 3464);
  *(v0 + 3664) = *(v0 + 3472);
  (*(v4 + 104))(v3, enum case for HashAlgorithm.sha256(_:), v5);
  v9 = Data.hash(algorithm:)();
  v11 = v10;
  *(v0 + 3672) = v9;
  *(v0 + 3680) = v10;
  (*(v4 + 8))(v3, v5);
  v12 = swift_task_alloc();
  *(v0 + 3688) = v12;
  *v12 = v0;
  v12[1] = sub_100FCDA44;
  v13 = *(v0 + 3520);

  return sub_100EA87F4(v9, v11, v13);
}

uint64_t sub_100FCDA44(uint64_t a1)
{
  v4 = *v2;
  v4[462] = v1;

  v5 = v4[460];
  v6 = v4[459];
  if (v1)
  {
    sub_100016590(v6, v5);

    v7 = sub_100FCE0E4;
  }

  else
  {
    v4[463] = a1;
    sub_100016590(v6, v5);
    v7 = sub_100FCDBAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100FCDBAC()
{
  v48 = v0;
  v1 = v0[463];
  v2 = v0[458];
  v3 = v0[457];
  v4 = v0[450];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v4;
  sub_10028709C(v1, sub_100EB00A4, 0, isUniquelyReferenced_nonNull_native, v47);

  sub_100016590(v3, v2);
  v6 = v47[0];
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_23:
  swift_once();
LABEL_2:
  v44 = v0;
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C448);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Pairing lock header:", v10, 2u);
  }

  v11 = v6 + 64;
  v12 = -1;
  v13 = -1 << *(v6 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v6 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v45 = v6;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_13:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v6 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v6 + 56) + v18);
      v23 = v22[1];
      v46 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v47[0] = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, v47);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v46, v23, v47);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v6 = v45;

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v15;
    if (v14)
    {
      goto LABEL_13;
    }
  }

  sub_100FCE764((v44 + 2), (v44 + 242));
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  sub_100FCE79C((v44 + 2));
  v31 = os_log_type_enabled(v29, v30);
  v32 = v44[437];
  if (v31)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136315138;
    memcpy(v44 + 290, v44 + 2, 0x180uLL);
    sub_100FCE764((v44 + 2), (v44 + 338));
    v35 = String.init<A>(describing:)();
    v37 = sub_1000136BC(v35, v36, v47);

    *(v33 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "Pairing lock body %s", v33, 0xCu);
    sub_100007BAC(v34);

    sub_100FCE79C((v44 + 2));

    sub_10093DC70(v32);
  }

  else
  {

    sub_10093DC70(v32);

    sub_100FCE79C((v44 + 2));
  }

  v38 = v44[453];
  v39 = v44[452];

  sub_100017D5C(v39, v38);

  sub_100016590(v39, v38);
  v40 = v44[453];
  v41 = v44[452];

  v42 = v44[1];

  return v42(v6, v41, v40);
}

uint64_t sub_100FCE0E4()
{
  v49 = v0;
  sub_100016590(v0[457], v0[458]);
  v1 = &qword_101695000;
  if (qword_1016950E0 == -1)
  {
    goto LABEL_2;
  }

LABEL_28:
  swift_once();
LABEL_2:
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C448);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to generate attestation header: %{public}@.", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[450];
  if (v1[28] != -1)
  {
    swift_once();
  }

  v46 = v0;
  sub_1000076D4(v2, qword_10177C448);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Pairing lock header:", v11, 2u);
  }

  v1 = (v8 + 64);
  v12 = -1;
  v13 = -1 << *(v8 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v8 + 64);
  v0 = ((63 - v13) >> 6);

  v15 = 0;
  v45 = v8;
  if (v14)
  {
    while (2)
    {
      v16 = v15;
LABEL_18:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(v8 + 48) + v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v8 + 56) + v18);
      v23 = v22[1];
      v47 = *v22;

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v26 = 136315394;
        v27 = sub_1000136BC(v20, v21, &v48);

        *(v26 + 4) = v27;
        *(v26 + 12) = 2080;
        v28 = sub_1000136BC(v47, v23, &v48);

        *(v26 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: %s", v26, 0x16u);
        swift_arrayDestroy();

        v8 = v45;

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      else
      {

        v15 = v16;
        if (v14)
        {
          continue;
        }
      }

      break;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v16 >= v0)
    {
      break;
    }

    v14 = v1[v16];
    ++v15;
    if (v14)
    {
      goto LABEL_18;
    }
  }

  v29 = v46;
  sub_100FCE764((v46 + 2), (v46 + 242));
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  sub_100FCE79C((v46 + 2));
  v32 = os_log_type_enabled(v30, v31);
  v33 = v46[437];
  if (v32)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v48 = v35;
    *v34 = 136315138;
    memcpy(v46 + 290, v46 + 2, 0x180uLL);
    sub_100FCE764((v46 + 2), (v46 + 338));
    v36 = String.init<A>(describing:)();
    v38 = sub_1000136BC(v36, v37, &v48);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Pairing lock body %s", v34, 0xCu);
    sub_100007BAC(v35);
    v29 = v46;

    sub_100FCE79C((v46 + 2));

    sub_10093DC70(v33);
  }

  else
  {

    sub_10093DC70(v33);

    sub_100FCE79C((v46 + 2));
  }

  v39 = v29[453];
  v40 = v29[452];

  sub_100017D5C(v40, v39);

  sub_100016590(v40, v39);
  v41 = v29[453];
  v42 = v29[452];

  v43 = v29[1];

  return v43(v8, v42, v41);
}

unint64_t sub_100FCE710()
{
  result = qword_1016C26C0;
  if (!qword_1016C26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26C0);
  }

  return result;
}

uint64_t sub_100FCE7D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100FCE81C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100FCE8E0()
{
  result = qword_1016C26D0;
  if (!qword_1016C26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AirPodsSWPairingLockCheckRequestContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AirPodsSWPairingLockCheckRequestContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100FCEA88()
{
  result = qword_1016C26D8;
  if (!qword_1016C26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26D8);
  }

  return result;
}

unint64_t sub_100FCEAE0()
{
  result = qword_1016C26E0;
  if (!qword_1016C26E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26E0);
  }

  return result;
}

unint64_t sub_100FCEB38()
{
  result = qword_1016C26E8;
  if (!qword_1016C26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C26E8);
  }

  return result;
}

uint64_t sub_100FCEB8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E6E6F6973736573 && a2 == 0xEC00000065636E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12645 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101347DB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617453636E7973 && a2 == 0xEA00000000007375 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6169726553746C61 && a2 == 0xEF7265626D754E6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x644974726170 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F636165426D756ELL && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134DD60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101361060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E55646572616873 && a2 == 0xEA00000000007469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x314B64656573 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7374726563 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 7500643 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x636E6F4E68747561 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00006E67695379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101361080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134F970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x69634572656E776FLL && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x69684372656E776FLL && a2 == 0xEB00000000644970 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x7372655663657073 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013610A0 == a2)
  {

    return 25;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 25;
    }

    else
    {
      return 26;
    }
  }
}

void sub_100FCF3A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v19 = v8;
    swift_once();
    v8 = v19;
  }

  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C388, "triggerFetch()", 14, 2, _swiftEmptyArrayStorage);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v9 = LOBYTE(aBlock[0]);
  v10 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_101385D80;
  *(v12 + 56) = &type metadata for Bool;
  *(v12 + 64) = &protocol witness table for Bool;
  *(v12 + 32) = v9;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "localAvailable: %d", v20);

  v13 = static os_log_type_t.default.getter();
  if (v9)
  {
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v11, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);

    v14 = sub_100FD01E4();
    v15 = [v14 privateCloudDatabase];

    sub_100FE08A8(v15, 0, 0, sub_10101296C, v1);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v11, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v16 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v11, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v17 = swift_allocObject();
    v17[2] = v1;
    v17[3] = sub_101012964;
    v17[4] = v1;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165FEA0;
    v18 = _Block_copy(aBlock);
    swift_retain_n();
    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v23 + 8))(v4, v2);
    (*(v21 + 8))(v7, v22);
  }
}

uint64_t sub_100FCF8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v8 - 8);
  v58 = v8;
  __chkstk_darwin(v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CloudKitChangeSet(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v59 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v49 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  sub_100022ABC(a1, &v49 - v21, type metadata accessor for CloudKitChangeSet);
  v61 = v20;
  sub_100022ABC(v22, v20, type metadata accessor for CloudKitChangeSet);
  v23 = *(v12 + 80);
  v24 = (v23 + 24) & ~v23;
  v50 = v13 + 7;
  v25 = (v13 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v4;
  sub_100029184(v22, v26 + v24, type metadata accessor for CloudKitChangeSet);
  v60 = v26;
  v27 = (v26 + v25);
  v51 = a2;
  *v27 = a2;
  v27[1] = a3;
  v53 = a3;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v28 = aBlock;
  v29 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C390;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_101385D80;
  *(v31 + 56) = &type metadata for Bool;
  *(v31 + 64) = &protocol witness table for Bool;
  *(v31 + 32) = v28;
  os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "localAvailable: %d", v49);

  v32 = static os_log_type_t.default.getter();
  if (v28)
  {
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v30, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    sub_100022ABC(v61, v17, type metadata accessor for CloudKitChangeSet);
    sub_100022ABC(v17, v59, type metadata accessor for CloudKitChangeSet);
    v33 = (v23 + 16) & ~v23;
    v34 = (v50 + v33) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_100029184(v17, v35 + v33, type metadata accessor for CloudKitChangeSet);
    v36 = (v35 + v34);
    v37 = v51;
    v38 = v53;
    *v36 = v51;
    v36[1] = v38;
    *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;
    v39 = qword_101694FA8;

    if (v39 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v64 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v62 == 1)
    {
      v40 = v59;
      sub_100FE5390(v59, v37, v38);
    }

    else
    {
      v48 = type metadata accessor for Transaction();
      __chkstk_darwin(v48);
      *(&v49 - 4) = v4;
      *(&v49 - 3) = sub_100FE57E0;
      *(&v49 - 2) = v35;
      static Transaction.named<A>(_:with:)();

      v40 = v59;
    }

    sub_100FE5334(v61);
    return sub_100FE5334(v40);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v30, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v41 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v30, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v42 = swift_allocObject();
    v42[2] = v4;
    v42[3] = sub_100FE5284;
    v42[4] = v60;
    v67 = sub_100B24A78;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100006684;
    v66 = &unk_10165EF50;
    v43 = _Block_copy(&aBlock);

    v44 = v52;
    static DispatchQoS.unspecified.getter();
    v62 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v45 = v55;
    v46 = v58;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);

    (*(v57 + 8))(v45, v46);
    (*(v54 + 8))(v44, v56);
    sub_100FE5334(v61);
  }
}

uint64_t sub_100FD00D0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C498);
  sub_1000076D4(v0, qword_10177C498);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100FD0154()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100044B3C(v0, qword_1016C26F0);
  *sub_1000076D4(v0, qword_1016C26F0) = 120;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id sub_100FD01E4()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = sub_100FD023C();
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_100FD023C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [v0 BOOLForKey:v3];

    if (v4)
    {
      v5 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v5 = 1;
LABEL_6:
  v6 = objc_allocWithZone(CKContainerID);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithContainerIdentifier:v7 environment:v5];

  v9 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v10 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_101385D80;
  *(v11 + 56) = sub_100008BB8(0, &qword_1016C2F88, CKContainerID_ptr);
  *(v11 + 64) = sub_100009D18(&qword_1016C2F90, &qword_1016C2F88, CKContainerID_ptr, &protocol conformance descriptor for NSObject);
  *(v11 + 32) = v8;
  v12 = v8;
  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Created CloudKit container named: %{public}@", 44, 2, v11);

  v13 = [objc_allocWithZone(CKContainer) initWithContainerID:v12];

  return v13;
}

uint64_t sub_100FD0494()
{
  v48 = *v0;
  v1 = sub_1000BC4D4(&qword_1016C2F20, &qword_1013F7790);
  v63 = *(v1 - 8);
  v64 = v1;
  __chkstk_darwin(v1);
  v62 = &v44 - v2;
  v3 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v3 - 8);
  v61 = &v44 - v4;
  v47 = sub_1000BC4D4(&qword_1016C2F28, &qword_1013F7798);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v44 - v5;
  v58 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v58);
  v57 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v56 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000BC4D4(&unk_1016C2F30, &qword_1013F77A0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v15 = &v44 - v14;
  v49 = v0;
  v68[0] = v0[20];

  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  v67 = v0[4];
  v16 = sub_1000BC4D4(&qword_1016A1000, &qword_1013F1BD0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v17 = sub_1000041A4(&qword_1016C2F40, &qword_1016A1000, &qword_1013F1BD0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v18 = sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v59 = v17;
  v60 = v16;
  v65 = v18;
  Publisher.throttle<A>(for:scheduler:latest:)();
  v19 = v13;
  v20 = v49;
  (*(v11 + 8))(v19, v50);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&qword_1016C2F48, &unk_1016C2F30, &qword_1013F77A0, &protocol conformance descriptor for Publishers.Throttle<A, B>);
  v21 = v51;
  v22 = Publisher<>.sink(receiveValue:)();

  (*(v52 + 8))(v15, v21);
  v20[21] = v22;

  v68[0] = 0;
  v68[1] = 0;
  v69 = xmmword_1013F7350;
  v70 = 704;
  v23 = v20[16];
  type metadata accessor for CloudKitCoalescer();
  swift_allocObject();

  v24 = sub_100503AA4(v68, sub_101012980, v23);

  v20[18] = v24;

  (*(v54 + 104))(v53, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v55);
  static DispatchQoS.unspecified.getter();
  v67 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v26 = v20[18];
  if (v26)
  {
    v67 = *(v26 + 24);
    sub_1000BC4D4(&unk_1016C2F50, &unk_1013AD520);
    sub_1000041A4(&qword_1016A2F68, &unk_1016C2F50, &unk_1013AD520, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v27 = Publisher.eraseToAnyPublisher()();
    v66 = v25;
    v67 = v27;
    v28 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v29 = v61;
    (*(*(v28 - 8) + 56))(v61, 1, 1, v28);
    sub_1000BC4D4(&qword_1016C2F60, &unk_1013F77A8);
    sub_1000041A4(&qword_1016C2F68, &qword_1016C2F60, &unk_1013F77A8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v30 = v45;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v29, &unk_1016B0FE0, &unk_101391980);

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    v33 = v48;
    *(v32 + 16) = v31;
    *(v32 + 24) = v33;
    sub_1000041A4(&unk_1016C2F70, &qword_1016C2F28, &qword_1013F7798, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v34 = v47;
    v35 = Publisher<>.sink(receiveValue:)();

    (*(v46 + 8))(v30, v34);
  }

  else
  {
    v35 = 0;
    v29 = v61;
  }

  v20[19] = v35;

  v67 = *(v23 + 32);
  v36 = Publisher.eraseToAnyPublisher()();
  v66 = v20[6];
  v37 = v66;
  v67 = v36;
  v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
  v39 = v37;
  sub_1000BC4D4(&unk_1016B1050, &unk_1013A4F40);
  sub_1000041A4(&unk_1016B1060, &unk_1016B1050, &unk_1013A4F40, &protocol conformance descriptor for AnyPublisher<A, B>);
  v40 = v62;
  Publisher.receive<A>(on:options:)();
  sub_10000B3A8(v29, &unk_1016B0FE0, &unk_101391980);

  swift_allocObject();
  swift_weakInit();
  sub_1000041A4(&unk_1016B1070, &qword_1016C2F20, &qword_1013F7790, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v41 = v64;
  v42 = Publisher<>.sink(receiveValue:)();

  (*(v63 + 8))(v40, v41);
  v20[17] = v42;
}

uint64_t sub_100FD0FBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100FD46A4();
  }

  return result;
}

uint64_t sub_100FD1014(uint64_t a1)
{

  OSAllocatedUnfairLock.callAsFunction<A>(_:)();

  return v2;
}

uint64_t sub_100FD1098(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v20 = v12;
      swift_once();
      v12 = v20;
    }

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C388, "Coalesced database update started.", 34, 2, _swiftEmptyArrayStorage);
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v15 = v13;

    v16 = sub_100FD01E4();
    v17 = [v16 privateCloudDatabase];

    sub_100FE08A8(v17, 0, 0, sub_101012990, v14);

    static DispatchTime.now()();
    if (qword_101695140 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for DispatchTimeInterval();
    sub_1000076D4(v18, qword_1016C26F0);
    + infix(_:_:)();
    v19 = *(v4 + 8);
    v19(v7, v3);
    OS_dispatch_group.wait(timeout:)();

    QueueSynchronizer.conditionalSync<A>(_:)();

    sub_100A48990();
    sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
    sub_1000041A4(&qword_1016C2F80, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Subject<>.send()();

    v19(v9, v3);
  }

  return result;
}

void sub_100FD13E4(uint64_t a1, char a2, NSObject *a3)
{
  Transaction.capture()();
  if (a2)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Coalesced fetchChanges error: %@", 32, 2, v7);
  }

  else
  {
    v11 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v12 = v11;
      swift_once();
      v11 = v12;
    }

    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C388, "Coalesced fetchChanges completed.", 33, 2, _swiftEmptyArrayStorage);
  }

  dispatch_group_leave(a3);
}

uint64_t sub_100FD1584(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  *(a1 + 192) = 1;
  if (*(a1 + 144))
  {

    static Date.trustedNow.getter(v5);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    sub_100503784(v5);
    v7 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v10 = v7;
      swift_once();
      v7 = v10;
    }

    os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, qword_10177C388, "CloudKitCoalescer task execution requested.", 43, 2, _swiftEmptyArrayStorage);
    v8 = sub_1005034F4();
    sub_1000BB584(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_100FD16EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-v6];
  (*(v5 + 16))(&v11[-v6], a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  type metadata accessor for Transaction();
  v12 = a2;
  v13 = sub_101012ADC;
  v14 = v9;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD1874(void *a1, char a2)
{
  if (a2)
  {
    if (qword_101695138 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C498);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    sub_1000BB578(a1, 1);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v27 = v7;
      *v6 = 136446210;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v8 = String.init<A>(describing:)();
      v10 = sub_1000136BC(v8, v9, &v27);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "accountInfo error: %{public}s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    LOBYTE(v27) = 0;
  }

  else
  {
    if (qword_101695138 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177C498);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    sub_1000BB578(a1, 0);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      v17 = [v12 description];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      sub_1000BB578(a1, 0);
      v21 = sub_1000136BC(v18, v20, &v27);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v13, v14, "accountInfo: %s", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v22 = [v12 supportsDeviceToDeviceEncryption];
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "isManateeAvailable: %{BOOL}d", v25, 8u);
    }

    LOBYTE(v27) = v22;
  }

  sub_1000BC4D4(&unk_1016C3130, &unk_1013F7950);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100FD1C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a1;
  aBlock[4] = sub_101012BB8;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101660080;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v15;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

void sub_100FD1F1C()
{
  v1 = v0;
  v46 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v46);
  v2 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!*(v1 + 248))
  {
    v12 = [objc_opt_self() mainBundle];
    v13 = [v12 bundleIdentifier];

    if (v13)
    {
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v1;
      v17 = v16;

      v48 = 0;
      v49 = 0xE000000000000000;
      _StringGuts.grow(_:)(29);

      v48 = 0xD00000000000001BLL;
      v49 = 0x8000000101378050;
      v18._countAndFlagsBits = v14;
      v18._object = v17;
      String.append(_:)(v18);

      v19 = v48;
      v43[2] = "com.apple.icloud-container.";
      v44 = v49;
      v43[1] = "com.apple.aps.searchpartyd";
      (*(v45 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
      static DispatchQoS.unspecified.getter();
      v48 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
      sub_1000BC4D4(&unk_101695580, &qword_101385D90);
      v20 = v15;
      sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v21 = v19;
      v22 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      v23 = type metadata accessor for ContainerAPSBridge();
      v24 = objc_allocWithZone(v23);
      *&v24[OBJC_IVAR____TtC12searchpartyd18ContainerAPSBridge_delegate + 8] = 0;
      *(swift_unknownObjectWeakInit() + 8) = &off_101616328;
      swift_unknownObjectWeakAssign();
      v47.receiver = v24;
      v47.super_class = v23;
      v25 = objc_msgSendSuper2(&v47, "init");
      v26 = *(v15 + 256);
      *(v15 + 256) = v25;

      v27 = objc_allocWithZone(APSConnection);

      v10 = v22;
      v28 = String._bridgeToObjectiveC()();

      v29 = String._bridgeToObjectiveC()();
      v30 = [v27 initWithEnvironmentName:v28 namedDelegatePort:v29 queue:v10];

      v31 = *(v15 + 248);
      *(v20 + 248) = v30;
      v32 = v30;

      v33 = v44;
      if (v32)
      {
        sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_101385D80;
        *(v34 + 32) = v21;
        *(v34 + 40) = v33;

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v32 _setEnabledTopics:isa];
      }

      v36 = *(v20 + 248);
      if (v36)
      {
        v37 = v36;
        v38 = String._bridgeToObjectiveC()();

        [v37 requestTokenForTopic:v38 identifier:0];

        v39 = *(v20 + 248);
        if (!v39)
        {
          goto LABEL_9;
        }
      }

      else
      {

        v39 = *(v20 + 248);
        if (!v39)
        {
LABEL_9:
          v11 = static os_log_type_t.default.getter();
          if (qword_101695040 == -1)
          {
LABEL_10:
            os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, qword_10177C388, "Set up APS connection", 21, 2, _swiftEmptyArrayStorage);

            return;
          }

LABEL_18:
          v41 = v11;
          swift_once();
          v11 = v41;
          goto LABEL_10;
        }
      }

      [v39 setDelegate:*(v20 + 256)];
      goto LABEL_9;
    }

    v40 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v42 = v40;
      swift_once();
      v40 = v42;
    }

    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, qword_10177C388, "Unable to get bundleIdentifier!", 31, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100FD2614(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  result = os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C390, "available set to true", 21, 2, _swiftEmptyArrayStorage);
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_100FD26B8()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v8 = v2;
    swift_once();
    v2 = v8;
  }

  v3 = qword_10177C388;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C388, "Add listener for CKAccountChanged", 33, 2, _swiftEmptyArrayStorage);
  [v1 addObserver:v0 selector:"accountDidChange:" name:CKAccountChangedNotification object:0];
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v3, "Add listener for CKIdentityUpdateNotification", 45, 2, _swiftEmptyArrayStorage);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_101012750;
  *(v6 + 24) = v5;

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100FD2870(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(result + 56);
    aBlock[4] = sub_101012960;
    aBlock[5] = result;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165FE50;
    v14 = result;
    v11 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v16 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    v13 = v6;
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v11);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v13);
  }

  return result;
}

uint64_t sub_100FD2B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_100FD2C28;

  return daemon.getter();
}

uint64_t sub_100FD2C28(uint64_t a1)
{
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_100004084(&qword_1016969E0, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100FD2D80, v3, v2);
}

uint64_t sub_100FD2D80()
{
  *(v0 + 56) = Daemon.darwinNotificationHandler.getter();

  return _swift_task_switch(sub_100FD2DF4, 0, 0);
}

uint64_t sub_100FD2DF4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v6 = (&async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:) + async function pointer to dispatch thunk of DarwinNotificationHandler.listen(name:handler:));

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_100FD2F04;

  return v6(0xD00000000000001CLL, 0x8000000101377EB0, &unk_1013F7778, v3);
}

uint64_t sub_100FD2F04(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100FD3040, 0, 0);
}

uint64_t sub_100FD3040()
{
  v1 = v0[10];
  v2 = v0[4];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_100BB9ADC(0, 0, v2, &unk_1013F7788, v4);

  sub_10000B3A8(v2, &qword_101698C00, &qword_10138B570);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100FD3164(int a1)
{
  v25 = a1;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v30 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v6 = *(v1 + 72);
  v37 = sub_101012690;
  v38 = v1;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v29 = &v35;
  v35 = sub_100006684;
  v36 = &unk_10165FC98;
  v7 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  v28 = sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v27 = sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  v26 = sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v8 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v6;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v7);
  v9 = *(v31 + 8);
  v31 += 8;
  v9(v3, v8);
  v10 = *(v30 + 8);
  v30 += 8;
  v11 = v24;
  v10(v5, v24);

  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();
  v22 = *(v1 + 48);
  v12 = swift_allocObject();
  v18 = v1;
  swift_weakInit();
  v37 = sub_1010126B4;
  v38 = v12;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_100006684;
  v36 = &unk_10165FCC0;
  v13 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  v19 = v3;
  v20 = v9;
  v9(v3, v8);
  v22 = v10;
  v10(v5, v11);

  if ((v25 & 1) == 0)
  {
    v37 = sub_1010126BC;
    v38 = v18;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100006684;
    v36 = &unk_10165FCE8;
    v15 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = _swiftEmptyArrayStorage;
    v16 = v19;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    v20(v16, v8);
    v22(v5, v11);
  }

  return result;
}

void sub_100FD3714(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v13 = v2;
    swift_once();
    v2 = v13;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C388, "Resetting CloudKitCoordinator available flags", 45, 2, _swiftEmptyArrayStorage);
  v3 = *(a1 + 88);
  *(a1 + 88) = xmmword_1013F7360;
  sub_101011434(v3);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v8 = static OS_os_log.default.getter();
  v9 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v8, v9, v4);

  *(a1 + 104) = 0;
  *(a1 + 80) = 0;
  v10 = *(a1 + 64);
  OS_dispatch_semaphore.signal()();

  v11 = dispatch_semaphore_create(0);
  v12 = *(a1 + 64);
  *(a1 + 64) = v11;
}

uint64_t sub_100FD38C4(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    v7 = v2;
    swift_once();
    v2 = v7;
  }

  v3 = qword_10177C390;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C390, "Waiting for CloudKit to become available", 40, 2, _swiftEmptyArrayStorage);
  v4 = *(a1 + 64);
  OS_dispatch_semaphore.wait()();

  v5 = static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v3, "Done waiting for CloudKit to become available", 45, 2, _swiftEmptyArrayStorage);
}

void *sub_100FD39B0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100133310(v2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100FD3A30()
{
  v1 = v0;
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v32);
  v31 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v22 = v13;
    swift_once();
    v13 = v22;
  }

  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, qword_10177C388, "checkinRetryFetch", 17, 2, _swiftEmptyArrayStorage);
  v29 = 0x8000000101377B80;
  static DispatchQoS.background.getter();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for XPCActivity();
  v16 = swift_allocObject();
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v16 + 40) = v17;
  swift_unknownObjectWeakInit();
  *(v16 + 88) = 0;
  v27 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v28 = v1;
  v25 = ".searchpartyd.retryFetch";
  *(v16 + 96) = 0;
  *(v16 + 104) = 0;
  v18 = *(v7 + 16);
  v23 = v10;
  v18(v10, v12, v6);
  (*(v4 + 104))(v30, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v33 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_10169BB60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);

  v26 = v6;
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  v24 = v12;
  sub_1000041A4(&qword_10169BB70, &unk_101695580, &qword_101385D90, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v16 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v16 + 24) = 0xD000000000000028;
  *(v16 + 32) = v29;
  *(v16 + 48) = sub_101012600;
  *(v16 + 56) = v14;
  *(v16 + 64) = sub_101012608;
  *(v16 + 72) = v15;

  sub_100997398();

  (*(v7 + 8))(v24, v26);

  __chkstk_darwin(v19);
  *(&v23 - 2) = v20;
  *(&v23 - 1) = v16;
  QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100FD3F54@<X0>(uint64_t a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1000BC4D4(&qword_1016C2F18, &qword_1013F7750);
    QueueSynchronizer.conditionalSync<A>(_:)();

    v4 = v7;
    v5 = v8;
    v6 = v9;
  }

  else
  {
    v6 = 0;
    v4 = xmmword_10139D930;
    v5 = 0uLL;
  }

  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100FD4028(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Transaction.capture()();
    if (a3 == 3)
    {
      sub_1009971C0();
    }

    else if (a3 == 2)
    {
      v7 = static os_log_type_t.default.getter();
      if (qword_101695040 != -1)
      {
        swift_once();
      }

      v8 = qword_10177C388;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_101385D80;
      type metadata accessor for XPCActivity();

      v10 = String.init<A>(describing:)();
      v12 = v11;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 64) = sub_100008C00();
      *(v9 + 32) = v10;
      *(v9 + 40) = v12;
      os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "scheduleRetryFetch timer fired: %@", 34, 2, v9, a1);

      sub_100FD3164(0);
      PassthroughSubject.send(_:)();
      sub_1009971E8();
    }
  }

  return result;
}

uint64_t sub_100FD41D0(uint64_t a1)
{
  *(a1 + 120) = 1;
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD4270(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
  v13 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v12, v9);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  *(v14 + 24) = a2;
  aBlock[4] = sub_1010125F8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165FC48;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

void sub_100FD4634(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  if (a2)
  {
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }
}

uint64_t sub_100FD46A4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 32);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_101694940 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  OS_dispatch_queue.sync<A>(execute:)();
  sub_1010745A0(v15[1]);
  v9 = v8;

  v10 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v14 = v10;
    swift_once();
    v10 = v14;
  }

  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C388, "iCloud Account available", 24, 2, _swiftEmptyArrayStorage);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v9;
  v12 = type metadata accessor for Transaction();
  __chkstk_darwin(v12);
  v15[-4] = v1;
  v15[-3] = sub_101011908;
  v15[-2] = v11;

  static Transaction.named<A>(_:with:)();
}

void sub_100FD4958(void *a1, char a2, uint64_t a3, double a4)
{
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v90 - v13;
  v102 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v102);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for URL();
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v25 = v90 - v24;
  if (a2)
  {
    v26 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v27 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "accountInfo error: %{public}@", 29, 2, v28);
  }

  else
  {
    v97 = v23;
    v98 = v22;
    v99 = v21;
    *&v90[1] = v16;
    v91 = v12;
    v92 = v14;
    v93 = v9;
    v94 = v8;
    v104 = a3;
    v100 = v20;
    v32 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v33 = qword_10177C388;
    v34 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    v103 = xmmword_101385D80;
    *(v35 + 16) = xmmword_101385D80;
    v36 = a1;
    v37 = [v36 description];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    sub_1000BB578(a1, 0);
    *(v35 + 56) = &type metadata for String;
    v95 = sub_100008C00();
    *(v35 + 64) = v95;
    *(v35 + 32) = v38;
    *(v35 + 40) = v40;
    os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "accountInfo: %@", 15, 2, v35);

    v41 = v104;
    v42 = *(v104 + 104);
    v43 = static os_log_type_t.default.getter();
    v96 = v34;
    v44 = swift_allocObject();
    *(v44 + 16) = v103;
    v45 = [v36 supportsDeviceToDeviceEncryption];
    *(v44 + 56) = &type metadata for Bool;
    *(v44 + 64) = &protocol witness table for Bool;
    *(v44 + 32) = v45;
    v101 = v33;
    os_log(_:dso:log:_:_:)(v43, &_mh_execute_header, v33, "Setting manateeAvailable to %d", LODWORD(v90[0]));

    *(v41 + 104) = [v36 supportsDeviceToDeviceEncryption];
    v46 = [v36 supportsDeviceToDeviceEncryption];
    if (v42)
    {
      if ((v46 & 1) == 0)
      {
        v47 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v101, "Manatee PCS keys are no longer available (keychain reset from another device?)", 78, 2, _swiftEmptyArrayStorage);
        v48 = v104;
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_1001334C0(v48);
          swift_unknownObjectRelease();
        }

        sub_100FD3164(0);
      }
    }

    else if (v46)
    {
      if (qword_101694940 != -1)
      {
        swift_once();
      }

      sub_1000034A4();
      sub_100EEA588(1, 1);

      v49 = v104;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v51 = *(Strong + 160);
        swift_unknownObjectRelease();
        if (qword_101694C10 != -1)
        {
          swift_once();
        }

        v52 = v100;
        v53 = sub_1000076D4(v100, qword_10177BA58);
        v54 = v99;
        v55 = v97;
        (v99)[2](v97, v53, v52);
        v56 = v98;
        URL.appendingPathComponent(_:isDirectory:)();
        v57 = v54[1];
        v57(v55, v52);
        URL.appendingPathComponent(_:)();
        v57(v56, v52);
        v58 = *(v49 + 272);
        v59 = sub_10088F948(v25, v58);
        v57(v25, v52);
        v99 = v51;
        sub_10088F30C(2, v51);
        v60 = sub_10088F948(v25, v58);
        v57(v25, v52);
        v61 = static os_log_type_t.default.getter();
        v62 = v101;
        os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v101, "Manatee PCS keys are now available", 34, 2, _swiftEmptyArrayStorage);
        v63 = static os_log_type_t.default.getter();
        if (v59 && v60)
        {
          os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v62, "finishSetup()", 13, 2, _swiftEmptyArrayStorage);
          v64 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v62, "Initial fetch complete", 22, 2, _swiftEmptyArrayStorage);
          QueueSynchronizer.conditionalSync<A>(_:)();
          v65 = static os_log_type_t.default.getter();
          if (qword_101695048 != -1)
          {
            v89 = v65;
            swift_once();
            v65 = v89;
          }

          v66 = qword_10177C390;
          os_log(_:dso:log:_:_:)(v65, &_mh_execute_header, qword_10177C390, "Signaling availableSemaphore", 28, 2, _swiftEmptyArrayStorage);
          v67 = *(v49 + 64);
          OS_dispatch_semaphore.signal()();

          v68 = static os_log_type_t.default.getter();
          os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v66, "Signaled availableSemaphore", 27, 2, _swiftEmptyArrayStorage);
          sub_100A48990();
        }

        else
        {
          v98 = v60;
          v100 = v59;
          os_log(_:dso:log:_:_:)(v63, &_mh_execute_header, v62, "Fetching from CloudKit since no data has ever been fetched from this device", 75, 2, _swiftEmptyArrayStorage);
          v71 = static os_log_type_t.default.getter();
          v72 = swift_allocObject();
          *(v72 + 16) = v103;
          v73 = *(v49 + 216);
          v74 = *(v49 + 224);
          v75 = v95;
          *(v72 + 56) = &type metadata for String;
          *(v72 + 64) = v75;
          *(v72 + 32) = v73;
          *(v72 + 40) = v74;

          os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v62, "Subscribing to %{public}@", 25, 2, v72);

          sub_101010AA8(v73, v74);
          v77 = v76;

          v78 = CKModifySubscriptionsOperation.undeprecated_modifySubscriptionsCompletionBlock.setter();
          __chkstk_darwin(v78);
          *&v90[-2] = v49;
          *&v90[-1] = v77;
          QueueSynchronizer.conditionalSync<A>(_:)();
          if (a4 > 0.0)
          {
            aBlock[4] = sub_101011974;
            aBlock[5] = v49;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100006684;
            aBlock[3] = &unk_10165FA40;
            _Block_copy(aBlock);
            v105 = _swiftEmptyArrayStorage;
            sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

            sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
            sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
            dispatch thunk of SetAlgebra.init<A>(_:)();
            type metadata accessor for DispatchWorkItem();
            swift_allocObject();
            v79 = DispatchWorkItem.init(flags:block:)();

            v80 = static os_log_type_t.default.getter();
            v81 = swift_allocObject();
            *(v81 + 16) = v103;
            *(v81 + 56) = &type metadata for Double;
            *(v81 + 64) = &protocol witness table for Double;
            *(v81 + 32) = a4;
            os_log(_:dso:log:_:_:)(v80, &_mh_execute_header, v62, "Created %.0f second watchdog time to work around CloudKit bug", v90[0]);

            *(v49 + 264) = v79;

            v82 = v91;
            static DispatchTime.now()();
            v83 = v92;
            + infix(_:_:)();
            v84 = *(v93 + 8);
            v85 = v82;
            v86 = v94;
            v84(v85, v94);
            OS_dispatch_queue.asyncAfter(deadline:execute:)();

            v84(v83, v86);
          }

          v87 = sub_100FD01E4();
          v88 = [v87 privateCloudDatabase];

          sub_100FE08A8(v88, 0, 0, sub_101011968, v49);
        }
      }

      else
      {
        v69 = static os_log_type_t.error.getter();
        v70 = v101;

        os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v70, "Delegate does not define a zone!", 32, 2, _swiftEmptyArrayStorage);
      }
    }
  }
}

uint64_t sub_100FD5644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    swift_errorRetain();
    v4 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v5 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Subscription error: %{public}@", 30, 2, v6);
  }

  else
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v13 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v16 = *(a4 + 216);
    v15 = *(a4 + 224);
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v16;
    *(v14 + 40) = v15;

    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Successfully subscribed to %@", 29, 2, v14);
  }
}

void sub_100FD5868(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 32);
  *v5 = v6;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v8 = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v8 = static os_log_type_t.error.getter();
    if (qword_101695040 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v9 = v8;
  swift_once();
  v8 = v9;
LABEL_3:
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, qword_10177C388, "Watchdog triggered! Work around for <rdar://problem/33067546>", 61, 2, _swiftEmptyArrayStorage);
  exit(0);
}

void sub_100FD59CC(uint64_t a1, char a2, uint64_t a3)
{
  QueueSynchronizer.conditionalSync<A>(_:)();
  if (a2)
  {
    v5 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v6 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100008C00();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Error from fetchChanges: %{public}@", 35, 2, v7);

    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if (v24 == 111)
      {
        v11 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v6, "scheduleRetryFetch", 18, 2, _swiftEmptyArrayStorage);
        QueueSynchronizer.conditionalSync<A>(_:)();
      }

      _BridgedStoredNSError.code.getter();
      if ((v24 - 3) > 1)
      {
        v21 = v24;
        sub_100FD5F64(v21);
      }

      else
      {
        v20 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v6, "scheduleRetryFetch", 18, 2, _swiftEmptyArrayStorage);
        QueueSynchronizer.conditionalSync<A>(_:)();
      }
    }
  }

  else
  {
    v12 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v22 = v12;
      swift_once();
      v12 = v22;
    }

    v13 = qword_10177C388;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C388, "fetchChanges succeeded", 22, 2, _swiftEmptyArrayStorage);
    v14 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "finishSetup()", 13, 2, _swiftEmptyArrayStorage);
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v13, "Initial fetch complete", 22, 2, _swiftEmptyArrayStorage);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v16 = static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      v23 = v16;
      swift_once();
      v16 = v23;
    }

    v17 = qword_10177C390;
    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C390, "Signaling availableSemaphore", 28, 2, _swiftEmptyArrayStorage);
    v18 = *(a3 + 64);
    OS_dispatch_semaphore.signal()();

    v19 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v17, "Signaled availableSemaphore", 27, 2, _swiftEmptyArrayStorage);

    sub_100A48990();
  }
}

uint64_t sub_100FD5E98(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v4 = v2;
    swift_once();
    v2 = v4;
  }

  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, qword_10177C388, "Cancelling watchdog because CloudKit responded", 46, 2, _swiftEmptyArrayStorage);
  if (*(a1 + 264))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(a1 + 264) = 0;
}

void sub_100FD5F64(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v79[0] = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = v82;
    sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
    v11 = _BridgedStoredNSError.userInfo.getter();
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = &qword_101695000;
    if (*(v11 + 16))
    {
      v15 = sub_100771D58(v12, v13);
      v17 = v16;

      if (v17)
      {
        sub_100013894(*(v11 + 56) + 32 * v15, v79);

        sub_1000BC4D4(&qword_1016C2E20, &qword_1013F76F0);
        if (swift_dynamicCast())
        {
          v18 = v81;
          a1 = static os_log_type_t.error.getter();
          if (qword_101695040 != -1)
          {
            swift_once();
          }

          v19 = qword_10177C388;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_101385D80;
          v21 = Dictionary.description.getter();
          v23 = v22;
          *(v20 + 56) = &type metadata for String;
          *(v20 + 64) = sub_100008C00();
          *(v20 + 32) = v21;
          *(v20 + 40) = v23;
          os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v19, "Handling partial internal errors - %{public}@", 45, 2, v20);

          v24 = 1 << *(v18 + 32);
          v25 = -1;
          if (v24 < 64)
          {
            v25 = ~(-1 << v24);
          }

          v26 = v25 & *(v18 + 64);
          v27 = (v24 + 63) >> 6;

          v28 = 0;
          while (v26)
          {
            v29 = v28;
LABEL_16:
            v30 = __clz(__rbit64(v26));
            v26 &= v26 - 1;
            v31 = v30 | (v29 << 6);
            sub_100476DEC(*(v18 + 48) + 40 * v31, v79);
            v80 = *(*(v18 + 56) + 8 * v31);
            a1 = v3;
            sub_100FD5F64(v80);
            sub_10000B3A8(v79, &unk_1016C2E28, &unk_1013F76F8);
          }

          while (1)
          {
            v29 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v29 >= v27)
            {

              v14 = &qword_101695000;
              goto LABEL_20;
            }

            v26 = *(v18 + 64 + 8 * v29);
            ++v28;
            if (v26)
            {
              v28 = v29;
              goto LABEL_16;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_20:
        v79[0] = v2;
        _BridgedStoredNSError.code.getter();
        v32 = v82;
        a1 = static os_log_type_t.error.getter();
        v33 = v14[8];
        if (v32 == 21)
        {
          if (v33 != -1)
          {
            swift_once();
          }

          v48 = qword_10177C388;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_101385D80;
          v50 = v2;
          v51 = related decl 'e' for CKErrorCode.description.getter();
          v53 = v52;

          *(v49 + 56) = &type metadata for String;
          *(v49 + 64) = sub_100008C00();
          *(v49 + 32) = v51;
          *(v49 + 40) = v53;
          os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v48, "Change token expired: %@", 24, 2, v49);

          if (swift_unknownObjectWeakLoadStrong())
          {
            sub_1001334C0(v3);
            swift_unknownObjectRelease();
          }

          sub_100FD3164(0);
        }

        else
        {
          if (v32 == 26)
          {
            if (v33 == -1)
            {
LABEL_23:
              v34 = qword_10177C388;
              sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
              v35 = swift_allocObject();
              v78 = xmmword_101385D80;
              *(v35 + 16) = xmmword_101385D80;
              v36 = v2;
              v37 = related decl 'e' for CKErrorCode.description.getter();
              v39 = v38;

              *(v35 + 56) = &type metadata for String;
              v40 = sub_100008C00();
              *(v35 + 64) = v40;
              *(v35 + 32) = v37;
              *(v35 + 40) = v39;
              os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v34, "Zone not found: %@", 18, 2, v35);

              v41 = *(v3 + 88);
              *(v3 + 88) = 0;
              sub_101011434(v41);
              v42 = swift_allocObject();
              *(v42 + 16) = v78;
              v81 = 0;
              v43 = String.init<A>(describing:)();
              *(v42 + 56) = &type metadata for String;
              *(v42 + 64) = v40;
              *(v42 + 32) = v43;
              *(v42 + 40) = v44;
              sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
              v45 = static OS_os_log.default.getter();
              v46 = static os_log_type_t.default.getter();
              os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v45, v46, v42);

              v47 = static os_log_type_t.default.getter();
              os_log(_:dso:log:_:_:)(v47, &_mh_execute_header, v34, "Setting zoneState to .unknown", 29, 2, _swiftEmptyArrayStorage);
              sub_100FD9B00(0);

              return;
            }

LABEL_45:
            swift_once();
            goto LABEL_23;
          }

          if (v33 != -1)
          {
            swift_once();
          }

          v54 = qword_10177C388;
          sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
          v55 = swift_allocObject();
          v77 = xmmword_101385D80;
          *(v55 + 16) = xmmword_101385D80;
          v56 = v2;
          v57 = related decl 'e' for CKErrorCode.description.getter();
          v59 = v58;

          *(v55 + 56) = &type metadata for String;
          *&v78 = sub_100008C00();
          *(v55 + 64) = v78;
          *(v55 + 32) = v57;
          *(v55 + 40) = v59;
          os_log(_:dso:log:_:_:)(a1, &_mh_execute_header, v54, "Uncaught public ckError, will try private handling: %@", 54, 2, v55);

          v79[0] = v56;
          _BridgedStoredNSError.code.getter();
          if (v82 == 110)
          {
            v69 = static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v54, "Attempting to use Manatee from a non-HSA2 account!", 50, 2, _swiftEmptyArrayStorage);
            if (*(v3 + 104) == 1)
            {
              *(v3 + 104) = 0;
              v70 = static os_log_type_t.error.getter();
              os_log(_:dso:log:_:_:)(v70, &_mh_execute_header, v54, "Manatee was available, but is not available now.", 48, 2, _swiftEmptyArrayStorage);
            }

            goto LABEL_40;
          }

          if (v82 == 112)
          {
            v61 = *(v3 + 88);
            *(v3 + 88) = 0;
            sub_101011434(v61);
            v62 = swift_allocObject();
            *(v62 + 16) = v77;
            v79[0] = 0;
            v63 = String.init<A>(describing:)();
            v64 = v78;
            *(v62 + 56) = &type metadata for String;
            *(v62 + 64) = v64;
            *(v62 + 32) = v63;
            *(v62 + 40) = v65;
            sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
            v66 = static OS_os_log.default.getter();
            v67 = static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v66, v67, v62);

            v68 = static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)(v68, &_mh_execute_header, v54, "Setting zoneState to .unknown", 29, 2, _swiftEmptyArrayStorage);
            sub_100FDF4A0();
            sub_100FD9B00(4u);
            sub_100FD3164(0);
            goto LABEL_40;
          }

          if (v82 == 111)
          {
            v60 = static os_log_type_t.error.getter();
            os_log(_:dso:log:_:_:)(v60, &_mh_execute_header, v54, "PCS Keys for com.apple.icloud.searchparty are not yet synced.", 61, 2, _swiftEmptyArrayStorage);
LABEL_40:

            return;
          }

          v71 = static os_log_type_t.error.getter();
          v72 = swift_allocObject();
          *(v72 + 16) = v77;
          v50 = v56;
          v73 = related decl 'e' for CKErrorCode.description.getter();
          v75 = v74;

          v76 = v78;
          *(v72 + 56) = &type metadata for String;
          *(v72 + 64) = v76;
          *(v72 + 32) = v73;
          *(v72 + 40) = v75;
          os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v54, "Uncaught private error: %{public}@", 34, 2, v72);
        }

        return;
      }
    }

    else
    {
    }

    goto LABEL_20;
  }
}

uint64_t sub_100FD6B08(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a1;
  type metadata accessor for Transaction();

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_100FD6C14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);

    QueueSynchronizer.conditionalSync<A>(_:)();
  }

  return result;
}

uint64_t sub_100FD6CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v40 = a1;
  v41 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  v10 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v11 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  v47 = a2;
  v13 = CKStringFromAccountStatus();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v12 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v12 + 64) = v17;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v18 = CKStringFromAccountStatus();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v21;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v11, "iCloud accountDidChange %{public}@ -> %{public}@", 48, 2, v12);

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v28 = static os_log_type_t.error.getter();
      result = os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v11, "iCloud Account not available due to restrictions!", 49, 2, _swiftEmptyArrayStorage);
      v22 = v47;
      if (*(v47 + 96) == 2)
      {
        goto LABEL_19;
      }

      v39 = *(v47 + 48);
      v29 = swift_allocObject();
      *(v29 + 16) = v40;
      *(v29 + 24) = v22;
      v52 = sub_101012748;
      v53 = v29;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_100006684;
      v51 = &unk_10165FDB0;
      v30 = _Block_copy(&aBlock);

      v31 = v41;
      static DispatchQoS.unspecified.getter();
      v54 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v32 = v42;
      v33 = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v30);
      (*(v45 + 8))(v32, v33);
      (*(v43 + 8))(v31, v44);
    }

    else
    {
      v22 = v47;
      if (a3 != 3)
      {
LABEL_11:
        v26 = static os_log_type_t.error.getter();
        result = os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v11, "Unknown CKAccountStatus!", 24, 2, _swiftEmptyArrayStorage);
        goto LABEL_19;
      }

      v24 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v11, "iCloud Account not available!", 29, 2, _swiftEmptyArrayStorage);
      if (*(v22 + 96) == 3)
      {
        v25 = static os_log_type_t.default.getter();
        result = os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, v11, "Account was already in .noAccount state", 39, 2, _swiftEmptyArrayStorage);
        goto LABEL_19;
      }

      v39 = *(v22 + 48);
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      *(v34 + 24) = v22;
      v52 = sub_101012740;
      v53 = v34;
      aBlock = _NSConcreteStackBlock;
      v49 = 1107296256;
      v50 = sub_100006684;
      v51 = &unk_10165FD60;
      v35 = _Block_copy(&aBlock);

      v36 = v41;
      static DispatchQoS.unspecified.getter();
      v54 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v37 = v42;
      v38 = v46;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v35);
      (*(v45 + 8))(v37, v38);
      (*(v43 + 8))(v36, v44);

      if (qword_101694940 != -1)
      {
        swift_once();
      }

      sub_1000034A4();
      sub_100EEA588(0, 0);
    }

    result = sub_100FD3164(0);
    goto LABEL_19;
  }

  if (!a3)
  {
    v27 = static os_log_type_t.error.getter();
    result = os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v11, "Could not determine account status!", 35, 2, _swiftEmptyArrayStorage);
    v22 = v47;
    goto LABEL_19;
  }

  v22 = v47;
  if (a3 != 1)
  {
    goto LABEL_11;
  }

  LOBYTE(aBlock) = 1;
  result = PassthroughSubject.send(_:)();
LABEL_19:
  *(v22 + 96) = a3;
  return result;
}

uint64_t sub_100FD7458(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100137944(a2, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100FD74BC(uint64_t a1, uint64_t a2)
{
  Transaction.capture()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100137944(a2, 0);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100FD7530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v9 = *(v20 - 8);
  __chkstk_darwin(v20);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    v18 = v12;
    swift_once();
    v12 = v18;
  }

  v13 = qword_10177C390;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C390, "Done waiting for availableWaitQueue", 35, 2, _swiftEmptyArrayStorage);
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v13, "Call completion on non-head-of-queue job", 40, 2, _swiftEmptyArrayStorage);
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_100B24A48;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10165F090;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v8, v6);
  (*(v9 + 8))(v11, v20);
}

uint64_t sub_100FD78A8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v40 = a3;
  v38 = a1;
  v6 = sub_1000BC4D4(&unk_1016B0FE0, &unk_101391980);
  __chkstk_darwin(v6 - 8);
  v8 = v32 - v7;
  v9 = sub_1000BC4D4(&qword_1016C2BA0, &qword_1013F7510);
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v12 = sub_1000BC4D4(&unk_1016C2BA8, &unk_1013F7518);
  v36 = *(v12 - 8);
  v37 = v12;
  __chkstk_darwin(v12);
  v14 = v32 - v13;
  if (a2[18] && (, v15 = sub_10050252C(), , (v15 & 1) != 0))
  {
    v34 = a4;
    v16 = static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      v31 = v16;
      swift_once();
      v16 = v31;
    }

    os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, qword_10177C390, "Database updates pending. Will proceed after updates.", 53, 2, _swiftEmptyArrayStorage);
    v17 = swift_allocObject();
    v32[0] = v17;
    v32[1] = a2;
    *(v17 + 16) = 0;
    v33 = (v17 + 16);
    v39 = a2[22];
    sub_1000BC4D4(&unk_1016B11B0, &unk_101391880);
    sub_1000041A4(&qword_1016B1210, &unk_1016B11B0, &unk_101391880, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Publisher.first()();
    v39 = a2[6];
    v18 = v39;
    v19 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    sub_1000041A4(&unk_1016C2BB8, &qword_1016C2BA0, &qword_1013F7510, &protocol conformance descriptor for Publishers.First<A>);
    sub_100009D18(&qword_1016AF9C0, &qword_101695570, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v20 = v18;
    Publisher.receive<A>(on:options:)();
    sub_10000B3A8(v8, &unk_1016B0FE0, &unk_101391980);

    (*(v35 + 8))(v11, v9);
    v21 = swift_allocObject();
    v22 = v34;
    v21[2] = v40;
    v21[3] = v22;
    v23 = v38;
    v21[4] = v32[0];
    v21[5] = v23;
    sub_1000041A4(&qword_1016C2BC8, &unk_1016C2BA8, &unk_1013F7518, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v24 = v37;
    v25 = Publisher<>.sink(receiveValue:)();

    (*(v36 + 8))(v14, v24);
    v26 = v33;
    swift_beginAccess();
    *v26 = v25;

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    v28 = static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      v30 = v28;
      swift_once();
      v28 = v30;
    }

    v29 = os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C390, "No pending updates. Can proceed now.", 36, 2, _swiftEmptyArrayStorage);
    return v40(v29);
  }
}

void sub_100FD7E70(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    v5 = v3;
    swift_once();
    v3 = v5;
  }

  v4 = os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_10177C390, "Database updates complete. Can proceed now.", 43, 2, _swiftEmptyArrayStorage);
  a2(v4);
  Transaction.capture()();
}

uint64_t sub_100FD7F1C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchQoS();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v45 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  v10 = a1;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Attempting to create the record: %{public}@", 43, 2, v9);

  sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  swift_allocObject();
  v15 = Future.init()();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = v10;
  v16[4] = v15;
  v17 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v18 = aBlock;
  v19 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C390;
  v21 = swift_allocObject();
  *(v21 + 16) = v45;
  *(v21 + 56) = &type metadata for Bool;
  *(v21 + 64) = &protocol witness table for Bool;
  *(v21 + 32) = v18;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "localAvailable: %d", v39);

  v22 = static os_log_type_t.default.getter();
  if (v18)
  {
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v20, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v23 = swift_allocObject();
    *(v23 + 2) = v17;
    *(v23 + 3) = v2;
    *(v23 + 4) = v15;
    v24 = qword_101694FA8;
    v25 = v17;

    if (v24 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v48 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v46 != 1)
    {
      v37 = type metadata accessor for Transaction();
      __chkstk_darwin(v37);
      *(&v39 - 4) = v2;
      *(&v39 - 3) = sub_101011758;
      *(&v39 - 2) = v23;
      static Transaction.named<A>(_:with:)();

      return v15;
    }

    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v2;
    v26[4] = v15;
    v27 = v25;

    sub_100FDA70C(v27);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_101011764;
    *(v28 + 24) = v26;

    Future.addSuccess(block:)();

    v29 = swift_allocObject();
    v29[2] = v2;
    v29[3] = v27;
    v29[4] = sub_101011764;
    v29[5] = v26;
    v30 = v27;

    Future.addFailure(block:)();
  }

  else
  {
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v20, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v31 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v20, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v32 = swift_allocObject();
    v32[2] = v2;
    v32[3] = sub_10101174C;
    v32[4] = v16;
    v51 = sub_100B28008;
    v52 = v32;
    aBlock = _NSConcreteStackBlock;
    v48 = 1107296256;
    v49 = sub_100006684;
    v50 = &unk_10165F6D0;
    v33 = _Block_copy(&aBlock);

    v34 = v39;
    static DispatchQoS.unspecified.getter();
    v46 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v35 = v41;
    v36 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v33);

    (*(v43 + 8))(v35, v36);
    (*(v40 + 8))(v34, v42);
  }

  return v15;
}

uint64_t sub_100FD8758(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a4;
  v8 = qword_101694FA8;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v17 == 1)
  {
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a4;

    v11 = v9;
    sub_100FDA70C(v11);
    v12 = swift_allocObject();
    *(v12 + 16) = sub_101012DFC;
    *(v12 + 24) = v10;

    Future.addSuccess(block:)();

    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = v11;
    v13[4] = sub_101012DFC;
    v13[5] = v10;

    v14 = v11;

    Future.addFailure(block:)();
  }

  else
  {
    v16 = type metadata accessor for Transaction();
    __chkstk_darwin(v16);
    static Transaction.named<A>(_:with:)();
  }
}

uint64_t sub_100FD8A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_100FDA70C(v7);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_101012DFC;
  *(v8 + 24) = v6;

  Future.addSuccess(block:)();

  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v7;
  v9[4] = sub_101012DFC;
  v9[5] = v6;
  v10 = v7;

  Future.addFailure(block:)();
}

uint64_t sub_100FD8B74(void *a1, void **a2, void *a3, uint64_t a4, void *a5)
{
  v45 = a4;
  v46 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = a1;
    v15 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    v18 = a3;
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Successfully saved the record: %{public}@", 41, 2, v17);

    v23 = swift_allocObject();
    *(v23 + 16) = v46;
    *(v23 + 24) = v14;
    v56 = sub_101012DB8;
    v57 = v23;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_100006684;
    v55 = &unk_10165F888;
    v24 = _Block_copy(&aBlock);
    v25 = v14;

    static DispatchQoS.unspecified.getter();
    v51 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v26 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);
  }

  else
  {
    v27 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v28 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10138BBE0;
    v30 = a3;
    v31 = [v30 description];
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    *(v29 + 56) = &type metadata for String;
    v35 = sub_100008C00();
    *(v29 + 64) = v35;
    *(v29 + 32) = v32;
    *(v29 + 40) = v34;
    aBlock = a2;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v36 = String.init<A>(describing:)();
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v35;
    *(v29 + 72) = v36;
    *(v29 + 80) = v37;
    os_log(_:dso:log:_:_:)(v27, &_mh_execute_header, v28, "error saving the record: %{public}@: %{public}@", 47, 2, v29);

    if (a2)
    {
      swift_errorRetain();
      v38 = v45;
      sub_100FD5F64(a2);
      v39 = swift_allocObject();
      v39[2] = v46;
      v39[3] = v38;
      v39[4] = a2;
      v56 = sub_101011824;
      v57 = v39;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100006684;
      v55 = &unk_10165F838;
      v40 = _Block_copy(&aBlock);

      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v26 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);
    }

    else
    {
      v41 = static os_log_type_t.fault.getter();
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v28, "No error message found", 22, 2, _swiftEmptyArrayStorage);
      v56 = sub_1010117D4;
      v57 = v46;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_100006684;
      v55 = &unk_10165F7E8;
      v42 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v26 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v42);
    }
  }

  (*(v49 + 8))(v10, v26);
  (*(v47 + 8))(v13, v48);
}

void sub_100FD938C()
{
  type metadata accessor for CKError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
  _BridgedStoredNSError.init(_:userInfo:)();
  Future.finish(error:)();
}

uint64_t sub_100FD9440(uint64_t a1, uint64_t a2, void *a3, int64_t a4, uint64_t a5)
{
  *&v52 = a1;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v22 = static os_log_type_t.error.getter();
    if (qword_101695040 == -1)
    {
LABEL_18:
      v29 = qword_10177C388;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_101385D80;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = v32;
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100008C00();
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v29, "Error creating record to CK. Error - %{public}@", 47, 2, v30);

      return (a4)(0, a1);
    }

LABEL_35:
    swift_once();
    goto LABEL_18;
  }

  v9 = *&v49[0];
  *&v52 = *&v49[0];
  sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
  _BridgedStoredNSError.code.getter();
  if (*&v49[0] == 26)
  {

    goto LABEL_4;
  }

  v41 = a3;
  v16 = _BridgedStoredNSError.userInfo.getter();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

    goto LABEL_15;
  }

  v19 = sub_100771D58(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  sub_100013894(*(v16 + 56) + 32 * v19, &v52);

  sub_1000BC4D4(&qword_1016BFE50, &unk_1013F17E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  v39 = a4;
  v22 = v44;
  v23 = v44 + 64;
  v24 = 1 << *(v44 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v44 + 64);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v40 = *&v49[0];
  if (v26)
  {
    goto LABEL_20;
  }

  do
  {
LABEL_21:
    a4 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (a4 >= v27)
    {

      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0;

LABEL_29:

      sub_10000B3A8(&v52, &qword_1016C2E88, &unk_1013F7720);
      a4 = v39;
      goto LABEL_17;
    }

    v26 = *(v23 + 8 * a4);
    ++v28;
  }

  while (!v26);
  while (1)
  {
    v34 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v35 = v34 | (a4 << 6);
    sub_100476DEC(*(v22 + 48) + 40 * v35, v49);
    sub_100013894(*(v22 + 56) + 32 * v35, v50 + 8);
    v46 = v50[0];
    v47 = v50[1];
    v48 = v51;
    v44 = v49[0];
    v45 = v49[1];
    sub_1000D2A70(&v44, v43, &unk_1016A0AF0, &unk_1013A48A0);
    if (!swift_dynamicCast())
    {
      sub_10000B3A8(&v44, &unk_1016A0AF0, &unk_1013A48A0);
      sub_100476E48(v43);
      v28 = a4;
      if (!v26)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_100476E48(v43);
    v43[0] = v42;
    _BridgedStoredNSError.code.getter();

    if (v42 == 26)
    {
      break;
    }

    sub_10000B3A8(&v44, &unk_1016A0AF0, &unk_1013A48A0);
    v28 = a4;
    v9 = v40;
    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_20:
    a4 = v28;
  }

  v54 = v46;
  v55 = v47;
  v56 = v48;
  v52 = v44;
  v53 = v45;

  v9 = v40;
  if (!*(&v53 + 1))
  {
    goto LABEL_29;
  }

  v36 = static os_log_type_t.error.getter();
  a4 = v39;
  if (qword_101695040 != -1)
  {
    v38 = v36;
    swift_once();
    v36 = v38;
  }

  os_log(_:dso:log:_:_:)(v36, &_mh_execute_header, qword_10177C388, "zoneNotFound error in partial errors.", 37, 2, _swiftEmptyArrayStorage, v39, a5);

  sub_10000B3A8(&v52, &qword_1016C2E88, &unk_1013F7720);
  a3 = v41;
LABEL_4:
  v10 = static os_log_type_t.error.getter();
  if (qword_101695040 != -1)
  {
    v37 = v10;
    swift_once();
    v10 = v37;
  }

  v11 = qword_10177C388;
  os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, qword_10177C388, "Setting up zone after zoneNotFound error", 40, 2, _swiftEmptyArrayStorage);
  sub_100FD9B00(0);
  v12 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v11, "Re-attempting created record after creating zone", 48, 2, _swiftEmptyArrayStorage);
  sub_100FDA70C(a3);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;

  Future.addSuccess(block:)();

  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;

  Future.addFailure(block:)();
}

void sub_100FD9B00(unsigned __int8 a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v3 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v2 = dispatch_group_create();
    v8 = static os_log_type_t.default.getter();
    if (qword_101695040 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = qword_10177C388;
  v12 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v65 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v14 = 0xEA00000000007470;
      v15 = 0x6D657474612D6552;
    }

    else
    {
      v14 = 0xEE00646E756F4620;
      v15 = 0x746F4E20656E6F5ALL;
    }
  }

  else if (a1 == 2)
  {
    v14 = 0xEC00000064657465;
    v15 = 0x6C656420656E6F5ALL;
  }

  else if (a1 == 3)
  {
    v14 = 0xEB00000000746E75;
    v15 = 0x6F6363612077654ELL;
  }

  else
  {
    v14 = 0x80000001013769C0;
    v15 = 0xD000000000000010;
  }

  *(v13 + 56) = &type metadata for String;
  v16 = v13;
  v64 = sub_100008C00();
  v16[8] = v64;
  v16[4] = v15;
  v16[5] = v14;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v11, "setupZone() reason: %{public}@", 30, 2, v16);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v17 = v66;
  if (v66)
  {
    if (v66 == 1)
    {
      v19 = static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v11, "Zone in creating state", 22, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      if (v66 == 2)
      {
        v18 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v11, "Zone already created", 20, 2, _swiftEmptyArrayStorage);
LABEL_33:

        return;
      }

      swift_errorRetain();
      v41 = static os_log_type_t.error.getter();
      v42 = swift_allocObject();
      *(v42 + 16) = v65;
      v66 = v17;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v43 = String.init<A>(describing:)();
      v44 = v64;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 64) = v44;
      *(v42 + 32) = v43;
      *(v42 + 40) = v45;
      os_log(_:dso:log:_:_:)(v41, &_mh_execute_header, v11, "Zone creation error: %{public}@", 31, 2, v42);

      sub_101011434(v17);
    }

LABEL_24:
    v46 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v46, &_mh_execute_header, v11, "Waiting for all zone create tasks to complete.", 46, 2, _swiftEmptyArrayStorage);
    OS_dispatch_group.wait()();
    QueueSynchronizer.conditionalSync<A>(_:)();
    v47 = v66;
    if (v66)
    {
      if (v66 == 1)
      {
        v49 = static os_log_type_t.error.getter();
        os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v11, "Zone in creating state!", 23, 2, _swiftEmptyArrayStorage);
      }

      else
      {
        if (v66 != 2)
        {
          swift_errorRetain();
          v51 = static os_log_type_t.error.getter();
          v52 = swift_allocObject();
          *(v52 + 16) = v65;
          v66 = v47;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v53 = String.init<A>(describing:)();
          v54 = v64;
          *(v52 + 56) = &type metadata for String;
          *(v52 + 64) = v54;
          *(v52 + 32) = v53;
          *(v52 + 40) = v55;
          os_log(_:dso:log:_:_:)(v51, &_mh_execute_header, v11, "Zone creation error: %{public}@", 31, 2, v52);

          v56 = type metadata accessor for Transaction();
          __chkstk_darwin(v56);
          *(&v59 - 4) = v3;
          *(&v59 - 3) = sub_101011474;
          *(&v59 - 2) = v3;

          static Transaction.named<A>(_:with:)();
          sub_101011434(v47);
          sub_101011434(v17);

          sub_101011434(v47);

          return;
        }

        v48 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v48, &_mh_execute_header, v11, "Zone set up completed.", 22, 2, _swiftEmptyArrayStorage);
      }
    }

    else
    {
      v50 = static os_log_type_t.error.getter();
      os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v11, "Zone in unknown state!", 22, 2, _swiftEmptyArrayStorage);
    }

    sub_101011434(v17);
    return;
  }

  v20 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v11, "Zone in unknown state", 21, 2, _swiftEmptyArrayStorage);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v57 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v57, &_mh_execute_header, v11, "Delegate does not define a zone!", 32, 2, _swiftEmptyArrayStorage);
    v58 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v58, &_mh_execute_header, v11, "Setting zoneState to .failure", 29, 2, _swiftEmptyArrayStorage);
    QueueSynchronizer.conditionalSync<A>(_:)();
    goto LABEL_33;
  }

  v22 = *(Strong + 160);
  swift_unknownObjectRelease();
  v23 = static os_log_type_t.default.getter();
  v62 = v12;
  v24 = swift_allocObject();
  *(v24 + 16) = v65;
  v63 = v2;
  *(v24 + 56) = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  *(v24 + 64) = sub_100009D18(&qword_1016C2E38, &unk_1016BBFC0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  *(v24 + 32) = v22;
  v25 = v22;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v11, "Attempting to create zone: %@", 29, 2, v24);

  dispatch_group_enter(v63);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v26 = static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v11, "Setting zoneState to .creating", 30, 2, _swiftEmptyArrayStorage);
  v27 = objc_allocWithZone(CKRecordZone);
  v61 = v25;
  v28 = [v27 initWithZoneID:v25];
  sub_100008BB8(0, &qword_1016C2E40, CKModifyRecordZonesOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10138C320;
  *(v29 + 32) = v28;
  v30 = v28;
  v31 = v29;
  v2 = v63;
  v32 = _swiftEmptyArrayStorage;
  v33.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(*&v31, v67).super.super.super.super.isa;
  v34 = swift_allocObject();
  v34[2] = v3;
  v34[3] = v30;
  v34[4] = v2;
  v60 = v30;

  v35 = v2;
  CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter();
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v33.super.super.super.super.isa setQualityOfService:25];
  }

  v36 = v33.super.super.super.super.isa;
  v37 = [(objc_class *)v36 configuration];
  if (v37)
  {
    v38 = v37;
    [v37 setAutomaticallyRetryNetworkFailures:0];

    v39 = [(objc_class *)v36 configuration];
    if (v39)
    {
      [v39 setDiscretionaryNetworkBehavior:0];

      __chkstk_darwin(v40);
      *(&v59 - 2) = v3;
      *(&v59 - 1) = v36;
      QueueSynchronizer.conditionalSync<A>(_:)();

      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100FDA51C(uint64_t *a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, const char *a4, uint64_t a5)
{
  v8 = *a1;
  v9 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    v11 = v9;
    swift_once();
    v9 = v11;
  }

  os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, qword_10177C388, a4, a5, 2, _swiftEmptyArrayStorage);
  return a2(v8, 0);
}

uint64_t sub_100FDA5D4(uint64_t a1, uint64_t (*a2)(void, uint64_t))
{
  v4 = static os_log_type_t.error.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  swift_getErrorValue();
  v7 = Error.localizedDescription.getter();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Error creating record to CK. Error - %{public}@", 47, 2, v6);

  return a2(0, a1);
}

void sub_100FDA70C(void *a1)
{
  v2 = v1;
  sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  swift_allocObject();
  v4 = Future.init()();
  v5 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138C320;
  *(v6 + 32) = a1;
  v7 = a1;
  v19.value._rawValue = v6;
  v19.is_nil = 0;
  v8.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v19, v20).super.super.super.super.isa;
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v8.super.super.super.super.isa setQualityOfService:25];
  }

  v9 = v8.super.super.super.super.isa;
  v10 = [(objc_class *)v9 configuration];
  if (!v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  [v10 setAutomaticallyRetryNetworkFailures:0];

  v12 = [(objc_class *)v9 configuration];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v12 setDiscretionaryNetworkBehavior:0];

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v4;

  CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
  v14 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  *(v16 + 56) = v5;
  *(v16 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr, &protocol conformance descriptor for NSObject);
  *(v16 + 32) = v9;
  v17 = v9;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "Adding CloudKit operation for create record %@", 46, 2, v16);

  __chkstk_darwin(v18);
  QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100FDAA00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  result = __chkstk_darwin(v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v34 = v8;
    v35 = v13;
    v36 = result;
    v37 = v9;
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Error creating record. Error - %{public}@", 41, 2, v19);

    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a3;
    v43 = sub_10058CE08;
    v44 = v23;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_100006684;
    v42 = &unk_10165F658;
    v24 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v8 = v34;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

LABEL_5:
    (*(v37 + 8))(v11, v8);
    (*(v35 + 8))(v16, v36);
  }

  if (a1)
  {
    v25 = result;
    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((a1 & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v26 = *(a1 + 32);
        }

        v27 = v26;
        v35 = v13;
        v36 = v25;
        v37 = v9;
        v28 = static os_log_type_t.default.getter();
        if (qword_101695040 != -1)
        {
          v32 = v28;
          swift_once();
          v28 = v32;
        }

        os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, qword_10177C388, "Record saved successfully.", 26, 2, _swiftEmptyArrayStorage);
        v29 = swift_allocObject();
        *(v29 + 16) = a5;
        *(v29 + 24) = v27;
        v43 = sub_1010116CC;
        v44 = v29;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100006684;
        v42 = &unk_10165F608;
        v30 = _Block_copy(&aBlock);

        v31 = v27;
        static DispatchQoS.unspecified.getter();
        v38 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100FDB020(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v36 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  *(v9 + 64) = sub_100009D18(&qword_1016C2E68, &qword_1016A9110, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = a1;
  v10 = a1;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Attempting to delete the record with ID: %{private}@", 52, 2, v9);

  sub_1000BC4D4(&qword_1016C2E70, &qword_1013F7708);
  swift_allocObject();
  v11 = Future.init()();
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = v10;
  v12[4] = v11;
  v13 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v14 = aBlock;
  v15 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C390;
  v17 = swift_allocObject();
  *(v17 + 16) = v36;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = v14;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "localAvailable: %d", v30);

  v18 = static os_log_type_t.default.getter();
  if (v14)
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v19 = swift_allocObject();
    *(v19 + 2) = v13;
    *(v19 + 3) = v2;
    *(v19 + 4) = v11;
    v20 = qword_101694FA8;
    v21 = v13;

    if (v20 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v39 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v37 != 1)
    {
      v28 = type metadata accessor for Transaction();
      __chkstk_darwin(v28);
      *(&v30 - 4) = v2;
      *(&v30 - 3) = sub_1010116B0;
      *(&v30 - 2) = v19;
      static Transaction.named<A>(_:with:)();

      return v11;
    }

    sub_100FDB90C(v21, v2, v11);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v16, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = sub_1010116A4;
    v23[4] = v12;
    v42 = sub_100B28008;
    v43 = v23;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100006684;
    v41 = &unk_10165F478;
    v24 = _Block_copy(&aBlock);

    v25 = v30;
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v26 = v32;
    v27 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v34 + 8))(v26, v27);
    (*(v31 + 8))(v25, v33);
  }

  return v11;
}

uint64_t sub_100FDB760(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a2;
  v7[4] = a4;
  v8 = qword_101694FA8;

  v9 = a3;
  if (v8 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v12 == 1)
  {
    sub_100FDB90C(v9, a2, a4);
  }

  else
  {
    v11 = type metadata accessor for Transaction();
    __chkstk_darwin(v11);
    static Transaction.named<A>(_:with:)();
  }
}

void sub_100FDB90C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  *(v8 + 56) = sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  *(v8 + 64) = sub_100009D18(&qword_1016C2E68, &qword_1016A9110, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
  *(v8 + 32) = a1;
  v9 = a1;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Deleting record: %{private}@", 28, 2, v8);

  sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v10 = swift_allocObject();
  LOBYTE(v7) = v10;
  *(v10 + 16) = xmmword_10138C320;
  *(v10 + 32) = v9;
  v11 = v9;
  v19.value._rawValue = 0;
  v19.is_nil = v7;
  v12.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v19, v20).super.super.super.super.isa;
  if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
  {
    [(objc_class *)v12.super.super.super.super.isa setQualityOfService:25];
  }

  v13 = v12.super.super.super.super.isa;
  v14 = [(objc_class *)v13 configuration];
  if (v14)
  {
    v15 = v14;
    [v14 setAutomaticallyRetryNetworkFailures:0];

    v16 = [(objc_class *)v13 configuration];
    if (v16)
    {
      [v16 setDiscretionaryNetworkBehavior:0];

      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a3;

      v18 = CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
      __chkstk_darwin(v18);
      QueueSynchronizer.conditionalSync<A>(_:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100FDBBEC(uint64_t a1, unint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v38 = v7;
    v39 = v8;
    swift_errorRetain();
    v14 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v15 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    aBlock = a2;

    sub_1000BC4D4(&unk_1016C2E78, &unk_1013F7710);
    v17 = String.init<A>(describing:)();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    v20 = sub_100008C00();
    *(v16 + 64) = v20;
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    aBlock = a3;
    swift_errorRetain();
    sub_1000BC4D4(&unk_101696AD0, &qword_10139A2E0);
    v21 = String.init<A>(describing:)();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v20;
    *(v16 + 72) = v21;
    *(v16 + 80) = v22;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "error deleting the recordId: %@: %@", 35, 2, v16);

    sub_100FD5F64(a3);
    v23 = swift_allocObject();
    *(v23 + 16) = v41;
    *(v23 + 24) = a3;
    v49 = sub_10058D540;
    v50 = v23;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100006684;
    v48 = &unk_10165F568;
    v24 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v7 = v38;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

LABEL_5:
    (*(v39 + 8))(v10, v7);
    (*(v42 + 8))(v13, v43);
  }

  v26 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_101385D80;
  aBlock = a2;

  sub_1000BC4D4(&unk_1016C2E78, &unk_1013F7710);
  v29 = String.init<A>(describing:)();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_100008C00();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "Successfully deleted the recordId: %@", 37, 2, v28);

  if (a2)
  {
    if (a2 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_12;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_12:
        v39 = v8;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v32 = *(a2 + 32);
        }

        v33 = v32;
        v34 = swift_allocObject();
        *(v34 + 16) = v41;
        *(v34 + 24) = v33;
        v49 = sub_101012DB8;
        v50 = v34;
        aBlock = _NSConcreteStackBlock;
        v46 = 1107296256;
        v47 = sub_100006684;
        v48 = &unk_10165F518;
        v35 = _Block_copy(&aBlock);

        v36 = v33;
        static DispatchQoS.unspecified.getter();
        v44 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_100FDC2D8(void *a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  v36 = xmmword_101385D80;
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v9 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v9 + 32) = a1;
  v10 = a1;
  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Updating Cloud's CKRecord data for %{private}@", 46, 2, v9);

  sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  swift_allocObject();
  v11 = Future.init()();
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = v10;
  v12[4] = SharingCircleWildAdvertisementKey.init(key:);
  v12[5] = 0;
  v12[6] = v11;
  v13 = v10;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v14 = aBlock;
  v15 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C390;
  v17 = swift_allocObject();
  *(v17 + 16) = v36;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = v14;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "localAvailable: %d", v30);

  v18 = static os_log_type_t.default.getter();
  if (v14)
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v19 = swift_allocObject();
    *(v19 + 2) = v13;
    *(v19 + 3) = SharingCircleWildAdvertisementKey.init(key:);
    *(v19 + 4) = 0;
    *(v19 + 5) = a2;
    *(v19 + 6) = v11;
    v20 = qword_101694FA8;
    v21 = v13;

    if (v20 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v39 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v37)
    {
      sub_100FDD384(v21, a2, v11);
    }

    else
    {
      v28 = type metadata accessor for Transaction();
      __chkstk_darwin(v28);
      *(&v30 - 4) = a2;
      *(&v30 - 3) = sub_101012DF4;
      *(&v30 - 2) = v19;
      static Transaction.named<A>(_:with:)();
    }
  }

  else
  {
    os_log(_:dso:log:_:_:)(v18, &_mh_execute_header, v16, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v16, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v23 = swift_allocObject();
    v23[2] = a2;
    v23[3] = sub_101012EF4;
    v23[4] = v12;
    v42 = sub_100B28008;
    v43 = v23;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_100006684;
    v41 = &unk_10165FF68;
    v24 = _Block_copy(&aBlock);

    v25 = v30;
    static DispatchQoS.unspecified.getter();
    v37 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v26 = v32;
    v27 = v35;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v24);

    (*(v34 + 8))(v26, v27);
    (*(v31 + 8))(v25, v33);
  }

  return v11;
}

uint64_t sub_100FDCA40(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for DispatchQoS();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v12 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v44 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v13 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v13 + 32) = a1;
  v14 = a1;
  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Updating Cloud's CKRecord data for %{private}@", 46, 2, v13);

  sub_1000BC4D4(&unk_1016C2E10, &qword_1013F76E8);
  swift_allocObject();
  v15 = Future.init()();
  v16 = swift_allocObject();
  v16[2] = v4;
  v16[3] = v14;
  v36 = a2;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v15;
  v17 = v14;

  v37 = a3;

  QueueSynchronizer.conditionalSync<A>(_:)();
  v18 = aBlock;
  v19 = static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C390;
  v21 = swift_allocObject();
  *(v21 + 16) = v44;
  *(v21 + 56) = &type metadata for Bool;
  *(v21 + 64) = &protocol witness table for Bool;
  *(v21 + 32) = v18;
  os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v20, "localAvailable: %d", v36);

  v22 = static os_log_type_t.default.getter();
  if (v18)
  {
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v20, "Container is already available -- calling completion immediately", 64, 2, _swiftEmptyArrayStorage);
    v23 = swift_allocObject();
    v25 = v36;
    v24 = v37;
    v23[2] = v17;
    v23[3] = v25;
    v23[4] = v24;
    v23[5] = v4;
    v23[6] = v15;
    v26 = qword_101694FA8;
    v27 = v17;

    if (v26 != -1)
    {
      swift_once();
    }

    aBlock = 0x7365547265646E75;
    v47 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    if (v45 != 1)
    {
      v34 = type metadata accessor for Transaction();
      __chkstk_darwin(v34);
      *(&v36 - 4) = v4;
      *(&v36 - 3) = sub_1010101B8;
      *(&v36 - 2) = v23;
      static Transaction.named<A>(_:with:)();

      return v15;
    }

    sub_100FDDB30(v27, v25, v24, v4, v15);
  }

  else
  {
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v20, "Container is not yet available", 30, 2, _swiftEmptyArrayStorage);
    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v20, "Waiting for availableWaitQueue", 30, 2, _swiftEmptyArrayStorage);
    v29 = swift_allocObject();
    v29[2] = v4;
    v29[3] = sub_1010101B4;
    v29[4] = v16;
    v50 = sub_100B28008;
    v51 = v29;
    aBlock = _NSConcreteStackBlock;
    v47 = 1107296256;
    v48 = sub_100006684;
    v49 = &unk_10165F130;
    v30 = _Block_copy(&aBlock);

    v31 = v38;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v32 = v40;
    v33 = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v42 + 8))(v32, v33);
    (*(v39 + 8))(v31, v41);
  }

  return v15;
}

uint64_t sub_100FDD1B4(uint64_t a1, char *a2, void *a3, uint64_t (*a4)(void **), uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a2;
  v11[6] = a6;
  v12 = qword_101694FA8;

  v13 = a3;
  if (v12 != -1)
  {
    swift_once();
  }

  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v16 == 1)
  {
    sub_100FDDB30(v13, a4, a5, a2, a6);
  }

  else
  {
    v15 = type metadata accessor for Transaction();
    __chkstk_darwin(v15);
    static Transaction.named<A>(_:with:)();
  }
}

void sub_100FDD384(void *a1, void *a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  v14 = *(CKRecord.changedKeys()() + 16);

  v15 = static os_log_type_t.default.getter();
  if (v14)
  {
    v16 = a3;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v17 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    v50 = xmmword_101385D80;
    *(v18 + 16) = xmmword_101385D80;
    *(v18 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v18 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
    *(v18 + 32) = v13;
    v19 = v13;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v17, "Update modified record: %{private}@", 35, 2, v18);

    v20 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v54.value._rawValue = swift_allocObject();
    *(v54.value._rawValue + 1) = xmmword_10138C320;
    *(v54.value._rawValue + 4) = v19;
    v54.is_nil = 0;
    v21.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v54, v55).super.super.super.super.isa;
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v21.super.super.super.super.isa setQualityOfService:25];
    }

    v22 = v21.super.super.super.super.isa;
    v23 = [(objc_class *)v22 configuration];
    if (v23)
    {
      v24 = v23;
      v25 = v16;
      [v23 setAutomaticallyRetryNetworkFailures:0];

      v26 = [(objc_class *)v22 configuration];
      if (v26)
      {
        [v26 setDiscretionaryNetworkBehavior:0];

        v27 = swift_allocObject();
        v28 = v51;
        v27[2] = v51;
        v27[3] = v25;
        v27[4] = v19;
        v29 = v19;

        CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
        v30 = static os_log_type_t.default.getter();
        v31 = swift_allocObject();
        *(v31 + 16) = v50;
        *(v31 + 56) = v20;
        *(v31 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr, &protocol conformance descriptor for NSObject);
        *(v31 + 32) = v22;
        v32 = v22;
        os_log(_:dso:log:_:_:)(v30, &_mh_execute_header, v17, "Adding CloudKit operation %@", 28, 2, v31);

        __chkstk_darwin(v33);
        *(&v46 - 2) = v28;
        *(&v46 - 1) = v32;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
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
    v47 = v10;
    *&v50 = a3;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v48 = v9;
    v49 = v6;
    v34 = qword_10177C388;
    v35 = v5;
    if (os_log_type_enabled(qword_10177C388, v15))
    {
      v36 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2081;
      v37 = [v13 recordID];
      v38 = [v37 recordName];

      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = sub_1000136BC(v39, v41, aBlock);

      *(v36 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v34, v15, "No updates in the record %{private,mask.hash}s. Skipping.", v36, 0x16u);
      sub_100007BAC(v46);
    }

    v43 = swift_allocObject();
    *(v43 + 16) = v50;
    *(v43 + 24) = v13;
    aBlock[4] = sub_101012DB8;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101660008;
    v44 = _Block_copy(aBlock);
    v45 = v13;

    static DispatchQoS.unspecified.getter();
    v52 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v44);
    (*(v49 + 8))(v8, v35);
    (*(v47 + 8))(v12, v48);
  }
}

void sub_100FDDB30(void *a1, uint64_t (*a2)(void **), uint64_t a3, char *a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v59 = v9;
  *&v60 = v10;
  __chkstk_darwin(v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v17 = a1;
  a2(&v65);
  v62 = v65;
  v18 = *(CKRecord.changedKeys()() + 16);

  v19 = static os_log_type_t.default.getter();
  if (v18)
  {
    v20 = a4;
    v61 = a5;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v21 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v22 = swift_allocObject();
    v60 = xmmword_101385D80;
    *(v22 + 16) = xmmword_101385D80;
    *(v22 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v22 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
    v23 = v62;
    *(v22 + 32) = v62;
    v24 = v23;
    os_log(_:dso:log:_:_:)(v19, &_mh_execute_header, v21, "Update modified record: %{private}@", 35, 2, v22);

    v25 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v66.value._rawValue = swift_allocObject();
    *(v66.value._rawValue + 1) = xmmword_10138C320;
    *(v66.value._rawValue + 4) = v24;
    v66.is_nil = 0;
    v26.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v66, v67).super.super.super.super.isa;
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v26.super.super.super.super.isa setQualityOfService:25];
    }

    v27 = v26.super.super.super.super.isa;
    v28 = [(objc_class *)v27 configuration];
    if (v28)
    {
      v29 = v28;
      [v28 setAutomaticallyRetryNetworkFailures:0];

      v30 = [(objc_class *)v27 configuration];
      if (v30)
      {
        [v30 setDiscretionaryNetworkBehavior:0];

        v31 = swift_allocObject();
        v32 = v61;
        v31[2] = v20;
        v31[3] = v32;
        v31[4] = v17;
        v33 = v17;

        CKModifyRecordsOperation.undeprecated_modifyRecordsCompletionBlock.setter();
        v34 = static os_log_type_t.default.getter();
        v35 = swift_allocObject();
        *(v35 + 16) = v60;
        *(v35 + 56) = v25;
        *(v35 + 64) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr, &protocol conformance descriptor for NSObject);
        *(v35 + 32) = v27;
        v36 = v27;
        os_log(_:dso:log:_:_:)(v34, &_mh_execute_header, v21, "Adding CloudKit operation %@", 28, 2, v35);

        __chkstk_darwin(v37);
        *(&v56 - 2) = v20;
        *(&v56 - 1) = v36;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
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
    v56 = v12;
    v57 = v13;
    v58 = a4;
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v38 = qword_10177C388;
    v39 = v14;
    v40 = v16;
    v41 = a5;
    if (os_log_type_enabled(qword_10177C388, v19))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 141558275;
      *(v42 + 4) = 1752392040;
      *(v42 + 12) = 2081;
      v44 = [v17 recordID];
      v45 = v17;
      v46 = [v44 recordName];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v41;
      v49 = v48;

      v17 = v45;
      v50 = sub_1000136BC(v47, v49, aBlock);
      v41 = v61;

      *(v42 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v38, v19, "No updates in the record %{private,mask.hash}s. Skipping.", v42, 0x16u);
      sub_100007BAC(v43);
    }

    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    *(v51 + 24) = v17;
    aBlock[4] = sub_101012DB8;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165F1D0;
    v52 = _Block_copy(aBlock);
    v53 = v17;

    static DispatchQoS.unspecified.getter();
    v63 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v54 = v56;
    v55 = v59;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);
    (*(v60 + 8))(v54, v55);
    (*(v39 + 8))(v40, v57);
  }
}

uint64_t sub_100FDE310(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(v15 - 8);
  result = __chkstk_darwin(v15);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = &v31 - v20;
  if (a3)
  {
    v34 = v16;
    v35 = v18;
    swift_errorRetain();
    sub_100FD5F64(a3);
    v33 = *(a4 + 48);
    v22 = swift_allocObject();
    v22[2] = a5;
    v22[3] = a4;
    v22[4] = a3;
    v41 = sub_101012DF8;
    v42 = v22;
    aBlock = _NSConcreteStackBlock;
    v38 = 1107296256;
    v39 = sub_100006684;
    v40 = &unk_10165F270;
    v23 = _Block_copy(&aBlock);
    swift_errorRetain();

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v12 + 8))(v14, v11);
    (*(v34 + 8))(v21, v35);
  }

  if (a1)
  {
    v24 = &v31 - v20;
    if (a1 >> 62)
    {
      v35 = v18;
      result = _CocoaArrayWrapper.endIndex.getter();
      v18 = v35;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_8:
        v32 = v12;
        v34 = v16;
        v35 = v18;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v25 = *(a1 + 32);
        }

        v26 = v25;
        v33 = *(a4 + 48);
        v27 = swift_allocObject();
        v27[2] = a6;
        v27[3] = a5;
        v27[4] = v26;
        v41 = sub_1010101DC;
        v42 = v27;
        aBlock = _NSConcreteStackBlock;
        v38 = 1107296256;
        v39 = sub_100006684;
        v40 = &unk_10165F220;
        v28 = _Block_copy(&aBlock);

        v29 = a6;
        v30 = v26;
        static DispatchQoS.unspecified.getter();
        v36 = _swiftEmptyArrayStorage;
        sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
        sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);

        (*(v32 + 8))(v14, v11);
        (*(v34 + 8))(v24, v35);
      }
    }
  }

  return result;
}

uint64_t sub_100FDE83C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  *(v6 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  *(v6 + 64) = sub_100009D18(&qword_101697F90, &qword_101698150, CKRecord_ptr, &protocol conformance descriptor for NSObject);
  *(v6 + 32) = a1;
  v7 = a1;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Saving record %{private}@", 25, 2, v6);

  return Future.finish(result:)();
}

uint64_t sub_100FDE988()
{
  sub_100477574(v0 + 16);

  sub_101011434(*(v0 + 88));

  return v0;
}

uint64_t sub_100FDEA68()
{
  sub_100FDE988();

  return swift_deallocClassInstance();
}

void sub_100FDEA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100FD01E4();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v11[4] = sub_1010115E0;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100FDF200;
  v11[3] = &unk_10165F2E8;
  v10 = _Block_copy(v11);

  [v8 accountStatusWithCompletionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_100FDEBB8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a4;
  v34[1] = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v37 = *(v12 - 8);
  v38 = v12;
  __chkstk_darwin(v12);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34[0] = a6;
    swift_errorRetain();
    v15 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v16 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_101385D80;
    aBlock = a2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_100008C00();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "error fetching account status: %{public}@", 41, 2, v17);

    v21 = swift_allocObject();
    v22 = v35;
    v21[2] = v36;
    v21[3] = v22;
    v21[4] = v34[0];
    v45 = sub_101011630;
    v46 = v21;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100006684;
    v44 = &unk_10165F388;
    v23 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);
  }

  else
  {
    LODWORD(v34[0]) = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v24 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v26 = CKStringFromAccountStatus();
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v27;
    *(v25 + 40) = v29;
    os_log(_:dso:log:_:_:)(LODWORD(v34[0]), &_mh_execute_header, v24, "Fetched CK account status: %{public}@", 37, 2, v25);

    v30 = swift_allocObject();
    v31 = v35;
    v30[2] = v36;
    v30[3] = v31;
    v30[4] = a6;
    v30[5] = a1;
    v45 = sub_1010115EC;
    v46 = v30;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100006684;
    v44 = &unk_10165F338;
    v32 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v40 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v32);
  }

  (*(v39 + 8))(v11, v9);
  (*(v37 + 8))(v14, v38);
}

void sub_100FDF200(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_100FDF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100FD01E4();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a3;
  v8[4] = a4;
  v10[4] = sub_101011938;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000D488C;
  v10[3] = &unk_10165FA18;
  v9 = _Block_copy(v10);

  [v7 accountInfoWithCompletionHandler:v9];
  _Block_release(v9);
}

void sub_100FDF388(void *a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  Transaction.capture()();
  if (a2)
  {
    swift_errorRetain();
    a4(a2, 1);
  }

  else if (a1)
  {
    v7 = a1;
    a4(a1, 0);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void sub_100FDF4A0()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v2 + 32);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v10 = (v4 + 8);
  v12 = v11(v6, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = *(Strong + 160);
    swift_unknownObjectRelease();
    v15 = dispatch_group_create();
    dispatch_group_enter(v15);
    sub_100008BB8(0, &qword_1016C2E40, CKModifyRecordZonesOperation_ptr);
    sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
    v16 = swift_allocObject();
    v17 = v16;
    *(v16 + 16) = xmmword_10138C320;
    *(v16 + 32) = v14;
    v18 = v14;
    v29.value._rawValue = _swiftEmptyArrayStorage;
    v29.is_nil = v17;
    v19.super.super.super.super.isa = CKModifyRecordZonesOperation.init(recordZonesToSave:recordZoneIDsToDelete:)(v29, v30).super.super.super.super.isa;
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v15;
    v9 = v18;
    v10 = v15;
    CKModifyRecordZonesOperation.undeprecated_modifyRecordZonesCompletionBlock.setter();
    if (qos_class_self() >= QOS_CLASS_USER_INITIATED)
    {
      [(objc_class *)v19.super.super.super.super.isa setQualityOfService:25];
    }

    v1 = v19.super.super.super.super.isa;
    v21 = [(objc_class *)v1 configuration];
    if (v21)
    {
      v22 = v21;
      [v21 setAutomaticallyRetryNetworkFailures:0];

      v23 = [(objc_class *)v1 configuration];
      if (v23)
      {
        [v23 setDiscretionaryNetworkBehavior:0];

        __chkstk_darwin(v24);
        *&v28[-32] = v9;
        *&v28[-24] = v2;
        *&v28[-16] = v1;
        QueueSynchronizer.conditionalSync<A>(_:)();
        v12 = static os_log_type_t.default.getter();
        if (qword_101695040 == -1)
        {
LABEL_8:
          os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, qword_10177C388, "Waiting for all zone delete tasks to complete.", 46, 2, _swiftEmptyArrayStorage);
          OS_dispatch_group.wait()();

          return;
        }

LABEL_13:
        v26 = v12;
        swift_once();
        v12 = v26;
        goto LABEL_8;
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
    v25 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      v27 = v25;
      swift_once();
      v25 = v27;
    }

    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C388, "Delegate does not define a zone!", 32, 2, _swiftEmptyArrayStorage);
  }
}

void sub_100FDF880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, NSObject *a5)
{
  if (a3)
  {
    swift_errorRetain();
    v6 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v7 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v9 = String.init<A>(describing:)();
    v11 = v10;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100008C00();
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Error deleting zone: %{public}@", 31, 2, v8);
  }

  else
  {
    v13 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v14 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    *(v15 + 56) = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
    *(v15 + 64) = sub_100009D18(&qword_1016C2E38, &unk_1016BBFC0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
    *(v15 + 32) = a4;
    v16 = a4;
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Deleted Zone: %@", 16, 2, v15);
  }

  dispatch_group_leave(a5);
}

void sub_100FDFACC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  *(v7 + 56) = sub_100008BB8(0, &unk_1016BBFC0, CKRecordZoneID_ptr);
  *(v7 + 64) = sub_100009D18(&qword_1016C2E38, &unk_1016BBFC0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  *(v7 + 32) = a1;
  v8 = a1;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "Queuing operation to deleting zone: %@", 38, 2, v7);

  v9 = sub_100FD01E4();
  v10 = [v9 privateCloudDatabase];

  [v10 addOperation:a3];
}

uint64_t sub_100FDFC50(uint64_t a1)
{
  sub_101011540();
  v2 = swift_allocError();
  v3 = *(a1 + 88);
  *(a1 + 88) = v2;
  swift_errorRetain();
  sub_101011434(v3);
  sub_101010C38(v2);
}

void sub_100FDFCC4(uint64_t a1)
{
  v1 = *(a1 + 88);
  *(a1 + 88) = 1;
  sub_101011434(v1);
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  v7 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v6, v7, v2);
}

void sub_100FDFDCC(void *a1, unint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  v9 = sub_100008BB8(0, &qword_1016C2E58, CKRecordZone_ptr);
  *(v8 + 56) = v9;
  v10 = sub_100009D18(&qword_1016C2E60, &qword_1016C2E58, CKRecordZone_ptr, &protocol conformance descriptor for NSObject);
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  v11 = a1;
  os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v7, "Creating Zone: %@", 17, 2, v8);

  if (a2)
  {
    v12 = *(a3 + 88);
    *(a3 + 88) = a2;
    swift_errorRetain();
    swift_errorRetain();
    swift_errorRetain();
    sub_101011434(v12);
    sub_101010C38(a2);

    v13 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v7, "Setting zoneState to .failure", 29, 2, _swiftEmptyArrayStorage);
    v14 = static os_log_type_t.error.getter();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_100008C00();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v7, "Error creating zone: %{public}@", 31, 2, v15);
  }

  else
  {
    v19 = *(a3 + 88);
    *(a3 + 88) = 2;
    sub_101011434(v19);
    sub_101010C38(2uLL);
    v20 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, v7, "Setting zoneState to .created", 29, 2, _swiftEmptyArrayStorage);
    v21 = static os_log_type_t.default.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_101385D80;
    *(v22 + 56) = v9;
    *(v22 + 64) = v10;
    *(v22 + 32) = v11;
    v23 = v11;
    os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v7, "Created Zone: %@", 16, 2, v22);

    v24 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v24, &_mh_execute_header, v7, "Initial fetch complete", 22, 2, _swiftEmptyArrayStorage);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v25 = static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      v29 = v25;
      swift_once();
      v25 = v29;
    }

    v26 = qword_10177C390;
    os_log(_:dso:log:_:_:)(v25, &_mh_execute_header, qword_10177C390, "Signaling availableSemaphore", 28, 2, _swiftEmptyArrayStorage, 1, 2);
    v27 = *(a3 + 64);
    OS_dispatch_semaphore.signal()();

    v28 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v26, "Signaled availableSemaphore", 27, 2, _swiftEmptyArrayStorage);
    sub_100A48990();
  }

  dispatch_group_leave(a4);
}

void sub_100FE020C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 208) = a1;
  v20 = static os_log_type_t.error.getter();
  if (a1 == 3)
  {
    if (qword_101695040 != -1)
    {
      v31 = v20;
      swift_once();
      v20 = v31;
    }

    v21 = qword_10177C388;
    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C388, "No account found, move on finish setup", 38, 2, _swiftEmptyArrayStorage);
    v22 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v22, &_mh_execute_header, v21, "Initial fetch complete", 22, 2, _swiftEmptyArrayStorage);
    QueueSynchronizer.conditionalSync<A>(_:)();
    v23 = static os_log_type_t.default.getter();
    if (qword_101695048 != -1)
    {
      v32 = v23;
      swift_once();
      v23 = v32;
    }

    v24 = qword_10177C390;
    os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, qword_10177C390, "Signaling availableSemaphore", 28, 2, _swiftEmptyArrayStorage);
    v25 = *(a2 + 64);
    OS_dispatch_semaphore.signal()();

    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v24, "Signaled availableSemaphore", 27, 2, _swiftEmptyArrayStorage);

    sub_100A48990();
  }

  else
  {
    v36 = v4;
    if (qword_101695040 != -1)
    {
      v33 = v20;
      swift_once();
      v20 = v33;
    }

    os_log(_:dso:log:_:_:)(v20, &_mh_execute_header, qword_10177C388, "Failure creating Zone. retrying...", 34, 2, _swiftEmptyArrayStorage);
    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    (*(v17 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v16);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v17 + 8))(v19, v16);
    static DispatchTime.now()();
    + infix(_:_:)();
    v27 = v38;
    v37 = *(v37 + 8);
    (v37)(v13, v38);
    aBlock[4] = sub_101011674;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_10165F3B0;
    v28 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v42 = _swiftEmptyArrayStorage;
    sub_100004084(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
    v29 = v36;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v30 = v35;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v28);

    (*(v41 + 8))(v6, v29);
    (*(v39 + 8))(v9, v40);
    (v37)(v15, v27);
  }
}

void sub_100FE08A8(NSObject *a1, int a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v126 = a4;
  v127 = a5;
  v125 = a2;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v119[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v6 + 32);
  *v16 = v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.notOnQueue(_:), v13);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_37;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = _swiftEmptyArrayStorage;
  v20 = swift_allocObject();
  v123 = v12;
  v124 = v20;
  *(v20 + 16) = _swiftEmptyArrayStorage;
  if (a3)
  {
    v21 = static os_log_type_t.debug.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C388;
    if (os_log_type_enabled(qword_10177C388, v21))
    {
      v23 = swift_slowAlloc();
      v128 = a1;
      v24 = v23;
      v25 = swift_slowAlloc();
      aBlock = v25;
      *v24 = 136315138;
      v26 = [*(v6 + 280) debugDescription];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v122) = v21;
      v28 = v19;
      v29 = v10;
      v30 = v9;
      v31 = v22;
      v32 = v6;
      v33 = v27;
      v35 = v34;

      v36 = v33;
      v6 = v32;
      v22 = v31;
      v9 = v30;
      v10 = v29;
      v19 = v28;
      v37 = sub_1000136BC(v36, v35, &aBlock);

      *(v24 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v22, v122, "fetchDatabaseChanges exclusiveAccessSemaphore -- caller claims to already have access %s", v24, 0xCu);
      sub_100007BAC(v25);

      a1 = v128;
    }
  }

  else
  {
    v128 = a1;
    v38 = static os_log_type_t.info.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v22 = qword_10177C388;
    if (os_log_type_enabled(qword_10177C388, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v39 = 136315138;
      v41 = [*(v6 + 280) debugDescription];
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      LODWORD(v122) = v38;
      v43 = v10;
      v44 = v9;
      v45 = v22;
      v46 = v19;
      v47 = v6;
      v49 = v48;

      v50 = sub_1000136BC(v42, v49, &aBlock);
      v6 = v47;
      v19 = v46;
      v22 = v45;
      v9 = v44;
      v10 = v43;

      *(v39 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v22, v122, ">>> fetchDatabaseChanges exclusiveAccessSemaphore.wait() %s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    v51 = *(v6 + 280);
    OS_dispatch_semaphore.wait()();
    v52 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock = v54;
      *v53 = 136315138;
      v55 = [v51 debugDescription];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v19;
      v57 = v10;
      v58 = v9;
      v59 = v22;
      v60 = v6;
      v62 = v61;

      v63 = sub_1000136BC(v56, v62, &aBlock);
      v6 = v60;
      v22 = v59;
      v9 = v58;
      v10 = v57;
      v19 = v121;

      *(v53 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v22, v52, "<<< fetchDatabaseChanges exclusiveAccessSemaphore.wait() %s", v53, 0xCu);
      sub_100007BAC(v54);
    }

    a1 = v128;
  }

  v64 = [a1 scope];
  v65 = v123;
  sub_10088F090(v64);
  v66 = sub_10088F948(v65, *(v6 + 272));
  (*(v10 + 8))(v65, v9);
  v123 = [objc_allocWithZone(CKFetchDatabaseChangesOperation) initWithPreviousServerChangeToken:v66];
  v67 = [objc_opt_self() sharedInstance];
  v68 = [v67 isInternalBuild];

  v128 = v22;
  v122 = v66;
  if (v68)
  {
    v121 = v19;
    v69 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_10138BBE0;
    [a1 scope];
    v71 = CKDatabaseScope.description.getter();
    v73 = v72;
    *(v70 + 56) = &type metadata for String;
    v74 = sub_100008C00();
    v75 = v74;
    *(v70 + 64) = v74;
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    if (v66)
    {
      v76 = v66;
      v120 = v69;
      v77 = a1;
      v78 = v6;
      v79 = [v76 data];
      v80 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v81;

      v83 = Data.hexString.getter();
      v85 = v84;
      sub_100016590(v80, v82);
      v86 = (v70 + 72);
      *(v70 + 96) = &type metadata for String;
      *(v70 + 104) = v75;
      if (v85)
      {
        *v86 = v83;
        v6 = v78;
        v19 = v121;
        a1 = v77;
        v22 = v128;
        v69 = v120;
LABEL_31:
        *(v70 + 80) = v85;
        os_log(_:dso:log:_:_:)(v69, &_mh_execute_header, v22, "Old %{public}@ database change token: %@", 40, 2, v70);

        v87 = v124;
        goto LABEL_32;
      }

      v6 = v78;
      v19 = v121;
      a1 = v77;
      v22 = v128;
      v69 = v120;
    }

    else
    {
      v86 = (v70 + 72);
      *(v70 + 96) = &type metadata for String;
      *(v70 + 104) = v74;
      v19 = v121;
    }

    *v86 = 7104878;
    v85 = 0xE300000000000000;
    goto LABEL_31;
  }

  v87 = v124;
  if (v66)
  {
    v88 = v66;
    v89 = v22;
    v90 = [v88 data];
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;

    sub_100016590(v91, v93);
    v94 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_101385D80;
    [a1 scope];
    v96 = CKDatabaseScope.description.getter();
    v98 = v97;
    *(v95 + 56) = &type metadata for String;
    *(v95 + 64) = sub_100008C00();
    *(v95 + 32) = v96;
    *(v95 + 40) = v98;
    os_log(_:dso:log:_:_:)(v94, &_mh_execute_header, v89, "Old %{public}@ database change token: non-nil", 45, 2, v95);
  }

  else
  {
    v99 = v22;
    v100 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_101385D80;
    [a1 scope];
    v102 = CKDatabaseScope.description.getter();
    v104 = v103;
    *(v101 + 56) = &type metadata for String;
    *(v101 + 64) = sub_100008C00();
    *(v101 + 32) = v102;
    *(v101 + 40) = v104;
    os_log(_:dso:log:_:_:)(v100, &_mh_execute_header, v99, "Old %{public}@ database change token: nil", 41, 2, v101);
  }

LABEL_32:
  v105 = v123;
  [v123 setFetchAllChanges:1];
  a3 = v105;
  v106 = [a3 configuration];
  if (v106)
  {
    v107 = v106;
    [v106 setAutomaticallyRetryNetworkFailures:0];

    v108 = [a3 configuration];
    if (v108)
    {
      [v108 setDiscretionaryNetworkBehavior:0];

      v133 = sub_101012EF0;
      v134 = v19;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_101012EEC;
      v132 = &unk_10165FA90;
      v109 = _Block_copy(&aBlock);

      [a3 setRecordZoneWithIDChangedBlock:v109];
      _Block_release(v109);
      v133 = sub_10101197C;
      v134 = v87;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_101012EEC;
      v132 = &unk_10165FAB8;
      v110 = _Block_copy(&aBlock);

      [a3 setRecordZoneWithIDWasDeletedBlock:v110];
      _Block_release(v110);
      v111 = swift_allocObject();
      v112 = v125 & 1;
      *(v111 + 16) = v125 & 1;
      v133 = sub_101011998;
      v134 = v111;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_101012EEC;
      v132 = &unk_10165FB08;
      v113 = _Block_copy(&aBlock);

      [a3 setChangeTokenUpdatedBlock:v113];
      _Block_release(v113);
      v114 = swift_allocObject();
      *(v114 + 16) = v112;
      *(v114 + 24) = v6;
      *(v114 + 32) = a1;
      v115 = v127;
      *(v114 + 40) = v126;
      *(v114 + 48) = v115;
      *(v114 + 56) = v87;
      *(v114 + 64) = v19;

      v12 = a1;

      CKFetchDatabaseChangesOperation.undeprecated_fetchDatabaseChangesCompletionBlock.setter();
      v13 = static os_log_type_t.default.getter();
      if (qword_101695040 == -1)
      {
LABEL_35:
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_101385D80;
        *(v116 + 56) = sub_100008BB8(0, &qword_1016C2E90, CKFetchDatabaseChangesOperation_ptr);
        *(v116 + 64) = sub_100009D18(&unk_1016C2E98, &qword_1016C2E90, CKFetchDatabaseChangesOperation_ptr, &protocol conformance descriptor for NSObject);
        *(v116 + 32) = a3;
        v117 = a3;
        os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v128, "Adding CloudKit operation %@", 28, 2, v116);

        __chkstk_darwin(v118);
        *&v119[-16] = v12;
        *&v119[-8] = v117;
        QueueSynchronizer.conditionalSync<A>(_:)();

        return;
      }

LABEL_37:
      swift_once();
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100FE1668(uint64_t a1, void *a2)
{
  if (a2)
  {
    v23 = a2;
    sub_10088F5E8(v23, a1);
    v3 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v4 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10138BBE0;
    v6 = URL.absoluteString.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    v9 = sub_100008C00();
    *(v5 + 64) = v9;
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    v10 = [v23 data];
    v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = Data.hexString.getter();
    v16 = v15;
    sub_100016590(v11, v13);
    *(v5 + 96) = &type metadata for String;
    *(v5 + 104) = v9;
    *(v5 + 72) = v14;
    *(v5 + 80) = v16;
    os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "Updated change token -- URL: %{public}@, token, %@", 50, 2, v5);
  }

  else
  {
    sub_10088F860();
    v17 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v18 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v20 = URL.absoluteString.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "Deleted change token -- URL: %@", 31, 2, v19);
  }
}

uint64_t sub_100FE1B40(void *a1, void *a2)
{
  v5 = type metadata accessor for URL();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v25 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10138BBE0;
  [a1 scope];
  v9 = CKDatabaseScope.description.getter();
  v11 = v10;
  *(v8 + 56) = &type metadata for String;
  v12 = sub_100008C00();
  v13 = v12;
  *(v8 + 64) = v12;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  if (!a2)
  {
    v21 = (v8 + 72);
    *(v8 + 96) = &type metadata for String;
    *(v8 + 104) = v12;
LABEL_8:
    *v21 = 7104878;
    v20 = 0xE300000000000000;
    goto LABEL_9;
  }

  v23[1] = v2;
  v24 = v5;
  v14 = [a2 data];
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = Data.hexString.getter();
  v20 = v19;
  sub_100016590(v15, v17);
  v21 = (v8 + 72);
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v13;
  if (!v20)
  {
    v5 = v24;
    goto LABEL_8;
  }

  *v21 = v18;
  v5 = v24;
LABEL_9:
  *(v8 + 80) = v20;
  os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v25, "New database change token -- database: %{public}@, token: %@", 60, 2, v8);

  sub_10088F090([a1 scope]);
  sub_100FE1668(v7, a2);
  return (*(v27 + 8))(v7, v5);
}

uint64_t sub_100FE1DB4(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for URL();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138B360;
  [a1 scope];
  v10 = CKDatabaseScope.description.getter();
  v26 = a1;
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v14 = [a2 zoneName];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = v13;
  *(v9 + 72) = v15;
  *(v9 + 80) = v17;
  v18 = [a3 data];
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = Data.hexString.getter();
  v24 = v23;
  sub_100016590(v19, v21);
  *(v9 + 136) = &type metadata for String;
  *(v9 + 144) = v13;
  *(v9 + 112) = v22;
  *(v9 + 120) = v24;
  os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v27, "New zone change token -- database: %{public}@, zoneName: %{public}@, token: %@", 78, 2, v9);

  sub_10088F30C([v26 scope], a2);
  sub_100FE1668(v8, a3);
  return (*(v29 + 8))(v8, v30);
}

uint64_t sub_100FE2028(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100FE20D0(void *a1, char a2)
{
  v3 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v4 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = String.init<A>(describing:)();
  v8 = v7;
  *(v5 + 56) = &type metadata for String;
  v9 = sub_100008C00();
  *(v5 + 64) = v9;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  v10 = [a1 data];
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = Data.hexString.getter();
  v16 = v15;
  sub_100016590(v11, v13);
  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v9;
  *(v5 + 72) = v14;
  *(v5 + 80) = v16;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "change token updated -- database: %{public}@, token: %@", 55, 2, v5);
}

void sub_100FE224C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, NSObject *a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v131 = a8;
  v130 = a7;
  v129 = a6;
  v132 = a5;
  v13 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v14 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138BBE0;
  v128 = a4 & 1;
  LOBYTE(v133[0]) = a4 & 1;
  v16 = String.init<A>(describing:)();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  v20 = v19;
  *(v15 + 64) = v19;
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  v127 = a1;
  if (a1)
  {
    v21 = [a1 data];
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    v25 = Data.hexString.getter();
    v27 = v26;
    sub_100016590(v22, v24);
    v28 = (v15 + 72);
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v20;
    if (v27)
    {
      *v28 = v25;
      goto LABEL_8;
    }
  }

  else
  {
    v28 = (v15 + 72);
    *(v15 + 96) = &type metadata for String;
    *(v15 + 104) = v19;
  }

  *v28 = 7104878;
  v27 = 0xE300000000000000;
LABEL_8:
  *(v15 + 80) = v27;
  v29 = v14;
  os_log(_:dso:log:_:_:)(v13, &_mh_execute_header, v14, "Fetch database changes complete -- database: %{public}@, token: %@", 66, 2, v15);

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C218;
  v31 = [objc_opt_self() sharedInstance];
  v32 = [v31 isInternalBuild];

  if (!v32)
  {
    if (!a3)
    {
      goto LABEL_22;
    }

LABEL_17:
    swift_errorRetain();
    v35 = static os_log_type_t.default.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v37 = String.init<A>(describing:)();
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v20;
    *(v36 + 32) = v37;
    *(v36 + 40) = v38;
    os_log(_:dso:log:_:_:)(v35, &_mh_execute_header, v14, "Error during fetch database changes operation: %{public}@", 57, 2, v36);

    v133[0] = a3;
    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v133[0] = v136;
      sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if (v136 == 21)
      {
        sub_100FE1B40(v129, 0);
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_100137944(v132, 1);
          swift_unknownObjectRelease();
        }

        sub_100FE08A8(v129, v128, 1, v130, v131);

LABEL_33:

        return;
      }
    }

    v53 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v133[0] = v55;
      *v54 = 136315138;
      v56 = [*(v132 + 280) debugDescription];
      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v60 = sub_1000136BC(v57, v59, v133);
      v29 = v14;

      *(v54 + 4) = v60;
      _os_log_impl(&_mh_execute_header, v14, v53, ">>> fetchDatabaseChanges (error) exclusiveAccessSemaphore.signal() %s", v54, 0xCu);
      sub_100007BAC(v55);
    }

    v61 = *(v132 + 280);
    OS_dispatch_semaphore.signal()();
    v62 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v133[0] = v64;
      *v63 = 136315138;
      v65 = [v61 debugDescription];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v29;
      v69 = v68;

      v70 = sub_1000136BC(v66, v69, v133);

      *(v63 + 4) = v70;
      _os_log_impl(&_mh_execute_header, v67, v62, "<<< fetchDatabaseChanges (error) exclusiveAccessSemaphore.signal() %s", v63, 0xCu);
      sub_100007BAC(v64);
    }

    swift_errorRetain();
    v130(a3, 1);

    goto LABEL_33;
  }

  v33 = String._bridgeToObjectiveC()();
  v34 = [v30 BOOLForKey:v33];

  if (a3)
  {
    goto LABEL_17;
  }

  if (v34)
  {
    v133[3] = &type metadata for Bool;
    LOBYTE(v133[0]) = 0;
    sub_100EB3DDC(v133, 0xD00000000000001ALL, 0x80000001013775A0, v30);
    sub_10000B3A8(v133, &unk_1016A0B10, &qword_10139BF40);
    sub_100FE1B40(v129, 0);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100137944(v132, 1);
      swift_unknownObjectRelease();
    }

    sub_100FE08A8(v129, v128, 1, v130, v131);
    return;
  }

LABEL_22:
  v39 = v132;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v71 = static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)(v71, &_mh_execute_header, v14, "Delegate does not define a zone!", 32, 2, _swiftEmptyArrayStorage);
    v72 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v133[0] = v74;
      *v73 = 136315138;
      v75 = [*(v39 + 280) debugDescription];
      v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v78 = v77;

      v79 = sub_1000136BC(v76, v78, v133);

      *(v73 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v14, v72, ">>> fetchDatabaseChanges (NoZone) exclusiveAccessSemaphore.signal() %s", v73, 0xCu);
      sub_100007BAC(v74);
    }

    v80 = *(v39 + 280);
    OS_dispatch_semaphore.signal()();
    v81 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v133[0] = v83;
      *v82 = 136315138;
      v84 = [v80 debugDescription];
      v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v86;

      v88 = sub_1000136BC(v85, v87, v133);

      *(v82 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v14, v81, "<<< fetchDatabaseChanges (NoZone) exclusiveAccessSemaphore.signal() %s", v82, 0xCu);
      sub_100007BAC(v83);
    }

    v89 = [objc_allocWithZone(NSError) init];
    v130(v89, 1);

    return;
  }

  v41 = *(Strong + 160);
  swift_unknownObjectRelease();
  v42 = swift_beginAccess();
  v43 = *(a9 + 16);
  v136 = v41;
  __chkstk_darwin(v42);
  v126 = &v136;

  v44 = sub_1002EB810(sub_1010119D4, v125, v43);

  if (v44)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100137944(v39, 1);
      swift_unknownObjectRelease();
    }

    v45 = *(v39 + 88);
    *(v39 + 88) = 0;
    sub_101011434(v45);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_101385D80;
    v136 = 0;
    v47 = String.init<A>(describing:)();
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = v20;
    *(v46 + 32) = v47;
    *(v46 + 40) = v48;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v49 = static OS_os_log.default.getter();
    v50 = static os_log_type_t.default.getter();
    v51 = 2;
    os_log(_:dso:log:type:_:)("ZoneState updated: %{public}@", 29, 2, &_mh_execute_header, v49, v50, v46);

    v52 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v52, &_mh_execute_header, v29, "Setting zoneState to .unknown", 29, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    v90 = swift_beginAccess();
    v91 = *(a10 + 16);
    v135 = v41;
    __chkstk_darwin(v90);
    v126 = &v135;

    v92 = sub_1002EB810(sub_101012F10, v125, v91);

    if (v92)
    {
      goto LABEL_42;
    }

    v51 = 3;
  }

  sub_100FD9B00(v51);
LABEL_42:
  v93 = sub_101011A58();
  v94 = sub_10112BA74(v93);

  swift_beginAccess();

  v96 = sub_10112BA74(v95);

  sub_10039E0B8(v96, v94);
  v98 = sub_1003A8E9C(v97);

  swift_beginAccess();
  *(a10 + 16) = v98;

  if ((v98 & 0x8000000000000000) != 0 || (v98 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_45;
    }
  }

  else if (v98[2])
  {
LABEL_45:
    v99 = *(v39 + 88);
    *(v39 + 88) = 2;
    sub_101011434(v99);
    sub_101010C38(2uLL);
    swift_beginAccess();

    sub_101011C64(v100);
    swift_beginAccess();
    v101 = *(a10 + 16);
    v102 = swift_allocObject();
    v103 = v129;
    v102[2] = v39;
    v102[3] = v103;
    v104 = v127;
    v105 = v130;
    v102[4] = v127;
    v102[5] = v105;
    v102[6] = v131;
    v106 = v104;

    v107 = v103;
    sub_100FE33DC(v107, v128, v101, sub_101011FD8, v102);

    return;
  }

  sub_100FE1B40(v129, v127);
  v108 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v134[0] = v110;
    *v109 = 136315138;
    v111 = [*(v39 + 280) debugDescription];
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v114 = v113;

    v115 = sub_1000136BC(v112, v114, v134);

    *(v109 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v29, v108, ">>> fetchDatabaseChanges (no zone fetch needed) exclusiveAccessSemaphore.signal() %s", v109, 0xCu);
    sub_100007BAC(v110);
  }

  v116 = *(v39 + 280);
  OS_dispatch_semaphore.signal()();
  v117 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v134[0] = v119;
    *v118 = 136315138;
    v120 = [v116 debugDescription];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;

    v124 = sub_1000136BC(v121, v123, v134);

    *(v118 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v29, v117, "<<< fetchDatabaseChanges (no zone fetch needed) exclusiveAccessSemaphore.signal() %s", v118, 0xCu);
    sub_100007BAC(v119);
  }

  v130(0, 0);
}

uint64_t sub_100FE316C(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(void, void))
{
  sub_100FE1B40(a2, a3);
  v6 = static os_log_type_t.info.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v7 = qword_10177C388;
  if (os_log_type_enabled(qword_10177C388, v6))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v8 = 136315138;
    v10 = [*(a1 + 280) debugDescription];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1000136BC(v11, v13, &v25);

    *(v8 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v6, ">>> fetchDatabaseChanges (zone fetch complete) exclusiveAccessSemaphore.signal() %s", v8, 0xCu);
    sub_100007BAC(v9);
  }

  v15 = *(a1 + 280);
  OS_dispatch_semaphore.signal()();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = v18;
    *v17 = 136315138;
    v19 = [v15 debugDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = sub_1000136BC(v20, v22, &v25);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v7, v16, "<<< fetchDatabaseChanges (zone fetch complete) exclusiveAccessSemaphore.signal() %s", v17, 0xCu);
    sub_100007BAC(v18);
  }

  return a4(0, 0);
}

void sub_100FE33DC(void *a1, int a2, unint64_t a3, const mach_header_64 *a4, uint64_t a5)
{
  v85 = a2;
  v98 = a1;
  v97 = type metadata accessor for URL();
  v9 = *(v97 - 8);
  __chkstk_darwin(v97);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
LABEL_35:
    swift_once();
  }

  v12 = qword_10177C388;
  v99 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v88 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  *(v13 + 56) = sub_1000BC4D4(&qword_1016C2EA8, &qword_1013F7730);
  *(v13 + 64) = sub_1000041A4(&qword_1016C2EB0, &qword_1016C2EA8, &qword_1013F7730, &protocol conformance descriptor for [A]);
  *(v13 + 32) = a3;

  os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "zoneIDs changed: %{public}@", 27, 2, v13);

  v90 = a3;
  if (a3 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  v15 = objc_opt_self();
  v93 = v14 - 1;
  v94 = v15;
  if (v14 < 1)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v82 = a4;
  v83 = a5;
  a5 = v90;
  v96 = v90 & 0xC000000000000001;
  v84 = v5;
  v95 = *(v5 + 272);
  v92 = (v9 + 8);
  v9 = 0;
  v101 = _swiftEmptyDictionarySingleton;
  v86 = xmmword_10138BBE0;
  a4 = &_mh_execute_header;
  v87 = v12;
  v11 = v89;
  while (1)
  {
    v18 = v96 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(a5 + 8 * v9 + 32);
    v19 = v18;
    a3 = [objc_allocWithZone(CKFetchRecordZoneChangesConfiguration) init];
    sub_10088F30C([v98 scope], v19);
    v20 = v95;
    v21 = sub_10088F948(v11, v95);
    v22 = sub_10088F948(v11, v20);
    [a3 setPreviousServerChangeToken:v22];

    if ((v101 & 0xC000000000000001) != 0)
    {
      if (v101 < 0)
      {
        v5 = v101;
      }

      else
      {
        v5 = v101 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = v19;
      v24 = a3;
      v25 = __CocoaDictionary.count.getter();
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      v101 = sub_100D47E70(v5, v25 + 1);
    }

    else
    {
      v26 = v19;
      v27 = a3;
    }

    v28 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v28;
    sub_1010020C8(a3, v19, isUniquelyReferenced_nonNull_native);

    v101 = v102;
    v30 = [v94 sharedInstance];
    v31 = [v30 isInternalBuild];

    if (!v31)
    {
      break;
    }

    v91 = static os_log_type_t.default.getter();
    v32 = swift_allocObject();
    *(v32 + 16) = v86;
    v33 = [v19 zoneName];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    *(v32 + 56) = &type metadata for String;
    v37 = sub_100008C00();
    v38 = v37;
    *(v32 + 64) = v37;
    *(v32 + 32) = v34;
    *(v32 + 40) = v36;
    if (!v21)
    {
      v16 = (v32 + 72);
      *(v32 + 96) = &type metadata for String;
      *(v32 + 104) = v37;
      v12 = v87;
LABEL_7:
      a4 = &_mh_execute_header;
      *v16 = 7104878;
      v17 = 0xE300000000000000;
      goto LABEL_8;
    }

    v100 = v9;
    v39 = [v21 data];
    v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = Data.hexString.getter();
    v17 = v44;
    sub_100016590(v40, v42);
    v16 = (v32 + 72);
    *(v32 + 96) = &type metadata for String;
    *(v32 + 104) = v38;
    if (!v17)
    {
      v12 = v87;
      v11 = v89;
      v9 = v100;
      goto LABEL_7;
    }

    *v16 = v43;
    v12 = v87;
    v11 = v89;
    v9 = v100;
    a4 = &_mh_execute_header;
LABEL_8:
    *(v32 + 80) = v17;
    os_log(_:dso:log:_:_:)(v91, &_mh_execute_header, v12, "Old zone change token for %{public}@: %@", 40, 2, v32, v82, v83);

    (*v92)(v11, v97);
    a5 = v90;
    if (v93 == v9)
    {
      goto LABEL_30;
    }

LABEL_9:
    ++v9;
  }

  v100 = v9;
  if (v21)
  {
    v45 = [v21 data];
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    sub_100016590(v46, v48);
    v49 = static os_log_type_t.default.getter();
    v50 = swift_allocObject();
    *(v50 + 16) = v88;
    v51 = [v19 zoneName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    *(v50 + 56) = &type metadata for String;
    *(v50 + 64) = sub_100008C00();
    *(v50 + 32) = v52;
    *(v50 + 40) = v54;
    a5 = v90;
    os_log(_:dso:log:_:_:)(v49, &_mh_execute_header, v12, "Old zone change token for %{public}@: non-nil", 45, 2, v50);
  }

  else
  {
    v55 = static os_log_type_t.default.getter();
    v56 = swift_allocObject();
    *(v56 + 16) = v88;
    v57 = [v19 zoneName];
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;

    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = sub_100008C00();
    *(v56 + 32) = v58;
    *(v56 + 40) = v60;
    os_log(_:dso:log:_:_:)(v55, &_mh_execute_header, v12, "Old zone change token for %{public}@: nil", 41, 2, v56);
  }

  v11 = v89;
  (*v92)(v89, v97);
  v9 = v100;
  if (v93 != v100)
  {
    goto LABEL_9;
  }

LABEL_30:
  v61 = static os_log_type_t.default.getter();
  v62 = swift_allocObject();
  *(v62 + 16) = v88;
  *(v62 + 56) = sub_1000BC4D4(&qword_1016C2EB8, &qword_1013F7738);
  *(v62 + 64) = sub_1000041A4(&qword_1016C2EC0, &qword_1016C2EB8, &qword_1013F7738, &protocol conformance descriptor for [A : B]);
  v63 = v101;
  *(v62 + 32) = v101;
  swift_retain_n();
  os_log(_:dso:log:_:_:)(v61, &_mh_execute_header, v12, "optionsByRecordZoneID: %@", 25, 2, v62);

  v64 = swift_allocObject();
  *(v64 + 16) = _swiftEmptyArrayStorage;
  v65 = swift_allocObject();
  *(v65 + 16) = _swiftEmptyArrayStorage;
  v66 = sub_100008BB8(0, &qword_1016C2EC8, CKFetchRecordZoneChangesOperation_ptr);

  v103.is_nil = v63;
  v67 = CKFetchRecordZoneChangesOperation.init(recordZoneIDs:configurationsByRecordZoneID:)(v103, v104).super.super.super.super.isa;
  v68 = [(objc_class *)v67 configuration];
  if (!v68)
  {
    goto LABEL_39;
  }

  v69 = v68;
  [v68 setAutomaticallyRetryNetworkFailures:0];

  v70 = [(objc_class *)v67 configuration];
  if (v70)
  {
    [v70 setDiscretionaryNetworkBehavior:0];

    [(objc_class *)v67 setFetchAllChanges:1];

    CKFetchRecordZoneChangesOperation.undeprecated_recordChangedBlock.setter();

    CKFetchRecordZoneChangesOperation.recordWithIDWasDeletedBlock.setter();
    v71 = swift_allocObject();
    v72 = v85 & 1;
    *(v71 + 16) = v85 & 1;
    *(v71 + 24) = v65;
    *(v71 + 32) = v64;
    v73 = v84;
    v74 = v98;
    *(v71 + 40) = v84;
    *(v71 + 48) = v74;

    v75 = v74;
    CKFetchRecordZoneChangesOperation.undeprecated_recordZoneFetchCompletionBlock.setter();
    v76 = swift_allocObject();
    *(v76 + 16) = v72;
    *(v76 + 24) = v90;
    *(v76 + 32) = v73;
    v77 = v83;
    *(v76 + 40) = v82;
    *(v76 + 48) = v77;

    CKFetchRecordZoneChangesOperation.undeprecated_fetchRecordZoneChangesCompletionBlock.setter();
    v78 = static os_log_type_t.default.getter();
    v79 = swift_allocObject();
    *(v79 + 16) = v88;
    *(v79 + 56) = v66;
    *(v79 + 64) = sub_100009D18(&qword_1016C2ED0, &qword_1016C2EC8, CKFetchRecordZoneChangesOperation_ptr, &protocol conformance descriptor for NSObject);
    *(v79 + 32) = v67;
    v80 = v67;
    os_log(_:dso:log:_:_:)(v78, &_mh_execute_header, v87, "Adding CloudKit operation %@", 28, 2, v79);

    __chkstk_darwin(v81);
    *(&v82 - 2) = v75;
    *(&v82 - 1) = v80;
    QueueSynchronizer.conditionalSync<A>(_:)();

    return;
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_100FE3ED8(void *a1, uint64_t a2)
{
  v4 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v5 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_101385D80;
  v7 = [a1 debugDescription];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100008C00();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Record changed: %@", 18, 2, v6);

  swift_beginAccess();
  v11 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

uint64_t sub_100FE4074(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v9 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_101385D80;
  *(v10 + 56) = sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  *(v10 + 64) = sub_100009D18(&qword_1016C2E68, &qword_1016A9110, CKRecordID_ptr, &protocol conformance descriptor for NSObject);
  *(v10 + 32) = a1;
  v11 = a1;
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v9, "Record deleted: %@", 18, 2, v10);

  swift_beginAccess();
  v12 = *(a4 + 16);
  v13 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100A5EDB0(0, v12[2] + 1, 1, v12);
    *(a4 + 16) = v12;
  }

  v16 = v12[2];
  v15 = v12[3];
  if (v16 >= v15 >> 1)
  {
    v12 = sub_100A5EDB0((v15 > 1), v16 + 1, 1, v12);
  }

  v12[2] = v16 + 1;
  v17 = &v12[3 * v16];
  v17[4] = v13;
  v17[5] = a2;
  v17[6] = a3;
  *(a4 + 16) = v12;
  return swift_endAccess();
}

void sub_100FE4270(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v50 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v51 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1013917A0;
  v17 = a7 & 1;
  LOBYTE(v52[0]) = a7 & 1;
  v18 = String.init<A>(describing:)();
  v20 = v19;
  *(v16 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v16 + 64) = v21;
  *(v16 + 32) = v18;
  *(v16 + 40) = v20;
  v48 = a1;
  v22 = [a1 zoneName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v21;
  *(v16 + 72) = v23;
  *(v16 + 80) = v25;
  v49 = a2;
  if (a2)
  {
    v26 = [a2 data];
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = Data.hexString.getter();
    v32 = v31;
    sub_100016590(v27, v29);
    v33 = (v16 + 112);
    *(v16 + 136) = &type metadata for String;
    *(v16 + 144) = v21;
    if (v32)
    {
      *v33 = v30;
      goto LABEL_8;
    }
  }

  else
  {
    v33 = (v16 + 112);
    *(v16 + 136) = &type metadata for String;
    *(v16 + 144) = v21;
  }

  *v33 = 7104878;
  v32 = 0xE300000000000000;
LABEL_8:
  *(v16 + 120) = v32;
  swift_beginAccess();
  v34 = *(a8 + 16);
  if (v34 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 176) = &type metadata for Int;
  *(v16 + 184) = &protocol witness table for Int;
  *(v16 + 152) = v35;
  swift_beginAccess();
  v36 = *(*(a9 + 16) + 16);
  *(v16 + 216) = &type metadata for Int;
  *(v16 + 224) = &protocol witness table for Int;
  *(v16 + 192) = v36;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  *(v16 + 256) = &type metadata for Bool;
  *(v16 + 264) = &protocol witness table for Bool;
  *(v16 + 232) = Strong != 0;
  os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v51, "record zone fetch complete -- database: %{public}@, zone: %{public}@, token: %@, records changed: %d, records deleted: %d, inform delegate: %i", 142, 2, v16);

  if (sub_10101207C())
  {
    v38 = [objc_opt_self() standardUserDefaults];
    memset(v52, 0, sizeof(v52));
    sub_100EB3DDC(v52, 0xD000000000000018, 0x8000000101377940, v38);

    sub_10000B3A8(v52, &unk_1016A0B10, &qword_10139BF40);
    type metadata accessor for CKError(0);
    v53 = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
    _BridgedStoredNSError.init(_:userInfo:)();
    a6 = *&v52[0];
LABEL_16:
    v39 = static os_log_type_t.error.getter();
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10138BBE0;
    LOBYTE(v52[0]) = v17;
    v41 = String.init<A>(describing:)();
    *(v40 + 56) = &type metadata for String;
    *(v40 + 64) = v21;
    *(v40 + 32) = v41;
    *(v40 + 40) = v42;
    swift_getErrorValue();
    v43 = Error.localizedDescription.getter();
    *(v40 + 96) = &type metadata for String;
    *(v40 + 104) = v21;
    *(v40 + 72) = v43;
    *(v40 + 80) = v44;
    os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v51, "Error fetching zone changes for %@ database: %@", 47, 2, v40);

    sub_100FD5F64(a6);

    return;
  }

  if (a6)
  {
    swift_errorRetain();
    goto LABEL_16;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();

    sub_100139D50(v45);

    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_beginAccess();

    sub_100139770(v46);

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a8 + 16) = _swiftEmptyArrayStorage;

  swift_beginAccess();
  *(a9 + 16) = _swiftEmptyArrayStorage;

  if (v49)
  {
    v47 = v49;
    sub_10101214C(v48);
    sub_100FE1DB4(a11, v48, v47);
  }
}

uint64_t sub_100FE47DC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10138BBE0;
  v10 = String.init<A>(describing:)();
  v12 = v11;
  *(v9 + 56) = &type metadata for String;
  v13 = sub_100008C00();
  *(v9 + 64) = v13;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  *(v9 + 96) = sub_1000BC4D4(&qword_1016C2EA8, &qword_1013F7730);
  *(v9 + 104) = sub_1000041A4(&qword_1016C2EB0, &qword_1016C2EA8, &qword_1013F7730, &protocol conformance descriptor for [A]);
  *(v9 + 72) = a3;

  os_log(_:dso:log:_:_:)(v7, &_mh_execute_header, v8, "Fetch record zone changes complete -- database: %{public}@, zoneIds: %{public}@", 79, 2, v9);

  if (a1)
  {
    swift_errorRetain();
    v15 = static os_log_type_t.error.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_10138BBE0;
    v17 = String.init<A>(describing:)();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = v13;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    swift_getErrorValue();
    v19 = Error.localizedDescription.getter();
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = v13;
    *(v16 + 72) = v19;
    *(v16 + 80) = v20;
    os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v8, "Error fetching zone changes for %@ database: %{public}@", 55, 2, v16);

    sub_100FD5F64(a1);
  }

  return a5(v14);
}

void sub_100FE4A38(uint64_t a1, uint64_t a2)
{

  v3 = sub_100FD01E4();
  v4 = [v3 privateCloudDatabase];

  sub_100FE08A8(v4, 0, 0, sub_101012ED0, a2);
}

void sub_100FE4AD0(char *a1, char a2)
{
  if (a2)
  {
    v2 = static os_log_type_t.error.getter();
    if (qword_101695040 != -1)
    {
      swift_once();
    }

    v3 = qword_10177C388;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100008C00();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Error from fetchChanges: %{public}@", 35, 2, v4);

    swift_errorRetain();
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      sub_100004084(&qword_101696250, type metadata accessor for CKError, &unk_101389FF0);
      _BridgedStoredNSError.code.getter();
      if ((v13 - 3) > 1)
      {
        v11 = v13;
        sub_100FD5F64(v11);
      }

      else
      {
        v8 = static os_log_type_t.default.getter();
        os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v3, "scheduleRetryFetch", 18, 2, _swiftEmptyArrayStorage);
        QueueSynchronizer.conditionalSync<A>(_:)();
      }
    }
  }

  else
  {
    v9 = static os_log_type_t.default.getter();
    if (qword_101695040 != -1)
    {
      v12 = v9;
      swift_once();
      v9 = v12;
    }

    v10 = qword_10177C388;

    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "fetchChanges succeeded", 22, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t CKDatabaseScope.debugDescription.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0x63696C627570;
    case 3:
      return 0x646572616873;
    case 2:
      return 0x65746176697270;
  }

  v2 = static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);

  return 0x6E776F6E6B6E75;
}

uint64_t sub_100FE4E94(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 1)
  {
    return 0x63696C627570;
  }

  if (v2 == 3)
  {
    return 0x646572616873;
  }

  if (v2 == 2)
  {
    return 0x65746176697270;
  }

  v4 = static os_log_type_t.error.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v5 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v5, "Unknown CKDatabase.Scope!", 25, 2, _swiftEmptyArrayStorage);

  return 0x6E776F6E6B6E75;
}

uint64_t sub_100FE4FA0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100FE4FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CloudKitChangeSet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  sub_100022ABC(a3, v23 - v14, type metadata accessor for CloudKitChangeSet);
  sub_100022ABC(v15, v13, type metadata accessor for CloudKitChangeSet);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_100029184(v15, v18 + v16, type metadata accessor for CloudKitChangeSet);
  v19 = (v18 + v17);
  *v19 = a4;
  v19[1] = a5;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v20 = qword_101694FA8;

  if (v20 != -1)
  {
    swift_once();
  }

  v23[1] = 0x7365547265646E75;
  v23[2] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v24 == 1)
  {
    sub_100FE5390(v13, a4, a5);
  }

  else
  {
    v21 = type metadata accessor for Transaction();
    __chkstk_darwin(v21);
    v23[-4] = a2;
    v23[-3] = sub_101012DF0;
    v23[-2] = v18;
    static Transaction.named<A>(_:with:)();
  }

  return sub_100FE5334(v13);
}

uint64_t sub_100FE5284(uint64_t a1)
{
  v3 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100FE4FC8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_100FE5334(uint64_t a1)
{
  v2 = type metadata accessor for CloudKitChangeSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100FE5390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = swift_allocObject();
  *(v32 + 16) = _swiftEmptyDictionarySingleton;
  v31 = swift_allocObject();
  *(v31 + 16) = _swiftEmptyDictionarySingleton;
  v4 = type metadata accessor for CloudKitChangeSet(0);
  v5 = *(a1 + *(v4 + 20));
  v6 = *(a1 + *(v4 + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_1003CC318();
    LOBYTE(v9) = v8;
    v10 = sub_1003AAFC0(&v33, (v8 + 32), v7, v6);
    v11 = v33;

    sub_1000128F8(v11);
    if (v10 != v7)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  v12 = sub_100008BB8(0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr);
  v34.value._rawValue = v5;
  v34.is_nil = v9;
  v13.super.super.super.super.isa = CKModifyRecordsOperation.init(recordsToSave:recordIDsToDelete:)(v34, v35).super.super.super.super.isa;
  v14 = [objc_opt_self() currentThread];
  v15 = [v14 qualityOfService];

  if (v15 >= 25)
  {
    [(objc_class *)v13.super.super.super.super.isa setQualityOfService:25];
  }

  v16 = v13.super.super.super.super.isa;
  v17 = [(objc_class *)v16 configuration];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  [v17 setAutomaticallyRetryNetworkFailures:0];

  v19 = [(objc_class *)v16 configuration];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v19 setDiscretionaryNetworkBehavior:0];

  CKModifyRecordsOperation.perRecordDeleteBlock.setter();

  CKModifyRecordsOperation.perRecordSaveBlock.setter();
  v20 = swift_allocObject();
  v20[2] = a2;
  v20[3] = a3;
  v20[4] = v32;
  v20[5] = v31;

  CKModifyRecordsOperation.modifyRecordsResultBlock.setter();
  v21 = static os_log_type_t.default.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v22 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138BBE0;
  v24 = sub_100EC17B8();
  v26 = v25;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 64) = sub_100008C00();
  *(v23 + 32) = v24;
  *(v23 + 40) = v26;
  *(v23 + 96) = v12;
  *(v23 + 104) = sub_100009D18(&unk_1016C2BE0, &unk_1016C2BD0, CKModifyRecordsOperation_ptr, &protocol conformance descriptor for NSObject);
  *(v23 + 72) = v16;
  v27 = v16;
  os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "Adding CloudKit operation for changeSet: %{public}@ operation: %@", 65, 2, v23);

  __chkstk_darwin(v28);
  QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100FE57F0(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  sub_100B21C10(a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_101002264(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native, &qword_1016C2BF8, &qword_1013F7530, sub_100B21C10, sub_1000BB584);

  *(a4 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_100FE58D0(void *a1, void *a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1;
  sub_100B223D0(a2, a3 & 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_101002264(a2, a3 & 1, v8, isUniquelyReferenced_nonNull_native, &qword_1016C2BF0, &qword_1013F7528, sub_100B223D0, sub_1000BB578);

  *(a4 + 16) = v11;
  return swift_endAccess();
}

uint64_t sub_100FE59B0(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    return (a3)(a1, 0, 1, a4, a5, a6);
  }

  swift_beginAccess();
  v10 = *(a5 + 16);
  swift_beginAccess();
  v11 = *(a6 + 16);

  a3(v10, v11, 0);
}

void sub_100FE5A68(uint64_t a1, uint64_t a2)
{
  v3 = sub_100FD01E4();
  v4 = [v3 privateCloudDatabase];

  [v4 addOperation:a2];
}

uint64_t sub_100FE5AD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&qword_1016B6E50, &qword_1013DB4C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      result = static Hasher._hash(seed:_:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100FE5D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1000BC4D4(&qword_1016C31F8, &qword_1013F7A10);
  v48 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v44 = v2;
    v45 = (v6 + 16);
    v46 = v8;
    v47 = v6;
    v50 = (v6 + 32);
    v17 = result + 64;
    v56 = v5;
    v18 = v49;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v47 + 72) * v26;
      v28 = 40 * v26;
      v54 = *(v47 + 72);
      v55 = v23;
      if (v48)
      {
        (*v50)(v18, v27, v56);
        v29 = *(v8 + 56) + v28;
        v30 = *v29;
        v52 = *(v29 + 8);
        v53 = v30;
        v31 = *(v29 + 16);
        v32 = *(v29 + 24);
        v51 = *(v29 + 32);
      }

      else
      {
        (*v45)(v18, v27, v56);
        v33 = *(v8 + 56) + v28;
        v34 = *v33;
        v52 = *(v33 + 8);
        v31 = *(v33 + 16);
        v32 = *(v33 + 24);
        v51 = *(v33 + 32);

        v53 = v34;
      }

      sub_100004084(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v10 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v17 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v18 = v49;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v17 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v17 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v18 = v49;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v50)(*(v10 + 48) + v54 * v19, v18, v56);
      v20 = *(v10 + 56) + 40 * v19;
      v21 = v52;
      *v20 = v53;
      *(v20 + 8) = v21;
      *(v20 + 16) = v31;
      *(v20 + 24) = v32;
      *(v20 + 32) = v51;
      ++*(v10 + 16);
      v8 = v46;
      v15 = v55;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v8 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v12, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v42;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

Swift::Int sub_100FE61C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&unk_1016C3280, &qword_1013F7A88);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100FE65C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&unk_1016C2C30, &qword_1013C5330);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 48 * v23);
      if (v38)
      {
        v28 = *v27;
        v29 = v27[1];
        *(v40 + 9) = *(v27 + 25);
        v39 = v28;
        v40[0] = v29;
      }

      else
      {
        sub_1010100EC(v27, &v39);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = (*(v7 + 56) + 48 * v15);
      v18 = v39;
      v19 = v40[0];
      *(v17 + 25) = *(v40 + 9);
      *v17 = v18;
      v17[1] = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_100FE68E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  sub_1000BC4D4(&qword_10169F690, &unk_1013F7880);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        sub_1000D2AD8(v25, v7, &qword_1016A40D0, &unk_10138BE70);
      }

      else
      {
        sub_1000D2A70(v25, v7, &qword_1016A40D0, &unk_10138BE70);
        sub_100017D5C(v39, v26);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = sub_1000D2AD8(v7, *(v10 + 56) + v24 * v18, &qword_1016A40D0, &unk_10138BE70);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_100FE6C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&unk_1016C3040, &qword_1013B6518);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_10004D07C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100476DEC(v23, &v36);
        sub_100013894(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_10004D07C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100FE6F1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&qword_1016ADCB8, &qword_1013C5350);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100FE7218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v44 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v42 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  v14 = *v6;
  sub_1000BC4D4(a4, a5);
  v43 = v10;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v14 + 16))
  {
    v41 = v6;
    v17 = 0;
    v18 = (v14 + 64);
    v19 = 1 << *(v14 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v14 + 64);
    v22 = (v19 + 63) >> 6;
    v23 = result + 64;
    while (v21)
    {
      v26 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_15:
      v29 = v26 | (v17 << 6);
      v30 = *(v42 + 72);
      v31 = *(v14 + 56) + v30 * v29;
      v45 = *(*(v14 + 48) + 16 * v29);
      v32 = *(&v45 + 1);
      if (v43)
      {
        sub_100029184(v31, v13, v44);
      }

      else
      {
        sub_100022ABC(v31, v13, v44);
        sub_100017D5C(v45, v32);
      }

      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v16 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v25 = v45;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v23 + 8 * v35);
          if (v39 != -1)
          {
            v24 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v25 = v45;
LABEL_7:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 16 * v24) = v25;
      result = sub_100029184(v13, *(v16 + 56) + v30 * v24, v44);
      ++*(v16 + 16);
    }

    v27 = v17;
    while (1)
    {
      v17 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v17 >= v22)
      {
        break;
      }

      v28 = v18[v17];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v21 = (v28 - 1) & v28;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v9 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v14 + 32);
    v9 = v41;
    if (v40 >= 64)
    {
      bzero((v14 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v40;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v9 = v16;
  return result;
}

Swift::Int sub_100FE7570(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000BC4D4(&unk_1016C30D0, &unk_1013F78F0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v29 = *(*(v5 + 56) + 16 * v22);
      if ((v4 & 1) == 0)
      {
        sub_100017D5C(v29, *(&v29 + 1));
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v15) >> 6;
        while (++v17 != v25 || (v24 & 1) == 0)
        {
          v26 = v17 == v25;
          if (v17 == v25)
          {
            v17 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v17);
          if (v27 != -1)
          {
            v18 = __clz(__rbit64(~v27)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 16 * v18) = v29;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_100FE7AB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for BookmarkMetaData(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1000BC4D4(&qword_1016ADD88, &qword_1013C54A0);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v33[8] = 0x8000000101348240;
    v33[9] = 0x8000000101348260;
    v33[6] = 0x80000001013481F0;
    v33[7] = 0x8000000101348210;
    v33[4] = 0x80000001013475D0;
    v33[5] = 0x80000001013475F0;
    v33[2] = 0x8000000101348180;
    v33[3] = 0x80000001013481C0;
    v33[1] = 0x8000000101348160;
    v16 = result + 64;
    while (v14)
    {
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v24 = v21 | (v10 << 6);
      v25 = *(*(v7 + 48) + v24);
      v26 = *(v35 + 72);
      v27 = *(v7 + 56) + v26 * v24;
      if (v36)
      {
        sub_100029184(v27, v37, type metadata accessor for BookmarkMetaData);
      }

      else
      {
        sub_100022ABC(v27, v37, type metadata accessor for BookmarkMetaData);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v17 = -1 << *(v9 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v16 + 8 * (v18 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v17) >> 6;
        while (++v19 != v29 || (v28 & 1) == 0)
        {
          v30 = v19 == v29;
          if (v19 == v29)
          {
            v19 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v19);
          if (v31 != -1)
          {
            v20 = __clz(__rbit64(~v31)) + (v19 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~*(v16 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v9 + 48) + v20) = v25;
      result = sub_100029184(v37, *(v9 + 56) + v26 * v20, type metadata accessor for BookmarkMetaData);
      ++*(v9 + 16);
    }

    v22 = v10;
    while (1)
    {
      v10 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v23 = v11[v10];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v14 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
  return result;
}