unint64_t sub_1001A39F4()
{
  result = qword_10023F800;
  if (!qword_10023F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F800);
  }

  return result;
}

unint64_t sub_1001A3A4C()
{
  result = qword_10023F808;
  if (!qword_10023F808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F808);
  }

  return result;
}

uint64_t sub_1001A3AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1001A3AD4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226DF0;
  v9 = _Block_copy(v10);

  [v7 createDevelopmentPostbacksWithConfigurationData:isa reply:v9];
  _Block_release(v9);
}

uint64_t sub_1001A3BF4()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001A3CE4;

  return sub_100180DCC(sub_1001A3AC0, 0);
}

uint64_t sub_1001A3CE4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_1001A3E0C()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *(v3 + 16) = sub_1001A41F4;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1001A3F40;

  return sub_1001810F4(sub_1001889A0, v3);
}

uint64_t sub_1001A3F40()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1001A40C0;
  }

  else
  {
    v2 = sub_1001A4054;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001A4054()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A40C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001A412C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A9410;
  v9[3] = &unk_100226E40;
  v8 = _Block_copy(v9);

  [a1 setDeveloperModeEnabled:a6 & 1 reply:v8];
  _Block_release(v8);
}

uint64_t DeveloperModeRequest.retrieveDeveloperPostbackURL(forBundleID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1001A4220, 0, 0);
}

uint64_t sub_1001A4220()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = sub_1001A4584;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1001A4360;
  v6 = v0[2];

  return sub_10018130C(v6, sub_100188BBC, v4);
}

uint64_t sub_1001A4360()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10018814C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1001A44A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = String._bridgeToObjectiveC()();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001A9410;
  v10[3] = &unk_100226E18;
  v9 = _Block_copy(v10);

  [a1 retrieveDeveloperPostbackURLForBundleID:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_1001A45AC()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100181A08;
  v2 = *(v0 + 16);

  return sub_100181698(v2, sub_1001A3AD4, 0);
}

uint64_t sub_1001A46C0()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000152E0;

  return sub_1001810F4(sub_1001A3BB0, 0);
}

uint64_t sub_1001A47CC()
{
  if (qword_10023E520 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1001810F4(sub_1001A3BC4, 0);
}

uint64_t sub_1001A48BC(uint64_t a1)
{
  v2 = sub_1001A4A48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A48F8(uint64_t a1)
{
  v2 = sub_1001A4A48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t DeveloperModeRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023F810, &qword_1001C81D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_1001A4A48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1001A4A48()
{
  result = qword_10023F818;
  if (!qword_10023F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F818);
  }

  return result;
}

unint64_t sub_1001A4AC0()
{
  result = qword_10023F820;
  if (!qword_10023F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F820);
  }

  return result;
}

unint64_t sub_1001A4B18()
{
  result = qword_10023F828;
  if (!qword_10023F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F828);
  }

  return result;
}

uint64_t sub_1001A4B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static XPCClient.interface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];

  return v0;
}

id XPCClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCClient.init()()
{
  ObjectType = swift_getObjectType();
  UUID.init()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

void _s20AttributionKitCommon9XPCClientC14handleMessagesyy10Foundation4DataVF_0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10000CDE0(&qword_10023E868, &unk_1001C8330);
  sub_1001A5244();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v10 = v21;
  v11 = v21[2];
  if (v11)
  {
    v12 = 0;
    v13 = v21 + 5;
    while (v12 < *(v10 + 16))
    {
      v16 = *v13;
      if (*v13)
      {
        v14 = *(v13 - 1);
        sub_10000CDE0(&qword_10023D638, qword_1001C8340);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1001B93B0;
        *(v15 + 56) = &type metadata for String;
        *(v15 + 32) = v14;
        *(v15 + 40) = v16;

        print(_:separator:terminator:)();
      }

      else
      {
        if (qword_10023E548 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_10000DAC0(v17, static Logger.xpc);
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "Connection established", v20, 2u);
        }
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v2 = type metadata accessor for Logger();
    sub_10000DAC0(v2, static Logger.xpc);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21 = v6;
      *v5 = 136446210;
      swift_errorRetain();
      sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
      v7 = String.init<A>(describing:)();
      v9 = sub_10017AD04(v7, v8, &v21);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error decoding XPC client message: %{public}s", v5, 0xCu);
      sub_10000DB58(v6);
    }

    else
    {
    }
  }

  else
  {
LABEL_15:
  }
}

uint64_t type metadata accessor for XPCClient(uint64_t a1)
{
  result = qword_10023F860;
  if (!qword_10023F860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A51B4(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

unint64_t sub_1001A5244()
{
  result = qword_10023F870;
  if (!qword_10023F870)
  {
    sub_10000CCC0(&qword_10023E868, &unk_1001C8330);
    sub_1001A52C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F870);
  }

  return result;
}

unint64_t sub_1001A52C8()
{
  result = qword_10023F878;
  if (!qword_10023F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F878);
  }

  return result;
}

Swift::Bool __swiftcall isTestingEnabled()()
{
  v2[3] = &type metadata for FeatureFlag;
  v2[4] = sub_10017EEFC();
  v0 = isFeatureEnabled(_:)();
  sub_10000DB58(v2);
  return v0 & 1;
}

unint64_t sub_1001A5380()
{
  result = qword_10023F880;
  if (!qword_10023F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F880);
  }

  return result;
}

