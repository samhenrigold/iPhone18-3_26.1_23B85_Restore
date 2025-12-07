uint64_t sub_1000443C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100044480(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100133F18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000444CC(void *a1)
{
  v3 = sub_100024248(&qword_1001534C8, &qword_100104748);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_10004642C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[30] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_100024248(&qword_1001534B8, &qword_100104740);
    v9[29] = 2;
    sub_100046480(&unk_1001534D0, sub_1000464F8, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_100024E14(a1);
  return v7;
}

uint64_t sub_100044734(void *a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v17[1] = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  __chkstk_darwin(v4);
  v18 = sub_10003C07C(a1);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100024248(&qword_100152F50, &qword_100104318);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1001042A0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v19 = v11;
  sub_10004617C(&qword_100152F58, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
  sub_100024248(&qword_100152F60, &unk_100104320);
  sub_100045F80(&qword_100152F68, &qword_100152F60, &unk_100104320);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v19 = v18;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  sub_100046340();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;

  static String.Encoding.utf8.getter();
  v15 = String.init(data:encoding:)();
  sub_100026FB0(v12, v14);

  return v15;
}

uint64_t sub_100044A18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v11 = sub_100024248(&unk_100153470, &qword_100104668);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = a4;
  if (a3)
  {
    v33 = a3;

    swift_errorRetain();
    sub_100024248(&qword_100152630, &qword_100103210);
    sub_100033178(0, &qword_100153480, NSError_ptr);
    if (swift_dynamicCast())
    {
      v15 = v34;
      sub_100044734(v34);
      if (v16)
      {
        EventValue.init(stringLiteral:)();
        v17 = type metadata accessor for EventValue();
        (*(*(v17 - 8) + 56))(v13, 0, 1, v17);
        sub_10003C8CC(v13, 0x726F727265, 0xE500000000000000);
      }
    }
  }

  else
  {
  }

  if (qword_100157678 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100025AE0(v18, qword_100157680);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v21 = 136315394;
    *(v21 + 4) = sub_100021D24(a1, a2, &v34);
    *(v21 + 12) = 2080;
    swift_beginAccess();

    type metadata accessor for EventValue();
    v22 = Dictionary.description.getter();
    v23 = v10;
    v24 = a1;
    v26 = v25;

    v27 = sub_100021D24(v22, v26, &v34);
    a1 = v24;
    v10 = v23;

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: %s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  static TaskPriority.background.getter();
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v10, 0, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a1;
  v29[5] = a2;
  v29[6] = v14;

  sub_10003CEA4(0, 0, v10, &unk_100104678, v29);
}

uint64_t sub_100044E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTDeps(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SWTDeps(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *sub_100045004(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10004506C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_10003EBC4(v3, v4, v5, v2);
}

uint64_t sub_100045100()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_10003FA34(v3, v4, v5, v2);
}

uint64_t sub_100045194()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000451DC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000258C8;

  return sub_100040968(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_100045284()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001CF5C;

  return sub_1000412B4(v3, v4, v5, v2);
}

uint64_t sub_100045320(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100045338(uint64_t a1)
{
  v2 = type metadata accessor for SWTDeps(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100045394()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000453CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000258C8;

  return sub_100042A18();
}

unint64_t sub_100045458()
{
  result = qword_100152FE8;
  if (!qword_100152FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FE8);
  }

  return result;
}

unint64_t sub_1000454B0()
{
  result = qword_100152FF0;
  if (!qword_100152FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FF0);
  }

  return result;
}

unint64_t sub_100045508()
{
  result = qword_100152FF8;
  if (!qword_100152FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152FF8);
  }

  return result;
}

uint64_t sub_100045570(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[7] + 24);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10004569C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = sub_100024248(&qword_100152F00, &qword_1001042C0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[7] + 24) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_1000457B0(uint64_t a1)
{
  type metadata accessor for Application(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      sub_100045BD8(319, &qword_100153058, &type metadata accessor for URL);
      if (v3 <= 0x3F)
      {
        sub_100045A40(319, &qword_100153060, &protocol descriptor for SMNetworkMonitor);
        if (v4 <= 0x3F)
        {
          sub_1000459E0(319, &qword_100153068, &protocolRef_TransparencyConfigBagFetcher);
          if (v5 <= 0x3F)
          {
            sub_1000459E0(319, &qword_1001530D0, &protocolRef_SWTSettingsProtocol);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SWTFollowUp(319);
              if (v7 <= 0x3F)
              {
                sub_100033178(319, &qword_1001530D8, off_1001312F8);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SWTPublicKeyBag(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for KTSWDB();
                    if (v10 <= 0x3F)
                    {
                      sub_100033178(319, &qword_1001530E0, TransparencyAnalytics_ptr);
                      if (v11 <= 0x3F)
                      {
                        sub_100045A40(319, &qword_1001530E8, &protocol descriptor for SWTCloudTelemetryProtocol);
                        if (v12 <= 0x3F)
                        {
                          sub_100045A40(319, &qword_1001530F0, &protocol descriptor for SWTTriggerInterface);
                          if (v13 <= 0x3F)
                          {
                            sub_100045A9C(319);
                            if (v14 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
}

uint64_t sub_1000459E0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100045A40(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100045A9C(uint64_t a1)
{
  if (!qword_1001530F8)
  {
    sub_1000242F4(&qword_100152F40, qword_1001042E8);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1001530F8);
    }
  }
}

void sub_100045B18(uint64_t a1)
{
  sub_100045BD8(319, &unk_100153218, &type metadata accessor for Date);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100045BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_100045C34(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SWTDeps(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100045D3C(uint64_t a1)
{
  if ([objc_opt_self() isAvailable])
  {
    v3 = *(*v1 + 192);

    v3(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Software transparency unavailable, skipping milestone-refresh job", v5, 2u);
    }
  }
}

void sub_100045E4C(uint64_t a1)
{
  if ([objc_opt_self() isAvailable])
  {
    v3 = *(*v1 + 208);

    v3(a1);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Software transparency unavailable, skipping background 24h job", v5, 2u);
    }
  }
}

uint64_t sub_100045F80(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100045FD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100046014()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_1000417C4(v3, v4, v5, v2);
}

uint64_t sub_1000460A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000460E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000258C8;

  return sub_10003F750(a1, v1);
}

uint64_t sub_10004617C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000461C4()
{
  result = qword_100153468;
  if (!qword_100153468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153468);
  }

  return result;
}

uint64_t sub_100046218()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100046250()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100046298()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001CF5C;

  return sub_10003CAA4(v5, v6, v7, v2, v3, v4);
}

unint64_t sub_100046340()
{
  result = qword_1001578D0[0];
  if (!qword_1001578D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001578D0);
  }

  return result;
}

uint64_t sub_100046394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000463DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004642C()
{
  result = qword_1001579E0;
  if (!qword_1001579E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001579E0);
  }

  return result;
}

uint64_t sub_100046480(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(&qword_1001534B8, &qword_100104740);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000464F8()
{
  result = qword_1001579E8[0];
  if (!qword_1001579E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001579E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000466A0()
{
  result = qword_100157B70[0];
  if (!qword_100157B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100157B70);
  }

  return result;
}

unint64_t sub_1000466F8()
{
  result = qword_100157C80;
  if (!qword_100157C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100157C80);
  }

  return result;
}

unint64_t sub_100046750()
{
  result = qword_100157C88[0];
  if (!qword_100157C88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100157C88);
  }

  return result;
}

id sub_1000467E0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void sub_100046824(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10004686C()
{
  v0 = swift_allocObject();
  sub_1000468A4();
  return v0;
}

uint64_t sub_1000468A4()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() defaultSessionConfiguration];
  [v1 setDiscretionary:0];
  [v1 setHTTPCookieStorage:0];
  [v1 setURLCache:0];
  [v1 set_alternativeServicesStorage:0];
  v2 = [objc_opt_self() sessionWithConfiguration:v1];

  *(v0 + 112) = v2;
  return v0;
}

uint64_t SWTURLSession.URLSessionMaker.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000469D4()
{
  type metadata accessor for SWTURLSession.URLSessionMaker();
  v0 = swift_allocObject();
  result = sub_1000468A4();
  static SWTURLSession.shared = v0;
  return result;
}

uint64_t *SWTURLSession.shared.unsafeMutableAddressor()
{
  if (qword_100157D10 != -1)
  {
    swift_once();
  }

  return &static SWTURLSession.shared;
}

uint64_t static SWTURLSession.shared.getter()
{
  if (qword_100157D10 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100046AC0(uint64_t a1, uint64_t a2)
{
  result = qword_1001534E0;
  if (!qword_1001534E0)
  {
    type metadata accessor for SWTURLSession.URLSessionMaker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001534E0);
  }

  return result;
}

unint64_t sub_100046B74(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      _StringGuts.grow(_:)(32);

      v5 = 0xD00000000000001ELL;
LABEL_8:
      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      return v5;
    }

    _StringGuts.grow(_:)(22);

    v2 = 0xD000000000000014;
LABEL_7:
    v5 = v2;
    goto LABEL_8;
  }

  if (a2 == 2)
  {
    _StringGuts.grow(_:)(19);

    v2 = 0xD000000000000011;
    goto LABEL_7;
  }

  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100046CEC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      return 5;
    }

    else if (a1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (a2)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100046D2C(uint64_t a1)
{
  v2 = sub_10004C4C4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100046D68(uint64_t a1)
{
  v2 = sub_10004C4C4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100046DB0()
{
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) == 2)
    {
      return 5;
    }

    else if (*v0)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (*(v0 + 8))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_100046E14()
{
  v1 = SWTURLSession.shared.unsafeMutableAddressor();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[4] = *(*v2 + 96);
  v0[5] = v3;

  return _swift_task_switch(sub_100046EA8, v2, 0);
}

uint64_t sub_100046EA8()
{
  *(v0 + 48) = (*(v0 + 32))();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100046F64;
  v2 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_100046F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_1000470D8, 0, 0);
  }

  else
  {

    v10 = *(v9 + 8);

    return v10(a1, a2, a3);
  }
}

uint64_t sub_1000470D8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004715C()
{
  v1 = SWTURLSession.shared.unsafeMutableAddressor();
  v2 = *v1;
  v0[3] = *v1;
  v3 = (*v2 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[4] = *(*v2 + 96);
  v0[5] = v3;

  return _swift_task_switch(sub_1000471F0, v2, 0);
}

uint64_t sub_1000471F0()
{
  *(v0 + 48) = (*(v0 + 32))();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1000472AC;
  v2 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_1000472AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {

    return _swift_task_switch(sub_10004C864, 0, 0);
  }

  else
  {

    v10 = *(v9 + 8);

    return v10(a1, a2, a3);
  }
}

uint64_t sub_100047420()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D200);
  sub_100025AE0(v0, qword_10015D200);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000474A4()
{
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D200);
}

uint64_t sub_100047508@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D200);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_100047608()
{
  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

uint64_t sub_100047650(int a1)
{
  strcpy(v3, "SWTFetchCnst-");
  v1._countAndFlagsBits = Application.description.getter(a1);
  String.append(_:)(v1);

  return v3[0];
}

uint64_t sub_1000476B4()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000476E0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_100037608(a4, a9 + 24);
  *(a9 + 104) = a5;
  sub_100037608(a6, a9 + 64);
  *(a9 + 112) = a7;

  return sub_100037608(a8, a9 + 120);
}

uint64_t sub_100047768(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v35 - v10;
  v41 = sub_10004CE5C(a1);
  if (!v12)
  {
    sub_10004C0D0();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = 1;
    return swift_willThrow();
  }

  v13 = v12;
  v38 = v9;
  v39 = v6;
  v14 = v3[2];
  v40 = v5;
  if (a1)
  {
    result = [v14 patLogBeginningMs];
    if ((result & 0x8000000000000000) == 0)
    {
      v16 = result;
      v17 = 2;
      goto LABEL_8;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  result = [v14 tltLogBeginningMs];
  if (result < 0)
  {
    goto LABEL_15;
  }

  v16 = result;
  v17 = 3;
LABEL_8:
  v20 = v3[6];
  v19 = v3[7];
  sub_100026F6C(v3 + 3, v20);
  v21 = (*(v19 + 136))(v41, v13, v16, v17, 1, 1, 1, v20, v19);
  if (v2)
  {
  }

  v22 = *(v21 + 16);
  v37 = v17;
  if (v22)
  {
    v23 = *(v21 + 8 * v22 + 24);
  }

  else
  {
    v23 = 0;
  }

  v24 = v22 == 0;

  Date.init(timeIntervalSinceNow:)();
  v25 = v3[6];
  v26 = v3[7];
  sub_100026F6C(v3 + 3, v25);
  v34 = v23;
  v27 = v41;
  (*(v26 + 88))(v41, v13, v16, v37, v11, 1, 1, 1, v34, v24, v25, v26);
  v36 = v11;
  v28 = v38;
  Date.init(timeIntervalSinceNow:)();
  v30 = v3[6];
  v29 = v3[7];
  sub_100026F6C(v3 + 3, v30);
  v31 = v28;
  (*(v29 + 96))(v27, v13, v16, v37, v28, v30, v29);

  v32 = v40;
  v33 = *(v39 + 8);
  v33(v31, v40);
  return (v33)(v36, v32);
}

uint64_t sub_100047AC0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 urlForKey:v6];

  if (v7)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = objc_allocWithZone(NSMutableURLRequest);
    URL._bridgeToObjectiveC()(v9);
    v11 = v10;
    v12 = [v8 initWithURL:v10];

    sub_1000B738C(1);
    if (sub_10002AAF4([v5 currentEnvironment]))
    {
      [v12 _setPrivacyProxyFailClosed:1];
      if (qword_100157E20 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100025AE0(v13, qword_10015D200);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Enforcing privacy proxy", v16, 2u);
      }
    }

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_10004C0D0();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 3;
    return swift_willThrow();
  }
}

char *sub_100047D80()
{
  v2 = v1;
  v3 = v0;
  v4 = *v0;
  v5 = sub_10004CE5C(v4);
  if (!v6)
  {
    sub_10004C0D0();
    swift_allocError();
    *v15 = v4;
    *(v15 + 8) = 1;
    swift_willThrow();
    return v2;
  }

  v7 = v5;
  v8 = v6;
  v73 = v4;
  v10 = v3[6];
  v9 = v3[7];
  sub_100026F6C(v3 + 3, v10);
  v11 = v3[2];
  v12 = [v11 patLogBeginningMs];
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  v14 = (*(v9 + 136))(v7, v8, v12, v13, 2, 1, 1, v10, v9);
  if (!v1)
  {
    v71 = v13;
    v74 = v14;

    sub_10004B31C(&v74);

    v17 = *(v74 + 2);
    if (!v17)
    {

      if (qword_100157E20 == -1)
      {
LABEL_14:
        v22 = type metadata accessor for Logger();
        sub_100025AE0(v22, qword_10015D200);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v23, v24))
        {
LABEL_17:

          return 0;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "No pending PAT revisions";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v23, v24, v26, v25, 2u);

        goto LABEL_17;
      }

LABEL_62:
      swift_once();
      goto LABEL_14;
    }

    v66 = v74;
    v19 = v3[6];
    v18 = v3[7];
    sub_100026F6C(v3 + 3, v19);
    v20 = [v11 patLogBeginningMs];
    if ((v20 & 0x8000000000000000) != 0)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = v13;
    v21 = (*(v18 + 136))(v7, v8, v20, v13, 1, 1, 1, v19, v18);
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = *(v21 + 8 * v27 + 24);
    }

    else
    {

      if (v17 == 1)
      {

        if (qword_100157E20 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100025AE0(v29, qword_10015D200);
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.info.getter();
        if (!os_log_type_enabled(v23, v24))
        {
          goto LABEL_17;
        }

        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = "No verified revision and only one pending PAT revision";
        goto LABEL_16;
      }

      v28 = 0;
    }

    v30 = v27 == 0;
    v31 = v3[1];
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 uintegerForKey:v32];

    v34 = sub_10004BD78(v66, v33, v28, v30);
    if (qword_100157E20 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100025AE0(v35, qword_10015D200);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    v70 = v34;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74 = v39;
      *v38 = 136315138;
      sub_100024248(&qword_1001535B0, &qword_100104D60);
      v40 = Array.description.getter();
      v42 = sub_100021D24(v40, v41, &v74);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "Generating requests for %s", v38, 0xCu);
      sub_100024E14(v39);
    }

    v43 = v73;
    v69 = v34[2];
    if (!v69)
    {

      v2 = _swiftEmptyArrayStorage;
LABEL_54:

      return v2;
    }

    v44 = 0;
    v68 = v34 + 4;
    v72 = _swiftEmptyArrayStorage;
    v67 = kTransparencyProtocolVersion;
    while (v44 < v34[2])
    {
      v45 = v68[v44];
      v46 = objc_allocWithZone(ConsistencyProofRequest);

      v47 = [v46 init];
      [v47 setVersion:v67];
      [v47 setLogType:v13];
      if (v43)
      {
        [v47 setApplication:v43];
      }

      v48 = *(v45 + 16);
      if (v48)
      {
        v49 = (v45 + 40);
        v50 = 5;
        while (1)
        {
          if (v50 - 5 >= v48)
          {
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v50 - 5 >= v48 - 1)
          {
            goto LABEL_46;
          }

          v51 = *(v49 - 1);
          v52 = [objc_allocWithZone(ConsistencyProofRequest_LogConsistencyRequest) init];
          if (v51 < 0)
          {
            goto LABEL_56;
          }

          v53 = v52;
          v54 = v50 - 4;
          [v52 setStartRevision:v51];
          if ((v50 - 4) >= *(v45 + 16))
          {
            goto LABEL_57;
          }

          if ((*v49 & 0x8000000000000000) != 0)
          {
            goto LABEL_58;
          }

          [v53 setEndRevision:?];
          v55 = [v47 requestsArray];
          if (!v55)
          {
            break;
          }

          v56 = v55;
          [v55 addObject:v53];

          v48 = *(v45 + 16);
          ++v50;
          ++v49;
          if (v54 == v48)
          {
            goto LABEL_46;
          }
        }

        __break(1u);

        __break(1u);
        return result;
      }

LABEL_46:

      v57 = [v47 data];
      if (v57)
      {
        v58 = v57;
        v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v61 = v60;

        v62 = v72;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10004B124(0, *(v72 + 2) + 1, 1, v72);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        v72 = v62;
        v13 = v71;
        if (v64 >= v63 >> 1)
        {
          v72 = sub_10004B124((v63 > 1), v64 + 1, 1, v72);
        }

        *(v72 + 2) = v64 + 1;
        v65 = &v72[16 * v64];
        *(v65 + 4) = v59;
        *(v65 + 5) = v61;
      }

      else
      {

        v13 = v71;
      }

      ++v44;
      v34 = v70;
      v43 = v73;
      if (v44 == v69)
      {

        v2 = v72;
        goto LABEL_54;
      }
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  return v2;
}

uint64_t sub_10004858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 400) = a4;
  *(v6 + 408) = v5;
  *(v6 + 520) = a5;
  *(v6 + 384) = a2;
  *(v6 + 392) = a3;
  *(v6 + 376) = a1;
  sub_100024248(&qword_100152D90, &qword_100105620);
  *(v6 + 416) = swift_task_alloc();
  v7 = type metadata accessor for Date();
  *(v6 + 424) = v7;
  *(v6 + 432) = *(v7 - 8);
  *(v6 + 440) = swift_task_alloc();
  v8 = type metadata accessor for URLRequest();
  *(v6 + 448) = v8;
  *(v6 + 456) = *(v8 - 8);
  *(v6 + 464) = swift_task_alloc();

  return _swift_task_switch(sub_1000486EC, 0, 0);
}

uint64_t sub_1000486EC()
{
  v20 = v0;
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 408);
  v2 = type metadata accessor for Logger();
  *(v0 + 472) = sub_100025AE0(v2, qword_10015D200);
  sub_10004C124(v1, v0 + 16);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 376);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315394;
    v8 = Application.description.getter(*(v0 + 16));
    v10 = v9;
    sub_10004C15C(v0 + 16);
    v11 = sub_100021D24(v8, v10, &v19);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Requesting %s consistency chunk %ld", v6, 0x16u);
    sub_100024E14(v7);
  }

  else
  {

    sub_10004C15C(v0 + 16);
  }

  sub_100047AC0();
  v12 = *(v0 + 408);
  sub_100027004(*(v0 + 384), *(v0 + 392));
  URLRequest.httpBody.setter();
  v13 = v12[11];
  v14 = v12[12];
  sub_100026F6C(v12 + 8, v13);
  v18 = (*(v14 + 8) + **(v14 + 8));
  v15 = swift_task_alloc();
  *(v0 + 480) = v15;
  *v15 = v0;
  v15[1] = sub_100048A18;
  v16 = *(v0 + 464);

  return v18(v16, v13, v14);
}

