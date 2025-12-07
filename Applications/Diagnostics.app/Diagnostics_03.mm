uint64_t sub_100072CF8()
{
  *(v0 + 48), v1, v2, v3, v4, v5, v6, v7;
  sub_10003C52C(*(v0 + 56), *(v0 + 64));
  *(v0 + 72), v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for CardState.Phase(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CardState.Phase(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100072ED0()
{
  result = qword_1001FE680;
  if (!qword_1001FE680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE680);
  }

  return result;
}

unint64_t sub_100072F28()
{
  result = qword_1001FE688;
  if (!qword_1001FE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE688);
  }

  return result;
}

unint64_t sub_100072F80()
{
  result = qword_1001FE690;
  if (!qword_1001FE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE690);
  }

  return result;
}

unint64_t sub_100072FD8()
{
  result = qword_1001FE698;
  if (!qword_1001FE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE698);
  }

  return result;
}

unint64_t sub_100073030()
{
  result = qword_1001FE6A0;
  if (!qword_1001FE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6A0);
  }

  return result;
}

Swift::Int sub_1000730A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = [*(v1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

void sub_100073130(uint64_t a1)
{
  v2 = [*(*v1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  String.hash(into:)();

  v4, v5, v6, v7, v8, v9, v10, v11;
}

Swift::Int sub_1000731AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = [*(*v1 + 40) serialNumber];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

uint64_t sub_100073230(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 40) serialNumber];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = [*(v2 + 40) serialNumber];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6, v11, v12, v13, v14, v15, v16, v17;
  v10, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_100073348(uint64_t a1)
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

void sub_100073380(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 attributes];
  sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v8 + 16))
  {
    v10, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_8;
  }

  v17 = v10;
  sub_100064AFC(v9, v10);
  v19 = v18;
  v17, v18, v20, v21, v22, v23, v24, v25;
  if ((v19 & 1) == 0)
  {
LABEL_8:
    v8, v26, v27, v28, v29, v30, v31, v32;
    goto LABEL_9;
  }

  swift_unknownObjectRetain();
  v8, v33, v34, v35, v36, v37, v38, v39;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v40 = 0;
    goto LABEL_10;
  }

  v40 = v102;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == aBlock && v41 == v102)
  {
    v41, v41, v42, v43, v44, v45, v46, v47;
LABEL_14:
    sub_1000721D0();
    v82 = v81;
    v83 = String._bridgeToObjectiveC()();
    v82, v84, v85, v86, v87, v88, v89, v90;
    v91 = [objc_opt_self() imageNamed:v83];

    v92 = [objc_allocWithZone(UIImageView) initWithImage:v91];
    v93 = *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView];
    *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = v92;
    v63.super.isa = v92;

    sub_10003F77C();

    v40, v94, v95, v96, v97, v98, v99, v100;
    goto LABEL_12;
  }

  v72 = v41;
  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v72, v74, v75, v76, v77, v78, v79, v80;
  if (v73)
  {
    goto LABEL_14;
  }

LABEL_10:
  v48 = String._bridgeToObjectiveC()();
  v49 = [objc_opt_self() imageNamed:v48];

  if (v49)
  {
    v40, v50, v51, v52, v53, v54, v55, v56;
    v57 = [objc_allocWithZone(UIImageView) initWithImage:v49];

    v58 = *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView];
    *&v6[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = v57;
    v59 = v57;

    sub_10003F77C();
    v60 = [objc_opt_self() sharedInstance];
    v61 = [v5 attributes];
    v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v63.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v62, v64, v65, v66, v67, v68, v69, v70;
    v105 = sub_1000737D8;
    v106 = v4;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_100072168;
    v104 = &unk_1001C1470;
    v71 = _Block_copy(&aBlock);

    [v60 deviceImageViewForDeviceStateAttributes:v63.super.isa completion:v71];
    _Block_release(v71);

LABEL_12:
    return;
  }

  __break(1u);
}

uint64_t sub_1000737A0()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000737E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000737F8(uint64_t a1)
{
  *(v1 + 16) = 65792;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = &_swiftEmptySetSingleton;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  v2 = *(a1 + 40);
  *(v1 + 40) = v2;
  *(v1 + 48) = *(a1 + 48);
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 17) = *(a1 + 17);
  *(v1 + 18) = *(a1 + 18);
  *(v1 + 19) = *(a1 + 19);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 24) = *(a1 + 24);
  v5 = objc_opt_self();
  v6 = v2;

  sub_10003E418(v3, v4);
  v7 = [v5 defaultCenter];
  v8 = *(v1 + 40);
  v9 = objc_opt_self();
  v10 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v11 = v8;
  v12 = [v9 mainQueue];
  v16[4] = sub_1000739FC;
  v17 = v1;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100060B2C;
  v16[3] = &unk_1001C1498;
  v13 = _Block_copy(v16);

  v14 = [v7 addObserverForName:v10 object:v11 queue:v12 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  return v1;
}

void sub_100073A18(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v5 = byte_1001FE420;
  byte_1001FE420 = 1;
  sub_100075750(a1, a2, a3, a4, a5);
  v6 = byte_1001FE420;
  byte_1001FE420 = v5;
  if ((v5 & 1) == 0 && v6)
  {
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v7 = qword_1001FE430;
    v9[4] = sub_1000717BC;
    v9[5] = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100060C48;
    v9[3] = &unk_1001C14C0;
    v8 = _Block_copy(v9);

    dispatch_sync(v7, v8);
    _Block_release(v8);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }
  }
}

uint64_t sub_100073B40(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FE6C0, &unk_100180660);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100073BC0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100073C08(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 65792;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = &_swiftEmptySetSingleton;
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 40) = a1;
  sub_10003C49C(&qword_1001FE6C8, &qword_100180670);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017EC00;
  v5 = a1;
  v6 = [v5 serialNumber];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v10 = [v5 attributes];
  sub_10003C49C(&unk_1001FD010, &unk_10017EED0);
  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v11 + 16))
  {
    v13, v13, v14, v15, v16, v17, v18, v19;
    goto LABEL_11;
  }

  v20 = v13;
  sub_100064AFC(v12, v13);
  v22 = v21;
  v20, v21, v23, v24, v25, v26, v27, v28;
  if ((v22 & 1) == 0)
  {
LABEL_11:
    v11, v29, v30, v31, v32, v33, v34, v35;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  v11, v36, v37, v38, v39, v40, v41, v42;
  if (swift_dynamicCast())
  {
    if (aBlock == 0x656E6F685069 && v114 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v114, v43, v44, v45, v46, v47, v48, v49;
      v55 = *(v4 + 16);
      v54 = *(v4 + 24);
      if (v55 >= v54 >> 1)
      {
        v4 = sub_1000D4FD8((v54 > 1), v55 + 1, 1, v4, v50, v51, v52, v53);
      }

      *(v4 + 16) = v55 + 1;
      v56 = v4 + 16 * v55;
      *(v56 + 32) = 0;
      *(v56 + 40) = 0;
    }

    else
    {
      if (aBlock == 1684099177 && v114 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v114, v43, v44, v45, v46, v47, v48, v49;
        v70 = *(v4 + 16);
        v69 = *(v4 + 24);
        if (v70 >= v69 >> 1)
        {
          v4 = sub_1000D4FD8((v69 > 1), v70 + 1, 1, v4, v65, v66, v67, v68);
        }

        *(v4 + 16) = v70 + 1;
        v71 = v4 + 16 * v70;
        v72 = xmmword_100180300;
      }

      else if (aBlock == 0x756F7420646F5069 && v114 == 0xEA00000000006863 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v114, v43, v44, v45, v46, v47, v48, v49;
        v78 = *(v4 + 16);
        v77 = *(v4 + 24);
        if (v78 >= v77 >> 1)
        {
          v4 = sub_1000D4FD8((v77 > 1), v78 + 1, 1, v4, v73, v74, v75, v76);
        }

        *(v4 + 16) = v78 + 1;
        v71 = v4 + 16 * v78;
        v72 = xmmword_1001802F0;
      }

      else if (aBlock == 0x565420656C707041 && v114 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v114, v43, v44, v45, v46, v47, v48, v49;
        v84 = *(v4 + 16);
        v83 = *(v4 + 24);
        if (v84 >= v83 >> 1)
        {
          v4 = sub_1000D4FD8((v83 > 1), v84 + 1, 1, v4, v79, v80, v81, v82);
        }

        *(v4 + 16) = v84 + 1;
        v71 = v4 + 16 * v84;
        v72 = xmmword_1001802E0;
      }

      else
      {
        v85 = 0xEB00000000686374;
        if (aBlock == 0x615720656C707041 && v114 == 0xEB00000000686374 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v114, v85, v44, v45, v46, v47, v48, v49;
          v91 = *(v4 + 16);
          v90 = *(v4 + 24);
          if (v91 >= v90 >> 1)
          {
            v4 = sub_1000D4FD8((v90 > 1), v91 + 1, 1, v4, v86, v87, v88, v89);
          }

          *(v4 + 16) = v91 + 1;
          v71 = v4 + 16 * v91;
          v72 = xmmword_1001802D0;
        }

        else
        {
          v92 = 0xEB00000000736569;
          if (aBlock == 0x726F737365636341 && v114 == 0xEB00000000736569 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v114, v92, v44, v45, v46, v47, v48, v49;
            v98 = *(v4 + 16);
            v97 = *(v4 + 24);
            if (v98 >= v97 >> 1)
            {
              v4 = sub_1000D4FD8((v97 > 1), v98 + 1, 1, v4, v93, v94, v95, v96);
            }

            *(v4 + 16) = v98 + 1;
            v71 = v4 + 16 * v98;
            v72 = xmmword_1001802C0;
          }

          else
          {
            if (aBlock == 0x73646F70726941 && v114 == 0xE700000000000000)
            {
              0xE700000000000000, v92, v44, v45, v46, v47, v48, v49;
            }

            else
            {
              v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v114, v104, v105, v106, v107, v108, v109, v110;
              if ((v103 & 1) == 0)
              {
                goto LABEL_12;
              }
            }

            v112 = *(v4 + 16);
            v111 = *(v4 + 24);
            if (v112 >= v111 >> 1)
            {
              v4 = sub_1000D4FD8((v111 > 1), v112 + 1, 1, v4, v99, v100, v101, v102);
            }

            *(v4 + 16) = v112 + 1;
            v71 = v4 + 16 * v112;
            v72 = xmmword_1001802B0;
          }
        }
      }

      *(v71 + 32) = v72;
    }
  }

LABEL_12:
  *(v2 + 48) = v4;
  v57 = [objc_opt_self() defaultCenter];
  v58 = objc_opt_self();
  v59 = v5;
  v60 = @"com.apple.Diagnostics.deviceStateChangedNotification";
  v61 = [v58 mainQueue];
  v117 = sub_1000743A0;
  v118 = v2;
  aBlock = _NSConcreteStackBlock;
  v114 = 1107296256;
  v115 = sub_100060B2C;
  v116 = &unk_1001C1538;
  v62 = _Block_copy(&aBlock);

  v63 = [v57 addObserverForName:v60 object:v59 queue:v61 usingBlock:v62];
  _Block_release(v62);
  swift_unknownObjectRelease();

  sub_10007230C([v59 phase]);
  return v2;
}

uint64_t sub_1000742DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100074324(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1000743A4(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_10007449C(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    if (!__OFADD__(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10), v9))
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v9))
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_10003E4D0();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  v12 = sub_1000C95CC(&v34, (v3 + 8 * v10 + 32), v11, v8);
  if (v12 < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v12 >= 1)
  {
    v13 = *(v3 + 16);
    v14 = __OFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v15;
  }

  if (v12 != v11)
  {
LABEL_11:
    sub_10004A320(v34);
    *v7 = v2;
    return;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_10003E110(0, &qword_100202990, NSError_ptr);
    swift_dynamicCast();
    v17 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v18 = (v36 + 64) >> 6;
    if (v18 <= v37 + 1)
    {
      v19 = v37 + 1;
    }

    else
    {
      v19 = (v36 + 64) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v16 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v16 >= v18)
      {
        v17 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v16);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = v37;
LABEL_29:
  v21 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v17 = *(*(v34 + 48) + ((v16 << 9) | (8 * v21)));
  v22 = v17;
  v20 = v16;
LABEL_30:
  v37 = v20;
  v38 = v6;
  v8 = v20;
LABEL_31:
  if (!v17)
  {
    goto LABEL_11;
  }

  v23 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v24 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v24)
  {
    v24 = v4;
  }

  v32 = v24;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v17;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_10003E110(0, &qword_100202990, NSError_ptr);
        swift_dynamicCast();
        v17 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v25 = v8;