BOOL sub_1001A53FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1001A542C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A5460()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A5494(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6165627472616568;
      break;
    case 2:
      result = 0x6F68747541746F6ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD00000000000002ELL;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    case 14:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001A56A8(uint64_t a1)
{
  v2 = sub_1001A6CF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A56E4(uint64_t a1)
{
  v2 = sub_1001A6CF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5720(uint64_t a1)
{
  v2 = sub_1001A6CA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A575C(uint64_t a1)
{
  v2 = sub_1001A6CA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A57A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1001A71F0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1001A57C8(uint64_t a1)
{
  v2 = sub_1001A6C50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5804(uint64_t a1)
{
  v2 = sub_1001A6C50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5840(uint64_t a1)
{
  v2 = sub_1001A6E48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A587C(uint64_t a1)
{
  v2 = sub_1001A6E48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A58B8(uint64_t a1)
{
  v2 = sub_1001A6DA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A58F4(uint64_t a1)
{
  v2 = sub_1001A6DA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5930(uint64_t a1)
{
  v2 = sub_1001A6D4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A596C(uint64_t a1)
{
  v2 = sub_1001A6D4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A59A8(uint64_t a1)
{
  v2 = sub_1001A6FEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A59E4(uint64_t a1)
{
  v2 = sub_1001A6FEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5A20(uint64_t a1)
{
  v2 = sub_1001A70E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5A5C(uint64_t a1)
{
  v2 = sub_1001A70E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5A98(uint64_t a1)
{
  v2 = sub_1001A6F44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5AD4(uint64_t a1)
{
  v2 = sub_1001A6F44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5B10(uint64_t a1)
{
  v2 = sub_1001A6DF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5B4C(uint64_t a1)
{
  v2 = sub_1001A6DF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5B88(uint64_t a1)
{
  v2 = sub_1001A6EF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5BC4(uint64_t a1)
{
  v2 = sub_1001A6EF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5C00(uint64_t a1)
{
  v2 = sub_1001A6E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5C3C(uint64_t a1)
{
  v2 = sub_1001A6E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5C78(uint64_t a1)
{
  v2 = sub_1001A6F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5CB4(uint64_t a1)
{
  v2 = sub_1001A6F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5CF0(uint64_t a1)
{
  v2 = sub_1001A7094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5D2C(uint64_t a1)
{
  v2 = sub_1001A7094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5D68(uint64_t a1)
{
  v2 = sub_1001A7040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5DA4(uint64_t a1)
{
  v2 = sub_1001A7040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001A5DE0(uint64_t a1)
{
  v2 = sub_1001A713C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A5E1C(uint64_t a1)
{
  v2 = sub_1001A713C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AttributionKitError.encode(to:)(void *a1, uint64_t a2)
{
  v92 = a2;
  v3 = sub_10000CDE0(&qword_10023F888, &qword_1001C8410);
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v50 - v4;
  v5 = sub_10000CDE0(&qword_10023F890, &qword_1001C8418);
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v50 - v6;
  v7 = sub_10000CDE0(&qword_10023F898, &qword_1001C8420);
  v84 = *(v7 - 8);
  v85 = v7;
  __chkstk_darwin(v7);
  v83 = &v50 - v8;
  v9 = sub_10000CDE0(&qword_10023F8A0, &qword_1001C8428);
  v81 = *(v9 - 8);
  v82 = v9;
  __chkstk_darwin(v9);
  v80 = &v50 - v10;
  v11 = sub_10000CDE0(&qword_10023F8A8, &qword_1001C8430);
  v78 = *(v11 - 8);
  v79 = v11;
  __chkstk_darwin(v11);
  v77 = &v50 - v12;
  v76 = sub_10000CDE0(&qword_10023F8B0, &qword_1001C8438);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v50 - v13;
  v73 = sub_10000CDE0(&qword_10023F8B8, &qword_1001C8440);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v50 - v14;
  v70 = sub_10000CDE0(&qword_10023F8C0, &qword_1001C8448);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v50 - v15;
  v67 = sub_10000CDE0(&qword_10023F8C8, &qword_1001C8450);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v65 = &v50 - v16;
  v64 = sub_10000CDE0(&qword_10023F8D0, &qword_1001C8458);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v50 - v17;
  v61 = sub_10000CDE0(&qword_10023F8D8, &qword_1001C8460);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v50 - v18;
  v58 = sub_10000CDE0(&qword_10023F8E0, &qword_1001C8468);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v50 - v19;
  v55 = sub_10000CDE0(&qword_10023F8E8, &qword_1001C8470);
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v50 - v20;
  v21 = sub_10000CDE0(&qword_10023F8F0, &qword_1001C8478);
  v52 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  v24 = sub_10000CDE0(&qword_10023F8F8, &qword_1001C8480);
  v51 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v50 - v25;
  v94 = sub_10000CDE0(&qword_10023F900, &qword_1001C8488);
  v27 = *(v94 - 8);
  __chkstk_darwin(v94);
  v29 = &v50 - v28;
  sub_10000DA7C(a1, a1[3]);
  sub_1001A6C50();
  v93 = v29;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v30 = (v27 + 8);
  switch(v92)
  {
    case 1:
      v95[2] = 1;
      sub_1001A70E8();
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v23, v21);
      goto LABEL_19;
    case 2:
      v95[3] = 2;
      sub_1001A7094();
      v44 = v53;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v54 + 8);
      v41 = v44;
      v42 = &v87;
      goto LABEL_18;
    case 3:
      v95[4] = 3;
      sub_1001A7040();
      v45 = v56;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v57 + 8);
      v41 = v45;
      v42 = &v90;
      goto LABEL_18;
    case 4:
      v95[5] = 4;
      sub_1001A6FEC();
      v39 = v59;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v60 + 8);
      v41 = v39;
      v42 = &v93;
      goto LABEL_18;
    case 5:
      v95[6] = 5;
      sub_1001A6F98();
      v47 = v62;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v63 + 8);
      v41 = v47;
      v42 = v95;
      goto LABEL_18;
    case 6:
      v95[7] = 6;
      sub_1001A6F44();
      v48 = v65;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v66 + 8);
      v41 = v48;
      v42 = v96;
      goto LABEL_18;
    case 7:
      v96[0] = 7;
      sub_1001A6EF0();
      v46 = v68;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v69 + 8);
      v41 = v46;
      v42 = &v97;
      goto LABEL_18;
    case 8:
      v96[1] = 8;
      sub_1001A6E9C();
      v49 = v71;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *(v72 + 8);
      v41 = v49;
      v42 = &v98;
LABEL_18:
      v40(v41, *(v42 - 32));
      goto LABEL_19;
    case 9:
      v96[2] = 9;
      sub_1001A6E48();
      v43 = v74;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v75 + 8))(v43, v76);
      goto LABEL_19;
    case 10:
      v96[3] = 10;
      sub_1001A6DF4();
      v34 = v77;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v78;
      v37 = v79;
      goto LABEL_16;
    case 11:
      v96[4] = 11;
      sub_1001A6DA0();
      v34 = v80;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v81;
      v37 = v82;
      goto LABEL_16;
    case 12:
      v96[5] = 12;
      sub_1001A6D4C();
      v34 = v83;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v84;
      v37 = v85;
      goto LABEL_16;
    case 13:
      v96[6] = 13;
      sub_1001A6CF8();
      v34 = v86;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v87;
      v37 = v88;
      goto LABEL_16;
    case 14:
      v96[7] = 14;
      sub_1001A6CA4();
      v34 = v89;
      v36 = v93;
      v35 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v38 = v90;
      v37 = v91;
LABEL_16:
      (*(v38 + 8))(v34, v37);
LABEL_19:
      result = (*v30)(v36, v35);
      break;
    default:
      v95[1] = 0;
      sub_1001A713C();
      v31 = v93;
      v32 = v94;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v26, v24);
      result = (*v30)(v31, v32);
      break;
  }

  return result;
}

unint64_t sub_1001A6C50()
{
  result = qword_10023F908;
  if (!qword_10023F908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F908);
  }

  return result;
}

unint64_t sub_1001A6CA4()
{
  result = qword_10023F910;
  if (!qword_10023F910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F910);
  }

  return result;
}

unint64_t sub_1001A6CF8()
{
  result = qword_10023F918;
  if (!qword_10023F918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F918);
  }

  return result;
}

unint64_t sub_1001A6D4C()
{
  result = qword_10023F920;
  if (!qword_10023F920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F920);
  }

  return result;
}

unint64_t sub_1001A6DA0()
{
  result = qword_10023F928;
  if (!qword_10023F928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F928);
  }

  return result;
}

unint64_t sub_1001A6DF4()
{
  result = qword_10023F930;
  if (!qword_10023F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F930);
  }

  return result;
}

unint64_t sub_1001A6E48()
{
  result = qword_10023F938;
  if (!qword_10023F938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F938);
  }

  return result;
}

unint64_t sub_1001A6E9C()
{
  result = qword_10023F940;
  if (!qword_10023F940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F940);
  }

  return result;
}

unint64_t sub_1001A6EF0()
{
  result = qword_10023F948;
  if (!qword_10023F948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F948);
  }

  return result;
}

unint64_t sub_1001A6F44()
{
  result = qword_10023F950;
  if (!qword_10023F950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F950);
  }

  return result;
}

unint64_t sub_1001A6F98()
{
  result = qword_10023F958;
  if (!qword_10023F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F958);
  }

  return result;
}

unint64_t sub_1001A6FEC()
{
  result = qword_10023F960;
  if (!qword_10023F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F960);
  }

  return result;
}

unint64_t sub_1001A7040()
{
  result = qword_10023F968;
  if (!qword_10023F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F968);
  }

  return result;
}

unint64_t sub_1001A7094()
{
  result = qword_10023F970;
  if (!qword_10023F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F970);
  }

  return result;
}

unint64_t sub_1001A70E8()
{
  result = qword_10023F978;
  if (!qword_10023F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F978);
  }

  return result;
}

unint64_t sub_1001A713C()
{
  result = qword_10023F980;
  if (!qword_10023F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F980);
  }

  return result;
}

uint64_t sub_1001A71A8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1001A7694(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1001A71F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6165627472616568 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F68747541746F6ELL && a2 == 0xED000064657A6972 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001001CEBB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001001CEBD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001001CEBF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001001CEC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CEC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001001CEC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001CEC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001CEC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001001CECB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000002ELL && 0x80000001001CECD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CED00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CED20 == a2)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1001A7694(void *a1)
{
  v93 = sub_10000CDE0(&qword_10023FA98, &qword_1001C92B0);
  v79 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v48 - v2;
  v3 = sub_10000CDE0(&qword_10023FAA0, &qword_1001C92B8);
  v77 = *(v3 - 8);
  v78 = v3;
  __chkstk_darwin(v3);
  v88 = &v48 - v4;
  v76 = sub_10000CDE0(&qword_10023FAA8, &qword_1001C92C0);
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v87 = &v48 - v5;
  v74 = sub_10000CDE0(&qword_10023FAB0, &qword_1001C92C8);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v86 = &v48 - v6;
  v72 = sub_10000CDE0(&qword_10023FAB8, &qword_1001C92D0);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v85 = &v48 - v7;
  v70 = sub_10000CDE0(&qword_10023FAC0, &qword_1001C92D8);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v84 = &v48 - v8;
  v68 = sub_10000CDE0(&qword_10023FAC8, &qword_1001C92E0);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v83 = &v48 - v9;
  v66 = sub_10000CDE0(&qword_10023FAD0, &qword_1001C92E8);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v82 = &v48 - v10;
  v64 = sub_10000CDE0(&qword_10023FAD8, &qword_1001C92F0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v92 = &v48 - v11;
  v61 = sub_10000CDE0(&qword_10023FAE0, &qword_1001C92F8);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v91 = &v48 - v12;
  v60 = sub_10000CDE0(&qword_10023FAE8, &qword_1001C9300);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v90 = &v48 - v13;
  v58 = sub_10000CDE0(&qword_10023FAF0, &qword_1001C9308);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v81 = &v48 - v14;
  v56 = sub_10000CDE0(&qword_10023FAF8, &qword_1001C9310);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v80 = &v48 - v15;
  v54 = sub_10000CDE0(&qword_10023FB00, &qword_1001C9318);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v48 - v16;
  v18 = sub_10000CDE0(&qword_10023FB08, &qword_1001C9320);
  v52 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v21 = sub_10000CDE0(&qword_10023FB10, &qword_1001C9328);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v48 - v23;
  v25 = a1[3];
  v95 = a1;
  sub_10000DA7C(a1, v25);
  sub_1001A6C50();
  v26 = v94;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    goto LABEL_7;
  }

  v49 = v20;
  v48 = v18;
  v50 = v17;
  v27 = v90;
  v28 = v91;
  v30 = v92;
  v29 = v93;
  v51 = v22;
  v94 = KeyedDecodingContainer.allKeys.getter();
  if (*(v94 + 16) != 1 || (v31 = *(v94 + 32), v31 == 15))
  {
    v33 = type metadata accessor for DecodingError();
    swift_allocError();
    v35 = v34;
    sub_10000CDE0(&qword_10023E930, &qword_1001C4C60);
    *v35 = &type metadata for AttributionKitError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v33 - 8) + 104))(v35, enum case for DecodingError.typeMismatch(_:), v33);
    swift_willThrow();
    (*(v51 + 8))(v24, v21);
    swift_unknownObjectRelease();
LABEL_7:
    sub_10000DB58(v95);
    return 0;
  }

  switch(*(v94 + 32))
  {
    case 1:
      v97 = 1;
      sub_1001A70E8();
      v44 = v50;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v44, v54);
      break;
    case 2:
      v98 = 2;
      sub_1001A7094();
      v41 = v80;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v41, v56);
      break;
    case 3:
      v99 = 3;
      sub_1001A7040();
      v42 = v81;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v57 + 8))(v42, v58);
      break;
    case 4:
      v100 = 4;
      sub_1001A6FEC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v59 + 8))(v27, v60);
      break;
    case 5:
      v101 = 5;
      sub_1001A6F98();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v62 + 8))(v28, v61);
      break;
    case 6:
      v102 = 6;
      sub_1001A6F44();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v63 + 8))(v30, v64);
      break;
    case 7:
      v103 = 7;
      sub_1001A6EF0();
      v43 = v82;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v65 + 8))(v43, v66);
      break;
    case 8:
      v104 = 8;
      sub_1001A6E9C();
      v47 = v83;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v67 + 8))(v47, v68);
      break;
    case 9:
      v105 = 9;
      sub_1001A6E48();
      v40 = v84;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v69 + 8))(v40, v70);
      break;
    case 0xA:
      v106 = 10;
      sub_1001A6DF4();
      v46 = v85;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v71 + 8))(v46, v72);
      break;
    case 0xB:
      v107 = 11;
      sub_1001A6DA0();
      v38 = v86;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v73 + 8))(v38, v74);
      break;
    case 0xC:
      v108 = 12;
      sub_1001A6D4C();
      v39 = v87;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v75 + 8))(v39, v76);
      break;
    case 0xD:
      v109 = 13;
      sub_1001A6CF8();
      v45 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v77 + 8))(v45, v78);
      break;
    case 0xE:
      v110 = 14;
      sub_1001A6CA4();
      v37 = v89;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v79 + 8))(v37, v29);
      break;
    default:
      v96 = 0;
      sub_1001A713C();
      v32 = v49;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v52 + 8))(v32, v48);
      break;
  }

  (*(v51 + 8))(v24, v21);
  swift_unknownObjectRelease();
  sub_10000DB58(v95);
  return v31;
}