uint64_t sub_100048A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[61] = a1;
  v5[62] = a2;
  v5[63] = a3;
  v5[64] = v3;

  if (v3)
  {
    v6 = sub_100049188;
  }

  else
  {
    v6 = sub_100048B30;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100048B30()
{
  v82 = v0;
  static Date.now.getter();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = *(v0 + 504);
  if (!v1)
  {
    v10 = *(v0 + 488);
    v11 = *(v0 + 496);
    v12 = *(v0 + 456);
    v13 = *(v0 + 440);
    v73 = *(v0 + 448);
    v77 = *(v0 + 464);
    v15 = *(v0 + 424);
    v14 = *(v0 + 432);
    sub_10004C0D0();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 3;
    swift_willThrow();
    sub_100026FB0(v10, v11);

    (*(v14 + 8))(v13, v15);
    (*(v12 + 8))(v77, v73);
LABEL_13:

    v51 = *(v0 + 8);

    return v51();
  }

  v3 = v1;
  v4 = v2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 valueForHTTPHeaderField:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v9 = 0xE700000000000000;
    v7 = 0x3E4853206F6E3CLL;
  }

  v17 = *(v0 + 504);
  sub_10004C124(*(v0 + 408), v0 + 176);
  v18 = v17;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 504);
  v23 = &stru_10014B000;
  if (v21)
  {
    v78 = *(v0 + 376);
    v24 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v24 = 134218754;
    *(v24 + 4) = [v3 statusCode];

    *(v24 + 12) = 2080;
    v25 = Application.description.getter(*(v0 + 176));
    v26 = v7;
    v28 = v27;
    sub_10004C15C(v0 + 176);
    v29 = sub_100021D24(v25, v28, v81);
    v7 = v26;
    v23 = &stru_10014B000;

    *(v24 + 14) = v29;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v78;
    *(v24 + 32) = 2080;
    *(v24 + 34) = sub_100021D24(v7, v9, v81);
    _os_log_impl(&_mh_execute_header, v19, v20, "Received %ld response for %s consistency chunk %ld with %s", v24, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    sub_10004C15C(v0 + 176);
  }

  if ([v3 v23[38].name] != 200)
  {
    v42 = v23;
    v44 = *(v0 + 496);
    v43 = *(v0 + 504);
    v45 = *(v0 + 488);
    v46 = *(v0 + 456);
    v75 = *(v0 + 448);
    v80 = *(v0 + 464);
    v71 = *(v0 + 440);
    v48 = *(v0 + 424);
    v47 = *(v0 + 432);

    v49 = [v3 v42[38].name];
    sub_10004C0D0();
    swift_allocError();
    *v50 = v49;
    *(v50 + 8) = 0;
    swift_willThrow();
    sub_100026FB0(v45, v44);

    (*(v47 + 8))(v71, v48);
    (*(v46 + 8))(v80, v75);
    goto LABEL_13;
  }

  v79 = v9;
  v30 = *(v0 + 512);
  v32 = *(v0 + 488);
  v31 = *(v0 + 496);
  objc_allocWithZone(ConsistencyProofResponse);
  sub_100027004(v32, v31);
  v33 = sub_1000330B8();
  if (v30)
  {
    v35 = *(v0 + 496);
    v34 = *(v0 + 504);
    v36 = *(v0 + 488);
    v37 = *(v0 + 456);
    v74 = *(v0 + 464);
    v39 = *(v0 + 440);
    v38 = *(v0 + 448);
    v41 = *(v0 + 424);
    v40 = *(v0 + 432);
    sub_100026FB0(v36, v35);
    sub_100026FB0(v36, v35);

    (*(v40 + 8))(v39, v41);
    (*(v37 + 8))(v74, v38);
    goto LABEL_13;
  }

  v53 = v33;
  v68 = *(v0 + 496);
  v69 = *(v0 + 504);
  v54 = *(v0 + 456);
  v70 = *(v0 + 448);
  v72 = *(v0 + 464);
  v66 = *(v0 + 440);
  v67 = *(v0 + 488);
  v76 = v7;
  v55 = *(v0 + 424);
  v56 = *(v0 + 432);
  v58 = *(v0 + 408);
  v57 = *(v0 + 416);
  v59 = *(v0 + 520);
  v60 = *(v0 + 400);
  sub_100026FB0(v67, v68);
  v61 = *v58;
  LOBYTE(v81[0]) = 0;
  ConsistencyProofResponse.expectedApplication.setter(v61);
  v62 = 2;
  if (!v61)
  {
    v62 = 3;
  }

  LOBYTE(v81[0]) = 0;
  ConsistencyProofResponse.expectedLogType.setter(v62);
  ConsistencyProofResponse.startRevision.setter(v60, v59 & 1);
  v63 = *(v58 + 2);
  v64 = v63;
  ConsistencyProofResponse.keyBag.setter(v63);
  sub_1000331C0((v58 + 6), v0 + 336);
  sub_10002F0C0(v0 + 336);
  (*(v56 + 16))(v57, v66, v55);
  (*(v56 + 56))(v57, 0, 1, v55);
  ConsistencyProofResponse.receiptTime.setter(v57);
  sub_100026FB0(v67, v68);

  (*(v56 + 8))(v66, v55);
  (*(v54 + 8))(v72, v70);

  v65 = *(v0 + 8);

  return v65(v53, v76, v79);
}