LABEL_54:
    v28 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(v3 + 48) + ((v25 << 9) | (8 * v28)));
    v29 = v17;
    v27 = v25;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v27;
    v8 = v27;
    v38 = v6;
    if (!v17)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v23 <= v8 + 1)
  {
    v26 = v8 + 1;
  }

  else
  {
    v26 = (v31 + 64) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v17 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v25);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_100074850(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  v10 = a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v12 = v11;
  v10, v13, v11, v14, v15, v16, v17, v18;
  if (v12 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v19 = *(v9 + 16);
  v20 = __OFADD__(v19, v12);
  v21 = v19 + v12;
  if (!v20)
  {
    *(v9 + 16) = v21;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

uint64_t static NSLayoutConstraint.idiomaticCondtional(idioms:condition:fallback:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  v7 = [objc_opt_self() currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (sub_1000743A4(v8, a1))
  {
    return a2();
  }

  else
  {
    return a4();
  }
}

void static NSLayoutConstraint.activate(_:conditionalIdioms:condition:fallback:)(DARootViewController *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (sub_1000743A4(v10, a2))
  {
    v11 = a3();
  }

  else
  {
    v11 = a5();
  }

  v12 = v11;
  v13 = objc_opt_self();

  sub_100074850(v12, sub_10003E4D0, sub_1000658F4);
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  a1, v14, v15, v16, v17, v18, v19, v20;
  [v13 activateConstraints:isa];
}

uint64_t sub_100074B5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_100074BFC();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

unint64_t sub_100074BFC()
{
  result = qword_1001FE6D0;
  if (!qword_1001FE6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6D0);
  }

  return result;
}

uint64_t sub_100074C60(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 1802658148;
  }

  else
  {
    v9 = 0x746867696CLL;
  }

  if (v8)
  {
    v10 = 0xE500000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (*a2)
  {
    v11 = 1802658148;
  }

  else
  {
    v11 = 0x746867696CLL;
  }

  if (*a2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

Swift::Int sub_100074CFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  String.hash(into:)();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return Hasher._finalize()();
}

void sub_100074D74(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_100074DD8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

void sub_100074E4C(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001BDB58, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_100074EAC(uint64_t *a1@<X8>)
{
  v2 = 1802658148;
  if (!*v1)
  {
    v2 = 0x746867696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100074EE4()
{
  result = qword_1001FE6D8;
  if (!qword_1001FE6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6D8);
  }

  return result;
}

void sub_100074F38()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v0 navigationBar];
    v3 = [objc_allocWithZone(UIImage) init];
    [v2 setBackgroundImage:v3 forBarMetrics:0];

    v4 = [v1 navigationBar];
    v5 = [objc_allocWithZone(UIImage) init];
    [v4 setShadowImage:v5];

    v6 = [v1 navigationBar];
    [v6 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EBF0;
  v8 = objc_allocWithZone(type metadata accessor for DiagnosticsCompletedViewController());
  *(v7 + 32) = sub_100131200();
  sub_100045CC4();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7, v10, v11, v12, v13, v14, v15, v16;
  [v1 setViewControllers:isa];
}

id sub_1000752F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DiagnosticsCompletedNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100075364(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v19 = *v6;
      v8 = *(&v19 + 1);
      v9 = v19;
      sub_100078568(v19, *(&v19 + 1));
      v10 = a1(&v19);
      sub_1000784F0(v9, v8, v11, v12, v13, v14, v15, v16);
      if (v3)
      {
        break;
      }

      v17 = v7-- == 0;
      ++v6;
    }

    while (((v10 | v17) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_100075428(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_100075550(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000755F8()
{
  type metadata accessor for CardFilterUpdateManager();
  result = swift_allocObject();
  *(result + 16) = &_swiftEmptySetSingleton;
  *(result + 24) = &_swiftEmptySetSingleton;
  *(result + 32) = 1;
  qword_10020A3A8 = result;
  return result;
}

uint64_t sub_100075638(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 16);
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  return swift_deallocClassInstance();
}

__n128 sub_1000756A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000756B8(uint64_t *a1, int a2)
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

uint64_t sub_100075700(uint64_t result, int a2, int a3)
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

void sub_100075750(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v317 = a1;
  v318 = a5;
  v324 = a4;
  v321 = a3;
  v314 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CardState();
    sub_100077FF4();
    Set.Iterator.init(_cocoa:)();
    v6 = v333;
    v7 = v334;
    v8 = v335;
    v9 = v336;
    v10 = v337;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = (v13 & *(a1 + 56));
    v9 = 0;
  }

  v325 = 0;
  v315 = v8;
  v14 = (v8 + 64) >> 6;
  v320 = &v328;
  p_opt_class_meths = 0x1001FE000;
  v319 = xmmword_10017EC00;
  v316 = xmmword_1001802D0;
  v322 = a2;
  v323 = v6;
  while ((v6 & 0x8000000000000000) == 0)
  {
    v16 = v9;
    v17 = v10;
    if (!v10)
    {
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v14)
        {
          goto LABEL_183;
        }

        v17 = *(v7 + 8 * v9);
        ++v16;
        if (v17)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
      goto LABEL_275;
    }

LABEL_16:
    v326 = ((v17 - 1) & v17);
    v6 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v6)
    {
      goto LABEL_238;
    }

LABEL_20:
    if ((v324 & 1) == 0)
    {
      if (*(a2 + 16) || *(v321 + 16))
      {
        v41 = *(v6 + 48);

        v42 = v321;

        v43 = *(sub_100078084(v41, v42) + 16);

        if (v43)
        {
          v327 = v316;
          __chkstk_darwin(v44);
          v313 = &v327;
          v52 = v325;
          v54 = sub_100075364(sub_100078638, v312, v53);
          v325 = v52;
          if (v54)
          {

            v55 = v318;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v54 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          v56 = *(v6 + 16);
          *(v6 + 16) = 1;
          if ((v56 & 1) == 0)
          {
            v57 = *(v6 + 80);
            if ((v57 & 1) == 0)
            {
              *(v6 + 80) = v57 | 1;
            }

            sub_1000724B4(v54);
          }

          goto LABEL_70;
        }

        v60 = *(v6 + 16);
        *(v6 + 16) = 0;
        if (v60 != 1)
        {
          goto LABEL_70;
        }

        v61 = *(v6 + 80);
        if ((v61 & 1) == 0)
        {
          *(v6 + 80) = v61 | 1;
        }

        if ((*(v6 + 88) & 1) == 0)
        {
          if (*(p_opt_class_meths + 1056))
          {
LABEL_67:
            if (qword_1001FC700 != -1)
            {
              swift_once();
            }

            v77 = qword_1001FE430;
            v78 = swift_allocObject();
            *(v78 + 16) = sub_100074384;
            *(v78 + 24) = v6;
            v330 = sub_10003E41C;
            v331 = v78;
            *&v327 = _NSConcreteStackBlock;
            *(&v327 + 1) = 1107296256;
            v328 = sub_100060C48;
            v329 = &unk_1001C18B0;
            v10 = _Block_copy(&v327);

            dispatch_sync(v77, v10);
            _Block_release(v10);
            LOBYTE(v77) = swift_isEscapingClosureAtFileLocation();

            a2 = v322;
            if (v77)
            {
              goto LABEL_287;
            }

LABEL_70:
            if (*(v6 + 16) == 1)
            {
              a2, v45, v46, v47, v48, v49, v50, v51;
            }

            else
            {
              v79 = *(sub_100078084(*(v6 + 48), a2) + 16);

              if (!v79)
              {
                v139 = *(v6 + 18);
                *(v6 + 18) = 0;
                if (v139 == 1)
                {
                  v140 = *(v6 + 80);
                  if ((v140 & 2) == 0)
                  {
                    *(v6 + 80) = v140 | 2;
                  }

                  sub_1000724B4(v18);
                }

                goto LABEL_131;
              }
            }

            v80 = *(v6 + 18);
            *(v6 + 18) = 1;
            if (v80)
            {
              goto LABEL_131;
            }

            v81 = *(v6 + 80);
            if ((v81 & 2) == 0)
            {
              *(v6 + 80) = v81 | 2;
            }

            if ((*(v6 + 88) & 1) == 0)
            {
              if (*(p_opt_class_meths + 1056))
              {
LABEL_83:
                if (qword_1001FC700 != -1)
                {
                  swift_once();
                }

                v97 = qword_1001FE430;
                v98 = swift_allocObject();
                *(v98 + 16) = sub_100074384;
                *(v98 + 24) = v6;
                v330 = sub_10003E41C;
                v331 = v98;
                *&v327 = _NSConcreteStackBlock;
                *(&v327 + 1) = 1107296256;
                v328 = sub_100060C48;
                v329 = &unk_1001C1860;
                v10 = _Block_copy(&v327);

                dispatch_sync(v97, v10);
                _Block_release(v10);
                LOBYTE(v97) = swift_isEscapingClosureAtFileLocation();

                a2 = v322;
                if (v97)
                {
                  goto LABEL_282;
                }

LABEL_131:
                if (*(v6 + 16) & 1) != 0 || (*(v6 + 18))
                {
                  v141 = *(v6 + 17);
                  *(v6 + 17) = 0;
                  if (v141 != 1)
                  {
                    goto LABEL_9;
                  }
                }

                else
                {
                  v142 = *(v6 + 17);
                  *(v6 + 17) = 1;
                  if (v142)
                  {
                    goto LABEL_9;
                  }
                }

LABEL_181:
                v217 = *(v6 + 80);
                if ((v217 & 4) == 0)
                {
                  *(v6 + 80) = v217 | 4;
                }

                sub_1000724B4(v18);
                goto LABEL_9;
              }

              type metadata accessor for CardState();
              swift_allocObject();

              v83 = sub_1000737F8(v82);

              v84 = *(v6 + 80);
              *(v6 + 80) = 0;
              v85 = [objc_opt_self() defaultCenter];
              if (qword_1001FC6F0 != -1)
              {
                swift_once();
              }

              v86 = qword_10020A3A0;
              sub_10003C49C(&qword_1002018D0, &qword_100180840);
              v87 = swift_allocObject();
              *(v87 + 16) = v319;
              strcpy(&v327, "changeInfoKey");
              HIWORD(v327) = -4864;
              AnyHashable.init<A>(_:)();
              *(v87 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
              *(v87 + 72) = v83;
              *(v87 + 80) = v84;

              v88 = sub_1000D57AC(v87);
              swift_setDeallocating();
              sub_100073B40(v87 + 32);
              swift_deallocClassInstance();
              isa = Dictionary._bridgeToObjectiveC()().super.isa;
              v88, v90, v91, v92, v93, v94, v95, v96;
              [v85 postNotificationName:v86 object:v6 userInfo:isa];

              p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
              a2 = v322;
            }

            if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
            {
              goto LABEL_131;
            }

            goto LABEL_83;
          }

          type metadata accessor for CardState();
          swift_allocObject();

          v63 = sub_1000737F8(v62);

          v64 = *(v6 + 80);
          *(v6 + 80) = 0;
          v65 = [objc_opt_self() defaultCenter];
          if (qword_1001FC6F0 != -1)
          {
            swift_once();
          }

          v66 = qword_10020A3A0;
          sub_10003C49C(&qword_1002018D0, &qword_100180840);
          v67 = swift_allocObject();
          *(v67 + 16) = v319;
          strcpy(&v327, "changeInfoKey");
          HIWORD(v327) = -4864;
          AnyHashable.init<A>(_:)();
          *(v67 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
          *(v67 + 72) = v63;
          *(v67 + 80) = v64;

          v68 = sub_1000D57AC(v67);
          swift_setDeallocating();
          sub_100073B40(v67 + 32);
          swift_deallocClassInstance();
          v69 = Dictionary._bridgeToObjectiveC()().super.isa;
          v68, v70, v71, v72, v73, v74, v75, v76;
          [v65 postNotificationName:v66 object:v6 userInfo:v69];

          p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
          a2 = v322;
        }

        if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
        {
          goto LABEL_70;
        }

        goto LABEL_67;
      }

      v143 = *(v6 + 16);
      *(v6 + 16) = 0;
      if (v143 != 1)
      {
LABEL_150:
        v162 = *(v6 + 18);
        *(v6 + 18) = 1;
        if (v162)
        {
          goto LABEL_180;
        }

        v163 = *(v6 + 80);
        if ((v163 & 2) == 0)
        {
          *(v6 + 80) = v163 | 2;
        }

        if (*(v6 + 88))
        {
          if (!*(p_opt_class_meths + 1056))
          {
            goto LABEL_180;
          }
        }

        else
        {
          if (*(p_opt_class_meths + 1056))
          {
LABEL_177:
            if (qword_1001FC700 != -1)
            {
              swift_once();
            }

            v214 = qword_1001FE430;
            v215 = swift_allocObject();
            *(v215 + 16) = sub_100074384;
            *(v215 + 24) = v6;
            v330 = sub_10003E41C;
            v331 = v215;
            *&v327 = _NSConcreteStackBlock;
            *(&v327 + 1) = 1107296256;
            v328 = sub_100060C48;
            v329 = &unk_1001C1900;
            v10 = _Block_copy(&v327);

            dispatch_sync(v214, v10);
            _Block_release(v10);
            LOBYTE(v214) = swift_isEscapingClosureAtFileLocation();

            a2 = v322;
            if (v214)
            {
              goto LABEL_292;
            }

LABEL_180:
            v216 = *(v6 + 17);
            *(v6 + 17) = 0;
            if ((v216 & 1) == 0)
            {
              goto LABEL_9;
            }

            goto LABEL_181;
          }

          type metadata accessor for CardState();
          swift_allocObject();

          v200 = sub_1000737F8(v199);

          v201 = *(v6 + 80);
          *(v6 + 80) = 0;
          v202 = [objc_opt_self() defaultCenter];
          if (qword_1001FC6F0 != -1)
          {
            swift_once();
          }

          v203 = qword_10020A3A0;
          sub_10003C49C(&qword_1002018D0, &qword_100180840);
          v204 = swift_allocObject();
          *(v204 + 16) = v319;
          strcpy(&v327, "changeInfoKey");
          HIWORD(v327) = -4864;
          AnyHashable.init<A>(_:)();
          *(v204 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
          *(v204 + 72) = v200;
          *(v204 + 80) = v201;

          v205 = sub_1000D57AC(v204);
          swift_setDeallocating();
          sub_100073B40(v204 + 32);
          swift_deallocClassInstance();
          v206 = Dictionary._bridgeToObjectiveC()().super.isa;
          v205, v207, v208, v209, v210, v211, v212, v213;
          [v202 postNotificationName:v203 object:v6 userInfo:v206];

          p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
          a2 = v322;
          if ((byte_1001FE420 & 1) == 0)
          {
            goto LABEL_180;
          }
        }

        if (!*(v6 + 80))
        {
          goto LABEL_180;
        }

        goto LABEL_177;
      }

      v144 = *(v6 + 80);
      if ((v144 & 1) == 0)
      {
        *(v6 + 80) = v144 | 1;
      }

      if ((*(v6 + 88) & 1) == 0)
      {
        if (*(p_opt_class_meths + 1056))
        {
LABEL_147:
          if (qword_1001FC700 != -1)
          {
            swift_once();
          }

          v160 = qword_1001FE430;
          v161 = swift_allocObject();
          *(v161 + 16) = sub_100074384;
          *(v161 + 24) = v6;
          v330 = sub_10003E41C;
          v331 = v161;
          *&v327 = _NSConcreteStackBlock;
          *(&v327 + 1) = 1107296256;
          v328 = sub_100060C48;
          v329 = &unk_1001C1950;
          v10 = _Block_copy(&v327);

          dispatch_sync(v160, v10);
          _Block_release(v10);
          LOBYTE(v160) = swift_isEscapingClosureAtFileLocation();

          a2 = v322;
          if (v160)
          {
            __break(1u);
LABEL_292:
            __break(1u);
            goto LABEL_293;
          }

          goto LABEL_150;
        }

        type metadata accessor for CardState();
        swift_allocObject();

        v146 = sub_1000737F8(v145);

        v147 = *(v6 + 80);
        *(v6 + 80) = 0;
        v148 = [objc_opt_self() defaultCenter];
        if (qword_1001FC6F0 != -1)
        {
          swift_once();
        }

        v149 = qword_10020A3A0;
        sub_10003C49C(&qword_1002018D0, &qword_100180840);
        v150 = swift_allocObject();
        *(v150 + 16) = v319;
        strcpy(&v327, "changeInfoKey");
        HIWORD(v327) = -4864;
        AnyHashable.init<A>(_:)();
        *(v150 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
        *(v150 + 72) = v146;
        *(v150 + 80) = v147;

        v151 = sub_1000D57AC(v150);
        swift_setDeallocating();
        sub_100073B40(v150 + 32);
        swift_deallocClassInstance();
        v152 = Dictionary._bridgeToObjectiveC()().super.isa;
        v151, v153, v154, v155, v156, v157, v158, v159;
        [v148 postNotificationName:v149 object:v6 userInfo:v152];

        p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
        a2 = v322;
      }

      if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
      {
        goto LABEL_150;
      }

      goto LABEL_147;
    }

    v20 = *(v6 + 16);
    *(v6 + 16) = 0;
    if (v20 != 1)
    {
      goto LABEL_34;
    }

    v21 = *(v6 + 80);
    if ((v21 & 1) == 0)
    {
      *(v6 + 80) = v21 | 1;
    }

    if (*(v6 + 88))
    {
      goto LABEL_29;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v23 = sub_1000737F8(v22);

      v24 = *(v6 + 80);
      *(v6 + 80) = 0;
      v25 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v26 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      v27 = swift_allocObject();
      *(v27 + 16) = v319;
      strcpy(&v327, "changeInfoKey");
      HIWORD(v327) = -4864;
      AnyHashable.init<A>(_:)();
      *(v27 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v27 + 72) = v23;
      *(v27 + 80) = v24;

      v28 = sub_1000D57AC(v27);
      swift_setDeallocating();
      sub_100073B40(v27 + 32);
      swift_deallocClassInstance();
      v29 = Dictionary._bridgeToObjectiveC()().super.isa;
      v28, v30, v31, v32, v33, v34, v35, v36;
      [v25 postNotificationName:v26 object:v6 userInfo:v29];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v322;
LABEL_29:
      if (*(p_opt_class_meths + 1056) != 1 || !*(v6 + 80))
      {
        goto LABEL_34;
      }
    }

    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v37 = qword_1001FE430;
    v38 = swift_allocObject();
    *(v38 + 16) = sub_100074384;
    *(v38 + 24) = v6;
    v330 = sub_10003E41C;
    v331 = v38;
    *&v327 = _NSConcreteStackBlock;
    *(&v327 + 1) = 1107296256;
    v328 = sub_100060C48;
    v329 = &unk_1001C1A40;
    v10 = _Block_copy(&v327);

    dispatch_sync(v37, v10);
    _Block_release(v10);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    a2 = v322;
    if (v37)
    {
      __break(1u);
LABEL_278:
      __break(1u);
      goto LABEL_279;
    }

LABEL_34:
    v39 = *(v6 + 18);
    *(v6 + 18) = 0;
    if ((v39 & 1) == 0)
    {
      goto LABEL_95;
    }

    v40 = *(v6 + 80);
    if ((v40 & 2) == 0)
    {
      *(v6 + 80) = v40 | 2;
    }

    if (*(v6 + 88))
    {
      if (!*(p_opt_class_meths + 1056))
      {
        goto LABEL_95;
      }

LABEL_91:
      if (!*(v6 + 80))
      {
        goto LABEL_95;
      }

      goto LABEL_92;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v100 = sub_1000737F8(v99);

      v101 = *(v6 + 80);
      *(v6 + 80) = 0;
      v102 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v103 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      v104 = swift_allocObject();
      *(v104 + 16) = v319;
      strcpy(&v327, "changeInfoKey");
      HIWORD(v327) = -4864;
      AnyHashable.init<A>(_:)();
      *(v104 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v104 + 72) = v100;
      *(v104 + 80) = v101;

      v105 = sub_1000D57AC(v104);
      swift_setDeallocating();
      sub_100073B40(v104 + 32);
      swift_deallocClassInstance();
      v106 = Dictionary._bridgeToObjectiveC()().super.isa;
      v105, v107, v108, v109, v110, v111, v112, v113;
      [v102 postNotificationName:v103 object:v6 userInfo:v106];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v322;
      if ((byte_1001FE420 & 1) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_91;
    }

LABEL_92:
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v114 = qword_1001FE430;
    v115 = swift_allocObject();
    *(v115 + 16) = sub_100074384;
    *(v115 + 24) = v6;
    v330 = sub_10003E41C;
    v331 = v115;
    *&v327 = _NSConcreteStackBlock;
    *(&v327 + 1) = 1107296256;
    v328 = sub_100060C48;
    v329 = &unk_1001C19F0;
    v10 = _Block_copy(&v327);

    dispatch_sync(v114, v10);
    _Block_release(v10);
    LOBYTE(v114) = swift_isEscapingClosureAtFileLocation();

    a2 = v322;
    if (v114)
    {
      goto LABEL_278;
    }

LABEL_95:
    v116 = *(v6 + 17);
    *(v6 + 17) = 1;
    if (v116)
    {
      goto LABEL_9;
    }

    v117 = *(v6 + 80);
    if ((v117 & 4) == 0)
    {
      *(v6 + 80) = v117 | 4;
      v117 = 1;
    }

    if (*(v6 + 88))
    {
      if ((*(p_opt_class_meths + 1056) & 1) == 0)
      {
        goto LABEL_9;
      }

LABEL_159:
      if (!*(v6 + 80))
      {
        goto LABEL_9;
      }

      goto LABEL_160;
    }

    if (v117)
    {
      v118 = *(p_opt_class_meths + 1056);
    }

    else
    {
      v118 = 1;
    }

    if ((v118 & 1) == 0)
    {
      type metadata accessor for CardState();
      swift_allocObject();

      v165 = sub_1000737F8(v164);

      v166 = *(v6 + 80);
      *(v6 + 80) = 0;
      v167 = [objc_opt_self() defaultCenter];
      if (qword_1001FC6F0 != -1)
      {
        swift_once();
      }

      v168 = qword_10020A3A0;
      sub_10003C49C(&qword_1002018D0, &qword_100180840);
      v169 = swift_allocObject();
      *(v169 + 16) = v319;
      strcpy(&v327, "changeInfoKey");
      HIWORD(v327) = -4864;
      AnyHashable.init<A>(_:)();
      *(v169 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
      *(v169 + 72) = v165;
      *(v169 + 80) = v166;

      v170 = sub_1000D57AC(v169);
      swift_setDeallocating();
      sub_100073B40(v169 + 32);
      swift_deallocClassInstance();
      v171 = Dictionary._bridgeToObjectiveC()().super.isa;
      v170, v172, v173, v174, v175, v176, v177, v178;
      [v167 postNotificationName:v168 object:v6 userInfo:v171];

      p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
      a2 = v322;
      if ((byte_1001FE420 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_159;
    }

    if ((*(p_opt_class_meths + 1056) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_160:
    if (qword_1001FC700 != -1)
    {
      swift_once();
    }

    v179 = qword_1001FE430;
    v180 = swift_allocObject();
    *(v180 + 16) = sub_100074384;
    *(v180 + 24) = v6;
    v330 = sub_10003E41C;
    v331 = v180;
    *&v327 = _NSConcreteStackBlock;
    *(&v327 + 1) = 1107296256;
    v328 = sub_100060C48;
    v329 = &unk_1001C19A0;
    v10 = _Block_copy(&v327);

    dispatch_sync(v179, v10);
    _Block_release(v10);
    LOBYTE(v179) = swift_isEscapingClosureAtFileLocation();

    a2 = v322;
    if (v179)
    {
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

LABEL_9:
    if ((*(v6 + 32) | 4) == 4)
    {
      goto LABEL_10;
    }

    v58 = *(v6 + 18);
    *(v6 + 18) = 1;
    if (v58)
    {
      goto LABEL_115;
    }

    v59 = *(v6 + 80);
    if ((v59 & 2) == 0)
    {
      *(v6 + 80) = v59 | 2;
    }

    if (*(v6 + 88))
    {
      if (!*(p_opt_class_meths + 1056))
      {
        goto LABEL_115;
      }

LABEL_111:
      if (*(v6 + 80))
      {
LABEL_112:
        if (qword_1001FC700 != -1)
        {
          swift_once();
        }

        v134 = qword_1001FE430;
        v135 = swift_allocObject();
        *(v135 + 16) = sub_100074384;
        *(v135 + 24) = v6;
        v330 = sub_10003E41C;
        v331 = v135;
        *&v327 = _NSConcreteStackBlock;
        *(&v327 + 1) = 1107296256;
        v328 = sub_100060C48;
        v329 = &unk_1001C1810;
        v10 = _Block_copy(&v327);

        dispatch_sync(v134, v10);
        _Block_release(v10);
        LOBYTE(v134) = swift_isEscapingClosureAtFileLocation();

        a2 = v322;
        if (v134)
        {
          goto LABEL_283;
        }

        goto LABEL_115;
      }

      goto LABEL_115;
    }

    if (*(p_opt_class_meths + 1056))
    {
      goto LABEL_112;
    }

    type metadata accessor for CardState();
    swift_allocObject();

    v120 = sub_1000737F8(v119);

    v121 = *(v6 + 80);
    *(v6 + 80) = 0;
    v122 = [objc_opt_self() defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      swift_once();
    }

    v123 = qword_10020A3A0;
    sub_10003C49C(&qword_1002018D0, &qword_100180840);
    inited = swift_initStackObject();
    *(inited + 16) = v319;
    strcpy(&v327, "changeInfoKey");
    HIWORD(v327) = -4864;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
    *(inited + 72) = v120;
    *(inited + 80) = v121;

    v125 = sub_1000D57AC(inited);
    swift_setDeallocating();
    sub_100073B40(inited + 32);
    v126 = Dictionary._bridgeToObjectiveC()().super.isa;
    v125, v127, v128, v129, v130, v131, v132, v133;
    [v122 postNotificationName:v123 object:v6 userInfo:v126];

    p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
    a2 = v322;
    if (byte_1001FE420)
    {
      goto LABEL_111;
    }

LABEL_115:
    v136 = *(v6 + 17);
    *(v6 + 17) = 0;
    if ((v136 & 1) == 0)
    {
      goto LABEL_10;
    }

    v137 = *(v6 + 80);
    if ((v137 & 4) == 0)
    {
      *(v6 + 80) = v137 | 4;
      v137 = 1;
    }

    if (*(v6 + 88))
    {
      if ((*(p_opt_class_meths + 1056) & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_167:
      if (!*(v6 + 80))
      {
        goto LABEL_10;
      }

LABEL_168:
      if (qword_1001FC700 != -1)
      {
        swift_once();
      }

      v196 = qword_1001FE430;
      v197 = swift_allocObject();
      *(v197 + 16) = sub_100074384;
      *(v197 + 24) = v6;
      v330 = sub_10003E41C;
      v331 = v197;
      *&v327 = _NSConcreteStackBlock;
      *(&v327 + 1) = 1107296256;
      v328 = sub_100060C48;
      v329 = &unk_1001C17C0;
      v198 = _Block_copy(&v327);

      dispatch_sync(v196, v198);
      _Block_release(v198);
      LOBYTE(v196) = swift_isEscapingClosureAtFileLocation();

      a2 = v322;
      v6 = v323;
      v10 = v326;
      if (v196)
      {
        goto LABEL_284;
      }
    }

    else
    {
      if (v137)
      {
        v138 = *(p_opt_class_meths + 1056);
      }

      else
      {
        v138 = 1;
      }

      if (v138)
      {
        if (*(p_opt_class_meths + 1056))
        {
          goto LABEL_168;
        }
      }

      else
      {
        type metadata accessor for CardState();
        swift_allocObject();

        v182 = sub_1000737F8(v181);

        v183 = *(v6 + 80);
        *(v6 + 80) = 0;
        v184 = [objc_opt_self() defaultCenter];
        if (qword_1001FC6F0 != -1)
        {
          swift_once();
        }

        v185 = qword_10020A3A0;
        sub_10003C49C(&qword_1002018D0, &qword_100180840);
        v186 = swift_allocObject();
        *(v186 + 16) = v319;
        strcpy(&v327, "changeInfoKey");
        HIWORD(v327) = -4864;
        AnyHashable.init<A>(_:)();
        *(v186 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
        *(v186 + 72) = v182;
        *(v186 + 80) = v183;

        v187 = sub_1000D57AC(v186);
        swift_setDeallocating();
        sub_100073B40(v186 + 32);
        swift_deallocClassInstance();
        v188 = Dictionary._bridgeToObjectiveC()().super.isa;
        v187, v189, v190, v191, v192, v193, v194, v195;
        [v184 postNotificationName:v185 object:v6 userInfo:v188];

        p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
        a2 = v322;
        if (byte_1001FE420)
        {
          goto LABEL_167;
        }
      }

LABEL_10:

      v6 = v323;
      v10 = v326;
    }
  }

  v19 = __CocoaSet.Iterator.next()();
  if (!v19)
  {
    goto LABEL_183;
  }

  v332 = v19;
  type metadata accessor for CardState();
  v18 = swift_dynamicCast();
  v6 = v327;
  v326 = v10;
  if (v327)
  {
    goto LABEL_20;
  }

LABEL_238:
  v6 = v323;
LABEL_183:
  sub_10004A320(v6);
  v10 = v317;
  v218 = v318;
  if (*v318 >> 62)
  {
LABEL_275:
    v310 = _CocoaArrayWrapper.endIndex.getter();
    v218 = v318;
    if (v310 <= 1)
    {
      goto LABEL_252;
    }

LABEL_185:
    v9 = *v218;
    if (!(*v218 >> 62))
    {
      v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_209;
      }

LABEL_187:
      if (v6 >= 1)
      {
        v10 = (v9 & 0xC000000000000001);
        v326 = &v328;

        v219 = 0;
        v323 = (v9 & 0xC000000000000001);
        while (1)
        {
          if (v10)
          {
            v227 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v227 = *(v9 + 8 * v219 + 32);
          }

          v228 = *(v227 + 16);
          *(v227 + 16) = 0;
          if (v228)
          {
            v229 = *(v227 + 80);
            if ((v229 & 1) == 0)
            {
              *(v227 + 80) = v229 | 1;
            }

            if ((*(v227 + 88) & 1) == 0)
            {
              if (*(p_opt_class_meths + 1056))
              {
                goto LABEL_204;
              }

              type metadata accessor for CardState();
              swift_allocObject();

              v231 = sub_1000737F8(v230);

              v232 = *(v227 + 80);
              *(v227 + 80) = 0;
              v233 = [objc_opt_self() defaultCenter];
              if (qword_1001FC6F0 != -1)
              {
                swift_once();
              }

              v234 = qword_10020A3A0;
              sub_10003C49C(&qword_1002018D0, &qword_100180840);
              v235 = swift_initStackObject();
              *(v235 + 16) = v319;
              strcpy(&v327, "changeInfoKey");
              HIWORD(v327) = -4864;
              AnyHashable.init<A>(_:)();
              *(v235 + 96) = &type metadata for CardState.ChangedPropertyNotificationInfo;
              *(v235 + 72) = v231;
              *(v235 + 80) = v232;

              v236 = sub_1000D57AC(v235);
              swift_setDeallocating();
              sub_100073B40(v235 + 32);
              v237 = Dictionary._bridgeToObjectiveC()().super.isa;
              v236, v238, v239, v240, v241, v242, v243, v244;
              [v233 postNotificationName:v234 object:v227 userInfo:v237];

              p_opt_class_meths = &OBJC_PROTOCOL___UIWindowSceneDelegate.opt_class_meths;
              v10 = v323;
            }

            if (*(p_opt_class_meths + 1056) == 1 && *(v227 + 80))
            {
LABEL_204:
              if (qword_1001FC700 != -1)
              {
                swift_once();
              }

              v245 = qword_1001FE430;
              v246 = swift_allocObject();
              *(v246 + 16) = sub_100073BA8;
              *(v246 + 24) = v227;
              v330 = sub_10003DAA4;
              v331 = v246;
              *&v327 = _NSConcreteStackBlock;
              *(&v327 + 1) = 1107296256;
              v328 = sub_100060C48;
              v329 = &unk_1001C1770;
              v247 = _Block_copy(&v327);

              dispatch_sync(v245, v247);
              _Block_release(v247);
              LOBYTE(v245) = swift_isEscapingClosureAtFileLocation();

              p_opt_class_meths = 0x1001FE000;
              if (v245)
              {
                goto LABEL_274;
              }

              goto LABEL_190;
            }
          }

LABEL_190:
          if (v6 == ++v219)
          {
            v9, v220, v221, v222, v223, v224, v225, v226;
            v10 = v317;
            v218 = v318;
            goto LABEL_209;
          }
        }
      }

      goto LABEL_285;
    }

LABEL_279:
    v311 = _CocoaArrayWrapper.endIndex.getter();
    v218 = v318;
    v6 = v311;
    if (!v311)
    {
LABEL_209:
      v248 = *v218;
      if (*v218 >> 62)
      {
        v249 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v249 = *((v248 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v249)
      {
        *&v327 = &_swiftEmptyArrayStorage;
        v10 = (v249 & ~(v249 >> 63));

        sub_1000B7C9C(0, v10, 0);
        if (v249 < 0)
        {
          goto LABEL_286;
        }

        v250 = 0;
        v251 = v327;
        do
        {
          if ((v248 & 0xC000000000000001) != 0)
          {
            v252 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v252 = *&v248->remoteCardFilter[8 * v250];
          }

          v253 = [*(v252 + 40) serialNumber];
          v254 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v256 = v255;

          *&v327 = v251;
          v265 = *&v251->hostAppBundleIdentifier[8];
          v264 = *v251->responder;
          if (v265 >= v264 >> 1)
          {
            sub_1000B7C9C((v264 > 1), v265 + 1, 1);
            v251 = v327;
          }

          ++v250;
          *&v251->hostAppBundleIdentifier[8] = v265 + 1;
          v266 = v251 + 16 * v265;
          *(v266 + 4) = v254;
          *(v266 + 5) = v256;
        }

        while (v249 != v250);
        v248, v257, v258, v259, v260, v261, v262, v263;
        v10 = v317;
      }

      else
      {
        v251 = &_swiftEmptyArrayStorage;
      }

      v267 = v321;

      v268 = sub_100078084(v251, v267);
      v251, v269, v270, v271, v272, v273, v274, v275;
      if (*(v268 + 16) != 1)
      {
        goto LABEL_251;
      }

      v326 = sub_100125460(v268);
      v277 = v276;

      v323 = v277;
      if (v277 == 9)
      {
        goto LABEL_252;
      }

      v6 = *v318;
      v332 = &_swiftEmptyArrayStorage;
      if (!(v6 >> 62))
      {
        v278 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_226;
      }

LABEL_288:
      v278 = _CocoaArrayWrapper.endIndex.getter();
LABEL_226:

      if (v278)
      {
        v285 = 0;
        p_opt_class_meths = v6 & 0xC000000000000001;
        do
        {
          if (p_opt_class_meths)
          {
            v286 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = (v285 + 1);
            if (__OFADD__(v285, 1))
            {
              goto LABEL_237;
            }
          }

          else
          {
            if (v285 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_273;
            }

            v10 = (v285 + 1);
            if (__OFADD__(v285, 1))
            {
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }
          }

          *&v327 = v326;
          *(&v327 + 1) = v323;
          __chkstk_darwin(v286);
          v313 = &v327;
          v287 = v325;
          v289 = sub_100075364(sub_1000784C4, v312, v288);
          v325 = v287;
          if (v289)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v285;
        }

        while (v10 != v278);
        v290 = v332;
        v10 = v317;
      }

      else
      {
        v290 = &_swiftEmptyArrayStorage;
      }

      sub_1000784E0(v326, v323, v279, v280, v281, v282, v283, v284);
      v6, v291, v292, v293, v294, v295, v296, v297;
      if ((v290 & 0x8000000000000000) != 0 || (v290 & 0x4000000000000000) != 0)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_244:
          if ((v290 & 0xC000000000000001) == 0)
          {
            if (!*&v290->hostAppBundleIdentifier[8])
            {
              __break(1u);
              return;
            }

            v298 = *v290->remoteCardFilter;

            goto LABEL_247;
          }

LABEL_293:
          v298 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_247:

          v300 = *(v298 + 16);
          *(v298 + 16) = 1;
          if (v300 != 1)
          {
            v301 = *(v298 + 80);
            if ((v301 & 1) == 0)
            {
              *(v298 + 80) = v301 | 1;
            }

            sub_1000724B4(v299);
          }
        }
      }

      else if (*&v290->hostAppBundleIdentifier[8])
      {
        goto LABEL_244;
      }

LABEL_251:

      goto LABEL_252;
    }

    goto LABEL_187;
  }

  if (*((*v318 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
  {
    goto LABEL_185;
  }

LABEL_252:
  if (v314)
  {
    if (__CocoaSet.count.getter() != 1)
    {
      return;
    }

LABEL_256:
    if ((v324 & 1) == 0)
    {
      v302 = sub_1001254DC(v10);
      if (v302)
      {
        v303 = v302;
        v304 = *(v302 + 16);
        *(v302 + 16) = 1;
        if ((v304 & 1) == 0)
        {
          v305 = *(v302 + 80);
          if ((v305 & 1) == 0)
          {
            *(v302 + 80) = v305 | 1;
          }

          sub_1000724B4(v302);
        }

        v306 = *(v303 + 18);
        *(v303 + 18) = 1;
        if ((v306 & 1) == 0)
        {
          v307 = *(v303 + 80);
          if ((v307 & 2) == 0)
          {
            *(v303 + 80) = v307 | 2;
          }

          sub_1000724B4(v302);
        }

        v308 = *(v303 + 17);
        *(v303 + 17) = 0;
        if (v308)
        {
          v309 = *(v303 + 80);
          if ((v309 & 4) == 0)
          {
            *(v303 + 80) = v309 | 4;
          }

          sub_1000724B4(v302);
        }
      }
    }
  }

  else if (*&v10->hostAppBundleIdentifier[8] == 1)
  {
    goto LABEL_256;
  }
}

unint64_t sub_100077FF4()
{
  result = qword_1001FE6B0;
  if (!qword_1001FE6B0)
  {
    type metadata accessor for CardState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE6B0);
  }

  return result;
}

NSString sub_10007804C()
{
  result = String._bridgeToObjectiveC()();
  qword_10020A3B0 = result;
  return result;
}

uint64_t sub_100078084(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    v9 = &v16 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    sub_100078224(v9, v7, v3, a2);
    v11 = v10;
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    sub_10007857C(v15, v7, v18);
    v11 = v18[0];
  }

  return v11;
}

void sub_100078224(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  v5 = 0;
  v6 = *(a3 + 16);
  v38 = a3 + 32;
  v42 = a4 + 56;
  v39 = v6;
  while (2)
  {
    v36 = v4;
    if (v5 == v6)
    {
      goto LABEL_26;
    }

    v7 = v5;
    while (1)
    {
      if (v7 >= v6)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_28;
      }

      v40 = v7 + 1;
      v8 = (v38 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      Hasher.init(_seed:)();
      v41 = v9;
      if (v10 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v10]);
        sub_100078568(v9, v10);
      }

      v11 = Hasher._finalize()();
      v18 = -1 << *(a4 + 32);
      v19 = v11 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v42 + 8 * (v19 >> 6))) != 0)
      {
        break;
      }

LABEL_4:
      sub_1000784F0(v41, v10, v12, v13, v14, v15, v16, v17);
LABEL_5:
      v6 = v39;
      v7 = v40;
      if (v40 == v39)
      {
        goto LABEL_26;
      }
    }

    v22 = ~v18;
    while (1)
    {
      v23 = (*(a4 + 48) + 16 * v19);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();
      if (v24 >= 9)
      {

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v24]);
        sub_100078568(v25, v24);
      }

      v26 = Hasher._finalize()();
      Hasher.init(_seed:)();
      if (v10 >= 9)
      {
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(qword_100180848[v10]);
      }

      v27 = Hasher._finalize()();
      sub_1000784F0(v25, v24, v28, v29, v30, v31, v32, v33);
      if (v26 == v27)
      {
        break;
      }

      v19 = (v19 + 1) & v22;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if ((*(v42 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_4;
      }
    }

    sub_1000784F0(v41, v10, v12, v13, v14, v15, v16, v17);
    v34 = result[v20];
    result[v20] = v34 | v21;
    if ((v34 & v21) != 0)
    {
      goto LABEL_5;
    }

    v4 = v36 + 1;
    v6 = v39;
    v5 = v40;
    if (!__OFADD__(v36, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:

  sub_10012A9F8(result, a2, v36, a4);
}

void sub_1000784E0(uint64_t result, DARootViewController *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 != 9)
  {
    sub_1000784F0(result, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1000784F0(uint64_t a1, DARootViewController *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a2 >= 9)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_100078514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100078568(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

void sub_10007857C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100078224(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

id sub_100078654()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel);
  v3 = v2;
  if (v2 == 1)
  {
    if ([objc_opt_self() isSSRBootIntentSet])
    {
      goto LABEL_6;
    }

    if (qword_1001FC6A0 != -1)
    {
      swift_once();
    }

    if ([*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination] - 1 < 6)
    {
LABEL_6:
      v3 = 0;
    }

    else
    {
      v3 = [objc_allocWithZone(UILabel) init];
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_100079A54(v4);
  }

  sub_100079AB8(v2);
  return v3;
}

char *sub_100078758()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for DispatchTime();
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for LoadingViewController();
  v34.receiver = v0;
  v34.super_class = v17;
  objc_msgSendSuper2(&v34, "viewDidLoad");
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  result = [*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_currentFlow) destination];
  if ((result - 1) <= 5)
  {
    [*&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator] setAlpha:0.0];
    sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
    v28 = v4;
    v19 = v2;
    v20 = v1;
    v27 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v10 = 1500;
    (*(v8 + 104))(v10, enum case for DispatchTimeInterval.milliseconds(_:), v7);
    + infix(_:_:)();
    (*(v8 + 8))(v10, v7);
    v29 = *(v29 + 8);
    v21 = v13;
    v22 = v30;
    (v29)(v21, v30);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100079B00;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C1A90;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    v25 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v26 = v27;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v24);

    (*(v19 + 8))(v25, v20);
    (*(v31 + 8))(v6, v28);
    return (v29)(v16, v22);
  }

  return result;
}

double sub_100078C44(uint64_t a1)
{
  v2 = objc_opt_self();
  v5[4] = sub_100079B20;
  v5[5] = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100031FA8;
  v5[3] = &unk_1001C1AB8;
  v3 = _Block_copy(v5);
  swift_retain_n();

  [v2 animateWithDuration:0x10000 delay:v3 options:0 animations:0.375 completion:0.0];
  _Block_release(v3);

  return result;
}

void sub_100078D34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator);

    [v3 setAlpha:1.0];
  }
}

void sub_100078DF8()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 systemBackgroundColor];
    [v2 setBackgroundColor:v4];

    v5 = [v0 navigationItem];
    [v5 setHidesBackButton:1];

    v6 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator];
    v7 = [v3 systemGrayColor];
    [v6 setColor:v7];

    [v6 startAnimating];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = sub_100078654();
    if (v8)
    {
      v9 = v8;
      v10 = _UISolariumEnabled();
      v11 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x800000010018C550);
      v13 = v12;
      if (v10)
      {
        v14 = String._bridgeToObjectiveC()();
        v13, v15, v16, v17, v18, v19, v20, v21;
        [v9 setText:v14];

        v22 = [v3 labelColor];
        [v9 setTextColor:v22];

        v23 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
        [v9 setFont:v23];
      }

      else
      {
        v45 = v11;
        v46 = v12;
        sub_100079A64();
        StringProtocol.localizedUppercase.getter();
        v25 = v24;
        v26 = String._bridgeToObjectiveC()();
        v25, v27, v28, v29, v30, v31, v32, v33;
        v13, v34, v35, v36, v37, v38, v39, v40;
        [v9 setText:{v26, v45, v46}];

        v41 = [v3 secondaryLabelColor];
        [v9 setTextColor:v41];

        v42 = [objc_opt_self() defaultMetrics];
        v43 = [objc_opt_self() systemFontOfSize:12.0];
        v44 = [v42 scaledFontForFont:v43];

        [v9 setFont:v44];
      }

      [v9 setNumberOfLines:0];
      [v9 setTextAlignment:1];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100079168()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator]];

  v3 = sub_100078654();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v0 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 addSubview:v4];
}

void sub_100079238()
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10017ED90;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator];
  v3 = [v2 centerXAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  v6 = [v4 centerXAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v10 centerYAnchor];

  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement];
  v14 = [v8 constraintEqualToAnchor:v12 constant:-v13];

  *(v1 + 40) = v14;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v16, v17, v18, v19, v20, v21, v22;
  [v11 activateConstraints:isa];

  v23 = sub_100078654();
  if (!v23)
  {
    return;
  }

  v24 = v23;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10017ED60;
  v26 = v24;
  v27 = [v26 centerXAnchor];
  v28 = [v0 view];
  if (!v28)
  {
    goto LABEL_14;
  }

  v29 = v28;
  v30 = [v28 centerXAnchor];

  v31 = [v27 constraintEqualToAnchor:v30];
  *(v25 + 32) = v31;
  v32 = [v26 topAnchor];
  v33 = [v0 view];
  if (!v33)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v34 = v33;
  v35 = [v33 centerYAnchor];

  v36 = [v32 constraintEqualToAnchor:v35 constant:v13];
  *(v25 + 40) = v36;
  v37 = [v26 leadingAnchor];
  v38 = [v0 view];
  if (!v38)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor:v40 constant:25.0];
  *(v25 + 48) = v41;
  v42 = [v26 trailingAnchor];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = [v43 trailingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45 constant:-25.0];
  *(v25 + 56) = v46;
  v54 = Array._bridgeToObjectiveC()().super.isa;
  v25, v47, v48, v49, v50, v51, v52, v53;
  [v11 activateConstraints:v54];
}

id sub_1000796DC(uint64_t a1, DARootViewController *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicatorAppearDelayMilliseconds] = 1500;
  v6 = _UISolariumEnabled();
  v7 = 5.0;
  if (v6)
  {
    v7 = 8.0;
  }

  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement] = v7;
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_fontSizeLoadingLabel] = 0x4028000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_margin] = 0x4039000000000000;
  v8 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator;
  *&v3[v8] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v3[OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel] = 1;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
    a2, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v9 = 0;
  }

  v19.receiver = v3;
  v19.super_class = type metadata accessor for LoadingViewController();
  v17 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", v9, a3);

  return v17;
}

id sub_100079858(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicatorAppearDelayMilliseconds] = 1500;
  v3 = _UISolariumEnabled();
  v4 = 5.0;
  if (v3)
  {
    v4 = 8.0;
  }

  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_centerDisplacement] = v4;
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_fontSizeLoadingLabel] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController_margin] = 0x4039000000000000;
  v5 = OBJC_IVAR____TtC11Diagnostics21LoadingViewController_loadingIndicator;
  *&v1[v5] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v1[OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel] = 1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for LoadingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100079970()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21LoadingViewController____lazy_storage___loadingLabel);

  sub_100079A54(v1);
}