unint64_t sub_1001A8688()
{
  result = qword_10023F988;
  if (!qword_10023F988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F988);
  }

  return result;
}

unint64_t sub_1001A87F8()
{
  result = qword_10023F990;
  if (!qword_10023F990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F990);
  }

  return result;
}

unint64_t sub_1001A8850()
{
  result = qword_10023F998;
  if (!qword_10023F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F998);
  }

  return result;
}

unint64_t sub_1001A88A8()
{
  result = qword_10023F9A0;
  if (!qword_10023F9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9A0);
  }

  return result;
}

unint64_t sub_1001A8900()
{
  result = qword_10023F9A8;
  if (!qword_10023F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9A8);
  }

  return result;
}

unint64_t sub_1001A8958()
{
  result = qword_10023F9B0;
  if (!qword_10023F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9B0);
  }

  return result;
}

unint64_t sub_1001A89B0()
{
  result = qword_10023F9B8;
  if (!qword_10023F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9B8);
  }

  return result;
}

unint64_t sub_1001A8A08()
{
  result = qword_10023F9C0;
  if (!qword_10023F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9C0);
  }

  return result;
}

unint64_t sub_1001A8A60()
{
  result = qword_10023F9C8;
  if (!qword_10023F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9C8);
  }

  return result;
}

unint64_t sub_1001A8AB8()
{
  result = qword_10023F9D0;
  if (!qword_10023F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9D0);
  }

  return result;
}

unint64_t sub_1001A8B10()
{
  result = qword_10023F9D8;
  if (!qword_10023F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9D8);
  }

  return result;
}

unint64_t sub_1001A8B68()
{
  result = qword_10023F9E0;
  if (!qword_10023F9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9E0);
  }

  return result;
}

unint64_t sub_1001A8BC0()
{
  result = qword_10023F9E8;
  if (!qword_10023F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9E8);
  }

  return result;
}

unint64_t sub_1001A8C18()
{
  result = qword_10023F9F0;
  if (!qword_10023F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9F0);
  }

  return result;
}

unint64_t sub_1001A8C70()
{
  result = qword_10023F9F8;
  if (!qword_10023F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023F9F8);
  }

  return result;
}