uint64_t sub_100049188()
{
  (*(v0[57] + 8))(v0[58], v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100049244()
{
  v1 = sub_100047D80();
  v0[3] = v1;
  if (v1)
  {
    v5 = v0[2];
    v6 = v1;
    v7 = v2;
    v8 = v3;
    v9 = swift_task_alloc();
    v0[4] = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;
    *(v9 + 32) = v8 & 1;
    *(v9 + 40) = v5;
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_1000493B8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v10);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1000493B8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1000494F4;
  }

  else
  {

    v2 = sub_1000494DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000494F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100049560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 401) = a5;
  *(v6 + 432) = a4;
  *(v6 + 440) = a6;
  *(v6 + 416) = a2;
  *(v6 + 424) = a3;
  v7 = sub_100024248(&qword_1001535C0, &unk_100104BC8);
  *(v6 + 448) = v7;
  *(v6 + 456) = *(v7 - 8);
  *(v6 + 464) = swift_task_alloc();
  sub_100024248(&unk_100152620, &unk_1001031E0);
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();

  return _swift_task_switch(sub_100049678, 0, 0);
}

uint64_t sub_100049678()
{
  v1 = *(v0 + 424);
  v33 = *(v1 + 16);
  if (v33)
  {
    v2 = type metadata accessor for TaskPriority();
    v3 = 0;
    v4 = *(v2 - 8);
    v32 = *(v4 + 56);
    v31 = (v4 + 48);
    v30 = (v4 + 8);
    v5 = (v1 + 40);
    do
    {
      v8 = *(v0 + 472);
      v9 = *(v0 + 480);
      v10 = v3;
      v38 = *(v0 + 401);
      v11 = *(v0 + 440);
      v34 = *(v0 + 424);
      v35 = *(v0 + 432);
      v36 = v5;
      v13 = *(v5 - 1);
      v12 = *v5;
      v32(v9, 1, 1, v2);
      sub_10004C124(v11, v0 + 16);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      v15 = *(v0 + 128);
      *(v14 + 128) = *(v0 + 112);
      *(v14 + 144) = v15;
      v16 = *(v0 + 160);
      *(v14 + 160) = *(v0 + 144);
      *(v14 + 176) = v16;
      v17 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v17;
      v18 = *(v0 + 96);
      *(v14 + 96) = *(v0 + 80);
      *(v14 + 112) = v18;
      v19 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v19;
      v37 = v10;
      *(v14 + 192) = v10;
      *(v14 + 200) = v13;
      *(v14 + 208) = v12;
      *(v14 + 216) = v34;
      *(v14 + 224) = v35;
      *(v14 + 232) = v38 & 1;
      sub_100025834(v9, v8, &unk_100152620, &unk_1001031E0);
      LODWORD(v8) = (*v31)(v8, 1, v2);
      sub_100027004(v13, v12);
      v39 = v13;
      v20 = v13;
      v21 = v12;
      sub_100027004(v20, v12);

      v22 = *(v0 + 472);
      if (v8 == 1)
      {
        sub_10002533C(*(v0 + 472), &unk_100152620, &unk_1001031E0);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v30)(v22, v2);
      }

      if (*(v14 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      v26 = **(v0 + 416);

      if (v25 | v23)
      {
        v6 = v0 + 336;
        *(v0 + 336) = 0;
        *(v0 + 344) = 0;
        *(v0 + 352) = v23;
        *(v0 + 360) = v25;
      }

      else
      {
        v6 = 0;
      }

      v3 = v37 + 1;
      v7 = *(v0 + 480);
      v5 = v36 + 2;
      *(v0 + 368) = 1;
      *(v0 + 376) = v6;
      *(v0 + 384) = v26;
      swift_task_create();

      sub_100026FB0(v39, v21);
      sub_10002533C(v7, &unk_100152620, &unk_1001031E0);
    }

    while (v33 != v37 + 1);
  }

  sub_100024248(&qword_100152630, &qword_100103210);
  ThrowingTaskGroup.makeAsyncIterator()();
  v27 = swift_task_alloc();
  *(v0 + 488) = v27;
  *v27 = v0;
  v27[1] = sub_100049A60;
  v28 = *(v0 + 448);

  return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 392, 0, 0, v28, v0 + 408);
}

uint64_t sub_100049A60()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_10004A094;
  }

  else
  {
    v2 = sub_100049B74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100049B74()
{
  v25 = v0;
  if (*(v0 + 400))
  {
    v1 = *(v0 + 496);
    v2 = *(v0 + 440);
    (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
    sub_100047768(*v2);
    if (v1)
    {
      if (qword_100157E20 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100025AE0(v3, qword_10015D200);
      swift_errorRetain();
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        swift_errorRetain();
        v8 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v8;
        *v7 = v8;
        _os_log_impl(&_mh_execute_header, v4, v5, "PAT garbage collection failed: %@", v6, 0xCu);
        sub_10002533C(v7, &qword_100153450, &unk_100104140);
      }

      else
      {
      }
    }

    sub_100047768(0);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v9 = *(v0 + 392);
    if (qword_100157E20 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 440);
    v11 = type metadata accessor for Logger();
    sub_100025AE0(v11, qword_10015D200);
    sub_10004C124(v10, v0 + 176);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446466;
      v16 = Application.description.getter(*(v0 + 176));
      v18 = v17;
      sub_10004C15C(v0 + 176);
      v19 = sub_100021D24(v16, v18, &v24);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2048;
      *(v14 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v12, v13, "Verified %{public}s consistency proof chunk %ld", v14, 0x16u);
      sub_100024E14(v15);
    }

    else
    {

      sub_10004C15C(v0 + 176);
    }

    v20 = swift_task_alloc();
    *(v0 + 488) = v20;
    *v20 = v0;
    v20[1] = sub_100049A60;
    v21 = *(v0 + 448);

    return __sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 392, 0, 0, v21, v0 + 408);
  }
}

uint64_t sub_10004A094()
{
  (*(v0[57] + 8))(v0[58], v0[56]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10004A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 472) = v10;
  *(v7 + 368) = a7;
  *(v7 + 376) = v9;
  *(v7 + 352) = a5;
  *(v7 + 360) = a6;
  *(v7 + 336) = a1;
  *(v7 + 344) = a4;
  return _swift_task_switch(sub_10004A168, 0, 0);
}

uint64_t sub_10004A168()
{
  v1 = *(v0 + 472);
  *(v0 + 384) = static MachTime.current.getter();
  v2 = swift_task_alloc();
  *(v0 + 392) = v2;
  *v2 = v0;
  v2[1] = sub_10004A214;
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);

  return sub_10004858C(v6, v5, v3, v4, v1 & 1);
}

uint64_t sub_10004A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[50] = a1;
  v5[51] = a2;
  v5[52] = a3;
  v5[53] = v3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10004A34C, 0, 0);
  }
}

uint64_t sub_10004A34C()
{
  v77 = v0;
  MachTime.seconds.getter(*(v0 + 384));
  v1 = ConsistencyProofResponse.isNewEpoch()();
  if (v2)
  {
  }

  else if (v1)
  {

    v3 = ConsistencyProofResponse.keyBag.getter();
    if (v3)
    {
      v4 = v3;
      sub_10007F3F0();
    }

    v5 = *(*(v0 + 344) + 104);
    *(v0 + 432) = v5;
    if (!v5)
    {

      goto LABEL_28;
    }

    v6 = (*v5 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
    *(v0 + 440) = *(*v5 + 184);
    *(v0 + 448) = v6;
    v7 = sub_10004AD80;
    v8 = 0;

    return _swift_task_switch(v7, v5, v8);
  }

  ConsistencyProofResponse.verify()();
  if (!v9)
  {
    if (qword_100157E20 == -1)
    {
LABEL_16:
      v25 = *(v0 + 344);
      v26 = type metadata accessor for Logger();
      sub_100025AE0(v26, qword_10015D200);
      sub_10004C124(v25, v0 + 176);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 416);
      if (v29)
      {
        v31 = *(v0 + 408);
        v32 = *(v0 + 352);
        v33 = swift_slowAlloc();
        v76[0] = swift_slowAlloc();
        *v33 = 136315650;
        v34 = Application.description.getter(*(v0 + 176));
        v36 = v35;
        sub_10004C15C(v0 + 176);
        v37 = sub_100021D24(v34, v36, v76);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v32;
        *(v33 + 22) = 2080;
        v38 = sub_100021D24(v31, v30, v76);

        *(v33 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v27, v28, "%s consistency chunk %ld with %s verified", v33, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10004C15C(v0 + 176);
      }

      v55 = *(v0 + 344);
      v56 = *(v55 + 112);
      if (v56)
      {
        v57 = *v55;
        strcpy(v76, "SWTFetchCnst-");
        HIWORD(v76[1]) = -4864;
        v58._countAndFlagsBits = Application.description.getter(v57);
        String.append(_:)(v58);

        v59 = String._bridgeToObjectiveC()();

        [v56 logResultForEvent:v59 hardFailure:0 result:0];

        v55 = *(v0 + 344);
      }

      v61 = *(v55 + 144);
      v60 = *(v55 + 152);
      sub_100026F6C((v55 + 120), v61);
      sub_100024248(&qword_1001535C8, &qword_100104BE8);
      v62 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
      v63 = *(v62 + 72);
      v64 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_100104980;
      v66 = (v65 + v64);
      *v66 = 7368801;
      v66[1] = 0xE300000000000000;
      EventValue.init(integerLiteral:)();
      v67 = (v66 + v63);
      *v67 = 0x6D69546863746566;
      v67[1] = 0xE900000000000065;
      EventValue.init(floatLiteral:)();
      v68 = (v66 + 2 * v63);
      *v68 = 7761509;
      v68[1] = 0xE300000000000000;
      v7 = [*(v55 + 8) currentEnvironment];
      if ((v7 & 0x8000000000000000) == 0)
      {
        v73 = *(v0 + 400);
        EventValue.init(integerLiteral:)();
        v69 = sub_10004C674(v65);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        (*(v60 + 8))(0x6863746566747753, 0xEC00000074736E63, 0, v69, v61, v60);

LABEL_28:
        **(v0 + 336) = *(v0 + 352);
        v54 = *(v0 + 8);
        goto LABEL_29;
      }

      __break(1u);
      return _swift_task_switch(v7, v5, v8);
    }

LABEL_34:
    swift_once();
    goto LABEL_16;
  }

  v10 = v9;
  if (qword_100157E20 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 344);
  v12 = type metadata accessor for Logger();
  sub_100025AE0(v12, qword_10015D200);
  sub_10004C124(v11, v0 + 16);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 416);
  if (v15)
  {
    v71 = *(v0 + 352);
    v74 = *(v0 + 408);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v76[0] = swift_slowAlloc();
    *v17 = 136315906;
    v19 = Application.description.getter(*(v0 + 16));
    v21 = v20;
    sub_10004C15C(v0 + 16);
    v22 = sub_100021D24(v19, v21, v76);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v71;
    *(v17 + 22) = 2080;
    v23 = sub_100021D24(v74, v16, v76);

    *(v17 + 24) = v23;
    *(v17 + 32) = 2112;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v24;
    *v18 = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s consistency chunk %ld with %s failed verification %@", v17, 0x2Au);
    sub_10002533C(v18, &qword_100153450, &unk_100104140);

    swift_arrayDestroy();
  }

  else
  {

    sub_10004C15C(v0 + 16);
  }

  v39 = *(v0 + 344);
  v40 = *(v39 + 112);
  if (v40)
  {
    v41 = *v39;
    strcpy(v76, "SWTFetchCnst-");
    HIWORD(v76[1]) = -4864;
    v42._countAndFlagsBits = Application.description.getter(v41);
    String.append(_:)(v42);

    v43 = String._bridgeToObjectiveC()();

    v44 = _convertErrorToNSError(_:)();
    [v40 logResultForEvent:v43 hardFailure:1 result:v44];

    v39 = *(v0 + 344);
  }

  v72 = *(v39 + 152);
  v75 = *(v39 + 144);
  sub_100026F6C((v39 + 120), v75);
  sub_100024248(&qword_1001535C8, &qword_100104BE8);
  v45 = *(sub_100024248(&qword_1001535D0, &unk_100104BF0) - 8);
  v46 = *(v45 + 72);
  v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100104980;
  v49 = (v48 + v47);
  *v49 = 7368801;
  v49[1] = 0xE300000000000000;
  swift_errorRetain();
  EventValue.init(integerLiteral:)();
  v50 = (v49 + v46);
  *v50 = 0x6D69546863746566;
  v50[1] = 0xE900000000000065;
  EventValue.init(floatLiteral:)();
  v51 = (v49 + 2 * v46);
  *v51 = 7761509;
  v51[1] = 0xE300000000000000;
  if (([*(v39 + 8) currentEnvironment] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v52 = *(v0 + 400);
  EventValue.init(integerLiteral:)();
  v53 = sub_10004C674(v48);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v72 + 8))(0x6863746566747753, 0xEC00000074736E63, v10, v53, v75);

  swift_willThrow();

  v54 = *(v0 + 8);
LABEL_29:

  return v54();
}

uint64_t sub_10004AD80()
{
  v1 = *(v0 + 432);
  (*(v0 + 440))(1);
  v2 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x62BB000000000000;
  *(v0 + 456) = *(*v1 + 184);
  *(v0 + 464) = v2;
  v3 = *(v0 + 432);

  return _swift_task_switch(sub_10004AE0C, v3, 0);
}

uint64_t sub_10004AE0C()
{
  (*(v0 + 456))(3);

  return _swift_task_switch(sub_10004AE7C, 0, 0);
}

uint64_t sub_10004AE7C()
{
  **(v0 + 336) = *(v0 + 352);
  v1 = *(v0 + 8);

  return v1();
}

