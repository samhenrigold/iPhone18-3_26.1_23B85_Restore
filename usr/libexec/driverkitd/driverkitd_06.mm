uint64_t sub_10006E148(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100133CC8, &qword_1000F32F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006E1B0()
{
  result = qword_100136598;
  if (!qword_100136598)
  {
    type metadata accessor for OS_dispatch_workloop.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136598);
  }

  return result;
}

unint64_t sub_10006E208()
{
  result = qword_1001365A8;
  if (!qword_1001365A8)
  {
    sub_100009FA4(&qword_1001365A0, &qword_1000F8640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001365A8);
  }

  return result;
}

double sub_10006E288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006E2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006E3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10006FA38(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10006E408(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_100030EA0((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x64656C7469746E65;
    *(v4 + 5) = 0xE800000000000000;
  }

  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0, &protocol conformance descriptor for [A]);
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

void *sub_10006E534(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a3;
  v28 = a2;
  v30 = a1;
  v31 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9, v10);
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12);
  v27 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10006FB10();
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  v13 = v28;
  sub_10001455C(&qword_100133C90, &qword_100133C88, &qword_1000F88C0, &protocol conformance descriptor for [A]);
  v14 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v5[3] = v15;
  String.utf8CString.getter();
  v16 = v15;
  v17 = xpc_event_publisher_create();

  if (v17)
  {

    v5[4] = v14;
    v5[5] = v13;
    v5[2] = v17;
    v5[6] = _swiftEmptyArrayStorage;
    v5[7] = sub_10003E12C(_swiftEmptyArrayStorage);
    v18 = v5[2];
    v37 = sub_10006FB68;
    v38 = v5;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10006F400;
    v36 = &unk_100129700;
    v19 = _Block_copy(&aBlock);
    v20 = v17;
    v21 = v18;

    xpc_event_publisher_set_handler();
    _Block_release(v19);

    v22 = v5[2];
    v37 = sub_10006FB88;
    v38 = v5;
    aBlock = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_10006F59C;
    v36 = &unk_100129728;
    v23 = _Block_copy(&aBlock);

    v24 = v22;

    xpc_event_publisher_set_error_handler();
    _Block_release(v23);

    return v5;
  }

  else
  {
    aBlock = 0;
    v34 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v34 = 0x8000000100106B20;
    v26._countAndFlagsBits = v14;
    v26._object = v13;
    String.append(_:)(v26);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006E9BC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    v6 = a4[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4[6] = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000F3C80;
  v20 = a4[4];
  v19 = a4[5];
  *(v18 + 56) = &type metadata for String;
  v21 = sub_100003D24();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  *(v18 + 96) = &type metadata for UInt64;
  *(v18 + 104) = &protocol witness table for UInt64;
  *(v18 + 64) = v21;
  *(v18 + 72) = a2;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v22 = static OS_os_log.default.getter();
  v23 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("XPC Event %{public}s: Removing subscriber %llx", 46, 2, &_mh_execute_header, v22, v23, v18);

  v6 = (a4 + 6);
  v24 = a4[6];
  v25 = *(v24 + 2);
  if (v25)
  {
    v26 = 0;
    v27 = -40;
    while (*&v24[8 * v26 + 32] != a2)
    {
      ++v26;
      v27 -= 8;
      if (v25 == v26)
      {
        goto LABEL_11;
      }
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_30;
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v24;
    if ((v30 & 1) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v31 = *(v24 + 2);
      if (v29 != v31)
      {
        break;
      }

LABEL_15:
      *v6 = v24;
      v28 = *(v24 + 2);
      v25 = v26;
      if (v28 >= v26)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v24 = sub_100064748(v24);
    }

    v32 = v24 + 32;
    v33 = &v24[-v27];
    while (v29 < v31)
    {
      if (*v33 != a2)
      {
        if (v29 != v26)
        {
          if (v26 >= v31)
          {
            __break(1u);
            break;
          }

          v34 = *&v32[8 * v26];
          *&v32[8 * v26] = *v33;
          *v33 = v34;
          v31 = *(v24 + 2);
        }

        ++v26;
      }

      ++v29;
      v33 += 8;
      if (v29 == v31)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    v6 = sub_100031C40(0, *(v6 + 2) + 1, 1, v6);
    a4[6] = v6;
LABEL_4:
    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_100031C40((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = a2;
    a4[6] = v6;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3C80;
    v12 = a4[4];
    v11 = a4[5];
    *(v10 + 56) = &type metadata for String;
    v13 = sub_100003D24();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    *(v10 + 96) = &type metadata for UInt64;
    *(v10 + 104) = &protocol witness table for UInt64;
    *(v10 + 64) = v13;
    *(v10 + 72) = a2;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

    v14 = static OS_os_log.default.getter();
    v15 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("XPC Event %{public}s: Pending subscriber %llx", 45, 2, &_mh_execute_header, v14, v15, v10);

    xpc_dictionary_create(0, 0, 0);
    v16 = swift_allocObject();
    *(v16 + 16) = a4;
    *(v16 + 24) = a2;
    v35[4] = sub_10006FBC8;
    v35[5] = v16;
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 1107296256;
    v35[2] = sub_100068A7C;
    v35[3] = &unk_100129778;
    v17 = _Block_copy(v35);
    swift_unknownObjectRetain();

    xpc_event_publisher_fire_with_reply();
    _Block_release(v17);
    return swift_unknownObjectRelease_n();
  }

LABEL_11:
  v28 = *(v24 + 2);
LABEL_16:
  sub_10005B470(v25, v28);
  swift_beginAccess();
  sub_100036BDC(a2);
  return swift_endAccess();
}

void sub_10006EE0C(void *a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a2 + 6);
  v8 = a2[6];
  v9 = *(v8 + 2);
  do
  {
    if (v9 == v6)
    {
      v14 = static os_log_type_t.error.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000F3C80;
      v17 = a2[4];
      v16 = a2[5];
      *(v15 + 56) = &type metadata for String;
      v18 = sub_100003D24();
      *(v15 + 32) = v17;
      *(v15 + 40) = v16;
      *(v15 + 96) = &type metadata for UInt64;
      *(v15 + 104) = &protocol witness table for UInt64;
      *(v15 + 64) = v18;
      *(v15 + 72) = a3;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v19, "XPC Event %{public}s: Unexpected reply from previously pending subscriber %llx", 78, 2, v15, v19);
      goto LABEL_24;
    }

    v10 = &v8[8 * v6++];
  }

  while (*(v10 + 4) != a3);
  if (v9)
  {
    v11 = 0;
    v12 = -40;
    do
    {
      if (*&v8[8 * v11 + 32] == a3)
      {
        v20 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_38;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v7 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_39;
        }

        while (1)
        {
          v22 = *(v8 + 2);
          if (v20 == v22)
          {
LABEL_13:
            *v7 = v8;
            v13 = *(v8 + 2);
            v9 = v11;
            if (v13 >= v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v56 = v8 + 32;
            v57 = &v8[-v12];
            while (v20 < v22)
            {
              if (*v57 != a3)
              {
                if (v20 != v11)
                {
                  if (v11 >= v22)
                  {
                    __break(1u);
                    break;
                  }

                  v58 = *&v56[8 * v11];
                  *&v56[8 * v11] = *v57;
                  *v57 = v58;
                  v22 = *(v8 + 2);
                }

                ++v11;
              }

              ++v20;
              v57 += 8;
              if (v20 == v22)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v8 = sub_100064748(v8);
        }
      }

      ++v11;
      v12 -= 8;
    }

    while (v9 != v11);
  }

  v13 = *(v8 + 2);
LABEL_14:
  sub_10005B470(v9, v13);
  ObjectType = swift_getObjectType();
  if (sub_1000C7700(ObjectType))
  {
    xpc_dictionary_get_audit_token();
    String.utf8CString.getter();
    v24 = xpc_copy_entitlement_for_token();

    if (v24)
    {
      value = xpc_BOOL_get_value(v24);
      swift_unknownObjectRelease();
      if (value)
      {
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    swift_beginAccess();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v60 = a2[7];
    a2[7] = 0x8000000000000000;
    sub_10003961C(v26, a3, v37);
    a2[7] = v60;
    swift_endAccess();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1000F7EC0;
    v40 = a2[4];
    v39 = a2[5];
    *(v38 + 56) = &type metadata for String;
    v41 = sub_100003D24();
    *(v38 + 32) = v40;
    *(v38 + 40) = v39;
    *(v38 + 96) = &type metadata for UInt64;
    *(v38 + 104) = &protocol witness table for UInt64;
    *(v38 + 64) = v41;
    *(v38 + 72) = a3;

    v42 = sub_10006E408(v26);
    *(v38 + 136) = &type metadata for String;
    *(v38 + 144) = v41;
    *(v38 + 112) = v42;
    *(v38 + 120) = v43;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v44 = static OS_os_log.default.getter();
    v45 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("XPC Event %{public}s: Added new subscriber %llx (%{public}s)", 60, 2, &_mh_execute_header, v44, v45, v38);

    return;
  }

  v27 = sub_1000C76C4();
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F7EC0;
    v34 = a2[4];
    v33 = a2[5];
    *(v32 + 56) = &type metadata for String;
    v35 = sub_100003D24();
    *(v32 + 32) = v34;
    *(v32 + 40) = v33;
    *(v32 + 96) = &type metadata for UInt64;
    *(v32 + 104) = &protocol witness table for UInt64;
    *(v32 + 64) = v35;
    *(v32 + 72) = a3;
    *(v32 + 136) = &type metadata for String;
    *(v32 + 144) = v35;
    *(v32 + 112) = v29;
    *(v32 + 120) = v30;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

    v36 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v36, "XPC Event %{public}s: Pending subscriber %llx replied with error %{public}s", 75, 2, v32, v36);
  }

  else
  {
    type = xpc_get_type(a1);
    xpc_type_get_name(type);
    v47 = String.init(cString:)();
    v49 = v48;
    v50 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1000F7EC0;
    v53 = a2[4];
    v52 = a2[5];
    *(v51 + 56) = &type metadata for String;
    v54 = sub_100003D24();
    *(v51 + 32) = v53;
    *(v51 + 40) = v52;
    *(v51 + 96) = &type metadata for UInt64;
    *(v51 + 104) = &protocol witness table for UInt64;
    *(v51 + 64) = v54;
    *(v51 + 72) = a3;
    *(v51 + 136) = &type metadata for String;
    *(v51 + 144) = v54;
    *(v51 + 112) = v47;
    *(v51 + 120) = v49;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

    v55 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v50, &_mh_execute_header, v55, "XPC Event %{public}s: Pending subscriber %llx replied with unexpected type %{public}s", 85, 2, v51, v55);
  }

LABEL_24:
}

uint64_t sub_10006F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_10006F480(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F3C80;
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100003D24();
  *(v5 + 32) = v7;
  *(v5 + 40) = v6;
  *(v5 + 96) = &type metadata for Int32;
  *(v5 + 104) = &protocol witness table for Int32;
  *(v5 + 72) = v3;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v8 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v8, "XPC Event Handler %{public}s error: %d", 38, 2, v5);
}

uint64_t sub_10006F59C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_10006F5F0(uint64_t a1)
{
  sub_100003CDC(&qword_100136700, &qword_1000F88B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  v3 = *(v1 + 40);
  *(inited + 32) = *(v1 + 32);
  *(inited + 40) = v3;
  *(inited + 48) = 1;

  sub_100041714(inited);
  swift_setDeallocating();
  sub_10006FAA8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v5 = _CFXPCCreateXPCObjectFromCFObject();

  if (v5)
  {
    xpc_event_publisher_fire();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10001449C();
    swift_allocError();
    *v7 = 0xD000000000000025;
    *(v7 + 8) = 0x8000000100106AC0;
    *(v7 + 16) = v8;
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 64) = v11;
    *(v7 + 72) = 50;
    return swift_willThrow();
  }
}

uint64_t sub_10006F754()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10006F7E4()
{
  result = qword_1001366D8;
  if (!qword_1001366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366D8);
  }

  return result;
}

unint64_t sub_10006F83C()
{
  result = qword_1001366E0;
  if (!qword_1001366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366E0);
  }

  return result;
}

unint64_t sub_10006F894()
{
  result = qword_1001366E8;
  if (!qword_1001366E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366E8);
  }

  return result;
}

unint64_t sub_10006F8EC()
{
  result = qword_1001366F0;
  if (!qword_1001366F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366F0);
  }

  return result;
}

uint64_t sub_10006F940()
{
  sub_100003CDC(&qword_1001366F8, &qword_1000F88A8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v1;
}

double sub_10006F9E4@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_10006FA38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10006FA70(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_10006FAA8(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100136708, &qword_1000F88B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006FB10()
{
  result = qword_100133C80;
  if (!qword_100133C80)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C80);
  }

  return result;
}

double sub_10006FB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10006FB90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FC38()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10006FCC0()
{

  sub_10007002C(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_10006FD50(uint64_t a1, const char *a2, uint64_t a3, ...)
{
  v38 = type metadata accessor for URL();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38, v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_1000F3160;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v29 = v10;
    v30 = a2;
    v31 = a3;
    v32 = v3;
    v41 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v12, 0);
    v13 = v41;
    v14 = *(v7 + 16);
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v34 = *(v7 + 72);
    v35 = v14;
    v33 = (v7 + 8);
    v36 = v7 + 16;
    do
    {
      v17 = v37;
      v16 = v38;
      v35(v37, v15, v38);
      v39 = 2314;
      v40 = 0xE200000000000000;
      v18._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v18);

      v19 = v39;
      v20 = v40;
      (*v33)(v17, v16);
      v41 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000635A4((v21 > 1), v22 + 1, 1);
        v13 = v41;
      }

      v13[2] = v22 + 1;
      v23 = &v13[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v15 += v34;
      --v12;
    }

    while (v12);
    a3 = v31;
    v11 = v29;
    a2 = v30;
  }

  v39 = v13;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v11[7] = &type metadata for String;
  v11[8] = sub_100003D24();
  v11[4] = v24;
  v11[5] = v26;
  sub_10001491C();
  v27 = static OS_os_log.default.getter();
  v28 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)(a2, a3, 2, &_mh_execute_header, v27, v28, v11);
}

