uint64_t sub_1000CEFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000CF19C();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

const char *sub_1000CF028(char a1)
{
  result = "Start_ResolveDeviceProximity";
  switch(a1)
  {
    case 1:
      result = "ContentResolution_Media";
      break;
    case 2:
      result = "ContentResolution_ShareableContent";
      break;
    case 3:
      result = "ContentResolution_Remote";
      break;
    case 4:
      result = "Delay_HandoffAction";
      break;
    case 5:
      result = "Delay_HandoffAction_ContentResolution";
      break;
    case 6:
      result = "Delay_HandoffUI";
      break;
    case 7:
      result = "Present_DwellBanner";
      break;
    case 8:
      result = "Present_InCallUI";
      break;
    case 9:
      result = "Present_SystemCallControls";
      break;
    case 10:
      result = "Present_LagunaPullConversation";
      break;
    case 11:
      result = "Present_MediaCard";
      break;
    case 12:
      result = "Present_SharePreview";
      break;
    case 13:
      result = "Present_Shockwave";
      break;
    case 14:
      result = "LaunchApp_Remote_FaceTime";
      break;
    case 15:
      result = "LaunchApp_Remote_Safari";
      break;
    case 16:
      result = "Transfer_Media";
      break;
    case 17:
      result = "HandoffOccurred";
      break;
    case 18:
      result = "SetupCompleted";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000CF19C()
{
  result = qword_1003426F0;
  if (!qword_1003426F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003426F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000CF3B0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = a2(a1);
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = a4;
    sub_1000CDF40(0, v9, 0);
    v10 = (v8 + 56);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v26 = *(v10 - 3);
      v28 = *(v10 - 2);
      swift_bridgeObjectRetain_n();

      v13._countAndFlagsBits = 8250;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v11;
      v14._object = v12;
      String.append(_:)(v14);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000CDF40((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v26;
      v17[5] = v28;
      v10 += 4;
      --v9;
    }

    while (v9);

    a4 = v25;
  }

  else
  {
  }

  a3(0);
  sub_100035D04(a4, a5);
  v27 = String.init<A>(describing:)();
  v18._countAndFlagsBits = 40;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return v27;
}

uint64_t sub_1000CF64C(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = a2(a1);
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = a4;
    sub_1000CDF40(0, v8, 0);
    v9 = (v7 + 56);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v25 = *(v9 - 3);
      v27 = *(v9 - 2);
      swift_bridgeObjectRetain_n();

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v10;
      v13._object = v11;
      String.append(_:)(v13);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000CDF40((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v25;
      v16[5] = v27;
      v9 += 4;
      --v8;
    }

    while (v8);

    a4 = v24;
  }

  else
  {
  }

  sub_100035D04(a4, a5);
  v26 = String.init<A>(describing:)();
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return v26;
}

Swift::Int sub_1000CF894()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002787A8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000CF91C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002787A8[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1000CF968@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000CFBA0();
  *a2 = result;
  return result;
}

unint64_t sub_1000CFA04()
{
  result = qword_100342708;
  if (!qword_100342708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342708);
  }

  return result;
}

uint64_t sub_1000CFA58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  *(v7 + 16) = v2;
  *(v7 + 18) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_errorRetain();

  v8 = sub_1000CF64C(v10, sub_100058D28, &type metadata for HandoffActionContext, &qword_10033BE18, qword_100272750);
  sub_10000903C(v10);
  return v8;
}

unint64_t sub_1000CFB24(uint64_t a1)
{
  result = sub_1000CFB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000CFB4C()
{
  result = qword_100342710;
  if (!qword_100342710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342710);
  }

  return result;
}

uint64_t sub_1000CFC38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000CFC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Int sub_1000CFCF8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CFE0C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CFF00(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000D0010(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D0100()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342730);
  sub_100003078(v0, qword_100342730);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D0194(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_1000D0278@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0B90(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000D02A8@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "soft";
  v5 = "ityControlUI.HandoffUI";
  v6 = 0xD00000000000002DLL;
  v7 = "itycontrol.lockscreenControls";
  v8 = 0xD000000000000030;
  result = 0xD000000000000029;
  if (v3 != 4)
  {
    v8 = 0xD000000000000029;
    v7 = "TransferObserver";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "itycontrol.cliClient";
  if (v3 != 1)
  {
    v2 = 0xD000000000000026;
    v10 = "com.apple.proximitycontrol";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

unint64_t sub_1000D0358()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000002DLL;
  v4 = 0xD000000000000030;
  if (v2 != 4)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000026;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0404(unsigned __int8 a1, void *a2)
{
  if (qword_100338F30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342730);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v72 = a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v75[0] = v10;
    v11 = 0xD000000000000024;
    v12 = "soft";
    *v8 = 136315394;
    v13 = "ityControlUI.HandoffUI";
    v14 = 0xD00000000000002DLL;
    v15 = "itycontrol.lockscreenControls";
    v16 = 0xD000000000000030;
    if (a1 != 4)
    {
      v16 = 0xD000000000000029;
      v15 = "TransferObserver";
    }

    if (a1 != 3)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = "itycontrol.cliClient";
    v18 = 0xD000000000000026;
    if (a1 == 1)
    {
      v18 = 0xD00000000000001ALL;
    }

    else
    {
      v17 = "com.apple.proximitycontrol";
    }

    if (a1)
    {
      v11 = v18;
      v12 = v17;
    }

    if (a1 <= 2u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v14;
    }

    if (a1 <= 2u)
    {
      v20 = v12;
    }

    else
    {
      v20 = v13;
    }

    v21 = sub_100017494(v19, v20 | 0x8000000000000000, v75);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Checking for entitlement '%s' on %@", v8, 0x16u);
    sub_1000030B0(v9);

    sub_10000903C(v10);
  }

  else
  {
  }

  v23 = String._bridgeToObjectiveC()();

  v24 = [v5 cuValueForEntitlementNoCache:v23];

  if (!v24)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75[0] = v43;
      *v42 = 136315138;
      v44 = 0xD000000000000024;
      v45 = 0xD00000000000002DLL;
      v46 = 0xD000000000000030;
      if (v72 == 4)
      {
        v47 = "itycontrol.lockscreenControls";
      }

      else
      {
        v46 = 0xD000000000000029;
        v47 = "TransferObserver";
      }

      if (v72 == 3)
      {
        v48 = "ityControlUI.HandoffUI";
      }

      else
      {
        v45 = v46;
        v48 = v47;
      }

      v49 = 0xD000000000000026;
      if (v72 == 1)
      {
        v49 = 0xD00000000000001ALL;
        v50 = "itycontrol.cliClient";
      }

      else
      {
        v50 = "com.apple.proximitycontrol";
      }

      if (v72)
      {
        v44 = v49;
      }

      v51 = "soft";
      if (v72)
      {
        v51 = v50;
      }

      if (v72 <= 2u)
      {
        v52 = v44;
      }

      else
      {
        v52 = v45;
      }

      if (v72 <= 2u)
      {
        v53 = v51;
      }

      else
      {
        v53 = v48;
      }

      v54 = sub_100017494(v52, v53 | 0x8000000000000000, v75);

      *(v42 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "### Failed to determine value for '%s'", v42, 0xCu);
      sub_10000903C(v43);
    }

    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v75, v74);
  if (!swift_dynamicCast())
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v74[0] = v58;
      *v57 = 136315138;
      v59 = 0xD000000000000024;
      v60 = 0xD00000000000002DLL;
      v61 = 0xD000000000000030;
      if (v72 == 4)
      {
        v62 = "itycontrol.lockscreenControls";
      }

      else
      {
        v61 = 0xD000000000000029;
        v62 = "TransferObserver";
      }

      if (v72 == 3)
      {
        v63 = "ityControlUI.HandoffUI";
      }

      else
      {
        v60 = v61;
        v63 = v62;
      }

      v64 = 0xD000000000000026;
      if (v72 == 1)
      {
        v64 = 0xD00000000000001ALL;
        v65 = "itycontrol.cliClient";
      }

      else
      {
        v65 = "com.apple.proximitycontrol";
      }

      if (v72)
      {
        v59 = v64;
      }

      v66 = "soft";
      if (v72)
      {
        v66 = v65;
      }

      if (v72 <= 2u)
      {
        v67 = v59;
      }

      else
      {
        v67 = v60;
      }

      if (v72 <= 2u)
      {
        v68 = v66;
      }

      else
      {
        v68 = v63;
      }

      v69 = sub_100017494(v67, v68 | 0x8000000000000000, v74);

      *(v57 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v55, v56, "### Failed to determine BOOLValue for '%s'", v57, 0xCu);
      sub_10000903C(v58);
    }

    sub_10000903C(v75);
    return 0;
  }

  v25 = v73;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74[0] = v71;
    *v28 = 67109378;
    *(v28 + 4) = v73;
    *(v28 + 8) = 2080;
    v29 = 0xD000000000000024;
    v30 = 0xD00000000000002DLL;
    v31 = 0xD000000000000030;
    if (v72 == 4)
    {
      v32 = "itycontrol.lockscreenControls";
    }

    else
    {
      v31 = 0xD000000000000029;
      v32 = "TransferObserver";
    }

    if (v72 == 3)
    {
      v33 = "ityControlUI.HandoffUI";
    }

    else
    {
      v30 = v31;
      v33 = v32;
    }

    v34 = 0xD000000000000026;
    if (v72 == 1)
    {
      v34 = 0xD00000000000001ALL;
      v35 = "itycontrol.cliClient";
    }

    else
    {
      v35 = "com.apple.proximitycontrol";
    }

    if (v72)
    {
      v29 = v34;
    }

    v36 = "soft";
    if (v72)
    {
      v36 = v35;
    }

    if (v72 <= 2u)
    {
      v37 = v29;
    }

    else
    {
      v37 = v30;
    }

    if (v72 <= 2u)
    {
      v38 = v36;
    }

    else
    {
      v38 = v33;
    }

    v39 = sub_100017494(v37, v38 | 0x8000000000000000, v74);

    *(v28 + 10) = v39;
    _os_log_impl(&_mh_execute_header, v26, v27, "Found value '%{BOOL}d' for entitlement '%s'", v28, 0x12u);
    sub_10000903C(v71);
  }

  sub_10000903C(v75);
  return v25;
}

unint64_t sub_1000D0B3C()
{
  result = qword_100342748;
  if (!qword_100342748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342748);
  }

  return result;
}

unint64_t sub_1000D0B90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300D30, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0BDC(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ExperienceEvent(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009848(a2, v8, &qword_100342A10, &qword_100278A10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
  }

  else
  {
    sub_1000D6574(v8, v12, type metadata accessor for ExperienceEvent);
    v13 = sub_1002454A4(a1, v12);
    sub_100097C8C(v12, type metadata accessor for ExperienceEvent);
    if (!v13)
    {
      return 0;
    }
  }

  return a3;
}

BOOL sub_1000D0DB0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    v6 = v4;
    if (v5 == v4)
    {
      break;
    }

    v7 = *(type metadata accessor for ExperienceEvent(0) - 8);
    ++v4;
  }

  while (!sub_1002454A4(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, a1));
  return v5 != v6;
}

BOOL sub_1000D0E68(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000D0E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v5 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10026F050;
  sub_100097CEC(a1, v7 + v6, type metadata accessor for ExperienceEffect);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *v2;
  v11 = *(v2 + 1);
  v10 = *(v2 + 2);
  v13 = *(v2 + 3);
  v12 = *(v2 + 4);
  v17 = *(v2 + 5);
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000D71A4;
  *(v15 + 24) = v8;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v15;

  sub_1000B32F4(inited);
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v10;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  *(a2 + 40) = v17;
}

uint64_t sub_1000D1068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v6 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10026F050;
  sub_100097CEC(a1, v8 + v7, type metadata accessor for ExperienceEffect);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v11 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12 = *(v3 + 32);
  v16 = *(v3 + 40);
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000D71A4;
  *(v14 + 24) = v9;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v14;

  sub_1000B32F4(inited);
  *a2 = *v3;
  *(a2 + 16) = v11;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v16;
}

uint64_t *sub_1000D1234(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[0] = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v17[0] + 144)) = 0;
  v12 = *(*v4 + 152);
  sub_100035D04(&qword_10033E220, &qword_100274468);
  swift_allocObject();
  *(v4 + v12) = PassthroughSubject.init()();
  v13 = *(*v4 + 160);
  sub_100035D04(&qword_10033DE78, &qword_100274160);
  swift_allocObject();
  *(v4 + v13) = PassthroughSubject.init()();
  v14 = *(*v4 + 168);
  sub_100035D04(&qword_1003429F8, &qword_1002789F8);
  swift_allocObject();
  *(v4 + v14) = PassthroughSubject.init()();
  v15 = (v4 + *(*v4 + 176));
  *v15 = 0;
  v15[1] = 0;
  *(v4 + *(*v4 + 136)) = a1;
  *(v4 + direct field offset for StateMachine2.edges) = a2;
  if (!a4)
  {
    v17[1] = v17[0];
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
  }

  Logger.init(subsystem:category:)();
  (*(v9 + 32))(v4 + qword_10038AFC0, v11, v8);
  return v4;
}