id sub_1000799B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LoadingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100079A54(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_100079A64()
{
  result = qword_1001FE818;
  if (!qword_1001FE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE818);
  }

  return result;
}

id sub_100079AB8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100079AC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100079B08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100079C80(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntrinsicSizeAdjustingTableView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100079CD8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100079CF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100079D38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100079D8C()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100079E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100079F0C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100079E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100079F0C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100079EE4(uint64_t a1)
{
  sub_100079F0C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100079F0C()
{
  result = qword_1001FE848;
  if (!qword_1001FE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE848);
  }

  return result;
}

DARootViewController *sub_100079F60(SEL *a1)
{
  v2 = [objc_opt_self() sharedManager];
  v3 = [v2 snapshot];

  v4 = [v3 queue];
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  sub_10007BB00();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  v42 = &_swiftEmptyArrayStorage;
  result = sub_1000B7CBC(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = 0;
    v5 = v42;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v6 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 *a1];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v42 = v5;
      v24 = *&v5->hostAppBundleIdentifier[8];
      v23 = *v5->responder;
      if (v24 >= v23 >> 1)
      {
        sub_1000B7CBC((v23 > 1), v24 + 1, 1);
        v5 = v42;
      }

      ++v16;
      *&v5->hostAppBundleIdentifier[8] = v24 + 1;
      v25 = v5 + 16 * v24;
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
    }

    while (v14 != v16);
LABEL_14:
    v6, v7, v8, v9, v10, v11, v12, v13;
    v26 = sub_1000F7AB4(v5);
    v5, v27, v28, v29, v30, v31, v32, v33;
    v41 = *(v26 + 16);
    if (v41)
    {
      v5 = sub_1000648D0(*(v26 + 16), 0);
      v26 = sub_1000C97E8(&v42, v5->remoteCardFilter, v41, v26);
      sub_10004A320(v42);
      if (v26 == v41)
      {
        return v5;
      }

      __break(1u);
    }

    v26, v34, v35, v36, v37, v38, v39, v40;
    return &_swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

DARootViewController *sub_10007A1A0()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = [v0 snapshot];

  v2 = [v1 consentHandles];
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    sub_10003C49C(&unk_100202960, &qword_100182490);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = *(v4 + 16);
    if (v12)
    {
      v32 = &_swiftEmptyArrayStorage;
      sub_1000B7CBC(0, v12, 0);
      v13 = 32;
      v3 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v14 = *(v4 + v13);

        AnyHashable.init<A>(_:)();
        if (!*(v14 + 16))
        {
          break;
        }

        v15 = sub_100064B74(v30);
        if ((v16 & 1) == 0)
        {
          break;
        }

        sub_10003E010(*(v14 + 56) + 32 * v15, v31);
        sub_10003DB48(v30);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_9;
        }

        v24 = 0x656C646E6168;
        v25 = 0xE600000000000000;
        v14, v17, v18, v19, v20, v21, v22, v23;
LABEL_10:
        v32 = v3;
        v27 = *&v3->hostAppBundleIdentifier[8];
        v26 = *v3->responder;
        if (v27 >= v26 >> 1)
        {
          sub_1000B7CBC((v26 > 1), v27 + 1, 1);
          v3 = v32;
        }

        *&v3->hostAppBundleIdentifier[8] = v27 + 1;
        v28 = v3 + 16 * v27;
        *(v28 + 4) = v24;
        *(v28 + 5) = v25;
        v13 += 8;
        if (!--v12)
        {
          goto LABEL_13;
        }
      }

      sub_10003DB48(v30);