uint64_t sub_10007002C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100136910, &unk_1000F89D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000700B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001001072C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10007014C(uint64_t a1)
{
  v2 = sub_100073098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070188(uint64_t a1)
{
  v2 = sub_100073098();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000701C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000707E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000701F0()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10007022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001001072E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100107300 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100070310(uint64_t a1)
{
  v2 = sub_1000734F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007034C(uint64_t a1)
{
  v2 = sub_1000734F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100070388@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100070964(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

double sub_1000703B4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100070B64(a2, v13);
  if (!v2)
  {
    v5 = v25;
    a1[12] = v24;
    a1[13] = v5;
    v6 = v27;
    a1[14] = v26;
    a1[15] = v6;
    v7 = v21;
    a1[8] = v20;
    a1[9] = v7;
    v8 = v23;
    a1[10] = v22;
    a1[11] = v8;
    v9 = v17;
    a1[4] = v16;
    a1[5] = v9;
    v10 = v19;
    a1[6] = v18;
    a1[7] = v10;
    v11 = v13[1];
    *a1 = v13[0];
    a1[1] = v11;
    result = *&v14;
    v12 = v15;
    a1[2] = v14;
    a1[3] = v12;
  }

  return result;
}

unint64_t sub_100070428(char a1)
{
  result = 0x56726567616E614DLL;
  switch(a1)
  {
    case 1:
      result = 0x61506C656E72654BLL;
      break;
    case 2:
      result = 0x6365746968637241;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 9:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
    case 19:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
    case 15:
      result = 0xD000000000000023;
      break;
    case 13:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x6F69747065637845;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000706C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100071938(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000706F4(uint64_t a1)
{
  v2 = sub_100072F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070730(uint64_t a1)
{
  v2 = sub_100072F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007076C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100071F7C(a2, v13);
  if (!v2)
  {
    v5 = v25;
    a1[12] = v24;
    a1[13] = v5;
    v6 = v27;
    a1[14] = v26;
    a1[15] = v6;
    v7 = v21;
    a1[8] = v20;
    a1[9] = v7;
    v8 = v23;
    a1[10] = v22;
    a1[11] = v8;
    v9 = v17;
    a1[4] = v16;
    a1[5] = v9;
    v10 = v19;
    a1[6] = v18;
    a1[7] = v10;
    v11 = v13[1];
    *a1 = v13[0];
    a1[1] = v11;
    result = *&v14;
    v12 = v15;
    a1[2] = v14;
    a1[3] = v12;
  }

  return result;
}

void *sub_1000707E0(void *a1)
{
  v3 = sub_100003CDC(&qword_100136950, &unk_1000F8B90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v10 - v6;
  v8 = sub_100003C4C(a1, a1[3]);
  sub_100073098();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100136960, &qword_1000FAC40);
    sub_1000730EC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    sub_100003C90(a1);
  }

  return v8;
}

uint64_t sub_100070964(void *a1)
{
  v2 = sub_100003CDC(&qword_1001369A0, &qword_1000F8E30);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9 - v5;
  sub_100003C4C(a1, a1[3]);
  sub_1000734F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  v10 = 0;
  sub_100072F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v11;
  v10 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100003C90(a1);
  return v8;
}

uint64_t sub_100070B64@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 executablePath];

  if (!v6)
  {
    v72 = 0x8000000100106FA0;
    sub_10001449C();
    swift_allocError();
    v74 = 0xD000000000000026;
LABEL_47:
    *v73 = v74;
    *(v73 + 8) = v72;
    v75 = v132;
    v77 = v130;
    v76 = v131;
    *(v73 + 16) = v129;
    *(v73 + 32) = v77;
    *(v73 + 48) = v76;
    *(v73 + 64) = v75;
    *(v73 + 72) = 33;
    return swift_willThrow();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  sub_100003C4C(a1, a1[3]);
  sub_1000DF9D4(&v113);
  v10 = *(&v114 + 1);
  v11 = v115;
  sub_100003C4C(&v113, *(&v114 + 1));
  (*(v11 + 112))(&v145, v7, v9, 1, v10, v11);

  if (!v146)
  {
    sub_100071738(&v145);
    sub_100003C90(&v113);
    v72 = 0x8000000100106FD0;
    sub_10001449C();
    swift_allocError();
    v74 = 0xD00000000000002ALL;
    goto LABEL_47;
  }

  v109 = a2;
  sub_100041D5C(&v145, v147);
  sub_100003C90(&v113);
  sub_100003C4C(a1, a1[3]);
  sub_1000DF65C(&v129);
  v12 = sub_10006C000();
  v14 = v13;
  v16 = v15;
  sub_100003C90(&v129);
  sub_100003C4C(a1, a1[3]);
  sub_1000DF65C(&v129);
  v17 = sub_10006C000();
  v19 = v18;
  v21 = v20;
  sub_100003C90(&v129);
  sub_100003CDC(&qword_100136918, &qword_1000F89E8);
  v22 = swift_allocObject();
  v23 = 0;
  v22[4] = v12;
  v24 = v22 + 4;
  v22[5] = v14;
  v25 = v22 + 5;
  v22[6] = v16;
  v22[7] = v17;
  v22[8] = v19;
  v22[9] = v21;
  v26 = _swiftEmptyArrayStorage;
LABEL_4:
  v27 = &v25[3 * v23];
  v110 = v26;
  v28 = v2;
  while (++v23 != 3)
  {
    v29 = v27 + 3;
    v30 = *v27;
    v27 += 3;
    if (v30 != 1)
    {
      v111 = v24;
      v31 = *(v29 - 4);
      v33 = *(v29 - 4);
      v32 = *(v29 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_100031D50(0, *(v110 + 2) + 1, 1, v110);
      }

      v35 = *(v110 + 2);
      v34 = *(v110 + 3);
      if (v35 >= v34 >> 1)
      {
        v110 = sub_100031D50((v34 > 1), v35 + 1, 1, v110);
      }

      *(v110 + 2) = v35 + 1;
      v36 = &v110[24 * v35];
      *(v36 + 4) = v31;
      *(v36 + 5) = v30;
      v26 = v110;
      *(v36 + 12) = v33;
      *(v36 + 13) = v32;
      v24 = v111;
      goto LABEL_4;
    }
  }

  swift_setDeallocating();
  sub_100003CDC(&qword_100136920, &unk_1000F89F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = *(v26 + 2);
  if (!v37)
  {

    sub_10001449C();
    swift_allocError();
    *v97 = 0xD000000000000029;
    *(v97 + 8) = 0x8000000100107080;
    goto LABEL_57;
  }

  v38 = 0;
  v39 = (v26 + 48);
  do
  {
    if (v38 >= *(v26 + 2))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    v41 = *(v39 - 1);
    v40 = *v39;
    v42 = *(v39 - 2);
    v43 = sub_100003C4C(v147, v147[3]);
    v44 = *v43;
    v45 = v43[1];

    v46 = sub_1000D39A0(v42, v41, v40, v44, v45);
    if (v28)
    {

      sub_100054994("__TEXT");
      v28 = 0;
      goto LABEL_15;
    }

    v49 = v46;
    v50 = v47;
    v112 = v48;

    *&v113 = &_swiftEmptyDictionarySingleton;
    v51 = v50 >> 62;
    if ((v50 >> 62) > 1)
    {
      if (v51 != 2)
      {
        *(&v129 + 6) = 0;
        *&v129 = 0;
        sub_1000D08A4(&v129, &v129, &off_1001269F8, &v113, 0, 1, v112);
        goto LABEL_41;
      }

      v53 = *(v49 + 16);
      v52 = *(v49 + 24);
      v54 = __DataStorage._bytes.getter();
      if (v54)
      {
        v55 = __DataStorage._offset.getter();
        if (__OFSUB__(v53, v55))
        {
          goto LABEL_62;
        }

        v54 = (v54 + v53 - v55);
      }

      v56 = __OFSUB__(v52, v53);
      v57 = v52 - v53;
      if (v56)
      {
        goto LABEL_61;
      }

      v58 = __DataStorage._length.getter();
      if (v58 >= v57)
      {
        v59 = v57;
      }

      else
      {
        v59 = v58;
      }
    }

    else
    {
      if (!v51)
      {
        *&v129 = v49;
        WORD4(v129) = v50;
        BYTE10(v129) = BYTE2(v50);
        BYTE11(v129) = BYTE3(v50);
        BYTE12(v129) = BYTE4(v50);
        BYTE13(v129) = BYTE5(v50);
        sub_1000D08A4(&v129, &v129 + BYTE6(v50), &off_1001269F8, &v113, 0, 1, v112);
        goto LABEL_41;
      }

      if (v49 >> 32 < v49)
      {
        goto LABEL_60;
      }

      v54 = __DataStorage._bytes.getter();
      if (v54)
      {
        v60 = __DataStorage._offset.getter();
        if (__OFSUB__(v49, v60))
        {
          goto LABEL_63;
        }

        v54 = (v54 + v49 - v60);
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= (v49 >> 32) - v49)
      {
        v59 = (v49 >> 32) - v49;
      }

      else
      {
        v59 = v61;
      }
    }

    v62 = v54 + v59;
    if (v54)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    sub_1000D08A4(v54, v63, &off_1001269F8, &v113, 0, 1, v112);
    v26 = v110;
LABEL_41:
    sub_100054994("__TEXT");
    v64 = v113;
    sub_1000146C4(v49, v50);
    v65 = sub_1000D6860(v64, v49, v50);
    sub_1000128D8(v49, v50);
    sub_1000128D8(v49, v50);

    v66 = _HashTable.startBucket.getter();
    if (v66 == 1 << *(v65 + 32))
    {

      v28 = 0;
    }

    else
    {
      *&v129 = sub_10008E188(&v131, v66, *(v65 + 9), 0, v65);
      *(&v129 + 1) = v67;
      *&v130 = v68;
      *(&v130 + 1) = v69;
      v70 = v131;

      sub_100041D48(v70, *(&v70 + 1));

      sub_100041D48(v70, *(&v70 + 1));

      sub_100014988(v70, *(&v70 + 1));
      v71 = v131;

      sub_100014988(v71, *(&v71 + 1));

      if (*(&v70 + 1) >> 60 != 15)
      {

        type metadata accessor for PropertyListDecoder();
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_1000717A0();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        sub_100014988(v70, *(&v70 + 1));

        v125 = v141;
        v126 = v142;
        v127 = v143;
        v128 = v144;
        v121 = v137;
        v122 = v138;
        v123 = v139;
        v124 = v140;
        v117 = v133;
        v118 = v134;
        v119 = v135;
        v120 = v136;
        v113 = v129;
        v114 = v130;
        v115 = v131;
        v116 = v132;
        result = sub_100003C90(v147);
        v101 = v126;
        v109[12] = v125;
        v109[13] = v101;
        v102 = v128;
        v109[14] = v127;
        v109[15] = v102;
        v103 = v122;
        v109[8] = v121;
        v109[9] = v103;
        v104 = v124;
        v109[10] = v123;
        v109[11] = v104;
        v105 = v118;
        v109[4] = v117;
        v109[5] = v105;
        v106 = v120;
        v109[6] = v119;
        v109[7] = v106;
        v107 = v114;
        *v109 = v113;
        v109[1] = v107;
        v108 = v116;
        v109[2] = v115;
        v109[3] = v108;
        return result;
      }

      v26 = v110;
      v28 = 0;
    }

LABEL_15:
    ++v38;
    v39 += 3;
  }

  while (v37 != v38);
  *&v129 = 0;
  *(&v129 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v113 = v129;
  v79._countAndFlagsBits = 0xD00000000000004ALL;
  v79._object = 0x8000000100107000;
  String.append(_:)(v79);
  *&v145 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v37, 0);
  v80 = v145;
  v81 = (v26 + 52);
  do
  {
    if (*(v81 - 3))
    {
      v82 = *(v81 - 5);
      v83 = *(v81 - 3);
    }

    else
    {
      v85 = *(v81 - 1);
      v84 = *v81;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_1000F3C80;
      *(v86 + 56) = &type metadata for Int32;
      *(v86 + 64) = &protocol witness table for Int32;
      *(v86 + 32) = v85;
      *(v86 + 96) = &type metadata for Int32;
      *(v86 + 104) = &protocol witness table for Int32;
      *(v86 + 72) = v84;
      v82 = String.init(format:_:)();
      v83 = v87;
    }

    *&v145 = v80;
    v89 = *(v80 + 16);
    v88 = *(v80 + 24);

    if (v89 >= v88 >> 1)
    {
      sub_1000635A4((v88 > 1), v89 + 1, 1);
      v80 = v145;
    }

    *(v80 + 16) = v89 + 1;
    v90 = v80 + 16 * v89;
    *(v90 + 32) = v82;
    *(v90 + 40) = v83;
    v81 += 6;
    --v37;
  }

  while (v37);

  v91 = Array.description.getter();
  v93 = v92;

  v94._countAndFlagsBits = v91;
  v94._object = v93;
  String.append(_:)(v94);

  v95._countAndFlagsBits = 46;
  v95._object = 0xE100000000000000;
  String.append(_:)(v95);
  v96 = v113;
  sub_10001449C();
  swift_allocError();
  *v97 = v96;
LABEL_57:
  v98 = v132;
  v100 = v130;
  v99 = v131;
  *(v97 + 16) = v129;
  *(v97 + 32) = v100;
  *(v97 + 48) = v99;
  *(v97 + 64) = v98;
  *(v97 + 72) = 33;
  swift_willThrow();
  return sub_100003C90(v147);
}

uint64_t sub_100071738(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001350F0, &qword_1000F89E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000717A0()
{
  result = qword_100136928;
  if (!qword_100136928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136928);
  }

  return result;
}

uint64_t sub_100071804(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10007181C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_100071860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000718A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071938(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726567616E614DLL && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61506C656E72654BLL && a2 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365746968637241 && a2 == 0xED00007365727574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001070B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001001070D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001070F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100107110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000100107130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100107160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100107180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001001071A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001071C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001001071E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100107210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100107230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000100107250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100107280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001072A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F69747065637845 && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F8BC0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_100071F7C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100136930, &unk_1000F8B80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v48 - v8;
  v10 = a1[3];
  v78 = a1;
  sub_100003C4C(a1, v10);
  sub_100072F20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(v78);
  }

  v11 = v6;
  v77 = a2;
  LOBYTE(v95[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v95[0]) = 1;
  v74 = KeyedDecodingContainer.decode(_:forKey:)();
  v75 = v14;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  LOBYTE(v79) = 2;
  v15 = sub_100072F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v73 = v15;
  v66 = 0;
  v67 = v95[0];
  LOBYTE(v95[0]) = 3;
  v72 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v16;
  LOBYTE(v95[0]) = 4;
  v71 = KeyedDecodingContainer.decode(_:forKey:)();
  v64 = v17;
  LOBYTE(v95[0]) = 5;
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = v18;
  LOBYTE(v95[0]) = 6;
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v19;
  LOBYTE(v95[0]) = 7;
  v68 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = v20;
  LOBYTE(v79) = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = 0;
  v60 = v95[0];
  LOBYTE(v79) = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = 0;
  v59 = v95[0];
  LOBYTE(v79) = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = 0;
  v58 = v95[0];
  LOBYTE(v79) = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = 0;
  v57 = v95[0];
  LOBYTE(v79) = 12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v76 = 0;
  v56 = v95[0];
  LOBYTE(v95[0]) = 13;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = v22;
  v76 = 0;
  v23 = v21;
  LOBYTE(v95[0]) = 14;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v54 = v25;
  v76 = 0;
  v26 = v24;
  LOBYTE(v95[0]) = 15;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = v28;
  v76 = 0;
  v29 = v27;
  LOBYTE(v95[0]) = 16;
  v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v30;
  v76 = 0;
  LOBYTE(v95[0]) = 17;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v51 = v31;
  v76 = 0;
  LOBYTE(v79) = 18;
  sub_100072FF0();
  v32 = v76;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v76 = v32;
  if (v32)
  {
    (*(v11 + 8))(v9, v5);
    LODWORD(v68) = 1;
    LODWORD(v69) = 1;
    LODWORD(v70) = 1;
    LODWORD(v71) = 1;
    LODWORD(v72) = 1;
    LODWORD(v73) = 1;
    LODWORD(v74) = 1;
    LODWORD(v77) = 1;
    v33 = v66;
    sub_100003C90(v78);

    if (v33)
    {
      if (!v68)
      {
LABEL_18:

        if (v69)
        {
        }

        if (v70)
        {

          if (v71)
          {
LABEL_12:

            if ((v72 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_21;
          }
        }

        else if (v71)
        {
          goto LABEL_12;
        }

        if (!v72)
        {
LABEL_13:
          if (v73)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }

LABEL_21:

        if (v73)
        {
LABEL_14:

          if ((v74 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_23;
        }

LABEL_22:
        if (!v74)
        {
LABEL_15:
          if (!v77)
          {
            return result;
          }
        }

LABEL_23:

        if ((v77 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {

      if ((v68 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_18;
  }

  v66 = v95[0];
  v97 = 19;
  sub_100073044();
  v34 = v76;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v76 = v34;
  if (!v34)
  {
    (*(v11 + 8))(v9, v5);
    v48 = *(&v96 + 1);
    v49 = v96;
    *&v79 = v12;
    *(&v79 + 1) = v74;
    v35 = v67;
    *&v80 = v75;
    *(&v80 + 1) = v67;
    v36 = v72;
    v38 = v64;
    v37 = v65;
    *&v81 = v72;
    *(&v81 + 1) = v65;
    *&v82 = v71;
    *(&v82 + 1) = v64;
    *&v83 = v70;
    *(&v83 + 1) = v63;
    *&v84 = v69;
    *(&v84 + 1) = v62;
    *&v85 = v68;
    *(&v85 + 1) = v61;
    *&v86 = v60;
    *(&v86 + 1) = v59;
    *&v87 = v58;
    *(&v87 + 1) = v57;
    *&v88 = v56;
    *(&v88 + 1) = v23;
    *&v89 = v55;
    *(&v89 + 1) = v26;
    *&v90 = v54;
    *(&v90 + 1) = v29;
    *&v91 = v53;
    *(&v91 + 1) = v73;
    *&v92 = v52;
    *(&v92 + 1) = v50;
    *&v93 = v51;
    *(&v93 + 1) = v66;
    v94 = v96;
    sub_100014838(&v79, v95);
    sub_100003C90(v78);
    v95[0] = v12;
    v95[1] = v74;
    v95[2] = v75;
    v95[3] = v35;
    v95[4] = v36;
    v95[5] = v37;
    v95[6] = v71;
    v95[7] = v38;
    v95[8] = v70;
    v95[9] = v63;
    v95[10] = v69;
    v95[11] = v62;
    v95[12] = v68;
    v95[13] = v61;
    v95[14] = v60;
    v95[15] = v59;
    v95[16] = v58;
    v95[17] = v57;
    v95[18] = v56;
    v95[19] = v23;
    v95[20] = v55;
    v95[21] = v26;
    v95[22] = v54;
    v95[23] = v29;
    v95[24] = v53;
    v95[25] = v73;
    v95[26] = v52;
    v95[27] = v50;
    v95[28] = v51;
    v95[29] = v66;
    v95[30] = v49;
    v95[31] = v48;
    result = sub_10000A680(v95);
    v39 = v92;
    v40 = v77;
    v77[12] = v91;
    v40[13] = v39;
    v41 = v94;
    v40[14] = v93;
    v40[15] = v41;
    v42 = v88;
    v40[8] = v87;
    v40[9] = v42;
    v43 = v90;
    v40[10] = v89;
    v40[11] = v43;
    v44 = v84;
    v40[4] = v83;
    v40[5] = v44;
    v45 = v86;
    v40[6] = v85;
    v40[7] = v45;
    v46 = v80;
    *v40 = v79;
    v40[1] = v46;
    v47 = v82;
    v40[2] = v81;
    v40[3] = v47;
    return result;
  }

  (*(v11 + 8))(v9, v5);
  sub_100003C90(v78);
}

unint64_t sub_100072F20()
{
  result = qword_100136938;
  if (!qword_100136938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136938);
  }

  return result;
}

unint64_t sub_100072F74()
{
  result = qword_1001345F8;
  if (!qword_1001345F8)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001345F8);
  }

  return result;
}

unint64_t sub_100072FF0()
{
  result = qword_100136940;
  if (!qword_100136940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136940);
  }

  return result;
}

unint64_t sub_100073044()
{
  result = qword_100136948;
  if (!qword_100136948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136948);
  }

  return result;
}

unint64_t sub_100073098()
{
  result = qword_100136958;
  if (!qword_100136958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136958);
  }

  return result;
}

unint64_t sub_1000730EC()
{
  result = qword_100136968;
  if (!qword_100136968)
  {
    sub_100009FA4(&qword_100136960, &qword_1000FAC40);
    sub_100072F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136968);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KernelManagementConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KernelManagementConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000732EC()
{
  result = qword_100136970;
  if (!qword_100136970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136970);
  }

  return result;
}

unint64_t sub_100073344()
{
  result = qword_100136978;
  if (!qword_100136978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136978);
  }

  return result;
}

unint64_t sub_10007339C()
{
  result = qword_100136980;
  if (!qword_100136980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136980);
  }

  return result;
}

unint64_t sub_1000733F4()
{
  result = qword_100136988;
  if (!qword_100136988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136988);
  }

  return result;
}

unint64_t sub_10007344C()
{
  result = qword_100136990;
  if (!qword_100136990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136990);
  }

  return result;
}

unint64_t sub_1000734A4()
{
  result = qword_100136998;
  if (!qword_100136998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136998);
  }

  return result;
}

unint64_t sub_1000734F8()
{
  result = qword_1001369A8;
  if (!qword_1001369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369A8);
  }

  return result;
}

unint64_t sub_100073560()
{
  result = qword_1001369B0;
  if (!qword_1001369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369B0);
  }

  return result;
}

unint64_t sub_1000735B8()
{
  result = qword_1001369B8;
  if (!qword_1001369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369B8);
  }

  return result;
}

unint64_t sub_100073610()
{
  result = qword_1001369C0;
  if (!qword_1001369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369C0);
  }

  return result;
}

void sub_100073664(uint64_t a1)
{
  v3 = sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
  v4 = objc_allocWithZone(v3);
  *&v4[*((swift_isaMask & *v4) + 0x60)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0x68)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0x70)] = a1;
  v21.receiver = v4;
  v21.super_class = v3;

  v5 = objc_msgSendSuper2(&v21, "init");
  v6 = v5;
  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = *((swift_isaMask & *v7) + 0x60);
    v9 = *(v7 + v8);
    *(v7 + v8) = v5;
    v10 = v7;
    v11 = v6;

    v12 = *((swift_isaMask & *v11) + 0x68);
    v13 = *(v11 + v12);
    *(v11 + v12) = v7;
  }

  else
  {
    v14 = *(v1 + 16);
    *(v1 + 16) = v5;
    v15 = v5;

    v13 = *(v1 + 24);
    *(v1 + 24) = v6;
    v16 = v15;
  }

  v17 = *(v1 + 24);
  *(v1 + 24) = v6;
  v6;

  v18 = *(v1 + 32);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v20;
  }
}