uint64_t *sub_1000D14E8(uint64_t a1)
{
  swift_weakInit();
  v42 = qword_10038B0F0;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v2 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100278900;
  v6 = v5 + v4;
  *v6 = xmmword_100278910;
  *(v6 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  v7 = v6 + v3;
  sub_10001618C();
  v8 = swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 0xE000000000000000;
  *(v9 + 16) = 11;
  sub_10014FEEC(v8, v51);
  v10 = v52;
  v11 = v51[1];
  *v7 = v51[0];
  *(v7 + 16) = v11;
  *(v7 + 32) = v10;
  *(v7 + 40) = v53;
  v12 = 32;
  *(v7 + 56) = 32;
  swift_storeEnumTagMultiPayload();
  v13 = v6 + 2 * v3;
  *v13 = xmmword_100278910;
  *(v13 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v14 = v6 + 3 * v3;
  *v14 = xmmword_100278910;
  *(v14 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v15 = v6 + 4 * v3;
  *v15 = xmmword_100278910;
  *(v15 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v16 = v6 + 5 * v3;
  v17 = swift_allocError();
  *v18 = 0;
  *(v18 + 8) = 0xE000000000000000;
  *(v18 + 16) = 11;
  *v16 = v17;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  *(v6 + 6 * v3) = 3;
  swift_storeEnumTagMultiPayload();
  *(v6 + 7 * v3) = 0;
  swift_storeEnumTagMultiPayload();
  *(v1 + v42) = v5;
  swift_weakAssign();
  v19 = UUID.uuidString.getter();
  v20 = (v1 + qword_10038B0E0);
  *v20 = v19;
  v20[1] = v21;
  *(v1 + qword_10038B0E8) = sub_10006F838();
  _StringGuts.grow(_:)(29);

  v22 = *v20;
  v23 = v20[1];

  sub_10000B584(8, v22, v23);

  v24 = static String._fromSubstring(_:)();
  v26 = v25;

  v27._countAndFlagsBits = v24;
  v27._object = v26;
  String.append(_:)(v27);

  v28 = _swiftEmptyArrayStorage;
  v29 = sub_1000D1234(1, _swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x800000010029EE10);
  swift_retain_n();
  v44 = sub_1000D1BF8();
  v45 = sub_1000D2E4C();
  v46 = sub_1000D3200();
  v47 = sub_1000D3708();
  v48 = sub_1000D44A4();
  v49 = sub_1000D3CF8();
  result = sub_1000D6304();
  v50 = result;
  while (1)
  {
    v31 = *&v43[v12];
    v32 = *(v31 + 16);
    v33 = v28[2];
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v34 <= (v28[3] >> 1))
    {
      if (*(v31 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v35 = v33 + v32;
      }

      else
      {
        v35 = v33;
      }

      result = sub_1000AF418(result, v35, 1, v28);
      v28 = result;
      if (*(v31 + 16))
      {
LABEL_13:
        if (((v28[3] >> 1) - v28[2]) < v32)
        {
          goto LABEL_20;
        }

        sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
        swift_arrayInitWithCopy();

        if (v32)
        {
          v36 = v28[2];
          v37 = __OFADD__(v36, v32);
          v38 = v36 + v32;
          if (v37)
          {
            goto LABEL_21;
          }

          v28[2] = v38;
        }

        goto LABEL_3;
      }
    }

    if (v32)
    {
      goto LABEL_19;
    }

LABEL_3:
    v12 += 8;
    if (v12 == 88)
    {
      sub_100035D04(&qword_1003429D8, &qword_1002789C0);
      swift_arrayDestroy();
      v39 = direct field offset for StateMachine2.edges;
      swift_beginAccess();
      *(v29 + v39) = v28;

      v41 = sub_10007F638(v40);

      *(v29 + *(*v29 + 144)) = v41;

      return v29;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000D1A78(uint64_t a1)
{
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = direct field offset for StateMachine2.edges;
  swift_beginAccess();
  *(v2 + v7) = _swiftEmptyArrayStorage;

  v9 = sub_10007F638(v8);

  *(v2 + *(*v2 + 144)) = v9;
}

void *sub_1000D1BF8()
{
  v48 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v48);
  v1 = v43 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ExperienceEvent(0);
  v2 = *(v47 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v47);
  v5 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v43 - v6;
  v45 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v50 = xmmword_10026F050;
  inited[1] = xmmword_10026F050;
  *v7 = 1;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v7, v5, type metadata accessor for ExperienceEvent);
  v9 = *(v2 + 80);
  v46 = (v9 + 16) & ~v9;
  v10 = (v3 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43[1] = v9;
  v11 = swift_allocObject();
  sub_1000D6574(v5, v11 + ((v9 + 16) & ~v9), type metadata accessor for ExperienceEvent);
  v12 = (v11 + v10);
  v13 = v49;
  *v12 = sub_1000D6CE8;
  v12[1] = v13;

  sub_100097C8C(v7, type metadata accessor for ExperienceEvent);
  v60 = 1;
  v61 = sub_1000D6CF0;
  v62 = v11;
  v63 = _swiftEmptyArrayStorage;
  v64 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v1, v52);

  sub_100097C8C(v1, type metadata accessor for ExperienceEffect);
  v14 = v52[1];
  inited[2] = v52[0];
  inited[3] = v14;
  inited[4] = v52[2];
  v44 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8((inited + 2), &qword_10033EFF8, &unk_1002783E0);
  v15 = swift_initStackObject();
  v15[1] = v50;
  *v7 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v7, v5, type metadata accessor for ExperienceEvent);
  v16 = swift_allocObject();
  sub_1000D6574(v5, v16 + v46, type metadata accessor for ExperienceEvent);
  v17 = (v16 + v10);
  v18 = v49;
  *v17 = sub_1000D6D08;
  v17[1] = v18;

  sub_100097C8C(v7, type metadata accessor for ExperienceEvent);
  v54 = 1;
  v55 = sub_1000D71A0;
  v56 = v16;
  v57 = _swiftEmptyArrayStorage;
  v58 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  *v1 = 0;
  *(v1 + 1) = 0;
  v1[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v1, v53);

  sub_100097C8C(v1, type metadata accessor for ExperienceEffect);
  v19 = v53[1];
  v15[2] = v53[0];
  v15[3] = v19;
  v15[4] = v53[2];
  v48 = sub_1000D244C(v15);
  swift_setDeallocating();
  sub_1000097E8((v15 + 2), &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v20 = swift_initStackObject();
  *(v20 + 16) = v50;
  *v7 = 3;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v7, v5, type metadata accessor for ExperienceEvent);
  v21 = swift_allocObject();
  sub_1000D6574(v5, v21 + v46, type metadata accessor for ExperienceEvent);
  v22 = (v21 + v10);
  v23 = v49;
  *v22 = sub_1000D6D10;
  v22[1] = v23;

  sub_100097C8C(v7, type metadata accessor for ExperienceEvent);
  *(v20 + 32) = &off_1003001E0;
  *(v20 + 40) = sub_1000D719C;
  *(v20 + 48) = v21;
  *(v20 + 56) = _swiftEmptyArrayStorage;
  *(v20 + 64) = _swiftEmptyArrayStorage;
  *(v20 + 72) = _swiftEmptyArrayStorage;
  v47 = sub_1000D25D0(v20);
  swift_setDeallocating();
  sub_1000097E8(v20 + 32, &qword_1003429E8, &qword_1002789D8);
  v24 = swift_initStackObject();
  *(v24 + 16) = v50;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1000D711C;
  *(v25 + 24) = v23;
  v26 = sub_1000D2A20();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  v51 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v28 = swift_initStackObject();
  *(v28 + 16) = v50;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1000D71A4;
  *(v29 + 24) = v27;
  *(v28 + 32) = sub_1000D7188;
  *(v28 + 40) = v29;

  sub_1000B32F4(v28);
  v30 = v51;
  *(v24 + 32) = 1;
  *(v24 + 40) = sub_1000D7124;
  *(v24 + 48) = v25;
  *(v24 + 56) = _swiftEmptyArrayStorage;
  *(v24 + 64) = _swiftEmptyArrayStorage;
  *(v24 + 72) = v30;
  v31 = sub_1000D244C(v24);
  swift_setDeallocating();
  sub_1000097E8(v24 + 32, &qword_10033EFF8, &unk_1002783E0);
  v32 = swift_initStackObject();
  *(v32 + 16) = v50;
  v33 = sub_1000D2A20();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v51 = _swiftEmptyArrayStorage;
  v35 = swift_initStackObject();
  *(v35 + 16) = v50;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1000D71A4;
  *(v36 + 24) = v34;
  *(v35 + 32) = sub_1000D7188;
  *(v35 + 40) = v36;
  sub_1000B32F4(v35);
  v37 = v51;
  *(v32 + 32) = 0;
  *(v32 + 40) = sub_1000D5764;
  *(v32 + 48) = 0;
  *(v32 + 56) = _swiftEmptyArrayStorage;
  *(v32 + 64) = _swiftEmptyArrayStorage;
  *(v32 + 72) = v37;
  v38 = sub_1000D244C(v32);
  swift_setDeallocating();
  sub_1000097E8(v32 + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_100274B30;
  *(v39 + 32) = v44;
  v40 = v47;
  *(v39 + 40) = v48;
  *(v39 + 48) = v40;
  *(v39 + 56) = v31;
  *(v39 + 64) = v38;
  v41 = sub_1000D2B88(v39);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v41;
}

void sub_1000D23E0(uint64_t *a2@<X8>)
{

  v3 = sub_1001DF2A4();

  v4 = _swiftEmptyArrayStorage;
  v5 = 8449;
  if (v3)
  {
    v5 = 0;
    v4 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  a2[2] = v4;
  a2[3] = v4;
}

void *sub_1000D244C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = (a1 + 72);
    while (1)
    {
      v14 = v1;
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *(v3 - 4);
      v9 = *(v3 - 20);
      sub_100035D04(&qword_10033DE68, &qword_100274150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10026F050;
      *(inited + 32) = v9;
      *(inited + 40) = v8;
      *(inited + 48) = v6;
      *(inited + 56) = v7;
      *(inited + 64) = v5;
      *(inited + 72) = v4;
      v11 = v2[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v13 = v2[3] >> 1, v13 <= v11))
      {
        result = sub_1000AF418(result, v11 + 1, 1, v2);
        v2 = result;
        v13 = result[3] >> 1;
      }

      if (v13 <= v2[2])
      {
        break;
      }

      v3 += 6;
      sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
      swift_arrayInitWithCopy();

      ++v2[2];
      v1 = v14 - 1;
      if (v14 == 1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000D25D0(uint64_t result)
{
  v22 = *(result + 16);
  if (!v22)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v21 = result + 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v3 = (v21 + 48 * v1);
    v4 = *v3;
    v5 = *(*v3 + 16);
    if (v5)
    {
      v23 = v2;
      v24 = v1;
      v6 = v3[2];
      v25 = v3[1];
      v7 = v3[3];
      v8 = v3[4];
      v9 = v3[5];

      sub_1000CDF60(0, v5, 0);
      v10 = 32;
      v26 = v4;
      do
      {
        v27 = *(v4 + v10);
        v11 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];

        if (v11 >= v12 >> 1)
        {
          sub_1000CDF60((v12 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v13 = &_swiftEmptyArrayStorage[6 * v11];
        *(v13 + 16) = v27;
        v4 = v26;
        v13[5] = v25;
        v13[6] = v6;
        v13[7] = v7;
        v13[8] = v8;
        v13[9] = v9;
        v10 += 2;
        --v5;
      }

      while (v5);

      v2 = v23;
      v1 = v24;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v15 = v2[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v16 <= v2[3] >> 1)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1000AF418(result, v17, 1, v2);
      v2 = result;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_20:
        if ((v2[3] >> 1) - v2[2] < v14)
        {
          goto LABEL_28;
        }

        sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = v2[2];
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_29;
          }

          v2[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (++v1 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1000D286C(uint64_t *a2@<X8>)
{

  v3 = sub_1001DF2A4();

  v4 = 8449;
  if (v3)
  {
    v4 = 8193;
  }

  *a2 = v4;
  a2[1] = _swiftEmptyArrayStorage;
  a2[2] = _swiftEmptyArrayStorage;
  a2[3] = _swiftEmptyArrayStorage;
}

void sub_1000D28D8(uint64_t a1@<X0>, __int16 *a3@<X8>)
{
  v5 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEvent);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_100097C8C(v7, type metadata accessor for ExperienceEvent);
    goto LABEL_7;
  }

  v8 = *v7;
  if (v8 - 5 < 5)
  {
LABEL_7:
    v10 = -258;
    goto LABEL_8;
  }

  v9 = sub_1001DF2A4();

  if (v9)
  {
    if (v8 <= 4)
    {
      v10 = word_100278A1A[v8];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v8 & 0xFB) != 0)
  {
    v10 = -258;
  }

  else
  {
    v10 = -32512;
  }

LABEL_8:
  *a3 = v10;
}

uint64_t sub_1000D2A20()
{
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v0 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100274B30;
  v4 = (v3 + v2);
  *v4 = 5;
  swift_storeEnumTagMultiPayload();
  v5 = &v4[v1];
  *v5 = xmmword_100271890;
  v5[16] = 0;
  swift_storeEnumTagMultiPayload();
  v4[2 * v1] = 5;
  swift_storeEnumTagMultiPayload();
  v4[3 * v1] = 3;
  swift_storeEnumTagMultiPayload();
  v6 = &v4[4 * v1];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 2;
  v6[24] = 4;
  swift_storeEnumTagMultiPayload();
  return v3;
}

void *sub_1000D2B88(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = result + 4;
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v7 <= v2[3] >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v6 <= v7)
        {
          v8 = v6 + v5;
        }

        else
        {
          v8 = v6;
        }

        result = sub_1000AF418(result, v8, 1, v2);
        v2 = result;
        if (*(v4 + 16))
        {
LABEL_14:
          if ((v2[3] >> 1) - v2[2] < v5)
          {
            goto LABEL_34;
          }

          sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
          swift_arrayInitWithCopy();

          if (v5)
          {
            v9 = v2[2];
            v10 = __OFADD__(v9, v5);
            v11 = v9 + v5;
            if (v10)
            {
              goto LABEL_35;
            }

            v2[2] = v11;
          }

          goto LABEL_4;
        }
      }

      if (v5)
      {
        goto LABEL_31;
      }

LABEL_4:
      ++v3;
      if (!--v1)
      {
        goto LABEL_19;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_19:
  v25 = v2[2];
  if (v25)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v14 = v2 + 9;
    v24 = v2;
    while (v12 < v2[2])
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v18 = *(v14 - 3);
      v17 = *(v14 - 2);
      v19 = *(v14 - 4);
      v20 = *(v14 - 20);
      sub_100035D04(&qword_10033DE68, &qword_100274150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10026F050;
      *(inited + 32) = v20;
      *(inited + 40) = v19;
      *(inited + 48) = v18;
      *(inited + 56) = v17;
      *(inited + 64) = v16;
      *(inited + 72) = v15;
      v22 = v13[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v23 = v13[3] >> 1, v23 <= v22))
      {
        result = sub_1000AF418(result, v22 + 1, 1, v13);
        v13 = result;
        v23 = result[3] >> 1;
      }

      v2 = v24;
      if (v23 <= v13[2])
      {
        goto LABEL_33;
      }

      ++v12;
      sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
      swift_arrayInitWithCopy();

      ++v13[2];
      v14 += 6;
      if (v25 == v12)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_32;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_29:

  return v13;
}

void *sub_1000D2E4C()
{
  v22 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v22);
  v4 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  v21 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v6 = 3;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v6, v4, type metadata accessor for ExperienceEvent);
  v8 = *(v1 + 80);
  v20 = (v8 + 16) & ~v8;
  v9 = (v2 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_1000D6574(v4, v10 + ((v8 + 16) & ~v8), type metadata accessor for ExperienceEvent);
  v11 = (v10 + v9);
  *v11 = sub_1000D6CB8;
  v11[1] = v0;

  sub_100097C8C(v6, type metadata accessor for ExperienceEvent);
  *(inited + 32) = &off_100300208;
  *(inited + 40) = sub_1000D6CC4;
  *(inited + 48) = v10;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v23 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  v12 = swift_initStackObject();
  *(v12 + 16) = v21;
  *v6 = xmmword_100278920;
  v6[16] = 4;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v6, v4, type metadata accessor for ExperienceEvent);
  v13 = swift_allocObject();
  sub_1000D6574(v4, v13 + v20, type metadata accessor for ExperienceEvent);
  v14 = (v13 + v9);
  *v14 = sub_1000D6CDC;
  v14[1] = v0;

  sub_100097C8C(v6, type metadata accessor for ExperienceEvent);
  *(v12 + 32) = &off_100300230;
  *(v12 + 40) = sub_1000D719C;
  *(v12 + 48) = v13;
  *(v12 + 56) = _swiftEmptyArrayStorage;
  *(v12 + 64) = _swiftEmptyArrayStorage;
  *(v12 + 72) = _swiftEmptyArrayStorage;
  v15 = sub_1000D25D0(v12);
  swift_setDeallocating();
  sub_1000097E8(v12 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1002725A0;
  *(v16 + 32) = v23;
  *(v16 + 40) = v15;
  v17 = sub_1000D2B88(v16);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v17;
}

void *sub_1000D3200()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v31[0] = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v8 = xmmword_100271890;
  v8[16] = 4;
  v10 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_100009848(v8, v6, &qword_100342A10, &qword_100278A10);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = v11 + v4;
  v13 = swift_allocObject();
  sub_10003693C(v6, v13 + v11, &qword_100342A10, &qword_100278A10);
  *(v13 + v12) = 8449;
  sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v14 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100278930;
  v18 = (v17 + v16);
  *v18 = 0;
  swift_storeEnumTagMultiPayload();
  v18[v15] = 0;
  swift_storeEnumTagMultiPayload();
  v18[2 * v15] = 4;
  swift_storeEnumTagMultiPayload();
  v18[3 * v15] = 0;
  swift_storeEnumTagMultiPayload();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v32 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v20 = swift_initStackObject();
  *(v20 + 16) = v31[0];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000D71A4;
  *(v21 + 24) = v19;
  *(v20 + 32) = sub_1000D7188;
  *(v20 + 40) = v21;
  sub_1000B32F4(v20);
  v22 = v32;
  *(inited + 32) = 8449;
  *(inited + 40) = sub_1000D7194;
  *(inited + 48) = v13;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = v22;
  v23 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v24 = swift_initStackObject();
  *(v24 + 16) = v31[0];
  v25 = *(v1 + qword_10038B0F0);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_1000D7198;
  v26[4] = v1;
  *(v24 + 32) = &off_100300258;
  *(v24 + 40) = sub_1000D718C;
  *(v24 + 48) = v26;
  *(v24 + 56) = _swiftEmptyArrayStorage;
  *(v24 + 64) = _swiftEmptyArrayStorage;
  *(v24 + 72) = _swiftEmptyArrayStorage;

  v27 = sub_1000D25D0(v24);
  swift_setDeallocating();
  sub_1000097E8(v24 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1002725A0;
  *(v28 + 32) = v23;
  *(v28 + 40) = v27;
  v29 = sub_1000D2B88(v28);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v29;
}

void *sub_1000D3708()
{
  v0 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0 - 8);
  v4 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v37 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v39 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v6 = xmmword_100271890;
  v6[16] = 4;
  v8 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  sub_100009848(v6, v4, &qword_100342A10, &qword_100278A10);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = v9 + v2;
  v11 = swift_allocObject();
  sub_10003693C(v4, v11 + v9, &qword_100342A10, &qword_100278A10);
  *(v11 + v10) = 8193;
  sub_1000097E8(v6, &qword_100342A10, &qword_100278A10);
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v12 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v36 = xmmword_1002727F0;
  *(v15 + 16) = xmmword_1002727F0;
  v16 = (v15 + v14);
  *v16 = 0;
  swift_storeEnumTagMultiPayload();
  v16[v13] = 4;
  swift_storeEnumTagMultiPayload();
  v16[2 * v13] = 1;
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v40 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v18 = swift_initStackObject();
  *(v18 + 16) = v39;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000D71A4;
  *(v19 + 24) = v17;
  *(v18 + 32) = sub_1000D7188;
  *(v18 + 40) = v19;
  sub_1000B32F4(v18);
  v20 = v40;
  *(inited + 32) = 8193;
  *(inited + 40) = sub_1000D7194;
  *(inited + 48) = v11;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = v20;
  v21 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v22 = swift_initStackObject();
  *(v22 + 16) = v39;
  v23 = sub_1000D5920();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_1000D7198;
  v24[4] = v38;
  *(v22 + 32) = &off_100300280;
  *(v22 + 40) = sub_1000D718C;
  *(v22 + 48) = v24;
  *(v22 + 56) = _swiftEmptyArrayStorage;
  *(v22 + 64) = _swiftEmptyArrayStorage;
  *(v22 + 72) = _swiftEmptyArrayStorage;

  v25 = sub_1000D25D0(v22);
  swift_setDeallocating();
  sub_1000097E8(v22 + 32, &qword_1003429E8, &qword_1002789D8);
  v26 = swift_initStackObject();
  *(v26 + 16) = v39;
  v27 = sub_1000D2A20();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v40 = _swiftEmptyArrayStorage;
  v29 = swift_initStackObject();
  *(v29 + 16) = v39;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000D71A4;
  *(v30 + 24) = v28;
  *(v29 + 32) = sub_1000D7188;
  *(v29 + 40) = v30;
  sub_1000B32F4(v29);
  v31 = v40;
  *(v26 + 32) = 8193;
  *(v26 + 40) = sub_1000D5764;
  *(v26 + 48) = 0;
  *(v26 + 56) = _swiftEmptyArrayStorage;
  *(v26 + 64) = _swiftEmptyArrayStorage;
  *(v26 + 72) = v31;
  v32 = sub_1000D244C(v26);
  swift_setDeallocating();
  sub_1000097E8(v26 + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v36;
  *(v33 + 32) = v21;
  *(v33 + 40) = v25;
  *(v33 + 48) = v32;
  v34 = sub_1000D2B88(v33);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v34;
}

void *sub_1000D3CF8()
{
  v51 = type metadata accessor for ExperienceEffect(0);
  __chkstk_darwin(v51);
  v1 = &v38 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v47 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v52 = xmmword_10026F050;
  inited[1] = xmmword_10026F050;
  *v8 = 5;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 8) = 0u;
  v8[56] = 66;
  v10 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  v39 = v10;
  v11 = *(v10 - 8);
  v46 = *(v11 + 56);
  v50 = v11 + 56;
  v46(v8, 0, 1, v10);
  v42 = v6;
  sub_100009848(v8, v6, &qword_100342A10, &qword_100278A10);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v44 = *(v3 + 80);
  v45 = v12;
  v13 = v12 + v4;
  v43 = v13;
  v14 = swift_allocObject();
  sub_10003693C(v6, v14 + v12, &qword_100342A10, &qword_100278A10);
  *(v14 + v13) = 16385;
  sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
  v68 = 16385;
  v69 = sub_1000D6828;
  v70 = v14;
  v71 = _swiftEmptyArrayStorage;
  v72 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  *(v1 + 1) = 0;
  *(v1 + 2) = 0;
  *v1 = 0;
  v1[24] = 4;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v1, v53);

  v38 = type metadata accessor for ExperienceEffect;
  sub_100097C8C(v1, type metadata accessor for ExperienceEffect);
  v15 = v53[1];
  inited[2] = v53[0];
  inited[3] = v15;
  inited[4] = v53[2];
  v48 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8((inited + 2), &qword_10033EFF8, &unk_1002783E0);
  v41 = sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v16 = swift_initStackObject();
  v16[1] = v52;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v17 = *(v50 + 16);
  v18 = (*(v50 + 24) + 32) & ~*(v50 + 24);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1002725A0;
  v20 = v19 + v18;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0;
  *(v20 + 56) = 0x80;
  v21 = v39;
  swift_storeEnumTagMultiPayload();
  v22 = v20 + v17;
  *v22 = 3;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  *(v22 + 40) = 0u;
  *(v22 + 56) = 66;
  swift_storeEnumTagMultiPayload();
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = 16385;
  v62 = &off_100300348;
  v63 = sub_1000D7190;
  v64 = v23;
  v65 = _swiftEmptyArrayStorage;
  v66 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  *v1 = xmmword_100271890;
  v1[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D1068(v1, v54);
  sub_100097C8C(v1, type metadata accessor for ExperienceEffect);

  v24 = v54[1];
  v16[2] = v54[0];
  v16[3] = v24;
  v16[4] = v54[2];
  v40 = sub_1000D25D0(v16);
  swift_setDeallocating();
  sub_1000097E8((v16 + 2), &qword_1003429E8, &qword_1002789D8);
  v25 = swift_initStackObject();
  v25[1] = v52;
  *v8 = 1;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  v8[56] = 66;
  swift_storeEnumTagMultiPayload();
  v46(v8, 0, 1, v21);
  v26 = v42;
  sub_100009848(v8, v42, &qword_100342A10, &qword_100278A10);
  v27 = v43;
  v28 = swift_allocObject();
  sub_10003693C(v26, v28 + v45, &qword_100342A10, &qword_100278A10);
  *(v28 + v27) = 16385;
  sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
  v56 = 16385;
  v57 = sub_1000D7194;
  v58 = v28;
  v59 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v1, v55);

  sub_100097C8C(v1, v38);
  v29 = v55[1];
  v25[2] = v55[0];
  v25[3] = v29;
  v25[4] = v55[2];
  v30 = sub_1000D244C(v25);
  swift_setDeallocating();
  sub_1000097E8((v25 + 2), &qword_10033EFF8, &unk_1002783E0);
  v31 = swift_initStackObject();
  *(v31 + 16) = v52;
  v32 = sub_1000D5F94();
  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = sub_1000D6860;
  v33[4] = v49;
  *(v31 + 32) = &off_100300370;
  *(v31 + 40) = sub_1000D718C;
  *(v31 + 48) = v33;
  *(v31 + 56) = _swiftEmptyArrayStorage;
  *(v31 + 64) = _swiftEmptyArrayStorage;
  *(v31 + 72) = _swiftEmptyArrayStorage;

  v34 = sub_1000D25D0(v31);
  swift_setDeallocating();
  sub_1000097E8(v31 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100278930;
  *(v35 + 32) = v48;
  *(v35 + 40) = v40;
  *(v35 + 48) = v30;
  *(v35 + 56) = v34;
  v36 = sub_1000D2B88(v35);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v36;
}

void *sub_1000D44A4()
{
  v1 = v0;
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v3 = sub_1000D5CA8();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 16385;
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v5 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002725A0;
  v9 = (v8 + v7);
  *v9 = 3;
  swift_storeEnumTagMultiPayload();
  v10 = &v9[v6];
  *v10 = xmmword_100271890;
  v10[16] = 0;
  swift_storeEnumTagMultiPayload();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10026F050;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000D71A4;
  *(v13 + 24) = v11;
  *(v12 + 32) = sub_1000D7188;
  *(v12 + 40) = v13;
  sub_1000B32F4(v12);
  *(inited + 32) = &off_1003002F8;
  *(inited + 40) = sub_1000D7190;
  *(inited + 48) = v4;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v14 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_10026F050;
  v16 = sub_1000D5F94();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_1000D7198;
  v17[4] = v1;
  *(v15 + 32) = &off_100300320;
  *(v15 + 40) = sub_1000D6568;
  *(v15 + 48) = v17;
  *(v15 + 56) = _swiftEmptyArrayStorage;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  *(v15 + 72) = _swiftEmptyArrayStorage;

  v18 = sub_1000D25D0(v15);
  swift_setDeallocating();
  sub_1000097E8(v15 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1002725A0;
  *(v19 + 32) = v14;
  *(v19 + 40) = v18;
  v20 = sub_1000D2B88(v19);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v20;
}

uint64_t sub_1000D482C(int a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ExperienceEffect(0);
  v61 = *(v6 - 8);
  __chkstk_darwin(v6);
  v63 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100035D04(&qword_100342A00, &qword_100278A00);
  v8 = *(v56 - 8);
  v9 = __chkstk_darwin(v56);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v62 = &v54 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v54 - v15;
  __chkstk_darwin(v14);
  v18 = &v54 - v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v58 = v18;
  LODWORD(v59) = a1;
  if (v21)
  {
    v22 = a2;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v60 = v16;
    v25 = v8;
    v26 = v24;
    v65[0] = v24;
    *v23 = 136315650;
    *(v23 + 4) = sub_100017494(0xD00000000000002CLL, 0x800000010029EE80, v65);
    *(v23 + 12) = 1024;
    *(v23 + 14) = a1 & 1;
    *(v23 + 18) = 1024;
    *(v23 + 20) = v22 & 1;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s: isHinting=%{BOOL}d, transferIfAutomatic=%{BOOL}d", v23, 0x18u);
    sub_10000903C(v26);
    v8 = v25;
    v16 = v60;

    a2 = v22;
    v18 = v58;
  }

  else
  {
  }

  LODWORD(v60) = a2;
  v27 = *(*v3 + 136);
  swift_beginAccess();
  v28 = *(v3 + v27);
  if (v28 & 0xE000) == 0x2000 && (*(v3 + v27) & 0x100) != 0 && (v28)
  {
    v54 = 2;
    v29 = 16641;
  }

  else
  {

    v30 = sub_1001DF6B0();

    if (v30)
    {
      v29 = 16641;
    }

    else
    {
      v29 = 16385;
    }

    if (v30)
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    v54 = v31;
  }

  v32 = *(v61 + 56);
  v32(v18, 1, 1, v6);
  if ((v59 & 1) == 0)
  {
    v37 = 2;
    goto LABEL_29;
  }

  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  if (byte_10038AFB0 == 1)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v33 = *(qword_10038B0B8 + 888);
    v34 = sub_10005F4D0();

    if ((v34 & 1) == 0)
    {

      sub_1000097E8(v18, &qword_100342A00, &qword_100278A00);
LABEL_27:
      v36 = xmmword_100271890;
      goto LABEL_28;
    }
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1000097E8(v18, &qword_100342A00, &qword_100278A00);
  if ((v35 & 1) != 0 || (v29 & 0x100) != 0)
  {
    goto LABEL_27;
  }

  v36 = xmmword_10026F060;
LABEL_28:
  *v16 = v36;
  v16[16] = 0;
  swift_storeEnumTagMultiPayload();
  v37 = 1;
  v32(v16, 0, 1, v6);
  sub_10003693C(v16, v18, &qword_100342A00, &qword_100278A00);
LABEL_29:
  v55 = v29;
  sub_100035D04(&qword_100342A08, &qword_100278A08);
  v38 = *(v8 + 72);
  v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v57 = swift_allocObject();
  v40 = v57 + v39;
  *(v57 + v39) = v37;
  swift_storeEnumTagMultiPayload();
  v41 = 1;
  v32(v40, 0, 1, v6);
  sub_100009848(v18, v40 + v38, &qword_100342A00, &qword_100278A00);
  v59 = v40;
  v42 = v40 + 2 * v38;
  if (v60)
  {
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;
    *v42 = 1;
    *(v42 + 24) = 4;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
  }

  v32((v40 + 2 * v38), v41, 1, v6);
  v43 = v59;
  *(v59 + 3 * v38) = v54;
  swift_storeEnumTagMultiPayload();
  v32((v43 + 3 * v38), 0, 1, v6);
  *(v43 + 4 * v38) = 2;
  v44 = 5;
  swift_storeEnumTagMultiPayload();
  v32((v43 + 4 * v38), 0, 1, v6);
  v45 = (v61 + 48);
  v46 = _swiftEmptyArrayStorage;
  v60 = v6;
  do
  {
    v47 = v62;
    sub_100009848(v43, v62, &qword_100342A00, &qword_100278A00);
    sub_10003693C(v47, v11, &qword_100342A00, &qword_100278A00);
    if ((*v45)(v11, 1, v6) == 1)
    {
      sub_1000097E8(v11, &qword_100342A00, &qword_100278A00);
    }

    else
    {
      sub_1000D6574(v11, v63, type metadata accessor for ExperienceEffect);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_1000AFDE4(0, v46[2] + 1, 1, v46);
      }

      v49 = v46[2];
      v48 = v46[3];
      if (v49 >= v48 >> 1)
      {
        v46 = sub_1000AFDE4((v48 > 1), v49 + 1, 1, v46);
      }

      v46[2] = v49 + 1;
      sub_1000D6574(v63, v46 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v49, type metadata accessor for ExperienceEffect);
      v6 = v60;
    }

    v43 += v38;
    --v44;
  }

  while (v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  v64 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1000D71A4;
  *(v52 + 24) = v50;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v52;
  sub_1000B32F4(inited);
  sub_1000097E8(v58, &qword_100342A00, &qword_100278A00);
  return v55;
}

uint64_t sub_1000D50D8()
{
  if (swift_weakLoadStrong())
  {
    v0 = sub_100070EF4();

    if (v0 == 4)
    {
      v1 = 0;
    }

    else
    {
      v1 = v0;
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_100017494(0x6944726F46646E65, 0xEF29287373696D73, &v16);
    v5 = 0xE400000000000000;
    *(v4 + 12) = 2080;
    v6 = 1701602409;
    v7 = 1953393000;
    if (v1 != 2)
    {
      v7 = 1819047270;
    }

    if (v1)
    {
      v6 = 0x6F69746163756465;
      v5 = 0xE90000000000006ELL;
    }

    if (v1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    if (v1 <= 1u)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0xE400000000000000;
    }

    v10 = sub_100017494(v8, v9, &v16);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s: self.uxRegion=%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v11 = sub_1000D2A20();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v16 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1000D71A4;
  *(v14 + 24) = v12;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v14;
  sub_1000B32F4(inited);
  if ((v1 & 0xFE) != 0)
  {
    return 0;
  }

  else
  {
    return 4294934784;
  }
}

uint64_t sub_1000D5388()
{
  swift_weakDestroy();
}

uint64_t sub_1000D53EC()
{
  v1 = qword_10038AFC0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_weakDestroy();

  return v0;
}

uint64_t sub_1000D5538()
{
  sub_1000D53EC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffStateMachine_Legacy(uint64_t a1)
{
  result = qword_100342778;
  if (!qword_100342778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D5674(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    while (v4 != v7)
    {
      v8 = *(type metadata accessor for ExperienceEvent(0) - 8);
      if (sub_1002454A4(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7++, a1))
      {
        return a3;
      }
    }

    return 0;
  }

  return a3;
}

void *sub_1000D577C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v7);
  v4 = v7 & 0xFEFE;
  if (v4 == 65278)
  {
    v5 = 0;
  }

  else
  {
    v5 = v7;
  }

  if (v4 == 65278)
  {
    v6 = 0;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  return result;
}

uint64_t sub_1000D57D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(_OWORD *__return_ptr, uint64_t, __n128, __n128)@<X2>, _OWORD *a4@<X8>)
{
  result = sub_1002454A4(a2, a1);
  v8 = 0uLL;
  v9 = 0uLL;
  if (result)
  {
    result = a3(v10, a1, 0, 0);
    v8 = v10[0];
    v9 = v10[1];
  }

  *a4 = v8;
  a4[1] = v9;
  return result;
}

uint64_t sub_1000D5844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(_OWORD *__return_ptr, uint64_t, __n128, __n128)@<X2>, _OWORD *a4@<X8>)
{
  result = sub_1002454A4(a1, a2);
  v8 = 0uLL;
  v9 = 0uLL;
  if (result)
  {
    result = a3(v10, a1, 0, 0);
    v8 = v10[0];
    v9 = v10[1];
  }

  *a4 = v8;
  a4[1] = v9;
  return result;
}

double sub_1000D58A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = a1;
    if (!sub_1000D0DB0(a1, a2))
    {
      v9 = 0u;
      v10 = 0u;
      goto LABEL_6;
    }

    a1 = v6;
  }

  a3(&v9, a1);
LABEL_6:
  result = *&v9;
  v8 = v10;
  *a4 = v9;
  a4[1] = v8;
  return result;
}

uint64_t sub_1000D5920()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v28 - v5;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v7 = *(v1 + 72);
  v8 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100274B70;
  v10 = v9 + v8;
  v28 = xmmword_100278910;
  *v10 = xmmword_100278910;
  *(v10 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v11 = v9 + v8 + v7;
  *v11 = v28;
  *(v11 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v12 = v9 + v8 + 2 * v7;
  *v12 = v28;
  *(v12 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v13 = v9 + v8 + 3 * v7;
  sub_10001618C();
  v14 = swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0xE000000000000000;
  *(v15 + 16) = 11;
  *v13 = v14;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v16 = v9 + v8 + 4 * v7;
  *v16 = xmmword_100274290;
  *(v16 + 16) = 4;
  swift_storeEnumTagMultiPayload();
  v17 = v9 + v8 + 5 * v7;
  *v17 = 1;
  *(v17 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v18 = qword_10038B0B8;
  v19 = *(qword_10038B0B8 + 1016);
  v20 = sub_1000031CC();

  if (v20)
  {
    *v6 = 1;
    v6[8] = 0;
    swift_storeEnumTagMultiPayload();
    v22 = *(v9 + 16);
    v21 = *(v9 + 24);
    if (v22 >= v21 >> 1)
    {
      v9 = sub_1000AF574((v21 > 1), v22 + 1, 1, v9);
    }

    *(v9 + 16) = v22 + 1;
    sub_1000D6574(v6, v9 + v8 + v22 * v7, type metadata accessor for ExperienceEvent);
  }

  v23 = *(v18 + 1024);
  v24 = sub_1000031CC();

  if (v24)
  {
    *v4 = 0;
    v4[8] = 0;
    swift_storeEnumTagMultiPayload();
    v26 = *(v9 + 16);
    v25 = *(v9 + 24);
    if (v26 >= v25 >> 1)
    {
      v9 = sub_1000AF574((v25 > 1), v26 + 1, 1, v9);
    }

    *(v9 + 16) = v26 + 1;
    sub_1000D6574(v4, v9 + v8 + v26 * v7, type metadata accessor for ExperienceEvent);
  }

  return v9;
}

void *sub_1000D5CA8()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v19 - v5;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B0B8;
  v8 = *(qword_10038B0B8 + 392);
  v9 = sub_1000031CC();

  if (v9)
  {
    *v6 = 0;
    v6[56] = 96;
    swift_storeEnumTagMultiPayload();
    v10 = sub_1000AF574(0, 1, 1, _swiftEmptyArrayStorage);
    v12 = v10[2];
    v11 = v10[3];
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1000AF574((v11 > 1), v12 + 1, 1, v10);
    }

    v10[2] = v12 + 1;
    sub_1000D6574(v6, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v12, type metadata accessor for ExperienceEvent);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = *(v7 + 480);
  v14 = sub_10005F4F0();

  if (v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return v10;
    }
  }

  *v4 = 1;
  v4[56] = 96;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_1000AF574(0, v10[2] + 1, 1, v10);
  }

  v17 = v10[2];
  v16 = v10[3];
  if (v17 >= v16 >> 1)
  {
    v10 = sub_1000AF574((v16 > 1), v17 + 1, 1, v10);
  }

  v10[2] = v17 + 1;
  sub_1000D6574(v4, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, type metadata accessor for ExperienceEvent);
  return v10;
}

uint64_t sub_1000D5F94()
{
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v0 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100274B70;
  v4 = v3 + v2;
  *v4 = xmmword_100278910;
  *(v4 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = v4 + v1;
  sub_10001618C();
  v6 = swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 11;
  sub_10014FEEC(v6, v16);
  v8 = v17;
  v9 = v16[1];
  *v5 = v16[0];
  *(v5 + 16) = v9;
  *(v5 + 32) = v8;
  *(v5 + 40) = v18;
  *(v5 + 56) = 64;
  swift_storeEnumTagMultiPayload();
  v10 = v4 + 2 * v1;
  v11 = swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  *(v12 + 16) = 11;
  sub_10014FEEC(v11, v19);
  v13 = v20;
  v14 = v19[1];
  *v10 = v19[0];
  *(v10 + 16) = v14;
  *(v10 + 32) = v13;
  *(v10 + 40) = v21;
  *(v10 + 56) = 32;
  swift_storeEnumTagMultiPayload();
  *(v4 + 3 * v1) = 2;
  type metadata accessor for TransferEvent(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v4 + 4 * v1) = 3;
  swift_storeEnumTagMultiPayload();
  *(v4 + 5 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1000D61CC()
{
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v0 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100278930;
  v4 = (v3 + v2);
  *v4 = 6;
  swift_storeEnumTagMultiPayload();
  v5 = &v4[v1];
  *v5 = 0;
  v5[8] = 2;
  swift_storeEnumTagMultiPayload();
  v6 = &v4[2 * v1];
  *v6 = 0;
  v6[8] = 4;
  swift_storeEnumTagMultiPayload();
  v7 = &v4[3 * v1];
  *v7 = 0;
  v7[8] = 6;
  swift_storeEnumTagMultiPayload();
  return v3;
}

void *sub_1000D6304()
{
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  if (qword_1003392B8 != -1)
  {
    swift_once();
  }

  v1 = qword_10038B670;
  v2 = sub_1000D61CC();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = -32512;
  v4 = sub_1000D2A20();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10026F050;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000D6530;
  *(v7 + 24) = v5;
  *(v6 + 32) = sub_1000D6538;
  *(v6 + 40) = v7;

  sub_1000B32F4(v6);
  *(inited + 32) = v1;
  *(inited + 40) = sub_1000D652C;
  *(inited + 48) = v3;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v8 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10026F050;
  *(v9 + 32) = v8;
  v10 = v9 + 32;
  v11 = sub_1000D2B88(v9);
  swift_setDeallocating();
  sub_1000097E8(v10, &qword_1003429D8, &qword_1002789C0);
  return v11;
}

uint64_t sub_1000D6538@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1000D6574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D65E4(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return v3;
}

void sub_1000D6624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 == 2)
  {
    v10 = a8 & 0x1F;

    sub_1000D66B0(result, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    if (v9 == 1)
    {
    }

    else
    {
      if (a8 >> 5)
      {
        return;
      }
    }
  }
}

void sub_1000D66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 1)
  {
    if (a8)
    {
      return;
    }
  }
}

uint64_t sub_1000D6710(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a8)
  {
    case 2:

    case 1:

      return sub_10006DB04(result, a2);
    case 0:

      return sub_1000D6794(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000D6794(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

void sub_1000D67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return;
    }
  }
}

unint64_t sub_1000D680C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1000D682C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000D5674(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1000D6864()
{
  v1 = *(sub_100035D04(&qword_100342A10, &qword_100278A10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ExperienceEvent(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000D6624(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1000D6710(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }
    }

    else
    {
      sub_1000D65DC(*v5, *(v5 + 8), *(v5 + 16));
    }

    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1000D67AC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9 || (*v5 - 1) < 3)
    {
      goto LABEL_2;
    }

LABEL_27:

    goto LABEL_2;
  }

  type metadata accessor for TransferEvent(0);
  v8 = swift_getEnumCaseMultiPayload();
  if (v8 > 3)
  {
    switch(v8)
    {
      case 4:
        if (*(v5 + 8) != 1)
        {
        }

        v9 = v5 + *(type metadata accessor for HandoffTargetStatus(0) + 20);
        v10 = type metadata accessor for ShareableContent(0);
        if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
        {

          v11 = *(v10 + 20);
          v12 = type metadata accessor for URL();
          v13 = *(v12 - 8);
          if (!(*(v13 + 48))(v9 + v11, 1, v12))
          {
            (*(v13 + 8))(v9 + v11, v12);
          }
        }

        break;
      case 5:
        goto LABEL_27;
      case 6:
        sub_1000D680C(*v5);
        break;
    }
  }

  else
  {
    if (v8 == 1)
    {
      goto LABEL_27;
    }

    if (v8 == 2 || v8 == 3)
    {
    }
  }

LABEL_2:

  return _swift_deallocObject(v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_1000D6B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100035D04(&qword_100342A10, &qword_100278A10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  result = sub_1000D0BDC(a1, v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t sub_1000D6C40@<X0>(void *a1@<X8>)
{
  result = sub_1000D50D8();
  *a1 = result;
  a1[1] = _swiftEmptyArrayStorage;
  a1[2] = _swiftEmptyArrayStorage;
  a1[3] = v3;
  return result;
}

uint64_t sub_1000D6C78()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000D6D1C@<X0>(int a1@<W1>, int a2@<W2>, void *a3@<X8>)
{
  result = sub_1000D482C(a1, a2);
  *a3 = result;
  a3[1] = _swiftEmptyArrayStorage;
  a3[2] = _swiftEmptyArrayStorage;
  a3[3] = v5;
  return result;
}

uint64_t sub_1000D6D5C()
{
  v1 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000D6624(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1000D6710(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }
    }

    else
    {
      sub_1000D65DC(*v5, *(v5 + 8), *(v5 + 16));
    }

    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1000D67AC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9 || (*v5 - 1) < 3)
    {
      goto LABEL_24;
    }

LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for TransferEvent(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        if (*(v5 + 8) != 1)
        {
        }

        v8 = v5 + *(type metadata accessor for HandoffTargetStatus(0) + 20);
        v9 = type metadata accessor for ShareableContent(0);
        if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
        {

          v10 = *(v9 + 20);
          v11 = type metadata accessor for URL();
          v12 = *(v11 - 8);
          if (!(*(v12 + 48))(v8 + v10, 1, v11))
          {
            (*(v12 + 8))(v8 + v10, v11);
          }
        }

        break;
      case 5:
        goto LABEL_23;
      case 6:
        sub_1000D680C(*v5);
        break;
    }
  }

  else
  {
    if (v7 == 1)
    {
      goto LABEL_23;
    }

    if (v7 == 2 || v7 == 3)
    {
    }
  }

LABEL_24:

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1000D7058(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

void *sub_1000D7124@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v7);
  v4 = v7 & 0xFEFE;
  if (v4 == 65278)
  {
    v5 = 0;
  }

  else
  {
    v5 = v7;
  }

  if (v4 == 65278)
  {
    v6 = 0;
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v6;
  a1[3] = v6;
  return result;
}

uint64_t sub_1000D71A8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342A18);
  sub_100003078(v0, qword_100342A18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D7228()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_100035D04(&qword_100342B18, &qword_100278A98);
    sub_10000E244(&qword_100342B38, &qword_100342B18, &qword_100278A98, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_1000D72EC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
LABEL_12:

        PassthroughSubject.send(_:)();
      }
    }
  }

  else
  {
    if (v2 >= 3)
    {
      if (qword_100338F38 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100003078(v4, qword_100342A18);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 134217984;
        *(v7 + 4) = v2;
        _os_log_impl(&_mh_execute_header, v5, v6, "### Unknown motionState: rawValue=%ld", v7, 0xCu);
      }
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      goto LABEL_12;
    }
  }

  return result;
}

double sub_1000D74B8(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

double sub_1000D7540(unsigned __int8 *a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

void *sub_1000D75C8()
{
  v1 = v0;
  if (qword_100338F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100342A18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000D76C0()
{
  sub_1000D75C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D7718@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1000D7748(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v38 = v4;
  v39 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100035D04(&qword_100342B10, &qword_100278A88);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v30 - v6;
  v32 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v30 - v7;
  sub_100035D04(&qword_100342B18, &qword_100278A98);
  swift_allocObject();
  v9 = PassthroughSubject.init()();
  v10 = v1;
  v1[4] = &_swiftEmptySetSingleton;
  v1[2] = v9;
  v1[3] = 0;
  if (qword_100338F38 != -1)
  {
    swift_once();
  }

  v40 = v3;
  v33 = sub_100003078(v3, qword_100342A18);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Init", v13, 2u);
  }

  v45 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v14 = Publisher.eraseToAnyPublisher()();

  v45 = v14;
  swift_allocObject();
  swift_weakInit();
  v31 = v10;

  v15 = sub_100035D04(&unk_1003436E0, &unk_100276210);
  v44 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v36 = sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v37 = v15;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = a1;
  v45 = sub_1001413FC();
  Publisher<>.removeDuplicates()();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v16 = v32;
  Publisher<>.sink(receiveValue:)();

  (*(v34 + 8))(v8, v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v17 = sub_100141508();
  v18 = static os_log_type_t.info.getter();
  v45 = v17;
  v19 = v35;
  v20 = v39;
  v21 = v40;
  (*(v35 + 16))(v39, v33, v40);
  v22 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v23 = v22 + v38;
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = 0xD000000000000021;
  *(v24 + 5) = 0x800000010029EF30;
  *(v24 + 6) = 0;
  *(v24 + 7) = 0xE000000000000000;
  (*(v19 + 32))(&v24[v22], v20, v21);
  v24[v23] = v18;
  sub_100035D04(&qword_100342B20, &qword_100278AA0);
  sub_10000E244(&qword_100342B28, &qword_100342B20, &qword_100278AA0, v44);
  v25 = v41;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100342B30, &qword_100342B10, &qword_100278A88, &protocol conformance descriptor for Publishers.Map<A, B>);
  v26 = v43;
  v27 = Publisher.eraseToAnyPublisher()();

  (*(v42 + 8))(v25, v26);
  v45 = v27;
  swift_allocObject();
  v28 = v31;
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v45 = *(v30 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher);
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10033F5A8, &qword_100276208);
  sub_10000E244(&qword_10033F5B0, &qword_10033F5A8, &qword_100276208, v44);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v45 = sub_1001412EC();
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v28;
}

void *sub_1000D8090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001BE860(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1000D8178()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342B40);
  v1 = sub_100003078(v0, qword_100342B40);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000D8240(uint64_t *a1, unsigned __int8 a2)
{
  if (*a1)
  {
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_100342B40);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v6 = 136315394;
      v9 = "ityControl.activity.annoucement";
      v10 = "ityControl.activity.call";
      v11 = "ityControl.activity.timer";
      v12 = 0xD000000000000028;
      if (a2 != 3)
      {
        v12 = 0xD000000000000029;
        v11 = "sendCurrentValue";
      }

      if (a2 == 2)
      {
        v13 = 0xD000000000000029;
      }

      else
      {
        v13 = v12;
      }

      if (a2 != 2)
      {
        v10 = v11;
      }

      v14 = 0xD00000000000002FLL;
      if (a2)
      {
        v9 = "ityControl.activity.media";
      }

      else
      {
        v14 = 0xD000000000000029;
      }

      if (a2 <= 1u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      if (a2 <= 1u)
      {
        v16 = v9;
      }

      else
      {
        v16 = v10;
      }

      v17 = sub_100017494(v15, v16 | 0x8000000000000000, &v19);

      *(v6 + 4) = v17;
      *(v6 + 12) = 2112;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v18;
      *v7 = v18;
      _os_log_impl(&_mh_execute_header, v4, v5, "### Failed to get %s: %@", v6, 0x16u);
      sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

      sub_10000903C(v8);
    }

    else
    {
    }
  }
}

double sub_1000D8498(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*a1 && (swift_getObjectType(), (v12 = sub_1000D8784()) != 0))
  {
    v13 = v12;
  }

  else
  {
    sub_100035D04(&qword_100350E70, &qword_100278AE0);
    inited = swift_initStackObject();
    strcpy((inited + 32), "activityName");
    *(inited + 16) = xmmword_10026F050;
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    v13 = sub_10024DA80(inited);
    swift_setDeallocating();
    sub_1000097E8(inited + 32, &unk_100350E80, &qword_100278AE8);
  }

  v27 = &type metadata for String;
  *&aBlock = a4;
  *(&aBlock + 1) = a5;
  sub_1000516B4(&aBlock, v31);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v13;
  sub_10004D4E0(v31, 0x4974736575716572, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v16 = v30;
  v17 = *(a6 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v17)
  {
    v18 = v17;
    v19 = String._bridgeToObjectiveC()();
    sub_10011A14C(v16);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = String._bridgeToObjectiveC()();
    v22 = swift_allocObject();
    v22[2] = v11;
    v22[3] = a2;
    v22[4] = a3;
    v28 = sub_1000DAD68;
    v29 = v22;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v26 = sub_100124498;
    v27 = &unk_100306BA0;
    v23 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v18 sendEventID:v19 event:isa destinationID:v21 options:0 completion:v23];
    _Block_release(v23);
  }

  else
  {
  }

  return result;
}

void *sub_1000D8784()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    swift_unknownObjectRetain();
    v1 = [v0 userInfo];
    if (v1)
    {
      v2 = v1;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
      if (v3)
      {
LABEL_7:
        v10[0] = v3;
        sub_100035D04(&qword_100350E70, &qword_100278AE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002725A0;
        strcpy((inited + 32), "activityName");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        v5 = [v0 activityType];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        *(inited + 48) = v6;
        *(inited + 56) = v8;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0xD000000000000010;
        *(inited + 88) = 0x800000010029F070;
        sub_10001766C(v10, inited + 96);
        v0 = sub_10024DA80(inited);
        swift_setDeallocating();
        sub_100035D04(&unk_100350E80, &qword_100278AE8);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        sub_10000903C(v10);
        return v0;
      }
    }

    else
    {
      v11 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
    }

    v3 = sub_10024D824(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  return v0;
}

void sub_1000D8978(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    if (a2)
    {
      v11 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_100342B40);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100017494(a3, a4, &v18);
      *(v15 + 12) = 2080;
      v16 = sub_100017494(v11, v12, &v18);

      *(v15 + 14) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Successfully sent %s activity to peer: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_20;
  }

  swift_errorRetain();
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342B40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "### Failed to send activity update to peeer. %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

LABEL_20:

    return;
  }
}

uint64_t sub_1000D8CC0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = a2;
  v14 = sub_1000092A0(v10, v13);
  v88 = v15;
  UUID.init()();
  v16 = UUID.uuidString.getter();
  v18 = v17;
  (*(v9 + 8))(v12, v8);
  v86 = sub_100035D04(&qword_100342B80, &qword_100278AF0);
  swift_allocObject();
  v19 = PassthroughSubject.init()();
  v20 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89 = *(v4 + v20);
  *(v4 + v20) = 0x8000000000000000;
  sub_10004D4B4(v19, v16, v18, isUniquelyReferenced_nonNull_native);
  v84 = v18;

  *(v4 + v20) = v89;
  swift_endAccess();
  sub_100035D04(&qword_100350E70, &qword_100278AE0);
  inited = swift_initStackObject();
  v23 = inited;
  strcpy((inited + 32), "activityName");
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v24 = *(a1 + 16);
  v25 = _swiftEmptyArrayStorage;
  v87 = v19;
  if (v24)
  {
    v79 = inited;
    v80 = inited + 32;
    v81 = v16;
    v82 = a3;
    v83 = v14;
    v90 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v24, 0);
    v26 = (a1 + 32);
    v25 = v90;
    v27 = "ityControl.activity.annoucement";
    v28 = "ityControl.activity.call";
    do
    {
      v30 = *v26++;
      v29 = v30;
      v31 = 0xD000000000000029;
      v32 = 0xD000000000000028;
      if (v30 == 3)
      {
        v33 = "ityControl.activity.timer";
      }

      else
      {
        v32 = 0xD000000000000029;
        v33 = "sendCurrentValue";
      }

      if (v29 == 2)
      {
        v32 = 0xD000000000000029;
        v33 = v28;
      }

      if (v29)
      {
        v31 = 0xD00000000000002FLL;
        v34 = "ityControl.activity.media";
      }

      else
      {
        v34 = v27;
      }

      if (v29 <= 1)
      {
        v35 = v31;
      }

      else
      {
        v35 = v32;
      }

      if (v29 <= 1)
      {
        v36 = v34;
      }

      else
      {
        v36 = v33;
      }

      v90 = v25;
      v38 = v25[2];
      v37 = v25[3];
      if (v38 >= v37 >> 1)
      {
        v78 = v27;
        v77 = v28;
        sub_1000CDF40((v37 > 1), v38 + 1, 1);
        v28 = v77;
        v27 = v78;
        v25 = v90;
      }

      v25[2] = v38 + 1;
      v39 = &v25[2 * v38];
      v39[4] = v35;
      v39[5] = v36 | 0x8000000000000000;
      --v24;
    }

    while (v24);
    v19 = v87;
    v14 = v83;
    LOBYTE(a3) = v82;
    v16 = v81;
    v23 = v79;
  }

  v40 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  *(v23 + 48) = v25;
  *(v23 + 72) = v40;
  *(v23 + 80) = 0x4974736575716572;
  *(v23 + 88) = 0xE900000000000044;
  *(v23 + 96) = v16;
  *(v23 + 104) = v84;
  *(v23 + 120) = &type metadata for String;
  *(v23 + 128) = 0xD000000000000010;
  *(v23 + 136) = 0x800000010029EF60;
  *(v23 + 168) = &type metadata for Bool;
  *(v23 + 144) = (a3 & 1) == 0;
  v41 = sub_10024DA80(v23);
  swift_setDeallocating();
  sub_100035D04(&unk_100350E80, &qword_100278AE8);
  swift_arrayDestroy();
  v42 = v88;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003078(v43, qword_100342B40);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = v41;
    v48 = swift_slowAlloc();
    v90 = v48;
    *v46 = 136315138;
    *(v46 + 4) = sub_100017494(v14, v42, &v90);
    _os_log_impl(&_mh_execute_header, v44, v45, "Begin activity transport on %s ", v46, 0xCu);
    sub_10000903C(v48);
    v41 = v47;
  }

  v49 = v85;
  v50 = swift_allocObject();
  v51 = v14;
  v50[2] = v14;
  v50[3] = v42;
  v50[4] = v19;
  v52 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  v53 = *(v49 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (v53)
  {
    goto LABEL_26;
  }

  v64 = sub_100191C14(v49);
  if (v64)
  {
LABEL_31:
    sub_1000DA9A4(v64, v51, v42);

    goto LABEL_33;
  }

  v53 = *(v49 + v52);
  if (!v53)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    sub_100003078(v43, qword_100349658);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v72, v73, "Device has no paired connection?", v74, 2u);
    }

    sub_10001618C();
    v64 = swift_allocError();
    *v75 = 0xD000000000000014;
    *(v75 + 8) = 0x800000010029F0B0;
    *(v75 + 16) = 9;
    goto LABEL_31;
  }

LABEL_26:
  v85 = v41;
  v54 = qword_100339118;

  if (v54 != -1)
  {
    swift_once();
  }

  sub_100003078(v43, qword_100349658);

  v55 = v49;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v58 = 136315394;
    v59 = sub_100017494(0xD000000000000012, 0x800000010029F090, &v90);
    *(v58 + 4) = v59;
    *(v58 + 12) = 2080;
    v61 = sub_1000092A0(v59, v60);
    v63 = sub_100017494(v61, v62, &v90);

    *(v58 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v56, v57, "Sending request %s to %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  v90 = v53;
  v65 = swift_allocObject();
  v65[2] = 0xD000000000000012;
  v65[3] = 0x800000010029F090;
  v65[4] = v55;
  v65[5] = sub_1000DB5CC;
  v65[6] = v50;
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = 0xD000000000000012;
  v68 = v85;
  *(v67 + 32) = 0x800000010029F090;
  *(v67 + 40) = v68;
  *(v67 + 48) = 0;
  *(v67 + 56) = sub_1000DB5CC;
  *(v67 + 64) = v50;
  *(v67 + 72) = 1;
  swift_retain_n();

  sub_100035D04(&qword_100342B90, &qword_100278AF8);
  sub_10000E244(&qword_100342B98, &qword_100342B90, &qword_100278AF8, &protocol conformance descriptor for Future<A, B>);
  v69 = Publisher.sink(receiveCompletion:receiveValue:)();

  *(v55 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask) = v69;

  v19 = v87;
LABEL_33:

  v90 = v19;
  sub_10000E244(&qword_100342B88, &qword_100342B80, &qword_100278AF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v70 = Publisher.eraseToAnyPublisher()();

  return v70;
}

uint64_t sub_1000D9768(uint64_t a1, uint64_t a2, void (*a3)(void, void, uint64_t), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v117 = sub_100035D04(&qword_100342B58, &qword_100278AD0);
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = v92 - v10;
  v11 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v11 - 8);
  v122 = v92 - v12;
  v121 = type metadata accessor for DispatchQoS.QoSClass();
  v114 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_100035D04(&qword_100342B60, &qword_100278AD8);
  v113 = *(v119 - 8);
  __chkstk_darwin(v119);
  v15 = v92 - v14;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100003078(v16, qword_100342B40);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Handling incoming observation request", v19, 2u);
  }

  strcpy(v128, "activityName");
  BYTE5(v128[1]) = 0;
  HIWORD(v128[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_1000851E8(v129), (v21 & 1) == 0))
  {
    sub_1000516C4(v129);
    goto LABEL_28;
  }

  sub_10001766C(*(a1 + 56) + 32 * v20, &v125);
  sub_1000516C4(v129);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_31:

LABEL_32:
      sub_10001618C();
      v50 = swift_allocError();
      *v51 = 0;
      *(v51 + 8) = 0xE000000000000000;
      *(v51 + 16) = 9;
      a3(0, 0, v50);
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "### Recieved observation request with no activivtes";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v46, v47, v49, v48, 2u);

    goto LABEL_31;
  }

  v22 = v128[0];
  if (!a2)
  {

    v125 = 0u;
    v126 = 0u;
    goto LABEL_36;
  }

  v128[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v128[1] = v23;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v24 = sub_1000851E8(v129), (v25 & 1) == 0))
  {
    sub_1000516C4(v129);
    v125 = 0u;
    v126 = 0u;
    goto LABEL_34;
  }

  sub_10001766C(*(a2 + 56) + 32 * v24, &v125);
  sub_1000516C4(v129);
  if (!*(&v126 + 1))
  {
LABEL_34:

LABEL_36:
    sub_1000097E8(&v125, &unk_100339680, &qword_100278390);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v26 = v129[1];
  v101 = v129[0];
  strcpy(v128, "requestID");
  WORD1(v128[1]) = 0;
  HIDWORD(v128[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v27 = sub_1000851E8(v129), (v28 & 1) == 0))
  {
    sub_1000516C4(v129);
    goto LABEL_39;
  }

  sub_10001766C(*(a1 + 56) + 32 * v27, &v125);
  sub_1000516C4(v129);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_31;
    }

    v48 = swift_slowAlloc();
    *v48 = 0;
    v49 = "### Recieved observation request without a request ID";
    goto LABEL_30;
  }

  v96 = v26;
  v93 = v128[0];
  v95 = v128[1];
  if (qword_1003391E8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v29 = qword_10038B5B8;
  type metadata accessor for TimedTaskStorage(0);
  swift_allocObject();
  v30 = sub_10013E378(v29, 30.0);
  v31 = swift_allocObject();
  swift_weakInit();
  v32 = swift_allocObject();
  v32[2] = a3;
  v32[3] = a4;
  v32[4] = v31;
  v32[5] = v5;
  v33 = *(v30 + 16);
  v34 = *(v30 + 24);
  *(v30 + 16) = sub_1000DA998;
  *(v30 + 24) = v32;

  v35 = v5;
  sub_10002689C(v33, v34);

  swift_beginAccess();

  v102 = v35;
  v94 = v30;
  sub_1000644C4(&v125, v30);
  a3 = v125;
  swift_endAccess();

  v5 = 0;
  v36 = *(v22 + 16);
  v37 = v22 + 40;
  v106 = _swiftEmptyArrayStorage;
  v112 = v22 + 40;
LABEL_18:
  v38 = (v37 + 16 * v5);
  while (v36 != v5)
  {
    if (v5 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_80;
    }

    v39 = v22;
    ++v5;
    v40 = v38 + 2;
    v41 = *(v38 - 1);
    v42 = *v38;

    a3 = sub_10018CFE4(v41, v42);
    a4 = a3;

    v38 = v40;
    v22 = v39;
    if (a3 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_1000B013C(0, *(v106 + 2) + 1, 1, v106);
      }

      v44 = *(v106 + 2);
      v43 = *(v106 + 3);
      if (v44 >= v43 >> 1)
      {
        v106 = sub_1000B013C((v43 > 1), v44 + 1, 1, v106);
      }

      v45 = v106;
      *(v106 + 2) = v44 + 1;
      v45[v44 + 32] = a3;
      v22 = v39;
      v37 = v112;
      goto LABEL_18;
    }
  }

  *&v125 = 0xD000000000000010;
  *(&v125 + 1) = 0x800000010029EF60;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v53 = sub_1000851E8(v129), (v54 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v53, &v125);
    sub_1000516C4(v129);
    v55 = swift_dynamicCast();
    v56 = v106;
    if (v55)
    {
      v57 = LOBYTE(v128[0]);
    }

    else
    {
      v57 = 1;
    }

    LODWORD(v112) = v57;
    v58 = v102;
  }

  else
  {
    sub_1000516C4(v129);
    LODWORD(v112) = 1;
    v58 = v102;
    v56 = v106;
  }

  v59 = *(v56 + 2);
  if (v59)
  {
    v92[1] = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage;
    v111 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_activitySource;
    swift_beginAccess();
    v100 = (v114 + 104);
    v99 = (v114 + 8);
    v98 = (v113 + 8);
    v97 = enum case for DispatchQoS.QoSClass.default(_:);
    v92[0] = v115 + 8;
    v60 = 32;
    v114 = "ityControl.activity.annoucement";
    v113 = "ityControl.activity.call";
    v110 = "ityControl.activity.timer";
    v109 = 0xD000000000000028;
    v108 = "sendCurrentValue";
    v107 = "ityControl.activity.media";
    do
    {
      v61 = v56[v60];
      v62 = v109;
      if (v61 != 3)
      {
        v62 = 0xD000000000000029;
      }

      v63 = v110;
      if (v61 != 3)
      {
        v63 = v108;
      }

      if (v61 == 2)
      {
        v62 = 0xD000000000000029;
        v63 = v113;
      }

      v64 = 0xD00000000000002FLL;
      if (!v56[v60])
      {
        v64 = 0xD000000000000029;
      }

      v65 = v114;
      if (v56[v60])
      {
        v65 = v107;
      }

      if (v56[v60] <= 1u)
      {
        v66 = v64;
      }

      else
      {
        v66 = v62;
      }

      if (v56[v60] <= 1u)
      {
        v67 = v65;
      }

      else
      {
        v67 = v63;
      }

      v68 = v67 | 0x8000000000000000;
      sub_1000DACBC(v58 + v111, v129);
      if (v129[3])
      {
        v105 = v66;
        v115 = v68;
        sub_10007E790(v129, &v125);
        sub_1000097E8(v129, &qword_100342B68, qword_10027E2A0);
        v69 = *(&v126 + 1);
        v70 = v127;
        sub_10000EBC0(&v125, *(&v126 + 1));
        v71 = (*(v70 + 8))(v61, 0, v69, v70);
        if (v71)
        {
          v124 = v71;
          v104 = v71;
          sub_100035CB8();
          v73 = v120;
          v72 = v121;
          (*v100)(v120, v97, v121);
          v74 = static OS_dispatch_queue.global(qos:)();
          (*v99)(v73, v72);
          v123 = v74;
          v75 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v76 = v122;
          (*(*(v75 - 8) + 56))(v122, 1, 1, v75);
          sub_100035D04(&qword_10033EF28, &qword_100275550);
          v77 = sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550, &protocol conformance descriptor for AnyPublisher<A, B>);
          sub_1000513CC();
          v103 = v77;
          Publisher.receive<A>(on:options:)();
          sub_1000097E8(v76, &qword_10034C680, &qword_100270390);

          sub_10000903C(&v125);
          sub_10000E244(&qword_100342B78, &qword_100342B60, &qword_100278AD8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
          v78 = v119;
          v79 = Publisher.eraseToAnyPublisher()();
          (*v98)(v15, v78);
          if (v112)
          {
            v58 = v102;
            v56 = v106;
            v80 = v115;
            if (v79)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v58 = v102;
            v56 = v106;
            if (v79)
            {
              v129[0] = v79;
              sub_100035D04(&qword_10033EF28, &qword_100275550);
              v81 = v116;
              Publisher.dropFirst(_:)();
              sub_10000E244(&qword_100342B70, &qword_100342B58, &qword_100278AD0, &protocol conformance descriptor for Publishers.Drop<A>);
              v82 = v117;
              v83 = Publisher.eraseToAnyPublisher()();
              v80 = v115;
              v84 = v83;

              v85 = v82;
              v58 = v102;
              (*v92[0])(v81, v85);
              v79 = v84;
LABEL_77:
              v129[0] = v79;
              *(swift_allocObject() + 16) = v61;
              v86 = swift_allocObject();
              v86[2] = v105;
              v86[3] = v80;
              v87 = v95;
              v86[4] = v93;
              v86[5] = v87;
              v88 = v101;
              v86[6] = v58;
              v86[7] = v88;
              v89 = ObjectType;
              v86[8] = v96;
              v86[9] = v89;
              v90 = v58;

              sub_100035D04(&qword_10033EF28, &qword_100275550);
              v91 = Publisher.sink(receiveCompletion:receiveValue:)();

              swift_beginAccess();

              sub_10006421C(&v125, v91);
              swift_endAccess();

              v56 = v106;

              goto LABEL_52;
            }
          }
        }

        else
        {
          sub_10000903C(&v125);
        }
      }

      else
      {
        sub_1000097E8(v129, &qword_100342B68, qword_10027E2A0);
      }

LABEL_52:
      ++v60;
      --v59;
    }

    while (v59);
  }
}