void *sub_10004AEEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100024248(&qword_1001535E8, &qword_100104C00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100024248(&qword_1001535B0, &qword_100104D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004B020(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_1001535E0, &qword_100105610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10004B124(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_1001535D8, &unk_100106AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10004B230(char *result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10004B020(result, v11, 1, v3);
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
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::Int sub_10004B31C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10004BC60(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10004B520(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_10004B450(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_100024248(&qword_1001535E0, &qword_100105610);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_10004B520(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10002D4E4(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10004BA6C((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C95C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_10002C95C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_10004BA6C((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_10004BA6C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_10004BC74(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_1001535E0, &qword_100105610);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_10004BD78(char *a1, int64_t a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    sub_100024248(&qword_1001535E8, &qword_100104C00);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_1001042A0;
    if (a4)
    {
      v27 = a1;

      sub_10004B31C(&v27);
    }

    else
    {
      sub_100024248(&qword_1001535E0, &qword_100105610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001042A0;
      *(inited + 32) = a3;
      v27 = a1;

      sub_10004B230(inited);

      sub_10004B31C(&v27);
    }

    v10[4] = v27;
    return v10;
  }

  v27 = a1;

  sub_10004B31C(&v27);
  v7 = v27;
  v8 = *(v27 + 2);
  if ((a4 & 1) == 0)
  {
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

  if (!v8)
  {
LABEL_34:

    return _swiftEmptyArrayStorage;
  }

  a3 = *(v27 + 4);
LABEL_8:
  if (a2 < 0)
  {
    goto LABEL_39;
  }

  v10 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v8 <= a2)
    {
      v12 = (v7 + 16);

      v14 = v7;
      v13 = v8;
      goto LABEL_14;
    }

    sub_10004B450(v7, (v7 + 32), 0, (2 * a2) | 1);
    v12 = (v11 + 16);
    v8 = *(v11 + 16);
    v13 = *(v7 + 2);
    if (v13 < v8)
    {
      break;
    }

    v14 = v11;
LABEL_14:
    v15 = v13 - v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v15 <= *(v7 + 3) >> 1)
    {
      if (!v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v17 = *(v7 + 2) - v8;
      memmove(v7 + 32, &v7[8 * v8 + 32], 8 * v17);
      *(v7 + 2) = v17;
      goto LABEL_18;
    }

    if (v13 <= v15)
    {
      v24 = v13 - v8;
    }

    else
    {
      v24 = v13;
    }

    v7 = sub_10004B020(isUniquelyReferenced_nonNull_native, v24, 1, v7);
    if (v8)
    {
      goto LABEL_17;
    }

LABEL_18:
    v18 = *v12;
    v19 = 32;
    while (v18)
    {
      v20 = *&v14[v19];
      v19 += 8;
      --v18;
      if (v20 == a3)
      {
        goto LABEL_23;
      }
    }

    sub_100024248(&qword_1001535E0, &qword_100105610);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_1001042A0;
    *(v21 + 32) = a3;
    v27 = v14;
    sub_10004B230(v21);

    sub_10004B31C(&v27);

    v14 = v27;
LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_10004AEEC(0, v10[2] + 1, 1, v10);
    }

    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      v10 = sub_10004AEEC((v22 > 1), v23 + 1, 1, v10);
    }

    v10[2] = v23 + 1;
    v10[v23 + 4] = v14;
    v8 = *(v7 + 2);
    if (!v8)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_10004C0D0()
{
  result = qword_1001535A8;
  if (!qword_1001535A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535A8);
  }

  return result;
}

uint64_t sub_10004C18C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1000258C8;

  return sub_100049560(v9, a2, v5, v6, v7, v8);
}

uint64_t getEnumTagSinglePayload for ConsistencyDownloadError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ConsistencyDownloadError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10004C2DC(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_10004C2F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

__n128 sub_10004C32C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_10004C358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10004C3A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ATLeafDataError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10004C42C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10004C474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004C4C4()
{
  result = qword_1001535B8;
  if (!qword_1001535B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535B8);
  }

  return result;
}

uint64_t sub_10004C518()
{
  swift_unknownObjectRelease();

  sub_100024E14((v0 + 56));
  sub_100024E14((v0 + 96));

  sub_100024E14((v0 + 152));
  sub_100026FB0(*(v0 + 200), *(v0 + 208));

  return _swift_deallocObject(v0, 233, 7);
}

uint64_t sub_10004C598(uint64_t a1)
{
  v4 = v1[24];
  v5 = v1[25];
  v6 = v1[26];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001CF5C;

  return sub_10004A130(a1, v7, v8, (v1 + 4), v4, v5, v6);
}

unint64_t sub_10004C674(uint64_t a1)
{
  v2 = sub_100024248(&qword_1001535D0, &unk_100104BF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100024248(&qword_100153488, &qword_100104688);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100025834(v9, v5, &qword_1001535D0, &unk_100104BF0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1000435B4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for EventValue();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10004C8A4(uint64_t a1)
{
  v2 = sub_10004CE04();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004C8E0(uint64_t a1)
{
  v2 = sub_10004CE04();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004C930(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v7 = static SerializationVersion.allCases.getter();
  v8 = *v3;
  v9 = sub_10004CCAC(*v3, v7, sub_10002D804, &type metadata for SerializationVersion);

  if (v9)
  {
    v10 = static ATLeafType.allCases.getter();
    v11 = *(v3 + 1);
    v12 = sub_10004CCAC(v11, v10, sub_10002D8E0, &type metadata for ATLeafType);

    if (!v12)
    {
      sub_10004CC58();
      swift_allocError();
      *v18 = v11;
      *(v18 + 8) = 0;
      v19 = 1;
LABEL_52:
      *(v18 + 16) = v19;
      return swift_willThrow();
    }

    result = *(v3 + 24);
    v14 = *(v3 + 32);
    v15 = v14 >> 62;
    if ((v14 >> 62) > 1)
    {
      if (v15 != 2)
      {
        v16 = 0;
        goto LABEL_15;
      }

      v21 = *(result + 16);
      v20 = *(result + 24);
      v22 = __OFSUB__(v20, v21);
      v16 = v20 - v21;
      if (!v22)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v15)
    {
      v16 = BYTE6(v14);
      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      goto LABEL_56;
    }

    v16 = HIDWORD(result) - result;
LABEL_15:
    v23 = a2 >> 62;
    if ((a2 >> 62) <= 1)
    {
      if (!v23)
      {
        if (v16 != BYTE6(a2))
        {
          goto LABEL_29;
        }

LABEL_22:
        result = sub_100027800(result, v14, a1, a2);
        if (result)
        {
          v27 = *(v3 + 40);
          if (v27 > a3)
          {
            return result;
          }

          sub_10004CC58();
          swift_allocError();
          *v18 = v27;
          *(v18 + 8) = a3;
          v19 = 3;
        }

        else
        {
LABEL_40:
          sub_10004CC58();
          swift_allocError();
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = 4;
        }

        goto LABEL_52;
      }

      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        if (v16 != HIDWORD(a1) - a1)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v23 != 2)
    {
      if (!v16)
      {
        goto LABEL_22;
      }

LABEL_29:
      if (v15 > 1)
      {
        goto LABEL_36;
      }

      if (!v15)
      {
        v28 = BYTE6(v14);
        if (v23 > 1)
        {
          while (v23 == 2)
          {
            v23 = *(a1 + 16);
            v15 = *(a1 + 24);
            a2 = v15 - v23;
            if (!__OFSUB__(v15, v23))
            {
              goto LABEL_51;
            }

            __break(1u);
LABEL_36:
            if (v15 == 2)
            {
              v30 = *(result + 16);
              v29 = *(result + 24);
              v28 = v29 - v30;
              if (__OFSUB__(v29, v30))
              {
                __break(1u);
                goto LABEL_40;
              }

LABEL_43:
              if (v23 <= 1)
              {
                goto LABEL_44;
              }
            }

            else
            {
              v28 = 0;
              if (v23 <= 1)
              {
                goto LABEL_44;
              }
            }
          }

          a2 = 0;
          goto LABEL_51;
        }

LABEL_44:
        if (!v23)
        {
          a2 = BYTE6(a2);
LABEL_51:
          sub_10004CC58();
          swift_allocError();
          *v18 = v28;
          *(v18 + 8) = a2;
          v19 = 2;
          goto LABEL_52;
        }

        if (!__OFSUB__(HIDWORD(a1), a1))
        {
          a2 = HIDWORD(a1) - a1;
          goto LABEL_51;
        }

LABEL_59:
        __break(1u);
        return result;
      }

      if (!__OFSUB__(HIDWORD(result), result))
      {
        v28 = HIDWORD(result) - result;
        goto LABEL_43;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    v22 = __OFSUB__(v24, v25);
    v26 = v24 - v25;
    if (!v22)
    {
      if (v16 == v26)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_10004CC58();
  swift_allocError();
  *v17 = v8;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_10004CC58()
{
  result = qword_1001535F0;
  if (!qword_1001535F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535F0);
  }

  return result;
}

BOOL sub_10004CCAC(char a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = a2 + 32;
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    ++v6;
    a3();
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v7 != 0;
}

uint64_t getEnumTagSinglePayload for ATLeafDataError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ATLeafDataError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_10004CDC4(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_10004CDDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_10004CE04()
{
  result = qword_1001535F8;
  if (!qword_1001535F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001535F8);
  }

  return result;
}

uint64_t sub_10004CE5C(uint64_t a1)
{
  v2 = Application_EnumDescriptor();
  v3 = [v2 textFormatNameForValue:a1];

  if (!v3)
  {
    return 0;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10004CEE0(uint64_t a1)
{
  v2 = sub_100056148();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10004CF1C(uint64_t a1)
{
  v2 = sub_100056148();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10004D1E4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_10004D22C()
{
  v1 = *(v0 + 40);
  sub_100027004(v1, *(v0 + 48));
  return v1;
}

uint64_t KTSWDB.STHKey.description.getter()
{
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  return 776492115;
}

uint64_t sub_10004D384()
{
  v1 = *v0;
  v2 = 0x746163696C707061;
  v3 = 0x65707954676F6CLL;
  v4 = 0x6E6F697369766572;
  if (v1 != 3)
  {
    v4 = 0x4864616548676F6CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69676542676F6CLL;
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

uint64_t sub_10004D434@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100053B44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004D468(uint64_t a1)
{
  v2 = sub_100053DA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D4A4(uint64_t a1)
{
  v2 = sub_100053DA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t KTSWDB.STHKey.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100024248(&qword_100153600, &qword_100104D30);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_100026F6C(a1, a1[3]);
  sub_100053DA4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v12) = *(v3 + 24);
    v11[0] = 2;
    type metadata accessor for LogType(0);
    sub_1000547B0(&qword_100153608, 255, type metadata accessor for LogType, &protocol conformance descriptor for LogType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = v12;
    v11[23] = 4;
    sub_100053DF8(&v13, v11);
    sub_100053E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t KTSWDB.STHKey.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  Hasher._combine(_:)(*(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));

  return Data.hash(into:)();
}

Swift::Int KTSWDB.STHKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D84C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double KTSWDB.STHKey.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100053EA8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10004D8CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004D974(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);

  return Data.hash(into:)();
}

Swift::Int sub_10004D9FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_10004DAA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s15swtransparencyd6KTSWDBC6STHKeyV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t sub_10004DB78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for KTSWDB.SignedLogHead(0) + 40);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10004DBF4(uint64_t a1)
{
  v3 = *(type metadata accessor for KTSWDB.SignedLogHead(0) + 40);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10004DCB8()
{
  v1 = *(v0 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 44));

  return v1;
}

uint64_t sub_10004DCF8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_10004DD88()
{
  v1 = v0 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 48);
  v2 = *v1;
  sub_100027004(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10004DDCC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 48);
  result = sub_100026FB0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10004DE5C()
{
  v1 = v0 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 52);
  v2 = *v1;
  sub_100027004(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_10004DEA0(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for KTSWDB.SignedLogHead(0) + 52);
  result = sub_100026FB0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_10004DF54(uint64_t a1)
{
  result = type metadata accessor for KTSWDB.SignedLogHead(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t sub_10004DFF0(char a1)
{
  result = type metadata accessor for KTSWDB.SignedLogHead(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

unint64_t sub_10004E068(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 6845555;
    v6 = 0x644965657274;
    if (a1 != 10)
    {
      v6 = 0x7473656C694D7369;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x5474706965636572;
    v8 = 0x746163696C707061;
    if (a1 != 7)
    {
      v8 = 0x4864616548676F6CLL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E69676542676F6CLL;
    v2 = 0x65707954676F6CLL;
    v3 = 0x6E6F697369766572;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000011;
    }

    if (!a1)
    {
      v1 = 0xD000000000000013;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10004E218@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000541FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10004E24C(uint64_t a1)
{
  v2 = sub_100054748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E288(uint64_t a1)
{
  v2 = sub_100054748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E2C8(void *a1)
{
  v3 = v1;
  v5 = sub_100024248(&qword_100153618, &qword_100104D38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100026F6C(a1, a1[3]);
  sub_100054748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v3;
  v18 = 0;
  type metadata accessor for KTResult(0);
  sub_1000547B0(&qword_100153620, 255, type metadata accessor for KTResult, &protocol conformance descriptor for KTResult);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = *(v3 + 8);
    v18 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LODWORD(v16) = *(v3 + 24);
    v18 = 3;
    type metadata accessor for LogType(0);
    sub_1000547B0(&qword_100153608, 255, type metadata accessor for LogType, &protocol conformance descriptor for LogType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 40);
    v18 = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v9 = type metadata accessor for KTSWDB.SignedLogHead(0);
    LOBYTE(v16) = 6;
    type metadata accessor for Date();
    sub_1000547B0(&qword_100153628, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 48));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 8;
    sub_100027004(v16, v11);
    sub_100053E54();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v16, v17);
    v12 = (v3 + *(v9 + 52));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 9;
    sub_100027004(v16, v13);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100026FB0(v16, v17);
    LOBYTE(v16) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10004E750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v19 = type metadata accessor for KTSWDB.SignedLogHead(0);
  v20 = v19[10];
  v21 = type metadata accessor for Date();
  result = (*(*(v21 - 8) + 32))(a9 + v20, a7, v21);
  v23 = (a9 + v19[11]);
  *v23 = a8;
  v23[1] = a10;
  v24 = (a9 + v19[12]);
  *v24 = a11;
  v24[1] = a12;
  v25 = (a9 + v19[13]);
  *v25 = a13;
  v25[1] = a14;
  *(a9 + v19[14]) = a15;
  *(a9 + v19[15]) = a16;
  return result;
}

uint64_t sub_10004E854@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for Date();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024248(&qword_100153630, &qword_100104D40);
  v8 = *(v7 - 8);
  v29 = v7;
  v30 = v8;
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for KTSWDB.SignedLogHead(0);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v32 = a1;
  sub_100026F6C(a1, v14);
  sub_100054748();
  v31 = v10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024E14(v32);
  }

  v25 = v11;
  v26 = v13;
  v15 = v4;
  type metadata accessor for KTResult(0);
  v34 = 0;
  sub_1000547B0(&qword_100153638, 255, type metadata accessor for KTResult, &protocol conformance descriptor for KTResult);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v26;
  *v26 = v33;
  v34 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16[1] = v33;
  LOBYTE(v33) = 2;
  v16[2] = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for LogType(0);
  v34 = 3;
  sub_1000547B0(&qword_100153640, 255, type metadata accessor for LogType, &protocol conformance descriptor for LogType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + 6) = v33;
  LOBYTE(v33) = 4;
  v16[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16[5] = v33;
  LOBYTE(v33) = 6;
  sub_1000547B0(&qword_100153648, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 32))(v16 + v25[10], v6, v15);
  LOBYTE(v33) = 7;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = (v16 + v25[11]);
  *v18 = v17;
  v18[1] = v19;
  v34 = 8;
  sub_1000547F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v16 + v25[12]) = v33;
  v34 = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v26 + v25[13]) = v33;
  LOBYTE(v33) = 10;
  *(v26 + v25[14]) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v33) = 11;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v30 + 8))(v31, v29);
  v21 = v20 & 1;
  v23 = v26;
  v22 = v27;
  *(v26 + v25[15]) = v21;
  sub_10005484C(v23, v22);
  sub_100024E14(v32);
  return sub_10002763C(v23);
}

uint64_t sub_10004EF7C()
{
  v2 = *(v0 + 24);
  sub_100056D98();
  if (!v1)
  {
    v4 = (*(*v3 + 160))();
    if (v4 && (v5 = (*(*v4 + 112))(0), (v6 & 1) == 0) && (v2 = v5) != 0)
    {
    }

    else
    {
      sub_100056D98();
      v9 = (*(*v7 + 160))(v7);

      if (v9)
      {

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

void sub_10004F148()
{
  sub_100056D0C();
  if (!v0)
  {
    sub_10004F194();
  }
}

void sub_10004F194()
{
  sub_100056D0C();
  if (!v0)
  {
    _StringGuts.grow(_:)(24);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    sub_100056D0C();
  }
}

uint64_t KTSWDB.__allocating_init(db:)(uint64_t a1)
{
  v2 = swift_allocObject();
  KTSWDB.init(db:)(a1);
  return v2;
}

uint64_t KTSWDB.init(db:)(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = __chkstk_darwin(v3);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v33 = &v32 - v7;
  __chkstk_darwin(v6);
  v32 = &v32 - v8;
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v13 - 8);
  v37 = v1;
  *(v1 + 16) = 2;
  *(v1 + 24) = a1;
  v38 = sub_1000548B0();
  v41 = a1;

  static DispatchQoS.unspecified.getter();
  v42 = _swiftEmptyArrayStorage;
  sub_1000547B0(&qword_100153660, 255, &type metadata accessor for OS_dispatch_queue_serial.Attributes, &protocol conformance descriptor for OS_dispatch_queue_serial.Attributes);
  sub_100024248(&qword_100153668, &qword_100104D48);
  sub_1000548FC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v9 + 104))(v11, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v39);
  v14 = v37;
  *(v14 + 32) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = v40;
  v16 = sub_10004EF7C();
  if (v15)
  {

    return v14;
  }

  v19 = v34;
  v18 = v35;
  v20 = v36;
  if (v16 == 1)
  {
    v25 = v33;
    Logger.init()();

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 134349056;
      *(v28 + 4) = 2;

      _os_log_impl(&_mh_execute_header, v26, v27, "Opening existing swt database with schema version 1. Dropping table and replacing with schema version %{public}ld.", v28, 0xCu);
    }

    else
    {
    }

    (*(v18 + 8))(v25, v20);
    sub_100056D0C();
    goto LABEL_16;
  }

  if (!v16)
  {
    v21 = v32;
    Logger.init()();

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134349056;
      *(v24 + 4) = 2;

      _os_log_impl(&_mh_execute_header, v22, v23, "Creating new swt database with schema version %{public}ld.", v24, 0xCu);
    }

    else
    {
    }

    (*(v18 + 8))(v21, v20);
LABEL_16:
    sub_10004F194();

    return v14;
  }

  Logger.init()();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    *(v31 + 4) = 2;

    _os_log_impl(&_mh_execute_header, v29, v30, "Opening existing swt database with schema version %{public}ld", v31, 0xCu);
  }

  else
  {
  }

  (*(v18 + 8))(v19, v20);
  return v14;
}

uint64_t sub_10004F8E8()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_100054960;
  *(v2 + 24) = v0;
  v5[4] = sub_100024570;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10001D1C0;
  v5[3] = &unk_100134748;
  v3 = _Block_copy(v5);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_10004FAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100056D98();
  if (!v6)
  {
    v13 = v12;
    v14 = *(*v12 + 120);
    v14(0, *(a2 + 16));
    (*(*v13 + 112))(1, *(a2 + 24));
    v14(2, *(a2 + 32));
    (*(*v13 + 104))(3, *a2, *(a2 + 8));
    v15 = *(a2 + 40);
    v16 = *(a2 + 48);
    v17 = *(*v13 + 144);
    v17(4, v15, v16);
    (*(*v13 + 128))(5, a3);
    v17(6, a4, a5);
    v18 = v14(7, a6);
    if ((*(*v13 + 160))(v18))
    {

      sub_1000553EC();
      swift_allocError();
      *v19 = xmmword_100104D20;
      *(v19 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(*v13 + 96))();
    }
  }
}

void sub_10004FD2C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v7 = v6;
      v8 = *(*v6 + 112);
      v8(0, a2);
      (*(*v7 + 104))(1, *a3, *(a3 + 8));
      v9 = *(*v7 + 120);
      v9(2, *(a3 + 16));
      v8(3, *(a3 + 24));
      v9(4, *(a3 + 32));
      v10 = (*(*v7 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v7 + 160))(v10))
      {

        sub_1000553EC();
        swift_allocError();
        *v11 = xmmword_100104D20;
        *(v11 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v7 + 96))();
      }
    }
  }
}

void sub_10004FF48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v7 = v6;
      v8 = *(*v6 + 112);
      v8(0, a2);
      (*(*v7 + 104))(1, *a3, *(a3 + 8));
      v9 = *(*v7 + 120);
      v9(2, *(a3 + 16));
      v8(3, *(a3 + 24));
      v9(4, *(a3 + 32));
      v10 = (*(*v7 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v7 + 160))(v10))
      {

        sub_1000553EC();
        swift_allocError();
        *v11 = xmmword_100104D20;
        *(v11 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v7 + 96))();
      }
    }
  }
}

void sub_1000501B4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_100056D98();
  if (!v3)
  {
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v7 = v6;
      v8 = *(*v6 + 112);
      v8(0, a2);
      (*(*v7 + 104))(1, *a3, *(a3 + 8));
      v9 = *(*v7 + 120);
      v9(2, *(a3 + 16));
      v8(3, *(a3 + 24));
      v9(4, *(a3 + 32));
      v10 = (*(*v7 + 144))(5, *(a3 + 40), *(a3 + 48));
      if ((*(*v7 + 160))(v10))
      {

        sub_1000553EC();
        swift_allocError();
        *v11 = xmmword_100104D20;
        *(v11 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v7 + 96))();
      }
    }
  }
}

void sub_1000503FC(uint64_t a1, uint64_t a2)
{
  sub_100056D98();
  if (!v2)
  {
    v5 = v4;
    v6 = *(*v4 + 112);
    v6(0, 1);
    (*(*v5 + 104))(1, *a2, *(a2 + 8));
    v7 = *(*v5 + 120);
    v7(2, *(a2 + 16));
    v6(3, *(a2 + 24));
    v7(4, *(a2 + 32));
    v8 = (*(*v5 + 144))(5, *(a2 + 40), *(a2 + 48));
    if ((*(*v5 + 160))(v8))
    {

      sub_1000553EC();
      swift_allocError();
      *v9 = xmmword_100104D20;
      *(v9 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      (*(*v5 + 96))();
    }
  }
}

void sub_10005064C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_100024248(&qword_100152D90, &qword_100105620);
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100056D98();
  if (!v2)
  {
    v13 = v12;
    v70 = a2;
    v71 = v9;
    v14 = *(*v12 + 120);
    v14(0, *(a1 + 16));
    (*(*v13 + 112))(1, *(a1 + 24));
    v14(2, *(a1 + 32));
    (*(*v13 + 104))(3, *a1, *(a1 + 8));
    v15 = (*(*v13 + 144))(4, *(a1 + 40), *(a1 + 48));
    v16 = (*(*v13 + 160))(v15);
    v17 = v16;
    if (!v16)
    {
      sub_1000553EC();
      swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      swift_willThrow();
LABEL_28:

      return;
    }

    v69 = 0;
    v18 = *(*v16 + 104);

    v19 = v18(0);
    if (v19 & 0x100000000) != 0 || (v20 = v19, v68 = v18(1), (v68 & 0x100000000) != 0) || (v21 = *(*v17 + 112), v66 = *v17 + 112, v67 = v21, v65 = v21(2), (v22) || (v64 = v18(3), (v64 & 0x100000000) != 0) || (v63 = v67(4), (v23) || (v24 = v18(5), (v24 & 0x100000000) != 0))
    {
LABEL_27:
      sub_1000553EC();
      swift_allocError();
      *v56 = 0;
      *(v56 + 8) = 0;
      *(v56 + 16) = 0;
      swift_willThrow();

      goto LABEL_28;
    }

    v62 = v24;
    (*(*v17 + 120))(6);
    v25 = v71;
    if ((*(v71 + 48))(v7, 1, v8) == 1)
    {
      sub_10005649C(v7);
      goto LABEL_27;
    }

    (*(v25 + 32))(v11, v7, v8);
    v27 = (*(*v17 + 96))(7);
    if (!v28)
    {
      (*(v71 + 8))(v11, v8);
      goto LABEL_27;
    }

    v59 = v27;
    v61 = v28;
    v60 = *(*v17 + 128);
    v29 = v60(8);
    if (v30 >> 60 == 15)
    {
      (*(v71 + 8))(v11, v8);
LABEL_26:

      goto LABEL_27;
    }

    v57 = v29;
    v58 = v30;
    v60 = v60(9);
    if (v31 >> 60 == 15)
    {
      (*(v71 + 8))(v11, v8);
LABEL_25:
      sub_10002BEE0(v57, v58);
      goto LABEL_26;
    }

    v32 = v31;
    v67 = v67(10);
    if (v33)
    {
      (*(v71 + 8))(v11, v8);
      v34 = v60;
      v35 = v32;
LABEL_24:
      sub_10002BEE0(v34, v35);
      goto LABEL_25;
    }

    v66 = v32;
    v36 = v18(11);
    if ((v36 & 0x100000000) != 0)
    {
      (*(v71 + 8))(v11, v8);
      v34 = v60;
      v35 = v66;
      goto LABEL_24;
    }

    if (((v68 | v20 | v62) & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v37 = v36;
      v68 = v68;
      v38 = v20;
      v39 = v62;
      v40 = type metadata accessor for KTSWDB.SignedLogHead(0);
      v41 = v70;
      (*(v71 + 16))(v70 + v40[10], v11, v8);
      v42 = v68;
      *v41 = v38;
      *(v41 + 8) = v42;
      LODWORD(v42) = v64;
      *(v41 + 16) = v65;
      *(v41 + 24) = v42;
      *(v41 + 32) = v63;
      *(v41 + 40) = v39;
      v43 = (v41 + v40[11]);
      v44 = v60;
      v45 = v61;
      *v43 = v59;
      v43[1] = v45;
      v46 = (v41 + v40[12]);
      v47 = v57;
      *v46 = v57;
      v48 = v47;
      v49 = v58;
      v46[1] = v58;
      v50 = v49;
      v51 = (v41 + v40[13]);
      v53 = v66;
      v52 = v67;
      *v51 = v44;
      v51[1] = v53;
      *(v41 + v40[14]) = v52;
      *(v41 + v40[15]) = v37 != 0;
      v54 = *(*v13 + 96);
      sub_100037620(v48, v50);
      v55 = sub_100037620(v44, v53);
      v54(v55);

      sub_10002BEE0(v44, v53);
      sub_10002BEE0(v57, v58);
      (*(v71 + 8))(v11, v8);
    }
  }
}

void sub_100050DF8(uint64_t a1, uint64_t a2)
{
  sub_100056D98();
  if (!v2)
  {
    v5 = v4;
    v6 = *(*v4 + 120);
    v6(0, *(a2 + 16));
    (*(*v5 + 112))(1, *(a2 + 24));
    v6(2, *(a2 + 32));
    (*(*v5 + 104))(3, *a2, *(a2 + 8));
    (*(*v5 + 144))(4, *(a2 + 40), *(a2 + 48));
    (*(*v5 + 152))(sub_10002AB0C, 0);
  }
}

void sub_100050FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100056D98();
  if (!v5)
  {
    v11 = v10;
    (*(*v10 + 104))(0, a2, a3);
    (*(*v11 + 120))(1, a4);
    (*(*v11 + 112))(2, a5);
    (*(*v11 + 152))(sub_10002AB0C, 0);
  }
}

void sub_100051184(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10)
{
  if ((a2 & 1) == 0)
  {
    sub_100056D98();
    if (v10)
    {
      return;
    }

    v17 = v21;
    v22 = *(*v21 + 104);

    v22(0, a4, a5);
    v23 = *(*v17 + 112);
    v23(1, a6);

    (*(*v17 + 128))(2, a7);
    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 <= 0x7FFFFFFF)
      {
        v23(3, a1);
        if (!(a8 >> 31))
        {
          v23(4, a8);
          if (!(a9 >> 31))
          {
            v23(5, a9);
            if (!(a10 >> 31))
            {

              v23(6, a10);
              goto LABEL_14;
            }

LABEL_23:
            __break(1u);
            return;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  sub_100056D98();
  if (v10)
  {
    return;
  }

  v17 = v16;
  v18 = *(*v16 + 104);

  v18(0, a4, a5);
  v19 = *(*v17 + 112);
  v19(1, a6);
  (*(*v17 + 128))(2, a7);
  if (a8 >> 31)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19(3, a8);
  if (a9 >> 31)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19(4, a9);
  if (a10 >> 31)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19(5, a10);
LABEL_14:
  (*(*v17 + 152))(sub_10002AB0C, 0);
}

void sub_100051530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100056D98();
  if (!v5)
  {
    v11 = v10;
    (*(*v10 + 104))(0, a2, a3);
    v12 = *(*v11 + 112);
    v12(1, a4);
    (*(*v11 + 128))(2, a5);
    v12(3, 1);
    v12(4, 1);
    v12(5, 1);
    (*(*v11 + 152))(sub_10002AB0C, 0);
  }
}

uint64_t sub_1000516B4()
{
  _StringGuts.grow(_:)(27);

  strcpy(v7, "Milestone(t=");
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 1030037548;
  v1._object = 0xE400000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 1030889516;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

uint64_t sub_10005180C()
{
  v1 = 0x6E6F697369766572;
  if (*v0 != 1)
  {
    v1 = 0x6E69676542676F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644965657274;
  }
}

uint64_t sub_100051868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100054BA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100051890(uint64_t a1)
{
  v2 = sub_100054B50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000518CC(uint64_t a1)
{
  v2 = sub_100054B50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100051908(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v13 = a4;
  v12[1] = a3;
  v7 = sub_100024248(&qword_100153678, &qword_100104D50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_100026F6C(a1, a1[3]);
  sub_100054B50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100051AC4(void *a1)
{
  result = sub_100054CC0(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t sub_100051B0C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100054CC0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_100051B88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100051C04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v32 = a5;
  v31 = a1;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v5 + 32);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    if (a4)
    {
      sub_100056D98();
      if (!v6)
      {
        v18 = v17;
        v19 = *(*v17 + 104);

        v19(0, v31, a2);
        v20 = (*(*v18 + 112))(1, v32);
        goto LABEL_7;
      }
    }

    else
    {
      sub_100056D98();
      if (!v6)
      {
        v18 = v21;
        v22 = *(*v21 + 104);

        v22(0, v31, a2);
        (*(*v18 + 120))(1, a3);
        v20 = (*(*v18 + 112))(2, v32);
LABEL_7:
        v23 = (*(*v18 + 160))(v20);

        if (!v23 || (v24 = *(*v23 + 112), a3 = v24(0), v26 = v25, v24(1), v28 = v27, , (v26 & 1) != 0) || (v28 & 1) != 0)
        {
          sub_1000553EC();
          swift_allocError();
          *v29 = v31;
          *(v29 + 8) = a2;
          *(v29 + 16) = v32;
          swift_willThrow();
        }
      }
    }

    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_100051F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 112);
  v4 = v3(0);
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v3(1);
  if (v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = v3(2);
  if (v11)
  {
    return 0;
  }

  v14 = v10;
  v12 = 1;
  swift_beginAccess();
  *(a2 + 16) = v6;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = v14;
  *(a2 + 48) = 0;
  return v12;
}

void sub_100052094(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a6;
  v45 = a4;
  v43 = a1;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a3;
  v46 = a2;
  if (a2)
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v19 = v18;
    v40 = 0;
    v41 = a8;
    v20 = *(*v18 + 104);

    v42 = a5;
    v20(0, v45, a5);
    v21 = *(*v19 + 112);
    v21(1, v47);
    if (a7 >> 31)
    {
      goto LABEL_16;
    }

    v22 = 2;
  }

  else
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v19 = v23;
    v40 = 0;
    v41 = a8;
    v24 = *(*v23 + 104);

    v42 = a5;
    v24(0, v45, a5);
    (*(*v19 + 120))(1, v43);
    v21 = *(*v19 + 112);
    v21(2, v47);
    if (a7 >> 31)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v22 = 3;
  }

  v21(v22, a7);
  v25 = *(v44 + 32);
  *v17 = v25;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  v27 = v41;
  v28 = v42;
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 1;
  v30 = *(*v19 + 152);

  v31 = v40;
  v30(sub_1000565B8, v29);
  if (v31)
  {
  }

  else
  {
    v42 = v28;

    swift_beginAccess();
    v32 = *(v29 + 24);
    v44 = *(v29 + 16);
    v33 = *(v29 + 32);
    v34 = *(v29 + 40);
    v35 = *(v29 + 48);

    if (v35)
    {
      v44 = sub_100051C04(v45, v42, v43, v46 & 1, v47);
      v32 = v36;
      LOBYTE(v33) = v37;
      v34 = v38;
    }

    *v27 = v44;
    *(v27 + 8) = v32;
    *(v27 + 16) = v33 & 1;
    *(v27 + 24) = v34;
  }
}

uint64_t sub_1000524EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v7)
  {
    return v9;
  }

  return result;
}

void sub_100052560(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a6;
  v45 = a4;
  v43 = a1;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = a3;
  v46 = a2;
  if (a2)
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v19 = v18;
    v40 = 0;
    v41 = a8;
    v20 = *(*v18 + 104);

    v42 = a5;
    v20(0, v45, a5);
    v21 = *(*v19 + 112);
    v21(1, v47);
    if (a7 >> 31)
    {
      goto LABEL_16;
    }

    v22 = 2;
  }

  else
  {
    sub_100056D98();
    if (v8)
    {
      return;
    }

    v19 = v23;
    v40 = 0;
    v41 = a8;
    v24 = *(*v23 + 104);

    v42 = a5;
    v24(0, v45, a5);
    (*(*v19 + 120))(1, v43);
    v21 = *(*v19 + 112);
    v21(2, v47);
    if (a7 >> 31)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v22 = 3;
  }

  v21(v22, a7);
  v25 = *(v44 + 32);
  *v17 = v25;
  (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v17, v14);
  v27 = v41;
  v28 = v42;
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 1;
  v30 = *(*v19 + 152);

  v31 = v40;
  v30(sub_100056494, v29);
  if (v31)
  {
  }

  else
  {
    v42 = v28;

    swift_beginAccess();
    v32 = *(v29 + 24);
    v44 = *(v29 + 16);
    v33 = *(v29 + 32);
    v34 = *(v29 + 40);
    v35 = *(v29 + 48);

    if (v35)
    {
      v44 = sub_100051C04(v45, v42, v43, v46 & 1, v47);
      v32 = v36;
      LOBYTE(v33) = v37;
      v34 = v38;
    }

    *v27 = v44;
    *(v27 + 8) = v32;
    *(v27 + 16) = v33 & 1;
    *(v27 + 24) = v34;
  }
}

uint64_t sub_10005298C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v7;
  }

  return result;
}

void sub_100052A18(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  sub_100056D98();
  if (!v6)
  {
    v14 = v13;
    (*(*v13 + 104))(0, a1, a2);
    v15 = *(*v14 + 120);
    v15(1, a3);
    (*(*v14 + 112))(2, a4);
    v15(3, a5);
    v16 = swift_allocObject();
    *(v16 + 16) = _swiftEmptyArrayStorage;
    v17 = *(*v14 + 152);

    v17(sub_1000565B4, v16);

    swift_beginAccess();
    *a6 = *(v16 + 16);
  }
}

uint64_t sub_100052BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v4)
  {
    return v6;
  }

  return result;
}

void sub_100052C68(uint64_t a1@<X1>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, void *a5@<X8>)
{
  sub_100056D98();
  if (!v5)
  {
    v12 = v11;
    v17 = a5;
    (*(*v11 + 104))(0, *a1, *(a1 + 8));
    v13 = *(*v12 + 120);
    v13(1, *(a1 + 16));
    v14 = *(*v12 + 112);
    v14(2, *(a1 + 24));
    v13(3, *(a1 + 32));
    (*(*v12 + 144))(4, *(a1 + 40), *(a1 + 48));
    if (a2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v14(5, a2);
      if (!(a3 >> 31))
      {
        v14(6, a3);
        if (!(a4 >> 31))
        {
          v14(7, a4);
          v15 = swift_allocObject();
          *(v15 + 16) = 0;
          v16 = *(*v12 + 152);

          v16(sub_1000562E4, v15);

          swift_beginAccess();
          *v17 = *(v15 + 16);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100052ED4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100024248(&qword_1001535B0, &qword_100104D60);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v7)
  {
    return v9;
  }

  return result;
}

void sub_100052F64(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, void *a8@<X8>)
{
  sub_100056D98();
  if (!v8)
  {
    v18 = v17;
    (*(*v17 + 104))(0, a1, a2);
    (*(*v18 + 120))(1, a3);
    v19 = *(*v18 + 112);
    v19(2, a4);
    if (a5 >> 31)
    {
      __break(1u);
    }

    else
    {
      v19(3, a5);
      if (!(a6 >> 31))
      {
        v19(4, a6);
        if (!(a7 >> 31))
        {
          v19(5, a7);
          v20 = swift_allocObject();
          *(v20 + 16) = _swiftEmptyArrayStorage;
          v21 = *(*v18 + 152);

          v21(sub_1000561D8, v20);

          swift_beginAccess();
          *a8 = *(v20 + 16);

          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1000531A4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t KTSWDB.deinit()
{

  return v0;
}

uint64_t KTSWDB.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100053300()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000565A8;
  *(v3 + 24) = v1;
  v6[4] = sub_1000258CC;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10001D1C0;
  v6[3] = &unk_100134BA0;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100053830(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v9)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1000538A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  sub_100024248(&qword_100153680, &qword_100104D58);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_100053930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_10005399C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_100024248(&qword_1001535B0, &qword_100104D60);
  result = OS_dispatch_queue.sync<A>(execute:)();
  if (!v7)
  {
    return v9;
  }

  return result;
}

unint64_t sub_100053A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for KTSwiftDB();
  return static KTSwiftDB.== infix(_:_:)(*(v2 + 24), *(v3 + 24)) & 1;
}

void *sub_100053A70@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100053A8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100053B00(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100053B44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4864616548676F6CLL && a2 == 0xEB00000000687361)
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

BOOL _s15swtransparencyd6KTSWDBC6STHKeyV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != *(a2 + 16) || *(a1 + 6) != *(a2 + 24) || a1[4] != *(a2 + 32))
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a1[6];
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);

  return sub_100027800(v5, v6, v7, v8);
}

unint64_t sub_100053DA4()
{
  result = qword_100158230;
  if (!qword_100158230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158230);
  }

  return result;
}

unint64_t sub_100053E54()
{
  result = qword_100153610;
  if (!qword_100153610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153610);
  }

  return result;
}

uint64_t sub_100053EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100024248(&qword_100153828, &qword_100105628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_100026F6C(a1, a1[3]);
  sub_100053DA4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100024E14(a1);
  }

  LOBYTE(v18) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  LOBYTE(v18) = 1;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for LogType(0);
  v21 = 2;
  sub_1000547B0(&qword_100153640, 255, type metadata accessor for LogType, &protocol conformance descriptor for LogType);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = v18;
  LOBYTE(v18) = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  sub_1000547F8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;

  sub_100027004(v13, v14);
  sub_100024E14(a1);

  result = sub_100026FB0(v13, v14);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v20;
  *(a2 + 32) = v16;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

uint64_t type metadata accessor for KTSWDB.SignedLogHead(uint64_t a1)
{
  result = qword_100158BD0;
  if (!qword_100158BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000541FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x800000010010AF10 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AF30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65707954676F6CLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AF50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5474706965636572 && a2 == 0xEB00000000656D69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4864616548676F6CLL && a2 == 0xEB00000000687361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 6845555 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x644965657274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7473656C694D7369 && a2 == 0xEB00000000656E6FLL)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000545E0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = type metadata accessor for KTSWDB.SignedLogHead(0);
  if (static Date.== infix(_:_:)() & 1) != 0 && ((v5 = v4[11], v6 = a1, v7 = *(a1 + v5), v8 = *(a1 + v5 + 8), v9 = a2, v10 = (a2 + v5), v7 == *v10) ? (v11 = v8 == v10[1]) : (v11 = 0), (v11 || (v12 = _stringCompareWithSmolCheck(_:_:expecting:)(), v9 = a2, v6 = a1, (v12)) && sub_100027800(*(v6 + v4[12]), *(v6 + v4[12] + 8), *(v9 + v4[12]), *(v9 + v4[12] + 8)) && sub_100027800(*(a1 + v4[13]), *(a1 + v4[13] + 8), *(a2 + v4[13]), *(a2 + v4[13] + 8)) && *(a1 + v4[14]) == *(a2 + v4[14])))
  {
    v13 = *(a1 + v4[15]) ^ *(a2 + v4[15]) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_100054748()
{
  result = qword_100158238;
  if (!qword_100158238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100158238);
  }

  return result;
}

uint64_t sub_1000547B0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1000547F8()
{
  result = qword_100153650;
  if (!qword_100153650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153650);
  }

  return result;
}

uint64_t sub_10005484C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KTSWDB.SignedLogHead(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000548B0()
{
  result = qword_100153658;
  if (!qword_100153658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100153658);
  }

  return result;
}

unint64_t sub_1000548FC()
{
  result = qword_100153670;
  if (!qword_100153670)
  {
    sub_1000242F4(&qword_100153668, &qword_100104D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153670);
  }

  return result;
}

uint64_t sub_100054994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000549AC()
{
  sub_100056D98();
  if (!v0)
  {
    (*(*v1 + 152))(sub_10002AB0C, 0);
  }
}

unint64_t sub_100054B50()
{
  result = qword_100158240[0];
  if (!qword_100158240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100158240);
  }

  return result;
}

uint64_t sub_100054BA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965657274 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E69676542676F6CLL && a2 == 0xEA0000000000734DLL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100054CC0(void *a1)
{
  v2 = sub_100024248(&qword_100153820, &qword_100105618);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - v4;
  sub_100026F6C(a1, a1[3]);
  sub_100054B50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v9[3] = v8;
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100024E14(a1);
  return v6;
}

uint64_t sub_100054E9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100051C04(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 52));
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
  }

  return result;
}

void sub_100054F88(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  sub_100056D98();
  if (!v2)
  {
    v10 = v9;
    (*(*v9 + 104))(0, v4, v6);
    (*(*v10 + 120))(1, v5);
    v11 = *(*v10 + 112);
    v11(2, v7);
    (*(*v10 + 128))(3, v8);
    v11(4, 1);
    v11(5, 1);
    v11(6, 0);
    v12 = swift_allocObject();
    *(v12 + 16) = _swiftEmptyArrayStorage;
    v13 = *(*v10 + 152);

    v13(sub_1000561D4, v12);

    swift_beginAccess();
    *a1 = *(v12 + 16);
  }
}

void sub_1000551B8()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  sub_100056D98();
  if (!v1)
  {
    if (v2 >> 31)
    {
      __break(1u);
    }

    else
    {
      v9 = v8;
      v10 = *(*v8 + 112);
      v10(0, v2);
      (*(*v9 + 104))(1, v3, v4);
      (*(*v9 + 120))(2, v5);
      v10(3, v6);
      (*(*v9 + 128))(4, v7);
      v10(5, 1);
      v10(6, 1);
      v11 = (v10)(7, 0);
      if ((*(*v9 + 160))(v11))
      {

        sub_1000553EC();
        swift_allocError();
        *v12 = xmmword_100104D20;
        *(v12 + 16) = 0;
        swift_willThrow();
      }

      else
      {
        (*(*v9 + 96))();
      }
    }
  }
}

unint64_t sub_1000553EC()
{
  result = qword_100153688;
  if (!qword_100153688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153688);
  }

  return result;
}

unint64_t sub_100055444()
{
  result = qword_100153690;
  if (!qword_100153690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153690);
  }

  return result;
}

uint64_t sub_100055498(uint64_t a1, uint64_t a2)
{
  result = sub_1000547B0(&qword_100153698, a2, type metadata accessor for KTSWDB, &protocol conformance descriptor for KTSWDB);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100055514(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10005552C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_100055540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 20))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055594(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000555F4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

__n128 sub_100055628(uint64_t a1, uint64_t a2)
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

uint64_t sub_100055644(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10005568C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000556FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000557D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 40);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100055894(uint64_t a1)
{
  type metadata accessor for KTResult(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LogType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100055978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100055998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for KTSWDB.SignedLogHead.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KTSWDB.SignedLogHead.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SWTStateMachine.SMRunningState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SWTStateMachine.SMRunningState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100055C88()
{
  result = qword_100158CE0[0];
  if (!qword_100158CE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100158CE0);
  }

  return result;
}

unint64_t sub_100055D2C()
{
  result = qword_100159070[0];
  if (!qword_100159070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159070);
  }

  return result;
}

unint64_t sub_100055D84()
{
  result = qword_100159300[0];
  if (!qword_100159300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159300);
  }

  return result;
}

unint64_t sub_100055DDC()
{
  result = qword_100159410;
  if (!qword_100159410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159410);
  }

  return result;
}

unint64_t sub_100055E34()
{
  result = qword_100159418[0];
  if (!qword_100159418[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159418);
  }

  return result;
}

unint64_t sub_100055E8C()
{
  result = qword_1001594A0;
  if (!qword_1001594A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001594A0);
  }

  return result;
}

unint64_t sub_100055EE4()
{
  result = qword_1001594A8[0];
  if (!qword_1001594A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001594A8);
  }

  return result;
}

unint64_t sub_100055F3C()
{
  result = qword_100159530;
  if (!qword_100159530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159530);
  }

  return result;
}