void sub_1000737F8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = *((swift_isaMask & *v1) + 0x60);
    v4 = *(v1 + v3);
    *(v0 + 16) = v4;
    v5 = *(v0 + 24);
    if (v5)
    {
      sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
      v6 = v4;
      v7 = v1;
      v8 = v5;
      v9 = static NSObject.== infix(_:_:)();

      v4 = *(v1 + v3);
      if (v9)
      {
        v10 = *(v2 + 24);
        *(v2 + 24) = v4;
        v11 = v4;

        v4 = *(v1 + v3);
      }

      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v15 = v4;
      v16 = v1;
      if (v4)
      {
LABEL_6:
        v12 = v4;

        v13 = *((swift_isaMask & *v12) + 0x68);
        v14 = *(v12 + v13);
        *(v12 + v13) = 0;

        goto LABEL_9;
      }
    }

    v14 = v1;
LABEL_9:

    v17 = *(v2 + 32);
    v18 = v17 != 0;
    v19 = v17 - 1;
    if (v18)
    {
      *(v2 + 32) = v19;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100073930(void *a1)
{
  v2 = v1;
  v4 = *(a1 + *((swift_isaMask & *a1) + 0x68));
  v5 = *(a1 + *((swift_isaMask & *a1) + 0x60));
  if (!v5)
  {
    v24 = v4;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *((*v5 & swift_isaMask) + 0x68);
  v7 = *(v5 + v6);
  *(v5 + v6) = v4;
  v8 = v4;
  v9 = v5;
  v10 = v8;

  if (v4)
  {
LABEL_3:
    v11 = *((swift_isaMask & *v4) + 0x60);
    v12 = *(v4 + v11);
    *(v4 + v11) = v5;
    v13 = v5;
  }

LABEL_4:
  v14 = *(v2 + 16);
  if (v14)
  {
    sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
    v15 = a1;
    v16 = v14;
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      v18 = *(v2 + 16);
      *(v2 + 16) = v4;
      v19 = v4;
    }
  }

  v20 = *(v2 + 24);
  if (v20)
  {
    sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
    v21 = a1;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v4 = *(v2 + 24);
      *(v2 + 24) = v5;
    }

    else
    {
      v4 = v5;
    }
  }

  else
  {
  }

  v25 = *(v2 + 32);
  v26 = v25 != 0;
  v27 = v25 - 1;
  if (v26)
  {
    *(v2 + 32) = v27;
  }

  else
  {
    __break(1u);
  }
}

void sub_100073B08(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_100061588(v5, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    swift_endAccess();
    v11 = v10;

    sub_100073930(v11);

    swift_beginAccess();
    v12 = sub_100036C70(v5, v4);
    swift_endAccess();

    OS_dispatch_semaphore.signal()();
  }

  else
  {
    swift_endAccess();
  }

  if (*(*(v2 + 24) + 16) == 8)
  {

    sub_1000737F8();
    v14 = v13;

    if (v14)
    {
      v15 = *(v14 + *((swift_isaMask & *v14) + 0x70));
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      swift_beginAccess();

      v18 = sub_100036C70(v16, v17);
      swift_endAccess();

      OS_dispatch_semaphore.signal()();
    }
  }

  sub_100073664(a1);
  v20 = v19;

  swift_beginAccess();
  v21 = v20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_100039740(v21, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 24) = v23;
  swift_endAccess();

  sub_100073F00();
}

void sub_100073DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_100061588(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 24);
    v12 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003B6DC();
      v10 = v12;
    }

    v11 = *(*(v10 + 56) + 8 * v8);
    sub_1000382C4(v8, v10);
    *(v3 + 24) = v10;
    swift_endAccess();

    sub_100073930(v11);

    OS_dispatch_semaphore.signal()();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100073F00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2, v4);
  v37 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v6 - 8);
  v34 = v6;
  __chkstk_darwin(v6, v7);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9, v10);
  v31[2] = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 24);
  aBlock = *(v0 + 16);
  v42 = v16;

  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v19 = aBlock;
  v18 = v42;
  aBlock = *(v0 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_context);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  aBlock = v19;
  v42 = v18;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24 = aBlock;
  v25 = v42;
  v31[1] = sub_100074B10();
  sub_100074B5C(0x3CuLL, v24, v25);

  static String._fromSubstring(_:)();

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100074C5C(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = sub_100074C18;
  v46 = v1;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10006CCB0;
  v44 = &unk_100129C98;
  v27 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100074C5C(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10000A0A8(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  v29 = v37;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v39 + 8))(v29, v28);
  (*(v35 + 8))(v15, v36);
}

void *sub_10007442C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_10007444C()
{

  v1 = OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_timeInfo;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100074500(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_10007452C()
{
  type metadata accessor for DextLaunchThreadManager();
  v0 = swift_allocObject();
  if (os_variant_allows_internal_security_policies())
  {
    sub_100003CDC(&qword_100136B60, &qword_1000F90B8);
    v1 = swift_allocObject();
    *(v1 + 16) = 8;
    *(v1 + 24) = sub_100041508(_swiftEmptyArrayStorage);
    sub_100003CDC(&qword_100136B68, &qword_1000F90C0);
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v1 + 32) = v2;
    sub_100003CDC(&unk_100136B70, &qword_1000F90C8);
    result = swift_allocObject();
    *(result + 24) = 0;
    *(result + 16) = v1;
  }

  else
  {
    result = 0;
  }

  *(v0 + 16) = result;
  qword_10014E8A0 = v0;
  return result;
}

void sub_100074610(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(v3 + 16);
  if (v6)
  {
    __chkstk_darwin(a1, a2);

    os_unfair_lock_lock(v6 + 6);
    sub_100074CA4(&v6[4]);
    os_unfair_lock_unlock(v6 + 6);
  }

  else
  {
    if (qword_100133B08 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000144F0(v8, qword_10014EA58);

    v12 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_1000E3AF8(a1, a2, &v13);
      *(v10 + 12) = 2048;
      *(v10 + 14) = a3 & 1;
      _os_log_impl(&_mh_execute_header, v12, v9, "Skipping addBreadcrumbForDextWithIdentifier for %s %ld", v10, 0x16u);
      sub_100003C90(v11);
    }

    else
    {
    }
  }
}

uint64_t sub_100074808(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata(0);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  static Date.now.getter();
  *(v7 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_semaphore) = dispatch_semaphore_create(0);
  *(v7 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_context) = a4 & 1;
  sub_100073B08(v7);
}

uint64_t sub_1000748EC()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata(uint64_t a1)
{
  result = qword_100136A90;
  if (!qword_100136A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007499C(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100074A64()
{
  result = qword_100136B48;
  if (!qword_100136B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136B48);
  }

  return result;
}

uint64_t sub_100074AB8(uint64_t a1)
{
  result = sub_100074C5C(&qword_100136B50, type metadata accessor for DextLaunchThreadManager.DextLaunchDebuggingMetadata, &unk_1000F9068);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100074B10()
{
  result = qword_100133C58;
  if (!qword_100133C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100133C58);
  }

  return result;
}

unint64_t sub_100074B5C(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return String.subscript.getter();
}

double sub_100074C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100074C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100074CC4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    swift_beginAccess();
    sub_100003C4C((v1 + 16), *(v1 + 40));

    sub_1000DF818(v5);
    swift_endAccess();

    v3 = *(v0 + 16);
    if (v3)
    {
      v4 = *(v3 + 64);

      sub_100068B00(v4, sub_100075310, v2);

      sub_100003C90(v5);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100074D98(void *a1)
{
  v3 = type metadata accessor for XPCUtil();
  ObjectType = swift_getObjectType();
  if (sub_1000CAD08(a1, v3, ObjectType))
  {
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000F3160;
    sub_100003CDC(&qword_100136C78, &unk_1000F9120);
    _print_unlocked<A, B>(_:_:)();
    *(v5 + 56) = &type metadata for String;
    v6 = sub_100003D24();
    *(v5 + 64) = v6;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    sub_10001491C();
    v7 = static OS_os_log.default.getter();
    v8 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("distnoted event, dictionary contents:\n%{public}s", 48, 2, &_mh_execute_header, v7, v8, v5);

    v9 = swift_unknownObjectRetain();
    v10 = sub_1000CB1D4(v9);
    if (v11)
    {
      v12 = v11;
      if (v10)
      {
        goto LABEL_24;
      }

      v13 = *(v11 + 16);
      if (v13)
      {

        v14 = (v12 + 40);
        do
        {
          v15 = *(v14 - 1);
          v16 = *v14;
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_1000F3160;
          *(v17 + 56) = &type metadata for String;
          *(v17 + 64) = v6;
          *(v17 + 32) = v15;
          *(v17 + 40) = v16;

          v18 = static OS_os_log.default.getter();
          v19 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("distnoted app installation event, processing bundle: %{public}s", 63, 2, &_mh_execute_header, v18, v19, v17);

          v14 += 2;
          --v13;
        }

        while (v13);
      }

      if (*(v1 + 16))
      {

        _StringGuts.grow(_:)(26);

        v20 = 0x80000001001075B0;
        v21 = 0xD000000000000018;
LABEL_23:
        v46 = v21;
        v47 = v20;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_100018594();
        v41 = BidirectionalCollection<>.joined(separator:)();
        v43 = v42;

        v44._countAndFlagsBits = v41;
        v44._object = v43;
        String.append(_:)(v44);

        sub_100085800(v46, v47);

LABEL_24:

        return;
      }

      __break(1u);
    }

    else
    {
      v28 = swift_unknownObjectRetain();
      v29 = sub_1000CB4F8(v28);
      if (!v30)
      {
        v32 = static OS_os_log.default.getter();
        v33 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("distnoted event, could not make info object", 43, 2, &_mh_execute_header, v32, v33, _swiftEmptyArrayStorage);

        return;
      }

      v31 = v30;
      if (v29)
      {
        goto LABEL_24;
      }

      v34 = *(v30 + 16);
      if (v34)
      {

        v35 = (v31 + 40);
        do
        {
          v36 = *(v35 - 1);
          v37 = *v35;
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1000F3160;
          *(v38 + 56) = &type metadata for String;
          *(v38 + 64) = v6;
          *(v38 + 32) = v36;
          *(v38 + 40) = v37;

          v39 = static OS_os_log.default.getter();
          v40 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("distnoted app uninstallation event, processing bundle: %{public}s", 65, 2, &_mh_execute_header, v39, v40, v38);

          v35 += 2;
          --v34;
        }

        while (v34);
      }

      if (*(v1 + 16))
      {

        _StringGuts.grow(_:)(28);

        v20 = 0x8000000100107550;
        v21 = 0xD00000000000001ALL;
        goto LABEL_23;
      }
    }

    __break(1u);
    return;
  }

  type = xpc_get_type(a1);
  xpc_type_get_name(type);
  v23 = String.init(cString:)();
  v25 = v24;
  v26 = static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000F3160;
  *(v27 + 56) = &type metadata for String;
  *(v27 + 64) = sub_100003D24();
  *(v27 + 32) = v23;
  *(v27 + 40) = v25;
  sub_10001491C();
  v45 = static OS_os_log.default.getter();
}

uint64_t sub_100075314()
{
  v1 = type metadata accessor for POSIXError();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 valueForEntitlement:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {
    sub_10000A184(v16, &qword_1001343C8, &unk_1000F3CA0);
LABEL_9:
    v10 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000F3160;
    v12 = [v6 processIdentifier];
    *(v11 + 56) = &type metadata for Int32;
    *(v11 + 64) = &protocol witness table for Int32;
    *(v11 + 32) = v12;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v10, &_mh_execute_header, v13, "Attempt by unentitled pid %d to access interface", v14);

    LODWORD(v16[0]) = 1;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_10007848C(&qword_100135F28, &type metadata accessor for POSIXError, &protocol conformance descriptor for POSIXError);
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v2 + 8))(v5, v1);
    return swift_willThrow();
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0 || (v17 & 1) == 0)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000755E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = type metadata accessor for DispatchQoS();
  v11 = *(v20[0] - 8);
  __chkstk_darwin(v20[0], v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(v3 + 16) + 64);
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_100078404;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CCB0;
  aBlock[3] = &unk_100129CF8;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  static DispatchQoS.unspecified.getter();
  v20[1] = _swiftEmptyArrayStorage;
  sub_10007848C(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_100078428();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20[0]);
}

uint64_t sub_1000758A8(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v8 = static OS_os_log.default.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  (*(v4 + 8))(v7, v3);
  sub_100075314();
  v9 = sub_10008F8D0();
  a2(v9);
}

void sub_100075B80(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

void sub_100075C48(uint64_t a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    v4 = static os_log_type_t.error.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1000F3160;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100003D24();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v4, &_mh_execute_header, v9, "Error while enqueuing update to approval state: %{public}s", 58, 2, v5);

    v10 = _convertErrorToNSError(_:)();
    a3();
  }

  else
  {
    (a3)(0);
  }
}