unint64_t sub_1001A8CC8()
{
  result = qword_10023FA00;
  if (!qword_10023FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA00);
  }

  return result;
}

unint64_t sub_1001A8D20()
{
  result = qword_10023FA08;
  if (!qword_10023FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA08);
  }

  return result;
}

unint64_t sub_1001A8D78()
{
  result = qword_10023FA10;
  if (!qword_10023FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA10);
  }

  return result;
}

unint64_t sub_1001A8DD0()
{
  result = qword_10023FA18;
  if (!qword_10023FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA18);
  }

  return result;
}

unint64_t sub_1001A8E28()
{
  result = qword_10023FA20;
  if (!qword_10023FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA20);
  }

  return result;
}

unint64_t sub_1001A8E80()
{
  result = qword_10023FA28;
  if (!qword_10023FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA28);
  }

  return result;
}

unint64_t sub_1001A8ED8()
{
  result = qword_10023FA30;
  if (!qword_10023FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA30);
  }

  return result;
}

unint64_t sub_1001A8F30()
{
  result = qword_10023FA38;
  if (!qword_10023FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA38);
  }

  return result;
}

unint64_t sub_1001A8F88()
{
  result = qword_10023FA40;
  if (!qword_10023FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA40);
  }

  return result;
}

unint64_t sub_1001A8FE0()
{
  result = qword_10023FA48;
  if (!qword_10023FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA48);
  }

  return result;
}

unint64_t sub_1001A9038()
{
  result = qword_10023FA50;
  if (!qword_10023FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA50);
  }

  return result;
}

unint64_t sub_1001A9090()
{
  result = qword_10023FA58;
  if (!qword_10023FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA58);
  }

  return result;
}

unint64_t sub_1001A90E8()
{
  result = qword_10023FA60;
  if (!qword_10023FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA60);
  }

  return result;
}

unint64_t sub_1001A9140()
{
  result = qword_10023FA68;
  if (!qword_10023FA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA68);
  }

  return result;
}

unint64_t sub_1001A9198()
{
  result = qword_10023FA70;
  if (!qword_10023FA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA70);
  }

  return result;
}

unint64_t sub_1001A91F0()
{
  result = qword_10023FA78;
  if (!qword_10023FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA78);
  }

  return result;
}

unint64_t sub_1001A9248()
{
  result = qword_10023FA80;
  if (!qword_10023FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA80);
  }

  return result;
}

unint64_t sub_1001A92A0()
{
  result = qword_10023FA88;
  if (!qword_10023FA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA88);
  }

  return result;
}

unint64_t sub_1001A92F8()
{
  result = qword_10023FA90;
  if (!qword_10023FA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FA90);
  }

  return result;
}

void sub_1001A9358(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1001A9410;
  v7[3] = &unk_100227260;
  v6 = _Block_copy(v7);

  [v5 fetchReengagementTokensWithReply:v6];
  _Block_release(v6);
}

uint64_t sub_1001A9410(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_10001BABC(v5, v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TokenFetchRequest.fetchReengagementTokens()()
{
  if (qword_10023E528 != -1)
  {
    swift_once();
  }

  if (qword_10023FDA0)
  {
    sub_10018B470(sub_1001A9358);
  }
}

uint64_t sub_1001A9514(uint64_t a1)
{
  v2 = sub_1001A96A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001A9550(uint64_t a1)
{
  v2 = sub_1001A96A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TokenFetchRequest.encode(to:)(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023FB18, &qword_1001C9330);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_1001A96A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1001A96A0()
{
  result = qword_10023FB20;
  if (!qword_10023FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB20);
  }

  return result;
}

unint64_t sub_1001A9718()
{
  result = qword_10023FB28;
  if (!qword_10023FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB28);
  }

  return result;
}

unint64_t sub_1001A9770()
{
  result = qword_10023FB30;
  if (!qword_10023FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FB30);
  }

  return result;
}

uint64_t sub_1001A97C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001A97DC()
{
  v0 = objc_allocWithZone(NSXPCConnection);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1 options:0];

  v3 = objc_opt_self();
  v4 = &OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_;
  v5 = [v3 interfaceWithProtocol:v4];

  [v2 setExportedInterface:v5];
  v6 = [objc_allocWithZone(type metadata accessor for XPCClient(0)) init];
  [v2 setExportedObject:v6];

  v7 = &OBJC_PROTOCOL____TtP20AttributionKitCommon28PostbackProxyServiceProtocol_;
  v8 = [v3 interfaceWithProtocol:v7];

  [v2 setRemoteObjectInterface:v8];
  v16 = sub_10017E9F0;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_100227288;
  v9 = _Block_copy(&v12);
  [v2 setInterruptionHandler:v9];
  _Block_release(v9);
  v16 = sub_10017E9FC;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10001F3F8;
  v15 = &unk_1002272B0;
  v10 = _Block_copy(&v12);
  [v2 setInvalidationHandler:v10];
  _Block_release(v10);
  [v2 resume];
  type metadata accessor for PostbackProxyServiceConnection();
  result = swift_allocObject();
  *(result + 16) = v2;
  qword_10023FF10 = result;
  return result;
}

uint64_t sub_1001A9A80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *LogKey.Prefix.fallbackActivityName.getter(char a1)
{
  if (!a1)
  {
    return "General";
  }

  if (a1 == 1)
  {
    return "woofctl";
  }

  return "nope nope";
}

uint64_t LogKey.Prefix.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 5129543;
  }

  if (a1 == 1)
  {
    return 4931905;
  }

  return 1162891086;
}

uint64_t sub_1001A9B2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 4931905;
  if (v2 != 1)
  {
    v5 = 1162891086;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 5129543;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 4931905;
  if (*a2 != 1)
  {
    v8 = 1162891086;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 5129543;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001A9C04()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001A9C90(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001A9D08(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001A9D90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon6LogKeyV6PrefixO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001A9DC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE300000000000000;
  v5 = 4931905;
  if (v2 != 1)
  {
    v5 = 1162891086;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 5129543;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void *LogKey.Representation.init(from:)(void *a1)
{
  v3 = sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000DA7C(v5, v5[3]);
    v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_10000DB58(v5);
  }

  sub_10000DB58(a1);
  return v3;
}

uint64_t LogKey.Representation.encode(to:)(void *a1, unint64_t a2, uint64_t a3, char a4)
{
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  LogKey.stringValue.getter(a2, a3, a4 & 1);
  sub_100054C30(v8, v8[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_10000DB58(v8);
}

uint64_t sub_1001A9FB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_10000DA7C(v9, v9[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = v6;
  sub_10000DB58(v9);
  result = sub_10000DB58(a1);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = 1;
  return result;
}

uint64_t sub_1001AA084(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  LogKey.stringValue.getter(v2, v3, v4);
  sub_100054C30(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_10000DB58(v6);
}

unint64_t LogKey.stringValue.getter(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 4931905;
      }

      else
      {
        v6 = 1162891086;
      }

      if (v5 == 1)
      {
        v7 = 0xE300000000000000;
      }

      else
      {
        v7 = 0xE400000000000000;
      }
    }

    else
    {
      v7 = 0xE300000000000000;
      v6 = 5129543;
    }

    v8 = v7;
    String.append(_:)(*&v6);

    sub_1001AA4E0();
    v9._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v9);

    return 0;
  }
}

void *LogKey.init(from:)(void *a1)
{
  result = sub_1001AA534(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t LogKey.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054C30(v5, v5[3]);
  sub_1001AA61C();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000DB58(v5);
}

void *sub_1001AA3A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1001AA534(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_1001AA3DC(void *a1)
{
  sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100054C30(v2, v2[3]);
  sub_1001AA61C();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return sub_10000DB58(v2);
}

unint64_t _s20AttributionKitCommon6LogKeyV6PrefixO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002242B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001AA4E0()
{
  result = qword_10023FBF8;
  if (!qword_10023FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FBF8);
  }

  return result;
}

void *sub_1001AA534(void *a1)
{
  v3 = sub_10000DA7C(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000DA7C(v6, v6[3]);
    sub_1001AA7A4();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    sub_10000DB58(v6);
  }

  sub_10000DB58(a1);
  return v3;
}

unint64_t sub_1001AA61C()
{
  result = qword_10023FC00;
  if (!qword_10023FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC00);
  }

  return result;
}

unint64_t sub_1001AA674()
{
  result = qword_10023FC08;
  if (!qword_10023FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC08);
  }

  return result;
}

uint64_t sub_1001AA6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1001AA744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1001AA7A4()
{
  result = qword_10023FC10;
  if (!qword_10023FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC10);
  }

  return result;
}

uint64_t CoarseConversionValue.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 1751607656;
  }

  if (a1 == 1)
  {
    return 7827308;
  }

  return 0x6D756964656DLL;
}