double sub_1000DA814(void (*a1)(void, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100342B40);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stream duration elapsed, responding and removing storage...", v8, 2u);
  }

  a1(0, 0, 0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_100067EA4(v11);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000DA9A4(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100342B40);
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_100017494(a2, a3, &v19);
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "### Activity transport failed on %s %@", v9, 0x16u);
      sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

      sub_10000903C(v11);
    }

    v19 = a1;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_100342B40);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(a2, a3, &v19);
      _os_log_impl(&_mh_execute_header, v15, v16, "Activity trasnport successful on %s", v17, 0xCu);
      sub_10000903C(v18);
    }

    v19 = 0;
    return PassthroughSubject.send(completion:)();
  }
}

uint64_t sub_1000DACBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100342B68, qword_10027E2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DAD74(uint64_t a1)
{
  v2 = v1;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342B40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v50[0] = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = sub_100017494(v9, v10, v50);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Recieved activity update %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v48 = 0x4974736575716572;
  v49 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v12 = sub_1000851E8(v50), (v13 & 1) == 0))
  {
    sub_1000516C4(v50);
    goto LABEL_17;
  }

  sub_10001766C(*(a1 + 56) + 32 * v12, v51);
  sub_1000516C4(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_20:

      return;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Recieved event with no peer identifier specified", v30, 2u);
LABEL_19:

    goto LABEL_20;
  }

  v15 = v48;
  v14 = v49;
  v16 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions;
  swift_beginAccess();
  if (!*(*(v2 + v16) + 16))
  {
LABEL_22:

    v28 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v28, v31))
    {

      goto LABEL_20;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v50[0] = v33;
    *v32 = 136315138;
    v34 = sub_100017494(v15, v14, v50);

    *(v32 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v28, v31, "Recieved event without an active subscription. Request id: %s", v32, 0xCu);
    sub_10000903C(v33);

    goto LABEL_19;
  }

  sub_100004B58(v48, v49);
  if ((v17 & 1) == 0)
  {

    goto LABEL_22;
  }

  strcpy(v47, "activityName");
  BYTE5(v47[1]) = 0;
  HIWORD(v47[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v18 = sub_1000851E8(v50), (v19 & 1) == 0))
  {
    sub_1000516C4(v50);
    goto LABEL_26;
  }

  sub_10001766C(*(a1 + 56) + 32 * v18, v51);
  sub_1000516C4(v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v23 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v23, v35))
    {
LABEL_29:

      return;
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v23, v35, "Recieved event without an activity identifier", v36, 2u);
LABEL_28:

    goto LABEL_29;
  }

  v21 = v47[0];
  v20 = v47[1];

  v22 = sub_10018CFE4(v47[0], v47[1]);

  if (v22 == 5)
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v23, v24))
    {

      goto LABEL_29;
    }

    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v50[0] = v26;
    *v25 = 136315138;
    v27 = sub_100017494(v21, v20, v50);

    *(v25 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v23, v24, "Recieved an unidentifiable event %s", v25, 0xCu);
    sub_10000903C(v26);

    goto LABEL_28;
  }

  v37 = objc_allocWithZone(NSUserActivity);
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 initWithActivityType:v38];

  v47[0] = 0xD000000000000010;
  v47[1] = 0x800000010029F070;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v40 = sub_1000851E8(v50), (v41 & 1) == 0))
  {
    sub_1000516C4(v50);
    goto LABEL_35;
  }

  sub_10001766C(*(a1 + 56) + 32 * v40, v51);
  sub_1000516C4(v50);
  sub_100035D04(&qword_10033B7D0, &unk_100272100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v42.super.isa = 0;
    goto LABEL_36;
  }

  v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_36:
  [v39 setUserInfo:{v42.super.isa, v47[0], v47[1]}];

  v43 = [objc_opt_self() activityFrom:v39];
  if (v43)
  {
    v50[0] = v43;
    PassthroughSubject.send(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Recieved device activity that was not a valid PCActivity", v46, 2u);
    }
  }
}