unint64_t sub_100075E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v106 = a7;
  v105 = a6;
  v103 = a5;
  v102 = a4;
  v104 = a3;
  v108 = a2;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = &v95 - v15;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v17 = swift_allocObject();
  v101 = xmmword_1000F3160;
  *(v17 + 16) = xmmword_1000F3160;
  *&v111 = 1954047300;
  *(&v111 + 1) = 0xE400000000000000;

  v18._countAndFlagsBits = 32;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_1000D7374();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 30240;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21 = sub_1000D7614();
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0x293F3F3F28;
    v23 = 0xE500000000000000;
  }

  v24 = v23;
  String.append(_:)(*&v21);

  v25._countAndFlagsBits = 544106784;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = sub_1000DAD64();
  String.append(_:)(v26);

  v27 = v111;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100003D24();
  *(v17 + 32) = v27;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v28 = static OS_os_log.default.getter();
  v29 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Launching driver extension: %{public}s", 38, 2, &_mh_execute_header, v28, v29, v17);

  sub_1000138F8(a1 + 24, &v111);
  if (BYTE8(v113))
  {
    sub_100013954(&v111);
    goto LABEL_6;
  }

  v100 = v16;
  sub_100009F34(&v111, &v115);
  v32 = v116;
  v33 = v117;
  sub_100003C4C(&v115, v116);
  (*(v33 + 56))(v32, v33);
  v35 = v34;
  sub_100003C90(&v115);
  if (!v35)
  {
LABEL_6:
    *&v111 = 0;
    *(&v111 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    *&v110[0] = 0xD000000000000010;
    *(&v110[0] + 1) = 0x80000001001078B0;
    sub_1000138F8(a1 + 24, &v111);
    if (BYTE8(v113))
    {
      sub_100013954(&v111);
    }

    else
    {
      sub_100009F34(&v111, &v115);
      v75 = v116;
      v76 = v117;
      sub_100003C4C(&v115, v116);
      v77 = (*(v76 + 24))(v75, v76);
      v30 = v78;
      sub_100003C90(&v115);
      if (v30)
      {
        v31 = v77;
        goto LABEL_27;
      }
    }

    v30 = 0xE600000000000000;
    v31 = 0x296C6C756E28;
LABEL_27:
    v79 = v30;
    String.append(_:)(*&v31);

    v80._countAndFlagsBits = 0xD000000000000018;
    v80._object = 0x80000001001078D0;
    String.append(_:)(v80);
    v82 = *(&v110[0] + 1);
    v81 = *&v110[0];
    sub_10001449C();
    swift_allocError();
    *v83 = __PAIR128__(v82, v81);
    v84 = v114;
    v85 = v113;
    v86 = v112;
    *(v83 + 16) = v111;
    *(v83 + 32) = v86;
    *(v83 + 48) = v85;
    *(v83 + 64) = v84;
    *(v83 + 72) = 4;
    swift_willThrow();
    return v81;
  }

  URL.init(fileURLWithPath:)();

  URL.absoluteURL.getter();
  v36 = *(v9 + 8);
  v99 = v8;
  v98 = v9 + 8;
  v97 = v36;
  v36(v13, v8);
  v37 = swift_allocObject();
  *(v37 + 16) = v101;
  *(v37 + 56) = &type metadata for UInt64;
  *(v37 + 64) = &protocol witness table for UInt64;
  *(v37 + 32) = v102;
  v38 = String.init(format:_:)();
  v95 = v38;
  v40 = v39;
  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1000F9130;
  *(v41 + 32) = URL.path.getter();
  *(v41 + 40) = v42;
  v43 = v108;
  *(v41 + 48) = v108;
  v44 = v43;
  v45 = v104;
  *(v41 + 56) = v104;
  *(v41 + 64) = v38;
  *(v41 + 72) = v40;

  *(v41 + 80) = sub_1000D7374();
  *(v41 + 88) = v46;
  v47 = v109;
  swift_beginAccess();
  sub_100003C4C((v47 + 16), *(v47 + 40));
  sub_1000DF65C(&v111);
  sub_100003C4C(&v111, *(&v112 + 1));
  v48 = sub_10006ACEC();
  sub_100003C90(&v111);
  v49 = 0x8000000100107A50;
  v50 = 0x6C7070612E6D6F63;
  if (v48)
  {
    v50 = 0xD000000000000013;
  }

  *&v101 = v50;
  if ((v48 & 1) == 0)
  {
    v49 = 0xEE00747865642E65;
  }

  v96 = v49;
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  v51 = swift_allocObject();
  *(v51 + 32) = 0x646567616E614D5FLL;
  v102 = v51 + 32;
  *(v51 + 16) = xmmword_1000F9140;
  *(v51 + 40) = 0xEA00000000007942;
  *(v51 + 48) = 0xD000000000000014;
  *(v51 + 56) = 0x80000001001038F0;
  *(v51 + 72) = &type metadata for String;
  *(v51 + 80) = 0x6C6562614CLL;
  *(v51 + 88) = 0xE500000000000000;
  *&v111 = v44;
  *(&v111 + 1) = v45;

  v52._countAndFlagsBits = 45;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  v53._countAndFlagsBits = v95;
  v53._object = v40;
  String.append(_:)(v53);

  v54 = *(&v111 + 1);
  *(v51 + 96) = v111;
  *(v51 + 104) = v54;
  *(v51 + 120) = &type metadata for String;
  *(v51 + 128) = 0xD000000000000010;
  *(v51 + 136) = 0x80000001001078F0;
  v55 = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(v51 + 144) = v41;
  *(v51 + 168) = v55;
  *(v51 + 176) = 0x54737365636F7250;
  *(v51 + 184) = 0xEB00000000657079;
  *(v51 + 192) = 0x726576697244;
  *(v51 + 200) = 0xE600000000000000;
  *(v51 + 216) = &type metadata for String;
  *(v51 + 224) = 0x616F4C74416E7552;
  *(v51 + 232) = 0xE900000000000064;
  *(v51 + 240) = 1;
  *(v51 + 264) = &type metadata for Bool;
  strcpy((v51 + 272), "LaunchOnlyOnce");
  *(v51 + 287) = -18;
  *(v51 + 288) = 1;
  *(v51 + 312) = &type metadata for Bool;
  *(v51 + 320) = 0x656D614E72657355;
  *(v51 + 328) = 0xE800000000000000;
  *(v51 + 336) = 0x6B7265766972645FLL;
  *(v51 + 344) = 0xEA00000000007469;
  *(v51 + 360) = &type metadata for String;
  *(v51 + 368) = 0xD000000000000012;
  *(v51 + 376) = 0x8000000100107910;
  *(v51 + 384) = v103 & 1;
  *(v51 + 408) = &type metadata for Bool;
  *(v51 + 416) = 0xD000000000000016;
  *(v51 + 424) = 0x8000000100107930;
  *(v51 + 432) = 0x6D6574737953;
  *(v51 + 440) = 0xE600000000000000;
  *(v51 + 456) = &type metadata for String;
  *(v51 + 464) = 0xD000000000000012;
  *(v51 + 472) = 0x8000000100104E40;
  *(v51 + 480) = sub_1000D7374();
  *(v51 + 488) = v56;
  *(v51 + 504) = &type metadata for String;
  strcpy((v51 + 512), "SandboxProfile");
  *(v51 + 527) = -18;
  *(v51 + 552) = &type metadata for String;
  *(v51 + 528) = v101;
  *(v51 + 536) = v96;
  *(v51 + 560) = 0xD000000000000012;
  *(v51 + 568) = 0x8000000100107950;
  *(v51 + 600) = &type metadata for Bool;
  *(v51 + 576) = 1;
  *(v51 + 608) = 0xD00000000000001BLL;
  *(v51 + 616) = 0x8000000100107970;
  *(v51 + 648) = &type metadata for String;
  *(v51 + 624) = v108;
  *(v51 + 632) = v45;
  *(v51 + 656) = 0xD000000000000010;
  *(v51 + 664) = 0x8000000100106170;
  *(v51 + 696) = &type metadata for UInt32;
  *(v51 + 672) = v105;

  v57 = sub_10003E208(v51);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10007A3EC(v106, &v115);
  if (v116)
  {
    sub_100009F34(&v115, &v111);
    sub_100003C4C(&v111, *(&v112 + 1));

    v59 = sub_1000C5470(v58);

    if (v59)
    {
      v60 = *(a1 + 16);
      v61 = v99;
      if (*(v60 + 16))
      {
        v62 = sub_100061588(0xD000000000000014, 0x80000001001079F0);
        if (v63)
        {
          sub_10000B430(*(v60 + 56) + 32 * v62, &v115);
          v64 = sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
          if (swift_dynamicCast())
          {
            v116 = v64;
            *&v115 = *&v110[0];
            sub_10000B48C(&v115, v110);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v118 = v57;
            sub_100038954(v110, 0xD000000000000014, 0x80000001001079F0, isUniquelyReferenced_nonNull_native);
            v57 = v118;
          }
        }
      }

      v66 = v100;
      if (*(v60 + 16))
      {
        v67 = sub_100061588(0x6F43656C62616E45, 0xEF73706D75446572);
        if (v68)
        {
          sub_10000B430(*(v60 + 56) + 32 * v67, &v115);
          if (swift_dynamicCast() & 1) != 0 && (v110[0])
          {
            v69 = sub_10004160C(&off_100126988);
            sub_10000A184(&unk_1001269A8, &qword_100136DB8, &qword_1000F91A0);
            v70 = sub_100003CDC(&qword_100136DC0, &qword_1000F91A8);
            v116 = v70;
            *&v115 = v69;
            sub_10000B48C(&v115, v110);
            v71 = swift_isUniquelyReferenced_nonNull_native();
            v118 = v57;
            sub_100038954(v110, 0xD000000000000012, 0x8000000100107A10, v71);
            v72 = v118;
            v73 = sub_10004160C(&off_1001269C0);
            sub_10000A184(&unk_1001269E0, &qword_100136DB8, &qword_1000F91A0);
            v116 = v70;
            *&v115 = v73;
            v66 = v100;
            sub_10000B48C(&v115, v110);
            v74 = swift_isUniquelyReferenced_nonNull_native();
            v118 = v72;
            sub_100038954(v110, 0xD000000000000012, 0x8000000100107A30, v74);
            v57 = v118;
          }
        }
      }
    }

    else
    {
      v61 = v99;
      v66 = v100;
    }

    v90 = *(*sub_100003C4C(&v111, *(&v112 + 1)) + 16);
    if (*(v90 + 16))
    {

      v91 = sub_100061588(0xD000000000000033, 0x8000000100107990);
      if (v92)
      {
        sub_10000B430(*(v90 + 56) + 32 * v91, &v115);

        if (swift_dynamicCast() & 1) != 0 && (v110[0])
        {
          v116 = &type metadata for Bool;
          LOBYTE(v115) = 1;
          sub_10000B48C(&v115, v110);
          v93 = swift_isUniquelyReferenced_nonNull_native();
          v118 = v57;
          sub_100038954(v110, 0xD000000000000017, 0x80000001001079D0, v93);
          v57 = v118;
        }
      }

      else
      {
      }
    }

    v89 = v109;
    sub_100003C90(&v111);
    v88 = v107;
  }

  else
  {
    sub_10000A184(&v115, &unk_100137390, &unk_1000F4E70);
    v61 = v99;
    v88 = v107;
    v89 = v109;
    v66 = v100;
  }

  v81 = *sub_100003C4C((v89 + 16), *(v89 + 40));
  sub_1000E0EA4(&v111);
  v94 = sub_100068664(v57);
  if (!v88)
  {
    v81 = v94;
  }

  v97(v66, v61);

  sub_100003C90(&v111);
  return v81;
}

uint64_t sub_100076D5C()
{

  return swift_deallocClassInstance();
}

void sub_100076DC0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for DriverKitDaemonXPCRequestDelegate();
  swift_allocObject();
  v6 = sub_1000782D0(v5, a2);

  *a3 = v6;
}

uint64_t sub_100076E30(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v7 = sub_100076EB0(v2, v3, v4, v5, v6);

  return v7;
}

