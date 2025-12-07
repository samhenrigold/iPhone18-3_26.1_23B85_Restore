uint64_t MRDFastSyncGroupSession.sendRemoteControlMessage(_:to:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *&v5[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  aBlock[4] = sub_10021FC48;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003D98;
  aBlock[3] = &unk_1004C31C0;
  v18 = _Block_copy(aBlock);
  v19 = v5;
  sub_1001C3FE0(a1, a2);

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001BC5A8(&unk_100522280, &unk_10044F590);
  sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v23 + 8))(v13, v11);
  (*(v14 + 8))(v16, v22);
}

uint64_t sub_10021277C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for GroupActivityMetadata.ActivityType();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021280C, 0, 0);
}

uint64_t sub_10021280C()
{
  GroupActivityMetadata.init()();
  GroupActivityMetadata.supportsContinuationOnTV.setter();
  static GroupActivityMetadata.ActivityType.generic.getter();
  GroupActivityMetadata.type.setter();

  v1 = *(v0 + 8);

  return v1();
}

Swift::Int TimeoutError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10021295C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1002129A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_100212A40(uint64_t a1)
{
  v2 = sub_10021FC78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100212A7C(uint64_t a1)
{
  v2 = sub_10021FC78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100212AB8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100212AF0(void *a1)
{
  v2 = v1;
  v4 = sub_1001BC5A8(&qword_1005222C8, &qword_10044F5C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1000326D8(a1, a1[3]);
  sub_10021FC78();
  v8 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v2 + 96))(v8);
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_100212C50(void *a1)
{
  v2 = swift_allocObject();
  sub_100212CA0(a1);
  return v2;
}

uint64_t sub_100212CA0(void *a1)
{
  v4 = sub_1001BC5A8(&qword_1005222D0, &qword_10044F5C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1000326D8(a1, a1[3]);
  sub_10021FC78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for RemoteControlActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9;
    *(v1 + 24) = v11;
  }

  sub_100026A44(a1);
  return v1;
}

uint64_t sub_100212E4C(uint64_t a1)
{
  v6 = (*(**v1 + 88) + **(**v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009F34;

  return v6(a1);
}

uint64_t sub_100212F7C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 96))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100212FC8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_100213048(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for GroupActivityMetadata.ActivityType();
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_1002253B0, 0, 0);
}

uint64_t sub_1002130D8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_100213124(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

__n128 sub_100213178@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v3;
  v12 = *(v1 + 96);
  v4 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = v4;
  sub_10021FCCC(&v8, &v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002131F0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v3;
  *(v1 + 96) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
}

__n128 sub_1002132D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 48);
  *(v6 + 64) = *(a3 + 32);
  *(v6 + 80) = v7;
  *(v6 + 96) = *(a3 + 64);
  result = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_10021332C()
{
  if (*v0)
  {
    return 0x6F666E4974736F68;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10021335C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E4974736F68 && a2 == 0xE800000000000000)
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

uint64_t sub_10021343C(uint64_t a1)
{
  v2 = sub_10021FD28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100213478(uint64_t a1)
{
  v2 = sub_10021FD28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002134B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100213528(void *a1)
{
  v3 = v1;
  v5 = sub_1001BC5A8(&qword_1005222D8, &qword_10044F5D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - v7;
  sub_1000326D8(a1, a1[3]);
  sub_10021FD28();
  v9 = dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(*v3 + 104))(v9);
  LOBYTE(v15[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(*v3 + 128))(v15, v11);
    v14 = 1;
    sub_10021FD7C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12[2] = v15[2];
    v12[3] = v15[3];
    v13 = v16;
    v12[0] = v15[0];
    v12[1] = v15[1];
    sub_1001C933C(v12);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10021374C(void *a1)
{
  v2 = swift_allocObject();
  sub_10021379C(a1);
  return v2;
}

uint64_t sub_10021379C(void *a1)
{
  v4 = sub_1001BC5A8(&qword_1005222E8, &qword_10044F5E0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_1000326D8(a1, a1[3]);
  sub_10021FD28();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for SystemRemoteControlActivity();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13) = 0;
    *(v1 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v1 + 24) = v8;
    v18 = 1;
    sub_10021FDF4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v10 = v16;
    *(v1 + 64) = v15;
    *(v1 + 80) = v10;
    *(v1 + 96) = v17;
    v11 = v14;
    *(v1 + 32) = v13;
    *(v1 + 48) = v11;
  }

  sub_100026A44(a1);
  return v1;
}

uint64_t sub_1002139D0(uint64_t a1)
{
  v6 = (*(**v1 + 96) + **(**v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100009F30;

  return v6(a1);
}

uint64_t sub_100213AF8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 104))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100213B44@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_100213BC4()
{
  v1 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall;
  v2 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = *(v0 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue);
    v5 = objc_allocWithZone(IDSFirewall);
    v6 = v4;
    v7 = String._bridgeToObjectiveC()();
    v3 = [v5 initWithService:v7 queue:v6];

    v8 = *(v0 + v1);
    *(v0 + v1) = v3;
    v9 = v3;
    sub_100222DC0(v8);
  }

  sub_100222DD0(v2);
  return v3;
}

uint64_t sub_100213C90(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v89 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v11 - 8);
  v88 = &v80 - v12;
  v13 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members;
  v14 = *&v1[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members];

  v15 = sub_100218144(a1, v14);

  if ((v15 & 1) == 0)
  {
    v81 = v10;
    v82 = v8;
    v80 = v2;
    v17 = *&v2[v13];
    v18 = qword_100529B70;

    if (v18 != -1)
    {
LABEL_51:
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100015AFC(v19, qword_100529B78);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();

    v22 = os_log_type_enabled(v20, v21);
    v84 = v7;
    v85 = v4;
    v83 = v6;
    if (v22)
    {
      v23 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v23 = 136446466;
      v24 = _typeName(_:qualified:)();
      v26 = sub_10002C9C8(v24, v25, &aBlock);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = Set.description.getter();
      v4 = sub_10002C9C8(v27, v28, &aBlock);

      *(v23 + 14) = v4;
      _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] New members: %{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    if (v17[2] <= *(a1 + 16) >> 3)
    {
      aBlock = a1;

      sub_1001C0604(v17);
      v29 = aBlock;
    }

    else
    {

      v29 = sub_1001C0730(v17, a1);
    }

    if (*(a1 + 16) <= v17[2] >> 3)
    {
      aBlock = v17;
      sub_1001C0604(a1);
      v30 = aBlock;
    }

    else
    {
      v30 = sub_1001C0730(a1, v17);
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();

    v33 = os_log_type_enabled(v31, v32);
    v91 = v29;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = v17;
      *v34 = 136446722;
      v35 = _typeName(_:qualified:)();
      v37 = sub_10002C9C8(v35, v36, &aBlock);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2082;
      v38 = Set.description.getter();
      v40 = sub_10002C9C8(v38, v39, &aBlock);

      *(v34 + 14) = v40;
      *(v34 + 22) = 2082;
      v41 = Set.description.getter();
      v4 = sub_10002C9C8(v41, v42, &aBlock);

      *(v34 + 24) = v4;
      _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}s] Updating members with added: %{public}s, removed: %{public}s", v34, 0x20u);
      swift_arrayDestroy();
    }

    aBlock = _swiftEmptyArrayStorage;
    v7 = (v30 + 7);
    v43 = 1 << *(v30 + 32);
    v44 = -1;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    a1 = v44 & v30[7];
    v6 = ((v43 + 63) >> 6);

    v45 = 0;
    v87 = _swiftEmptyArrayStorage;
    while (a1)
    {
LABEL_22:
      a1 &= a1 - 1;
      v47 = objc_allocWithZone(IDSURI);

      v4 = String._bridgeToObjectiveC()();
      v48 = [v47 initWithPrefixedURI:v4];

      if (v48)
      {
        v17 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v48];

        if (v17)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v87 = aBlock;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v46 >= v6)
      {
        break;
      }

      a1 = *(v7 + 8 * v46);
      ++v45;
      if (a1)
      {
        v45 = v46;
        goto LABEL_22;
      }
    }

    aBlock = _swiftEmptyArrayStorage;
    v6 = (v91 + 7);
    v49 = 1 << *(v91 + 32);
    v50 = -1;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    v51 = v50 & v91[7];
    v17 = ((v49 + 63) >> 6);

    a1 = 0;
    v86 = _swiftEmptyArrayStorage;
    while (v51)
    {
LABEL_37:
      v51 &= v51 - 1;
      v53 = objc_allocWithZone(IDSURI);

      v4 = String._bridgeToObjectiveC()();
      v54 = [v53 initWithPrefixedURI:v4];

      if (v54)
      {
        v55 = [objc_allocWithZone(IDSFirewallEntry) initWithURI:v54];

        if (v55)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v86 = aBlock;
        }
      }

      else
      {
      }
    }

    v7 = v91;
    while (1)
    {
      v52 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_50;
      }

      if (v52 >= v17)
      {
        break;
      }

      v51 = *&v6[8 * v52];
      ++a1;
      if (v51)
      {
        a1 = v52;
        goto LABEL_37;
      }
    }

    v56 = v80;
    v57 = sub_100213BC4();
    v58 = ObjectType;
    if (v57)
    {
      v59 = v57;
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v60 = v87;
      isa = Array._bridgeToObjectiveC()().super.isa;
      v62 = swift_allocObject();
      *(v62 + 16) = v60;
      *(v62 + 24) = v58;
      v97 = sub_1002232FC;
      v98 = v62;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v95 = sub_1001BC53C;
      v96 = &unk_1004C3850;
      v63 = _Block_copy(&aBlock);

      [v59 donateEntries:isa withCompletion:v63];
      _Block_release(v63);
    }

    v64 = *&v56[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall];
    v65 = v83;
    if (v64)
    {
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v66 = v64;
      v67 = Array._bridgeToObjectiveC()().super.isa;

      v68 = swift_allocObject();
      *(v68 + 16) = v87;
      *(v68 + 24) = v58;
      v97 = sub_100223310;
      v98 = v68;
      aBlock = _NSConcreteStackBlock;
      v94 = 1107296256;
      v95 = sub_1001BC53C;
      v96 = &unk_1004C38A0;
      v69 = _Block_copy(&aBlock);

      v70 = v66;
      v7 = v91;
      [v70 removeDonatedEntries:v67 withCompletion:v69];
      _Block_release(v69);

      sub_100222DC0(v64);
    }

    else
    {
    }

    v71 = type metadata accessor for TaskPriority();
    v72 = v88;
    (*(*(v71 - 8) + 56))(v88, 1, 1, v71);
    v73 = swift_allocObject();
    v73[2] = 0;
    v73[3] = 0;
    v73[4] = v7;
    v73[5] = v56;
    v73[6] = v30;
    v73[7] = v58;
    v74 = v56;
    sub_1001CB290(0, 0, v72, &unk_1004500F0, v73);

    v75 = swift_allocObject();
    *(v75 + 16) = v74;
    v97 = sub_100223794;
    v98 = v75;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100003D98;
    v96 = &unk_1004C3918;
    v76 = _Block_copy(&aBlock);
    v77 = v74;
    v78 = v81;
    static DispatchQoS.unspecified.getter();
    v92 = _swiftEmptyArrayStorage;
    sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001BC5A8(&unk_100522280, &unk_10044F590);
    sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
    v79 = v85;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v76);
    (*(v89 + 8))(v65, v79);
    (*(v82 + 8))(v78, v84);
  }

  return result;
}