unint64_t sub_100055F94()
{
  result = qword_100159538[0];
  if (!qword_100159538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100159538);
  }

  return result;
}

unint64_t sub_100056148()
{
  result = qword_100153818;
  if (!qword_100153818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153818);
  }

  return result;
}

uint64_t sub_10005619C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000561D8(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 112))(0);
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    swift_beginAccess();
    v6 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_10004B020(0, *(v6 + 2) + 1, 1, v6);
      *(v2 + 16) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_10004B020((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = v5;
    *(v2 + 16) = v6;
  }

  return 1;
}

uint64_t sub_1000562E4(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 104))(0);
  if ((v3 & 0x100000000) == 0)
  {
    v4 = v3;
    swift_beginAccess();
    *(v2 + 16) = v4;
  }

  return 1;
}

uint64_t sub_10005635C(uint64_t a1)
{
  v2 = v1;
  v3 = (*(*a1 + 128))(0);
  if (v4 >> 60 != 15)
  {
    v5 = v3;
    v6 = v4;
    swift_beginAccess();
    v7 = *(v2 + 16);
    sub_100027004(v5, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_10004B124(0, *(v7 + 2) + 1, 1, v7);
      *(v2 + 16) = v7;
    }

    v10 = *(v7 + 2);
    v9 = *(v7 + 3);
    if (v10 >= v9 >> 1)
    {
      v7 = sub_10004B124((v9 > 1), v10 + 1, 1, v7);
    }

    *(v7 + 2) = v10 + 1;
    v11 = &v7[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v6;
    *(v2 + 16) = v7;
    swift_endAccess();
    sub_10002BEE0(v5, v6);
  }

  return 1;
}

uint64_t sub_10005649C(uint64_t a1)
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *sub_1000566B0(unsigned __int8 a1)
{
  v1 = "ATMilestoneDownload";
  v2 = "SWTStateMachine";
  v3 = "SWTFailProofVerification";
  if (a1 != 3)
  {
    v3 = "SWTSplitViewCFU";
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = "ATPatConsistency";
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10005672C()
{
  result = qword_100153830;
  if (!qword_100153830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153830);
  }

  return result;
}

const char *sub_100056780()
{
  v1 = *v0;
  v2 = "ATMilestoneDownload";
  v3 = "SWTStateMachine";
  v4 = "SWTFailProofVerification";
  if (v1 != 3)
  {
    v4 = "SWTSplitViewCFU";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "ATPatConsistency";
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

Swift::Int sub_100056874()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000568B8(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000568F8(uint64_t a1)
{
  v2 = sub_100058564();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100056934(uint64_t a1)
{
  v2 = sub_100058564();

  return Error<>._code.getter(a1, v2);
}

id static KTSwiftDB.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  if (v4 && (swift_beginAccess(), *(a2 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

void *sub_1000569EC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_100056A30(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t KTSwiftDB.init(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  *(v2 + 16) = 0;
  sub_100056C4C(a1, &v15 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v10 = 0;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v10 = v11;
    (*(v8 + 8))(v6, v7);
  }

  v12 = [objc_allocWithZone(KTSDBObjc) initDatabaseWithURL:v10];

  sub_10002533C(a1, &qword_100152F00, &qword_1001042C0);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v2 + 16);
    *(v2 + 16) = v12;
  }

  else
  {

    return 0;
  }

  return v2;
}

uint64_t sub_100056C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100056CBC()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 close];
    v2 = *(v0 + 16);
    *(v0 + 16) = 0;
  }
}

void sub_100056D0C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    [v2 executeSQLStmt:v3];
  }
}

void sub_100056D98()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    v3 = String._bridgeToObjectiveC()();
    v7 = 0;
    v4 = [v2 prepareStatement:v3 error:&v7];

    if (v4)
    {
      v5 = v7;

      type metadata accessor for KTSwiftDB.SQLStatement();
      *(swift_allocObject() + 16) = v4;
    }

    else
    {
      v6 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_100056ED8();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_100056ED8()
{
  result = qword_100153838;
  if (!qword_100153838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153838);
  }

  return result;
}

uint64_t sub_100056F2C(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_100056FF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v3 bindDate:isa column:a1];
}

void sub_100057090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), SEL *a5)
{
  v8 = *(v5 + 16);
  v9 = a4(a2, a3);
  [v8 *a5];
}