uint64_t sub_100076EB0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, __n128 a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v10 = Substring.UTF8View.distance(from:to:)();
    if (!v10 || (v11 = v10, v12 = sub_1000E3A84(v10, 0), v14 = sub_100077008(v16, (v12 + 4), v11, a1, a2, a3, a4, v13), , , v14 == v11))
    {
      v15 = static String._uncheckedFromUTF8(_:)();

      return v15;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v16[0] = a3;
      v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100077008(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, __n128 a8)
{
  v10 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v13 = a4;
    v12 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v11 = a5 >> 14;
  v28 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v12 = 0;
    v13 = a4;
LABEL_34:
    *v10 = a4;
    v10[1] = a5;
    v10[2] = a6;
    v10[3] = a7;
    v10[4] = v13;
    return v12;
  }

  v12 = 0;
  v15 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  v22 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a7 & 0xFFFFFFFFFFFFFFLL;
  v17 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v17 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v17;
  v27 = a3 - 1;
  v13 = a4;
  while (1)
  {
    v18 = v13 & 0xC;
    result = v13;
    if (v18 == v16)
    {
      result = sub_10004630C(v13, a6, a7);
    }

    if (result >> 14 < v28 || result >> 14 >= v11)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v20 = result;
      if (v18 != v16)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v19 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v29[0] = a6;
        v29[1] = v23;
        v20 = *(v29 + v19);
        if (v18 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v22;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v20 = *(result + v19);
        if (v18 != v16)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10004630C(v13, a6, a7);
    v13 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v24 <= v13 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v13 = result;
LABEL_29:
    *(a2 + v12) = v20;
    if (v27 == v12)
    {
      v12 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v12 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v12;
    if (v11 == v13 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100077228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000777B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_10006B82C();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_100076E30(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100077D4C(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1000782D0(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000F3160;

  v6 = [a2 processIdentifier];
  *(v5 + 56) = &type metadata for Int32;
  *(v5 + 64) = &protocol witness table for Int32;
  *(v5 + 32) = v6;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v7 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("incoming connection from pid %d", v9);

  return v3;
}

uint64_t sub_1000783C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100078410(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100078428()
{
  result = qword_100133CB0;
  if (!qword_100133CB0)
  {
    sub_100009FA4(&unk_100137370, &unk_1000F32E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CB0);
  }

  return result;
}

uint64_t sub_10007848C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000784D4(uint64_t a1, uint64_t a2)
{
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v3 = static OS_os_log.default.getter();
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Incoming request for approval state", 35, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);

  OS_dispatch_queue.sync<A>(execute:)();

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_10007A508();
  v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v7 = v6;

  sub_1000146C4(v5, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_1000128D8(v5, v7);
  return sub_1000128D8(v5, v7);
}

uint64_t sub_100078A14(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  _Block_copy(a4);
  PropertyListDecoder.init()();
  sub_100067F14();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v11 = v21;
  v19 = v20;
  v12 = v22;
  v13 = v23;
  v18 = v24;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10007A494;
  *(v14 + 24) = v10;
  type metadata accessor for ApprovalStateUpdateRequest(0);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = v11;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = v18;
  *(v15 + 56) = sub_10007A4E0;
  *(v15 + 64) = v14;

  sub_1000146B0(v12, v13);

  static Date.now.getter();
  (*(v6 + 32))(v15 + OBJC_IVAR____TtC10driverkitd26ApprovalStateUpdateRequest_timestamp, v9, v5);
  sub_100088B34(v15);

  sub_100014988(v12, v13);
}

void sub_100078DBC(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v196 = a8;
  v194 = a6;
  v14 = type metadata accessor for LookupSpec(0);
  __chkstk_darwin(v14, v15);
  v17 = (&v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100075314();
  *&v195 = 0;
  v191 = v14;
  v192 = v17;
  v193 = a2;
  v189 = a5;
  v190 = a3;
  v18 = *(a7 + 16);
  swift_beginAccess();
  sub_100003C4C(v18 + 2, v18[5]);
  sub_1000DF65C(v213);
  sub_100003C4C(v213, *&v213[24]);
  swift_endAccess();
  v19 = sub_10006AA20();
  if (!v20)
  {
    sub_100003C90(v213);
LABEL_10:
    sub_10001449C();
    v24 = swift_allocError();
    *v29 = 0xD000000000000017;
    *(v29 + 8) = 0x80000001001076D0;
    v30 = *&v213[48];
    v32 = *&v213[16];
    v31 = *&v213[32];
    *(v29 + 16) = *v213;
    *(v29 + 32) = v32;
    *(v29 + 48) = v31;
    *(v29 + 64) = v30;
    *(v29 + 72) = 2;
    swift_willThrow();
    goto LABEL_11;
  }

  v21 = v19;
  v22 = v20;
  sub_100003C90(v213);
  v23 = v21 == 0x657361656C6572 && v22 == 0xE700000000000000;
  if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_8:
    sub_10001449C();
    v24 = swift_allocError();
    *v25 = 0xD00000000000002DLL;
    *(v25 + 8) = 0x8000000100107850;
    v26 = *&v213[48];
    v28 = *&v213[16];
    v27 = *&v213[32];
    *(v25 + 16) = *v213;
    *(v25 + 32) = v28;
    *(v25 + 48) = v27;
    *(v25 + 64) = v26;
    *(v25 + 72) = 9;
    swift_willThrow();
    sub_100014978(0);
    goto LABEL_11;
  }

  v36 = sub_100080A7C(v21, v22);
  if (v36 == 5)
  {
    goto LABEL_10;
  }

  if (!v36)
  {
    sub_100014968(0);
    goto LABEL_8;
  }

  v188 = v36;
  v37 = *(*(v18[10] + 56) + 656);

  os_unfair_lock_lock((v37 + 72));
  v38 = *(v37 + 32);
  v217[0] = *(v37 + 16);
  v217[1] = v38;
  v217[2] = *(v37 + 48);
  v218 = *(v37 + 64);
  sub_100013848(v217, v213);
  os_unfair_lock_unlock((v37 + 72));

  v39 = a1;
  v41 = v192;
  v40 = v193;
  *v192 = v39;
  *(v41 + 8) = v40;
  swift_storeEnumTagMultiPayload();

  sub_100056FA0(v41, 0, 0, v213);
  v42 = *v213;
  v209 = *&v213[40];
  v210 = v214;
  v211 = v215;
  v212 = v216;
  v207 = *&v213[8];
  v208 = *&v213[24];
  sub_1000138A4(v217);
  if (v216)
  {
    *&v206[0] = v42;
    *(&v206[1] + 8) = v208;
    *(&v206[2] + 8) = v209;
    *(&v206[3] + 8) = v210;
    *(&v206[4] + 8) = v211;
    *(v206 + 8) = v207;
    sub_10005B2E8();
    swift_willThrowTypedImpl();
    v199 = v206[2];
    v200[0] = v206[3];
    v200[1] = v206[4];
    v201 = *&v206[5];
    v197 = v206[0];
    v198 = v206[1];
    sub_10005B33C(&v197);
    sub_100059150(v41);
    *&v202 = 0;
    *(&v202 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v202 = 0xD000000000000029;
    *(&v202 + 1) = 0x80000001001076F0;
    v43._countAndFlagsBits = v39;
    v43._object = v40;
    String.append(_:)(v43);
    v44._countAndFlagsBits = 46;
    v44._object = 0xE100000000000000;
    String.append(_:)(v44);
    v45 = v202;
    sub_10001449C();
    v24 = swift_allocError();
    *v46 = v45;
    v47 = v205;
    v48 = v204;
    v49 = v203;
    *(v46 + 16) = v202;
    *(v46 + 32) = v49;
    *(v46 + 48) = v48;
    *(v46 + 64) = v47;
    *(v46 + 72) = 10;
    swift_willThrow();
LABEL_49:
    sub_100041BBC(v188);
LABEL_11:
    v33 = v196;
LABEL_12:
    *&v202 = v24;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (swift_dynamicCast())
    {

      v206[2] = v199;
      v206[3] = v200[0];
      *(&v206[3] + 9) = *(v200 + 9);
      v206[0] = v197;
      v206[1] = v198;
      v34 = sub_1000AC3E4();
      (*(v33 + 16))(v33, 0, v34);

      sub_10001465C(v206);
    }

    else
    {

      v35 = _convertErrorToNSError(_:)();
      (*(v33 + 16))(v33, 0, v35);
    }

    return;
  }

  sub_100059150(v41);
  v50 = *(v42 + 24);
  if (*v50 == _TtC10driverkitd15DriverExtension)
  {
    v51 = *(v42 + 24);
  }

  else
  {
    v51 = 0;
  }

  if (*v50 != _TtC10driverkitd15DriverExtension)
  {
    *&v197 = 0;
    *(&v197 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    *&v197 = 0x6F696E7365747845;
    *(&v197 + 1) = 0xEA0000000000206ELL;
    v72._countAndFlagsBits = v39;
    v72._object = v193;
    String.append(_:)(v72);
    v73._countAndFlagsBits = 0xD00000000000001BLL;
    v73._object = 0x8000000100107720;
    String.append(_:)(v73);
    v74 = v197;
    sub_10001449C();
    v24 = swift_allocError();
    *v75 = v74;
    v76 = *&v200[0];
    v78 = v198;
    v77 = v199;
    *(v75 + 16) = v197;
    *(v75 + 32) = v78;
    *(v75 + 48) = v77;
    *(v75 + 64) = v76;
    *(v75 + 72) = 9;
    swift_willThrow();
LABEL_48:
    sub_10000A184(v213, &qword_100135A78, &unk_1000F59C8);
    goto LABEL_49;
  }

  v52 = *(v18[10] + 56);
  v53 = *(v52 + 176);
  v54 = *(v52 + 184);
  v192 = *(v42 + 24);

  sub_100024FF4(v53, v54, 0xD000000000000012, 0x8000000100104610, &v202);

  if (!*(&v203 + 1))
  {
    sub_10000A184(&v202, &qword_1001343C8, &unk_1000F3CA0);
    goto LABEL_47;
  }

  sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_47:
    *&v197 = 0;
    *(&v197 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v79._countAndFlagsBits = 0x6F69736E65747845;
    v79._object = 0xEA0000000000206ELL;
    String.append(_:)(v79);
    v80._countAndFlagsBits = v39;
    v80._object = v193;
    String.append(_:)(v80);
    v81._countAndFlagsBits = 0xD000000000000028;
    v81._object = 0x8000000100107740;
    String.append(_:)(v81);
    v82 = v197;
    sub_10001449C();
    v24 = swift_allocError();
    *v83 = v82;
    v84 = *&v200[0];
    v86 = v198;
    v85 = v199;
    *(v83 + 16) = v197;
    *(v83 + 32) = v86;
    *(v83 + 48) = v85;
    *(v83 + 64) = v84;
    *(v83 + 72) = 9;
    swift_willThrow();

    goto LABEL_48;
  }

  v193 = v51;
  v187 = v18;
  v55 = v197;
  v56 = v197 + 64;
  v57 = 1 << *(v197 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v197 + 64);
  v60 = (v57 + 63) >> 6;

  v61 = 0;
  v191 = _swiftEmptyArrayStorage;
  while (v59)
  {
LABEL_37:
    v63 = __clz(__rbit64(v59));
    v59 &= v59 - 1;
    v42 = *(*(v55 + 56) + ((v61 << 9) | (8 * v63)));
    if (*(v42 + 16))
    {

      v64 = sub_100061588(0xD000000000000010, 0x8000000100107770);
      if (v65)
      {
        sub_10000B430(*(v42 + 56) + 32 * v64, &v197);

        if (swift_dynamicCast())
        {
          v42 = *(&v202 + 1);
          if (*(&v202 + 1))
          {
            v185 = v202;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v191 = sub_100030EA0(0, *(v191 + 2) + 1, 1, v191);
            }

            v67 = *(v191 + 2);
            v66 = *(v191 + 3);
            v186 = v67 + 1;
            v68 = v67;
            if (v67 >= v66 >> 1)
            {
              v191 = sub_100030EA0((v66 > 1), v186, 1, v191);
            }

            v69 = v191;
            v70 = v185;
            *(v191 + 2) = v186;
            v71 = &v69[16 * v68];
            *(v71 + 4) = v70;
            *(v71 + 5) = v42;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
      goto LABEL_206;
    }

    if (v62 >= v60)
    {
      break;
    }

    v59 = *(v56 + 8 * v62);
    ++v61;
    if (v59)
    {
      v61 = v62;
      goto LABEL_37;
    }
  }

  v87 = sub_1000EB930(v191);

  v88 = v190;
  v89 = a4;
  if ((sub_1000814E8(v190, a4, v87) & 1) == 0)
  {
    *&v197 = 0;
    *(&v197 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(71);
    v103._countAndFlagsBits = 0xD000000000000011;
    v103._object = 0x8000000100107790;
    String.append(_:)(v103);
    v104._countAndFlagsBits = v88;
    v104._object = a4;
    String.append(_:)(v104);
    v105._countAndFlagsBits = 0xD000000000000032;
    v105._object = 0x80000001001077B0;
    String.append(_:)(v105);
    v106 = Set.description.getter();
    v108 = v107;

    v109._countAndFlagsBits = v106;
    v109._object = v108;
    String.append(_:)(v109);

    v110 = v197;
    sub_10001449C();
    v24 = swift_allocError();
    *v111 = v110;
    v112 = *&v200[0];
    v114 = v198;
    v113 = v199;
    *(v111 + 16) = v197;
    *(v111 + 32) = v114;
    *(v111 + 48) = v113;
    *(v111 + 64) = v112;
    *(v111 + 72) = 9;
    swift_willThrow();

    sub_10000A184(v213, &qword_100135A78, &unk_1000F59C8);
    sub_100041BBC(v188);
    goto LABEL_11;
  }

  v90 = v194;
  if (!v194)
  {
    *&v197 = 0;
    swift_stdlib_random();
    v98 = v197;
    goto LABEL_74;
  }

  v61 = HIBYTE(v194) & 0xF;
  v91 = v189;
  v42 = v189 & 0xFFFFFFFFFFFFLL;
  if ((v194 & 0x2000000000000000) != 0)
  {
    v92 = HIBYTE(v194) & 0xF;
  }

  else
  {
    v92 = v189 & 0xFFFFFFFFFFFFLL;
  }

  v93 = v193;
  if (!v92)
  {
    goto LABEL_204;
  }

  if ((v194 & 0x1000000000000000) != 0)
  {
    v157 = v194;
    v158 = v189;

    v98 = sub_100077D4C(v158, v157, 10);
    LOBYTE(v158) = v159;

    if (v158)
    {
      v160 = v194;

      v161 = v189;
      v98 = sub_100077D4C(v189, v160, 16);
      v163 = v162;

      v91 = v161;
      v90 = v160;
      v88 = v190;
      v93 = v193;
      if (v163)
      {
        goto LABEL_204;
      }

      v89 = a4;
      goto LABEL_210;
    }

    v89 = a4;
    v88 = v190;
LABEL_74:
    v93 = v193;
    goto LABEL_210;
  }

  if ((v194 & 0x2000000000000000) != 0)
  {
    *&v197 = v189;
    *(&v197 + 1) = v194 & 0xFFFFFFFFFFFFFFLL;
    if (v189 == 43)
    {
      if (!v61)
      {
LABEL_220:
        __break(1u);
        goto LABEL_221;
      }

      v121 = v61 - 1;
      if (v61 == 1)
      {
        goto LABEL_206;
      }

      v98 = 0;
      v122 = &v197 + 1;
      v89 = a4;
      v88 = v190;
      v93 = v193;
      while (1)
      {
        v123 = *v122 - 48;
        if (v123 > 9)
        {
          break;
        }

        if (!is_mul_ok(v98, 0xAuLL))
        {
          goto LABEL_206;
        }

        v101 = __CFADD__(10 * v98, v123);
        v98 = 10 * v98 + v123;
        if (v101)
        {
          goto LABEL_206;
        }

        v102 = 0;
        ++v122;
        --v121;
        v89 = a4;
        v88 = v190;
        v93 = v193;
        if (!v121)
        {
          goto LABEL_121;
        }
      }
    }

    else if (v189 == 45)
    {
      if (!v61)
      {
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

      v115 = v61 - 1;
      if (v61 == 1)
      {
        goto LABEL_206;
      }

      v98 = 0;
      v116 = &v197 + 1;
      v89 = a4;
      v88 = v190;
      v93 = v193;
      while (1)
      {
        v117 = *v116 - 48;
        if (v117 > 9)
        {
          break;
        }

        if (!is_mul_ok(v98, 0xAuLL))
        {
          goto LABEL_206;
        }

        v101 = 10 * v98 >= v117;
        v98 = 10 * v98 - v117;
        if (!v101)
        {
          goto LABEL_206;
        }

        v102 = 0;
        ++v116;
        --v115;
        v89 = a4;
        v88 = v190;
        v93 = v193;
        if (!v115)
        {
          goto LABEL_121;
        }
      }
    }

    else if (v61)
    {
      v98 = 0;
      v125 = &v197;
      v126 = HIBYTE(v194) & 0xF;
      while (1)
      {
        v127 = *v125 - 48;
        if (v127 > 9)
        {
          break;
        }

        if (!is_mul_ok(v98, 0xAuLL))
        {
          goto LABEL_206;
        }

        v101 = __CFADD__(10 * v98, v127);
        v98 = 10 * v98 + v127;
        if (v101)
        {
          goto LABEL_206;
        }

        v102 = 0;
        ++v125;
        --v126;
        v89 = a4;
        v88 = v190;
        v93 = v193;
        if (!v126)
        {
          goto LABEL_121;
        }
      }
    }

LABEL_120:
    v98 = 0;
    v102 = 1;
    goto LABEL_121;
  }

  if ((v189 & 0x1000000000000000) != 0)
  {
    v94 = ((v194 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v95 = v189 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v94 = _StringObject.sharedUTF8.getter();
  }

  v96 = *v94;
  if (v96 == 43)
  {
    if (v95 < 1)
    {
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    v118 = v95 - 1;
    if (v95 == 1)
    {
      goto LABEL_206;
    }

    if (!v94)
    {
      goto LABEL_111;
    }

    v98 = 0;
    v119 = v94 + 1;
    v89 = a4;
    v88 = v190;
    v93 = v193;
    while (1)
    {
      v120 = *v119 - 48;
      if (v120 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v98, 0xAuLL))
      {
        goto LABEL_206;
      }

      v101 = __CFADD__(10 * v98, v120);
      v98 = 10 * v98 + v120;
      if (v101)
      {
        goto LABEL_206;
      }

      v102 = 0;
      ++v119;
      --v118;
      v89 = a4;
      v88 = v190;
      v93 = v193;
      if (!v118)
      {
        goto LABEL_121;
      }
    }
  }

  if (v96 != 45)
  {
    if (!v95)
    {
      goto LABEL_206;
    }

    if (!v94)
    {
      goto LABEL_111;
    }

    v98 = 0;
    v89 = a4;
    v88 = v190;
    v93 = v193;
    while (1)
    {
      v124 = *v94 - 48;
      if (v124 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v98, 0xAuLL))
      {
        goto LABEL_206;
      }

      v101 = __CFADD__(10 * v98, v124);
      v98 = 10 * v98 + v124;
      if (v101)
      {
        goto LABEL_206;
      }

      v102 = 0;
      ++v94;
      --v95;
      v89 = a4;
      v88 = v190;
      v93 = v193;
      if (!v95)
      {
        goto LABEL_121;
      }
    }
  }

  if (v95 < 1)
  {
    __break(1u);
    goto LABEL_218;
  }

  v97 = v95 - 1;
  if (v95 == 1)
  {
LABEL_206:
    v98 = 0;
    v102 = 1;
    goto LABEL_112;
  }

  if (v94)
  {
    v98 = 0;
    v99 = v94 + 1;
    v89 = a4;
    v88 = v190;
    v93 = v193;
    while (1)
    {
      v100 = *v99 - 48;
      if (v100 > 9)
      {
        goto LABEL_120;
      }

      if (!is_mul_ok(v98, 0xAuLL))
      {
        goto LABEL_206;
      }

      v101 = 10 * v98 >= v100;
      v98 = 10 * v98 - v100;
      if (!v101)
      {
        goto LABEL_206;
      }

      v102 = 0;
      ++v99;
      --v97;
      v89 = a4;
      v88 = v190;
      v93 = v193;
      if (!v97)
      {
        goto LABEL_121;
      }
    }
  }

LABEL_111:
  v98 = 0;
  v102 = 0;
LABEL_112:
  v89 = a4;
  v88 = v190;
  v93 = v193;
LABEL_121:
  LOBYTE(v202) = v102;
  if ((v102 & 1) == 0)
  {
    goto LABEL_210;
  }

  if ((v194 & 0x2000000000000000) != 0)
  {
    *&v197 = v189;
    *(&v197 + 1) = v194 & 0xFFFFFFFFFFFFFFLL;
    if (v189 == 43)
    {
      if (!v61)
      {
LABEL_224:
        __break(1u);
        return;
      }

      v130 = v61 - 1;
      if (v61 != 1)
      {
        v98 = 0;
        v140 = &v197 + 1;
        while (1)
        {
          v141 = *v140;
          v142 = v141 - 48;
          if ((v141 - 48) >= 0xA)
          {
            if ((v141 - 65) < 6)
            {
              v142 = v141 - 55;
            }

            else
            {
              if ((v141 - 97) > 5)
              {
                break;
              }

              v142 = v141 - 87;
            }
          }

          if (v98 >> 60)
          {
            break;
          }

          v98 = 16 * v98 + v142;
          ++v140;
          if (!--v130)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v189 == 45)
    {
      if (!v61)
      {
LABEL_222:
        __break(1u);
        goto LABEL_223;
      }

      v130 = v61 - 1;
      if (v61 != 1)
      {
        v98 = 0;
        v134 = &v197 + 1;
        while (1)
        {
          v135 = *v134;
          v136 = v135 - 48;
          if ((v135 - 48) >= 0xA)
          {
            if ((v135 - 65) < 6)
            {
              v136 = v135 - 55;
            }

            else
            {
              if ((v135 - 97) > 5)
              {
                break;
              }

              v136 = v135 - 87;
            }
          }

          if (v98 >> 60)
          {
            break;
          }

          v101 = 16 * v98 >= v136;
          v98 = 16 * v98 - v136;
          if (!v101)
          {
            break;
          }

          ++v134;
          if (!--v130)
          {
            goto LABEL_203;
          }
        }
      }
    }

    else if (v61)
    {
      v98 = 0;
      v145 = &v197;
      while (1)
      {
        v146 = *v145;
        v147 = v146 - 48;
        if ((v146 - 48) >= 0xA)
        {
          if ((v146 - 65) < 6)
          {
            v147 = v146 - 55;
          }

          else
          {
            if ((v146 - 97) > 5)
            {
              break;
            }

            v147 = v146 - 87;
          }
        }

        if (v98 >> 60)
        {
          break;
        }

        v98 = 16 * v98 + v147;
        ++v145;
        if (!--v61)
        {
          goto LABEL_191;
        }
      }
    }

LABEL_202:
    v98 = 0;
    LOBYTE(v130) = 1;
    goto LABEL_203;
  }

  if ((v189 & 0x1000000000000000) != 0)
  {
    v128 = ((v194 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v128 = _StringObject.sharedUTF8.getter();
    v42 = v184;
  }

  v129 = *v128;
  if (v129 == 43)
  {
    if (v42 < 1)
    {
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v130 = v42 - 1;
    if (v42 == 1)
    {
      goto LABEL_202;
    }

    if (!v128)
    {
      goto LABEL_190;
    }

    v98 = 0;
    v137 = v128 + 1;
    while (1)
    {
      v138 = *v137;
      v139 = v138 - 48;
      if ((v138 - 48) >= 0xA)
      {
        if ((v138 - 65) < 6)
        {
          v139 = v138 - 55;
        }

        else
        {
          if ((v138 - 97) > 5)
          {
            goto LABEL_202;
          }

          v139 = v138 - 87;
        }
      }

      if (v98 >> 60)
      {
        goto LABEL_202;
      }

      v98 = 16 * v98 + v139;
      ++v137;
      if (!--v130)
      {
        goto LABEL_203;
      }
    }
  }

  if (v129 != 45)
  {
    if (!v42)
    {
      goto LABEL_202;
    }

    if (!v128)
    {
      goto LABEL_190;
    }

    v98 = 0;
    while (1)
    {
      v143 = *v128;
      v144 = v143 - 48;
      if ((v143 - 48) >= 0xA)
      {
        if ((v143 - 65) < 6)
        {
          v144 = v143 - 55;
        }

        else
        {
          if ((v143 - 97) > 5)
          {
            goto LABEL_202;
          }

          v144 = v143 - 87;
        }
      }

      if (v98 >> 60)
      {
        goto LABEL_202;
      }

      v98 = 16 * v98 + v144;
      ++v128;
      if (!--v42)
      {
        goto LABEL_191;
      }
    }
  }

  if (v42 < 1)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v130 = v42 - 1;
  if (v42 == 1)
  {
    goto LABEL_202;
  }

  if (v128)
  {
    v98 = 0;
    v131 = v128 + 1;
    while (1)
    {
      v132 = *v131;
      v133 = v132 - 48;
      if ((v132 - 48) >= 0xA)
      {
        if ((v132 - 65) < 6)
        {
          v133 = v132 - 55;
        }

        else
        {
          if ((v132 - 97) > 5)
          {
            goto LABEL_202;
          }

          v133 = v132 - 87;
        }
      }

      if (v98 >> 60)
      {
        goto LABEL_202;
      }

      v101 = 16 * v98 >= v133;
      v98 = 16 * v98 - v133;
      if (!v101)
      {
        goto LABEL_202;
      }

      ++v131;
      if (!--v130)
      {
        goto LABEL_203;
      }
    }
  }

LABEL_190:
  v98 = 0;
LABEL_191:
  LOBYTE(v130) = 0;
LABEL_203:
  LOBYTE(v202) = v130;
  v89 = a4;
  v91 = v189;
  v88 = v190;
  v93 = v193;
  v90 = v194;
  if (v130)
  {
LABEL_204:
    *&v197 = 0;
    *(&v197 + 1) = 0xE000000000000000;
    v148 = v90;
    v149 = v91;
    _StringGuts.grow(_:)(32);

    *&v197 = 543646036;
    *(&v197 + 1) = 0xE400000000000000;
    v150._countAndFlagsBits = v149;
    v150._object = v148;
    String.append(_:)(v150);
    v151._countAndFlagsBits = 0xD00000000000001ALL;
    v151._object = 0x8000000100107830;
    String.append(_:)(v151);
    v152 = v197;
    sub_10001449C();
    v24 = swift_allocError();
    *v153 = v152;
    v154 = *&v200[0];
    v156 = v198;
    v155 = v199;
    *(v153 + 16) = v197;
    *(v153 + 32) = v156;
    *(v153 + 48) = v155;
    *(v153 + 64) = v154;
    *(v153 + 72) = 9;
    swift_willThrow();
    sub_100041BBC(v188);

    sub_10000A184(v213, &qword_100135A78, &unk_1000F59C8);
LABEL_212:
    v33 = v196;
    goto LABEL_12;
  }

LABEL_210:
  *&v199 = 0;
  v197 = 0u;
  v198 = 0u;
  v164 = v195;
  v165 = sub_100075E50(v93, v88, v89, v98, 0, 0, &v197);
  if (v164)
  {
    v24 = v164;
    sub_10000A184(&v197, &unk_100137390, &unk_1000F4E70);
    sub_10000A184(v213, &qword_100135A78, &unk_1000F59C8);

    sub_100041BBC(v188);
    goto LABEL_212;
  }

  v166 = v165;
  sub_10000A184(&v197, &unk_100137390, &unk_1000F4E70);
  *&v197 = 0;
  *(&v197 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v167._countAndFlagsBits = 0x646568636E75614CLL;
  v167._object = 0xEE00207478656420;
  String.append(_:)(v167);

  v168 = sub_1000D7374();
  v170 = v169;

  v171._countAndFlagsBits = v168;
  v171._object = v170;
  String.append(_:)(v171);

  v172._countAndFlagsBits = 0xD000000000000017;
  v172._object = 0x80000001001077F0;
  String.append(_:)(v172);
  v173._countAndFlagsBits = v88;
  v173._object = v89;
  String.append(_:)(v173);
  v174._countAndFlagsBits = 0x20676174202CLL;
  v174._object = 0xE600000000000000;
  String.append(_:)(v174);
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v175 = swift_allocObject();
  v195 = xmmword_1000F3160;
  *(v175 + 16) = xmmword_1000F3160;
  *(v175 + 56) = &type metadata for UInt64;
  *(v175 + 64) = &protocol witness table for UInt64;
  *(v175 + 32) = v98;
  v176._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v176);

  v177._object = 0x8000000100107810;
  v177._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v177);
  v178 = swift_allocObject();
  *(v178 + 16) = v195;
  *(v178 + 56) = &type metadata for UInt32;
  *(v178 + 64) = &protocol witness table for UInt32;
  *(v178 + 32) = 0;
  v179._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v179);

  v180._countAndFlagsBits = 0x20646970203ALL;
  v180._object = 0xE600000000000000;
  String.append(_:)(v180);
  LODWORD(v202) = v166;
  v181._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v181);

  v182._countAndFlagsBits = 10;
  v182._object = 0xE100000000000000;
  String.append(_:)(v182);
  v183 = String._bridgeToObjectiveC()();
  (*(v196 + 16))(v196, v183, 0);

  sub_100041BBC(v188);

  sub_10000A184(v213, &qword_100135A78, &unk_1000F59C8);
}

uint64_t sub_10007A3EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_100137390, &unk_1000F4E70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007A45C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A4A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10007A508()
{
  result = qword_100136DD0;
  if (!qword_100136DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136DD0);
  }

  return result;
}

uint64_t sub_10007A578()
{
  v1 = [*v0 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_10007A5E0()
{
  v1 = [*v0 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10007A64C()
{
  v1 = [*v0 driverExtensionPaths];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10007A6B4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_10007A718()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    if (qword_100133B38 != -1)
    {
      swift_once();
    }

    LOBYTE(v1) = byte_100138870;
    *(v0 + 16) = byte_100138870;
  }

  return v1 & 1;
}

uint64_t sub_10007A7AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (URL.isFileURL.getter())
  {
    URL.path.getter();

    v4._object = 0x8000000100107C50;
    v4._countAndFlagsBits = 0xD000000000000019;
    v5 = String.hasPrefix(_:)(v4);

    if (v5)
    {
      v6 = String.count.getter();
      sub_1000C8AF4(v6);
    }

    v7._countAndFlagsBits = 47;
    v7._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v7))
    {
      URL.hasDirectoryPath.getter();
      URL.init(fileURLWithPath:isDirectory:)();
    }

    else
    {

      v11 = type metadata accessor for URL();
      return (*(*(v11 - 8) + 16))(a1, v2, v11);
    }
  }

  else
  {
    v9 = type metadata accessor for URL();
    v10 = *(*(v9 - 8) + 16);

    return v10(a1, v1, v9);
  }
}

void sub_10007A940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~*(a1 + 16) & 0x11) != 0)
  {
    v2 = a1;
    v3 = v1 & 0x200400;
    if ((v1 & 0x200400) != 0)
    {
      _StringGuts.grow(_:)(25);
      v4 = sub_1000D77B8();
      v6 = v5;

      v53._countAndFlagsBits = v4;
      v53._object = v6;
      v7._object = 0x8000000100107C30;
      v7._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v7);
      v8._countAndFlagsBits = sub_1000255C0(v3);
      String.append(_:)(v8);

      sub_10001449C();
      swift_allocError();
      *v9 = v53;
      v10 = v56;
      v11 = v55;
      v12 = v54;
      *(v9 + 16) = v53;
      *(v9 + 32) = v12;
      *(v9 + 48) = v11;
      *(v9 + 64) = v10;
      v13 = 54;
LABEL_22:
      *(v9 + 72) = v13;
      swift_willThrow();
      return;
    }

    v14 = OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors;
    swift_beginAccess();
    v15 = *(v2 + v14);
    v16 = 0xE000000000000000;
    v57 = 0;
    v58 = 0xE000000000000000;
    v17 = *(v15 + 16);

    if (!v17)
    {
      v35 = 0;
LABEL_19:

      if (*(v2 + 16))
      {
        v53._countAndFlagsBits = sub_1000D77B8();
        v53._object = v43;
        v44._countAndFlagsBits = 2618;
        v44._object = 0xE200000000000000;
        String.append(_:)(v44);
        v45._countAndFlagsBits = v35;
        v45._object = v16;
        String.append(_:)(v45);

        v46 = v53;
        sub_10001449C();
        swift_allocError();
        *v9 = v46;
        v47 = v56;
        v48 = v55;
        v49 = v54;
        *(v9 + 16) = v53;
        *(v9 + 32) = v49;
        *(v9 + 48) = v48;
        *(v9 + 64) = v47;
        v13 = 31;
      }

      else
      {
        v53._countAndFlagsBits = sub_1000D77B8();
        v53._object = v36;
        v37._countAndFlagsBits = 2618;
        v37._object = 0xE200000000000000;
        String.append(_:)(v37);
        v38._countAndFlagsBits = v35;
        v38._object = v16;
        String.append(_:)(v38);

        v39 = v53;
        sub_10001449C();
        swift_allocError();
        *v9 = v39;
        v40 = v56;
        v41 = v55;
        v42 = v54;
        *(v9 + 16) = v53;
        *(v9 + 32) = v42;
        *(v9 + 48) = v41;
        *(v9 + 64) = v40;
        v13 = 17;
      }

      goto LABEL_22;
    }

    v50 = v2;
    v51 = v17;
    v18 = 0;
    v19 = v15 + 32;
    v52 = v15;
    v63 = v15 + 32;
    while (v18 < *(v15 + 16))
    {
      v21 = (v19 + 80 * v18);
      v61[0] = *v21;
      v22 = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      *&v62[9] = *(v21 + 57);
      v61[2] = v23;
      *v62 = v24;
      v61[1] = v22;
      if (v62[24])
      {
        sub_1000419A4(v61, &v53);
        v20._countAndFlagsBits = sub_1000AA704();
        v53._countAndFlagsBits = 10;
        v53._object = 0xE100000000000000;
        String.append(_:)(v20);

        String.append(_:)(v53);
      }

      else
      {
        v25 = *&v61[0];
        v26 = *(*&v61[0] + 16);

        if (v26)
        {
          v27 = 0;
          v28 = (v25 + 32);
          while (v27 < *(v25 + 16))
          {
            v59[0] = *v28;
            v29 = v28[1];
            v30 = v28[2];
            v31 = v28[3];
            *(v60 + 9) = *(v28 + 57);
            v59[2] = v30;
            v60[0] = v31;
            v59[1] = v29;
            ++v27;
            sub_1000419A4(v59, &v53);
            v32._countAndFlagsBits = sub_1000AA704();
            v53._countAndFlagsBits = 10;
            v53._object = 0xE100000000000000;
            String.append(_:)(v32);

            String.append(_:)(v53);

            sub_10001465C(v59);
            v28 += 5;
            if (v26 == v27)
            {
              v33 = 0;
              v17 = v51;
              v15 = v52;
              goto LABEL_16;
            }
          }

          __break(1u);
          break;
        }

        v33 = 0;
LABEL_16:
        v34 = 0xE000000000000000;
        String.append(_:)(*&v33);
        v19 = v63;
      }

      ++v18;
      sub_10001465C(v61);

      if (v18 == v17)
      {
        v35 = v57;
        v16 = v58;
        v2 = v50;
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

char *sub_10007AD60(char *a1, const char *a2, int a3)
{
  v28 = a2;
  v27 = a3;
  v5 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v7 = __chkstk_darwin(v5 - 8, v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v10);
  v12 = &v26[-v11];
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = v3;
  if ((*(v3 + 648) & 4) == 0)
  {
    sub_100003C4C((v31 + 16), *(v31 + 40));
    sub_1000E05F8(v30);
    v18 = *(a1 + 3);
    v19 = *(a1 + 4);
    sub_100003C4C(a1, v18);
    (*(v19 + 64))(v18, v19);
    URL.path.getter();

    (*(v14 + 8))(v17, v13);
    sub_100003C90(v30);
  }

  v20 = *(a1 + 3);
  v21 = *(a1 + 4);
  sub_100003C4C(a1, v20);
  (*(v21 + 64))(v20, v21);
  sub_10007A7AC(v12);
  (*(v14 + 8))(v17, v13);
  v22 = *(v14 + 56);
  v22(v12, 0, 1, v13);
  v22(v9, 1, 1, v13);
  v23 = v29;
  v24 = sub_100028620(a1, 0, v12, v9, v28, v27 & 1);
  sub_10007B024(v9);
  sub_10007B024(v12);
  if (!v23)
  {
    sub_10007A940(v24);
  }

  return v24;
}

uint64_t sub_10007B024(uint64_t a1)
{
  v2 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B08C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v12 = *(a3 + 16);
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + v7 + 32);
      v14 = v11;
      result = v6(&v14);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1000636AC(0, v8[2] + 1, 1);
          v8 = v15;
        }

        v10 = v8[2];
        v9 = v8[3];
        if (v10 >= v9 >> 1)
        {
          result = sub_1000636AC((v9 > 1), v10 + 1, 1);
          v8 = v15;
        }

        v8[2] = v10 + 1;
        *(v8 + v10 + 32) = v11;
        v5 = v12;
        v6 = v13;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_15:

    return v8;
  }

  return result;
}

void *sub_10007B1E4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v41 = type metadata accessor for URL();
  v8 = __chkstk_darwin(v41, v7);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8, v10);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v3)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000635C4(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          sub_1000635C4((v27 > 1), v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

void *sub_10007B4B4(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
LABEL_18:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v5 = v14;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v3 = &v18;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = _swiftEmptyArrayStorage;
LABEL_20:

  return v3;
}

BOOL sub_10007B670(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v66 = v3 & 0x201C00;
  if ((v3 & 0x201C00) != 0)
  {
    *(v2 + 16) = v3 & 0xFFFFFFFFFFDFE3FFLL;
  }

  v4 = 0;
  v65 = v1;
  v5 = v1 + 83;
  v70 = 0x8000000100104280;
  v71 = xmmword_1000F3C80;
  v6 = &type metadata for String;
  v68 = "OSKextExcludeList";
  v69 = "com.apple.message.bundlePath";
  v67 = "OSKextSigExceptionHashList";
  do
  {
    v7 = *(&off_1001262E8 + v4 + 32);
    swift_beginAccess();
    v8 = *v5;
    if (!*(*v5 + 16) || (v9 = sub_100061E08(v7), (v10 & 1) == 0))
    {
      swift_endAccess();
      goto LABEL_5;
    }

    v11 = *(v8 + 56) + 24 * v9;
    v12 = *(v11 + 8);
    v13 = *v11;
    swift_endAccess();

    v14 = sub_100021C70(v2, v13, v12);

    if ((v14 & 1) == 0)
    {
      goto LABEL_5;
    }

    v72 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v15 = swift_allocObject();
    *(v15 + 16) = v71;
    v16 = *(v2 + 24);
    v17 = *v16;
    v18 = 4144959;
    if (*v16 == _TtC10driverkitd15DriverExtension)
    {
      v18 = 1954047300;
    }

    v19 = v17 == _TtC10driverkitd15DriverExtension || v17 == _TtC10driverkitd15KernelExtension;
    v20 = 0xE300000000000000;
    if (v19)
    {
      v20 = 0xE400000000000000;
    }

    if (v17 == _TtC10driverkitd15KernelExtension)
    {
      v18 = 1954047307;
    }

    v76 = v18;
    v77 = v20;

    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = *(v16 + 16);
    if (qword_100133A50 == -1)
    {
      if (!*(v22 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      swift_once();
      if (!*(v22 + 16))
      {
        goto LABEL_24;
      }
    }

    v23 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v24)
    {
      sub_10000B430(*(v22 + 56) + 32 * v23, v75);
      if (swift_dynamicCast())
      {
        v25 = v6;
        v26 = v73;
        v27 = v74;
        goto LABEL_25;
      }
    }

LABEL_24:
    v25 = v6;
    v26 = 0xD000000000000014;
    v27 = v70;
LABEL_25:
    v28 = v27;
    String.append(_:)(*&v26);

    v29._countAndFlagsBits = 30240;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    v30 = *(v16 + 16);
    if (qword_100133A70 == -1)
    {
      if (!*(v30 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      swift_once();
      if (!*(v30 + 16))
      {
        goto LABEL_31;
      }
    }

    v31 = sub_100061588(qword_10014E900, *algn_10014E908);
    if ((v32 & 1) == 0 || (sub_10000B430(*(v30 + 56) + 32 * v31, v75), !swift_dynamicCast()))
    {
LABEL_31:
      v34 = 0xE500000000000000;
      v33 = 0x293F3F3F28;
      goto LABEL_32;
    }

    v33 = v73;
    v34 = v74;
LABEL_32:
    v35 = v34;
    String.append(_:)(*&v33);

    v36._countAndFlagsBits = 544106784;
    v36._object = 0xE400000000000000;
    String.append(_:)(v36);
    v37._countAndFlagsBits = sub_1000DAD64();
    String.append(_:)(v37);

    v38 = v76;
    v39 = v77;
    v6 = v25;
    *(v15 + 56) = v25;
    v40 = sub_100003D24();
    *(v15 + 64) = v40;
    *(v15 + 32) = v38;
    *(v15 + 40) = v39;
    if (v7)
    {
      if (v7 == 1)
      {
        v41 = 0xD00000000000001ALL;
        v42 = v68;
      }

      else
      {
        v41 = 0xD00000000000001DLL;
        v42 = v67;
      }
    }

    else
    {
      v41 = 0xD000000000000011;
      v42 = v69;
    }

    *(v15 + 96) = v25;
    *(v15 + 104) = v40;
    *(v15 + 72) = v41;
    *(v15 + 80) = v42 | 0x8000000000000000;
    sub_10001491C();
    v43 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v72, &_mh_execute_header, v43, "%{public}s matches %{public}s.", 30, 2, v15);

    v44 = *(v2 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        if ((v44 & 0x800) != 0)
        {
          goto LABEL_5;
        }

        v45 = v44 | 0x800;
      }

      else
      {
        if ((v44 & 0x1000) != 0)
        {
          goto LABEL_5;
        }

        v45 = v44 | 0x1000;
      }
    }

    else
    {
      if ((v44 & 0x400) != 0)
      {
        goto LABEL_5;
      }

      v45 = v44 | 0x400;
    }

    *(v2 + 16) = v45;
LABEL_5:
    ++v4;
  }

  while (v4 != 3);
  v46 = v65[63];
  if (v46)
  {
    if (*(v46 + 16))
    {
      v47 = sub_100061588(v65[20], v65[21]);
      if (v48)
      {
        v49 = *(*(v46 + 56) + 8 * v47);

        v50 = sub_1000D7374();
        v52 = v51;

        v75[0] = v50;
        v75[1] = v52;
        __chkstk_darwin(v53, v54);
        v64[2] = v75;
        v55 = sub_1000C7758(sub_100041C40, v64, v49);

        if (v55)
        {
          sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1000F3160;

          v57 = sub_1000D77B8();
          v59 = v58;

          *(v56 + 56) = v6;
          *(v56 + 64) = sub_100003D24();
          *(v56 + 32) = v57;
          *(v56 + 40) = v59;
          sub_10001491C();
          v60 = static OS_os_log.default.getter();
          v61 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("%{public}s found in built-in deny list", 38, 2, &_mh_execute_header, v60, v61, v56);

          v62 = *(v2 + 16);
          if ((v62 & 0x200000) == 0)
          {
            *(v2 + 16) = v62 | 0x200000;
          }
        }
      }
    }
  }

  return (*(v2 + 16) & 0x201C00) != v66;
}

uint64_t sub_10007BCC0(uint64_t *a1)
{
  v2 = *a1;
  if ((*(v1 + 648) & 2) != 0)
  {
    v9 = *(v2 + 16);
    if ((v9 & 1) == 0)
    {
      *(v2 + 16) = v9 | 1;
    }

    return 1;
  }

  v4 = **(v2 + 24);
  if (v4 == _TtC10driverkitd15KernelExtension)
  {
    v5 = qword_100133B50;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = &qword_10014EAC8;
    v7 = 168;
    v8 = 160;
  }

  else
  {
    if (v4 != _TtC10driverkitd15DriverExtension)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v10 = qword_100133B58;

    if (v10 != -1)
    {
      swift_once();
    }

    v6 = &qword_10014EAD0;
    v7 = 184;
    v8 = 176;
  }

  v11 = *v6;

  v12 = *(v1 + v8);
  v13 = *(v1 + v7);

  sub_100003CDC(&qword_100136E90, &qword_1000F9258);
  inited = swift_initStackObject();
  v52 = xmmword_1000F3160;
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = 1751347809;
  v15 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v16 = sub_10003EB54(inited);
  swift_setDeallocating();
  sub_10000A184(v15, &qword_100134FE8, &qword_1000F4E98);
  *(&v54 + 1) = type metadata accessor for RealizedInfo(0);
  *&v55 = &off_100127850;
  *&v53 = v2;
  v51 = v2;

  sub_10007CDA8(v16);
  v18 = v17;

  __chkstk_darwin(v19, v20);
  v47[2] = &v53;
  v47[3] = v18;
  v21 = sub_10007B4B4(sub_1000800F0, v47, v11);

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
LABEL_27:

    sub_100003C90(&v53);
    sub_10007D000(a1);
    v45 = *(v51 + 16);
    if ((v45 & 1) == 0)
    {
      *(v51 + 16) = v45 | 1;
    }

    sub_10007CB58(a1);
    return 1;
  }

LABEL_14:
  sub_100003C90(&v53);

  v23 = sub_1000D7374();
  v25 = v24;

  *&v53 = _swiftEmptyArrayStorage;
  v26 = &v53;
  sub_1000635A4(0, v22 & ~(v22 >> 63), 0);
  if (v22 < 0)
  {
    __break(1u);
  }

  else
  {
    v48 = v25;
    v49 = v23;
    v50 = a1;
    v27 = 0;
    v23 = v53;
    v28 = v21;
    *&v52 = v21 & 0xC000000000000001;
    v29 = v21;
    v30 = v22;
    do
    {
      if (v52)
      {
        v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v31 = *(v28 + 8 * v27 + 32);
      }

      v32 = *(v31 + 16);
      v33 = *(v31 + 24);

      *&v53 = v23;
      v35 = *(v23 + 16);
      v34 = *(v23 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1000635A4((v34 > 1), v35 + 1, 1);
        v23 = v53;
      }

      ++v27;
      *(v23 + 16) = v35 + 1;
      v36 = v23 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v28 = v29;
    }

    while (v30 != v27);

    v21 = OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors;
    v2 = v51;
    swift_beginAccess();
    v26 = *(v2 + v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v21) = v26;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }
  }

  v26 = sub_1000319F4(0, *(v26 + 2) + 1, 1, v26);
  *(v2 + v21) = v26;
LABEL_23:
  v38 = v50;
  v40 = *(v26 + 2);
  v39 = *(v26 + 3);
  if (v40 >= v39 >> 1)
  {
    v26 = sub_1000319F4((v39 > 1), v40 + 1, 1, v26);
  }

  *(v26 + 2) = v40 + 1;
  v41 = &v26[80 * v40];
  v42 = v48;
  *(v41 + 4) = v49;
  *(v41 + 5) = v42;
  *(v41 + 6) = v23;
  v43 = v53;
  v44 = v54;
  *(v41 + 88) = v55;
  *(v41 + 72) = v44;
  *(v41 + 56) = v43;
  v41[104] = 18;
  *(v2 + v21) = v26;
  swift_endAccess();
  sub_10007CB58(v38);
  return 0;
}

uint64_t sub_10007C5D8(uint64_t *a1)
{
  v3 = 0xD000000000000012;
  v4 = swift_allocObject();
  v5 = v4;
  v6 = *(v1 + 648);
  v7 = *a1;
  v8 = *(*a1 + 16);
  v9 = v8 & 0x200400;
  if ((v6 & 1) == 0)
  {
    if (v9)
    {
      v10 = "Apple prefix trusted";
      v3 = 0xD000000000000018;
LABEL_4:
      v11 = v10 | 0x8000000000000000;
      *(v5 + 16) = v3;
      *(v5 + 24) = v10 | 0x8000000000000000;
      goto LABEL_5;
    }

    if ((v6 & 0x100) != 0)
    {

      sub_1000D7374();
      v23._countAndFlagsBits = 0x6C7070612E6D6F63;
      v23._object = 0xE900000000000065;
      v24 = String.hasPrefix(_:)(v23);

      if (v24)
      {
        v25 = *(v7 + 16);
        if ((v25 & 0x2000) == 0)
        {
          *(v7 + 16) = v25 | 0x2000;
        }

        v26 = 0x8000000100107D50;
        v27 = 0xD000000000000014;
LABEL_28:
        *(v5 + 16) = v27;
        *(v5 + 24) = v26;
        goto LABEL_47;
      }
    }

    sub_1000138F8(*(v7 + 24) + 24, &v42);
    v29 = BYTE8(v44);
    sub_100013954(&v42);
    if (v29 == 1)
    {

      sub_1000D7374();
      v30._countAndFlagsBits = 0x6C7070612E6D6F63;
      v30._object = 0xE900000000000065;
      v31 = String.hasPrefix(_:)(v30);

      if (!v31)
      {
        v10 = "Platform binary trusted";
        v3 = 0xD00000000000001ELL;
        goto LABEL_4;
      }

      v32 = *(v7 + 16);
      if ((v32 & 0x2000) == 0)
      {
        *(v7 + 16) = v32 | 0x2000;
      }

      v26 = 0x8000000100107D20;
      v27 = 0xD000000000000020;
      goto LABEL_28;
    }

    sub_100014894(v7 + 32, &v46, &unk_100137390, &unk_1000F4E70);
    if (!v47)
    {
      sub_10000A184(&v46, &unk_100137390, &unk_1000F4E70);
      v10 = " in built-in deny list";
      goto LABEL_4;
    }

    sub_100009F34(&v46, &v42);
    v33 = sub_100003C4C(&v42, *(&v43 + 1));
    v34 = *(*v33 + 32);
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = *(v7 + 16) & 0x1800;
        if (v35)
        {
          v36 = 0xD000000000000016;
        }

        else
        {
          v36 = 0xD000000000000012;
        }

        if ((*(v7 + 16) & 0x1800) != 0)
        {
          v37 = "Bad code signature";
        }

        else
        {
          v37 = " in built-in deny list";
        }

        v11 = v37 | 0x8000000000000000;
        *(v5 + 16) = v36;
        *(v5 + 24) = v37 | 0x8000000000000000;
        sub_100003C90(&v42);
        if (!v35)
        {
LABEL_5:
          v12 = OBJC_IVAR____TtC10driverkitd12RealizedInfo_validationErrors;
          swift_beginAccess();
          v13 = *(v7 + v12);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + v12) = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v13 = sub_1000319F4(0, *(v13 + 2) + 1, 1, v13);
            *(v7 + v12) = v13;
          }

          v16 = *(v13 + 2);
          v15 = *(v13 + 3);
          if (v16 >= v15 >> 1)
          {
            v13 = sub_1000319F4((v15 > 1), v16 + 1, 1, v13);
          }

          *(v13 + 2) = v16 + 1;
          v17 = &v13[80 * v16];
          *(v17 + 4) = v3;
          *(v17 + 5) = v11;
          v18 = v42;
          v19 = v43;
          v20 = v44;
          *(v17 + 12) = v45;
          *(v17 + 4) = v19;
          *(v17 + 5) = v20;
          *(v17 + 3) = v18;
          v17[104] = 31;
          *(v7 + v12) = v13;
          swift_endAccess();
          v21 = 0;
          v22 = *(v7 + 16);
          if ((v22 & 0x20) != 0)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

LABEL_47:
        v22 = *(v7 + 16);
        if ((v22 & 0x10) == 0)
        {
          v22 |= 0x10uLL;
          *(v7 + 16) = v22;
        }

        v21 = 1;
        if ((v22 & 0x20) != 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v7 + 16) = v22 | 0x20;
LABEL_11:
        sub_10007FDBC(a1, v5);

        return v21;
      }

      v39 = *(*v33 + 24);
      *&v46 = 0;
      *(&v46 + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(17);

      *&v46 = 0x204449206D616554;
      *(&v46 + 1) = 0xEF203A64696C6176;
      v40._countAndFlagsBits = v39;
      v40._object = v34;
      String.append(_:)(v40);
      sub_10003E118(v39, v34);
      v41 = *(&v46 + 1);
      *(v5 + 16) = v46;
      *(v5 + 24) = v41;
    }

    else
    {
      v38 = *(v7 + 16);
      if ((v38 & 0x2000) == 0)
      {
        *(v7 + 16) = v38 | 0x2000;
      }

      *(v5 + 16) = 0xD000000000000017;
      *(v5 + 24) = 0x8000000100107CE0;
    }

    sub_100003C90(&v42);
    goto LABEL_47;
  }

  if (v9)
  {
    *(v4 + 16) = 0xD000000000000018;
    *(v4 + 24) = 0x8000000100107D70;
    sub_10007FDBC(a1, v4);

    return 0;
  }

  else
  {
    if ((v8 & 0x10) == 0)
    {
      *(v7 + 16) = v8 | 0x10;
    }

    *(v4 + 16) = 0xD000000000000022;
    *(v4 + 24) = 0x8000000100107D90;
    sub_10007FDBC(a1, v4);

    return 1;
  }
}

uint64_t sub_10007CA90(uint64_t *a1)
{
  v2 = *a1;
  if ((*(v1 + 648) & 8) != 0)
  {
    v6 = *(v2 + 16);
    if ((v6 & 0x100) == 0)
    {
      v5 = v6 | 0x100;
      goto LABEL_7;
    }

    return 1;
  }

  swift_beginAccess();
  sub_100014894(v2 + 80, v8, &qword_100135090, &qword_1000F4F58);
  v3 = v8[3];
  sub_10000A184(v8, &qword_100135090, &qword_1000F4F58);
  v4 = *(v2 + 16);
  if (v3)
  {
    if ((~v4 & 0x300) != 0)
    {
      v5 = v4 | 0x300;
LABEL_7:
      *(v2 + 16) = v5;
      return 1;
    }

    return 1;
  }

  result = 0;
  if ((v4 & 0x200) == 0)
  {
    *(v2 + 16) = v4 | 0x200;
  }

  return result;
}

uint64_t sub_10007CB58(uint64_t *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*a1 + 16);
  if ((v7 & 2) == 0)
  {
    *(*a1 + 16) = v7 | 2;
  }

  v8 = sub_1000D7374();
  v10 = v9;

  if (qword_100133B10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for OSSignposter();
  sub_1000144F0(v11, qword_10014EA70);

  static OSSignpostID.exclusive.getter();
  v12 = OSSignposter.logHandle.getter();
  v13 = static os_signpost_type_t.event.getter();

  if (OS_os_log.signpostsEnabled.getter())
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315138;
    v16 = sub_1000E3AF8(v8, v10, &v20);

    *(v14 + 4) = v16;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, v13, v17, "ExtensionValidation", "Validated: %s", v14, 0xCu);
    sub_100003C90(v15);
  }

  else
  {
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_10007CDA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
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

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_10000B48C(&v22, v24);
        sub_10000B48C(v24, v25);
        sub_10000B48C(v25, &v23);
        v16 = sub_100061588(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          sub_100003C90(v10);
          sub_10000B48C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_10000B48C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10007D000(uint64_t *a1)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v217 - v6;
  v8 = type metadata accessor for URL();
  v10 = __chkstk_darwin(v8, v9);
  v12 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v10, v13);
  v16 = &v217 - v15;
  v18 = __chkstk_darwin(v14, v17);
  v21 = &v217 - v20;
  v22 = *(v1 + 648);
  if ((v22 & 0x8000) != 0)
  {
    v26 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1000F3160;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100003D24();
    *(v27 + 32) = 0xD000000000000015;
    *(v27 + 40) = 0x80000001001082B0;
LABEL_5:
    sub_10001491C();
LABEL_6:
    v28 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v28, "Finished extension FS validation with result: %{public}s", 56, 2, v27);
LABEL_7:

    return;
  }

  v226 = v19;
  *&v227 = v18;
  v23 = *a1;
  sub_1000138F8(*(v23 + 24) + 24, &v230);
  v24 = BYTE8(v232);
  sub_100013954(&v230);
  if (v24 == 1)
  {
    v230._countAndFlagsBits = 0;
    v230._object = 0xE000000000000000;
    _StringGuts.grow(_:)(56);
    v234 = v230;
    v25._countAndFlagsBits = 0xD000000000000036;
    v25._object = 0x8000000100108270;
    String.append(_:)(v25);
    sub_1000138F8(*(v23 + 24) + 24, &v230);
LABEL_10:
    v29._countAndFlagsBits = sub_1000DAD64();
    String.append(_:)(v29);

    sub_100013954(&v230);
    v30 = v234;
    v31 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F3160;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = sub_100003D24();
    *(v32 + 32) = v30;
    sub_10001491C();

    v33 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v31, &_mh_execute_header, v33, "Finished extension FS validation with result: %{public}s", 56, 2, v32);

    return;
  }

  sub_1000138F8(*(v23 + 24) + 24, &v230);
  if (BYTE8(v232) == 2)
  {
    v230._countAndFlagsBits = 0;
    v230._object = 0xE000000000000000;
    _StringGuts.grow(_:)(34);

    *&v234 = 0xD000000000000020;
    *(&v234 + 1) = 0x8000000100108240;
    sub_1000138F8(*(v23 + 24) + 24, &v230);
    goto LABEL_10;
  }

  sub_100013954(&v230);
  sub_1000138F8(*(v23 + 24) + 24, &v234);
  if (v236)
  {
    sub_100013954(&v234);
    sub_10001449C();
    swift_allocError();
    *v34 = 0xD000000000000020;
    *(v34 + 8) = 0x8000000100107EB0;
    v35 = v233;
    v36 = v232;
    v37 = v231;
    *(v34 + 16) = v230;
    *(v34 + 32) = v37;
    *(v34 + 48) = v36;
    *(v34 + 64) = v35;
    *(v34 + 72) = 19;
    swift_willThrow();
LABEL_63:
    v26 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v103 = swift_allocObject();
    v27 = v103;
    v104 = xmmword_1000F3160;
    goto LABEL_64;
  }

  v222 = v2;
  sub_100009F34(&v234, &v237);
  sub_100009F34(&v237, &v240);
  v38 = v241;
  v39 = v242;
  sub_100003C4C(&v240, v241);
  v40 = *(v39 + 64);
  v223 = v1;
  v40(v38, v39);
  v41 = URL.path.getter();
  v42 = v223;
  v225 = v41;
  v44 = v43;
  v45 = *(v226 + 8);
  v221 = v226 + 8;
  v220 = v45;
  v45(v21, v227);
  if ((v22 & 4) == 0)
  {
    v46 = v42[49];
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1000F3C80;
    v48 = v42[51];
    *(v47 + 32) = v42[50];
    *(v47 + 40) = v48;
    v49 = v42[52];
    v50 = v42[53];
    *(v47 + 48) = v49;
    *(v47 + 56) = v50;
    v230._countAndFlagsBits = v46;

    sub_100030728(v47);
    *&v224 = v230._countAndFlagsBits;
    v51 = v241;
    v52 = v242;
    sub_100003C4C(&v240, v241);
    v53 = (*(v52 + 16))(v51, v52);
    if (v54 == 1)
    {
      v217 = 1;
      *&v219 = v53;
      v218 = v7;
      v55 = v44;
      v85 = (v224 + 40);
      v86 = -*(v224 + 16);
      v87 = -1;
      while (v86 + v87 != -1)
      {
        if (++v87 >= *(v224 + 16))
        {
LABEL_72:
          __break(1u);
LABEL_73:
          sub_100003C90(&v237);
          v230._countAndFlagsBits = 0;
          v230._object = 0xE000000000000000;
          _StringGuts.grow(_:)(40);

          v230._countAndFlagsBits = 0xD000000000000026;
          v230._object = 0x8000000100108030;
          v211._countAndFlagsBits = v225;
          v211._object = v224;
          String.append(_:)(v211);
          goto LABEL_39;
        }

        v88 = v85 + 2;
        v89 = *(v85 - 1);
        v90 = *v85;

        v91._countAndFlagsBits = v89;
        v91._object = v90;
        v92 = String.hasPrefix(_:)(v91);

        v85 = v88;
        if (v92)
        {
          goto LABEL_25;
        }
      }

      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      _StringGuts.grow(_:)(112);
      v116._countAndFlagsBits = 0xD00000000000001DLL;
      v116._object = 0x8000000100108180;
      String.append(_:)(v116);
      sub_100003C4C(&v240, v241);
      v117._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v117);

      v118._countAndFlagsBits = 0xD00000000000004FLL;
      v118._object = 0x80000001001081A0;
      String.append(_:)(v118);
      *&v234 = v224;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_100018594();
      v119 = BidirectionalCollection<>.joined(separator:)();
      v121 = v120;

      v122._countAndFlagsBits = 9;
      v122._object = 0xE100000000000000;
      v123 = String.init(repeating:count:)(v122, 1);
      countAndFlagsBits = v123._countAndFlagsBits;
      object = v123._object;
      *&v234 = v119;
      *(&v234 + 1) = v121;
      *&v237 = 10;
      *(&v237 + 1) = 0xE100000000000000;
      v228 = 10;
      v229 = 0xE100000000000000;
      String.append(_:)(v123);
      sub_100012814();
      v126 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v128 = v127;

      v234 = __PAIR128__(object, countAndFlagsBits);

      v129._countAndFlagsBits = v126;
      v129._object = v128;
      String.append(_:)(v129);

      String.append(_:)(v234);

      v130 = v230;
      sub_10001449C();
      swift_allocError();
      *v131 = v130;
      v132 = v233;
      v133 = v232;
      v134 = v231;
      *(v131 + 16) = v230;
      *(v131 + 32) = v134;
      *(v131 + 48) = v133;
      *(v131 + 64) = v132;
      *(v131 + 72) = 19;
      swift_willThrow();
      v83 = v219;
      v84 = 1;
LABEL_35:
      sub_100041A00(v83, v84);
      sub_100003C90(&v240);
      v135 = static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_1000F3160;
      *(v136 + 56) = &type metadata for String;
      *(v136 + 64) = sub_100003D24();
      *(v136 + 32) = 0x726F727245;
      *(v136 + 40) = 0xE500000000000000;
      sub_10001491C();
      v28 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)(v135, &_mh_execute_header, v28, "Finished extension FS validation with result: %{public}s", 56, 2, v136, v217);
      goto LABEL_7;
    }

    if (v54)
    {
      v105 = v53;
      v106 = v54;

      sub_100041A00(v105, v106);
      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      v230._countAndFlagsBits = 0x20656C646E7542;
      v230._object = 0xE700000000000000;
      sub_100003C4C(&v240, v241);
      v107._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v107);

      v108._countAndFlagsBits = 0xD000000000000024;
      v108._object = 0x8000000100107F20;
      String.append(_:)(v108);
      v109 = v230;
      sub_10001449C();
      swift_allocError();
      *v110 = v109;
      v111 = v233;
      v112 = v232;
      v113 = v231;
      *(v110 + 16) = v230;
      *(v110 + 32) = v113;
      *(v110 + 48) = v112;
      *(v110 + 64) = v111;
      v114 = 9;
LABEL_61:
      *(v110 + 72) = v114;
      swift_willThrow();
      goto LABEL_62;
    }

    v217 = 0;
    *&v219 = v53;
    v218 = v7;
    v55 = v44;
    v56 = (v224 + 40);
    v57 = -*(v224 + 16);
    v58 = -1;
    while (v57 + v58 != -1)
    {
      if (++v58 >= *(v224 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v59 = v56 + 2;
      v60 = *(v56 - 1);
      v61 = *v56;

      v62._countAndFlagsBits = v60;
      v62._object = v61;
      v63 = String.hasPrefix(_:)(v62);

      v56 = v59;
      if (v63)
      {

        v230._countAndFlagsBits = 0;
        v230._object = 0xE000000000000000;
        _StringGuts.grow(_:)(111);
        v64._countAndFlagsBits = 0xD00000000000001DLL;
        v64._object = 0x8000000100108180;
        String.append(_:)(v64);
        sub_100003C4C(&v240, v241);
        v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v65);

        v66._countAndFlagsBits = 0xD00000000000004ELL;
        v66._object = 0x80000001001081F0;
        String.append(_:)(v66);
        *&v234 = v224;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_100018594();
        v67 = BidirectionalCollection<>.joined(separator:)();
        v69 = v68;

        v70._countAndFlagsBits = 9;
        v70._object = 0xE100000000000000;
        v71 = String.init(repeating:count:)(v70, 1);
        v72 = v71._countAndFlagsBits;
        v73 = v71._object;
        *&v234 = v67;
        *(&v234 + 1) = v69;
        *&v237 = 10;
        *(&v237 + 1) = 0xE100000000000000;
        v228 = 10;
        v229 = 0xE100000000000000;
        String.append(_:)(v71);
        sub_100012814();
        v74 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v76 = v75;

        v234 = __PAIR128__(v73, v72);

        v77._countAndFlagsBits = v74;
        v77._object = v76;
        String.append(_:)(v77);

        String.append(_:)(v234);

        v78 = v230;
        sub_10001449C();
        swift_allocError();
        *v79 = v78;
        v80 = v233;
        v81 = v232;
        v82 = v231;
        *(v79 + 16) = v230;
        *(v79 + 32) = v82;
        *(v79 + 48) = v81;
        *(v79 + 64) = v80;
        *(v79 + 72) = 19;
        swift_willThrow();
        v83 = v219;
        v84 = 0;
        goto LABEL_35;
      }
    }

LABEL_25:

    sub_100041A00(v219, v217);
    v44 = v55;
    v7 = v218;
    v42 = v223;
  }

  LOBYTE(v228) = 0;
  if ((v22 & 0x40000) == 0)
  {
    v93 = v225;
    goto LABEL_55;
  }

  sub_100003C4C(v42 + 2, v42[5]);
  sub_1000DF9D4(&v230);
  v95 = *(&v231 + 1);
  v94 = v232;
  *&v224 = sub_100003C4C(&v230, *(&v231 + 1));
  v96 = v241;
  v97 = v242;
  sub_100003C4C(&v240, v241);
  (*(v97 + 64))(v96, v97);
  sub_100003CDC(&qword_100136E98, &qword_1000F9260);
  v98 = swift_allocObject();
  v219 = xmmword_1000F3160;
  *(v98 + 16) = xmmword_1000F3160;
  *(v98 + 32) = NSURLIsSymbolicLinkKey;
  v99 = NSURLIsSymbolicLinkKey;
  v100 = sub_100080134(v98);
  swift_setDeallocating();
  sub_100080328(v98 + 32);
  swift_deallocClassInstance();
  v101 = v222;
  (*(v94 + 192))(&v234, v16, v100, v95, v94);
  if (v101)
  {
    v220(v16, v227);

    v102 = &v230;
LABEL_30:
    sub_100003C90(v102);
    sub_100003C90(&v240);
    v26 = static os_log_type_t.info.getter();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v103 = swift_allocObject();
    v27 = v103;
    v104 = v219;
LABEL_64:
    *(v103 + 16) = v104;
    *(v103 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100003D24();
    *(v27 + 32) = 0x726F727245;
    *(v27 + 40) = 0xE500000000000000;
    goto LABEL_5;
  }

  v220(v16, v227);

  sub_100003C90(&v230);
  sub_100003C4C(&v234, v235);
  v115 = URLResourceValues.isSymbolicLink.getter();
  v222 = 0;
  if (v115 == 2)
  {
    v93 = v225;
  }

  else
  {
    v93 = v225;
    if (v115)
    {
      v230._countAndFlagsBits = v225;
      *&v224 = v44;
      v230._object = v44;
      *&v237 = 3092014;
      *(&v237 + 1) = 0xE300000000000000;
      sub_100012814();
      v137 = StringProtocol.contains<A>(_:)();
      v138 = v223;
      if ((v137 & 1) == 0)
      {
        v151 = v223[48];
        v152 = (v151 + 40);
        v153 = -*(v151 + 16);
        v154 = -1;
        while (v153 + v154 != -1)
        {
          if (++v154 >= *(v151 + 16))
          {
            __break(1u);
          }

          v155 = v152 + 2;
          v157 = *(v152 - 1);
          v156 = *v152;

          v158._countAndFlagsBits = v157;
          v158._object = v156;
          v159 = String.hasPrefix(_:)(v158);

          v152 = v155;
          if (v159)
          {
            sub_100003C4C(v138 + 2, v138[5]);
            sub_1000DF9D4(&v237);
            v160 = v238;
            v161 = v239;
            sub_100003C4C(&v237, v238);
            v162 = v222;
            v163 = (*(v161 + 152))(v225, v224, v160, v161);
            if (v162)
            {

              sub_100003C90(&v237);
              goto LABEL_41;
            }

            v222 = 0;
            v218 = v164;
            if (v164)
            {
              v93 = v163;
              sub_100003C90(&v237);
              v165 = v223[46];
              v166 = (v165 + 40);
              v167 = -*(v165 + 16);
              v168 = -1;
              while (1)
              {
                if (v167 + v168 == -1)
                {
                  v230._countAndFlagsBits = 0;
                  v230._object = 0xE000000000000000;
                  _StringGuts.grow(_:)(96);
                  v212._countAndFlagsBits = 0x5520656C646E7542;
                  v212._object = 0xEB00000000204C52;
                  String.append(_:)(v212);
                  v213._countAndFlagsBits = v225;
                  v213._object = v224;
                  String.append(_:)(v213);

                  v214._countAndFlagsBits = 0xD000000000000011;
                  v214._object = 0x80000001001080A0;
                  String.append(_:)(v214);
                  v215._countAndFlagsBits = v93;
                  v215._object = v218;
                  String.append(_:)(v215);

                  v216._countAndFlagsBits = 0xD000000000000040;
                  v216._object = 0x80000001001080C0;
                  String.append(_:)(v216);
                  goto LABEL_40;
                }

                if (++v168 >= *(v165 + 16))
                {
                  break;
                }

                v169 = v166 + 2;
                v171 = *(v166 - 1);
                v170 = *v166;

                v172._countAndFlagsBits = v171;
                v172._object = v170;
                v173 = String.hasPrefix(_:)(v172);

                v166 = v169;
                if (v173)
                {
                  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
                  v174 = swift_allocObject();
                  *(v174 + 16) = xmmword_1000F3C80;
                  *(v174 + 56) = &type metadata for String;
                  v175 = sub_100003D24();
                  v176 = v224;
                  *(v174 + 32) = v225;
                  *(v174 + 40) = v176;
                  *(v174 + 96) = &type metadata for String;
                  *(v174 + 104) = v175;
                  *(v174 + 64) = v175;
                  *(v174 + 72) = v93;
                  v44 = v218;
                  *(v174 + 80) = v218;
                  sub_10001491C();

                  v177 = static OS_os_log.default.getter();
                  v178 = static os_log_type_t.default.getter();
                  os_log(_:dso:log:type:_:)("Bundle URL %{public}s is a valid symlink to %{public}s", 54, 2, &_mh_execute_header, v177, v178, v174);

                  goto LABEL_54;
                }
              }

              __break(1u);
              return;
            }

            goto LABEL_73;
          }
        }
      }

      v230._countAndFlagsBits = 0;
      v230._object = 0xE000000000000000;
      _StringGuts.grow(_:)(115);
      v139._countAndFlagsBits = 0x5520656C646E7542;
      v139._object = 0xEB00000000204C52;
      String.append(_:)(v139);
      v140._countAndFlagsBits = v225;
      v140._object = v224;
      String.append(_:)(v140);

      v141._countAndFlagsBits = 0xD000000000000064;
      v141._object = 0x8000000100108110;
      String.append(_:)(v141);
      *&v237 = v138[48];

      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_100018594();
      v142 = BidirectionalCollection<>.joined(separator:)();
      v144 = v143;

      v145._countAndFlagsBits = v142;
      v145._object = v144;
      String.append(_:)(v145);
LABEL_39:

LABEL_40:
      v146 = v230;
      sub_10001449C();
      swift_allocError();
      *v147 = v146;
      v148 = v233;
      v149 = v232;
      v150 = v231;
      *(v147 + 16) = v230;
      *(v147 + 32) = v150;
      *(v147 + 48) = v149;
      *(v147 + 64) = v148;
      *(v147 + 72) = 19;
      swift_willThrow();
LABEL_41:
      v102 = &v234;
      goto LABEL_30;
    }
  }

LABEL_54:
  v42 = v223;
  sub_100003C90(&v234);
LABEL_55:
  sub_100003C4C(v42 + 2, v42[5]);
  sub_1000DF9D4(&v230);
  v179 = *(&v231 + 1);
  v180 = v232;
  sub_100003C4C(&v230, *(&v231 + 1));
  if (((*(v180 + 136))(v93, v44, &v228, v179, v180) & 1) == 0)
  {
    sub_100003C90(&v230);
    goto LABEL_60;
  }

  v181 = v228;
  sub_100003C90(&v230);
  if ((v181 & 1) == 0)
  {
LABEL_60:
    v230._countAndFlagsBits = 0;
    v230._object = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    v230._countAndFlagsBits = 0x5520656C646E7542;
    v230._object = 0xEB00000000204C52;
    v186._countAndFlagsBits = v93;
    v186._object = v44;
    String.append(_:)(v186);

    v187._countAndFlagsBits = 0xD000000000000013;
    v187._object = 0x8000000100107F50;
    String.append(_:)(v187);
    v188 = v230;
    sub_10001449C();
    swift_allocError();
    *v110 = v188;
    v189 = v233;
    v190 = v232;
    v191 = v231;
    *(v110 + 16) = v230;
    *(v110 + 32) = v191;
    *(v110 + 48) = v190;
    *(v110 + 64) = v189;
    v114 = 19;
    goto LABEL_61;
  }

  sub_100003C4C(v223 + 2, v223[5]);
  sub_1000DF9D4(&v230);
  v182 = *(&v231 + 1);
  v183 = v232;
  sub_100003C4C(&v230, *(&v231 + 1));
  v184 = v222;
  v185 = (*(v183 + 224))(v93, v44, v182, v183);
  if (v184)
  {

    sub_100003C90(&v230);
LABEL_62:
    sub_100003C90(&v240);
    goto LABEL_63;
  }

  if ((v185 & 1) == 0)
  {
    v206 = v93;
    sub_100003C90(&v230);
LABEL_70:
    v225 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v207 = swift_allocObject();
    v224 = xmmword_1000F3160;
    *(v207 + 16) = xmmword_1000F3160;
    *(v207 + 56) = &type metadata for String;
    v208 = sub_100003D24();
    *(v207 + 64) = v208;
    *(v207 + 32) = v206;
    *(v207 + 40) = v44;
    sub_10001491C();

    v209 = static OS_os_log.default.getter();
    v210 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Validating extension at %{private}s", 35, 2, &_mh_execute_header, v209, v210, v207);

    URL.init(fileURLWithPath:)();

    (*(v226 + 56))(v7, 1, 1, v227);
    sub_10007EC48(v12, v7);
    sub_10000A184(v7, &unk_1001389D0, &qword_1000F4F60);
    v220(v12, v227);
    sub_100003C90(&v240);
    v26 = static os_log_type_t.info.getter();
    v27 = swift_allocObject();
    *(v27 + 16) = v224;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = v208;
    *(v27 + 32) = 0xD000000000000015;
    *(v27 + 40) = 0x8000000100107FA0;
    goto LABEL_6;
  }

  v192 = v241;
  v193 = v242;
  sub_100003C4C(&v240, v241);
  v194 = (*(v193 + 16))(v192, v193);
  v196 = v195;
  sub_100003C90(&v230);
  if (v196 != 1)
  {
    v206 = v93;
    sub_100041A00(v194, v196);
    goto LABEL_70;
  }

  v197 = static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v198 = swift_allocObject();
  v227 = xmmword_1000F3160;
  *(v198 + 16) = xmmword_1000F3160;
  *(v198 + 56) = &type metadata for String;
  v199 = sub_100003D24();
  v200 = v44;
  v201 = v199;
  *(v198 + 64) = v199;
  *(v198 + 32) = v93;
  *(v198 + 40) = v200;
  sub_10001491C();
  v202 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v197, &_mh_execute_header, v202, "Skipping dext bundle validation on ARV at %{public}s", 52, 2, v198);

  sub_100003C90(&v240);
  v203 = static os_log_type_t.info.getter();
  v204 = swift_allocObject();
  *(v204 + 16) = v227;
  *(v204 + 56) = &type metadata for String;
  *(v204 + 64) = v201;
  *(v204 + 32) = 0xD000000000000026;
  *(v204 + 40) = 0x8000000100108000;
  v205 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v203, &_mh_execute_header, v205, "Finished extension FS validation with result: %{public}s", 56, 2, v204);
}

uint64_t sub_10007EC48(unint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  __chkstk_darwin(v4 - 8, v5);
  v7 = v52 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = __chkstk_darwin(v8, v10);
  v13 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v52 - v15;
  sub_100014894(a2, v7, &unk_1001389D0, &qword_1000F4F60);
  v17 = *(v9 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    (*(v9 + 16))(v16, a1, v8);
    v18 = a1;
    if (v17(v7, 1, v8) != 1)
    {
      sub_10000A184(v7, &unk_1001389D0, &qword_1000F4F60);
    }
  }

  else
  {
    (*(v9 + 32))(v16, v7, v8);
    v18 = a1;
  }

  v66 = _swiftEmptyArrayStorage;
  v19 = URL.path.getter();
  v20 = v67;
  v21 = v56;
  sub_10007F34C(v19, v22);
  if (!v21)
  {
    v56 = v18;
    v55 = v16;
    v54 = v8;

    goto LABEL_11;
  }

  v65 = v21;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {
    goto LABEL_20;
  }

  *&v60[9] = *(v64 + 9);
  v59 = v63;
  *v60 = v64[0];
  v58 = v62;
  v57 = v61;
  if (BYTE8(v64[1]) != 19)
  {
    sub_10001465C(&v57);
LABEL_20:

    swift_willThrow();
    (*(v9 + 8))(v16, v8);
  }

  v23 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = (v25 + 1);
  if (v25 >= v24 >> 1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v56 = v18;
    v55 = v16;
    v54 = v8;
    *(v23 + 2) = v26;
    v27 = &v23[80 * v25];
    *(v27 + 2) = v57;
    v28 = v58;
    v29 = v59;
    v30 = *v60;
    *(v27 + 89) = *&v60[9];
    *(v27 + 4) = v29;
    *(v27 + 5) = v30;
    *(v27 + 3) = v28;
    v66 = v23;

LABEL_11:
    sub_100003C4C((v20 + 16), *(v20 + 40));
    sub_1000DF9D4(&v61);
    v31 = v63;
    v53 = *(&v62 + 1);
    v52[1] = sub_100003C4C(&v61, *(&v62 + 1));
    sub_100003CDC(&qword_100136E98, &qword_1000F9260);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1000F7EC0;
    *(v32 + 32) = NSURLPathKey;
    *(v32 + 40) = NSURLIsDirectoryKey;
    *(v32 + 48) = NSURLIsSymbolicLinkKey;
    v33 = *(v31 + 24);
    v34 = NSURLPathKey;
    v35 = NSURLIsDirectoryKey;
    v36 = NSURLIsSymbolicLinkKey;
    v20 = v33(v55, v32, 1, v53, v31);

    sub_100003C90(&v61);
    v16 = *(v20 + 16);
    v8 = v54;
    if (!v16)
    {
      break;
    }

    v18 = 0;
    v25 = v9 + 16;
    v26 = (v9 + 8);
    while (1)
    {
      v24 = *(v20 + 16);
      if (v18 >= v24)
      {
        break;
      }

      (*(v9 + 16))(v13, v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v18, v8);
      sub_10007F748(v13, v67, v56, &v66);
      ++v18;
      (*v26)(v13, v8);
      if (v16 == v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_25:
    v23 = sub_1000319F4((v24 > 1), v26, 1, v23);
  }

LABEL_15:
  v37 = v66;
  v38 = *(v66 + 2);
  if (!v38)
  {
    (*(v9 + 8))(v55, v8);
  }

  v40 = v55;
  if (v38 != 1)
  {
    sub_10001449C();
    swift_allocError();
    *v47 = v37;
    v48 = v63;
    v49 = v64[0];
    v50 = v62;
    *(v47 + 8) = v61;
    *(v47 + 56) = v49;
    *(v47 + 40) = v48;
    *(v47 + 24) = v50;
    *(v47 + 72) = 0;
    swift_willThrow();
    v51 = *(v9 + 8);

    v51(v40, v8);
  }

  if (v37[2])
  {
    v41 = *(v37 + 3);
    v42 = *(v37 + 5);
    v63 = *(v37 + 4);
    v64[0] = v42;
    *(v64 + 9) = *(v37 + 89);
    v61 = *(v37 + 2);
    v62 = v41;
    sub_10001449C();
    swift_allocError();
    *v43 = v61;
    v45 = v63;
    v44 = v64[0];
    v46 = v62;
    *(v43 + 57) = *(v64 + 9);
    v43[2] = v45;
    v43[3] = v44;
    v43[1] = v46;
    swift_willThrow();
    sub_1000419A4(&v61, &v57);
    (*(v9 + 8))(v40, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007F34C(uint64_t a1, void *a2)
{
  sub_100003C4C((v2 + 16), *(v2 + 40));
  sub_1000DF9D4(&v27);
  v6 = *(&v28 + 1);
  v7 = v29;
  sub_100003C4C(&v27, *(&v28 + 1));
  v8 = (*(v7 + 72))(a1, a2, v6, v7);
  result = sub_100003C90(&v27);
  if (!v3)
  {
    if (*(v8 + 16) && (v10 = sub_100061814(NSFileOwnerAccountID), (v11 & 1) != 0) && (sub_10000B430(*(v8 + 56) + 32 * v10, &v27), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v12 = sub_100061814(NSFileGroupOwnerAccountID), (v13 & 1) != 0) && (sub_10000B430(*(v8 + 56) + 32 * v12, &v27), (swift_dynamicCast() & 1) != 0) && *(v8 + 16) && (v14 = sub_100061814(NSFilePosixPermissions), (v15 & 1) != 0))
    {
      sub_10000B430(*(v8 + 56) + 32 * v14, &v27);

      if (swift_dynamicCast())
      {
        if (!v26)
        {
          S_IWOTH.getter();
          return S_IWGRP.getter();
        }

        *&v27 = 0;
        *(&v27 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        *&v27 = 0xD000000000000013;
        *(&v27 + 1) = 0x8000000100108370;
        v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v22);

        v23._countAndFlagsBits = 58;
        v23._object = 0xE100000000000000;
        String.append(_:)(v23);
        v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v24);

        v25._countAndFlagsBits = 0xD000000000000015;
        v25._object = 0x8000000100108390;
        String.append(_:)(v25);
        goto LABEL_15;
      }
    }

    else
    {
    }

    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    *&v27 = 0xD000000000000026;
    *(&v27 + 1) = 0x8000000100108340;
LABEL_15:
    v16._countAndFlagsBits = a1;
    v16._object = a2;
    String.append(_:)(v16);
    v17 = v27;
    sub_10001449C();
    swift_allocError();
    *v18 = v17;
    v19 = v30;
    v20 = v29;
    v21 = v28;
    *(v18 + 16) = v27;
    *(v18 + 32) = v21;
    *(v18 + 48) = v20;
    *(v18 + 64) = v19;
    *(v18 + 72) = 19;
    return swift_willThrow();
  }

  return result;
}