LABEL_9:
      v14, v17, v18, v19, v20, v21, v22, v23;
      v24 = 0;
      v25 = 0xE000000000000000;
      goto LABEL_10;
    }

LABEL_13:
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  return v3;
}

id sub_10007A3B8(uint64_t a1, DARootViewController *a2, uint64_t a3, DARootViewController *a4, uint64_t a5, DARootViewController *a6)
{
  v7 = v6;
  v11 = [objc_opt_self() sharedManager];
  v12 = [v11 snapshot];

  v13 = [v12 topLevelPrivacyPolicy];
  if (v13)
  {
  }

  v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy] = v13 != 0;
  v14 = &v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 4) = 0;
  v15 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_bundleQueue;
  *&v7[v15] = sub_100079F60(&selRef_type);
  v16 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue;
  *&v7[v16] = sub_100079F60(&selRef_typeName);
  v17 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles;
  *&v7[v17] = sub_10007A1A0();
  v18 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_diagnosticsTable;
  *&v7[v18] = [objc_allocWithZone(UITableView) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    v19 = Session.requiresFollowUpQuestion.getter();

    v20 = v19 ^ 1;
  }

  else
  {
    v20 = 1;
  }

  v7[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_willAllowExpressFlow] = v20 & 1;
  v21 = String._bridgeToObjectiveC()();
  a2, v22, v23, v24, v25, v26, v27, v28;
  if (!a4)
  {
    v29 = 0;
    if (a6)
    {
      goto LABEL_10;
    }

LABEL_12:
    v37 = 0;
    goto LABEL_13;
  }

  v29 = String._bridgeToObjectiveC()();
  a4, v30, v31, v32, v33, v34, v35, v36;
  if (!a6)
  {
    goto LABEL_12;
  }

LABEL_10:
  v37 = String._bridgeToObjectiveC()();
  a6, v38, v39, v40, v41, v42, v43, v44;
LABEL_13:
  v47.receiver = v7;
  v47.super_class = type metadata accessor for EnhancedLoggingConsentViewController();
  v45 = objc_msgSendSuper2(&v47, "initWithTitle:detailText:symbolName:contentLayout:", v21, v29, v37, 3);

  return v45;
}

void sub_10007A6C8()
{
  sub_100101C50();
  [v0 setModalPresentationStyle:2];
  [*&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView] setDataSource:v0];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [v0 navigationController];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 navigationBar];

      v4 = [objc_allocWithZone(UIImage) init];
      [v3 setBackgroundImage:v4 forBarMetrics:0];
    }

    v5 = [v0 navigationController];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 navigationBar];

      v8 = [objc_allocWithZone(UIImage) init];
      [v7 setShadowImage:v8];
    }
  }

  if (v0[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_willAllowExpressFlow] == 1)
  {
    v9 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000023, 0x800000010018C760);
    v10 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
    v11 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8];
    *v10 = v9;
    v10[1] = v12;
    v11, v12, v13, v14, v15, v16, v17, v18;
    v19 = swift_allocObject();
    *(v19 + 16) = v0;
    v20 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v21 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v22 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction + 8];
    *v20 = sub_10007B68C;
    v20[1] = v19;
    v23 = v0;
    sub_10003C52C(v21, v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = &v23[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
    v26 = *&v23[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
    v27 = *&v23[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction + 8];
    *v25 = sub_10007B6AC;
    v25[1] = v24;
    v28 = v23;
    sub_10003C52C(v26, v27);
    v29 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD00000000000001CLL, 0x800000010018C790);
    v30 = &v28[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
    v31 = *&v28[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle + 8];
    *v30 = v29;
    v30[1] = v32;
    v31, v32, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v39 = sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x45554E49544E4F43, 0xE800000000000000);
    v40 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
    v41 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle + 8];
    *v40 = v39;
    v40[1] = v42;
    v41, v42, v43, v44, v45, v46, v47, v48;
    v49 = swift_allocObject();
    *(v49 + 16) = v0;
    v50 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v51 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
    v52 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction + 8];
    *v50 = sub_10007BB5C;
    v50[1] = v49;
    v53 = v0;
    sub_10003C52C(v51, v52);
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v0;
  v55 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v56 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction];
  v57 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_cancelAction + 8];
  *v55 = sub_10007B684;
  v55[1] = v54;
  v58 = v0;

  v59 = sub_10003C52C(v56, v57);
  v60 = *v55;
  v63 = [v58 navigationItem];
  if (v60)
  {
    v61 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v58 action:"cancelButtonPressed:"];
    [v63 setLeftBarButtonItem:v61];

    v62 = v61;
  }

  else
  {
    [v63 setLeftBarButtonItem:0];

    v62 = v63;
  }
}

void sub_10007AB24(char *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
  swift_beginAccess();
  sub_10007B6CC(&a1[v4], v6);
  if (v7)
  {
    sub_10004476C(v6, v5);
    sub_10007B5E4(v6);
    sub_1000442A0(v5, v5[3]);
    sub_1000AA164(a1, a2);
    sub_100044554(v5);
  }

  else
  {
    sub_10007B5E4(v6);
  }
}

void sub_10007ABCC(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = [v3 navigationItem];
  v5 = [v4 leftBarButtonItem];

  v6 = sub_1000BC190(sub_10007B73C, v2, 0, 0, v5);

  [v3 presentViewController:v6 animated:1 completion:0];
}

void sub_10007ACBC(uint64_t a1, char *a2)
{
  v3 = OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate;
  swift_beginAccess();
  sub_10007B6CC(&a2[v3], v5);
  if (v6)
  {
    sub_10004476C(v5, v4);
    sub_10007B5E4(v5);
    sub_1000442A0(v4, v4[3]);
    sub_1000AA164(a2, 0);
    sub_100044554(v4);
  }

  else
  {
    sub_10007B5E4(v5);
  }
}

void sub_10007AF48(void *a1)
{
  v2 = v1;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectRowAtIndexPath:isa animated:1];

  if ((v1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy] & 1) == 0)
  {
    v21 = *&v1[OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue];
    v22 = IndexPath.row.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      v23 = *(v21 + 16 * v22 + 40);
      v24 = objc_opt_self();

      v25 = String._bridgeToObjectiveC()();
      v23, v26, v27, v28, v29, v30, v31, v32;
      v7 = [v24 findEntryForParameterName:v25];

      if (v7)
      {
        v33 = [v7 displayNameLocalizationKey];
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v34, v36);
        v13 = v37;
        v36, v37, v38, v39, v40, v41, v42, v43;
        v20 = [v7 descriptionLocalizationKey];
        goto LABEL_8;
      }

      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000024, 0x800000010018C730);
      v49 = v56;
LABEL_11:
      v13 = 0xE000000000000000;
      goto LABEL_12;
    }

    __break(1u);
    return;
  }

  v5 = [objc_opt_self() sharedManager];
  v6 = [v5 snapshot];

  v7 = [v6 topLevelPrivacyPolicy];
  if (!v7)
  {
    v49 = 0;
    goto LABEL_11;
  }

  v8 = [v7 suiteNameKey];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v9, v11);
  v13 = v12;
  v11, v12, v14, v15, v16, v17, v18, v19;
  v20 = [v7 policyKey];
LABEL_8:
  v44 = v20;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v45, v47);
  v49 = v48;
  v47, v48, v50, v51, v52, v53, v54, v55;

LABEL_12:
  v57 = String._bridgeToObjectiveC()();
  v13, v58, v59, v60, v61, v62, v63, v64;
  if (v49)
  {
    v65 = String._bridgeToObjectiveC()();
    v49, v66, v67, v68, v69, v70, v71, v72;
  }

  else
  {
    v65 = 0;
  }

  v75 = [objc_allocWithZone(OBWelcomeController) initWithTitle:v57 detailText:v65 symbolName:0];

  v73 = [v2 navigationController];
  if (v73)
  {
    v74 = v73;
    [v73 pushViewController:v75 animated:1];
  }
}

void sub_10007B438()
{
  sub_10007B5E4(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_delegate);
  *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_bundleQueue), v1, v2, v3, v4, v5, v6, v7;
  *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles), v15, v16, v17, v18, v19, v20, v21;
  v22 = *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_diagnosticsTable);
}

id sub_10007B4A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EnhancedLoggingConsentViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10007B590()
{
  result = qword_1001FE8B0;
  if (!qword_1001FE8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8B0);
  }

  return result;
}

uint64_t sub_10007B5E4(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FE8B8, &unk_100180B20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007B64C()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_10007B6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FE8B8, &unk_100180B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007B744()
{
  v1 = sub_100102D00();
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_snapshotHasTopLevelPrivacyPolicy))
  {
    v2 = [objc_opt_self() sharedManager];
    v3 = [v2 snapshot];

    v4 = [v3 topLevelPrivacyPolicy];
    if (v4)
    {
      v5 = [v1 textLabel];
      if (v5)
      {
        v6 = v5;
        v7 = [v4 suiteNameKey];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v8, v10);
        v12 = v11;
        v10, v11, v13, v14, v15, v16, v17, v18;
        v19 = String._bridgeToObjectiveC()();
        v12, v20, v21, v22, v23, v24, v25, v26;
        [v6 setText:v19];
      }

      v27 = [v1 detailTextLabel];
      if (!v27)
      {
        goto LABEL_15;
      }

      v28 = v27;
      v29 = &selRef_sensitiveInformationKey;
LABEL_14:
      v65 = [v4 *v29];
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = v67;

      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v66, v68);
      v70 = v69;
      v68, v69, v71, v72, v73, v74, v75, v76;
      v77 = String._bridgeToObjectiveC()();
      v70, v78, v79, v80, v81, v82, v83, v84;
      [v28 setText:v77];

LABEL_15:
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v30 = *(v0 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_typeQueue);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (result >= *(v30 + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v32 = *(v30 + 16 * result + 40);
  v33 = objc_opt_self();

  v34 = String._bridgeToObjectiveC()();
  v32, v35, v36, v37, v38, v39, v40, v41;
  v4 = [v33 findEntryForParameterName:v34];

  if (v4)
  {
    v42 = [v1 textLabel];
    if (v42)
    {
      v43 = v42;
      v44 = [v4 displayNameLocalizationKey];
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v45, v47);
      v49 = v48;
      v47, v48, v50, v51, v52, v53, v54, v55;
      v56 = String._bridgeToObjectiveC()();
      v49, v57, v58, v59, v60, v61, v62, v63;
      [v43 setText:v56];
    }

    v64 = [v1 detailTextLabel];
    if (!v64)
    {
      goto LABEL_15;
    }

    v28 = v64;
    v29 = &selRef_sensitiveInformationLocalizationKey;
    goto LABEL_14;
  }

LABEL_16:
  v85 = [v1 detailTextLabel];
  if (v85)
  {
    v86 = v85;
    [v85 setNumberOfLines:2];
  }

  [v1 setAccessoryType:1];
  return v1;
}

unint64_t sub_10007BB00()
{
  result = qword_1001FE8C0;
  if (!qword_1001FE8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FE8C0);
  }

  return result;
}

uint64_t sub_10007BB8C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v23 = type metadata accessor for DynamicTypeSize();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FE8C8, &qword_100180BC8);
  v24 = *(v8 - 8);
  v25 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v22 = static HorizontalAlignment.center.getter();
  v44 = 1;
  sub_10007BFB0(a2, &v31);
  v50 = v36;
  v51 = v37;
  v52 = v38;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v45 = v31;
  v46 = v32;
  v54[6] = v37;
  v54[7] = v38;
  v54[2] = v33;
  v54[3] = v34;
  v54[4] = v35;
  v54[5] = v36;
  v53 = v39;
  v55 = v39;
  v54[0] = v31;
  v54[1] = v32;
  sub_100044704(&v45, &v27, &qword_1001FE8D0, &qword_100180BD0);
  sub_10003DD84(v54, &qword_1001FE8D0, &qword_100180BD0);
  *(&v43[5] + 7) = v50;
  *(&v43[6] + 7) = v51;
  *(&v43[7] + 7) = v52;
  *(&v43[1] + 7) = v46;
  *(&v43[2] + 7) = v47;
  *(&v43[3] + 7) = v48;
  *(&v43[4] + 7) = v49;
  *(&v43[8] + 7) = v53;
  *(v43 + 7) = v45;
  v11 = v44;
  if (a1)
  {
    v12 = static Color.white.getter();
  }

  else
  {
    v12 = static Color.black.getter();
  }

  v13 = v12;
  KeyPath = swift_getKeyPath();
  *(&v28[5] + 1) = v43[5];
  *(&v28[6] + 1) = v43[6];
  *(&v28[7] + 1) = v43[7];
  v28[8] = *(&v43[7] + 15);
  *(&v28[1] + 1) = v43[1];
  *(&v28[2] + 1) = v43[2];
  *(&v28[3] + 1) = v43[3];
  *(&v28[4] + 1) = v43[4];
  v27 = v22;
  LOBYTE(v28[0]) = v11;
  *(v28 + 1) = v43[0];
  *&v29 = v13;
  *(&v29 + 1) = KeyPath;
  v30 = 1;
  v15 = v7;
  v16 = v7;
  v17 = v23;
  (*(v5 + 104))(v16, enum case for DynamicTypeSize.large(_:), v23);
  v18 = sub_10003C49C(&qword_1001FE8D8, &qword_100180C08);
  v19 = sub_10007C628();
  View.dynamicTypeSize(_:)();
  (*(v5 + 8))(v15, v17);
  v39 = v28[7];
  v40 = v28[8];
  v41 = v29;
  v42 = v30;
  v35 = v28[3];
  v36 = v28[4];
  v37 = v28[5];
  v38 = v28[6];
  v31 = v27;
  v32 = v28[0];
  v33 = v28[1];
  v34 = v28[2];
  sub_10003DD84(&v31, &qword_1001FE8D8, &qword_100180C08);
  *&v27 = v18;
  *(&v27 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  View.accessibilityHidden(_:)();
  return (*(v24 + 8))(v10, v20);
}