id sub_100057104(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  aBlock[4] = sub_100057290;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000572F8;
  aBlock[3] = &unk_100134D30;
  v7 = _Block_copy(aBlock);

  aBlock[0] = 0;
  LODWORD(a2) = [v5 steps:v7 error:aBlock];
  _Block_release(v7);
  if (a2)
  {
    return aBlock[0];
  }

  v9 = aBlock[0];
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100057258()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057290(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for KTSwiftDB.SQLRow();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  swift_unknownObjectRetain();
  LOBYTE(a1) = v3(v4);

  return a1 & 1;
}

uint64_t sub_1000572F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  LOBYTE(v2) = v2(v3);

  swift_unknownObjectRelease();
  return v2 & 1;
}

uint64_t sub_100057354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005736C()
{
  v1 = *(v0 + 16);
  v13 = 0;
  v2 = [v1 stepWithError:&v13];
  v3 = v13;
  if (v2)
  {
    v4 = v2;
    type metadata accessor for KTSwiftDB.SQLRow();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v3;
  }

  else
  {
    v7 = v13;
    v8 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v13 = v8;
    swift_errorRetain();
    sub_100024248(&qword_100152630, &qword_100103210);
    type metadata accessor for KTSDBObjcError(0);
    v5 = v9;
    if (swift_dynamicCast() && (sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C), _BridgedStoredNSError.code.getter(), v12, v11 == 2))
    {

      return 0;
    }

    else
    {

      swift_willThrow();
    }
  }

  return v5;
}