uint64_t sub_1001AA84C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7827308;
  if (v2 != 1)
  {
    v4 = 0x6D756964656DLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1751607656;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7827308;
  if (*a2 != 1)
  {
    v8 = 0x6D756964656DLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1751607656;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001AA930()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001AA9C0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1001AAA3C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001AAAC8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s20AttributionKitCommon21CoarseConversionValueO03rawF0ACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1001AAAF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7827308;
  if (v2 != 1)
  {
    v5 = 0x6D756964656DLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1751607656;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t _s20AttributionKitCommon21CoarseConversionValueO03rawF0ACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100224318, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001AAC44()
{
  result = qword_10023FC18;
  if (!qword_10023FC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC18);
  }

  return result;
}

unint64_t sub_1001AACA8()
{
  result = qword_10023FC20;
  if (!qword_10023FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023FC20);
  }

  return result;
}

id sub_1001AAD08(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = objc_opt_class();
  [v4 databaseTable];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003D40;
  v10[3] = &unk_100212C48;
  v11 = v13 = v4;
  v5 = v3;
  v12 = v5;
  v6 = v11;
  [v2 enumerateKeysAndObjectsUsingBlock:v10];

  v7 = v12;
  v8 = v5;

  return v8;
}

uint64_t sub_1001AAE0C(uint64_t a1, void *a2, void *a3)
{
  v3 = a1;
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [[NSString alloc] initWithFormat:@"DELETE FROM %@ WHERE %@ = ?;", v6, v5];

    v8 = *(v3 + 8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003E54;
    v10[3] = &unk_100212C70;
    v10[4] = v3;
    v3 = sub_1001ABB68(v8, v7, 0, v10);
  }

  return v3;
}

id sub_1001AAEE8(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_1001AAF28(result, a2);
    v3 = [v2 BOOLValue];

    return v3;
  }

  return result;
}

id sub_1001AAF28(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001AAF90(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001AAFF8(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [NSKeyedUnarchiver unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_1001AB09C(id result, uint64_t a2)
{
  if (result)
  {
    v2 = sub_1001AAF28(result, a2);
    v3 = [v2 integerValue];

    return v3;
  }

  return result;
}

id sub_1001AB0DC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001AB144(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001AB1AC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id *sub_1001AB214(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteQueryResults;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void sub_1001AB28C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1001AD0C4([SQLiteCursor alloc], *(a1 + 8));
    v5 = sub_1001AB474(*(a1 + 8));
    v6 = sub_1001ACFB4(*(a1 + 8));
    v15 = v5;
    v16 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100004020;
    v12[3] = &unk_100212C98;
    v7 = v3;
    v14 = v7;
    v8 = v4;
    v13 = v8;
    v9 = sub_1001AC08C(v6, &v16, v12);
    v10 = v16;

    if (v9)
    {
      sub_1001ACED0(*(a1 + 8));
    }

    else
    {
      v11 = 0;
      (*(v7 + 2))(v7, 0, v10, &v11);
    }
  }
}

void *sub_1001AB3DC(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteConnectionOptions;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;

      a1[2] = -64;
    }
  }

  return a1;
}

uint64_t sub_1001AB458(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = -a2;
  }

  return result;
}

uint64_t sub_1001AB468(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1001AB474(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

id sub_1001AB480(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 24, 1);
  }

  return result;
}

uint64_t sub_1001AB494(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

void sub_1001AB4A0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 32);
  }
}

uint64_t sub_1001AB4B4(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void sub_1001AB4C0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 40);
  }
}

uint64_t sub_1001AB4D4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1001AB4EC(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

__CFString *sub_1001AB4F8(__CFString *result)
{
  if (result)
  {
    v1 = [(__CFString *)result comparisonType];
    if ((v1 - 1) > 6)
    {
      return 0;
    }

    else
    {
      return off_100212CE0[(v1 - 1)];
    }
  }

  return result;
}

void *sub_1001AB538(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SQLiteConnection;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[7];
      a1[7] = v4;

      v6 = +[NSMapTable strongToStrongObjectsMapTable];
      v7 = a1[4];
      a1[4] = v6;
    }
  }

  return a1;
}

uint64_t sub_1001AB5C8(uint64_t result)
{
  if (result)
  {
    return sub_1001AB5D4(result);
  }

  return result;
}

uint64_t sub_1001AB5D4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      sub_1001AC250(result);
      if (sqlite3_close(*(v1 + 16)))
      {
        return 0;
      }

      else
      {
        v2 = *(v1 + 8);
        *(v1 + 8) = 0;

        *(v1 + 16) = 0;
        *(v1 + 40) = 0;
        result = 1;
        *(v1 + 48) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1001AB644(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (*(a1 + 40))
    {
      if (!*(a1 + 8))
      {
        v4 = objc_alloc_init(NSMutableArray);
        v5 = *(a1 + 8);
        *(a1 + 8) = v4;
      }

      v6 = [v9 copy];
      v7 = *(a1 + 8);
      v8 = objc_retainBlock(v6);
      [v7 addObject:v8];
    }

    else
    {
      v3[2](v3);
    }

    v3 = v9;
  }
}