id sub_10007BFB0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10003C49C(&qword_1001FE918, &qword_100180C30);
  __chkstk_darwin(v4 - 8);
  v6 = &v130 - v5;
  v7 = sub_10003C49C(&qword_1001FE920, &qword_100180C38);
  __chkstk_darwin(v7 - 8);
  v9 = &v130 - v8;
  v10 = MobileGestalt_copy_deviceClass_obj();
  if (v10)
  {
    v139 = a1;
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == 1684099177 && v14 == 0xE400000000000000)
    {
      0xE400000000000000, v15, v16, v17, v18, v19, v20, v21;
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
      v14, v22, v23, v24, v25, v26, v27, v28;
    }
  }

  Image.init(systemName:)();
  static SymbolRenderingMode.monochrome.getter();
  v29 = type metadata accessor for SymbolRenderingMode();
  (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
  v30 = Image.symbolRenderingMode(_:)();

  sub_10003DD84(v9, &qword_1001FE920, &qword_100180C38);
  static Font.Weight.ultraLight.getter();
  v31 = type metadata accessor for Font.Design();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  v139 = static Font.system(size:weight:design:)();
  sub_10003DD84(v6, &qword_1001FE918, &qword_100180C30);
  KeyPath = swift_getKeyPath();
  v137 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v161 = 0;
  result = MobileGestalt_copy_userAssignedDeviceName_obj();
  if (result)
  {
    v41 = result;
    v136 = v30;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;

    *&v148 = v42;
    *(&v148 + 1) = v44;
    sub_100079A64();
    v45 = Text.init<A>(_:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    static Font.subheadline.getter();
    Font.bold()();

    v52 = Text.font(_:)();
    v133 = v53;
    v134 = v52;
    v132 = v54;
    v135 = v55;

    sub_10007C874(v45, v47, (v49 & 1), v56, v57, v58, v59, v60);
    v51, v61, v62, v63, v64, v65, v66, v67;
    result = MobileGestalt_copy_marketingNameString_obj();
    if (result)
    {
      v68 = result;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = v70;

      *&v148 = v69;
      *(&v148 + 1) = v71;
      v72 = Text.init<A>(_:)();
      v74 = v73;
      v76 = v75;
      v78 = v77;
      static Font.subheadline.getter();
      v79 = Text.font(_:)();
      v81 = v80;
      v131 = v82;
      v84 = v83;

      sub_10007C874(v72, v74, (v76 & 1), v85, v86, v87, v88, v89);
      v78, v90, v91, v92, v93, v94, v95, v96;
      LOBYTE(v74) = v132 & 1;
      v142 = v132 & 1;
      *&v143 = v136;
      *(&v143 + 1) = KeyPath;
      *&v144 = v139;
      BYTE8(v144) = v137;
      HIDWORD(v144) = *(v162 + 3);
      *(&v144 + 9) = v162[0];
      *&v145 = v33;
      *(&v145 + 1) = v35;
      *&v146 = v37;
      *(&v146 + 1) = v39;
      v147 = 0;
      LOBYTE(v152) = 0;
      v150 = v145;
      v151 = v146;
      v148 = v143;
      v149 = v144;
      v141 = v132 & 1;
      v97 = v131;
      v98 = (v131 & 1);
      v140 = v131 & 1;
      v99 = v143;
      v100 = v144;
      v101 = v146;
      v102 = v152;
      *(a2 + 32) = v145;
      *(a2 + 48) = v101;
      *a2 = v99;
      *(a2 + 16) = v100;
      v104 = v133;
      v103 = v134;
      *(a2 + 64) = v102;
      *(a2 + 72) = v103;
      *(a2 + 80) = v104;
      *(a2 + 88) = v74;
      v105 = v135;
      *(a2 + 96) = v135;
      *(a2 + 104) = v79;
      *(a2 + 112) = v81;
      *(a2 + 120) = v97 & 1;
      *(a2 + 128) = v84;
      sub_100044704(&v143, v153, &qword_1001FE928, &qword_100180C70);
      sub_10007C884(v103, v104, v74);

      sub_10007C884(v79, v81, v98);

      sub_10007C874(v79, v81, v98, v106, v107, v108, v109, v110);
      v84, v111, v112, v113, v114, v115, v116, v117;
      sub_10007C874(v103, v104, v142, v118, v119, v120, v121, v122);
      v105, v123, v124, v125, v126, v127, v128, v129;
      v153[0] = v136;
      v153[1] = KeyPath;
      v153[2] = v139;
      v154 = v137;
      *v155 = v162[0];
      *&v155[3] = *(v162 + 3);
      v156 = v33;
      v157 = v35;
      v158 = v37;
      v159 = v39;
      v160 = 0;
      return sub_10003DD84(v153, &qword_1001FE928, &qword_100180C70);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007C580@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007C5AC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10007C628()
{
  result = qword_1001FE8E0;
  if (!qword_1001FE8E0)
  {
    sub_10003C4E4(&qword_1001FE8D8, &qword_100180C08);
    sub_10007C6E0();
    sub_10005C71C(&qword_1001FE908, &qword_1001FE910, &qword_100186170, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8E0);
  }

  return result;
}

unint64_t sub_10007C6E0()
{
  result = qword_1001FE8E8;
  if (!qword_1001FE8E8)
  {
    sub_10003C4E4(&qword_1001FE8F0, &qword_100180C10);
    sub_10005C71C(&qword_1001FE8F8, &qword_1001FE900, &qword_100180C18, &protocol conformance descriptor for VStack<A>);
    sub_10005C71C(&qword_1001FD950, &qword_1001FD958, &unk_100180C20, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE8E8);
  }

  return result;
}

uint64_t sub_10007C7C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10007C7F0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

void sub_10007C874(uint64_t a1, DARootViewController *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a3)
  {
  }

  else
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t sub_10007C884(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10007C898()
{
  result = qword_1001FE930;
  if (!qword_1001FE930)
  {
    sub_10003C4E4(&qword_1001FE938, qword_100180C78);
    sub_10003C4E4(&qword_1001FE8D8, &qword_100180C08);
    sub_10007C628();
    swift_getOpaqueTypeConformance2();
    sub_10007C960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE930);
  }

  return result;
}

unint64_t sub_10007C960()
{
  result = qword_1001FE940;
  if (!qword_1001FE940)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FE940);
  }

  return result;
}

void sub_10007CA60()
{
  v2 = v0;
  v3 = [v0 view];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  v5 = [objc_opt_self() systemBackgroundColor];
  [v4 setBackgroundColor:v5];

  [v2 setModalInPresentation:1];
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = &v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
  v18 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 16];
  v182[0] = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
  v182[1] = v18;
  v182[2] = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 32];
  v183 = v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48];
  sub_10007D588(v182, v180);
  v26 = sub_100089588(0, v19, v20, v21, v22, v23, v24, v25);
  v28 = v27;
  sub_10007D5E4(v182);
  if (v28)
  {
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v26, v28);
    v30 = v29;
    v28, v29, v31, v32, v33, v34, v35, v36;
    v28 = String._bridgeToObjectiveC()();
    v30, v37, v38, v39, v40, v41, v42, v43;
  }

  [v6 setTitle:v28];

  v179 = v17[48];
  v44 = *(v17 + 1);
  v176 = *v17;
  v177 = v44;
  v178 = *(v17 + 2);
  if (v179 < 2u || v178 | *(&v178 + 1) | v176 | *(&v177 + 1) | v177 | *(&v176 + 1))
  {
    sub_10007D588(&v176, v180);
    v52 = sub_100089588(1, v45, v46, v47, v48, v49, v50, v51);
    v54 = v53;
    sub_10007D5E4(&v176);
    if (v54)
    {
      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v52, v54);
      v56 = v55;
      v54, v55, v57, v58, v59, v60, v61, v62;
      v54 = String._bridgeToObjectiveC()();
      v56, v63, v64, v65, v66, v67, v68, v69;
    }

    [v6 setMessage:v54];
  }

  else
  {
    v117 = [objc_allocWithZone(NSByteCountFormatter) init];
    [v117 setAllowedUnits:6];
    if (qword_1001FC7E0 != -1)
    {
      swift_once();
    }

    v118 = sub_1000F145C(qword_1002010E8);
    if ((v118 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v119 = [v117 stringFromByteCount:v118];
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;

    v123 = *(v17 + 1);
    v180[0] = *v17;
    v124 = *(v17 + 2);
    v180[1] = v123;
    v180[2] = v124;
    v181 = v17[48];
    sub_10007D588(v180, &aBlock);
    v132 = sub_100089588(1, v125, v126, v127, v128, v129, v130, v131);
    v54 = v133;
    sub_10007D5E4(v180);
    if (v54)
    {
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10017EC00;
      *(v141 + 56) = &type metadata for String;
      *(v141 + 64) = sub_10003DFBC();
      *(v141 + 32) = v120;
      *(v141 + 40) = v122;
      sub_1000494C8(0, 0, v141, v132, v54);
      v122 = v142;
      v54, v142, v143, v144, v145, v146, v147, v148;
      v141, v149, v150, v151, v152, v153, v154, v155;
      v54 = String._bridgeToObjectiveC()();
    }

    v122, v134, v135, v136, v137, v138, v139, v140;
    [v6 setMessage:v54];
  }

  v70 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v70)
  {
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
    v72 = v71;
    v73 = String._bridgeToObjectiveC()();
    v72, v74, v75, v76, v77, v78, v79, v80;
    [v6 setButtonTitle:v73];

    v174 = sub_10007D270;
    v175 = 0;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_100031FA8;
    v173 = &unk_1001C1DB0;
    v81 = _Block_copy(&aBlock);
LABEL_25:
    [v6 setButtonAction:v81];
    _Block_release(v81);
    return;
  }

  if (sub_1000660CC())
  {
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
    v83 = v82;
    v84 = String._bridgeToObjectiveC()();
    v83, v85, v86, v87, v88, v89, v90, v91;
    [v6 setButtonTitle:v84];

    v92 = swift_allocObject();
    *(v92 + 16) = v2;
    v174 = sub_10007D688;
    v175 = v92;
    aBlock = _NSConcreteStackBlock;
    v171 = 1107296256;
    v172 = sub_100031FA8;
    v173 = &unk_1001C1D88;
    v81 = _Block_copy(&aBlock);
    v93 = v2;
    goto LABEL_24;
  }

  v1 = OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction;
  v94 = *&v2[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction];
  if (!(v94 >> 62))
  {
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

LABEL_16:
    v28 = *&v2[v1];
    if ((v28 & 0xC000000000000001) == 0)
    {
      if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v95 = *(v28 + 32);

LABEL_19:
      v96 = *(v95 + 16);
      v97 = *(v95 + 24);

      sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v96, v97);
      v99 = v98;
      v97, v98, v100, v101, v102, v103, v104, v105;
      v106 = String._bridgeToObjectiveC()();
      v99, v107, v108, v109, v110, v111, v112, v113;
      [v6 setButtonTitle:v106];

      v114 = *&v2[v1];
      if ((v114 & 0xC000000000000001) != 0)
      {

        v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v114, v163, v164, v165, v166, v167, v168, v169;
        goto LABEL_22;
      }

      if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v115 = *(v114 + 32);

LABEL_22:
        v81 = *(v115 + 40);
        v116 = *(v115 + 48);
        sub_10003E418(v81, v116);

        if (!v81)
        {
          goto LABEL_25;
        }

        v174 = v81;
        v175 = v116;
        aBlock = _NSConcreteStackBlock;
        v171 = 1107296256;
        v172 = sub_100031FA8;
        v173 = &unk_1001C1D38;
        v81 = _Block_copy(&aBlock);
LABEL_24:

        goto LABEL_25;
      }

      goto LABEL_39;
    }

LABEL_36:

    v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v28, v156, v157, v158, v159, v160, v161, v162;
    goto LABEL_19;
  }

  if (_CocoaArrayWrapper.endIndex.getter() >= 1)
  {
    goto LABEL_16;
  }
}

void sub_10007D2B8(uint64_t result)
{
  v1 = (result + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert);
  if (*(result + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48) >= 2u)
  {
    v3 = v1[2];
    v2 = v1[3];
    v4 = *v1;
    v5 = v1[1];
    v6 = v1[4] | v1[5];
    if (v6 | v4 | v2 | v3 | v5)
    {
      v7 = v6 | v2 | v3 | v5;
      if (v4 == 1 && v7 == 0)
      {
        sub_1000F6FF8(11);
      }
    }

    else
    {
      sub_1000F6FF8(10);
    }
  }
}

void sub_10007D31C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007D3B8()
{
  sub_10007D4DC(*(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 8), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 16), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 24), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 32), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 40), *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert + 48));
  *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction), v1, v2, v3, v4, v5, v6, v7;
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView);
}

id sub_10007D418(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FullscreenAlertViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10007D4DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {

    sub_10003C52C(a3, a4);
    v9 = a5;
    v10 = a6;
  }

  else
  {
    if (a7)
    {
      return result;
    }

    sub_10003C52C(a2, a3);
    v9 = a4;
    v10 = a5;
  }

  return sub_10003C52C(v9, v10);
}

uint64_t sub_10007D638(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007D650()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_10007D6A0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v0 setFont:v1];

  [v0 setNumberOfLines:0];
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection] != 1;

  [v0 setTextAlignment:2 * v3];
  v4 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor:v4];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 setAdjustsFontForContentSizeCategory:1];
  return v0;
}

uint64_t sub_10007D7F4()
{
  v1 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  swift_beginAccess();
  sub_10007E58C(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10004E6A0(v3);
  }

  (*(v5 + 32))(v7, v3, v4);
  v10 = [objc_allocWithZone(NSDateFormatter) init];
  [v10 setDateStyle:1];
  [v10 setTimeStyle:1];
  [v10 setDoesRelativeDateFormatting:1];
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v13 = [v10 stringFromDate:isa];

  if (!v13)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v13 = String._bridgeToObjectiveC()();
    v15, v16, v17, v18, v19, v20, v21, v22;
  }

  [v11 setText:v13];

  return (*(v5 + 8))(v7, v4);
}

id sub_10007DA60()
{
  [v0 setSelectionStyle:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  [v1 setAxis:0];
  [v1 setDistribution:1];
  [v1 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];
  [v1 setLayoutMarginsRelativeArrangement:1];

  return [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
}

void sub_10007DB18()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel]];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel]];
  v2 = [v0 contentView];
  [v2 addSubview:v1];
}

void sub_10007DBC4()
{
  v1 = v0;
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView];
  v5 = [v4 bottomAnchor];
  v6 = [v1 contentView];
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v4 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v3 + 40) = v12;
  v13 = [v4 trailingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  v17 = [v4 leadingAnchor];
  v18 = [v1 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v3 + 56) = v20;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3, v21, v22, v23, v24, v25, v26, v27;
  [v2 activateConstraints:isa];
}

id sub_10007DE78(uint64_t a1, uint64_t a2, DARootViewController *a3)
{
  v6 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView;
  *&v3[v6] = [objc_allocWithZone(UIStackView) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_defaultSpacing] = 0x4030000000000000;
  v7 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  [v8 setTextAlignment:4];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  *&v3[v7] = v8;
  v10 = &v3[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel;
  *&v3[v11] = sub_10007D6A0();
  v12 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
    a3, v15, v16, v17, v18, v19, v20, v21;
  }

  else
  {
    v14 = 0;
  }

  v24.receiver = v3;
  v24.super_class = type metadata accessor for SelfServiceSessionHistoryCell(0);
  v22 = objc_msgSendSuper2(&v24, "initWithStyle:reuseIdentifier:", a1, v14);

  return v22;
}

id sub_10007E0B8(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_rootStackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_defaultSpacing] = 0x4030000000000000;
  v4 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v5 setFont:v6];

  [v5 setNumberOfLines:0];
  [v5 setTextAlignment:4];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setAdjustsFontForContentSizeCategory:1];
  *&v1[v4] = v5;
  v7 = &v1[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_dateLabel;
  *&v1[v8] = sub_10007D6A0();
  v9 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SelfServiceSessionHistoryCell(0);
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t sub_10007E2AC()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName + 8), v1, v2, v3, v4, v5, v6, v7;

  v8 = v0 + OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;

  return sub_10004E6A0(v8);
}

id sub_10007E320()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSessionHistoryCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SelfServiceSessionHistoryCell(uint64_t a1)
{
  result = qword_1001FE9D8;
  if (!qword_1001FE9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007E42C(uint64_t a1)
{
  sub_10007E4E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10007E4E8(uint64_t a1)
{
  if (!qword_1001FE9E8)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1001FE9E8);
    }
  }
}

unint64_t sub_10007E540()
{
  result = qword_1001FD550;
  if (!qword_1001FD550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD550);
  }

  return result;
}

uint64_t sub_10007E58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD540, &unk_10017F278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10007E5FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount;
  if (*&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] != a1)
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
    v5 = swift_allocObject();
    v6 = *&v1[v2];
    *(v5 + 16) = xmmword_10017EC00;
    *(v5 + 56) = &type metadata for Int;
    *(v5 + 64) = &protocol witness table for Int;
    *(v5 + 32) = v6;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("Total Card Count = %d", v29);
    v5, v7, v8, v9, v10, v11, v12, v13;
    if (*&v1[v2] <= 0)
    {
      v14 = [v1 presentedViewController];
      v15 = v14;
      if (qword_1001FC6A0 == -1)
      {
        if (v14)
        {
          goto LABEL_8;
        }
      }

      else
      {
        swift_once();
        if (v15)
        {
LABEL_8:
          v16 = qword_10020A358;
          sub_10003E110(0, &qword_1001FDE30, UIViewController_ptr);
          v17 = v16;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
            return;
          }
        }
      }

      if ((*&v1[v2] & 0x8000000000000000) != 0)
      {
        v19 = static os_log_type_t.fault.getter();
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_10017EC10;
        *(v20 + 56) = &type metadata for Int;
        *(v20 + 64) = &protocol witness table for Int;
        *(v20 + 32) = a1;
        v21 = *&v1[v2];
        *(v20 + 96) = &type metadata for Int;
        *(v20 + 104) = &protocol witness table for Int;
        *(v20 + 72) = v21;
        os_log(_:dso:log:type:_:)("Dashboard view somehow was told it had negative device cards (from %@ to %@)!", 77, 2, &_mh_execute_header, v4, v19, v20);
        v20, v22, v23, v24, v25, v26, v27, v28;
      }

      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(1, 1);
    }
  }
}

void sub_10007E8A0(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  v18 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount];
  if (v18 != a1)
  {
    if (v18 < 1)
    {
      v35 = v4;
      v36 = v15;
      v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v1 action:"doneTappedWithSender:"];
      v26 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v25;

      if (a1 >= 1)
      {
        v27 = sub_100081840();
        if (v27 != 29)
        {
          v28 = v27;
          sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
          v34 = v1;
          v29 = static OS_dispatch_queue.main.getter();
          static DispatchTime.now()();
          + infix(_:_:)();
          v33 = *(v11 + 8);
          v33(v13, v36);
          v30 = swift_allocObject();
          *(v30 + 16) = v28;
          aBlock[4] = sub_100081B28;
          aBlock[5] = v30;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100031FA8;
          aBlock[3] = &unk_1001C2008;
          v31 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = &_swiftEmptyArrayStorage;
          sub_10005BD2C();
          sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
          sub_1000446A0();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
          v1 = v34;
          _Block_release(v31);

          (*(v35 + 8))(v6, v3);
          (*(v37 + 8))(v9, v7);
          v33(v17, v36);
        }
      }
    }

    else
    {
      v19 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelTappedWithSender:"];
      v20 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v19;
    }

    v21 = sub_1000660CC();
    v22 = [v1 navigationItem];
    v23 = v22;
    if (v21)
    {
      v24 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
      [v23 setLeftBarButtonItem:v24];
    }

    else
    {
      [v22 setLeftBarButtonItem:0];
    }
  }
}

void sub_10007EEA8()
{
  v1 = v0;
  v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3._countAndFlagsBits = 4342623;
    v3._object = 0xE300000000000000;
    String.append(_:)(v3);
  }

  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0x54534F4E47414944, 0xEB00000000534349);
  v5 = v4;
  0xEB00000000534349, v4, v6, v7, v8, v9, v10, v11;
  v12 = String._bridgeToObjectiveC()();
  v5, v13, v14, v15, v16, v17, v18, v19;
  [v1 setTitle:v12];

  v20 = [v1 navigationController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 navigationBar];

    [v22 setPrefersLargeTitles:1];
  }

  v23 = [v1 navigationController];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 navigationBar];

    v26 = [objc_opt_self() systemBackgroundColor];
    [v25 setBarTintColor:v26];
  }

  v27 = [v1 navigationController];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 navigationBar];

    v30 = [objc_allocWithZone(UIImage) init];
    [v29 setShadowImage:v30];
  }

  v31 = [v1 view];
  if (!v31)
  {
    __break(1u);
    goto LABEL_36;
  }

  v32 = v31;
  v33 = objc_opt_self();
  v34 = [v32 semanticContentAttribute];

  v35 = [v33 userInterfaceLayoutDirectionForSemanticContentAttribute:v34];
  v36 = [v1 navigationController];
  if (v35)
  {
    if (!v36)
    {
      goto LABEL_16;
    }

    v37 = v36;
    v38 = [v36 navigationBar];

    sub_1000A4A08();
    [v38 setLayoutMargins:{0.0, 0.0, 0.0, v39 + -2.0}];
  }

  else
  {
    if (!v36)
    {
      goto LABEL_16;
    }

    v40 = v36;
    v38 = [v36 navigationBar];

    sub_1000A4A08();
    [v38 setLayoutMargins:{0.0, v41 + -2.0, 0.0, 0.0}];
  }