unint64_t UIBlurEffectStyle.description.getter(uint64_t a1)
{
  result = 0x67694C6172747865;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 1802658148;
      break;
    case 3:
      result = 0x7261446172747865;
      break;
    case 4:
      result = 0x72616C75676572;
      break;
    case 5:
      result = 0x6E656E696D6F7270;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 18:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x614D6D6574737973;
      break;
    case 9:
    case 13:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
    case 20:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    default:
      _StringGuts.grow(_:)(19);

      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_1000DB914()
{
  result = qword_100342BA0;
  if (!qword_100342BA0)
  {
    sub_100035D4C(&qword_100342BA8, qword_100278B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342BA0);
  }

  return result;
}

unint64_t sub_1000DBA40()
{
  result = qword_100342BB0;
  if (!qword_100342BB0)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342BB0);
  }

  return result;
}

uint64_t sub_1000DBA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000E5EE8(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000097E8(v10, &qword_10033E800, &qword_100278E80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double sub_1000DBD34(_OWORD *a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033E988);
  sub_1000E61F0(a1, v20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, &v19);
    *(v8 + 12) = 2080;
    v9 = a1[1];
    v20[0] = *a1;
    v20[1] = v9;
    v21[0] = a1[2];
    *(v21 + 10) = *(a1 + 42);
    v10 = String.init<A>(describing:)();
    v12 = sub_100017494(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: input=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E624C(a1);
  }

  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = v14;
  v16 = a1[1];
  *(v15 + 40) = *a1;
  *(v15 + 56) = v16;
  *(v15 + 72) = a1[2];
  *(v15 + 82) = *(a1 + 42);
  sub_1000E61F0(a1, v20);
  sub_1000DBA98(0, 0, v4, &unk_100279000, v15);

  return result;
}

double sub_1000DC024(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for ViewServiceInput(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v9 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v28 - v10;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_10033E988);
  sub_1000E6078(a1, v11, type metadata accessor for ViewServiceInput);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v6;
    v16 = v15;
    v28 = swift_slowAlloc();
    v31 = v28;
    *v16 = 136315394;
    *(v16 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, &v31);
    *(v16 + 12) = 2080;
    sub_1000E6078(v11, v9, type metadata accessor for ViewServiceInput);
    v17 = String.init<A>(describing:)();
    v30 = v7;
    v18 = v4;
    v19 = a1;
    v21 = v20;
    sub_1000E6190(v11, type metadata accessor for ViewServiceInput);
    v22 = sub_100017494(v17, v21, &v31);
    a1 = v19;
    v4 = v18;

    *(v16 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: input=%s", v16, 0x16u);
    swift_arrayDestroy();

    v6 = v29;
  }

  else
  {

    sub_1000E6190(v11, type metadata accessor for ViewServiceInput);
  }

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  sub_1000E6078(a1, v9, type metadata accessor for ViewServiceInput);
  v25 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v24;
  sub_1000E6128(v9, v26 + v25, type metadata accessor for ViewServiceInput);
  sub_1000DBA98(0, 0, v4, &unk_100278E90, v26);

  return result;
}

void sub_1000DC45C()
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033E988);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x2928656D75736572, 0xE800000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  sub_1000DC704();
}