void sub_1001AB870(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (result)
  {
    sub_1001AB880(result, a2, a3, 0, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void sub_1001AB880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100006B88();
  a17 = v18;
  a18 = v19;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  if (v25)
  {
    sub_100006B34();
    v29 = sub_1001AB6FC(v25, v23, v28);
    v30 = a10;
    if (v29)
    {
      if (v27)
      {
        v33 = sub_100006B60();
        v34(v33);
      }

      a9 = v30;
      v31 = sub_1001AB964(v25, v29, &a9);
      v35 = a9;

      if (v27)
      {
        [v29 clearBindings];
      }

      v30 = v35;
    }

    else
    {
      v31 = 0;
    }

    sub_1001ACED0(v29);
    if (v21 && (v31 & 1) == 0)
    {
      v32 = v30;
      *v21 = v30;
    }
  }

  sub_100006B74();
}

uint64_t sub_1001AB964(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (a1)
  {
    sub_100006AF4();
    v10 = 3221225472;
    v11 = sub_10000689C;
    v12 = &unk_100212D20;
    v6 = v5;
    v13 = v6;
    v7 = sub_1001AC098(a1, a3, v9);
    if (v7)
    {
      sub_1001ACED0(v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001ABB58(uint64_t result, void *a2, __CFString **a3)
{
  if (result)
  {
    return sub_1001ABB68(result, a2, a3, 0);
  }

  return result;
}

uint64_t sub_1001ABB68(uint64_t a1, void *a2, __CFString **a3, void *a4)
{
  v7 = a4;
  if (!a1)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v19 = 0;
  v8 = a2;
  v9 = sub_1001ABA14(a1, v8, &v19);
  v10 = v19;
  v11 = sub_1001ADD04([SQLitePreparedStatement alloc], *(a1 + 16), v8);

  if (v11)
  {
    [*(a1 + 32) setObject:v9 forKey:v11];
  }

  if (v9)
  {
    if (v7)
    {
      v15 = sub_100006B60();
      v16(v15);
    }

    v18 = v10;
    v12 = sub_1001AB964(a1, v9, &v18);
    v17 = v18;

    sub_1001ACE2C(v9);
    if (v11)
    {
      [*(a1 + 32) removeObjectForKey:v11];
    }

    v10 = v17;
    if (!a3)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v12 = 0;
  if (a3)
  {
LABEL_6:
    if ((v12 & 1) == 0)
    {
      v13 = v10;
      *a3 = v10;
    }
  }

LABEL_8:

LABEL_9:
  return v12;
}

BOOL sub_1001ABCB0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_6;
  }

  sub_100006B34();
  v7 = sub_1001AB6FC(a1, v5, v6);
  v8 = v14;
  if (!v7)
  {
    v11 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v9 = sub_1001ACE2C(v7);
  v10 = SQLiteCreateErrorForResultCode(v9);

  v11 = v10 == 0;
  [*(a1 + 32) removeObjectForKey:v5];
  v8 = v10;
  if (a3)
  {
LABEL_4:
    v12 = v8;
    *a3 = v8;
  }

LABEL_5:

LABEL_6:
  return v11;
}

void sub_1001ABDD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3 *db, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100006B88();
  a17 = v18;
  a18 = v20;
  if (v19)
  {
    v21 = v19;
    if (!*(v19 + 16))
    {
      db = 0;
      v22 = 1;
      while (1)
      {
        v23 = SQLiteOpenDatabaseAndApplyOptions(&db, *(v21 + 56));
        if (!v23)
        {
          break;
        }

        if (v23 <= 0x1Au && ((1 << v23) & 0x4000C02) != 0)
        {
          v25 = sub_1001AC380(v21) & v22;
          v22 = 0;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      v26 = db;
      *(v21 + 16) = db;
      sqlite3_create_function(v26, "timestamp", 0, 1, 0, sub_100006998, 0, 0);
    }
  }

LABEL_3:
  sub_100006B74();
}

void sub_1001ABEB4(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, sqlite3 *db, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a1)
  {
    sub_1001ABDD0(a1, a2, a3, a4, a5, a6, a7, a8, a9, db, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

void sub_1001ABEC0(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = [v2 copy];
      v4 = *(a1 + 8);
      *(a1 + 8) = 0;

      v5 = dispatch_get_global_queue(0, 0);
      sub_100006AF4();
      v8 = 3221225472;
      v9 = sub_1000068A4;
      v10 = &unk_100212D48;
      v11 = v3;
      v6 = v3;
      dispatch_async(v5, block);
    }
  }
}

uint64_t sub_1001AC08C(uint64_t result, __CFString **a2, void *a3)
{
  if (result)
  {
    return sub_1001AC098(result, a2, a3);
  }

  return result;
}

uint64_t sub_1001AC098(uint64_t a1, __CFString **a2, void *a3)
{
  v5 = a3;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v6 = 0;
  v7 = 0;
  v8 = @"SQLiteErrorDomain";
  while (2)
  {
    v9 = objc_autoreleasePoolPush();
    v16 = 0;
    v10 = v5[2](v5, &v16);
    switch(v10)
    {
      case 0:
        goto LABEL_13;
      case 1:
      case 2:
      case 3:
      case 4:
      case 7:
      case 8:
      case 9:
        goto LABEL_12;
      case 5:
      case 6:
        if (v6 < 10)
        {
          usleep(0xF4240u);
          ++v6;
          goto LABEL_8;
        }

        v12 = [NSError errorWithDomain:@"SQLiteErrorDomain" code:-7702 userInfo:0];
        goto LABEL_15;
      case 10:
        SQLiteCreateErrorForResultCode(v10);
        objc_claimAutoreleasedReturnValue();
        objc_autoreleasePoolPop(sub_100006B40());
        sub_1001AC554(a1);
        goto LABEL_17;
      case 11:
        goto LABEL_22;
      default:
        if (v10 != 100)
        {
          if (v10 == 101)
          {
LABEL_13:
            v8 = 0;
            v7 = 1;
          }

          else
          {
            if (v10 == 26)
            {
LABEL_22:
              SQLiteCreateErrorForResultCode(v10);
              objc_claimAutoreleasedReturnValue();
              objc_autoreleasePoolPop(sub_100006B40());
              sub_1001AC380(a1);
              goto LABEL_17;
            }

LABEL_12:
            v12 = SQLiteCreateErrorForResultCode(v10);
LABEL_15:
            v8 = v12;
          }

          objc_autoreleasePoolPop(v9);
          goto LABEL_17;
        }

        v7 = 1;
LABEL_8:
        v11 = v16;
        objc_autoreleasePoolPop(v9);
        if ((v11 & 1) == 0)
        {
          continue;
        }

        v8 = 0;
LABEL_17:
        if (a2 && (v7 & 1) == 0)
        {
          v13 = v8;
          *a2 = v8;
        }

        v17 = v7;

        v14 = v17;
LABEL_21:

        return v14;
    }
  }
}

sqlite3_stmt *sub_1001AC250(sqlite3_stmt *result)
{
  if (result)
  {
    v1 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = [*(result + 4) objectEnumerator];
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          sub_1001ACE2C(*(*(&v8 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(v1 + 4) removeAllObjects];
    result = sqlite3_next_stmt(*(v1 + 2), 0);
    if (result)
    {
      v7 = result;
      do
      {
        sqlite3_finalize(v7);
        result = sqlite3_next_stmt(*(v1 + 2), v7);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t sub_1001AC380(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = sub_100006B40();
        v12 = sub_1001AB480(v10, v11);
        sub_100006ADC();
        sub_100006B14(&_mh_execute_header, v13, v14, "[%@]: Asking delegate to reset database after corruption: %{public}@", v15, v16, v17, v18);
      }

      v6 = objc_loadWeakRetained((v2 + 24));
      v7 = [v6 connectionNeedsResetForCorruption:v2];
    }

    else
    {
      if (sub_1001AB4D4(*(v2 + 56)))
      {
        return 0;
      }

      v19 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = sub_100006B40();
        v23 = sub_1001AB480(v21, v22);
        sub_100006ADC();
        sub_100006B14(&_mh_execute_header, v24, v25, "[%@]: Deleting database after corruption: %{public}@", v26, v27, v28, v29);
      }

      v6 = sub_1001AB480(*(v2 + 56), v30);
      sub_1001AB5D4(v2);
      v7 = SQLiteDeleteDatabase(v6, 0);
    }

    v2 = v7;
  }

  return v2;
}

uint64_t sub_1001AC554(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = os_log_create("com.apple.AdAttributionKit", "SQL");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = sub_100006B40();
      v7 = sub_1001AB480(v5, v6);
      sub_100006ADC();
      sub_100006B14(&_mh_execute_header, v8, v9, "[%@]: Reopening database after IO error: %{public}@", v10, v11, v12, v13);
    }

    v14 = *(v2 + 8);
    v15 = v14;
    v16 = *(v2 + 40);
    if (sub_1001AB5D4(v2))
    {
      sub_1001ABDD0(v2, v17, v18, v19, v20, v21, v22, v23, *v35, *&v35[8], *&v35[16], v36, v37, v38, v39, v40, v41, v42);
      if (v24)
      {
        if (!v16)
        {
          goto LABEL_9;
        }

        if (!sqlite3_exec(*(v2 + 16), "BEGIN DEFERRED TRANSACTION", 0, 0, 0))
        {
          objc_storeStrong((v2 + 8), v14);
          *(v2 + 40) = v16;
          *(v2 + 48) = 1;
LABEL_9:
          WeakRetained = objc_loadWeakRetained((v2 + 24));
          v26 = objc_opt_respondsToSelector();

          if (v26)
          {
            v27 = os_log_create("com.apple.AdAttributionKit", "SQL");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v30 = objc_opt_class();
              v31 = *(v2 + 56);
              v32 = v30;
              v34 = sub_1001AB480(v31, v33);
              *v35 = 138412546;
              *&v35[4] = v30;
              *&v35[12] = 2114;
              *&v35[14] = v34;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%@]: Asking delegate to reset database after reopen: %{public}@", v35, 0x16u);
            }

            v28 = objc_loadWeakRetained((v2 + 24));
            v2 = [v28 connectionNeedsResetForReopen:v2];
          }

          else
          {
            v2 = 1;
          }

          goto LABEL_15;
        }
      }
    }

    v2 = sub_1001AC380(v2);
LABEL_15:
  }

  return v2;
}

id sub_1001AC798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_100006B88();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (v13)
  {
    [*(v13 + 32) objectForKey:v15];
    if (objc_claimAutoreleasedReturnValue())
    {
      v16 = 0;
    }

    else
    {
      v17 = sub_1001AB474(v15);
      sub_100006B34();
      v19 = sub_1000065E0(v13, v17, v18);
      v16 = a10;

      if (v19)
      {
        [*(v13 + 32) setObject:v19 forKey:v15];
      }

      else if (v11)
      {
        v20 = v16;
        *v11 = v16;
      }
    }
  }

  sub_100006B74();

  return v21;
}

id *sub_1001AC888(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

id *sub_1001AC8B8(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

uint64_t sub_1001AC8C8(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

id sub_1001AC8D4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1001AC93C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = [a1 valueForProperty:a2];
    v3 = objc_opt_class();
    v4 = sub_100003E84(v3);
    v5 = sub_100003E9C(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

_BYTE *sub_1001AC9A4(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SQLiteDatabaseStoreMigrator;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      a1[24] = 1;
    }
  }

  return a1;
}

id *sub_1001ACA24(id *a1)
{
  if (a1)
  {
    a1 = a1[1];
    v1 = vars8;
  }

  return a1;
}

void sub_1001ACA54(uint64_t result, void *a2)
{
  if (result)
  {
    sub_100007660(result, a2, 0);
  }
}

void sub_1001ACA64(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    if (*(a1 + 24) == 1)
    {
      v9 = *(a1 + 8);
      v13 = 0;
      v10 = sub_1001ABB68(v9, v7, &v13, v8);
      v11 = v13;
      v12 = v13;
      if (a3)
      {
        *(a1 + 24) &= v10;
      }

      if ((v10 & 1) == 0)
      {
        objc_storeStrong((a1 + 16), v11);
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

void sub_1001ACB28(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACA64(a1, a2, 0, a3);
  }
}

void sub_1001ACB3C(uint64_t result, void *a2)
{
  if (result)
  {
    sub_100007660(result, a2, 1);
  }
}

void sub_1001ACB4C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACA64(a1, a2, 1, a3);
  }
}

void sub_1001ACB60(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    sub_1001ACB74(result, a2, 0, a3);
  }
}

void sub_1001ACB74(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a1 && *(a1 + 24) == 1)
  {
    v10 = *(a1 + 8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100007580;
    v11[3] = &unk_100212DC8;
    v13 = a3;
    v11[4] = a1;
    v12 = v8;
    sub_1000061F0(v10, v7, v11);
  }
}

void sub_1001ACC4C(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    sub_1001ACB74(a1, a2, 1, a3);
  }
}

id sub_1001ACC60(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 16, 1);
  }

  return result;
}

uint64_t sub_1001ACC74(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id *sub_1001ACC8C(id *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = SQLiteStatement;
    v7 = objc_msgSendSuper2(&v9, "init");
    a1 = v7;
    if (v7)
    {
      objc_storeStrong(v7 + 1, a3);
      a1[2] = a2;
      objc_storeStrong(a1 + 3, a1);
    }
  }

  return a1;
}

id sub_1001ACD18(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_8;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v3 = sqlite3_column_count(v2);
  v4 = [NSMutableDictionary dictionaryWithCapacity:v3];
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [[NSNumber alloc] initWithInt:v5];
      v7 = [[NSString alloc] initWithUTF8String:{sqlite3_column_name(*(a1 + 16), v5)}];
      [v4 setObject:v6 forKey:v7];

      v5 = (v5 + 1);
    }

    while (v3 != v5);
  }

LABEL_9:

  return v4;
}