LABEL_16:
  v42 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelTappedWithSender:"];
  v43 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = v42;

  v44 = [v1 tableView];
  if (!v44)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v45 = v44;
  type metadata accessor for CardViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = String._bridgeToObjectiveC()();
  [v45 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v47];

  v48 = [v1 tableView];
  if (!v48)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v49 = v48;
  type metadata accessor for CardViewSessionCell();
  v50 = swift_getObjCClassFromMetadata();
  v51 = String._bridgeToObjectiveC()();
  [v49 registerClass:v50 forCellReuseIdentifier:v51];

  v52 = [v1 tableView];
  if (!v52)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v53 = v52;
  type metadata accessor for CardViewPersistentCell();
  v54 = swift_getObjCClassFromMetadata();
  v55 = String._bridgeToObjectiveC()();
  [v53 registerClass:v54 forCellReuseIdentifier:v55];

  v56 = [v1 tableView];
  if (!v56)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v57 = v56;
  [v56 setSeparatorStyle:0];

  v58 = [v1 tableView];
  if (!v58)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v59 = v58;
  [v58 setAllowsSelection:0];

  v60 = [v1 tableView];
  if (!v60)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  [v60 setAlwaysBounceVertical:1];

  v62 = [v1 tableView];
  if (!v62)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v63 = v62;
  [v62 setShowsVerticalScrollIndicator:0];

  v64 = [v1 tableView];
  if (!v64)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v65 = v64;
  [v64 setDelegate:v1];

  v66 = [v1 tableView];
  if (!v66)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v67 = v66;
  [v66 setDataSource:*&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager]];

  v68 = [v1 tableView];
  if (!v68)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v69 = v68;
  [v68 setRowHeight:UITableViewAutomaticDimension];

  v70 = [v1 tableView];
  if (!v70)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v71 = v70;
  [v70 setEstimatedRowHeight:500.0];

  v72 = [v1 tableView];
  if (!v72)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v73 = v72;
  [v72 setEstimatedSectionFooterHeight:0.0];

  v74 = [v1 tableView];
  if (!v74)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v75 = v74;
  [v74 setContentInsetAdjustmentBehavior:0];

  v76 = [v1 tableView];
  if (!v76)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v77 = v76;
  v78 = [v1 tableView];
  if (!v78)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v79 = v78;
  [v78 bounds];
  v81 = v80;

  v82 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, v81, 15.0}];
  [v77 setTableHeaderView:v82];

  v83 = [v1 tableView];
  if (!v83)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v84 = v83;
  v85 = [objc_opt_self() systemBackgroundColor];
  [v84 setBackgroundColor:v85];
}

void sub_10007F6C0()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (qword_1001FC850 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A650;
  v29 = objc_opt_self();
  v4 = [v29 mainQueue];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v34 = sub_1000819C8;
  v35 = v5;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100060B2C;
  v33 = &unk_1001C1E78;
  v6 = _Block_copy(&aBlock);
  v7 = v0;

  v8 = [v2 addObserverForName:v3 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  v9 = [v1 defaultCenter];
  if (qword_1001FC860 != -1)
  {
    swift_once();
  }

  v10 = qword_10020A660;
  v11 = [v7 tableView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 dataSource];

    v14 = [v29 mainQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v7;
    v34 = sub_1000819E8;
    v35 = v15;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100060B2C;
    v33 = &unk_1001C1EC8;
    v16 = _Block_copy(&aBlock);
    v17 = v7;

    v18 = [v9 addObserverForName:v10 object:v13 queue:v14 usingBlock:v16];
    _Block_release(v16);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v19 = [v1 defaultCenter];
    if (qword_1001FC858 != -1)
    {
      swift_once();
    }

    v20 = qword_10020A658;
    v21 = [v17 tableView];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 dataSource];

      v24 = [v29 mainQueue];
      v25 = swift_allocObject();
      *(v25 + 16) = v17;
      v34 = sub_1000819F0;
      v35 = v25;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_100060B2C;
      v33 = &unk_1001C1F18;
      v26 = _Block_copy(&aBlock);
      v27 = v17;

      v28 = [v19 addObserverForName:v20 object:v23 queue:v24 usingBlock:v26];
      _Block_release(v26);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10007FB5C(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  *&v23 = 0xD000000000000012;
  *(&v23 + 1) = 0x800000010018BB50;
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v12 = sub_100064B74(v22), (v5 & 1) == 0))
  {
    v4, v5, v6, v7, v8, v9, v10, v11;
    sub_10003DB48(v22);
LABEL_8:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  sub_10003E010(*(v4 + 56) + 32 * v12, &v23);
  sub_10003DB48(v22);
  v4, v13, v14, v15, v16, v17, v18, v19;
  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_10005173C(&v23);
    goto LABEL_10;
  }

  if (!swift_dynamicCast())
  {
LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v20 = v22[0];
LABEL_11:
  v21 = *(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount);
  *(a2 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount) = v20;
  sub_10007E8A0(v21);
}

void sub_10007FC74(uint64_t a1, void *a2)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Reloading all data", 18, 2, &_mh_execute_header, v3, v4, &_swiftEmptyArrayStorage);
  v5 = [a2 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10007FD48(uint64_t a1, char *a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    strcpy(v45, "cardActionsKey");
    HIBYTE(v45[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v12 = sub_100064B74(&v39), (v5 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v12, v46);
      sub_10003DB48(&v39);
      sub_10003C49C(&qword_1001FEAC0, &qword_100180D38);
      if (swift_dynamicCast())
      {
        v20 = v45[0];
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        v21 = qword_10020A4F8;
        v22 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Beginning card arrangement changes.", 35, 2, &_mh_execute_header, v21, v22, &_swiftEmptyArrayStorage);
        v23 = sub_10015147C();
        v24 = *&a2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount];
        *&a2[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = v23;
        sub_10007E5FC(v24);
        v25 = [a2 tableView];
        if (v25)
        {
          v33 = v25;
          v4, v26, v27, v28, v29, v30, v31, v32;
          v34 = swift_allocObject();
          *(v34 + 16) = v20;
          *(v34 + 24) = a2;
          v35 = swift_allocObject();
          *(v35 + 16) = sub_100081A38;
          *(v35 + 24) = v34;
          v43 = sub_10003DAA4;
          v44 = v35;
          v39 = _NSConcreteStackBlock;
          v40 = 1107296256;
          v41 = sub_100060C48;
          v42 = &unk_1001C1F90;
          v36 = _Block_copy(&v39);
          v37 = a2;

          v43 = sub_100080934;
          v44 = 0;
          v39 = _NSConcreteStackBlock;
          v40 = 1107296256;
          v41 = sub_100084F94;
          v42 = &unk_1001C1FB8;
          v38 = _Block_copy(&v39);
          [v33 performBatchUpdates:v36 completion:v38];
          _Block_release(v38);
          _Block_release(v36);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        v4, v13, v14, v15, v16, v17, v18, v19;
      }
    }

    else
    {
      v4, v5, v6, v7, v8, v9, v10, v11;
      sub_10003DB48(&v39);
    }
  }
}

void sub_10008006C(uint64_t a1, void *a2)
{
  v110 = a2;
  v105 = type metadata accessor for Move(0);
  __chkstk_darwin(v105);
  v100 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v104 = &v97 - v5;
  v108 = type metadata accessor for Remove(0);
  __chkstk_darwin(v108);
  v102 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v97 - v8;
  v111 = type metadata accessor for Add(0);
  __chkstk_darwin(v111);
  v11 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v97 - v13;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return;
  }

  v16 = a1 + 32;
  v107 = xmmword_10017EF10;
  v106 = xmmword_10017EC00;
  v99 = xmmword_100180D00;
  v103 = v9;
  v109 = &v97 - v13;
  v98 = v11;
  while (1)
  {
    sub_10004476C(v16, v112);
    sub_10003C49C(&qword_1001FEAC8, &unk_100180D40);
    if (swift_dynamicCast())
    {
      break;
    }

    if (swift_dynamicCast())
    {
      v46 = v9;
      v47 = v102;
      sub_100081A50(v46, v102, type metadata accessor for Remove);
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v48 = qword_10020A4F8;
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v49 = swift_allocObject();
      *(v49 + 16) = v107;
      v51 = *v47;
      v50 = *(v47 + 1);
      *(v49 + 56) = &type metadata for String;
      *(v49 + 64) = sub_10003DFBC();
      *(v49 + 32) = v51;
      *(v49 + 40) = v50;
      v52 = *(v108 + 20);

      v53 = IndexPath.section.getter();
      *(v49 + 96) = &type metadata for Int;
      *(v49 + 104) = &protocol witness table for Int;
      *(v49 + 72) = v53;
      v54 = IndexPath.row.getter();
      *(v49 + 136) = &type metadata for Int;
      *(v49 + 144) = &protocol witness table for Int;
      *(v49 + 112) = v54;
      v55 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Remove: [%@] %d/%d", 18, 2, &_mh_execute_header, v48, v55, v49);
      v49, v56, v57, v58, v59, v60, v61, v62;
      v63 = [v110 tableView];
      if (!v63)
      {
        goto LABEL_22;
      }

      v64 = v63;
      sub_10003C49C(&qword_1001FEAE0, &qword_100180D50);
      v65 = type metadata accessor for IndexPath();
      v66 = *(v65 - 8);
      v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v106;
      (*(v66 + 16))(v68 + v67, &v47[v52], v65);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v68, v70, v71, v72, v73, v74, v75, v76;
      [v64 deleteRowsAtIndexPaths:isa withRowAnimation:100];

      sub_100081AB8(v47, type metadata accessor for Remove);
      v9 = v103;
      goto LABEL_3;
    }

    if (swift_dynamicCast())
    {
      v77 = v100;
      sub_100081A50(v104, v100, type metadata accessor for Move);
      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      v101 = qword_10020A4F8;
      sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
      v78 = swift_allocObject();
      *(v78 + 16) = v99;
      v80 = *v77;
      v79 = v77[1];
      *(v78 + 56) = &type metadata for String;
      *(v78 + 64) = sub_10003DFBC();
      *(v78 + 32) = v80;
      *(v78 + 40) = v79;

      v81 = IndexPath.section.getter();
      *(v78 + 96) = &type metadata for Int;
      *(v78 + 104) = &protocol witness table for Int;
      *(v78 + 72) = v81;
      v82 = IndexPath.row.getter();
      *(v78 + 136) = &type metadata for Int;
      *(v78 + 144) = &protocol witness table for Int;
      *(v78 + 112) = v82;
      v83 = IndexPath.section.getter();
      *(v78 + 176) = &type metadata for Int;
      *(v78 + 184) = &protocol witness table for Int;
      *(v78 + 152) = v83;
      v84 = IndexPath.row.getter();
      *(v78 + 216) = &type metadata for Int;
      *(v78 + 224) = &protocol witness table for Int;
      *(v78 + 192) = v84;
      v85 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Move: [%@] %d/%d => %d/%d", 25, 2, &_mh_execute_header, v101, v85, v78);
      v78, v86, v87, v88, v89, v90, v91, v92;
      v93 = [v110 tableView];
      if (!v93)
      {
        goto LABEL_23;
      }

      v94 = v93;
      v95 = IndexPath._bridgeToObjectiveC()().super.isa;
      v96 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v94 moveRowAtIndexPath:v95 toIndexPath:v96];

      sub_100081AB8(v77, type metadata accessor for Move);
      v9 = v103;
      v14 = v109;
      v11 = v98;
    }

LABEL_4:
    sub_100044554(v112);
    v16 += 40;
    if (!--v15)
    {
      return;
    }
  }

  sub_100081A50(v14, v11, type metadata accessor for Add);
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v17 = qword_10020A4F8;
  sub_10003C49C(&unk_1001FEAD0, &qword_10017ED30);
  v18 = swift_allocObject();
  *(v18 + 16) = v107;
  v20 = *v11;
  v19 = v11[1];
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_10003DFBC();
  *(v18 + 32) = v20;
  *(v18 + 40) = v19;
  v21 = *(v111 + 20);

  v22 = IndexPath.section.getter();
  *(v18 + 96) = &type metadata for Int;
  *(v18 + 104) = &protocol witness table for Int;
  *(v18 + 72) = v22;
  v23 = IndexPath.row.getter();
  *(v18 + 136) = &type metadata for Int;
  *(v18 + 144) = &protocol witness table for Int;
  *(v18 + 112) = v23;
  v24 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("Add: [%@] %d/%d", 15, 2, &_mh_execute_header, v17, v24, v18);
  v18, v25, v26, v27, v28, v29, v30, v31;
  v32 = [v110 tableView];
  if (v32)
  {
    v33 = v32;
    sub_10003C49C(&qword_1001FEAE0, &qword_100180D50);
    v34 = type metadata accessor for IndexPath();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = v106;
    (*(v35 + 16))(v37 + v36, v11 + v21, v34);
    v38 = Array._bridgeToObjectiveC()().super.isa;
    v37, v39, v40, v41, v42, v43, v44, v45;
    [v33 insertRowsAtIndexPaths:v38 withRowAnimation:100];

    sub_100081AB8(v11, type metadata accessor for Add);
LABEL_3:
    v14 = v109;
    goto LABEL_4;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t sub_100080934(uint64_t a1)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  v2 = static os_log_type_t.default.getter();

  return os_log(_:dso:log:type:_:)("Finished card arrangement changes.", 34, 2, &_mh_execute_header, v1, v2, &_swiftEmptyArrayStorage);
}

void sub_1000809C4(uint64_t a1)
{
  v2 = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DashboardViewController();
  objc_msgSendSuper2(&v7, "viewWillAppear:", v2 & 1);
  v3 = sub_1000660CC();
  v4 = [v1 navigationItem];
  v5 = v4;
  if (v3)
  {
    v6 = *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem];
    [v5 setLeftBarButtonItem:v6];
  }

  else
  {
    [v4 setLeftBarButtonItem:0];
  }
}

uint64_t sub_100080AD4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager);
  v4 = OBJC_IVAR____TtC11Diagnostics11CardManager_cardsInView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100068EB8();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v5 + 56) + 8 * v6);
  if (v8 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    v10 = v2;
    if (v2)
    {
LABEL_6:
      if (v10 == 1)
      {
        v11 = *(v3 + v4);
        if (*(v11 + 16))
        {
          v12 = sub_100068EB8();
          if (v13)
          {
            v14 = *(*(v11 + 56) + 8 * v12);
            v15 = v14 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v9 > 0 || v15 >= 1)
            {
              v17 = 0x55535F454C505041;
              v18 = 0xED000054524F5050;
LABEL_19:
              sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v17, v18);
              v20 = v19;
              sub_100079A64();
              v21 = StringProtocol.localizedUppercase.getter();
              v20, v22, v23, v24, v25, v26, v27, v28;
              return v21;
            }
          }
        }
      }

      return 0;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v2;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  if (v9 >= 1)
  {
    v18 = 0x800000010018CB00;
    v17 = 0xD000000000000010;
    goto LABEL_19;
  }

  return 0;
}

_BYTE *sub_100080C98(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for DashboardSectionHeaderView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_100080AD4(a1);
  sub_100149A00(v5, v6, v7, v8, v9, v10, v11, v12);
  if (!a1)
  {
    v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_showsButton] = 1;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = v4;
    v14 = &v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
    v15 = *&v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction];
    v16 = *&v4[OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_buttonAction + 8];
    *v14 = sub_10008196C;
    v14[1] = v13;
    v17 = v2;
    v18 = v4;
    sub_10003C52C(v15, v16);
  }

  return v4;
}

void sub_100080D64(void *a1, uint64_t a2, __n128 a3)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter() && (Session.status.getter(), , v5 = SessionStatus.rawValue.getter(), v5 == SessionStatus.rawValue.getter()))
  {
    v6 = *(a2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = v6;
    v9 = a1;
    v10 = sub_1000BC5AC(sub_1000819AC, v7, sub_100081C3C, 0, v6);
  }

  else
  {
    v11 = *(a2 + OBJC_IVAR____TtC11Diagnostics26DashboardSectionHeaderView_button);
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v13 = a1;
    v8 = v11;
    v10 = sub_1000BC190(sub_100081C58, v12, sub_100081C3C, 0, v11);
  }

  v14 = v10;

  [v14 scheduleModalPresentationWithPriority:0 animated:1 presentationCompletion:0];
}

uint64_t sub_100080F30(__n128 a1)
{
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (SessionManager.currentSession.getter())
  {
    Session.cancel()();
  }

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 1);
  sub_100125854(1, 0, 1, 0, 0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

uint64_t sub_100081058()
{
  sub_100125854(1, 0, 1, 0, 0);
  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

id sub_1000813CC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DashboardViewController();
  return objc_msgSendSuper2(&v5, "initWithStyle:", a1);
}

id sub_1000814C8(uint64_t a1, DARootViewController *a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v3[v6] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
    a2, v8, v9, v10, v11, v12, v13, v14;
  }

  else
  {
    v7 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for DashboardViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v7, a3);

  return v15;
}

id sub_100081644(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_sectionPadding] = 0x4034000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardCellEstimatedHeight] = 0x407F400000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_largeTitleToTableViewSpacing] = 0x402E000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_viewWasEverPresented] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics23DashboardViewController_cardManager;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for CardManager()) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_totalCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_activeCardCount] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DashboardViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_10008175C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics23DashboardViewController_leftBarButtonItem);
}

id sub_10008179C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DashboardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100081840()
{
  if (sub_1000660CC())
  {
    return 12;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  result = 22;
  if ((v3 & 1) == 0)
  {
    v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v4)
    {
      return 22;
    }

    else
    {
      return 29;
    }
  }

  return result;
}

uint64_t sub_10008192C()
{

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100081974()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_1000819D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000819F8(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 32, 7, v9);
}

uint64_t sub_100081A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100081AB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100081B38(uint64_t a1)
{
  v3 = [v1 tableView];
  if (!v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 dataSource];

  if (v5)
  {
    v6 = [v1 tableView];
    if (v6)
    {
      v7 = v6;
      [v5 tableView:v6 numberOfRowsInSection:a1];
      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_7;
  }
}

id sub_100081C5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_assessorManager;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A5F8;
  *&v1[v2] = qword_10020A5F8;
  v4 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_deviceMotionProvider;
  type metadata accessor for DeviceMotionProvider();
  swift_allocObject();
  v5 = v3;
  *&v1[v4] = sub_100044970(0.01);
  *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton] = 0;
  v6 = [objc_opt_self() configurationWithScale:3];
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() _systemImageNamed:v7 withConfiguration:v6];

  v9 = sub_100049C98(0xD000000000000021, 0x800000010018CD40);
  v11 = v10;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v9, v10);
  v13 = v12;
  v11, v12, v14, v15, v16, v17, v18, v19;
  v20 = String._bridgeToObjectiveC()();
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_100049C98(0xD000000000000024, 0x800000010018CD70);
  v30 = v29;
  sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, v28, v29);
  v32 = v31;
  v30, v31, v33, v34, v35, v36, v37, v38;
  v39 = String._bridgeToObjectiveC()();
  v32, v40, v41, v42, v43, v44, v45, v46;
  v49.receiver = v1;
  v49.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  v47 = objc_msgSendSuper2(&v49, "initWithTitle:detailText:icon:contentLayout:", v20, v39, v8, 2);

  return v47;
}

void sub_100081EA8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = [v0 navigationController];
  if (v2)
  {
    v3 = v2;
    [v2 setNavigationBarHidden:0 animated:1];
  }

  v4 = [v1 navigationItem];
  [v4 setHidesBackButton:1];

  sub_10003E110(0, &qword_1001FD3B8, UIBarButtonItem_ptr);
  sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v5;
  v14.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v14.is_nil = 0;
  v6.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v14, v15).super.super.isa;
  v7 = OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton;
  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton];
  *&v1[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton] = v6;

  LODWORD(v4) = _UISolariumEnabled();
  v9 = [v1 navigationItem];
  v10 = *&v1[v7];
  v11 = &selRef_setLeftBarButtonItem_;
  if (!v4)
  {
    v11 = &selRef_setRightBarButtonItem_;
  }

  [v9 *v11];
}

void sub_100082080(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1000EC128(4);
    *(swift_allocObject() + 16) = v3;
    v4 = v3;
    v5 = [v4 navigationItem];
    v6 = [v5 rightBarButtonItem];

    sub_100088E48(0, v6);

    v7 = *&v4[OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton];
    if (v7)
    {
      v8 = v7;
      [v8 setEnabled:0];
    }
  }
}

double sub_1000821B4()
{
  v0 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_100180DC8, v5);

  return result;
}