uint64_t sub_1000DC5A4()
{
  v1 = type metadata accessor for UUID();
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = qword_10033E9B0;
  if (*(v0 + qword_10033E9B0))
  {
    v6 = *(v0 + qword_10033E9B0);
  }

  else
  {
    v7 = *(v0 + qword_10033E9A8);
    (*(v2 + 16))(v4, v0 + qword_10038B038);
    type metadata accessor for XPCConnectionManager(0);
    v8 = swift_allocObject();

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x4008000000000000;
    }

    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 10;
    }

    if (v7)
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v6 = sub_1000E2540(v4, v9, v10, v11, v0, v8);
    *(v0 + v5) = v6;
  }

  return v6;
}

void sub_1000DC704()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x5374736575716572, 0xEE00292874726174, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_1000DC870();
  if (!*(v1 + qword_10033E9A8))
  {
    sub_1000DC9B8();
  }
}

double sub_1000DC870()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "start()", v5, 2u);
  }

  sub_1000DC5A4();
  v6 = sub_100241254();

  if (v6 == 1 && !*(v1 + qword_10033E9A8))
  {
    sub_1000DC9B8();

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1000DC9B8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_10033E988);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0x2928676E6970, 0xE600000000000000, &v18);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  static String.Encoding.ascii.getter();
  v9 = String.data(using:allowLossyConversion:)();
  v11 = v10;
  (*(v1 + 8))(v3, v0);
  if (v11 >> 60 == 15)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "### Failed to ping", v14, 2u);
    }
  }

  else
  {
    v15 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v15 handleWithSerializedObject:isa];

    sub_10006DB04(v9, v11);
  }
}

uint64_t sub_1000DCC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return (_swift_task_switch)(sub_1000DCCA0, 0, 0);
}

uint64_t sub_1000DCCA0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 112);
    v3 = v1[1];
    v2 = v1[2];
    v4 = *v1;
    *(v0 + 58) = *(v1 + 42);
    *(v0 + 32) = v3;
    *(v0 + 48) = v2;
    *(v0 + 16) = v4;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    sub_1000E6530();
    v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v7 = v6;

    sub_1000DC870();
    v8 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v8 handleWithSerializedObject:isa];

    sub_100010708(v5, v7);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000DCE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return (_swift_task_switch)(sub_1000DCE34, 0, 0);
}

uint64_t sub_1000DCE34()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for ViewServiceInput(0);
    sub_1000E60E0(&qword_100343040, type metadata accessor for ViewServiceInput, &unk_100292334);
    v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v3 = v2;

    sub_1000DC870();
    v4 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v4 handleWithSerializedObject:isa];

    sub_100010708(v1, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DCFC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342BB8);
  sub_100003078(v0, qword_100342BB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DD040()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_100035D04(&qword_100342E60, &unk_100278DF0);
    sub_10000E244(&qword_100343158, &qword_100342E60, &unk_100278DF0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 24) = v1;
  }

  return v1;
}

double sub_1000DD138(uint64_t *a1)
{
  sub_10008FE10();

  sub_100035D04(&qword_10033E538, &qword_100274710);
  sub_100035D04(&qword_100343110, &qword_100278F78);
  sub_10000E244(&qword_10033E540, &qword_10033E538, &qword_100274710, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_1000DD234(uint64_t *a1)
{
  sub_100093B90();

  sub_100035D04(&qword_1003430F8, &qword_100278F60);
  sub_100035D04(&qword_100343100, &unk_100278F68);
  sub_10000E244(&qword_100343108, &qword_1003430F8, &qword_100278F60, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_1000DD330(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000DF298(a1 & 1, a2);
  }

  return result;
}

double sub_1000DD3A4(uint64_t *a1)
{
  sub_100090608();

  sub_100035D04(&qword_1003430E0, &qword_100278F50);
  sub_100035D04(&qword_1003430E8, &qword_100278F58);
  sub_10000E244(&qword_1003430F0, &qword_1003430E0, &qword_100278F50, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_1000DD4A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4(a1, a2);
  }

  return result;
}

double sub_1000DD51C(uint64_t *a1)
{
  v1 = sub_100035D04(&qword_10033B540, &qword_100272018);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v7 - v3;
  swift_beginAccess();
  sub_100035D04(&qword_10033B550, &qword_1002746C0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_10033B558, &qword_10033B540, &qword_100272018, &protocol conformance descriptor for Published<A>.Publisher);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  v7[1] = v5;

  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_100035D04(&qword_100342EE0, &qword_100278E20);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

double sub_1000DD730(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4(a1, a2);
  }

  return result;
}

uint64_t sub_1000DD7AC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (a1)
  {
    sub_100035D04(&qword_1003430C0, &qword_100278F38);
    sub_10000E244(&qword_1003430C8, &qword_1003430C0, &qword_100278F38, &protocol conformance descriptor for PassthroughSubject<A, B>);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_1003430D0, &unk_100278F40);
    sub_100035D04(&qword_1003430B8, &qword_100278F30);
    sub_10000E244(&qword_1003430D8, &qword_1003430D0, &unk_100278F40, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    v4 = sub_100035D04(&qword_100342F00, &qword_100278E30);
    return (*(*(v4 - 8) + 56))(a3, 0, 1, v4);
  }

  else
  {
    v6 = sub_100035D04(&qword_100342F00, &qword_100278E30);
    v7 = *(*(v6 - 8) + 56);

    return v7(a3, 1, 1, v6);
  }
}

uint64_t sub_1000DD9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_100035D04(&qword_1003430B8, &qword_100278F30) + 48);
  sub_1000E6078(a1, a3, type metadata accessor for ViewServiceOutput);
  *(a3 + v6) = a2;
}

double sub_1000DDA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000E0098(a1, a2);
  }

  return result;
}

double sub_1000DDACC(uint64_t *a1)
{
  sub_10008CECC();

  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  sub_100035D04(&qword_1003430B0, &unk_100278F20);
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

uint64_t sub_1000DDBC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + 48), v4 = *(Strong + 56), , , v3))
  {

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

double sub_1000DDC7C(uint64_t *a1)
{
  sub_10009120C();

  sub_100035D04(&qword_100343098, &qword_100278F10);
  sub_100035D04(&qword_1003430A0, &qword_100278F18);
  sub_10000E244(&qword_1003430A8, &qword_100343098, &qword_100278F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1000DDD78(_BYTE *a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a3 + 8) = v4;
}

uint64_t sub_1000DDE00(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  result = __chkstk_darwin(v2);
  v5 = &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    *v5 = *a1;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v5);
    return sub_1000E6190(v5, type metadata accessor for ViewServiceInput);
  }

  return result;
}

double sub_1000DDEB8(uint64_t *a1)
{
  sub_100091490();

  sub_100035D04(&qword_100343080, &qword_100278F00);
  sub_100035D04(&qword_100343088, &qword_100278F08);
  sub_10000E244(&qword_100343090, &qword_100343080, &qword_100278F00, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1000DDFB4(void **a1@<X0>, void **a3@<X8>)
{
  v4 = *a1;
  *a3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  static Published.subscript.getter();

  a3[1] = v6;
}

uint64_t sub_1000DE048(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  result = __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    v6 = *a1;
    *v5 = v6;
    swift_storeEnumTagMultiPayload();
    v7 = v6;
    sub_1000DC024(v5);
    return sub_1000E6190(v5, type metadata accessor for ViewServiceInput);
  }

  return result;
}

double sub_1000DE104(uint64_t *a1)
{
  sub_10009219C();

  sub_100035D04(&qword_100343068, &qword_100278EF0);
  sub_100035D04(&qword_100343070, &qword_100278EF8);
  sub_10000E244(&qword_100343078, &qword_100343068, &qword_100278EF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1000DE200(_DWORD *a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a3 + 8) = v4;
}

uint64_t sub_1000DE288(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  result = __chkstk_darwin(v2);
  v5 = (&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    *v5 = *a1;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v5);
    return sub_1000E6190(v5, type metadata accessor for ViewServiceInput);
  }

  return result;
}

double sub_1000DE340(uint64_t *a1)
{
  sub_1000918D0();

  sub_100035D04(&qword_100343058, &qword_100278EE8);
  sub_100035D04(&qword_100342FE8, &qword_100278E60);
  sub_10000E244(&qword_100343060, &qword_100343058, &qword_100278EE8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1000DE43C(uint64_t a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  *a3 = *a1;
  a3[1] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100056F7C(v4);
  static Published.subscript.getter();

  a3[2] = v6;
}

uint64_t sub_1000DE4D8(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  result = __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16))
  {
    v8 = a1;
    v6 = *a1;
    v7 = *(v8 + 8);
    *v5 = v6;
    v5[1] = v7;
    swift_storeEnumTagMultiPayload();
    sub_100056F7C(v6);
    sub_1000DC024(v5);
    return sub_1000E6190(v5, type metadata accessor for ViewServiceInput);
  }

  return result;
}

double sub_1000DE59C(uint64_t *a1)
{
  sub_100092814();

  sub_100035D04(&qword_100343048, &qword_100278E98);
  sub_100035D04(&qword_100343038, &qword_100278E78);
  sub_10000E244(&qword_100343050, &qword_100343048, &qword_100278E98, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.map<A>(_:)();

  return result;
}

void sub_1000DE698(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v9 = *(sub_100035D04(a3, a4) + 48);
  sub_1000E6078(a1, a6, a5);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a6 + v9) = v10;
}

uint64_t sub_1000DE748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v3 = *(Strong + 48), v4 = *(Strong + 56), , , v3))
  {
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000DE7F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for ViewServiceInput(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100035D04(a2, a3);
  if (*(a1 + *(result + 48)))
  {
    sub_1000E6078(a1, v11, a4);
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v11);
    return sub_1000E6190(v11, type metadata accessor for ViewServiceInput);
  }

  return result;
}

void *sub_1000DE8EC()
{
  v1 = v0;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100342BB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000DE9FC()
{
  sub_1000DE8EC();

  return swift_deallocClassInstance();
}

void sub_1000DEA54(uint64_t a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0xD000000000000016, 0x800000010029F5B0, &v36);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v8 = UUID.uuidString.getter();
      sub_10000B584(8, v8, v9);

      v10 = static String._fromSubstring(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      String.append(_:)(v13);

      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v17._countAndFlagsBits = sub_1000092A0(v15, v16);
      String.append(_:)(v17);

      v18._countAndFlagsBits = 62;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = 60;
      v20 = 0xE100000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_100017494(v19, v20, &v36);

    *(v7 + 14) = v21;
    *(v7 + 22) = 2080;
    if (a2)
    {
      v22 = UUID.uuidString.getter();
      sub_10000B584(8, v22, v23);

      v24 = static String._fromSubstring(_:)();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      String.append(_:)(v27);

      v28._countAndFlagsBits = 32;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v31._countAndFlagsBits = sub_1000092A0(v29, v30);
      String.append(_:)(v31);

      v32._countAndFlagsBits = 62;
      v32._object = 0xE100000000000000;
      String.append(_:)(v32);
      v33 = 60;
      v34 = 0xE100000000000000;
    }

    else
    {
      v34 = 0xE300000000000000;
      v33 = 7104878;
    }

    v35 = sub_100017494(v33, v34, &v36);

    *(v7 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s, oldSession=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  sub_1000E17B8(a2, 0x206E6F6973736553, 0xEF6465676E616863);
}

uint64_t sub_1000DEE48(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v29);
    *(v7 + 12) = 2080;
    if (v3 == 5)
    {
      v8 = 0xE700000000000000;
      v9 = 0x7373696D736964;
    }

    else
    {
      v30 = 0;
      v31 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v30 = 0xD000000000000012;
      v31 = 0x800000010029F590;
      v10._countAndFlagsBits = sub_10022C5BC(v3);
      String.append(_:)(v10);

      v11._countAndFlagsBits = 10528;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      v9 = v30;
      v8 = v31;
    }

    v12 = sub_100017494(v9, v8, &v29);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v30 = 60;
    v31 = 0xE100000000000000;
    v13 = UUID.uuidString.getter();
    sub_10000B584(8, v13, v14);

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v22._countAndFlagsBits = sub_1000092A0(v20, v21);
    String.append(_:)(v22);

    v23._countAndFlagsBits = 62;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = sub_100017494(v30, v31, &v29);

    *(v7 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (v3 == 5)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    v25._countAndFlagsBits = 0x6566664564726143;
    v25._object = 0xEB000000002E7463;
    String.append(_:)(v25);
    sub_1002432C0(5);
    sub_1000E17B8(a2, v30, v31);
  }

  else
  {
    v27 = *(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode);
    *(v27 + 24) = v3;

    sub_10005E99C();
    LOBYTE(v30) = *(v27 + 24);
    CurrentValueSubject.send(_:)();

    v30 = 0;
    v31 = 0xE000000000000000;
    v28._countAndFlagsBits = 0x6566664564726143;
    v28._object = 0xEB000000002E7463;
    String.append(_:)(v28);
    sub_1002432C0(v3);
    sub_1000E0A40(0, a2, v30, v31);
  }
}

double sub_1000DF298(char a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v23);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v8 = 0x7373696D736964;
    }

    else
    {
      v8 = 0x746E6573657270;
    }

    v9 = sub_100017494(v8, 0xE700000000000000, &v23);

    *(v7 + 14) = v9;
    *(v7 + 22) = 2080;
    v10 = UUID.uuidString.getter();
    sub_10000B584(8, v10, v11);

    v12 = static String._fromSubstring(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v19._countAndFlagsBits = sub_1000092A0(v17, v18);
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_100017494(60, 0xE100000000000000, &v23);

    *(v7 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1)
  {

    sub_1000E17B8(a2, 0xD00000000000002ALL, 0x800000010029F4F0);
  }

  else
  {

    return sub_1000E0A40(1, a2, 0xD00000000000002ALL, 0x800000010029F560);
  }

  return result;
}