uint64_t sub_1001ACE2C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = sqlite3_finalize(v2);
  v4 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;

  return v3;
}

BOOL sub_1001ACE78(_BOOL8 result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return sqlite3_stmt_readonly(v1) != 0;
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001ACED0(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1)
    {
      return sqlite3_reset(v1);
    }

    else
    {
      return 21;
    }
  }

  return result;
}

__CFString *sub_1001ACEE8(__CFString *a1)
{
  if (a1)
  {
    data = a1->data;
    if (data)
    {
      a1 = [NSString stringWithUTF8String:sqlite3_sql(data)];
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized"];
      a1 = &stru_100227AF8;
    }

    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1001ACF5C(uint64_t result)
{
  if (result)
  {
    v3 = *(result + 16);
    if (v3)
    {

      return sqlite3_step(v3);
    }

    else
    {
      [NSException raise:NSInternalInconsistencyException format:@"Statement already finalized", v1, v2];
      return 21;
    }
  }

  return result;
}

uint64_t sub_1001ACFB4(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_1001ACFC0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_1001ACFCC(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_1001ACFD8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 48);
  }
}

void sub_1001ACFEC(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 56);
  }
}

void *sub_1001AD000(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = SQLiteQueryDescriptor;
    result = objc_msgSendSuper2(&v5, "init");
    if (result)
    {
      result[1] = a2;
      result[4] = a3;
    }
  }

  return result;
}

uint64_t sub_1001AD05C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1001AD068(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_1001AD074(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t sub_1001AD080(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1001AD08C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 72);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1001AD0A4(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

void sub_1001AD0B0(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 64);
  }
}

int *sub_1001AD0C4(int *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = SQLiteCursor;
    a1 = objc_msgSendSuper2(&v17, "init");
    if (a1)
    {
      *(a1 + 6) = sub_1001AB474(v4);
      objc_storeStrong(a1 + 7, a2);
      v5 = sqlite3_column_count(*(a1 + 6));
      a1[2] = v5;
      v6 = [NSMutableArray arrayWithCapacity:v5];
      v7 = *(a1 + 5);
      *(a1 + 5) = v6;

      *(a1 + 2) = malloc_type_calloc(a1[2], 1uLL, 0x100004077774924uLL);
      if (a1[2] >= 1)
      {
        for (i = 0; i < a1[2]; ++i)
        {
          v9 = *(a1 + 5);
          v10 = [NSString stringWithUTF8String:sqlite3_column_name(*(a1 + 6), i)];
          [v9 addObject:v10];

          v11 = sqlite3_column_decltype(*(a1 + 6), i);
          if (v11)
          {
            v12 = v11;
            if (!strcmp(v11, "DATETIME"))
            {
              *(*(a1 + 2) + i) = 1;
              continue;
            }

            if (!strcmp(v12, "JSON"))
            {
              v14 = *(a1 + 2);
              v15 = 2;
              goto LABEL_20;
            }

            if (!strcmp(v12, "UUID"))
            {
              v14 = *(a1 + 2);
              v15 = 3;
              goto LABEL_20;
            }

            if (!strcmp(v12, "URL"))
            {
              v14 = *(a1 + 2);
              v15 = 4;
              goto LABEL_20;
            }

            if (!strcmp(v12, "STRING"))
            {
              v14 = *(a1 + 2);
              v15 = 5;
              goto LABEL_20;
            }

            v13 = strcmp(v12, "BOOLEAN");
            v14 = *(a1 + 2);
            if (!v13)
            {
              v15 = 6;
LABEL_20:
              *(v14 + i) = v15;
              continue;
            }
          }

          else
          {
            v14 = *(a1 + 2);
          }

          *(v14 + i) = 0;
        }
      }
    }
  }

  return a1;
}