void sub_1000824D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10003C49C(&unk_1001FFE20, &unk_10017ED10);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;

    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    v11[5] = a1;
    sub_1000539D8(0, 0, v5, &unk_100180DB0, v11);
  }
}

uint64_t sub_100082640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1000826D8, v7, v6);
}

uint64_t sub_1000826D8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_10008277C;
  v2 = *(v0 + 24);

  return sub_100138B58(v2);
}

uint64_t sub_10008277C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100082918;
  }

  else
  {
    v5 = sub_1000828B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000828B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100082918()
{

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] Failed to send device attitude update to peer: %@", v4, 0xCu);
    sub_100082D10(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

id sub_100082B14(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CosmeticAssessmentBackCaptureViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100082BC8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100082C08()
{
  swift_unknownObjectRelease();

  *(v0 + 40), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 48, 7, v8);
}

uint64_t sub_100082C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003DEC8;

  return sub_100082640(a1, v4, v5, v7, v6);
}

uint64_t sub_100082D10(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF0C0, &unk_10017ED00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100082D80()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

id sub_100082DB8()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics43CosmeticAssessmentBackCaptureViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_100082DE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7, v1);
}

uint64_t sub_100082E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

void sub_100082EEC()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 systemBackgroundColor];
    [v4 setBackgroundColor:v6];

    [*&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setContentMode:2];
    [v7 setClipsToBounds:1];
    v8 = objc_opt_self();
    v9 = [v8 configurationWithPointSize:30.0];
    v63 = v5;
    v10 = [v5 systemGrayColor];
    v11 = [v8 configurationWithHierarchicalColor:v10];

    v62 = v9;
    v12 = [v11 configurationByApplyingConfiguration:v9];

    if (_UISolariumEnabled())
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0x800000010018CF60;
    }

    v14 = v12;
    v15 = String._bridgeToObjectiveC()();
    v13, v16, v17, v18, v19, v20, v21, v22;
    v23 = [objc_opt_self() systemImageNamed:v15 withConfiguration:v14];

    v61 = v14;
    v24 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton];
    [v24 setClipsToBounds:1];
    [v24 setImage:v23 forState:0];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    sub_10003E110(0, &qword_1002023B0, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v24 addAction:v25 forControlEvents:64];

    if (_UISolariumEnabled())
    {
      static _Glass._GlassVariant.regular.getter();
      v65 = type metadata accessor for _Glass();
      v66 = &protocol witness table for _Glass;
      sub_10005BAD0(v64);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
      [v24 _setCornerRadius:kCALayerCornerRadiusAutomaticPill];
    }

    v26 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton];
    sub_1000494C8(0, 0, &_swiftEmptyArrayStorage, 0xD000000000000010, 0x800000010018CF80);
    v28 = v27;
    v29 = String._bridgeToObjectiveC()();
    v28, v30, v31, v32, v33, v34, v35, v36;
    [v26 setTitle:v29 forState:0];

    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v26 addAction:v37 forControlEvents:64];

    if (_UISolariumEnabled())
    {
      static _Glass._GlassVariant.regular.getter();
      v65 = type metadata accessor for _Glass();
      v66 = &protocol witness table for _Glass;
      sub_10005BAD0(v64);
      _Glass.init(_:smoothness:)();
      UIView._background.setter();
    }

    v38 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
    [v38 setShowsVerticalScrollIndicator:0];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = _UISolariumEnabled();
    v40 = &UIFontTextStyleTitle1;
    if (!v39)
    {
      v40 = &UIFontTextStyleLargeTitle;
    }

    v41 = *v40;
    v42 = objc_opt_self();
    v43 = [v42 preferredFontForTextStyle:v41];

    v44 = [v43 fontDescriptor];
    v45 = [v44 fontDescriptorWithSymbolicTraits:2];

    if (v45)
    {
      v46 = [v42 fontWithDescriptor:v45 size:0.0];

      v43 = v46;
    }

    v47 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel];
    [v47 setFont:v43];
    [v47 setNumberOfLines:0];
    if (_UISolariumEnabled())
    {
      v48 = 4;
    }

    else
    {
      v48 = 1;
    }

    [v47 setTextAlignment:v48];
    [v47 setAdjustsFontForContentSizeCategory:1];
    [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel];
    [v49 setNumberOfLines:0];
    v50 = _UISolariumEnabled();
    v51 = UIFontTextStyleTitle2;
    if (!v50)
    {
      v51 = UIFontTextStyleCallout;
    }

    v52 = v51;
    v53 = [v42 preferredFontForTextStyle:v52];

    [v49 setFont:v53];
    if (_UISolariumEnabled())
    {
      v54 = 4;
    }

    else
    {
      v54 = 1;
    }

    [v49 setTextAlignment:v54];
    v55 = _UISolariumEnabled();
    v56 = &selRef_secondaryLabelColor;
    if (!v55)
    {
      v56 = &selRef_labelColor;
    }

    v57 = [v63 *v56];
    [v49 setTextColor:v57];

    [v49 setAdjustsFontForContentSizeCategory:1];
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    v58 = *&v1[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel];
    v59 = [v42 preferredFontForTextStyle:UIFontTextStyleCallout];
    [v58 setFont:v59];

    v60 = [v63 systemGrayColor];
    [v58 setTextColor:v60];

    [v58 setNumberOfLines:0];
    [v58 setTextAlignment:1];
    [v58 setAdjustsFontForContentSizeCategory:1];
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100083760(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

double sub_1000837C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v6 = *(v4 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticHandler);
    v7 = v4;

    v6();
  }

  return result;
}

void sub_100083880()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView]];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
  [v4 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel]];
  [v4 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel]];
  v5 = [v0 view];
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [v5 addSubview:v4];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel]];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v9 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton]];

  v11 = [v0 view];
  if (!v11)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v12 = v11;
  [v11 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton]];
}

void sub_100083A34()
{
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100180DD0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView];
  v3 = [v2 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v1 + 32) = v7;
  v8 = [v2 leadingAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v9;
  v11 = [v9 leadingAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v1 + 40) = v12;
  v13 = [v2 trailingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = v14;
  v16 = [v14 trailingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v1 + 48) = v17;
  v18 = [v2 heightAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v19;
  v21 = [v19 heightAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 multiplier:0.35];
  *(v1 + 56) = v22;
  v23 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton];
  v24 = [v23 topAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = [v24 constraintEqualToAnchor:v27 constant:20.0];
  *(v1 + 64) = v28;
  v29 = [v23 trailingAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:-20.0];
  *(v1 + 72) = v33;
  v34 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView];
  v35 = [v34 topAnchor];
  v36 = [v2 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v1 + 80) = v37;
  v38 = [v34 leadingAnchor];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = v39;
  v170 = v23;
  v172 = v2;
  v41 = [v39 leadingAnchor];

  v42 = [v38 constraintEqualToAnchor:v41 constant:36.0];
  *(v1 + 88) = v42;
  v43 = [v34 trailingAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v45 = v44;
  v46 = [v44 trailingAnchor];

  v47 = [v43 constraintEqualToAnchor:v46 constant:-36.0];
  *(v1 + 96) = v47;
  v48 = [v34 bottomAnchor];
  v174 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton];
  v49 = [v174 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:-20.0];

  *(v1 + 104) = v50;
  v51 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel];
  v52 = [v51 topAnchor];
  v53 = [v34 topAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];

  *(v1 + 112) = v54;
  v55 = [v51 leadingAnchor];
  v56 = [v34 leadingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  *(v1 + 120) = v57;
  v58 = [v51 trailingAnchor];
  v59 = [v34 trailingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v1 + 128) = v60;
  v61 = [v51 widthAnchor];
  v62 = [v34 widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v1 + 136) = v63;
  v64 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel];
  v65 = [v64 topAnchor];
  v66 = [v51 bottomAnchor];
  v67 = [v65 constraintEqualToAnchor:v66 constant:12.0];

  *(v1 + 144) = v67;
  v68 = [v64 leadingAnchor];
  v69 = [v34 leadingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v1 + 152) = v70;
  v71 = [v64 trailingAnchor];
  v72 = [v34 trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];

  *(v1 + 160) = v73;
  v74 = [v64 bottomAnchor];
  v75 = [v34 bottomAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v1 + 168) = v76;
  v77 = [v64 widthAnchor];
  v78 = [v34 widthAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  *(v1 + 176) = v79;
  v80 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel];
  v81 = [v80 leadingAnchor];
  v82 = [v0 view];
  if (!v82)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v83 = v82;
  v84 = [v82 leadingAnchor];

  v85 = [v81 constraintEqualToAnchor:v84 constant:36.0];
  *(v1 + 184) = v85;
  v86 = [v80 trailingAnchor];
  v87 = [v0 view];
  if (!v87)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v88 = v87;
  v89 = [v87 trailingAnchor];

  v90 = [v86 constraintEqualToAnchor:v89 constant:-36.0];
  *(v1 + 192) = v90;
  v91 = [v174 bottomAnchor];
  v92 = [v80 topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92 constant:-20.0];

  *(v1 + 200) = v93;
  v94 = [v174 leadingAnchor];
  v95 = [v0 view];
  if (!v95)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v96 = v95;
  v97 = [v95 leadingAnchor];

  v98 = [v94 constraintEqualToAnchor:v97 constant:36.0];
  *(v1 + 208) = v98;
  v99 = [v174 trailingAnchor];
  v100 = [v0 view];
  if (!v100)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v101 = v100;
  v102 = [v100 trailingAnchor];

  v103 = [v99 constraintEqualToAnchor:v102 constant:-36.0];
  *(v1 + 216) = v103;
  v104 = [v80 bottomAnchor];
  v105 = [v0 view];
  if (!v105)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v106 = v105;
  v107 = [v105 safeAreaLayoutGuide];

  v108 = [v107 bottomAnchor];
  v109 = [v104 constraintEqualToAnchor:v108 constant:-12.0];

  *(v1 + 224) = v109;
  v110 = [v80 leadingAnchor];
  v111 = [v0 view];
  if (!v111)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v112 = v111;
  v113 = [v111 leadingAnchor];

  v114 = [v110 constraintEqualToAnchor:v113 constant:36.0];
  *(v1 + 232) = v114;
  v115 = [v80 trailingAnchor];
  v116 = [v0 view];
  if (!v116)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v117 = v116;
  v118 = objc_opt_self();
  v119 = [v117 trailingAnchor];

  v120 = [v115 constraintEqualToAnchor:v119 constant:-36.0];
  *(v1 + 240) = v120;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v1, v122, v123, v124, v125, v126, v127, v128;
  [v118 activateConstraints:isa];

  if (_UISolariumEnabled())
  {
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_10017ED90;
    v130 = [v170 widthAnchor];
    v131 = [v130 constraintEqualToConstant:48.0];

    *(v129 + 32) = v131;
    v132 = [v170 heightAnchor];
    v133 = [v132 constraintEqualToConstant:48.0];

    *(v129 + 40) = v133;
    v134 = Array._bridgeToObjectiveC()().super.isa;
    v129, v135, v136, v137, v138, v139, v140, v141;
    [v118 activateConstraints:v134];
  }

  v171 = v118;
  v142 = v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph];
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_10017ED60;
  v144 = *&v0[OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView];
  if (v142 == 1)
  {
    v145 = &selRef_heightAnchor;
    v146 = [v144 heightAnchor];
    v147 = [v146 constraintEqualToConstant:70.0];
    v173 = &selRef_centerYAnchor;
    v148 = &off_1001EE000;
    v149 = &selRef_centerXAnchor;
    v150 = v144;
    v151 = &selRef_widthAnchor;
    v152 = v172;
  }

  else
  {
    v153 = [v144 topAnchor];
    v152 = v172;
    v146 = [v172 topAnchor];
    v148 = &off_1001EE000;
    v147 = [v153 constraintEqualToAnchor:v146];

    v173 = &selRef_bottomAnchor;
    v149 = &selRef_trailingAnchor;
    v151 = &selRef_leadingAnchor;
    v145 = &selRef_leadingAnchor;
    v150 = v172;
  }

  *(v143 + 32) = v147;
  v154 = [v144 *v151];
  v155 = [v150 *v145];
  v156 = [v154 v148[338]];

  *(v143 + 40) = v156;
  v157 = [v144 *v149];
  v158 = [v152 *v149];
  v159 = [v157 v148[338]];

  *(v143 + 48) = v159;
  v160 = [v144 *v173];
  v161 = [v152 *v173];
  v162 = [v160 v148[338]];

  *(v143 + 56) = v162;
  v175 = Array._bridgeToObjectiveC()().super.isa;
  v143, v163, v164, v165, v166, v167, v168, v169;
  [v171 activateConstraints:v175];
}

double sub_100084B80()
{

  return result;
}

id sub_100084C34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSuiteDescriptionViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100084D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7, v1);
}

void sub_100084D94()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultOuterPadding) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultInnerPadding) = 0x4028000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_defaultHorizontalPadding) = 0x4042000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonPointSize) = 0x403E000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButtonSize) = 0x4048000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_glyphPointSize) = 0x4051800000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageScreenSpaceRatio) = 0x3FD6666666666666;
  v1 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_closeButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType:0];
  v2 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_startDiagnosticButton;
  *(v0 + v2) = [objc_opt_self() boldButton];
  v3 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_scrollView;
  *(v0 + v4) = [objc_allocWithZone(UIScrollView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_titleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_subtitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_detailsLabel;
  *(v0 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_imageViewContainerView;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics41SelfServiceSuiteDescriptionViewController_isShowingGlyph) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100084F94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_100084FE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView);
  [v1 setHidesWhenStopped:0];
  v2 = [objc_opt_self() labelColor];
  [v1 setColor:v2];

  [v1 startAnimating];
  [v1 setAlpha:0.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v3 setAlpha:0.0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
  [v4 setContentMode:1];
  [v4 setAlpha:0.0];

  return [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
}

id sub_100085118()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];

  return [v0 addSubview:v1];
}

void sub_10008518C()
{
  v1 = v0;
  v49 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100180E20;
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView];
  v4 = [v3 topAnchor];
  v5 = [v1 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v1 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v2 + 40) = v9;
  v10 = [v3 leadingAnchor];
  v11 = [v1 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 trailingAnchor];
  v14 = [v1 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  v16 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v17 = [v16 topAnchor];
  v18 = [v1 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v2 + 64) = v19;
  v20 = [v16 bottomAnchor];
  v21 = [v1 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v2 + 72) = v22;
  v23 = [v16 leadingAnchor];
  v24 = [v1 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v2 + 80) = v25;
  v26 = [v16 trailingAnchor];
  v27 = [v1 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v2 + 88) = v28;
  v29 = *&v1[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView];
  v30 = [v29 topAnchor];
  v31 = [v1 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v2 + 96) = v32;
  v33 = [v29 bottomAnchor];
  v34 = [v1 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v2 + 104) = v35;
  v36 = [v29 leadingAnchor];
  v37 = [v1 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v2 + 112) = v38;
  v39 = [v29 trailingAnchor];
  v40 = [v1 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v2 + 120) = v41;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v2, v42, v43, v44, v45, v46, v47, v48;
  [v49 activateConstraints:isa];
}

void sub_1000856BC(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = *&v4[OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView];
  v9 = OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView;
  v10 = [*&v8[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_circleView] layer];
  [v10 cornerRadius];
  v12 = v11;

  [v4 bounds];
  if (v12 == CGRectGetWidth(v17) * 0.5)
  {
    if (a1)
    {
LABEL_3:
      v13 = swift_allocObject();
      v13[2] = v4;
      v13[3] = a2;
      v13[4] = a3;
      v14 = v4;
      sub_10003E418(a2, a3);
      sub_10006D528(v8, sub_100085D4C, v13);

      return;
    }
  }

  else
  {
    v15 = [*&v8[v9] layer];
    [v4 bounds];
    [v15 setCornerRadius:CGRectGetWidth(v18) * 0.5];

    if (a1)
    {
      goto LABEL_3;
    }
  }

  [v8 setAlpha:1.0];
  [*&v8[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView] show];
  if (a2)
  {
    a2(1);
  }
}

void sub_100085888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v6 setAlpha:1.0];
  v7 = *&v6[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];
  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100084F94;
    v11[3] = &unk_1001C2170;
    v8 = _Block_copy(v11);
    v9 = v7;
    sub_10003E418(a3, a4);
  }

  else
  {
    v10 = v7;
    v8 = 0;
  }

  [v7 animateWithCompletion:v8];
  _Block_release(v8);
}

id sub_100085994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView);
  [v2 setAlpha:0.0];
  v3 = *&v2[OBJC_IVAR____TtC11Diagnostics13CheckmarkView_checkAnimationView];

  return [v3 hide];
}

id sub_1000859F8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  *&v4[v9] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v10 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TestRunnerIconView();
  return objc_msgSendSuper2(&v13, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100085B00(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_activityIndicatorView;
  *&v1[v3] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v4 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_checkmarkView;
  type metadata accessor for CheckmarkView();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView;
  *&v1[v5] = [objc_allocWithZone(UIImageView) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for TestRunnerIconView();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

void sub_100085C00()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics18TestRunnerIconView_imageView);
}

id sub_100085C50(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TestRunnerIconView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100085D04()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 40, 7, v1);
}

uint64_t sub_100085D58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100085D80(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070, &unk_10017EF00);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  *&v2[v14] = [objc_allocWithZone(NSLayoutConstraint) init];
  v15 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  *&v2[v15] = [objc_allocWithZone(NSLayoutConstraint) init];
  v16 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  *&v2[v16] = [objc_allocWithZone(NSLayoutConstraint) init];
  v17 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  *&v2[v17] = [objc_allocWithZone(NSLayoutConstraint) init];
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap] = 0x4024000000000000;
  v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_topImageGapEnabled] = 1;
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize] = 0x4046800000000000;
  v18 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor;
  *&v2[v18] = [objc_opt_self() labelColor];
  v19 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v20;
  v21 = v20;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v22 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v22 - 8) + 56))(v6, 0, 1, v22);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078, UIButton_ptr);
  (*(v8 + 16))(v10, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button] = UIButton.init(configuration:primaryAction:)();
  v23 = &v2[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action];
  v24 = *(a1 + 16);
  *v23 = *a1;
  *(v23 + 1) = v24;
  *(v23 + 4) = *(a1 + 32);
  v25 = type metadata accessor for GlyphButton();
  v28.receiver = v2;
  v28.super_class = v25;
  v26 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v8 + 8))(v13, v7);
  return v26;
}

id sub_100086154()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FD068, &qword_10017EEF8);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v28 - v4;
  v6 = *&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:{0, v3}];
  v7 = *&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel];
  [v7 setTextColor:*&v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor]];
  [v7 setTextAlignment:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = &v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action];
  if (v1[OBJC_IVAR____TtC11Diagnostics11GlyphButton_action + 16] != 7)
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    v9 = sub_1000FF2D0(v28);
    [v6 setImage:v9 forState:0];

    v10 = [v6 imageView];
    if (v10)
    {
      v11 = v10;
      [v10 setContentMode:4];
    }

    v12 = [v6 imageView];
    if (v12)
    {
      v13 = v12;
      [v12 setClipsToBounds:0];
    }

    [v6 setClipsToBounds:0];
  }

  v14 = *(v8 + 1);

  v15 = String._bridgeToObjectiveC()();
  v14, v16, v17, v18, v19, v20, v21, v22;
  [v7 setText:v15];

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (v24 == 6)
  {
    sub_10003E110(0, &unk_1001FD080, UIHoverStyle_ptr);
    static UIShape.circle.getter();
    v25 = type metadata accessor for UIShape();
    (*(*(v25 - 8) + 56))(v5, 0, 1, v25);
    v26 = UIHoverStyle.init(shape:)();
    [v6 setHoverStyle:v26];
  }

  [v6 addTarget:v1 action:"handleTouchUpInside" forControlEvents:64];
  return [v1 addTarget:v1 action:"handleTouchUpInside" forControlEvents:64];
}