void sub_1000DF5E0(char a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v29);
    *(v7 + 12) = 2080;
    v28 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0x7661776B636F6873;
      }

      else
      {
        v8 = 0x7373696D736964;
      }

      if (a1 == 1)
      {
        v9 = 0xE900000000000065;
      }

      else
      {
        v9 = 0xE700000000000000;
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v8 = 1953393000;
    }

    v10 = sub_100017494(v8, v9, &v29);

    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    v11 = UUID.uuidString.getter();
    sub_10000B584(8, v11, v12);

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v20._countAndFlagsBits = sub_1000092A0(v18, v19);
    String.append(_:)(v20);

    v21._countAndFlagsBits = 62;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = sub_100017494(60, 0xE100000000000000, &v29);

    *(v7 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();

    a1 = v28;
  }

  else
  {
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v23 = *(qword_10038B0B8 + 64);
  v24 = sub_1000031CC();

  if (v24)
  {
    if (!a1)
    {
      v26 = 0x800000010029F540;
      v27 = a2;
      v25 = 0xD000000000000014;
      goto LABEL_22;
    }

    if (a1 == 1)
    {
      v25 = 0xD000000000000019;
      v26 = 0x800000010029F520;
      v27 = a2;
LABEL_22:

      sub_1000E0A40(1, v27, v25, v26);
      return;
    }

    sub_1000E17B8(a2, 0xD00000000000002ALL, 0x800000010029F4F0);
  }
}

void sub_1000DFA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ViewServiceInput(0);
  v7 = __chkstk_darwin(v6);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __chkstk_darwin(v7);
  v12 = (&v47 - v11);
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100003078(v15, qword_100342BB8);

  v53 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v48 = v3;
    v50 = v14;
    v19 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v56 = v47;
    *v19 = 136315650;
    *(v19 + 4) = sub_100017494(0xD000000000000014, 0x800000010029F4D0, &v56);
    *(v19 + 12) = 2080;
    v51 = v9;
    v52 = v6;
    v49 = v12;
    if (a1)
    {
      v54 = a1;

      sub_100035D04(&qword_100343150, &qword_100278FF0);
      v20 = String.init<A>(describing:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE300000000000000;
      v20 = 7104878;
    }

    v23 = sub_100017494(v20, v22, &v56);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v54 = 60;
    v55 = 0xE100000000000000;
    v24 = UUID.uuidString.getter();
    sub_10000B584(8, v24, v25);

    v26 = static String._fromSubstring(_:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 32;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);
    v33._countAndFlagsBits = sub_1000092A0(v31, v32);
    String.append(_:)(v33);

    v34._countAndFlagsBits = 62;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = sub_100017494(v54, v55, &v56);

    *(v19 + 24) = v35;
    _os_log_impl(&_mh_execute_header, v17, v18, "%s: link=%s, session=%s", v19, 0x20u);
    swift_arrayDestroy();

    v9 = v51;
    v12 = v49;
    v14 = v50;
    v3 = v48;
    if (!a1)
    {
      return;
    }
  }

  else
  {

    if (!a1)
    {
      return;
    }
  }

  sub_1000DC45C();
  if (*(v3 + 48))
  {
    if (*(v3 + 56))
    {

      sub_10009249C(v14);
      swift_storeEnumTagMultiPayload();
      sub_1000DC024(v14);

      v36 = v14;
LABEL_25:
      sub_1000E6190(v36, type metadata accessor for ViewServiceInput);
      return;
    }

    *v14 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode) + 24);
    swift_storeEnumTagMultiPayload();

    sub_1000DC024(v14);
    sub_1000E6190(v14, type metadata accessor for ViewServiceInput);
    v40 = *(a2 + 24);
    v41 = *(*&v40[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24);
    if (v41)
    {
      v41 = [v41 proxDeviceState];
    }

    *v12 = v41;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v12);
    sub_1000E6190(v12, type metadata accessor for ViewServiceInput);
    v42 = sub_1001F00B0();
    sub_100249BE4(v40, v42, v14);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v14);
    sub_1000E6190(v14, type metadata accessor for ViewServiceInput);
    v43 = *(*&v40[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer] + 24);
    if (v43 && *(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
    {
      v44 = *(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 16);

      v45 = v44;

      if (*(*(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) < 2uLL)
      {
        v46 = *(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_24:
        *v9 = v44;
        v9[1] = v46;
        swift_storeEnumTagMultiPayload();
        sub_1000DC024(v9);

        v36 = v9;
        goto LABEL_25;
      }
    }

    v46 = 0;
    v44 = 1;
    goto LABEL_24;
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "### No activeConfig?", v39, 2u);
  }
}

double sub_1000E0098(uint64_t a1, uint64_t a2)
{
  v83 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v83);
  v5 = &v73 - v4;
  v82 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v82);
  v7 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_100035D04(&qword_10033B4E0, &unk_100278FD0);
  __chkstk_darwin(v78);
  v79 = (&v73 - v8);
  v9 = type metadata accessor for Date();
  v84 = *(v9 - 8);
  __chkstk_darwin(v9);
  v80 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ViewServiceOutput(0);
  v12 = __chkstk_darwin(v11);
  v85 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v73 - v15;
  __chkstk_darwin(v14);
  v18 = &v73 - v17;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100003078(v19, qword_100342BB8);
  sub_1000E6078(a1, v18, type metadata accessor for ViewServiceOutput);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v75 = v21;
    v23 = v22;
    v76 = swift_slowAlloc();
    v86[0] = v76;
    *v23 = 136315650;
    *(v23 + 4) = sub_100017494(0xD00000000000001FLL, 0x800000010029F4B0, v86);
    v81 = v9;
    *(v23 + 12) = 2080;
    sub_1000E6078(v18, v16, type metadata accessor for ViewServiceOutput);
    v24 = String.init<A>(describing:)();
    v74 = v20;
    v25 = v24;
    v27 = v26;
    sub_1000E6190(v18, type metadata accessor for ViewServiceOutput);
    v28 = sub_100017494(v25, v27, v86);

    *(v23 + 14) = v28;
    *(v23 + 22) = 2080;
    *&v87 = 60;
    *(&v87 + 1) = 0xE100000000000000;
    v29 = UUID.uuidString.getter();
    sub_10000B584(8, v29, v30);
    v77 = a1;

    a1 = v77;
    v31 = static String._fromSubstring(_:)();
    v33 = v32;
    v9 = v81;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);

    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v38._countAndFlagsBits = sub_1000092A0(v36, v37);
    String.append(_:)(v38);

    v39._countAndFlagsBits = 62;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    v40 = sub_100017494(v87, *(&v87 + 1), v86);

    *(v23 + 24) = v40;
    v41 = v74;
    _os_log_impl(&_mh_execute_header, v74, v75, "%s: output=%s, session=%s", v23, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E6190(v18, type metadata accessor for ViewServiceOutput);
  }

  v42 = v85;
  sub_1000E6078(a1, v85, type metadata accessor for ViewServiceOutput);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v45 = sub_100035D04(&qword_100343140, &unk_100278FE0);
        (*(v84 + 8))(v42 + *(v45 + 48), v9);
        return result;
      }

      v65 = *(v42 + 16);
      v87 = *v42;
      v88 = v65;
      v89[0] = *(v42 + 32);
      *(v89 + 9) = *(v42 + 41);
      v66 = sub_100035D04(&qword_100343138, &unk_1002924F0);
      (*(v84 + 8))(v42 + *(v66 + 48), v9);

      v67 = UUID.uuidString.getter();
      v69 = v68;
      v70 = v88;
      *v7 = v87;
      v7[1] = v70;
      v7[2] = v89[0];
      *(v7 + 41) = *(v89 + 9);
      swift_storeEnumTagMultiPayload();
      v71 = &v5[*(v83 + 48)];
      v72 = &v5[*(v83 + 64)];
      sub_1000E6078(v7, v5, type metadata accessor for ExperienceEvent);
      *v71 = v67;
      v71[1] = v69;
      *v72 = 0xD000000000000011;
      *(v72 + 1) = 0x800000010029F490;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v7, type metadata accessor for ExperienceEvent);
    }

    else
    {
      v46 = *(v42 + 16);
      v87 = *v42;
      v88 = v46;
      v89[0] = *(v42 + 32);
      *(v89 + 9) = *(v42 + 41);
      v77 = *(v42 + 64);
      v47 = v77;
      v73 = a2;
      v76 = *(v42 + 72);
      v48 = sub_100035D04(&qword_100343148, &qword_100292500);
      v49 = v84;
      v50 = v80;
      (*(v84 + 32))(v80, v42 + *(v48 + 64), v9);
      sub_100051520(&v87, v86);
      v51 = UUID.uuidString.getter();
      v52 = *(v78 + 80);
      v53 = v88;
      v54 = v79;
      *v79 = v87;
      *(v54 + 16) = v53;
      *(v54 + 32) = v89[0];
      *(v54 + 41) = *(v89 + 9);
      *(v54 + 64) = v51;
      *(v54 + 72) = v55;
      v56 = v76;
      *(v54 + 80) = v47;
      *(v54 + 88) = v56;
      (*(v49 + 16))(v54 + v52, v50, v9);

      PassthroughSubject.send(_:)();
      sub_1000097E8(v54, &qword_10033B4E0, &unk_100278FD0);

      v57 = UUID.uuidString.getter();
      v81 = v9;
      v58 = v57;
      v60 = v59;
      v61 = v88;
      *v7 = v87;
      v7[1] = v61;
      v7[2] = v89[0];
      *(v7 + 41) = *(v89 + 9);
      swift_storeEnumTagMultiPayload();
      v62 = &v5[*(v83 + 48)];
      v63 = v7;
      v64 = &v5[*(v83 + 64)];
      sub_1000E6078(v63, v5, type metadata accessor for ExperienceEvent);
      *v62 = v58;
      *(v62 + 1) = v60;
      *v64 = v77;
      v64[1] = v56;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v5, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v63, type metadata accessor for ExperienceEvent);
      (*(v49 + 8))(v80, v81);
    }
  }

  return result;
}

double sub_1000E0A40(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v102 = a1;
  v95 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v95);
  v97 = &v89 - v7;
  v94 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v94);
  v96 = (&v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for ActivityDisplayContext(0);
  __chkstk_darwin(v9 - 8);
  v100 = (&v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v89 - v12);
  v14 = _s8CardInfoOMa(0);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v98 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v99 = &v89 - v18;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100003078(v19, qword_100342BB8);

  v101 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v93 = v13;
    v24 = v23;
    v92 = swift_slowAlloc();
    v104[0] = v92;
    *v24 = 136315650;
    *(v24 + 4) = sub_100017494(0xD000000000000025, 0x800000010029F460, v104);
    *(v24 + 12) = 2080;
    v105 = 60;
    v106 = 0xE100000000000000;
    v91 = v22;
    v25 = UUID.uuidString.getter();
    sub_10000B584(8, v25, v26);
    v27 = a2;
    v90 = a4;
    v89 = a3;

    v28 = static String._fromSubstring(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);
    a2 = v27;

    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v35._countAndFlagsBits = sub_1000092A0(v33, v34);
    String.append(_:)(v35);

    v36._countAndFlagsBits = 62;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = sub_100017494(v105, v106, v104);

    *(v24 + 14) = v37;
    *(v24 + 22) = 2080;
    *(v24 + 24) = sub_100017494(v89, v90, v104);
    _os_log_impl(&_mh_execute_header, v21, v91, "%s: session=%s, reason=%s", v24, 0x20u);
    swift_arrayDestroy();

    v13 = v93;
  }

  v38 = *(v103 + 48);
  if (!v38)
  {
LABEL_20:
    if (v102)
    {
      v107 = type metadata accessor for NearbySharingInteractionViewServiceContext(0);
      v108 = sub_1000E60E0(&qword_100343118, type metadata accessor for NearbySharingInteractionViewServiceContext, &unk_10028E77C);
      v53 = sub_10000F798(&v105);
      sub_10009249C(v53);
LABEL_36:
      v81 = UUID.uuidString.getter();
      v83 = v82;
      type metadata accessor for HandoffViewServiceHandle();
      swift_allocObject();
      v84 = sub_100227194(v81, v83);
      v104[0] = sub_1002270FC();
      v85 = swift_allocObject();
      v86 = v103;
      swift_weakInit();
      v87 = swift_allocObject();
      *(v87 + 16) = v85;
      *(v87 + 24) = v84;

      sub_100035D04(&qword_100343120, &qword_100278F80);
      sub_10000E244(&qword_100343128, &qword_100343120, &qword_100278F80, &protocol conformance descriptor for AnyPublisher<A, B>);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100227424(&v105);
      sub_10000903C(&v105);
      v88 = v102 & 1;
      *(v86 + 48) = v84;
      *(v86 + 56) = v88;
      goto LABEL_16;
    }

    v54 = *(a2 + 24);
    sub_10006F430(v13);
    if ((v15[6])(v13, 1, v14) == 1)
    {
      sub_1000097E8(v13, &qword_10033F5F0, &qword_1002762C0);
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "### No cardInfo?", v57, 2u);
      }

      v58 = UUID.uuidString.getter();
      v60 = v59;
      v61 = v96;
      *v96 = xmmword_100278BF0;
      *(v61 + 16) = 0x800000010029F440;
      *(v61 + 24) = xmmword_100278C00;
      *(v61 + 40) = xmmword_100278C00;
      *(v61 + 56) = 64;
      swift_storeEnumTagMultiPayload();
      v62 = v97;
      v63 = (v97 + *(v95 + 48));
      v64 = (v97 + *(v95 + 64));
      sub_1000E6078(v61, v97, type metadata accessor for ExperienceEvent);
      *v63 = v58;
      v63[1] = v60;
      *v64 = 0x4964726163206F4ELL;
      v64[1] = 0xEB000000006F666ELL;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v62, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v61, type metadata accessor for ExperienceEvent);
      goto LABEL_16;
    }

    sub_1000E6128(v13, v99, _s8CardInfoOMa);
    v65 = sub_1001F00B0();
    sub_100249BE4(v54, v65, v100);
    swift_unknownObjectRelease();
    v101 = a2;
    v66 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode) + 24);
    v67 = [*(*&v54[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24) proxDeviceState];
    v68 = *(*&v54[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer] + 24);
    if (v68 && *(v68 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
    {
      v69 = *(v68 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 16);

      v70 = v69;

      if (*(*(v68 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) < 2uLL)
      {
        v71 = *(v68 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_32:
        v73 = v98;
        v72 = v99;
        sub_1000E6078(v99, v98, _s8CardInfoOMa);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v74 = sub_1000BDC5C();
        v76 = v75;

        sub_1000E6190(v72, _s8CardInfoOMa);
        if (v76)
        {
          v77 = 0;
        }

        else
        {
          v77 = v74;
        }

        v78 = type metadata accessor for ClassicCardViewServiceContext(0);
        v107 = v78;
        v108 = sub_1000E60E0(&qword_100343130, type metadata accessor for ClassicCardViewServiceContext, &unk_10028A830);
        v79 = sub_10000F798(&v105);
        sub_1000E6128(v100, v79, type metadata accessor for ActivityDisplayContext);
        *(v79 + v78[5]) = v66;
        *(v79 + v78[6]) = v67;
        v80 = (v79 + v78[7]);
        *v80 = v69;
        v80[1] = v71;
        sub_1000E6128(v73, v79 + v78[8], _s8CardInfoOMa);
        *(v79 + v78[9]) = v77;
        goto LABEL_36;
      }
    }

    v71 = 0;
    v69 = 1;
    goto LABEL_32;
  }

  v93 = v15;
  v39 = v14;
  v40 = v13;
  v41 = *(v103 + 56);
  v43 = *(v38 + 24);
  v42 = *(v38 + 32);

  if (v43 == UUID.uuidString.getter() && v42 == v44)
  {

    if ((v41 ^ v102))
    {
LABEL_17:
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v50, v51, "Found stale handle - forcibly dismissing it now", v52, 2u);
      }

      sub_1000E17B8(0, 0x737365732077654ELL, 0xEB000000006E6F69);

      v13 = v40;
      v14 = v39;
      v15 = v93;
      goto LABEL_20;
    }
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45 & 1) == 0 || ((v41 ^ v102))
    {
      goto LABEL_17;
    }
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Handle already presenting - no presentation needed", v48, 2u);
  }

LABEL_16:

  return result;
}

double sub_1000E1744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000E1D7C(a3, v4);
  }

  return result;
}

void sub_1000E17B8(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ViewServiceInput(0);
  __chkstk_darwin(v8);
  v45 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_100003078(v10, qword_100342BB8);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v44 = v8;
    v14 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v49 = v43;
    *v14 = 136315650;
    *(v14 + 4) = sub_100017494(0xD000000000000018, 0x800000010029F420, &v49);
    *(v14 + 12) = 2080;
    if (a1)
    {
      v47 = 60;
      v48 = 0xE100000000000000;
      v15 = UUID.uuidString.getter();
      sub_10000B584(8, v15, v16);
      v46 = a2;
      v41[1] = v11;
      v42 = a3;

      v17 = static String._fromSubstring(_:)();
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);
      a3 = v42;
      a2 = v46;

      v21._countAndFlagsBits = 32;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v24._countAndFlagsBits = sub_1000092A0(v22, v23);
      String.append(_:)(v24);

      v25._countAndFlagsBits = 62;
      v25._object = 0xE100000000000000;
      String.append(_:)(v25);
      v26 = v47;
      v27 = v48;
    }

    else
    {
      v27 = 0xE300000000000000;
      v26 = 7104878;
    }

    v37 = sub_100017494(v26, v27, &v49);

    *(v14 + 14) = v37;
    *(v14 + 22) = 2080;
    *(v14 + 24) = sub_100017494(a2, a3, &v49);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: session=%s, reason=%s", v14, 0x20u);
    swift_arrayDestroy();

    v28 = *(v4 + 48);
    if (!v28)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v28 = *(v3 + 48);
    if (!v28)
    {
LABEL_21:
      v46 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v46, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v46, v38, "### Nothing to dismiss - no viewServiceHandle", v39, 2u);
      }

      v40 = v46;

      return;
    }
  }

  if (a1)
  {
    v46 = a2;
    v30 = *(v28 + 24);
    v29 = *(v28 + 32);

    if (v30 == UUID.uuidString.getter() && v29 == v31)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v47)
    {
      v33 = v45;
      *v45 = v46;
      *(v33 + 8) = a3;
      swift_storeEnumTagMultiPayload();

      sub_1000DC024(v33);

      sub_1000E6190(v33, type metadata accessor for ViewServiceInput);
      return;
    }

    goto LABEL_15;
  }

LABEL_16:
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "### Could not dismiss gracefully: no viewServiceLink - Invalidating handle", v36, 2u);
  }

  sub_100227814();
}