id sub_1001AD2F4(void *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 1)
    {
      v3 = sub_10000B028();
      a1 = [NSNumber numberWithBool:sqlite3_column_int64(v3, v4) != 0];
    }

    else
    {
      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD364(void *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 5)
    {
      a1 = 0;
    }

    else
    {
      v3 = sub_10000B028();
      v5 = sqlite3_column_blob(v3, v4);
      v6 = sub_10000B028();
      a1 = [NSData dataWithBytes:v5 length:sqlite3_column_bytes(v6, v7)];
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD3E0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD364(a1, v4);
    }
  }

  return a1;
}

id *sub_1001AD448(id *result, uint64_t a2)
{
  if (result)
  {
    return [result[5] indexOfObject:a2];
  }

  return result;
}

id sub_1001AD470(void *a1, int a2)
{
  if (a1)
  {
    v3 = sub_10000B034(a1, a2);
    if (v3 == 1)
    {
      v7 = sub_10000B028();
      v6 = sqlite3_column_int64(v7, v8);
    }

    else
    {
      if (v3 != 2)
      {
        a1 = 0;
        goto LABEL_8;
      }

      v4 = sub_10000B028();
      v6 = sqlite3_column_double(v4, v5);
    }

    a1 = [NSDate dateWithTimeIntervalSinceReferenceDate:v6];
LABEL_8:
    v2 = vars8;
  }

  return a1;
}

id sub_1001AD4F8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD470(a1, v4);
    }
  }

  return a1;
}

double sub_1001AD560(uint64_t a1, int a2)
{
  if (a1)
  {
    return sqlite3_column_double(*(a1 + 48), a2);
  }

  else
  {
    return 0.0;
  }
}

double sub_1001AD574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0.0;
  if (a1)
  {
    v5 = sub_10000B050();
    if ((v5 & 0x80000000) == 0)
    {
      v4 = sqlite3_column_double(*(a1 + 48), v5);
    }
  }

  return v4;
}

uint64_t sub_1001AD5CC(uint64_t result, int a2)
{
  if (result)
  {
    return sqlite3_column_int(*(result + 48), a2);
  }

  return result;
}

uint64_t sub_1001AD5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sqlite3_column_int(*(a1 + 48), v4);
    }
  }

  return a1;
}

sqlite3_int64 sub_1001AD630(sqlite3_int64 result, int a2)
{
  if (result)
  {
    return sqlite3_column_int64(*(result + 48), a2);
  }

  return result;
}

sqlite3_int64 sub_1001AD640(sqlite3_int64 a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sqlite3_column_int64(*(a1 + 48), v4);
    }
  }

  return a1;
}

id sub_1001AD694(id *a1, int a2)
{
  if (a1)
  {
    v4 = sub_1001AD364(a1, a2);
    if (v4)
    {
      v11 = 0;
      v5 = [NSJSONSerialization JSONObjectWithData:v4 options:0 error:&v11];
      v6 = v11;
      if (v5)
      {
LABEL_9:
        v8 = v5;

        goto LABEL_10;
      }

      v7 = os_log_create("com.apple.AdAttributionKit", "SQL");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1[5] objectAtIndexedSubscript:a2];
        *buf = 138543618;
        v13 = v10;
        v14 = 2114;
        v15 = v6;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

id sub_1001AD804(void *a1, int a2)
{
  if (a1)
  {
    v3 = sub_10000B034(a1, a2);
    if (v3 == 1)
    {
      v6 = sub_10000B028();
      a1 = [NSNumber numberWithLongLong:sqlite3_column_int64(v6, v7)];
    }

    else if (v3 == 2)
    {
      v4 = sub_10000B028();
      a1 = [NSNumber numberWithDouble:sqlite3_column_double(v4, v5)];
    }

    else
    {
      a1 = 0;
    }

    v2 = vars8;
  }

  return a1;
}

id sub_1001AD898(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD804(a1, v4);
    }
  }

  return a1;
}

uint64_t sub_1001AD900(uint64_t result)
{
  if (result)
  {
    return sqlite3_column_count(*(result + 48));
  }

  return result;
}

unsigned __int8 *sub_1001AD928(unsigned __int8 *a1, int a2)
{
  if (a1)
  {
    if (sub_10000B034(a1, a2) == 5)
    {
      a1 = 0;
    }

    else
    {
      v3 = sub_10000B028();
      a1 = sqlite3_column_text(v3, v4);
      if (a1)
      {
        a1 = [NSString stringWithUTF8String:a1];
      }
    }

    v2 = vars8;
  }

  return a1;
}

unsigned __int8 *sub_1001AD98C(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD928(a1, v4);
    }
  }

  return a1;
}

id sub_1001AD9F4(unsigned __int8 *a1, int a2)
{
  if (a1)
  {
    v2 = sub_1001AD928(a1, a2);
    if (v2)
    {
      v3 = [[NSUUID alloc] initWithUUIDString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unsigned __int8 *sub_1001ADA64(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001AD9F4(a1, v4);
    }
  }

  return a1;
}

id sub_1001ADACC(unsigned __int8 *a1, int a2)
{
  if (a1)
  {
    v2 = sub_1001AD928(a1, a2);
    if (v2)
    {
      v3 = [NSURL URLWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

unsigned __int8 *sub_1001ADB3C(unsigned __int8 *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_10000B050();
    if (v4 < 0)
    {
      a1 = 0;
    }

    else
    {
      a1 = sub_1001ADACC(a1, v4);
    }
  }

  return a1;
}

void *sub_1001ADBA4(void *a1)
{
  if (a1)
  {
    a1 = sub_1001ADBD8(a1, 0);
    v1 = vars8;
  }

  return a1;
}

void *sub_1001ADBD8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = a1[4];
    if (!v4)
    {
      v5 = [NSDictionary sharedKeySetForKeys:a1[5]];
      v6 = a1[4];
      a1[4] = v5;

      v4 = a1[4];
    }

    v7 = [NSMutableDictionary dictionaryWithSharedKeySet:v4];
    v8 = a1[5];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AD50;
    v11[3] = &unk_100212FE0;
    v12 = v3;
    v13 = v7;
    v14 = a1;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v11];
    a1 = [v9 copy];
  }

  return a1;
}

uint64_t sub_1001ADCF4(uint64_t result, int a2)
{
  if (result)
  {
    return sqlite3_column_type(*(result + 48), a2);
  }

  return result;
}

void *sub_1001ADD04(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = SQLitePreparedStatement;
    v6 = objc_msgSendSuper2(&v10, "init");
    a1 = v6;
    if (v6)
    {
      v6[1] = a2;
      v7 = [v5 copy];
      v8 = a1[2];
      a1[2] = v7;
    }
  }

  return a1;
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.host(percentEncoded:)(percentEncoded);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t Substring.subscript.getter()
{
  return Substring.subscript.getter();
}

{
  return Substring.subscript.getter();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v3 = _CFUUIDGetUUIDBytes(uuid);
  v2 = *&v3.byte8;
  v1 = *&v3.byte0;
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}