uint64_t sub_100214934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  return _swift_task_switch(sub_100214958, 0, 0);
}

uint64_t sub_100214958()
{
  v1 = v0[26];
  if (*(v1 + 16))
  {
    v2 = v0 + 2;
    v3 = *(v0[27] + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v1);
    v0[30] = 0;
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v0[31] = isa;

    v0[2] = v0;
    v0[3] = sub_100214C40;
    v5 = swift_continuation_init();
    v0[25] = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BF7B8;
    v0[21] = &unk_1004C3940;
    v0[22] = v5;
    [v3 removeInvitedHandles:isa completion:v0 + 18];
LABEL_5:

    return _swift_continuation_await(v2);
  }

  v6 = v0[28];
  if (*(v6 + 16))
  {
    v2 = v0 + 10;
    v7 = v0[27];
    v8 = *(v7 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v6);
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    v9 = Array._bridgeToObjectiveC()().super.isa;
    v0[33] = v9;

    v10 = *(v7 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle);
    v0[10] = v0;
    v0[11] = sub_10021509C;
    v11 = swift_continuation_init();
    v0[25] = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    v0[18] = _NSConcreteStackBlock;
    v0[19] = 1107296256;
    v0[20] = sub_1001BF7B8;
    v0[21] = &unk_1004C3968;
    v0[22] = v11;
    [v8 inviteHandles:v9 fromSenderHandle:v10 completion:v0 + 18];
    goto LABEL_5;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100214C40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_10021539C;
  }

  else
  {
    v2 = sub_100214D50;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100214D50()
{
  v20 = v0;

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v4 = 136446466;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10002C9C8(v5, v6, v19);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    v8 = Set.description.getter();
    v10 = sub_10002C9C8(v8, v9, v19);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Removed handles: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 224);
  if (*(v11 + 16))
  {
    v12 = *(v0 + 216);
    v13 = *(v12 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
    sub_1001FD048(v11);
    sub_100018D7C(0, &qword_100522978, SKHandle_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 264) = isa;

    v15 = *(v12 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_10021509C;
    v16 = swift_continuation_init();
    *(v0 + 200) = sub_1001BC5A8(&qword_100521660, &unk_100450020);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1001BF7B8;
    *(v0 + 168) = &unk_1004C3968;
    *(v0 + 176) = v16;
    [v13 inviteHandles:isa fromSenderHandle:v15 completion:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10021509C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_10021540C;
  }

  else
  {
    v2 = sub_1002151AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002151AC()
{
  v14 = v0;

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v4 = 136446466;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10002C9C8(v5, v6, &v13);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2082;
    v8 = Set.description.getter();
    v10 = sub_10002C9C8(v8, v9, &v13);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Invited handles: %{public}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10021539C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_10021540C(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1002154A4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

char *sub_100215510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v4 = sub_1001BC5A8(&qword_1005228D0, &qword_100450058);
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v47 = v40 - v5;
  v6 = sub_1001BC5A8(&qword_1005228C8, &qword_100450050);
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v44 = v40 - v7;
  v42 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v12 - 8);
  v41 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue;
  v40[1] = sub_100018D7C(0, &qword_100524C60, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  sub_100004858(&qword_100522A90, 255, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1001BC5A8(&qword_100521DF8, &unk_100450220);
  sub_10000462C(&qword_100522AA0, &qword_100521DF8, &unk_100450220, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  v13 = v43;
  *&v13[v41] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v13[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource____lazy_storage___firewall] = 1;
  *&v13[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_members] = &_swiftEmptySetSingleton;
  v14 = &_swiftEmptySetSingleton;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_10021DF30(_swiftEmptyArrayStorage);
    }

    else
    {
      v14 = &_swiftEmptySetSingleton;
    }
  }

  v15 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource__presentDevices;
  v55 = v14;
  sub_1001BC5A8(&qword_100522810, &unk_10044FBE8);
  v16 = v44;
  Published.init(initialValue:)();
  (*(v45 + 32))(&v13[v15], v16, v46);
  v17 = OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource__presentHandles;
  v55 = &_swiftEmptySetSingleton;
  sub_1001BC5A8(&unk_100522820, &qword_10044EA80);
  v18 = v47;
  Published.init(initialValue:)();
  (*(v48 + 32))(&v13[v17], v18, v49);
  v19 = objc_allocWithZone(SKHandle);
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 initWithString:v20];

  *&v13[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_localHandle] = v21;
  v22 = &v13[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presenceIdentifier];
  v23 = v53;
  *v22 = v52;
  v22[1] = v23;
  v24 = objc_allocWithZone(SKPresenceOptions);

  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 initWithServiceIdentifier:v25];

  [v26 setIsPersonal:0];
  v27 = objc_allocWithZone(IDSURI);
  v28 = String._bridgeToObjectiveC()();

  v29 = [v27 initWithPrefixedURI:v28];

  [v26 setClientSpecifiedURI:v29];
  v30 = objc_allocWithZone(SKPresence);
  v31 = v26;
  v32 = String._bridgeToObjectiveC()();

  v33 = [v30 initWithPresenceIdentifier:v32 options:v31];

  *&v13[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence] = v33;
  v34 = type metadata accessor for PresenceDataSource(0);
  v54.receiver = v13;
  v54.super_class = v34;
  v35 = objc_msgSendSuper2(&v54, "init");
  v36 = *&v35[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence];
  v37 = *&v35[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue];
  v38 = v35;
  [v36 addDelegate:v38 queue:v37];

  return v38;
}

uint64_t sub_100215B8C(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;
  v3[45] = swift_getObjectType();

  return _swift_task_switch(sub_100215C00, 0, 0);
}

uint64_t sub_100215C00()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[42];
  sub_1001BC5A8(&qword_1005228A8, &unk_100450030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v1;

  v5 = sub_10021EF3C(inited);
  v0[46] = v5;
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228B0, &qword_10045AFF0);
  v6 = *(v2 + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
  v0[47] = v6;
  sub_100216450(v5);
  v7 = objc_allocWithZone(SKPresencePayload);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithDictionary:isa];
  v0[48] = v9;

  v0[2] = v0;
  v0[3] = sub_100215E28;
  v10 = swift_continuation_init();
  v11 = sub_1001BC5A8(&qword_100521660, &unk_100450020);
  v0[49] = v11;
  v0[33] = v11;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_1001BF7B8;
  v0[29] = &unk_1004C3490;
  v0[30] = v10;
  [v6 assertPresenceWithPresencePayload:v9 completion:v0 + 26];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100215E28()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {

    v2 = sub_100216370;
  }

  else
  {
    v2 = sub_100215F40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100215F40()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);

  *(v0 + 80) = v0;
  *(v0 + 88) = sub_100216044;
  v3 = swift_continuation_init();
  *(v0 + 328) = v1;
  *(v0 + 272) = _NSConcreteStackBlock;
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1001BF7B8;
  *(v0 + 296) = &unk_1004C34B8;
  *(v0 + 304) = v3;
  [v2 retainTransientSubscriptionAssertionWithCompletion:v0 + 272];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_100216044()
{
  v1 = *(*v0 + 112);
  *(*v0 + 408) = v1;
  if (v1)
  {

    v2 = sub_1002163E4;
  }

  else
  {
    v2 = sub_10021615C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10021615C()
{
  v15 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136446466;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10002C9C8(v5, v6, &v14);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = Dictionary.description.getter();
    v10 = v9;

    v11 = sub_10002C9C8(v8, v10, &v14);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Done asserting presence with payload: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100216370(uint64_t a1)
{
  v2 = *(v1 + 384);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1002163E4(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100216450(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1001C4088(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1001C4088(v29, v30);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1001C4088(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100216718()
{
  *(v1 + 208) = v0;
  *(v1 + 216) = swift_getObjectType();

  return _swift_task_switch(sub_100216788, 0, 0);
}

uint64_t sub_100216788()
{
  v1 = *(v0[26] + OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_presence);
  v0[28] = v1;
  v0[2] = v0;
  v0[3] = sub_1002168B0;
  v2 = swift_continuation_init();
  v3 = sub_1001BC5A8(&qword_100521660, &unk_100450020);
  v0[29] = v3;
  v0[25] = v3;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BF7B8;
  v0[21] = &unk_1004C3440;
  v0[22] = v2;
  [v1 releaseTransientSubscriptionAssertionWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1002168B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_100216D50;
  }

  else
  {
    v2 = sub_1002169C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002169C0()
{
  v1 = v0[28];
  v2 = v0[29];
  v0[10] = v0;
  v0[11] = sub_100216AB8;
  v3 = swift_continuation_init();
  v0[25] = v2;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1001BF7B8;
  v0[21] = &unk_1004C3468;
  v0[22] = v3;
  [v1 releasePresenceWithCompletion:v0 + 18];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_100216AB8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_100216DBC;
  }

  else
  {
    v2 = sub_100216BC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100216BC8()
{
  v12 = v0;
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100015AFC(v1, qword_100529B78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = _typeName(_:qualified:)();
    v8 = sub_10002C9C8(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] Done releasing presence.", v4, 0xCu);
    sub_100026A44(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100216D50(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_100216DBC(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void sub_100216E90(char *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v2[OBJC_IVAR____TtC12mediaremotedP33_5F812221C055B7907E48F2E367000FFE18PresenceDataSource_queue];
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v11 = [a1 presentDevices];
  sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = sub_10021F180(v12);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1002182FC(v10, v72);
  LOBYTE(v12) = v13;

  if (v12)
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v10;

  a1 = v2;
  static Published.subscript.setter();
  if (qword_100529B90 != -1)
  {
    goto LABEL_26;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100529B98);
  v15 = a1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = _typeName(_:qualified:)();
    v21 = sub_10002C9C8(v19, v20, &v72);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_100222D2C();
    v22 = Set.description.getter();
    v24 = v23;

    v25 = sub_10002C9C8(v22, v24, &v72);

    *(v18 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}s] Present devices updated: %s", v18, 0x16u);
    swift_arrayDestroy();
  }

LABEL_7:
  sub_1001FD2C4(v10);
  v27 = v26;
  sub_100206AA0(v10);
  v29 = v28;

  v30 = *(v27 + 16);
  v31 = *(v29 + 16);

  if (v30 != v31)
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100015AFC(v32, qword_100529B78);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v72 = v36;
      *v35 = 136446210;
      v37 = _typeName(_:qualified:)();
      v39 = sub_10002C9C8(v37, v38, &v72);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] Some devices are missing payload.", v35, 0xCu);
      sub_100026A44(v36);
    }
  }

  v41 = sub_100008280(v40);

  v43 = sub_10021BA3C(v42, v41);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44 = sub_100218144(v43, v72);

  if (v44)
  {

LABEL_20:

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v43;
  v45 = v2;
  static Published.subscript.setter();
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100015AFC(v46, qword_100529B78);
  v47 = v45;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v50 = 136446466;
    v51 = _typeName(_:qualified:)();
    v53 = sub_10002C9C8(v51, v52, &v72);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2082;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v54 = Set.description.getter();
    v56 = v55;

    v57 = sub_10002C9C8(v54, v56, &v72);

    *(v50 + 14) = v57;
    _os_log_impl(&_mh_execute_header, v48, v49, "[%{public}s] Present handles updated: %{public}s", v50, 0x16u);
    swift_arrayDestroy();
  }

  v59 = sub_100008280(v58);

  v60 = *(v59 + 16);

  if (v60 == v30)
  {
    goto LABEL_20;
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v63 = 136446466;
    v64 = _typeName(_:qualified:)();
    v66 = sub_10002C9C8(v64, v65, &v72);

    *(v63 + 4) = v66;
    *(v63 + 12) = 2082;
    v67 = Array.description.getter();
    v69 = v68;

    v70 = sub_10002C9C8(v67, v69, &v72);

    *(v63 + 14) = v70;
    _os_log_impl(&_mh_execute_header, v61, v62, "[%{public}s] Handle collision. Handles: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

id sub_10021783C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PresenceDataSource(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10021799C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E6758();
  *a1 = result;
  return result;
}

void sub_1002179C8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 24);
  *(*a2 + 24) = *a1;
  v3 = v2;
}

id sub_100217A10@<X0>(void *a1@<X8>)
{
  result = sub_1001E675C();
  *a1 = result;
  return result;
}

void sub_100217A3C(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 32);
  *(*a2 + 32) = *a1;
  v3 = v2;
}

id sub_100217A84@<X0>(void *a1@<X8>)
{
  result = sub_1001E67BC();
  *a1 = result;
  return result;
}

void sub_100217AB0(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 40);
  *(*a2 + 40) = *a1;
  v3 = v2;
}

id sub_100217AF8@<X0>(void *a1@<X8>)
{
  result = sub_1001E681C();
  *a1 = result;
  return result;
}

void sub_100217B24(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 48);
  *(*a2 + 48) = *a1;
  v3 = v2;
}

id sub_100217B6C@<X0>(void *a1@<X8>)
{
  result = sub_1001E687C();
  *a1 = result;
  return result;
}

void sub_100217B98(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a2 + 56);
  *(*a2 + 56) = *a1;
  v3 = v2;
}

uint64_t sub_100217BE0()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

void sub_100217C20(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 16) = a1;
}

unint64_t sub_100217CD0()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = *(v1 + 64);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v5 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v5;
}

unint64_t sub_100217E34()
{
  v1 = *v0;
  sub_1001BC5A8(&unk_100522830, &unk_10044FE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  v4 = *(v1 + 32);
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v4;
  v5 = sub_10021F050(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_100527DF0, &unk_100457610);
  return v5;
}

uint64_t sub_100217EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3(v4, v6, v7);
}

void sub_100217F9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100218040@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v6;
  return result;
}

uint64_t sub_1002180D0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return static Published.subscript.setter();
}

uint64_t sub_100218144(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1002182FC(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_100218574(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_100218574(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_100218674(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1001BC5A8(&qword_100521780, &unk_100450DD0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_1002186FC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_100219264(a1, v4);
}

uint64_t sub_100218740(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100218978(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_100218B68(v20 + 1);
    }

    v18 = v8;
    sub_1001E45EC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100218D90(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_100218978(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100218B68(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100218B68(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_100218D90(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100218B68(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100218F00();
      goto LABEL_12;
    }

    sub_100219050(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_100218F00()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

Swift::Int sub_100219050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100219264(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

Swift::Int sub_100219338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
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

uint64_t sub_1002195F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
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
        sub_1001C4088((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100018BE4(v23, &v36);
        sub_100020E0C(*(v5 + 56) + 32 * v22, v35);
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
      result = sub_1001C4088(v35, (*(v7 + 56) + 32 * v15));
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

Swift::Int sub_1002198B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005229C8, &qword_100450140);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
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

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100219B20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_100219DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_1001BC5A8(a3, a4);
  v37 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10021A064(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10021A214(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_10021A3A0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1001C4088(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

void *sub_10021A41C()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005216C8, &unk_100450040);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100018BE4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100020E0C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1001C4088(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10021A5C0()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229C8, &qword_100450140);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10021A724()
{
  v1 = v0;
  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10021A894(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1001BC5A8(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

_OWORD *sub_10021A9F0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10001BF64(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_10021A41C();
      goto LABEL_7;
    }

    sub_1002195F8(v13, a3 & 1);
    v19 = sub_10001BF64(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100018BE4(a2, v21);
      return sub_10021A3A0(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100026A44(v17);

  return sub_1001C4088(a1, v17);
}

id sub_10021AB3C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002186FC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1002198B0(v13, a3 & 1);
      v8 = sub_1002186FC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_10021A5C0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_10021ACB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_10000698C(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_100219DC8(v20, a4 & 1, a5, a6);
      v15 = sub_10000698C(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_10021A894(a5, a6);
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

char *sub_10021AE54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10021AE74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10021AE74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001BC5A8(&qword_100522988, &unk_10045A7B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t *sub_10021AF80(uint64_t a1)
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
    result = sub_10021B0E0(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_10021B268(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_10021B0E0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16) >= 2uLL)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_10021B40C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_10021B40C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_10021B1D0(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_10021E668(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

unint64_t *sub_10021B268(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_10021B0E0(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_10021B2E0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1002227D8(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_10021B37C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_10021BC00(result, a2, a3, a4);

    return v8;
  }

  return result;
}

Swift::Int sub_10021B40C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1001BC5A8(&qword_1005229B8, &unk_10045B1F0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_10021B650(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_10021B8A8(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10002AFD0(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10021B99C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t *sub_10021BA3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_10021BC00((&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_10021B37C(v11, v6, a2, a1);
  }

  return v9;
}

unint64_t *sub_10021BC00(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v26 = Hasher._finalize()();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_100007BC4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v39 = Hasher._finalize()();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_10021BFDC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10021C130(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
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

uint64_t sub_10021C368(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

unint64_t sub_10021C3CC(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10021C3DC(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void sub_10021C3EC()
{
  v1 = *(v0 + 16);
  *v1 = *(*(v0 + 24) + OBJC_IVAR___MRDFastSyncGroupSession__state);
  *(v1 + 8) = 0;
}

void sub_10021C430()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier + 8);
  if (v2)
  {
    v3 = *(v0 + 24);
    v4 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localParticipantIdentifier);
    v5 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
    swift_beginAccess();
    v6 = *(v1 + v5);

    v7 = sub_1001BD5E8(v4, v2, v6);

    v8 = *(v1 + OBJC_IVAR___MRDFastSyncGroupSession_localIdentity);
    v9 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
    v10 = v8;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v9 initWithIdentifier:v11 identity:v10 connected:1 guest:v7 & 1];

    v13 = *v3;
    *v3 = v12;
  }
}

uint64_t sub_10021C5C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100015AFC(v5, qword_100529B78);
  v6 = v1;

  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40[0] = swift_slowAlloc();
    *v10 = 138544130;
    *(v10 + 4) = v6;
    *v11 = v6;
    *(v10 + 12) = 2082;
    v12 = v2;
    v14 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v13 = *&v6[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v15 = v6;
    v16 = v14;
    v2 = v12;
    *(v10 + 14) = sub_10002C9C8(v16, v13, v40);
    *(v10 + 22) = 2082;
    *(v10 + 24) = sub_10002C9C8(v12, v3, v40);
    *(v10 + 32) = 2112;
    *(v10 + 34) = v7;
    v11[1] = v7;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "[%{public}@]<%{public}s> Prewarm identifier: %{public}s for identity: %@.", v10, 0x2Au);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v18 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
  swift_beginAccess();
  v19 = *&v6[v18];
  if (!v19)
  {
    goto LABEL_26;
  }

  if (!*(v19 + 16) || (, sub_1002186FC(v7), v21 = v20, , (v21 & 1) == 0))
  {
    swift_beginAccess();
    if (!*&v6[v18])
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v22 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *&v6[v18];
    *&v6[v18] = 0x8000000000000000;
    sub_10021AB3C(_swiftEmptyArrayStorage, v22, isUniquelyReferenced_nonNull_native);

    *&v6[v18] = v38;
    swift_endAccess();
  }

  swift_beginAccess();
  if (!*&v6[v18])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *&v6[v18];
  v39 = v25;
  *&v6[v18] = 0x8000000000000000;
  v27 = sub_1002186FC(v7);
  v28 = *(v25 + 2);
  v29 = (v26 & 1) == 0;
  v30 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_23;
  }

  v31 = v26;
  if (*(v25 + 3) >= v30)
  {
    if (v24)
    {
      if (v26)
      {
        goto LABEL_18;
      }
    }

    else
    {
      sub_10021A5C0();
      if (v31)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_1002198B0(v30, v24);
  v32 = sub_1002186FC(v7);
  if ((v31 & 1) != (v33 & 1))
  {
LABEL_29:
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v27 = v32;
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v25 = *(*(v25 + 7) + 8 * v27);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v25 = sub_10002AFD0(0, *(v25 + 2) + 1, 1, v25);
  }

  v35 = *(v25 + 2);
  v34 = *(v25 + 3);
  if (v35 >= v34 >> 1)
  {
    v25 = sub_10002AFD0((v34 > 1), v35 + 1, 1, v25);
  }

  *(v25 + 2) = v35 + 1;
  v36 = &v25[16 * v35];
  *(v36 + 4) = v2;
  *(v36 + 5) = v3;
  *(*(v39 + 7) + 8 * v27) = v25;
  *&v6[v18] = v39;

  return swift_endAccess();
}

uint64_t sub_10021CA10()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10021CA58()
{
  v1 = v0[2];
  v63 = v0[3];
  v3 = v0[4];
  v2 = v0[5];
  if (qword_100529B70 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v4 = type metadata accessor for Logger();
    LOBYTE(v5) = sub_100015AFC(v4, qword_100529B78);
    v1 = v1;

    v6 = v2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v60 = v3;
      v10 = v6;
      v11 = swift_slowAlloc();
      v66[0] = swift_slowAlloc();
      *v9 = 138544130;
      *(v9 + 4) = v1;
      *v11 = v1;
      LOBYTE(v5) = 34;
      *(v9 + 12) = 2082;
      v12 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v13 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v14 = v1;
      *(v9 + 14) = sub_10002C9C8(v12, v13, v66);
      *(v9 + 22) = 2082;
      *(v9 + 24) = sub_10002C9C8(v63, v60, v66);
      *(v9 + 32) = 2112;
      *(v9 + 34) = v10;
      v11[1] = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}@]<%{public}s> Cancel prewarming identifier: %{public}s for identity: %@.", v9, 0x2Au);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();
      v6 = v10;
      v3 = v60;

      swift_arrayDestroy();
    }

    v16 = OBJC_IVAR___MRDFastSyncGroupSession_prewarmedParticipantIdentifiers;
    swift_beginAccess();
    v17 = *&v1[v16];
    if (!v17)
    {
      goto LABEL_69;
    }

    if (!*(v17 + 16) || (, sub_1002186FC(v6), v19 = v18, , (v19 & 1) == 0))
    {
      v29 = v1;
      v30 = v6;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v65[0] = v35;
        *v33 = 138543874;
        *(v33 + 4) = v29;
        *v34 = v29;
        *(v33 + 12) = 2082;
        v36 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
        v37 = *&v29[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
        v38 = v29;
        *(v33 + 14) = sub_10002C9C8(v36, v37, v65);
        *(v33 + 22) = 2112;
        *(v33 + 24) = v30;
        v34[1] = v30;
        v39 = v30;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%{public}@]<%{public}s> No prewarmed identifiers for identity: %@.", v33, 0x20u);
        sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
        swift_arrayDestroy();

        sub_100026A44(v35);
      }

      return;
    }

    swift_beginAccess();
    if (!*&v1[v16])
    {
      goto LABEL_70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = *&v1[v16];
    v2 = v64;
    *&v1[v16] = 0x8000000000000000;
    v22 = sub_1002186FC(v6);
    v23 = v2[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
      goto LABEL_60;
    }

    LOBYTE(v5) = v21;
    if (v2[3] < v25)
    {
      break;
    }

    v28 = v63;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_67:
      v2 = &v64;
      sub_10021A5C0();
LABEL_12:
      v28 = v63;
    }

    if ((v5 & 1) == 0)
    {
      goto LABEL_71;
    }

    v40 = *(v64[7] + 8 * v22);
    v41 = sub_10021F2C0(v40, v28, v3);
    if (v42)
    {
      v43 = *(v40 + 2);
      v5 = v43;
      goto LABEL_24;
    }

    v5 = v41;
    v59 = v6;
    v44 = (v41 + 1);
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v61 = v22;
    v6 = *(v40 + 2);

    if (v44 == v6)
    {
LABEL_22:

      v43 = *(v40 + 2);
      v22 = v61;
      if (v43 >= v5)
      {
        v6 = v59;
        if ((v5 & 0x8000000000000000) == 0)
        {
LABEL_24:
          if (!__OFADD__(v43, v5 - v43))
          {
            v45 = swift_isUniquelyReferenced_nonNull_native();
            if ((v45 & 1) != 0 && v5 <= *(v40 + 3) >> 1)
            {
              sub_10021F360(v5, v43, 0);
              goto LABEL_32;
            }

            if (v43 <= v5)
            {
              v46 = v5;
            }

            else
            {
              v46 = v43;
            }

            v40 = sub_10002AFD0(v45, v46, 1, v40);
            sub_10021F360(v5, v43, 0);
            if (v40)
            {
LABEL_32:
              v47 = v64;
              *(v64[7] + 8 * v22) = v40;
            }

            else
            {
              v47 = v64;

              sub_10021A214(v22, v47);
            }

            *&v1[v16] = v47;

            swift_endAccess();
            v48 = *&v1[v16];
            if (!v48)
            {
              goto LABEL_72;
            }

            if (*(v48 + 16))
            {

              v49 = sub_1002186FC(v6);
              if (v50)
              {
                v51 = *(*(v48 + 56) + 8 * v49);

                v52 = *(v51 + 16);

                if (v52)
                {
                  return;
                }

                swift_beginAccess();
                if (*&v1[v16])
                {
                  sub_1001EC8FC(0, v6);
                  swift_endAccess();
                  return;
                }

                goto LABEL_73;
              }

              goto LABEL_64;
            }

LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
            goto LABEL_67;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v22 = 16 * v5;
    v53 = v63;
    while (v44 < v6)
    {
      v2 = *&v40[v22 + 48];
      v54 = *&v40[v22 + 56];
      if (v2 != v53 || v54 != v3)
      {
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v53 = v63;
        }

        else
        {
          if (v44 != v5)
          {
            if (v5 >= v6)
            {
              goto LABEL_65;
            }

            v56 = &v40[16 * v5 + 32];
            v6 = *(v56 + 1);
            v62 = *v56;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_10021C354(v40);
            }

            v57 = &v40[16 * v5];
            *(v57 + 4) = v2;
            *(v57 + 5) = v54;

            if (v44 >= *(v40 + 2))
            {
              goto LABEL_66;
            }

            v58 = &v40[v22];
            *(v58 + 6) = v62;
            *(v58 + 7) = v6;
          }

          v53 = v63;
          ++v5;
        }
      }

      ++v44;
      v6 = *(v40 + 2);
      v22 += 16;
      if (v44 == v6)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  sub_1002198B0(v25, isUniquelyReferenced_nonNull_native);
  v2 = v64;
  v26 = sub_1002186FC(v6);
  if ((v5 & 1) == (v27 & 1))
  {
    v22 = v26;
    goto LABEL_12;
  }

LABEL_74:

  sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10021D1DC()
{
  v1 = *(v0 + 16);
  if (*(v1 + OBJC_IVAR___MRDFastSyncGroupSession__state) == 1 && !*(v1 + OBJC_IVAR___MRDFastSyncGroupSession_presenceTask))
  {
    return sub_100205854();
  }

  return result;
}

void sub_10021D224()
{
  v1 = v0[2];
  v42 = v0[3];
  v41 = v0[4];
  v2 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
  swift_beginAccess();
  v3 = *&v1[v2];
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v7 = 1 << *(*&v1[v2] + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v43 = *&v1[v2];
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          return;
        }

        v9 = *(v5 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_9:
    v13 = *(*(v43 + 56) + 8 * (__clz(__rbit64(v9)) | (v11 << 6)));

    v14 = v13;
    v15 = [v14 identifier];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = [v42 identifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v44 == v19 && v17 == v21)
    {
      break;
    }

    v9 &= v9 - 1;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_18;
    }
  }

LABEL_18:

  v11 = v1;
  v24 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_removedParticipantIdentityIdentifiers];

  v25 = [v42 identifier];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  LOBYTE(v25) = sub_1001BD5E8(v26, v28, v24);

  if (v25)
  {
    return;
  }

  if (qword_100529B70 != -1)
  {
LABEL_24:
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100015AFC(v29, qword_100529B78);
  v30 = v11;
  v31 = v42;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v45 = v36;
    *v34 = 138543874;
    *(v34 + 4) = v30;
    *v35 = v30;
    *(v34 + 12) = 2082;
    v37 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v38 = *&v30[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v39 = v30;
    *(v34 + 14) = sub_10002C9C8(v37, v38, &v45);
    *(v34 + 22) = 2112;
    *(v34 + 24) = v31;
    v35[1] = v31;
    v40 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "[%{public}@]<%{public}s> Auto-approving pre-authorized identity: %@", v34, 0x20u);
    sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
    swift_arrayDestroy();

    sub_100026A44(v36);
  }

  *v41 = 1;
}

uint64_t sub_10021D638()
{
  v1 = [*(v0 + 24) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  swift_beginAccess();
  sub_100008318(&v6, v2, v4);
  swift_endAccess();
}

void sub_10021D6DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529B78);
  v4 = v2;
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2082;
    v9 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v4;
    *(v7 + 14) = sub_10002C9C8(v9, v10, v18);
    *(v7 + 22) = 2080;
    v12 = [v1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, v18);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Adding pending participant: %s", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  swift_beginAccess();
  swift_unknownObjectRetain();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v4[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1002021D8(1);
}

void sub_10021D984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100015AFC(v3, qword_100529B78);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = swift_slowAlloc();
    *v7 = 138543874;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2082;
    v9 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v4;
    *(v7 + 14) = sub_10002C9C8(v9, v10, v21);
    *(v7 + 22) = 2080;
    v12 = [v2 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10002C9C8(v13, v15, v21);

    *(v7 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> Removing pending participant: %s", v7, 0x20u);
    sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();
  }

  v17 = OBJC_IVAR___MRDFastSyncGroupSession_pendingParticipants;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v18 = sub_10021F5CC(&v4[v17], v2);
  swift_unknownObjectRelease();
  v19 = *&v4[v17];
  if (v19 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20 >= v18)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20 >= v18)
    {
LABEL_7:
      sub_10021F9FC(v18, v20);
      swift_endAccess();
      sub_1002021D8(1);
      return;
    }
  }

  __break(1u);
}

void sub_10021DCBC()
{
  v1 = *(v0 + 16);
  v2 = (*((swift_isaMask & *v1) + 0x2B8))();
  if (v2)
  {
    v3 = v2;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = (*((swift_isaMask & *v1) + 0x2A0))();
    if (v4)
    {
      v5 = v4;
      [v3 session:v1 didReceiveRemoteControlMessage:isa from:v4];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10021DDE4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 40);
  v4 = (*((swift_isaMask & *v2) + 0x2B8))();
  if (v4)
  {
    v5 = v4;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v5 session:v2 didReceiveRemoteControlMessage:isa from:v3];
    swift_unknownObjectRelease();
  }
}

unint64_t sub_10021DECC()
{
  result = qword_1005222A8;
  if (!qword_1005222A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222A8);
  }

  return result;
}

double sub_10021DF20(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_10021DF30(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1001BC5A8(&qword_1005228A0, &qword_100450018);
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
  v38 = v5;
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
        sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
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
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
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
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_10021E220(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_100008318(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

void *sub_10021E2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v5 = a1;
  sub_10021AE54(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = _HashTable.startBucket.getter();
  v8 = 0;
  v50 = v5 + 72;
  v51 = v2;
  v52 = a2;
  v53 = v5 + 64;
  v54 = v5;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_26;
    }

    v58 = 1 << v7;
    v59 = v7 >> 6;
    v56 = v8;
    v57 = *(v5 + 36);
    v60 = v7;
    v12 = (*(v5 + 56) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];

    v15 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
    swift_beginAccess();
    v16 = *(a2 + v15);

    sub_1001BD5E8(v14, v13, v16);

    v17 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
    swift_beginAccess();
    v18 = *(a2 + v17);
    if (!*(v18 + 16))
    {
      goto LABEL_27;
    }

    v19 = sub_10000698C(v14, v13);
    if ((v20 & 1) == 0)
    {
      goto LABEL_28;
    }

    v21 = v3;
    v22 = (*(v18 + 56) + 16 * v19);
    v24 = *v22;
    v23 = v22[1];
    v25 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
    swift_beginAccess();
    v26 = *(a2 + v25);
    if (!*(v26 + 16))
    {
      goto LABEL_29;
    }

    v27 = sub_10000698C(v24, v23);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_30;
    }

    v30 = *(*(v26 + 56) + 8 * v27);

    sub_10036D3A4();
    if (v55)
    {
      goto LABEL_34;
    }

    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;

    v3 = v21;
    v40 = v21[2];
    v39 = v21[3];
    if (v40 >= v39 >> 1)
    {
      sub_10021AE54((v39 > 1), v40 + 1, 1);
      v3 = v21;
    }

    v3[2] = v40 + 1;
    v41 = &v3[4 * v40];
    v41[4] = v35;
    v41[5] = v36;
    v41[6] = v37;
    *(v41 + 56) = v38 & 1;
    *(v41 + 57) = BYTE1(v38) & 1;
    *(v41 + 58) = BYTE2(v38) & 1;
    v6 = v53;
    v5 = v54;
    v9 = 1 << *(v54 + 32);
    if (v60 >= v9)
    {
      goto LABEL_31;
    }

    v42 = *(v53 + 8 * v59);
    if ((v42 & v58) == 0)
    {
      goto LABEL_32;
    }

    if (v57 != *(v54 + 36))
    {
      goto LABEL_33;
    }

    v43 = v42 & (-2 << (v60 & 0x3F));
    if (v43)
    {
      v9 = __clz(__rbit64(v43)) | v60 & 0x7FFFFFFFFFFFFFC0;
      v10 = v51;
      v11 = v56;
    }

    else
    {
      v44 = v59 << 6;
      v45 = v59 + 1;
      v10 = v51;
      v46 = (v50 + 8 * v59);
      v11 = v56;
      while (v45 < (v9 + 63) >> 6)
      {
        v48 = *v46++;
        v47 = v48;
        v44 += 64;
        ++v45;
        if (v48)
        {
          sub_10000A16C(v60, v57, 0);
          v9 = __clz(__rbit64(v47)) + v44;
          goto LABEL_4;
        }
      }

      sub_10000A16C(v60, v57, 0);
    }

LABEL_4:
    v8 = v11 + 1;
    v7 = v9;
    a2 = v52;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:

  __break(1u);
  return result;
}

void sub_10021E668(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a1;
  v44 = type metadata accessor for UUID();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Participant();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a4;
  v50 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v42 = (a4 + OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier);
  v47 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  v40 = 0;
  v41 = (v6 + 8);
  v48 = v8;
  v45 = (v8 + 8);
  v46 = v8 + 16;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_13:
    v22 = v19 | (v17 << 6);
    (*(v48 + 16))(v10, *(v50 + 48) + *(v48 + 72) * v22, v51);
    v23 = Participant.handle.getter();
    v25 = v24;
    if (!*(*(v49 + v47) + 16))
    {
LABEL_4:

      goto LABEL_5;
    }

    v26 = v23;

    sub_10000698C(v26, v25);
    v28 = v27;

    if (v28)
    {
      v29 = v43;
      Participant.id.getter();
      v30 = UUID.uuidString.getter();
      v32 = v31;
      (*v41)(v29, v44);
      v33 = v42[1];
      if (v33)
      {
        if (v30 == *v42 && v33 == v32)
        {
          goto LABEL_4;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        (*v45)(v10, v51);
        if ((v34 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {

        (*v45)(v10, v51);
LABEL_21:
        *(v39 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        if (__OFADD__(v40++, 1))
        {
          __break(1u);
LABEL_24:
          v36 = v50;

          sub_1001DF2D8(v39, v38, v40, v36);
          return;
        }
      }
    }

    else
    {
LABEL_5:
      (*v45)(v10, v51);
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= v18)
    {
      goto LABEL_24;
    }

    v21 = *(v12 + 8 * v17);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_10021EA38(uint64_t a1, void *a2)
{
  v3 = v2;
  v43 = type metadata accessor for UUID();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Participant();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v9) = *(a1 + 32);
  v11 = v9 & 0x3F;
  v12 = ((1 << v9) + 63) >> 6;
  v13 = 8 * v12;
  v14 = a2;
  v15 = v14;
  if (v11 > 0xD)
  {
    goto LABEL_28;
  }

  while (2)
  {
    v36 = v12;
    v37 = v3;
    v35 = &v35;
    __chkstk_darwin(v14);
    v38 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v13);
    v16 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v17 = -1;
    if (v13 < 64)
    {
      v17 = ~(-1 << v13);
    }

    v12 = v17 & *(a1 + 56);
    v41 = &v15[OBJC_IVAR___MRDFastSyncGroupSession_localFastSyncIdentifier];
    v49 = v15;
    v46 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
    swift_beginAccess();
    v3 = 0;
    v18 = v6;
    v6 = (v13 + 63) >> 6;
    v39 = 0;
    v40 = (v18 + 8);
    v47 = v8;
    v48 = a1;
    v44 = (v8 + 8);
    v45 = v8 + 16;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v8 = v19 | (v3 << 6);
      (*(v47 + 16))(v10, *(a1 + 48) + *(v47 + 72) * v8, v50);
      v22 = Participant.handle.getter();
      v15 = v23;
      v13 = *&v49[v46];
      if (!*(v13 + 16))
      {
LABEL_5:

        goto LABEL_6;
      }

      v24 = v22;

      sub_10000698C(v24, v15);
      v26 = v25;

      if (v26)
      {
        v27 = v42;
        Participant.id.getter();
        v13 = UUID.uuidString.getter();
        v15 = v28;
        (*v40)(v27, v43);
        v29 = *(v41 + 1);
        if (v29)
        {
          a1 = v48;
          if (v13 == *v41 && v29 == v15)
          {
            goto LABEL_5;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*v44)(v10, v50);
          if ((v13 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {

          (*v44)(v10, v50);
          a1 = v48;
LABEL_22:
          *&v38[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
LABEL_25:
            v31 = sub_1001DF2D8(v38, v36, v39, a1);

            return v31;
          }
        }
      }

      else
      {
LABEL_6:
        (*v44)(v10, v50);
        a1 = v48;
      }
    }

    v20 = v3;
    while (1)
    {
      v3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v3 >= v6)
      {
        goto LABEL_25;
      }

      v21 = *(v16 + 8 * v3);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_28:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v33 = swift_slowAlloc();
  v34 = v15;
  v31 = sub_10021B1D0(v33, v12, a1, v34);

  return v31;
}

unint64_t sub_10021EF3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_1005228C0, &qword_10045B1A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000698C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10021F050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100522840, &qword_10044FE70);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001D9AC(v4, &v13, &unk_100527DF0, &unk_100457610);
      v5 = v13;
      v6 = v14;
      result = sub_10000698C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001C4088(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10021F180(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_100018D7C(0, &qword_100522878, SKPresentDevice_ptr);
    sub_100222D2C();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100218740(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10021F2C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

unint64_t sub_10021F360(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10021F420(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v19 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
      swift_unknownObjectRetain();
    }

    v5 = [v4 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [a2 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    if (v6 == v10 && v8 == v12)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_unknownObjectRelease();

    if (v14)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();

  return v3;
}

unint64_t sub_10021F5CC(unint64_t *a1, void *a2)
{
  v4 = a2;
  v6 = *a1;
  result = sub_10021F420(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = a1;
  v27 = result;
  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v27;
      }
    }

    else if (v9 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v27;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v11 = *(v6 + 8 * v9 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    v12 = [v11 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v3 = v4;
    v16 = [v4 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (v13 == v17 && v15 == v19)
    {
LABEL_8:
      swift_unknownObjectRelease();

LABEL_9:
      v4 = v3;
      goto LABEL_10;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_unknownObjectRelease();

    if (v20)
    {
      goto LABEL_9;
    }

    v4 = v3;
    if (v27 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27 >= v23)
        {
          goto LABEL_53;
        }

        if (v9 >= v23)
        {
          goto LABEL_54;
        }

        v21 = *(v6 + 32 + 8 * v27);
        v22 = *(v6 + 32 + 8 * v9);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
      {
        v6 = sub_10021C368(v6);
        v24 = (v6 >> 62) & 1;
      }

      else
      {
        LODWORD(v24) = 0;
      }

      v25 = v6 & 0xFFFFFFFFFFFFFF8;
      *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v27 + 0x20) = v22;
      swift_unknownObjectRelease();
      if ((v6 & 0x8000000000000000) != 0 || v24)
      {
        v6 = sub_10021C368(v6);
        v25 = v6 & 0xFFFFFFFFFFFFFF8;
        if ((v9 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v27;
        }
      }

      else if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v9 >= *(v25 + 16))
      {
        goto LABEL_51;
      }

      *(v25 + 8 * v9 + 32) = v21;
      swift_unknownObjectRelease();
      *v26 = v6;
    }

    v10 = __OFADD__(v27++, 1);
    if (v10)
    {
      goto LABEL_50;
    }

LABEL_10:
    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10021F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1001BC5A8(&unk_100522CB0, &unk_10044EC00);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10021F9FC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_10021B99C(result, 1);

  return sub_10021F8F0(v5, v3, 0);
}

Swift::Int sub_10021FAD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001BC5A8(&qword_100521B10, &unk_100450000);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
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

unint64_t sub_10021FC78()
{
  result = qword_100529BB0;
  if (!qword_100529BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100529BB0);
  }

  return result;
}

unint64_t sub_10021FD28()
{
  result = qword_100529BB8[0];
  if (!qword_100529BB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100529BB8);
  }

  return result;
}

unint64_t sub_10021FD7C()
{
  result = qword_1005222E0;
  if (!qword_1005222E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222E0);
  }

  return result;
}

unint64_t sub_10021FDF4()
{
  result = qword_1005222F0;
  if (!qword_1005222F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222F0);
  }

  return result;
}

unint64_t sub_10021FE4C()
{
  result = qword_1005222F8;
  if (!qword_1005222F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005222F8);
  }

  return result;
}

unint64_t sub_10021FEA4()
{
  result = qword_100522300;
  if (!qword_100522300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522300);
  }

  return result;
}

unint64_t sub_10021FEFC()
{
  result = qword_100522308;
  if (!qword_100522308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522308);
  }

  return result;
}

unint64_t sub_10021FF54()
{
  result = qword_100522310;
  if (!qword_100522310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522310);
  }

  return result;
}

unint64_t sub_10021FFB0()
{
  result = qword_100522320;
  if (!qword_100522320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522320);
  }

  return result;
}

uint64_t type metadata accessor for PresenceDataSource(uint64_t a1)
{
  result = qword_10052A550;
  if (!qword_10052A550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100220324(uint64_t a1)
{
  sub_100220450(319, &qword_100522808, &qword_100522810, &unk_10044FBE8);
  if (v1 <= 0x3F)
  {
    sub_100220450(319, &qword_100522818, &unk_100522820, &qword_10044EA80);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100220450(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1001C2EC8(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteControlActivity.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RemoteControlActivity.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_100220598()
{
  result = qword_10052A660[0];
  if (!qword_10052A660[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A660);
  }

  return result;
}

unint64_t sub_1002205F0()
{
  result = qword_10052A870[0];
  if (!qword_10052A870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A870);
  }

  return result;
}

unint64_t sub_100220648()
{
  result = qword_10052A980;
  if (!qword_10052A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052A980);
  }

  return result;
}

unint64_t sub_1002206A0()
{
  result = qword_10052A988[0];
  if (!qword_10052A988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052A988);
  }

  return result;
}

unint64_t sub_1002206F8()
{
  result = qword_10052AA10;
  if (!qword_10052AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10052AA10);
  }

  return result;
}

unint64_t sub_100220750()
{
  result = qword_10052AA18[0];
  if (!qword_10052AA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10052AA18);
  }

  return result;
}

uint64_t sub_1002207A4(uint64_t a1)
{
  v33 = a1;
  v2 = type metadata accessor for Participant();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((v1[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] & 1) == 0)
  {
    sub_10021DECC();
    v30 = swift_allocError();
    *v31 = 5;
    sub_100204BF8(v30);
  }

  if (qword_100529B70 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v14 = type metadata accessor for Logger();
  sub_100015AFC(v14, qword_100529B78);
  v15 = v1;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138543362;
    *(v18 + 4) = v15;
    *v19 = v15;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v16, v17, "[%{public}@] Leader should not receive session end messages.", v18, 0xCu);
    sub_1000038A4(v19, &qword_100521870, &unk_10044EA70);
  }

  v22 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
  v21 = *&v15[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v2;
  (*(v3 + 16))(&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v2);
  v26 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = v24;
  (*(v3 + 32))(&v27[v26], &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v28 = &v27[(v4 + v26 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v28 = v22;
  *(v28 + 1) = v21;

  sub_1001BF864(0, 0, v7, &unk_100450160, v27);
}

void sub_100220C10(void *a1)
{
  v2 = v1;
  v103 = a1;
  v3 = type metadata accessor for Participant();
  v4 = *(v3 - 8);
  v99 = v3;
  v100 = v4;
  v5 = __chkstk_darwin(v3);
  v98 = &v95[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __chkstk_darwin(v5);
  v9 = &v95[-v8];
  __chkstk_darwin(v7);
  v11 = &v95[-v10];
  v12 = type metadata accessor for Participants();
  v101 = *(v12 - 8);
  v102 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v95[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v13);
  v18 = &v95[-v17];
  __chkstk_darwin(v16);
  v20 = &v95[-v19];
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v95[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v24 = v25;
  (*(v22 + 104))(v24, enum case for DispatchPredicate.onQueue(_:), v21);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v22 + 8))(v24, v21);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v2[OBJC_IVAR___MRDFastSyncGroupSession_isLeader] != 1)
  {
    if (qword_100529B70 == -1)
    {
LABEL_7:
      v31 = type metadata accessor for Logger();
      sub_100015AFC(v31, qword_100529B78);
      v32 = v2;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138543362;
        *(v35 + 4) = v32;
        *v36 = v32;
        v37 = v32;
        _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}@] Participant should not receive transport migration messages.", v35, 0xCu);
        sub_1000038A4(v36, &qword_100521870, &unk_10044EA70);
      }

      return;
    }

LABEL_32:
    swift_once();
    goto LABEL_7;
  }

  if (v2[OBJC_IVAR___MRDFastSyncGroupSession_hasEncounteredLowPowerError] == 1)
  {
    MRDFastSyncGroupSessionState.rawValue.getter();
    v29 = sub_10036E884(v27, v28);

    static Participants.only(_:)();
    v30 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
    if (v30)
    {

      sub_10020CF20(7u, v29, v20, v30, 0, 0);

      (*(v101 + 8))(v20, v102);
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  v38 = v103;
  v39 = Participant.handle.getter();
  v41 = v40;
  v42 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  if (*(*&v2[v42] + 16))
  {

    sub_10000698C(v39, v41);
    v44 = v43;

    if (v44)
    {
      v45 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_presenceDataSource];
      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v45;
      static Published.subscript.getter();

      v47 = v104;
      v48 = Participant.handle.getter();
      v50 = sub_1001BD5E8(v48, v49, v47);

      if ((v50 & 1) == 0)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_100015AFC(v68, qword_100529B78);
        v70 = v99;
        v69 = v100;
        (*(v100 + 16))(v11, v38, v99);
        v71 = v2;

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v97 = v75;
          v98 = swift_slowAlloc();
          v104 = v98;
          *v74 = 138543874;
          *(v74 + 4) = v71;
          *v75 = v71;
          *(v74 + 12) = 2080;
          sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
          v76 = v71;
          v96 = v73;
          v77 = dispatch thunk of CustomStringConvertible.description.getter();
          v79 = v78;
          (*(v69 + 8))(v11, v70);
          v80 = sub_10002C9C8(v77, v79, &v104);

          *(v74 + 14) = v80;
          *(v74 + 22) = 2082;
          v81 = Set.description.getter();
          v83 = sub_10002C9C8(v81, v82, &v104);

          *(v74 + 24) = v83;
          _os_log_impl(&_mh_execute_header, v72, v96, "[%{public}@] Could not find: %s in present handles: %{public}s. Cannot continue transport migration.", v74, 0x20u);
          sub_1000038A4(v97, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        else
        {

          (*(v69 + 8))(v11, v70);
        }

        MRDFastSyncGroupSessionState.rawValue.getter();
        v86 = sub_10036E884(v84, v85);

        static Participants.only(_:)();
        v87 = *&v71[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
        if (v87)
        {

          sub_10020CF20(7u, v86, v15, v87, 0, 0);

          (*(v101 + 8))(v15, v102);
          return;
        }

        goto LABEL_35;
      }

      v51 = OBJC_IVAR___MRDFastSyncGroupSession_connectionManager;
      v52 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_connectionManager];
      if (v52)
      {

        v53 = Participant.handle.getter();
        (*(*v52 + 368))(1, v53, v54);

        v88 = *&v2[v51];
        if (v88)
        {

          v89 = Participant.handle.getter();
          (*(*v88 + 392))(1, v89, v90);

          MRDFastSyncGroupSessionState.rawValue.getter();
          v93 = sub_10036E884(v91, v92);

          static Participants.only(_:)();
          v94 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_groupMessenger];
          if (v94)
          {

            sub_10020CF20(7u, v93, v18, v94, 0, 0);

            (*(v101 + 8))(v18, v102);
            return;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100015AFC(v55, qword_100529B78);
  v57 = v99;
  v56 = v100;
  (*(v100 + 16))(v9, v38, v99);
  v58 = v2;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v104 = v103;
    *v61 = 138543618;
    *(v61 + 4) = v58;
    *v62 = v58;
    *(v61 + 12) = 2080;
    sub_100004858(&qword_1005222C0, 255, &type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v63 = v58;
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    (*(v56 + 8))(v9, v57);
    v67 = sub_10002C9C8(v64, v66, &v104);

    *(v61 + 14) = v67;
    _os_log_impl(&_mh_execute_header, v59, v60, "[%{public}@] Ignoring transport migration message from unmapped participant %s.", v61, 0x16u);
    sub_1000038A4(v62, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v103);
  }

  else
  {

    (*(v56 + 8))(v9, v57);
  }
}

void sub_100221AB4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v104 = *(v4 - 8);
  __chkstk_darwin(v4);
  v102 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DispatchQoS();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for Participant();
  v7 = *(v105 - 8);
  v8 = __chkstk_darwin(v105);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v96 - v12;
  __chkstk_darwin(v11);
  v99 = &v96 - v14;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (&v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v2[OBJC_IVAR___MRDFastSyncGroupSession_executionQueue];
  *v18 = v19;
  (*(v16 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v15);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_12;
  }

  v21 = Participant.handle.getter();
  v23 = v22;
  v24 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToMediaRemoteIdentifierMap;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (*(v25 + 16))
  {
    v98 = v4;
    v26 = v7;

    v27 = sub_10000698C(v21, v23);
    v29 = v28;

    if (v29)
    {
      v30 = (*(v25 + 56) + 16 * v27);
      v31 = *v30;
      v32 = v30[1];

      v33 = OBJC_IVAR___MRDFastSyncGroupSession_guests;
      swift_beginAccess();
      v34 = *&v2[v33];

      v35 = sub_1001BD5E8(v31, v32, v34);

      if (v35)
      {
        v36 = v26;

        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_100015AFC(v37, qword_100529B78);
        v38 = *(v26 + 16);
        v39 = v105;
        v38(v13, a1, v105);
        v40 = v2;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          aBlock[0] = swift_slowAlloc();
          *v43 = 138543874;
          *(v43 + 4) = v40;
          *v44 = v40;
          *(v43 + 12) = 2080;
          v45 = v40;
          *(v43 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
          *(v43 + 22) = 2082;
          v46 = Participant.handle.getter();
          v48 = v47;
          (*(v36 + 8))(v13, v39);
          v49 = sub_10002C9C8(v46, v48, aBlock);

          *(v43 + 24) = v49;
          _os_log_impl(&_mh_execute_header, v41, v42, "[%{public}@] %s guest cannot request to remove all participants: %{public}s", v43, 0x20u);
          sub_1000038A4(v44, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();

LABEL_14:

          return;
        }

        (*(v36 + 8))(v13, v39);
        return;
      }

      v60 = OBJC_IVAR___MRDFastSyncGroupSession_participantIdentityMap;
      swift_beginAccess();
      v61 = *&v2[v60];
      if (*(v61 + 16))
      {

        v62 = sub_10000698C(v31, v32);
        if (v63)
        {
          v64 = (*(v61 + 56) + 16 * v62);
          v65 = *v64;
          v35 = v64[1];
          v60 = OBJC_IVAR___MRDFastSyncGroupSession_identities;
          swift_beginAccess();
          v66 = *&v2[v60];
          if (*(v66 + 16))
          {

            v67 = sub_10000698C(v65, v35);
            v60 = v68;

            if (v60)
            {
              v69 = *(*(v66 + 56) + 8 * v67);

              v70 = objc_allocWithZone(MRDFastSyncGroupSessionParticipant);
              v71 = String._bridgeToObjectiveC()();

              v35 = [v70 initWithIdentifier:v71 identity:v69 connected:1 guest:0];

              v60 = v105;
              if (qword_100529B70 == -1)
              {
LABEL_21:
                v72 = type metadata accessor for Logger();
                sub_100015AFC(v72, qword_100529B78);
                v73 = v26;
                v74 = *(v26 + 16);
                v75 = v99;
                v74(v99, a1, v60);
                v76 = v2;
                v77 = Logger.logObject.getter();
                v78 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v77, v78))
                {
                  v79 = swift_slowAlloc();
                  v80 = swift_slowAlloc();
                  v97 = v35;
                  v81 = v60;
                  v82 = v80;
                  v96 = swift_slowAlloc();
                  aBlock[0] = v96;
                  *v79 = 138543874;
                  *(v79 + 4) = v76;
                  *v82 = v76;
                  *(v79 + 12) = 2080;
                  v83 = v76;
                  *(v79 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
                  *(v79 + 22) = 2082;
                  v84 = Participant.handle.getter();
                  v86 = v85;
                  v87 = v81;
                  v35 = v97;
                  (*(v73 + 8))(v75, v87);
                  v88 = sub_10002C9C8(v84, v86, aBlock);

                  *(v79 + 24) = v88;
                  _os_log_impl(&_mh_execute_header, v77, v78, "[%{public}@] %s from: %{public}s", v79, 0x20u);
                  sub_1000038A4(v82, &qword_100521870, &unk_10044EA70);

                  swift_arrayDestroy();
                }

                else
                {

                  (*(v73 + 8))(v75, v60);
                }

                v89 = v98;
                v90 = swift_allocObject();
                *(v90 + 16) = v76;
                *(v90 + 24) = v35;
                aBlock[4] = sub_100224734;
                aBlock[5] = v90;
                aBlock[0] = _NSConcreteStackBlock;
                aBlock[1] = 1107296256;
                aBlock[2] = sub_100003D98;
                aBlock[3] = &unk_1004C3CD8;
                v91 = _Block_copy(aBlock);
                v92 = v76;
                v93 = v35;
                v94 = v100;
                static DispatchQoS.unspecified.getter();
                v106 = _swiftEmptyArrayStorage;
                sub_100004858(&qword_100527410, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_1001BC5A8(&unk_100522280, &unk_10044F590);
                sub_10000462C(&qword_100527420, &unk_100522280, &unk_10044F590, &protocol conformance descriptor for [A]);
                v95 = v102;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                OS_dispatch_queue.async(group:qos:flags:execute:)();
                _Block_release(v91);

                (*(v104 + 8))(v95, v89);
                (*(v101 + 8))(v94, v103);

                return;
              }

LABEL_32:
              swift_once();
              goto LABEL_21;
            }

LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_30;
    }

    v7 = v26;
  }

  else
  {
  }

  v13 = v105;
  if (qword_100529B70 != -1)
  {
    goto LABEL_27;
  }

LABEL_12:
  v50 = type metadata accessor for Logger();
  sub_100015AFC(v50, qword_100529B78);
  (*(v7 + 16))(v10, a1, v13);
  v51 = v2;
  v41 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v41, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    aBlock[0] = v104;
    *v53 = 138543874;
    *(v53 + 4) = v51;
    *v54 = v51;
    *(v53 + 12) = 2080;
    v55 = v51;
    *(v53 + 14) = sub_10002C9C8(0xD00000000000002CLL, 0x800000010043BC60, aBlock);
    *(v53 + 22) = 2082;
    v56 = Participant.handle.getter();
    v58 = v57;
    (*(v7 + 8))(v10, v13);
    v59 = sub_10002C9C8(v56, v58, aBlock);

    *(v53 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v41, v52, "[%{public}@] %s message received from unknown handle: %{public}s", v53, 0x20u);
    sub_1000038A4(v54, &qword_100521870, &unk_10044EA70);

    swift_arrayDestroy();

    goto LABEL_14;
  }

  (*(v7 + 8))(v10, v13);
}

unint64_t *sub_1002227D8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = result;
  v27 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v29 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    if (*(a4 + 16))
    {
      v26 = v11 | (v5 << 6);
      v14 = (*(a3 + 56) + 16 * v26);
      v15 = *v14;
      v16 = v14[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(a4 + 32);
      v19 = v17 & ~v18;
      if ((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a4 + 48) + 16 * v19);
          v22 = *v21 == v15 && v21[1] == v16;
          if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (__OFADD__(v27++, 1))
        {
          __break(1u);
          return sub_10021B650(v25, a2, v27, a3);
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_10021B650(v25, a2, v27, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_100222A00(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10021B2E0(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_1002227D8((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

unint64_t sub_100222BC0()
{
  sub_1001BC5A8(&qword_100522848, &qword_10044FE78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EA40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 48) = v1;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v2;
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 96) = v3;
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v4;
  *(inited + 128) = swift_getKeyPath();
  *(inited + 136) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 144) = v5;
  v6 = sub_10003D4B4(inited, &qword_100522858, &qword_10044FF50, &qword_100522860, &qword_10044FF58);
  swift_setDeallocating();
  sub_1001BC5A8(&qword_100522850, &qword_10044FF48);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_100222D2C()
{
  result = qword_100522880;
  if (!qword_100522880)
  {
    sub_100018D7C(255, &qword_100522878, SKPresentDevice_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522880);
  }

  return result;
}

void sub_100222DC0(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100222DD0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_100222DE8()
{
  type metadata accessor for Date();
  sub_1001BC5A8(&unk_100521B40, &unk_10044ED80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10044EC70;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  Date.timeIntervalSinceNow.getter();
  *(inited + 48) = Double._bridgeToObjectiveC()();
  v2 = sub_1001D5788(inited);
  swift_setDeallocating();
  sub_1000038A4(inited + 32, &unk_1005228F0, &unk_100450070);
  return v2;
}

uint64_t sub_100222EE0(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = sub_1001BC5A8(&unk_100522910, &qword_10045C210);
  return v3(v4, v5, &a1[*(v6 + 48)]);
}

uint64_t sub_100222F5C(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 11)
  {
    return sub_1001C3FE0(a2, a3);
  }

  return result;
}

uint64_t sub_100222F78(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 11)
  {
    return sub_1001C4034(a2, a3);
  }

  return result;
}

uint64_t sub_100222FAC()
{
  v1 = type metadata accessor for GroupSessionMessenger.MessageContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  sub_1001C4034(*(v0 + 32), *(v0 + 40));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100223090(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for GroupSessionMessenger.MessageContext() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return a1(v3, v6, v4, v5, v7);
}

uint64_t sub_10022312C()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_100206E44(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1002231D8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1002080B4(v5, v6, v7, v2, v3, v4);
}

void sub_100223280()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10021DECC();
    v2 = swift_allocError();
    *v3 = 0;
    sub_100204BF8(v2);
  }
}

void sub_100223324(uint64_t a1, const char *a2, const char *a3, ...)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100015AFC(v4, qword_100529B78);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25 = v9;
      *v7 = 136446466;
      v10 = _typeName(_:qualified:)();
      v12 = sub_10002C9C8(v10, v11, &v25);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v13;
      *v8 = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0x16u);
      sub_1000038A4(v8, &qword_100521870, &unk_10044EA70);

      sub_100026A44(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100015AFC(v15, qword_100529B78);

    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v17 = 136446466;
      v18 = _typeName(_:qualified:)();
      v20 = sub_10002C9C8(v18, v19, &v25);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2082;
      sub_100018D7C(0, &qword_100522970, IDSFirewallEntry_ptr);
      v21 = Array.description.getter();
      v23 = sub_10002C9C8(v21, v22, &v25);

      *(v17 + 14) = v23;
      _os_log_impl(&_mh_execute_header, oslog, v16, a3, v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1002236E8()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F34;

  return sub_100214934(v6, v7, v8, v2, v3, v5, v4);
}

void sub_1002237D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MRDFastSyncGroupSession_participantHandleToPresenceTimeoutTimerMap;
    swift_beginAccess();
    if (*(*&v4[v5] + 16))
    {

      sub_10000698C(v1, v2);
      v7 = v6;

      if (v7)
      {
        if (qword_100529B70 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100015AFC(v8, qword_100529B78);
        v9 = v4;

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v19[0] = swift_slowAlloc();
          *v12 = 138543874;
          *(v12 + 4) = v9;
          *v17 = v4;
          *(v12 + 12) = 2082;
          v14 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
          v13 = *&v9[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
          v15 = v9;

          v16 = sub_10002C9C8(v14, v13, v19);

          *(v12 + 14) = v16;
          *(v12 + 22) = 2082;
          *(v12 + 24) = sub_10002C9C8(v1, v2, v19);
          _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}@]<%{public}s> Lost handle: %{public}s timed out.", v12, 0x20u);
          sub_1000038A4(v17, &qword_100521870, &unk_10044EA70);

          swift_arrayDestroy();
        }

        swift_beginAccess();

        sub_1001EC6DC(0, v1, v2);
        swift_endAccess();
        swift_beginAccess();

        sub_100008318(&v18, v1, v2);
        swift_endAccess();

        sub_1002021D8(0);
      }
    }
  }
}

void sub_100223AE0()
{
  v1 = *(v0 + 16);
  v2 = *((swift_isaMask & *v1) + 0x2B8);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 session:v1 didUpdateMembers:isa];
    swift_unknownObjectRelease();
  }

  v6 = v2();
  if (v6)
  {
    v7 = v6;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v8 = Array._bridgeToObjectiveC()().super.isa;
    [v7 session:v1 didUpdateParticipants:v8];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100223C50()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_100223CA4(const char **a1)
{
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  result = (*((swift_isaMask & *v4) + 0x2B8))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100223D54(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100223D68(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100223D7C()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F30;

  return sub_1001F97D0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void sub_100223E94()
{
  v1 = *(v0 + 16);
  v2 = *((swift_isaMask & *v1) + 0x2B8);
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    sub_100018D7C(0, &qword_100522998, MRUserIdentity_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 session:v1 didUpdateMembers:isa];
    swift_unknownObjectRelease();
  }

  v6 = v2();
  if (v6)
  {
    v7 = v6;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v8 = Array._bridgeToObjectiveC()().super.isa;
    [v7 session:v1 didUpdateParticipants:v8];
    swift_unknownObjectRelease();
  }

  v9 = v2();
  if (v9)
  {
    v10 = v9;
    sub_100018D7C(0, &qword_1005229A0, off_1004B3098);
    v11 = Array._bridgeToObjectiveC()().super.isa;
    [v10 session:v1 didUpdatePendingParticipants:v11];
    swift_unknownObjectRelease();
  }
}

void *sub_10022405C()
{
  v1 = *(v0 + 16);
  result = (*((swift_isaMask & *v1) + 0x2B8))();
  if (result)
  {
    [result sessionDidCompleteIdentityShare:v1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100224144(uint64_t a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    swift_errorRetain();
    if (qword_100529B70 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100015AFC(v3, qword_100529B78);
    swift_errorRetain();
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v7 = 138543874;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2082;
      v10 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
      v11 = *&v4[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
      v12 = v4;
      *(v7 + 14) = sub_10002C9C8(v10, v11, &v14);
      *(v7 + 22) = 2114;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 24) = v13;
      v8[1] = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}@]<%{public}s> IdentityShareReplyMessage send error %{public}@.", v7, 0x20u);
      sub_1001BC5A8(&qword_100521870, &unk_10044EA70);
      swift_arrayDestroy();

      sub_100026A44(v9);
    }

    else
    {
    }
  }
}

uint64_t sub_100224378()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F30;

  return sub_1001F97D0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

unint64_t sub_100224490()
{
  result = qword_1005229D0;
  if (!qword_1005229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005229D0);
  }

  return result;
}

unint64_t sub_1002244E4()
{
  result = qword_1005229D8;
  if (!qword_1005229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005229D8);
  }

  return result;
}

uint64_t sub_100224538()
{
  v1 = type metadata accessor for Participant();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10022461C()
{
  v2 = *(type metadata accessor for Participant() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100009F34;

  return sub_1001FDDD4(v8, v9, v10, v4, v0 + v3, v6, v7);
}

void *sub_100224740(const char **a1)
{
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = *(v3 + 24);
  result = (*((swift_isaMask & *v4) + 0x2B8))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002248A4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100009F30;

  return sub_1001EAD88(v3, v4, v5, v2);
}

uint64_t sub_100224938()
{
  v1 = *(v0 + 16);
  if (qword_100529B70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100015AFC(v2, qword_100529B78);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 138543618;
    *(v6 + 4) = v3;
    *v7 = v3;
    *(v6 + 12) = 2082;
    v9 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_identifier];
    v10 = *&v3[OBJC_IVAR___MRDFastSyncGroupSession_identifier + 8];
    v11 = v3;
    *(v6 + 14) = sub_10002C9C8(v9, v10, &v18);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}@]<%{public}s> Timed out waiting for session.", v6, 0x16u);
    sub_1000038A4(v7, &qword_100521870, &unk_10044EA70);

    sub_100026A44(v8);
  }

  sub_10021DECC();
  v12 = swift_allocError();
  *v13 = 1;
  v18 = sub_1001E6ABC();
  v14 = type metadata accessor for JoinTimingEvents();
  sub_100232B4C(v12, v14, &off_1004C33A8);
  *&v3[OBJC_IVAR___MRDFastSyncGroupSession____lazy_storage___joinTimings] = v18;

  v15 = swift_allocError();
  *v16 = 1;
  sub_100204BF8(v15);
}

unint64_t sub_100224B88()
{
  result = qword_100522A58;
  if (!qword_100522A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100522A58);
  }

  return result;
}

uint64_t sub_100224BDC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100009F30;

  return sub_1002053AC(v4, v5, v6, v2, v3);
}

uint64_t sub_100224C80()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001F54B8(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100224DC4(void (*a1)(void))
{

  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100224E20(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_10021DECC();
  swift_allocError();
  *v4 = a1;
  v3();
}

uint64_t sub_100224E8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100224ED4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100009F30;

  return sub_1001F25F0(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100224F7C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100224FBC(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_100225018()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100009F30;

  return sub_1001ED8AC(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_1002250CC()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10022511C(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

void sub_100225174(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001F77EC(a3);
  }
}

void sub_1002251F0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001F74C0(a1);
  }
}

unint64_t sub_100225518(char a1)
{
  if (a1)
  {
    return 0xD00000000000002ELL;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

uint64_t sub_10022554C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000002ELL;
  }

  else
  {
    v3 = 0xD00000000000002FLL;
  }

  if (v2)
  {
    v4 = "GroupSessionParticipant24";
  }

  else
  {
    v4 = "emote.proxyAuthorizationRequest";
  }

  if (*a2)
  {
    v5 = 0xD00000000000002ELL;
  }

  else
  {
    v5 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v6 = "emote.proxyAuthorizationRequest";
  }

  else
  {
    v6 = "GroupSessionParticipant24";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1002255F4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000011;
    }

    else
    {
      v3 = 0x65707954415347;
    }

    if (v2)
    {
      v4 = 0x800000010043C040;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000010043BC90;
  }

  else if (a1 == 3)
  {
    v3 = 0x4474736575716572;
    v4 = 0xEB00000000617461;
  }

  else
  {
    v3 = 0x7461446E656B6F74;
    v4 = 0xE900000000000061;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000011;
    }

    else
    {
      v6 = 0x65707954415347;
    }

    if (a2)
    {
      v5 = 0x800000010043C040;
    }

    else
    {
      v5 = 0xE700000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000010043BC90;
    if (v3 != 0xD000000000000011)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEB00000000617461;
    if (v3 != 0x4474736575716572)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE900000000000061;
    if (v3 != 0x7461446E656B6F74)
    {
LABEL_31:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}