double sub_1000E1D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  __chkstk_darwin(v6);
  v8 = &v36[-v7];
  v9 = type metadata accessor for ExperienceEvent(0);
  __chkstk_darwin(v9);
  v11 = &v36[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100342BB8);

  sub_1000E6048(a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  sub_1000E605C(a2);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v45 = v40;
    *v15 = 136315650;
    v16 = sub_100017494(0xD000000000000024, 0x800000010029F3D0, &v45);
    v38 = v15;
    v39 = v13;
    *(v15 + 4) = v16;
    *(v15 + 12) = 2080;
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v43 = 0xD00000000000001ALL;
    v44 = 0x800000010029F400;
    v17 = *(a1 + 24);
    v18 = *(a1 + 32);

    sub_10000B584(8, v17, v18);
    v41 = v9;
    v42 = a1;
    v37 = v14;

    v19 = static String._fromSubstring(_:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 62;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v24 = sub_100017494(v43, v44, &v45);

    v25 = v38;
    *(v38 + 14) = v24;
    *(v25 + 22) = 2080;
    v26 = sub_1000376F8(a2);
    v28 = sub_100017494(v26, v27, &v45);

    *(v25 + 24) = v28;
    a1 = v42;
    v29 = v39;
    _os_log_impl(&_mh_execute_header, v39, v37, "%s: handle=%s, event=%s", v25, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((a2 - 1) >= 3)
  {
    v30 = *(v3 + 48);
    if (v30)
    {
      if (v30 == a1)
      {
        sub_100227814();
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
      }
    }
  }

  v32 = *(a1 + 24);
  v31 = *(a1 + 32);
  *v11 = a2;
  swift_storeEnumTagMultiPayload();
  v33 = &v8[*(v6 + 48)];
  v34 = &v8[*(v6 + 64)];
  sub_1000E6078(v11, v8, type metadata accessor for ExperienceEvent);
  *v33 = v32;
  v33[1] = v31;
  *v34 = 0xD000000000000011;
  v34[1] = 0x800000010029F3B0;
  sub_1000E6048(a2);

  PassthroughSubject.send(_:)();
  sub_1000097E8(v8, &unk_10034C700, &qword_100273D30);
  sub_1000E6190(v11, type metadata accessor for ExperienceEvent);

  return result;
}

unint64_t sub_1000E2228()
{
  result = qword_100342D68;
  if (!qword_100342D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342D68);
  }

  return result;
}

void sub_1000E227C(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1000E22FC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000E2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v10;
  *(v5 + 48) = a5[2];
  *(v5 + 58) = *(a5 + 42);
  v11 = swift_task_alloc();
  *(v5 + 80) = v11;
  *v11 = v5;
  v11[1] = sub_1000E244C;

  return sub_1000DCC80(a1, a2, a3, a4, v5 + 16);
}

uint64_t sub_1000E244C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000E2540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx) = 0;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask) = 0;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries) = 0;
  v11 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6 + v11, a1, v12);
  v14 = a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy;
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate + 8) = &off_1003049A8;
  swift_unknownObjectWeakAssign();
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100350360);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  else
  {
  }

  (*(v13 + 8))(a1, v12);
  return a6;
}

uint64_t sub_1000E274C(uint64_t a1)
{
  v2 = v1;
  v275 = a1;
  v255 = sub_100035D04(&qword_100342D70, &qword_100278CF0);
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v253 = &v169 - v3;
  v260 = sub_100035D04(&qword_100342D78, &qword_100278CF8);
  v258 = *(v260 - 8);
  __chkstk_darwin(v260);
  v256 = &v169 - v4;
  v261 = sub_100035D04(&qword_100342D80, &qword_100278D00);
  v259 = *(v261 - 8);
  __chkstk_darwin(v261);
  v257 = &v169 - v5;
  v6 = type metadata accessor for Logger();
  v248 = *(v6 - 8);
  __chkstk_darwin(v6);
  v247 = v7;
  v244 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_100035D04(&qword_100342D88, &qword_100278D08);
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v250 = &v169 - v8;
  v241 = sub_100035D04(&qword_100342D90, &qword_100278D10);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v237 = &v169 - v9;
  v242 = sub_100035D04(&qword_100342D98, &qword_100278D18);
  v243 = *(v242 - 8);
  __chkstk_darwin(v242);
  v238 = &v169 - v10;
  v246 = sub_100035D04(&qword_100342DA0, &qword_100278D20);
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v239 = &v169 - v11;
  v232 = sub_100035D04(&qword_100342DA8, &qword_100278D28);
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v228 = &v169 - v12;
  v233 = sub_100035D04(&qword_100342DB0, &qword_100278D30);
  v234 = *(v233 - 8);
  __chkstk_darwin(v233);
  v229 = &v169 - v13;
  v235 = sub_100035D04(&qword_100342DB8, &qword_100278D38);
  v236 = *(v235 - 8);
  __chkstk_darwin(v235);
  v230 = &v169 - v14;
  v221 = sub_100035D04(&qword_100342DC0, &qword_100278D40);
  v220 = *(v221 - 8);
  __chkstk_darwin(v221);
  v219 = &v169 - v15;
  v226 = sub_100035D04(&qword_100342DC8, &qword_100278D48);
  v224 = *(v226 - 8);
  __chkstk_darwin(v226);
  v222 = &v169 - v16;
  v227 = sub_100035D04(&qword_100342DD0, &qword_100278D50);
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v223 = &v169 - v17;
  v212 = sub_100035D04(&qword_100342DD8, &qword_100278D58);
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v209 = &v169 - v18;
  v217 = sub_100035D04(&qword_100342DE0, &qword_100278D60);
  v215 = *(v217 - 8);
  __chkstk_darwin(v217);
  v213 = &v169 - v19;
  v218 = sub_100035D04(&qword_100342DE8, &qword_100278D68);
  v216 = *(v218 - 8);
  __chkstk_darwin(v218);
  v214 = &v169 - v20;
  v203 = sub_100035D04(&qword_100342DF0, &qword_100278D70);
  v202 = *(v203 - 8);
  __chkstk_darwin(v203);
  v201 = &v169 - v21;
  v263 = sub_100035D04(&qword_100342DF8, &qword_100278D78);
  v206 = *(v263 - 1);
  __chkstk_darwin(v263);
  v204 = &v169 - v22;
  v208 = sub_100035D04(&qword_100342E00, &qword_100278D80);
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v205 = &v169 - v23;
  v195 = sub_100035D04(&qword_100342E08, &qword_100278D88);
  v193 = *(v195 - 8);
  __chkstk_darwin(v195);
  v192 = &v169 - v24;
  v188 = sub_100035D04(&qword_100342E10, &qword_100278D90);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v169 - v25;
  v191 = sub_100035D04(&qword_100342E18, &qword_100278D98);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v169 - v26;
  v197 = sub_100035D04(&qword_100342E20, &qword_100278DA0);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v194 = &v169 - v27;
  v200 = sub_100035D04(&qword_100342E28, &qword_100278DA8);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v198 = &v169 - v28;
  v182 = sub_100035D04(&qword_100342E30, &qword_100278DB0);
  v181 = *(v182 - 8);
  __chkstk_darwin(v182);
  v180 = &v169 - v29;
  v185 = sub_100035D04(&qword_100342E38, &qword_100278DB8);
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v169 - v30;
  v176 = sub_100035D04(&qword_100342E40, &qword_100278DC0);
  v175 = *(v176 - 8);
  __chkstk_darwin(v176);
  v174 = &v169 - v31;
  v179 = sub_100035D04(&qword_100342E48, &qword_100278DC8);
  v178 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v169 - v32;
  v271 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v277 = *(v271 - 8);
  __chkstk_darwin(v271);
  v274 = &v169 - v33;
  v273 = sub_100035D04(&qword_100342E50, &qword_100278DD8);
  v170 = *(v273 - 1);
  __chkstk_darwin(v273);
  v169 = &v169 - v34;
  v173 = sub_100035D04(&qword_100342E58, &unk_100278DE0);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v169 - v35;
  v272 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v36 = *(v272 - 1);
  __chkstk_darwin(v272);
  v38 = &v169 - v37;
  sub_100035D04(&qword_100342E60, &unk_100278DF0);
  swift_allocObject();
  v39 = PassthroughSubject.init()();
  *(v1 + 64) = &_swiftEmptySetSingleton;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = v39;
  v276 = v1 + 64;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v249 = v6;
  v210 = sub_100003078(v6, qword_100342BB8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Init", v42, 2u);
  }

  *(v2 + 40) = v275;

  v280 = sub_100140E18();
  v278 = 0;
  v279 = 0;
  v43 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v262 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v44 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v267 = v43;
  v270 = v44;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18, &protocol conformance descriptor for Publishers.Scan<A, B>);
  v45 = v272;
  v46 = Publisher.eraseToAnyPublisher()();

  (*(v36 + 8))(v38, v45);
  v278 = v46;
  v47 = swift_allocObject();
  v268 = v2;
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = sub_1000E5AB4;
  *(v48 + 24) = v47;

  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v269 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v49 = v275;
  v278 = *(v275 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v265 = type metadata accessor for HandoffSession(0);

  v50 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342E68, &qword_100278E00);
  v51 = v169;
  v52 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v53 = *(v277 + 8);
  v277 += 8;
  v264 = v53;
  v53(v50, v52);
  v272 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_100342E70, &qword_100342E50, &qword_100278DD8, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v266 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_100342E78, &qword_100342E68, &qword_100278E00, &protocol conformance descriptor for Publishers.Map<A, B>);
  v54 = v171;
  v55 = v273;
  Publisher<>.switchToLatest()();
  (*(v170 + 8))(v51, v55);
  v56 = swift_allocObject();
  swift_weakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1000E5B14;
  *(v57 + 24) = v56;
  v273 = &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>;
  sub_10000E244(&qword_100342E80, &qword_100342E58, &unk_100278DE0, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v58 = v173;
  Publisher<>.sink(receiveValue:)();

  (*(v172 + 8))(v54, v58);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v59 = v49;
  v60 = v269;
  v278 = *(v59 + v269);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342E88, &qword_100278E08);
  v61 = v174;
  Publishers.CompactMap.map<A>(_:)();
  v264(v50, v52);
  sub_10000E244(&qword_100342E90, &qword_100342E40, &qword_100278DC0, v272);
  sub_10000E244(&qword_100342E98, &qword_100342E88, &qword_100278E08, v266);
  v62 = v177;
  v63 = v176;
  Publisher<>.switchToLatest()();
  (*(v175 + 8))(v61, v63);
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1000E5B74;
  *(v65 + 24) = v64;
  sub_10000E244(&qword_100342EA0, &qword_100342E48, &qword_100278DC8, v273);
  v66 = v179;
  Publisher<>.sink(receiveValue:)();

  (*(v178 + 8))(v62, v66);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v59 + v60);

  v67 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342EA8, &qword_100278E10);
  v68 = v180;
  Publishers.CompactMap.map<A>(_:)();
  v69 = v264;
  v264(v67, v52);
  sub_10000E244(&qword_100342EB0, &qword_100342E30, &qword_100278DB0, v272);
  sub_10000E244(&qword_100342EB8, &qword_100342EA8, &qword_100278E10, v266);
  v70 = v183;
  v71 = v182;
  Publisher<>.switchToLatest()();
  (*(v181 + 8))(v68, v71);
  v72 = swift_allocObject();
  swift_weakInit();
  v73 = swift_allocObject();
  *(v73 + 16) = sub_1000E5BB4;
  *(v73 + 24) = v72;
  sub_10000E244(&qword_100342EC0, &qword_100342E38, &qword_100278DB8, v273);
  v74 = v185;
  Publisher<>.sink(receiveValue:)();

  (*(v184 + 8))(v70, v74);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v275 + v269);

  v75 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342EC8, &qword_100278E18);
  v76 = v186;
  v77 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v69(v75, v77);
  sub_10000E244(&qword_100342ED0, &qword_100342E10, &qword_100278D90, v272);
  v78 = v266;
  sub_10000E244(&qword_100342ED8, &qword_100342EC8, &qword_100278E18, v266);
  v79 = v189;
  v80 = v188;
  Publisher<>.switchToLatest()();
  (*(v187 + 8))(v76, v80);
  v81 = swift_allocObject();
  swift_weakInit();
  v82 = swift_allocObject();
  *(v82 + 16) = sub_1000E5C14;
  *(v82 + 24) = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_1000E6588;
  *(v83 + 24) = v82;

  sub_100035D04(&qword_100342EE0, &qword_100278E20);
  sub_10000E244(&qword_100342EE8, &qword_100342E18, &qword_100278D98, v273);
  v84 = v192;
  v85 = v191;
  Publisher.map<A>(_:)();

  v86 = v78;
  sub_10000E244(&qword_100342EF0, &qword_100342E08, &qword_100278D88, v78);
  v87 = v195;
  v88 = Publisher.eraseToAnyPublisher()();

  (*(v193 + 8))(v84, v87);
  (*(v190 + 8))(v79, v85);
  v278 = v88;
  sub_100035D04(&qword_100342EF8, &qword_100278E28);
  sub_100035D04(&qword_100342F00, &qword_100278E30);
  sub_10000E244(&qword_100342F08, &qword_100342EF8, &qword_100278E28, v262);
  v89 = v194;
  Publisher.compactMap<A>(_:)();

  v90 = v272;
  sub_10000E244(&qword_100342F10, &qword_100342E20, &qword_100278DA0, v272);
  sub_10000E244(&qword_100342F18, &qword_100342F00, &qword_100278E30, v86);
  v91 = v198;
  v92 = v197;
  Publisher<>.switchToLatest()();
  (*(v196 + 8))(v89, v92);
  v93 = swift_allocObject();
  swift_weakInit();
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1000E5CAC;
  *(v94 + 24) = v93;
  v95 = v273;
  sub_10000E244(&qword_100342F20, &qword_100342E28, &qword_100278DA8, v273);
  v96 = v200;
  Publisher<>.sink(receiveValue:)();

  (*(v199 + 8))(v91, v96);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v275 + v269);

  v97 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F28, &qword_100278E38);
  v98 = v201;
  v99 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v100 = v97;
  v101 = v264;
  v264(v100, v99);
  sub_10000E244(&qword_100342F30, &qword_100342DF0, &qword_100278D70, v90);
  sub_10000E244(&qword_100342F38, &qword_100342F28, &qword_100278E38, v266);
  v102 = v204;
  v103 = v203;
  Publisher<>.switchToLatest()();
  (*(v202 + 8))(v98, v103);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F40, &qword_100342DF8, &qword_100278D78, v95);
  v104 = v205;
  v105 = v263;
  Publisher.filter(_:)();

  (*(v206 + 8))(v102, v105);
  v263 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_100342F48, &qword_100342E00, &qword_100278D80, &protocol conformance descriptor for Publishers.Filter<A>);
  v106 = v208;
  Publisher<>.sink(receiveValue:)();
  (*(v207 + 8))(v104, v106);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v107 = v269;
  v108 = v275;
  v278 = *(v275 + v269);

  v109 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F50, &qword_100278E40);
  v110 = v209;
  v111 = v271;
  v112 = v109;
  Publishers.CompactMap.map<A>(_:)();
  v101(v109, v111);
  v113 = v272;
  sub_10000E244(&qword_100342F58, &qword_100342DD8, &qword_100278D58, v272);
  sub_10000E244(&qword_100342F60, &qword_100342F50, &qword_100278E40, v266);
  v114 = v213;
  v115 = v212;
  Publisher<>.switchToLatest()();
  (*(v211 + 8))(v110, v115);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F68, &qword_100342DE0, &qword_100278D60, v273);
  v116 = v214;
  v117 = v217;
  Publisher.filter(_:)();

  (*(v215 + 8))(v114, v117);
  v118 = v263;
  sub_10000E244(&qword_100342F70, &qword_100342DE8, &qword_100278D68, v263);
  v119 = v218;
  Publisher<>.sink(receiveValue:)();
  (*(v216 + 8))(v116, v119);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v108 + v107);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F78, &qword_100278E48);
  v120 = v219;
  v121 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v122 = v112;
  v123 = v121;
  v264(v122, v121);
  sub_10000E244(&qword_100342F80, &qword_100342DC0, &qword_100278D40, v113);
  v124 = v266;
  sub_10000E244(&qword_100342F88, &qword_100342F78, &qword_100278E48, v266);
  v125 = v222;
  v126 = v221;
  Publisher<>.switchToLatest()();
  (*(v220 + 8))(v120, v126);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F90, &qword_100342DC8, &qword_100278D48, v273);
  v127 = v223;
  v128 = v226;
  Publisher.filter(_:)();

  (*(v224 + 8))(v125, v128);
  sub_10000E244(&qword_100342F98, &qword_100342DD0, &qword_100278D50, v118);
  v129 = v227;
  Publisher<>.sink(receiveValue:)();
  (*(v225 + 8))(v127, v129);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v275 + v269);

  v130 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342FA0, &qword_100278E50);
  v131 = v228;
  Publishers.CompactMap.map<A>(_:)();
  v132 = v130;
  v133 = v264;
  v264(v132, v123);
  sub_10000E244(&qword_100342FA8, &qword_100342DA8, &qword_100278D28, v272);
  sub_10000E244(&qword_100342FB0, &qword_100342FA0, &qword_100278E50, v124);
  v134 = v229;
  v135 = v232;
  Publisher<>.switchToLatest()();
  (*(v231 + 8))(v131, v135);
  swift_allocObject();
  swift_weakInit();
  v136 = v273;
  sub_10000E244(&qword_100342FB8, &qword_100342DB0, &qword_100278D30, v273);
  v137 = v230;
  v138 = v233;
  Publisher.filter(_:)();

  (*(v234 + 8))(v134, v138);
  sub_10000E244(&qword_100342FC0, &qword_100342DB8, &qword_100278D38, v263);
  v139 = v235;
  Publisher<>.sink(receiveValue:)();
  (*(v236 + 8))(v137, v139);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v275 + v269);

  v140 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342FC8, &qword_100278E58);
  v141 = v237;
  v142 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v133(v140, v142);
  sub_10000E244(&qword_100342FD0, &qword_100342D90, &qword_100278D10, v272);
  v143 = v266;
  sub_10000E244(&qword_100342FD8, &qword_100342FC8, &qword_100278E58, v266);
  v144 = v238;
  v145 = v241;
  Publisher<>.switchToLatest()();
  (*(v240 + 8))(v141, v145);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342FE0, &qword_100342D98, &qword_100278D18, v136);
  v146 = v239;
  v147 = v242;
  Publisher.filter(_:)();

  (*(v243 + 8))(v144, v147);
  LOBYTE(v93) = static os_log_type_t.info.getter();
  v148 = v248;
  v149 = v244;
  v150 = v249;
  (*(v248 + 16))(v244, v210, v249);
  v151 = (*(v148 + 80) + 64) & ~*(v148 + 80);
  v152 = v151 + v247;
  v153 = swift_allocObject();
  *(v153 + 2) = 0;
  *(v153 + 3) = 0;
  *(v153 + 4) = 0xD000000000000014;
  *(v153 + 5) = 0x800000010029F390;
  *(v153 + 6) = 0;
  *(v153 + 7) = 0xE000000000000000;
  (*(v148 + 32))(&v153[v151], v149, v150);
  v153[v152] = v93;
  sub_100035D04(&qword_100342FE8, &qword_100278E60);
  v154 = v263;
  sub_10000E244(&qword_100342FF0, &qword_100342DA0, &qword_100278D20, v263);
  v155 = v250;
  v156 = v246;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100342FF8, &qword_100342D88, &qword_100278D08, v143);
  v157 = v252;
  v158 = Publisher.eraseToAnyPublisher()();
  (*(v251 + 8))(v155, v157);
  (*(v245 + 8))(v146, v156);
  v278 = v158;
  sub_100035D04(&qword_100343000, &qword_100278E68);
  sub_10000E244(&qword_100343008, &qword_100343000, &qword_100278E68, v262);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v278 = *(v275 + v269);

  v159 = v274;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100343010, &qword_100278E70);
  v160 = v253;
  v161 = v271;
  Publishers.CompactMap.map<A>(_:)();
  v264(v159, v161);
  sub_10000E244(&qword_100343018, &qword_100342D70, &qword_100278CF0, v272);
  sub_10000E244(&qword_100343020, &qword_100343010, &qword_100278E70, v143);
  v162 = v256;
  v163 = v255;
  Publisher<>.switchToLatest()();
  (*(v254 + 8))(v160, v163);
  swift_allocObject();
  v164 = v268;
  swift_weakInit();

  sub_10000E244(&qword_100343028, &qword_100342D78, &qword_100278CF8, v273);
  v165 = v257;
  v166 = v260;
  Publisher.filter(_:)();

  (*(v258 + 8))(v162, v166);
  sub_10000E244(&qword_100343030, &qword_100342D80, &qword_100278D00, v154);
  v167 = v261;
  Publisher<>.sink(receiveValue:)();
  (*(v259 + 8))(v165, v167);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v164;
}