uint64_t KTSwiftDB.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100057588(uint64_t a1)
{
  v2 = [*(v1 + 16) textAtColumn:a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100057650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(v2 + 16) dateAtColumn:a1];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1000576E8(uint64_t a1)
{
  v2 = [*(v1 + 16) blobAtColumn:a1];
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_100057774()
{
  v1 = [*(v0 + 16) allObjectsByColumnName];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_1000577EC(v2);

  return v3;
}

unint64_t sub_1000577EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100024248(&qword_100153B10, &qword_100105B40);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_100025058(*(a1 + 56) + 32 * v11, v31);
        *&v30 = v13;
        *(&v30 + 1) = v14;
        v28 = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v15 = v30;
        sub_100032F28(v29, v26);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        v26[3] = v23;
        v26[4] = v24;
        v27 = v25;
        result = sub_1000435B4(v15, *(&v15 + 1));
        if (v16)
        {
          *(v2[6] + 16 * result) = v15;
          v9 = result;

          result = sub_1000585B8(&v23, v2[7] + 40 * v9);
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          v17 = v2[7] + 40 * result;
          v18 = v23;
          v19 = v24;
          *(v17 + 32) = v25;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_24;
          }

          v2[2] = v22;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }

      v25 = 0;
      v23 = 0u;
      v24 = 0u;
      sub_10002533C(&v23, &qword_100153B18, qword_100105B48);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100057AC0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_100057AF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 && (swift_beginAccess(), *(v3 + 16)))
  {
    return [v4 isEqual:?];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100057BAC()
{
  result = qword_100153850;
  if (!qword_100153850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153850);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateMachineEvents.WaitType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StateMachineEvents.WaitType(_WORD *result, int a2, int a3)
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

uint64_t sub_100057D08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100057D58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100057DAC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100057DE4(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_100057E50(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_100057EBC(void *a1, uint64_t a2)
{
  v4 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_100057F70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100057FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10005804C(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153AD0, type metadata accessor for KTSDBObjcError, &unk_1001059FC);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000580B8(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153AD0, type metadata accessor for KTSDBObjcError, &unk_1001059FC);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100058124(uint64_t a1)
{
  v2 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_100058190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10005825C(&qword_100153848, type metadata accessor for KTSDBObjcError, &unk_100105A3C);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10005825C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10005846C()
{
  result = qword_100153AF8;
  if (!qword_100153AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153AF8);
  }

  return result;
}

unint64_t sub_100058564()
{
  result = qword_100153B08;
  if (!qword_100153B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B08);
  }

  return result;
}

id sub_100058624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = 0;
  v7 = [v3 verifyConsistencyProof:isa startLogHead:a2 endLogHead:a3 error:&v11];

  v8 = v11;
  if (v11)
  {
    swift_willThrow();
    v9 = v8;
  }

  return v7;
}

id sub_100058738()
{
  v5 = 0;
  result = [v0 verifyWithError:&v5];
  v2 = v5;
  if (v5)
  {
    v3 = result;
    swift_willThrow();
    v4 = v2;
    return v3;
  }

  return result;
}

uint64_t sub_100058814()
{
  v1 = 0;
  result = mach_timebase_info(&v1);
  qword_100159EC8 = v1;
  return result;
}

unint64_t MachTime.seconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (!is_mul_ok(result, qword_100159EC8))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(qword_100159EC8))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t MachTime.nanoseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t MachTime.milliseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8) / 0xF4240;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t MachTime.microseconds.getter(unint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      return result * qword_100159EC8 / HIDWORD(qword_100159EC8) / 0x3E8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MachTime.description.getter(uint64_t result)
{
  if (qword_100159EC0 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  if (is_mul_ok(result, qword_100159EC8))
  {
    if (HIDWORD(qword_100159EC8))
    {
      v1 = result * qword_100159EC8 / HIDWORD(qword_100159EC8);
      if (v1 / 1000000000.0 > 10.0)
      {
        v5 = 0;
        Double.write<A>(to:)();
        v2 = 0x73646E6F63657320;
        v3 = 0xE800000000000000;
LABEL_13:
        String.append(_:)(*&v2);
        return v5;
      }

      if (v1 < 0xA7D8C0)
      {
        if (v1 >> 3 >= 0x55F)
        {
          v5 = dispatch thunk of CustomStringConvertible.description.getter();
          v2 = 7583170;
          v3 = 0xA300000000000000;
          goto LABEL_13;
        }

        v5 = dispatch thunk of CustomStringConvertible.description.getter();
        v2 = 29550;
      }

      else
      {
        v5 = dispatch thunk of CustomStringConvertible.description.getter();
        v2 = 29549;
      }

      v3 = 0xE200000000000000;
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static MachTime.- infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (qword_100159EC0 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    result = v2;
    a2 = v3;
  }

  if (!is_mul_ok(result, qword_100159EC8))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!HIDWORD(qword_100159EC8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!is_mul_ok(a2, qword_100159EC8))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_100058DAC()
{
  result = qword_100153B30;
  if (!qword_100153B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100153B30);
  }

  return result;
}

unint64_t sub_100058E68(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0xD000000000000024;
    v3 = 0xD000000000000019;
    if (a1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000011;
    if (a1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1 <= 1)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    return 0xD00000000000001ELL;
  }
}

uint64_t sub_100058FAC(uint64_t a1)
{
  v2 = sub_10005CD18();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100058FE8(uint64_t a1)
{
  v2 = sub_10005CD18();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100059030()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D218);
  sub_100025AE0(v0, qword_10015D218);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000590B0()
{
  if (qword_10015A050 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D218);
}

uint64_t sub_100059114@<X0>(uint64_t a1@<X8>)
{
  if (qword_10015A050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D218);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_1000591BC()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t sub_1000592B4(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_100059318(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

__n128 sub_1000593E8@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  sub_100037608(a4, a9 + 24);
  *(a9 + 104) = a5;
  sub_100037608(a6, a9 + 64);
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  result = *a10;
  v16 = *(a10 + 16);
  *(a9 + 128) = *a10;
  *(a9 + 144) = v16;
  *(a9 + 160) = *(a10 + 32);
  return result;
}

uint64_t sub_100059464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v67 = a4;
  v64 = a3;
  v65 = a2;
  v73 = a1;
  v9 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  __chkstk_darwin(v9 - 8);
  v69 = &v57 - v10;
  v11 = type metadata accessor for URL();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = __chkstk_darwin(v11);
  v61 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v57 - v14;
  v68 = type metadata accessor for URLQueryItem();
  v74 = *(v68 - 8);
  v15 = __chkstk_darwin(v68);
  v72 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v66 = &v57 - v18;
  __chkstk_darwin(v17);
  v20 = &v57 - v19;
  v21 = sub_100024248(&qword_100153B78, &qword_100105E68);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = type metadata accessor for URLComponents();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v75 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v6;
  v27 = *(v6 + 8);
  v28 = String._bridgeToObjectiveC()();
  v60 = v27;
  v29 = [v27 stringForKey:v28];

  if (!v29)
  {
    sub_10005CB24();
    swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 1;
    return swift_willThrow();
  }

  v59 = a5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URLComponents.init(string:)();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10002533C(v23, &qword_100153B78, &qword_100105E68);
    sub_10005CB24();
    swift_allocError();
    *v30 = 3;
    *(v30 + 8) = 1;
    return swift_willThrow();
  }

  v33 = v24;
  (*(v25 + 32))(v75, v23, v24);
  v58 = v25;
  if (v73)
  {
    v76 = v73;
    sub_100025D44();
    BinaryInteger.description.getter();
    URLQueryItem.init(name:value:)();

    v34 = sub_10005C94C(0, 1, 1, _swiftEmptyArrayStorage);
    v36 = v34[2];
    v35 = v34[3];
    if (v36 >= v35 >> 1)
    {
      v34 = sub_10005C94C((v35 > 1), v36 + 1, 1, v34);
    }

    v37 = v68;
    v34[2] = v36 + 1;
    (*(v74 + 32))(v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v36, v20, v37);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v37 = v68;
  }

  v38 = v72;
  if ((v64 & 1) == 0 && v65)
  {
    v76 = v65;
    sub_100025D44();
    BinaryInteger.description.getter();
    URLQueryItem.init(name:value:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_10005C94C(0, v34[2] + 1, 1, v34);
    }

    v40 = v34[2];
    v39 = v34[3];
    v38 = v72;
    if (v40 >= v39 >> 1)
    {
      v34 = sub_10005C94C((v39 > 1), v40 + 1, 1, v34);
    }

    v34[2] = v40 + 1;
    (*(v74 + 32))(v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v40, v66, v37);
  }

  URLQueryItem.init(name:value:)();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v75;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_10005C94C(0, v34[2] + 1, 1, v34);
  }

  v44 = v34[2];
  v43 = v34[3];
  if (v44 >= v43 >> 1)
  {
    v34 = sub_10005C94C((v43 > 1), v44 + 1, 1, v34);
  }

  v34[2] = v44 + 1;
  (*(v74 + 32))(v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v44, v38, v37);
  URLComponents.queryItems.setter();
  v45 = v69;
  URLComponents.url.getter();
  v47 = v70;
  v46 = v71;
  if ((*(v70 + 48))(v45, 1, v71) == 1)
  {
    sub_10002533C(v45, &qword_100152F00, &qword_1001042C0);
    sub_10005CB24();
    swift_allocError();
    *v48 = 3;
    *(v48 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v49 = v63;
    (*(v47 + 32))(v63, v45, v46);
    sub_10005CD6C();
    v50 = v61;
    (*(v47 + 16))(v61, v49, v46);
    v51 = sub_1000B79C8(v50, a6);
    v52 = sub_1000258E4();
    sub_1000B738C(v52 & 1);
    if (sub_10002AAF4([v60 currentEnvironment]))
    {
      [v51 _setPrivacyProxyFailClosed:1];
      if (qword_10015A050 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100025AE0(v53, qword_10015D218);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "Enforcing privacy proxy", v56, 2u);
      }

      v42 = v75;
    }

    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v47 + 8))(v49, v46);
  }

  return (*(v58 + 8))(v42, v33);
}

id sub_100059DE0()
{
  v0 = objc_opt_self();

  return [v0 defaultNetworkTimeout];
}

uint64_t sub_100059E18(double a1)
{
  *(v2 + 544) = v1;
  *(v2 + 536) = a1;
  sub_100024248(&qword_100152D90, &qword_100105620);
  *(v2 + 552) = swift_task_alloc();
  v3 = type metadata accessor for Date();
  *(v2 + 560) = v3;
  *(v2 + 568) = *(v3 - 8);
  *(v2 + 576) = swift_task_alloc();
  sub_100024248(&qword_100152F00, &qword_1001042C0);
  *(v2 + 584) = swift_task_alloc();
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  *(v2 + 608) = v4;
  *(v2 + 616) = *(v4 - 8);
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = swift_task_alloc();
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();

  return _swift_task_switch(sub_100059FE4, 0, 0);
}

uint64_t sub_100059FE4()
{
  v64 = v0;
  v1 = **(v0 + 544);
  *(v0 + 524) = v1;
  v2 = sub_10004CE5C(v1);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = *(v0 + 544);
    v7 = v6[14];
    if (!v7)
    {
      v9 = 0;
LABEL_7:
      v11 = v6[6];
      v12 = v6[7];
      sub_100026F6C(v6 + 3, v11);
      v13 = (*(v12 + 104))(v4, v5, v9, v7 == 0, 5, 1, v11, v12);
      v15 = v14;
      v17 = v16;
      v19 = v18;

      *(v0 + 808) = v17 & 1;
      v26 = *(v0 + 648);
      v27 = *(v0 + 536);
      *(v0 + 656) = v19;
      *(v0 + 664) = v15;
      *(v0 + 672) = v13;
      sub_100059464(v13, v15, v17 & 1, v7 != 0, v26, v27);
      if (qword_10015A050 != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 648);
      v31 = *(v0 + 640);
      v32 = *(v0 + 616);
      v33 = *(v0 + 608);
      v34 = type metadata accessor for Logger();
      *(v0 + 680) = sub_100025AE0(v34, qword_10015D218);
      v35 = *(v32 + 16);
      *(v0 + 688) = v35;
      *(v0 + 696) = (v32 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v35(v31, v30, v33);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 640);
      if (v38)
      {
        v61 = v37;
        v40 = *(v0 + 600);
        v41 = swift_slowAlloc();
        v63[0] = swift_slowAlloc();
        *v41 = 136315394;
        *(v0 + 304) = v13;
        *(v0 + 312) = v15;
        *(v0 + 320) = v17 & 1;
        *(v0 + 328) = v19;
        sub_10005CB8C();
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v44 = sub_100021D24(v42, v43, v63);

        *(v41 + 4) = v44;
        *(v41 + 12) = 2080;
        URLRequest.url.getter();
        v45 = type metadata accessor for URL();
        v46 = *(v45 - 8);
        v47 = (*(v46 + 48))(v40, 1, v45);
        v48 = *(v0 + 600);
        if (v47 == 1)
        {
          sub_10002533C(*(v0 + 600), &qword_100152F00, &qword_1001042C0);
          v49 = 0xEB000000004C5255;
          v50 = 0x206E776F6E6B6E75;
        }

        else
        {
          v50 = URL.description.getter();
          v49 = v54;
          (*(v46 + 8))(v48, v45);
        }

        v53 = *(*(v0 + 616) + 8);
        v53(*(v0 + 640), *(v0 + 608));
        v55 = sub_100021D24(v50, v49, v63);

        *(v41 + 14) = v55;
        _os_log_impl(&_mh_execute_header, v36, v61, "Fetching %s from %s", v41, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v51 = *(v0 + 616);
        v52 = *(v0 + 608);

        v53 = *(v51 + 8);
        v53(v39, v52);
      }

      *(v0 + 704) = v53;
      v56 = *(v0 + 544);
      *(v0 + 712) = static MachTime.current.getter();
      v57 = v56[11];
      v58 = v56[12];
      sub_100026F6C(v56 + 8, v57);
      v62 = (*(v58 + 8) + **(v58 + 8));
      v59 = swift_task_alloc();
      *(v0 + 720) = v59;
      *v59 = v0;
      v59[1] = sub_10005A7C8;
      v60 = *(v0 + 648);

      return v62(v60, v57, v58);
    }

    v8 = [v7 logBeginningMs];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      v6 = *(v0 + 544);
      goto LABEL_7;
    }

    __break(1u);
    swift_once();
    v20 = type metadata accessor for Logger();
    sub_100025AE0(v20, qword_10015D218);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to get last milestone from DB: %@", v23, 0xCu);
      sub_10002533C(v24, &qword_100153450, &unk_100104140);
    }
  }

  else
  {
    sub_10005CB24();
    swift_allocError();
    *v10 = 4;
    *(v10 + 8) = 1;
  }

  swift_willThrow();

  v28 = *(v0 + 8);

  return v28();
}