id sub_100086450()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics11GlyphButton_button]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel];

  return [v0 addSubview:v1];
}

void sub_1000864AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_button);
  v2 = [v1 widthAnchor];
  v3 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize;
  v4 = [v2 constraintEqualToConstant:*(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize)];

  v5 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint) = v4;
  v7 = v5;
  v55 = v5;

  v8 = [v1 heightAnchor];
  v9 = [v8 constraintEqualToConstant:*(v0 + v3)];

  v10 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint) = v9;

  LODWORD(v12) = 1148829696;
  [*(v0 + v7) setPriority:v12];
  LODWORD(v13) = 1148829696;
  [*(v0 + v10) setPriority:v13];
  v14 = [v1 topAnchor];
  v15 = [v0 topAnchor];
  v16 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap;
  v17 = [v14 constraintEqualToAnchor:v15 constant:*(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap)];

  v18 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  v19 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint) = v17;

  v20 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel);
  v21 = [v20 topAnchor];
  v22 = [v1 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:*(v0 + v16)];

  v24 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  v25 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint);
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint) = v23;

  v26 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020, &qword_10017F1A0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100180E60;
  v28 = *(v0 + v18);
  *(v27 + 32) = v28;
  v29 = v28;
  v30 = [v1 centerXAnchor];
  v31 = [v0 centerXAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  v33 = *(v0 + v10);
  *(v27 + 40) = v32;
  *(v27 + 48) = v33;
  v34 = *&v55[v0];
  v35 = *(v0 + v24);
  *(v27 + 56) = v34;
  *(v27 + 64) = v35;
  v36 = v33;
  v37 = v34;
  v38 = v35;
  v39 = [v20 bottomAnchor];
  v40 = [v0 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v27 + 72) = v41;
  v42 = [v20 leadingAnchor];
  v43 = [v0 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v27 + 80) = v44;
  v45 = [v20 trailingAnchor];
  v46 = [v0 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v27 + 88) = v47;
  sub_10003E110(0, &qword_1001FD550, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v27, v48, v49, v50, v51, v52, v53, v54;
  [v26 activateConstraints:isa];
}

void sub_1000869B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_action + 8);

  v1, v2, v3, v4, v5, v6, v7, v8;

  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel);
}

id sub_100086A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlyphButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100086B7C()
{
  v1 = *v0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = objc_opt_self();
  v7[4] = sub_100086CE0;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100031FA8;
  v7[3] = &unk_1001C21D8;
  v4 = _Block_copy(v7);
  v5 = v1;

  [v3 animateWithDuration:0x20000 delay:v4 options:0 animations:0.125 completion:0.0];
  _Block_release(v4);

  return [v5 setUserInteractionEnabled:0];
}

uint64_t sub_100086CA8()
{

  return _swift_deallocObject(v0, 24, 7, v1);
}

uint64_t sub_100086D00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100086D18()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonWidthConstraint;
  *(v0 + v1) = [objc_allocWithZone(NSLayoutConstraint) init];
  v2 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonHeightConstraint;
  *(v0 + v2) = [objc_allocWithZone(NSLayoutConstraint) init];
  v3 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTopMarginConstraint;
  *(v0 + v3) = [objc_allocWithZone(NSLayoutConstraint) init];
  v4 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGapConstraint;
  *(v0 + v4) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_imageAndLabelGap) = 0x4024000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_topImageGapEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonSize) = 0x4046800000000000;
  v5 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonLabelColor;
  *(v0 + v5) = [objc_opt_self() labelColor];
  v6 = OBJC_IVAR____TtC11Diagnostics11GlyphButton_buttonTitleLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100086E78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_100086EF0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v94 = *(v9 - 8);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_lock);
  [v13 lock];
  if ((*(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) & 1) == 0)
  {
    v87 = v8;
    v88 = v6;
    v89 = v4;
    v90 = v5;
    v91 = v2;
    v92 = v1;
    v93 = v13;
    *(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_loading) = 1;
    v15 = String._bridgeToObjectiveC()();
    v16 = [v15 lastPathComponent];

    v17 = v16;
    v18 = v16;
    if (!v16)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
      v18 = String._bridgeToObjectiveC()();
      v20, v21, v22, v23, v24, v25, v26, v27;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
      v17 = String._bridgeToObjectiveC()();
      v29, v30, v31, v32, v33, v34, v35, v36;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    v39 = v16;
    v40 = String._bridgeToObjectiveC()();
    v41 = objc_opt_self();
    v42 = [v41 _systemImageNamed:v40];

    if (v42)
    {
      v38, v43, v44, v45, v46, v47, v48, v49;

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v42;
      v97 = 0;
      LOBYTE(v98) = 0;
    }

    else
    {
      v50 = [v18 stringByDeletingLastPathComponent];

      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v53, v54, v55, v56, v57, v58, v59, v60;
      v68 = (v53 >> 56) & 0xF;
      if ((v53 & 0x2000000000000000) == 0)
      {
        v68 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v68)
      {
        v38, v61, v62, v63, v64, v65, v66, v67;
        v69 = [v17 stringByDeletingLastPathComponent];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v70;
      }

      else
      {
      }

      v71 = String._bridgeToObjectiveC()();
      v38, v72, v73, v74, v75, v76, v77, v78;
      v79 = [v41 imageNamed:v71];

      if (!v79)
      {
        sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
        v80 = v94;
        (*(v94 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v9);
        v81 = static OS_dispatch_queue.global(qos:)();
        (*(v80 + 8))(v12, v9);
        v100 = sub_1000880B8;
        v101 = v0;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v98 = sub_100031FA8;
        v99 = &unk_1001C22B8;
        v82 = _Block_copy(&aBlock);

        v83 = v87;
        static DispatchQoS.unspecified.getter();
        v95 = &_swiftEmptyArrayStorage;
        sub_1000880D8(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
        sub_1000446A0();
        v84 = v89;
        v85 = v92;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v82);

        (*(v91 + 8))(v84, v85);
        (*(v88 + 8))(v83, v90);

        return [v93 unlock];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      aBlock = v79;
      v97 = 0;
      LOBYTE(v98) = 0;
    }

    static Published.subscript.setter();
    return [v93 unlock];
  }

  return [v13 unlock];
}

uint64_t sub_100087544(uint64_t a1)
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A3C8;
  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8);
  v5 = qword_1001FC738;
  swift_retain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v7 = qword_1001FEED0;
    v8 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);

    sub_100106B74(v7, v6, v3, v4, v8, a1);
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0, OS_os_log_ptr);
    v10 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Unable to obtain asset, serial number is nil", 44, 2, &_swiftEmptyArrayStorage);

    sub_1000876C4(0, 0xF000000000000000, a1);
  }
}

uint64_t sub_1000876C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1000882B4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2308;
  v14 = _Block_copy(aBlock);
  sub_1000882C0(a1, a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000880D8(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

void sub_1000879A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  else
  {
    v5 = objc_allocWithZone(UIImage);
    sub_10005FC70(a1, a2);
    sub_10005FC70(a1, a2);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithData:isa];

    sub_1000882D4(a1, a2);
    if (v7)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      v8 = v7;
      static Published.subscript.setter();
      sub_1000882D4(a1, a2);
    }

    else
    {
      v9 = Data._bridgeToObjectiveC()().super.isa;
      v10 = CGSVGDocumentCreateFromData();

      if (v10 && (v11 = [objc_opt_self() _imageWithCGSVGDocument:v10], v10, v11))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        v12 = v11;
        static Published.subscript.setter();
        sub_1000882D4(a1, a2);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        sub_1000882D4(a1, a2);
      }
    }
  }
}

uint64_t sub_100087C3C()
{
  v1 = OBJC_IVAR____TtC11Diagnostics11ImageLoader__phase;
  v2 = sub_10003C49C(&qword_1001FDFA0, &qword_10017FE30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  *(v0 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8), v3, v4, v5, v6, v7, v8, v9;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageLoader(uint64_t a1)
{
  result = qword_1001FECE0;
  if (!qword_1001FECE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100087D5C(uint64_t a1)
{
  sub_100087E0C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100087E0C()
{
  if (!qword_1001FECF0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FECF0);
    }
  }
}

uint64_t sub_100087E5C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100087E78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100087EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100087F04(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100087F2C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ImageLoader(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Int sub_100087F6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100087FD8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100088028(void *a1, uint64_t *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator);
  if (*v2 == *(*a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator) && v2[1] == *(*a2 + OBJC_IVAR____TtC11Diagnostics11ImageLoader_assetLocator + 8))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1000880C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000880D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100088120@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1000881AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100088244(v2, v3, v4);
  return static Published.subscript.setter();
}

id sub_100088244(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

uint64_t sub_100088264()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_10005F18C(*(v0 + 16), v1);
  }

  return _swift_deallocObject(v0, 40, 7, v2);
}

uint64_t sub_1000882C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005FC70(result, a2);
  }

  return result;
}

double sub_1000882D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10005F18C(a1, a2);
  }

  return result;
}

uint64_t sub_1000882F0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1001FEDE0);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_10005173C(v6);
    return 2;
  }
}

uint64_t sub_1000883C8(char a1, int a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for DispatchQoS();
  v11 = *(v21 - 8);
  __chkstk_darwin(v21);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10003E110(0, &qword_1001FD040, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v4;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;
  *(v15 + 48) = v20;
  aBlock[4] = sub_1000889D4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2358;
  v16 = _Block_copy(aBlock);
  v17 = v4;
  sub_10003E418(a3, a4);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v22 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v21);
}

void sub_100088738(char a1, void *a2, void (*a3)(void), uint64_t a4, char a5)
{
  v10 = [objc_opt_self() _applicationKeyWindow];
  if (v10)
  {
    v11 = v10;
    sub_10003E110(0, &unk_1001FDE50, UIApplication_ptr);
    v12 = [v11 rootViewController];

    v20 = sub_100119F98(v12);
    if (a1)
    {
      v13 = [a2 popoverPresentationController];
      if (v13)
      {
        v14 = v13;
        v15 = [v20 view];
        [v14 setSourceView:v15];
      }
    }

    v16 = v20;
    if (v20)
    {
      v17 = v20;
      if (([v17 isBeingDismissed] & 1) == 0)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;
        aBlock[4] = sub_100088A40;
        aBlock[5] = v18;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C23A8;
        v19 = _Block_copy(aBlock);
        sub_10003E418(a3, a4);

        [v17 presentViewController:a2 animated:a5 & 1 completion:v19];
        _Block_release(v19);

        return;
      }

      v16 = v20;
    }

    if (a3)
    {
      a3(0);
      v16 = v20;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10008898C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 49, 7, v1);
}

uint64_t sub_1000889E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100088A00(__n128 a1)
{
  if (*(v1 + 16))
  {
  }

  return _swift_deallocObject(v1, 32, 7, a1);
}

uint64_t sub_100088A40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t sub_100088A74()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7, v1);
}

unint64_t sub_100088AC8()
{
  result = qword_1001FEDE8;
  if (!qword_1001FEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FEDE8);
  }

  return result;
}

uint64_t sub_100088B24(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100088B3C(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
}

__n128 sub_100088B58(uint64_t a1, uint64_t a2)
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

uint64_t sub_100088B74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100088BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_100088C10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

BOOL sub_100088C48(unsigned __int8 a1, uint64_t a2)
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

BOOL sub_100088C78(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_1000F208C(*v4);
    v9 = v8;
    v11 = sub_1000F208C(v2);
    v17 = v7;
    v18 = v10;
    if (v17 == v11 && v9 == v10)
    {
      v9, v10, v11, v12, v13, v14, v15, v16;
      v18, v35, v36, v37, v38, v39, v40, v41;
      return v5 != 0;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9, v21, v22, v23, v24, v25, v26, v27;
    v18, v28, v29, v30, v31, v32, v33, v34;
    ++v4;
  }

  while ((v20 & 1) == 0);
  return v5 != 0;
}

BOOL sub_100088D3C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for IndexPath();
    ++v2;
    sub_100089BAC(&unk_1001FFE60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

void sub_100088E48(int a1, uint64_t a2)
{
  v3 = v2;
  v54 = a1;
  v50 = type metadata accessor for DispatchWorkItemFlags();
  v53 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = [objc_opt_self() standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if ((v18 & 1) != 0 || (v19 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v19))
  {
    sub_100057B68();
    v20 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v48 = a2;
    v47 = *(v10 + 8);
    v46 = v9;
    v47(v12, v9);
    v21 = swift_allocObject();
    v22 = *(v3 + 16);
    *(v21 + 16) = *v3;
    *(v21 + 32) = v22;
    *(v21 + 48) = *(v3 + 32);
    *(v21 + 64) = *(v3 + 48);
    aBlock[4] = sub_100089BA4;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2568;
    v23 = _Block_copy(aBlock);
    sub_10007D588(v3, v57);

    v24 = v8;
    static DispatchQoS.unspecified.getter();
    v57[0] = &_swiftEmptyArrayStorage;
    sub_100089BAC(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050, &qword_10017F6A0);
    sub_1000446A0();
    v26 = v49;
    v25 = v50;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v53 + 8))(v26, v25);
    (*(v51 + 8))(v24, v52);
    v47(v15, v46);
    a2 = v48;
  }

  if (*(v3 + 48) < 2u || (v31 = *(v3 + 24), v32 = *(v3 + 32) | *(v3 + 40), v33 = *(v3 + 16) | *(v3 + 8), v32 | *v3 | v31 | v33) && (*v3 != 1 || v32 | v31 | v33))
  {
    type metadata accessor for ManagedAlertController();
    swift_allocObject();
    sub_10007D588(v3, v57);
    swift_unknownObjectRetain();
    sub_10012FB48(v3, a2);
    v28 = v27;
    sub_10007D5E4(v3);
    if (v54)
    {
      if (!*(v28 + 72))
      {
        if (byte_10020A5F0)
        {
          goto LABEL_17;
        }

        byte_10020A5F0 = 1;
      }

      v29 = *(v28 + 16);
      v57[4] = sub_100089B40;
      v57[5] = v28;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 1107296256;
      v57[2] = sub_100084F94;
      v57[3] = &unk_1001C2518;
      v30 = _Block_copy(v57);

      [v29 showOnTopWithAnimated:1 completion:v30];
      _Block_release(v30);
    }

    else
    {
      sub_10012F990();
    }

LABEL_17:

    return;
  }

  if (!qword_10020A3C0)
  {
    v34 = type metadata accessor for FullscreenAlertViewController();
    v35 = objc_allocWithZone(v34);
    v36 = objc_allocWithZone(_UIContentUnavailableView);
    sub_10007D588(v3, v57);
    v37 = [v36 initWithFrame:0 title:0 style:{0.0, 0.0, 0.0, 0.0}];
    if (v37)
    {
      *&v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_contentUnavailableView] = v37;
      v38 = &v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_alert];
      v39 = *v3;
      v40 = *(v3 + 16);
      v41 = *(v3 + 32);
      v38[48] = *(v3 + 48);
      *(v38 + 1) = v40;
      *(v38 + 2) = v41;
      *v38 = v39;
      sub_10007D588(v3, v57);
      *&v35[OBJC_IVAR____TtC11Diagnostics29FullscreenAlertViewController_privateAlertAction] = sub_1000D724C(v3);
      v56.receiver = v35;
      v56.super_class = v34;
      v42 = objc_msgSendSuper2(&v56, "initWithNibName:bundle:", 0, 0);
      sub_10007D5E4(v3);
      v43 = qword_10020A3C0;
      qword_10020A3C0 = v42;
      v44 = v42;

      if (v54)
      {
        [v44 showOnTopWithAnimated:1 completion:0];
      }

      else
      {
        [v44 scheduleModalPresentationWithPriority:2 animated:1 presentationCompletion:0];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100089588(uint64_t a1, const char *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = a1;
  v10 = *v8;
  if (*(v8 + 48))
  {
    if (*(v8 + 48) == 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    else
    {
      v15 = *(v8 + 24);
      v16 = *(v8 + 32) | *(v8 + 40);
      v17 = *(v8 + 16) | *(v8 + 8);
      if (v16 | v10 | v15 | v17)
      {
        v18 = v16 | v15 | v17;
        if (v10 == 1 && v18 == 0)
        {
          result = MobileGestalt_get_current_device();
          if (!result)
          {
            __break(1u);
            return result;
          }

          v40 = result;
          wapiCapability = MobileGestalt_get_wapiCapability();

          v42 = "NETWORK_UNAVAILABLE_WIFI_MESSAGE";
          if (wapiCapability)
          {
            v42 = "NETWORK_UNAVAILABLE_WLAN_MESSAGE";
          }

          v12 = (v42 - 32) | 0x8000000000000000;
          v43 = [objc_msgSend(objc_opt_self() "currentPlatform")];
          swift_unknownObjectRelease();
          if (v43)
          {
            v44._countAndFlagsBits = 4342623;
            v44._object = 0xE300000000000000;
            String.append(_:)(v44);
          }

          v11 = 0xD000000000000020;
          v14 = 0x800000010018D4E0;
          v13 = 0xD000000000000019;
        }

        else
        {
          v11 = 0xD000000000000020;
          if (v10 != 2 || v18)
          {
            if (v10 != 3 || v18)
            {
              if (v10 != 4 || v18)
              {
                if (v10 == 5 && !v18)
                {
                  v14 = 0x800000010018D330;
                  v12 = 0x800000010018D350;
                  v13 = 0xD00000000000001ALL;
                  v11 = 0xD00000000000001CLL;
                  goto LABEL_34;
                }

                v14 = 0x800000010018D2E0;
                v47 = "ALREADY_IN_SESSION_ALERT_MESSAGE";
              }

              else
              {
                v14 = 0x800000010018D370;
                v47 = "AIRPODS_CONNECTION_ALERT_MESSAGE";
              }

              v12 = (v47 - 32) | 0x8000000000000000;
              v13 = 0xD00000000000001ELL;
              goto LABEL_34;
            }

            v14 = 0x800000010018D3C0;
            v12 = 0x800000010018D3E0;
            v13 = 0xD00000000000001CLL;
            v11 = 0xD00000000000001ELL;
          }

          else
          {
            v14 = 0x800000010018D400;
            v12 = 0x800000010018D420;
            v13 = 0xD000000000000015;
            v11 = 0xD000000000000017;
          }
        }
      }

      else
      {
        v14 = 0x800000010018D530;
        v13 = 0xD000000000000015;
        v12 = 0xEC00000045434150;
        v11 = 0x535F464F5F54554FLL;
      }
    }
  }

  else
  {
    v13 = 0xD000000000000020;
    if (sub_100088C78(*v8, &off_1001BD990))
    {
      v11 = 0;
      v12 = 0;
      v14 = 0x800000010018D490;
      v13 = 0xD000000000000017;
    }

    else
    {
      if (sub_1000F208C(v10) == 0x22656D6F4822 && v20 == 0xE600000000000000)
      {
        v20, v20, v21, v22, v23, v24, v25, v26;
      }

      else
      {
        v28 = v20;
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v28, v30, v31, v32, v33, v34, v35, v36;
        if ((v29 & 1) == 0)
        {
          v14 = 0x800000010018D440;
          v13 = 0xD00000000000001FLL;
          v37 = [objc_msgSend(objc_opt_self() "currentPlatform")];
          swift_unknownObjectRelease();
          if (v37)
          {
            v38._countAndFlagsBits = 4342623;
            v38._object = 0xE300000000000000;
            String.append(_:)(v38);
            v13 = 0xD00000000000001FLL;
            v14 = 0x800000010018D440;
          }

          v11 = 0;
          v12 = 0;
          goto LABEL_34;
        }
      }

      v11 = 0;
      v12 = 0;
      v14 = 0x800000010018D460;
    }
  }

LABEL_34:
  if (v9)
  {
    v45 = v14;
  }

  else
  {
    v45 = v12;
  }

  if (v9)
  {
    v46 = v11;
  }

  else
  {
    v46 = v13;
  }

  v45, a2, a3, a4, a5, a6, a7, a8;
  return v46;
}