uint64_t sub_1000E5C44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = a1[1];
  v8[0] = *a1;
  v5 = v8[0];
  v8[1] = v6;
  v4(v8);
  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1000E5CB4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100035D04(&qword_1003430B8, &qword_100278F30);
  return v3(a1, *(a1 + *(v4 + 48)));
}

void *sub_1000E5D30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001BF234(*a1, a1[1], a1[2], *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  a2[1] = v7;
  a2[2] = v8;
  return result;
}

uint64_t sub_1000E5DF0(uint64_t a1)
{
  v4 = *(type metadata accessor for ViewServiceInput(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10009D6D4;

  return sub_1000DCE14(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000E5EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E6000@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1000E6034@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = v2;
}

uint64_t sub_1000E6048(uint64_t result)
{
  if ((result - 1) >= 3)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_1000E605C(uint64_t result)
{
  if ((result - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1000E6078(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E60E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E6128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E6190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000E62A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8 >> 14;
  if (v9 == 3)
  {
    sub_1000E6358(result, a2, a3, a4, a5, a6, a7, a8, BYTE1(a8) & 0x3F);
  }

  else if (v9 == 2)
  {

    sub_1000E62F0(result, a2, a3, a4, a5);
  }
}

void sub_1000E62F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 3)
  {

LABEL_4:

    return;
  }

  if (!a5)
  {

    goto LABEL_4;
  }
}

void sub_1000E6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a9 == 2)
  {

    sub_1000E63DC(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (a9 != 1)
    {
      if (a9)
      {
        return;
      }
    }
  }
}

void sub_1000E63DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 != 0xFF)
  {
    sub_1000E63F0(a1, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1000E63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 < 2u)
  {

LABEL_4:

    return;
  }

  if (a8 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_1000E6464(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000E6584;

  return sub_1000E2378(a1, v4, v5, v6, (v1 + 40));
}

unint64_t sub_1000E6530()
{
  result = qword_100343160;
  if (!qword_100343160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343160);
  }

  return result;
}

uint64_t sub_1000E6590()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343168);
  sub_100003078(v0, qword_100343168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E6614()
{
  type metadata accessor for MeDeviceMonitor();
  swift_allocObject();
  result = sub_1000E6650();
  qword_10038B0F8 = result;
  return result;
}

uint64_t sub_1000E6650()
{
  *(v0 + 16) = 2;
  v1 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = v1;
  v2 = qword_1003391E8;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  [v3 setDispatchQueue:qword_10038B5B8];

  [*(v0 + 24) setMeDeviceUseFindMyLocate:1];
  v4 = *(v0 + 24);
  v5 = swift_allocObject();
  swift_weakInit();
  v17 = sub_1000E6CB8;
  v18 = v5;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100306F50;
  v6 = _Block_copy(&v13);
  v7 = v4;

  [v7 setMeDeviceChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = v8;

  v17 = sub_1000E6CDC;
  v18 = v9;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100018AB8;
  v16 = &unk_100306F78;
  v11 = _Block_copy(&v13);

  [v10 activateWithCompletion:v11];
  _Block_release(v11);

  return v0;
}

double sub_1000E68A0(uint64_t a1, const char *a2)
{
  if (qword_100338F50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343168);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000E6A28();
  }

  return result;
}

uint64_t sub_1000E69BC()
{
  [*(v0 + 24) invalidate];

  return swift_deallocClassInstance();
}

void sub_1000E6A28()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if ([v2 meDeviceValid])
  {
    v3 = [v2 meDeviceIsMe];
  }

  else
  {
    v3 = 2;
  }

  if (qword_100338F50 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100343168);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    if (v3 == 2)
    {
      v9 = 0xE300000000000000;
      v10 = 7104878;
    }

    else
    {
      v10 = String.init<A>(describing:)();
      v9 = v11;
    }

    v12 = sub_100017494(v10, v9, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "isLocalDeviceMeDevice updated: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  *(v1 + 16) = v3;
}

unint64_t sub_1000E6BD4()
{
  _StringGuts.grow(_:)(42);

  if (*(v0 + 16) == 2)
  {
    v1 = 0xE300000000000000;
    v2 = 7104878;
  }

  else
  {
    v2 = String.init<A>(describing:)();
    v1 = v3;
  }

  v4 = v1;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0xD000000000000027;
}

uint64_t sub_1000E6D08(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E6D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E6D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000E6DD4(uint64_t a1)
{
  v32 = type metadata accessor for URLQueryItem();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = _swiftEmptyArrayStorage;
  sub_1000CE124(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    URLQueryItem.init(name:value:)();

    v35 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_1000CE124((v16 > 1), v17 + 1, 1);
      v7 = v35;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_100059628(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_100059628(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1000E7120()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343250);
  sub_100003078(v0, qword_100343250);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E719C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v121 = a1;
  v3 = sub_100035D04(&qword_100343270, &qword_100279128);
  __chkstk_darwin(v3 - 8);
  v5 = &v119 - v4;
  v6 = sub_100035D04(&qword_100343278, &unk_100279130);
  __chkstk_darwin(v6 - 8);
  v123 = &v119 - v7;
  v8 = type metadata accessor for URLComponents();
  v124 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v130 = v11;
  v131 = v12;
  __chkstk_darwin(v11);
  v129 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = _swiftEmptyDictionarySingleton;
  if (*(v1 + 16) != 10)
  {
    v14 = sub_10013FCC0();
    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = _swiftEmptyDictionarySingleton;
    sub_10004CE88(v14, v16, 0x6966697373616C43, 0xEE006E6F69746163, isUniquelyReferenced_nonNull_native);
    v134 = v133[0];
  }

  v18 = *(v1 + 8);
  if (v18)
  {
    v19 = *v1;

    sub_1001CF7F0(v19, v18, 0x7470697263736544, 0xEB000000006E6F69);
  }

  v20 = *(v1 + 88);
  if (v20 <= 2)
  {
    v23 = 0xEC00000079725420;
    v24 = 0x74276E6469442049;
    if (v20 != 1)
    {
      v24 = 0x6C70704120746F4ELL;
      v23 = 0xEE00656C62616369;
    }

    if (*(v1 + 88))
    {
      v21 = v24;
    }

    else
    {
      v21 = 0x737961776C41;
    }

    if (*(v1 + 88))
    {
      v22 = v23;
    }

    else
    {
      v22 = 0xE600000000000000;
    }
  }

  else if (*(v1 + 88) > 4u)
  {
    if (v20 != 5)
    {
      goto LABEL_24;
    }

    v22 = 0xE600000000000000;
    v21 = 0x656C62616E55;
  }

  else
  {
    if (v20 == 3)
    {
      v21 = 0x796C65726152;
    }

    else
    {
      v21 = 0x656D6974656D6F53;
    }

    if (v20 == 3)
    {
      v22 = 0xE600000000000000;
    }

    else
    {
      v22 = 0xE900000000000073;
    }
  }

  v25 = v134;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v133[0] = v25;
  sub_10004CE88(v21, v22, 0x6375646F72706552, 0xEF7974696C696269, v26);
  v134 = v133[0];
LABEL_24:
  v126 = v5;
  v122 = v10;
  v27 = v2[13];
  if (v27)
  {
    v28 = v2[12];

    sub_1001CF7F0(v28, v27, 0x656C746954, 0xE500000000000000);
  }

  v125 = v8;
  v29 = v2[4];
  if (v29)
  {
    v30 = v2[8];
    v128 = v2[7];
    v32 = v2[5];
    v31 = v2[6];
    v33 = v2;
    v34 = v2[3];

    v35 = v134;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v35;
    v37 = v34;
    v2 = v33;
    sub_10004CE88(v37, v29, 0x6E656E6F706D6F43, 0xEB00000000444974, v36);
    v38 = v133[0];

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v38;
    sub_10004CE88(v32, v31, 0x6E656E6F706D6F43, 0xED0000656D614E74, v39);
    v40 = v133[0];

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v40;
    sub_10004CE88(v128, v30, 0xD000000000000010, 0x800000010029F6C0, v41);
    v134 = v133[0];
  }

  v42 = v2[10];
  if (v42)
  {
    v43 = *(v42 + 16);
    if (v43)
    {
      if (qword_100338F60 != -1)
      {
        swift_once();
      }

      v120 = v2;
      v44 = type metadata accessor for Logger();
      sub_100003078(v44, qword_100343250);

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v133[0] = v48;
        *v47 = 136315138;
        v49 = Array.description.getter();
        v51 = sub_100017494(v49, v50, v133);

        *(v47 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v45, v46, "Have device IDs %s", v47, 0xCu);
        sub_10000903C(v48);
      }

      v133[0] = _swiftEmptyArrayStorage;
      sub_1000CDF40(0, v43, 0);
      v52 = v133[0];
      v53 = *(v131 + 16);
      v54 = v42 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
      v127 = *(v131 + 72);
      v128 = v53;
      v131 += 16;
      v55 = (v131 - 8);
      do
      {
        v56 = v129;
        v57 = v130;
        v128(v129, v54, v130);
        v58 = UUID.uuidString.getter();
        v60 = v59;
        (*v55)(v56, v57);
        v133[0] = v52;
        v62 = *(v52 + 16);
        v61 = *(v52 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_1000CDF40((v61 > 1), v62 + 1, 1);
          v52 = v133[0];
        }

        *(v52 + 16) = v62 + 1;
        v63 = v52 + 16 * v62;
        *(v63 + 32) = v58;
        *(v63 + 40) = v60;
        v54 += v127;
        --v43;
      }

      while (v43);
      v133[0] = v52;
      sub_100035D04(&qword_1003397D0, &qword_1002729A0);
      sub_10001CAF4();
      v64 = BidirectionalCollection<>.joined(separator:)();
      v66 = v65;

      v67 = v134;
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v133[0] = v67;
      sub_10004CE88(v64, v66, 0x4449656369766544, 0xE900000000000073, v68);
      v134 = v133[0];
      v2 = v120;
    }
  }

  v69 = v2[9];
  v70 = *(v69 + 16);
  v71 = v126;
  if (v70)
  {
    if (qword_100338F60 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_100003078(v72, qword_100343250);
    sub_1000E8EC0(v2, v133);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    sub_1000E8EF8(v2);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v133[0] = v76;
      *v75 = 136315138;
      v77 = Array.description.getter();
      v79 = sub_100017494(v77, v78, v133);

      *(v75 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v73, v74, "Have keywords %s", v75, 0xCu);
      sub_10000903C(v76);
    }

    v133[0] = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v70, 0);
    v80 = v133[0];
    v81 = (v69 + 32);
    v82 = *(v133[0] + 16);
    v83 = 16 * v82;
    v84 = 0x34393339353931;
    do
    {
      if (*v81)
      {
        v85 = 0x34333733343831;
      }

      else
      {
        v85 = v84;
      }

      v133[0] = v80;
      v86 = *(v80 + 24);
      v87 = v82 + 1;
      if (v82 >= v86 >> 1)
      {
        v89 = v84;
        sub_1000CDF40((v86 > 1), v82 + 1, 1);
        v84 = v89;
        v80 = v133[0];
      }

      *(v80 + 16) = v87;
      v88 = v80 + v83;
      *(v88 + 32) = v85;
      *(v88 + 40) = 0xE700000000000000;
      v83 += 16;
      ++v81;
      v82 = v87;
      --v70;
    }

    while (v70);
    v133[0] = v80;
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_10001CAF4();
    v90 = BidirectionalCollection<>.joined(separator:)();
    v92 = v91;

    v93 = v134;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v93;
    sub_10004CE88(v90, v92, 0x7364726F7779654BLL, 0xE800000000000000, v94);
    v134 = v133[0];
    v71 = v126;
  }

  v95 = v123;
  URLComponents.init(string:)();
  v96 = v124;
  v97 = v125;
  if ((*(v124 + 48))(v95, 1, v125) == 1)
  {

    sub_1000097E8(v95, &qword_100343278, &unk_100279130);
    if (qword_100338F60 != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    sub_100003078(v98, qword_100343250);
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v133[0] = v102;
      *v101 = 136315138;
      *(v101 + 4) = sub_100017494(0xD000000000000012, 0x800000010029F6A0, v133);
      _os_log_impl(&_mh_execute_header, v99, v100, "### Failed to create urlComponents with '%s'", v101, 0xCu);
      sub_10000903C(v102);
    }

    sub_1000E8FD8();
    swift_allocError();
    *v103 = 1;
    return swift_willThrow();
  }

  else
  {
    v105 = v122;
    (*(v96 + 32))(v122, v95, v97);

    sub_1000E6DD4(v106);
    swift_bridgeObjectRelease_n();
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v107 = type metadata accessor for URL();
    v108 = *(v107 - 8);
    if ((*(v108 + 48))(v71, 1, v107) == 1)
    {
      sub_1000097E8(v71, &qword_100343270, &qword_100279128);
      if (qword_100338F60 != -1)
      {
        swift_once();
      }

      v109 = type metadata accessor for Logger();
      sub_100003078(v109, qword_100343250);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v132 = v113;
        *v112 = 136315138;
        v114 = v122;
        swift_beginAccess();
        sub_1000E902C(&qword_100343288, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v117 = sub_100017494(v115, v116, &v132);

        *(v112 + 4) = v117;
        _os_log_impl(&_mh_execute_header, v110, v111, "### Failed to create URL with components %s", v112, 0xCu);
        sub_10000903C(v113);
        v97 = v125;
      }

      else
      {

        v114 = v122;
      }

      sub_1000E8FD8();
      swift_allocError();
      *v118 = 0;
      swift_willThrow();
      return (*(v124 + 8))(v114, v97);
    }

    else
    {
      (*(v108 + 32))(v121, v71, v107);
      return (*(v96 + 8))(v105, v97);
    }
  }
}

id sub_1000E8064(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v63 = a2;
  v64 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v56 - v11;
  v61 = v13;
  __chkstk_darwin(v10);
  v15 = &v56 - v14;
  if (qword_100338F60 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003078(v16, qword_100343250);
  sub_1000E8EC0(v5, aBlock);
  v66 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  sub_1000E8EF8(v5);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v60 = v6;
    v21 = v20;
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v21 = 136315138;
    v22 = sub_1000E8608();
    v24 = sub_100017494(v22, v23, aBlock);
    LODWORD(v58) = v19;
    v25 = v15;
    v26 = v12;
    v27 = v7;
    v28 = v24;

    *(v21 + 4) = v28;
    v7 = v27;
    v12 = v26;
    v15 = v25;
    v4 = v3;
    _os_log_impl(&_mh_execute_header, v18, v58, "Triggering %s", v21, 0xCu);
    sub_10000903C(v59);

    v6 = v60;
  }

  result = sub_1000E719C(v15);
  if (!v4)
  {
    v60 = 0;
    v30 = v7[2];
    v30(v12, v15, v6);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v58 = v15;
      v34 = v33;
      v35 = swift_slowAlloc();
      v59 = v7;
      v36 = v6;
      v37 = v35;
      aBlock[0] = v35;
      *v34 = 136315138;
      sub_1000E902C(&qword_100343268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v30;
      v39 = v38;
      v41 = v40;
      v66 = v59[1];
      v66(v12, v36);
      v42 = sub_100017494(v39, v41, aBlock);

      *(v34 + 4) = v42;
      v30 = v57;
      _os_log_impl(&_mh_execute_header, v31, v32, "Triggering with URL %s", v34, 0xCu);
      sub_10000903C(v37);
      v6 = v36;
      v7 = v59;

      v15 = v58;
    }

    else
    {

      v66 = v7[1];
      v66(v12, v6);
    }

    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v44 = result;
      URL._bridgeToObjectiveC()(v43);
      v46 = v45;
      v47 = v62;
      v30(v62, v15, v6);
      v48 = v15;
      v49 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v50 = (v61 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      (v7[4])(v51 + v49, v47, v6);
      v52 = (v51 + v50);
      v54 = v63;
      v53 = v64;
      *v52 = v64;
      v52[1] = v54;
      aBlock[4] = sub_1000E8F28;
      aBlock[5] = v51;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000E8DA0;
      aBlock[3] = &unk_100307060;
      v55 = _Block_copy(aBlock);
      sub_10009D4E0(v53, v54);

      [v44 openURL:v46 configuration:0 completionHandler:v55];
      _Block_release(v55);

      return (v66)(v48, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000E8608()
{
  v1 = v0;
  v48 = *(v0 + 96);
  v2 = *(&v48 + 1);
  if (*(&v48 + 1))
  {
    v3 = v48;
    sub_1000E8E50(&v48, &v46);
    sub_10000B584(24, v3, v2);
    sub_1000097E8(&v48, &qword_10033A238, &qword_10027D3E0);
  }

  else
  {
    Substring.init(_:)();
  }

  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10026F050;
  v46 = 0x726F706552677542;
  v47 = 0xEB00000000203A74;
  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9 = v47;
  *(v4 + 32) = v46;
  *(v4 + 40) = v9;
  v10 = *(v1 + 32);
  if (v10)
  {
    v12 = *(v1 + 40);
    v11 = *(v1 + 48);
    v13 = *(v1 + 24);
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(25);

    v46 = 0xD000000000000010;
    v47 = 0x800000010029F650;
    v14._countAndFlagsBits = v12;
    v14._object = v11;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0x3D6469202CLL;
    v15._object = 0xE500000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v13;
    v16._object = v10;
    String.append(_:)(v16);
    v17 = v46;
    v18 = v47;
    v20 = *(v4 + 16);
    v19 = *(v4 + 24);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_100009088((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 16) = v20 + 1;
    v21 = v4 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
  }

  if (*(v1 + 16) != 10)
  {
    v22 = sub_10013FCC0();
    v25 = *(v4 + 16);
    v24 = *(v4 + 24);
    if (v25 >= v24 >> 1)
    {
      v43 = v22;
      v44 = v23;
      v45 = sub_100009088((v24 > 1), v25 + 1, 1, v4);
      v23 = v44;
      v4 = v45;
      v22 = v43;
    }

    *(v4 + 16) = v25 + 1;
    v26 = v4 + 16 * v25;
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
  }

  v27 = *(v1 + 88);
  if (v27 <= 2)
  {
    if (*(v1 + 88))
    {
      if (v27 == 1)
      {
        v28 = 0xEC00000079725420;
        v29 = 0x74276E6469442049;
      }

      else
      {
        v28 = 0xEE00656C62616369;
        v29 = 0x6C70704120746F4ELL;
      }
    }

    else
    {
      v28 = 0xE600000000000000;
      v29 = 0x737961776C41;
    }
  }

  else if (*(v1 + 88) > 4u)
  {
    if (v27 != 5)
    {
      goto LABEL_27;
    }

    v28 = 0xE600000000000000;
    v29 = 0x656C62616E55;
  }

  else if (v27 == 3)
  {
    v28 = 0xE600000000000000;
    v29 = 0x796C65726152;
  }

  else
  {
    v28 = 0xE900000000000073;
    v29 = 0x656D6974656D6F53;
  }

  v31 = *(v4 + 16);
  v30 = *(v4 + 24);
  if (v31 >= v30 >> 1)
  {
    v4 = sub_100009088((v30 > 1), v31 + 1, 1, v4);
  }

  *(v4 + 16) = v31 + 1;
  v32 = v4 + 16 * v31;
  *(v32 + 32) = v29;
  *(v32 + 40) = v28;
LABEL_27:
  v33 = *(v1 + 80);
  if (v33 && *(v33 + 16))
  {
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v34;
    v35._countAndFlagsBits = 0x2865636976656420;
    v35._object = 0xEA00000000002973;
    String.append(_:)(v35);
    v36 = v46;
    v37 = v47;
    v39 = *(v4 + 16);
    v38 = *(v4 + 24);
    if (v39 >= v38 >> 1)
    {
      v4 = sub_100009088((v38 > 1), v39 + 1, 1, v4);
    }

    *(v4 + 16) = v39 + 1;
    v40 = v4 + 16 * v39;
    *(v40 + 32) = v36;
    *(v40 + 40) = v37;
  }

  v46 = v4;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v41 = BidirectionalCollection<>.joined(separator:)();

  return v41;
}