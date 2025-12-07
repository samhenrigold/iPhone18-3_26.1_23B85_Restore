uint64_t sub_10004DEE8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode);
  if (*(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_selectedSiriLanguageCode + 8))
  {
    v4 = *v3;
  }

  else if (a2)
  {
    v4 = a1;
    *v3 = a1;
    v3[1] = a2;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    if (qword_100101630 != -1)
    {
      swift_once();
    }

    v4 = 0x53552D6E65;
    v5 = type metadata accessor for Logger();
    sub_100012AAC(v5, qword_100102748);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupModel: #### userSelectedSiriLanguage called but selectedSiriLanguage and defaultValue are both nil, falling back to English", v8, 2u);
    }
  }

  return v4;
}

void sub_10004E01C(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v122 = a1;
  v7 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v8 = __chkstk_darwin(v7 - 8);
  v117 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v118 = (&v103 - v11);
  __chkstk_darwin(v10);
  v13 = &v103 - v12;
  v14 = type metadata accessor for URL();
  v120 = *(v14 - 8);
  v121 = v14;
  __chkstk_darwin(v14);
  v119 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v17 = __chkstk_darwin(v16 - 8);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v103 - v19;
  v21 = type metadata accessor for AdjustedImage(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v115 = (&v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v23);
  v26 = &v103 - v25;
  v114 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole;
  v27 = *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole);
  v28 = ((v27 & 0xFFFFFFFE) == 2) | a2;
  v123 = *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
  v29 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode;
  v30 = 13;
  if (*(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode) != 5)
  {
    v30 = (v122 & 1) != 0 ? 1037 : 13;
    if (((v27 & 0xFFFFFFFE) == 2) | a2 & 1)
    {
      if (v27 == 2)
      {
        v31 = 96;
      }

      else
      {
        v31 = 4192;
      }

      v32 = v31 | v30;
      if (v27 == 3)
      {
        v33 = v30 | 0x860;
      }

      else
      {
        v33 = v32;
      }

      if (v123 == *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor))
      {
        v30 = v30 | 0x20;
      }

      else
      {
        v30 = v33;
      }
    }
  }

  v113 = v28;
  sub_10004ED84(v30, v20);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_10003A760(v20, v26);
    sub_10003A760(v26, a3);
    (*(v22 + 56))(a3, 0, 1, v21);
    return;
  }

  v112 = v21;
  sub_10000EBA4(v20, &unk_100102610, &unk_1000BD130);
  sub_1000514DC();
  v124 = NSString.init(stringLiteral:)();
  if (*(v4 + v29) <= 1u)
  {
    v34 = 1;
  }

  else
  {
    v34 = *(v4 + v29);
  }

  v109 = v34;
  sub_100006EAC(v34, v123, v30, &v124, 0, 0, 0, 0, 0);
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v35 & 0xFFFFFFFFFFFFLL;
  }

  v111 = v22;
  if (v38)
  {
    v39 = v35;
  }

  else
  {

    v39 = *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName);
    v37 = *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName + 8);
  }

  v40 = [objc_opt_self() configurationWithPointSize:72.0];
  v110 = v39;
  v41 = String._bridgeToObjectiveC()();
  v42 = objc_opt_self();
  v43 = [v42 systemImageNamed:v41 withConfiguration:v40];

  v44 = v43;
  if (!v43)
  {
    if (qword_100101630 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100012AAC(v45, qword_100102748);

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    v48 = os_log_type_enabled(v46, v47);
    v107 = v42;
    if (v48)
    {
      v49 = swift_slowAlloc();
      v108 = a3;
      v50 = v49;
      v51 = swift_slowAlloc();
      v125[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1000B08A0(v110, v37, v125);
      _os_log_impl(&_mh_execute_header, v46, v47, "HomePodSetupViewModel: could not find a device image as systemName so looking for %s", v50, 0xCu);
      sub_10000E70C(v51);

      a3 = v108;
    }

    v52 = objc_allocWithZone(UIImage);
    v53 = String._bridgeToObjectiveC()();
    v54 = [v52 initWithContentsOfFile:v53];

    if (!v54)
    {
      v55 = String._bridgeToObjectiveC()();
      v54 = [v107 imageNamed:v55];

      if (!v54)
      {

        v44 = 0;
        goto LABEL_41;
      }
    }

    v44 = v54;
  }

  v56 = *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_assetBundle);
  if (v56)
  {
    v57 = SFDeviceAssetNameAdjustments;
    v58 = v43;
    v59 = [v56 URLForResource:v57 withExtension:0];
    if (v59)
    {
      v60 = v118;
      v61 = v59;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v62 = 0;
      v64 = v120;
      v63 = v121;
    }

    else
    {
      v62 = 1;
      v64 = v120;
      v63 = v121;
      v60 = v118;
    }

    v118 = *(v64 + 56);
    v118(v60, v62, 1, v63);
    sub_100051A10(v60, v13);
    if ((*(v64 + 48))(v13, 1, v63) != 1)
    {
      v75 = *(v64 + 32);
      v107 = (v64 + 32);
      v106 = v75;
      v75(v119, v13, v63);
      if (qword_100101630 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      sub_100012AAC(v76, qword_100102748);
      swift_retain_n();

      v77 = v44;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      v80 = os_log_type_enabled(v78, v79);
      v81 = v122;
      if (v80)
      {
        v82 = swift_slowAlloc();
        v104 = v79;
        v83 = v82;
        v84 = swift_slowAlloc();
        v103 = v84;
        v105 = swift_slowAlloc();
        v125[0] = v105;
        *v83 = 136316674;
        v85 = sub_1000B08A0(v110, v37, v125);
        v108 = a3;
        v86 = v85;

        *(v83 + 4) = v86;
        *(v83 + 12) = 2112;
        *(v83 + 14) = v77;
        *v84 = v77;
        *(v83 + 22) = 1024;
        *(v83 + 24) = v109;
        *(v83 + 28) = 256;
        if (v81)
        {
          v87 = 28271;
        }

        else
        {
          v87 = 6710895;
        }

        *(v83 + 30) = v123;
        if (v81)
        {
          v88 = 0xE200000000000000;
        }

        else
        {
          v88 = 0xE300000000000000;
        }

        *(v83 + 31) = 2080;
        v89 = v77;
        v90 = sub_1000B08A0(v87, v88, v125);

        *(v83 + 33) = v90;
        *(v83 + 41) = 2080;
        if (v113)
        {
          v91 = 28271;
        }

        else
        {
          v91 = 6710895;
        }

        if (v113)
        {
          v92 = 0xE200000000000000;
        }

        else
        {
          v92 = 0xE300000000000000;
        }

        v93 = sub_1000B08A0(v91, v92, v125);

        *(v83 + 43) = v93;
        a3 = v108;
        *(v83 + 51) = 1024;
        v94 = *(v4 + v114);

        *(v83 + 53) = v94;
        v81 = v122;

        _os_log_impl(&_mh_execute_header, v78, v104, "HomePodSetupViewModel: adjustedProductImage returning image named: %s with details: %@  product: %u %hhu withTV: %s withStereo: %s, StereoRole: %d", v83, 0x39u);
        sub_10000EBA4(v103, &qword_100101E38, &unk_1000BCF80);

        swift_arrayDestroy();
      }

      else
      {
      }

      v95 = v112;
      v96 = v117;
      if (v81)
      {
        v97 = v121;
        (*(v120 + 8))(v119, v121);
        v98 = 1;
      }

      else
      {
        v97 = v121;
        v106(v117, v119, v121);
        v98 = 0;
      }

      v118(v96, v98, 1, v97);
      v99 = v115;
      *v115 = v77;
      sub_100051A10(v96, v99 + *(v95 + 20));
      *(v4 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImageflags) = v30;
      v100 = v116;
      sub_100051A80(v99, v116);
      v101 = *(v111 + 56);
      v101(v100, 0, 1, v95);
      v102 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImage;
      swift_beginAccess();
      sub_100012DA0(v100, v4 + v102, &unk_100102610, &unk_1000BD130);
      swift_endAccess();
      sub_10003A760(v99, a3);
      v101(a3, 0, 1, v95);
      goto LABEL_67;
    }
  }

  else
  {
    v65 = v43;

    (*(v120 + 56))(v13, 1, 1, v121);
  }

  sub_10000EBA4(v13, &qword_100101F08, &unk_1000BD100);
LABEL_41:
  v67 = v111;
  v66 = v112;
  if (qword_100101630 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_100012AAC(v68, qword_100102748);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 67109890;
    *(v71 + 4) = v109;
    *(v71 + 8) = 256;
    *(v71 + 10) = v123;
    *(v71 + 11) = 1024;
    *(v71 + 13) = v30;
    *(v71 + 17) = 2112;
    swift_beginAccess();
    v73 = v124;
    *(v71 + 19) = v124;
    *v72 = v73;
    v74 = v73;
    _os_log_impl(&_mh_execute_header, v69, v70, "HomePodSetupViewModel: could not find a device image for asset: %u for deviceColorCode: %hhu and flags: %u named: %@ returning a blank image.", v71, 0x1Bu);
    sub_10000EBA4(v72, &qword_100101E38, &unk_1000BCF80);
  }

  (*(v67 + 56))(a3, 1, 1, v66);
LABEL_67:
}

uint64_t sub_10004ED84@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for AdjustedImage(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImageflags) != a1)
  {
    goto LABEL_4;
  }

  v12 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImage;
  swift_beginAccess();
  sub_10000F25C(v2 + v12, v7, &unk_100102610, &unk_1000BD130);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000EBA4(v7, &unk_100102610, &unk_1000BD130);
LABEL_4:
    v13 = 1;
    return (*(v9 + 56))(a2, v13, 1, v8);
  }

  sub_10003A760(v7, v11);
  if (qword_100101630 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100102748);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupModel: adjustedProductImage returning cached image.", v17, 2u);
  }

  sub_10003A760(v11, a2);
  v13 = 0;
  return (*(v9 + 56))(a2, v13, 1, v8);
}

char *sub_10004F00C()
{

  sub_10000EBA4(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_defaultRoomIndexPath, &unk_100104950, &qword_1000BD280);
  v1 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000EBA4(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sessionUUID, &qword_1001031C0, &unk_1000BD6F0);

  sub_10001466C(*(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 8), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 16), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 24), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 32), *(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_preAuthInformation + 40));

  sub_10000EBA4(v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_cachedProductImage, &unk_100102610, &unk_1000BD130);

  return v0;
}

uint64_t sub_10004F2EC()
{
  sub_10004F00C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomePodSetupModel(uint64_t a1)
{
  result = qword_100102788;
  if (!qword_100102788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004F398(uint64_t a1)
{
  sub_10004F658(319, &qword_100102798, &type metadata accessor for IndexPath);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_10004F658(319, &unk_1001027A0, &type metadata accessor for UUID);
      if (v3 <= 0x3F)
      {
        sub_10004F658(319, &qword_1001020D0, type metadata accessor for AdjustedImage);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10004F658(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HomePodSetupTestMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomePodSetupTestMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004F800()
{
  result = qword_1001031B8;
  if (!qword_1001031B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001031B8);
  }

  return result;
}

uint64_t sub_10004F854()
{
  v1 = v0;
  v137 = sub_10000E6C4(&qword_1001031C0, &unk_1000BD6F0);
  v2 = __chkstk_darwin(v137);
  v4 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v136 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v136 - v12;
  v141 = 0;
  v142 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v141 = 0xD000000000000011;
  v142 = 0x80000001000C4B40;
  v14 = *(v8 + 16);
  v14(v13, v0 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceIdentifier, v7);
  v14(v11, v13, v7);
  v15 = String.init<A>(reflecting:)();
  v17 = v16;
  (*(v8 + 8))(v13, v7);
  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = v141;
  v21 = v142;
  v138 = 0xD000000000000013;
  v141 = 0xD000000000000013;
  v142 = 0x80000001000C4B20;
  v20._object = v21;
  String.append(_:)(v20);

  v22 = v141;
  v23 = v142;
  strcpy(v143, "sessionUUID=");
  BYTE5(v143[1]) = 0;
  HIWORD(v143[1]) = -5120;
  v24 = OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_sessionUUID;
  swift_beginAccess();
  v25 = v1;
  sub_10000F25C(v1 + v24, v6, &qword_1001031C0, &unk_1000BD6F0);
  sub_10000F25C(v6, v4, &qword_1001031C0, &unk_1000BD6F0);
  v26 = String.init<A>(reflecting:)();
  v28 = v27;
  sub_10000EBA4(v6, &qword_1001031C0, &unk_1000BD6F0);
  v29._countAndFlagsBits = v26;
  v29._object = v28;
  String.append(_:)(v29);

  v30._countAndFlagsBits = 32;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  v31 = v143[0];
  v32 = v143[1];
  v143[0] = v22;
  v143[1] = v23;

  v33._countAndFlagsBits = v31;
  v33._object = v32;
  String.append(_:)(v33);

  v34 = v143[0];
  v35 = v143[1];
  v143[0] = 0x3D69737372;
  v143[1] = 0xE500000000000000;
  v36 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_rssi + 4);
  LODWORD(v139) = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_rssi);
  BYTE4(v139) = v36;
  sub_10000E6C4(&qword_1001031C8, &qword_1000BD700);
  v37._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v37);

  v38._countAndFlagsBits = 32;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39 = v143[0];
  v40 = v143[1];
  v143[0] = v34;
  v143[1] = v35;

  v41._countAndFlagsBits = v39;
  v41._object = v40;
  String.append(_:)(v41);

  v42 = v143[0];
  v43 = v143[1];
  strcpy(v143, "dismissType=");
  BYTE5(v143[1]) = 0;
  HIWORD(v143[1]) = -5120;
  v44 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType + 4);
  LODWORD(v139) = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_dismissType);
  BYTE4(v139) = v44;
  sub_10000E6C4(&qword_1001031D8, &qword_1000BD710);
  v45._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  String.append(_:)(v46);
  v47 = v143[0];
  v48 = v143[1];
  v143[0] = v42;
  v143[1] = v43;

  v49._countAndFlagsBits = v47;
  v49._object = v48;
  String.append(_:)(v49);

  v50 = v143[0];
  v51 = v143[1];
  v143[0] = 0x3D726F727265;
  v143[1] = 0xE600000000000000;
  v139 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_error);
  v52 = v139;
  sub_10000E6C4(&qword_1001031E0, &qword_1000BD718);
  v53._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v53);

  v54._countAndFlagsBits = 32;
  v54._object = 0xE100000000000000;
  String.append(_:)(v54);
  v55 = v143[0];
  v56 = v143[1];
  v143[0] = v50;
  v143[1] = v51;

  v57._countAndFlagsBits = v55;
  v57._object = v56;
  String.append(_:)(v57);

  v58 = v143[0];
  v59 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v143[0] = 0xD000000000000015;
  v143[1] = 0x80000001000C4BC0;
  sub_1000503B4(*(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceModelCode));
  v60._countAndFlagsBits = String.init(cString:)();
  String.append(_:)(v60);

  v61._countAndFlagsBits = 32;
  v61._object = 0xE100000000000000;
  String.append(_:)(v61);
  v62 = v143[0];
  v63 = v143[1];
  v143[0] = v58;
  v143[1] = v59;

  v64._countAndFlagsBits = v62;
  v64._object = v63;
  String.append(_:)(v64);

  v65 = v143[0];
  v66 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v143[0] = 0xD000000000000015;
  v143[1] = 0x80000001000C4BE0;
  LOBYTE(v139) = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_otherDeviceColorCode);
  v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v67);

  v68._countAndFlagsBits = 32;
  v68._object = 0xE100000000000000;
  String.append(_:)(v68);
  v69 = v143[0];
  v70 = v143[1];
  v143[0] = v65;
  v143[1] = v66;

  v71._countAndFlagsBits = v69;
  v71._object = v70;
  String.append(_:)(v71);

  v72 = v143[0];
  v73 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(v143, "progressEvent=");
  HIBYTE(v143[1]) = -18;
  sub_100050478(*(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_progressEvent));
  v139 = String.init(cString:)();
  v140 = v74;
  v75._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v75);

  v76._countAndFlagsBits = 32;
  v76._object = 0xE100000000000000;
  String.append(_:)(v76);
  v77 = v143[0];
  v78 = v143[1];
  v143[0] = v72;
  v143[1] = v73;

  v79._countAndFlagsBits = v77;
  v79._object = v78;
  String.append(_:)(v79);

  v80 = v143[0];
  v81 = v143[1];
  strcpy(v143, "productName=");
  BYTE5(v143[1]) = 0;
  HIWORD(v143[1]) = -5120;
  v82 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName + 8);
  v139 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_productName);
  v140 = v82;

  v83._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v83);

  v84._countAndFlagsBits = 32;
  v84._object = 0xE100000000000000;
  String.append(_:)(v84);
  v85 = v143[0];
  v86 = v143[1];
  v143[0] = v80;
  v143[1] = v81;

  v87._countAndFlagsBits = v85;
  v87._object = v86;
  String.append(_:)(v87);

  v88 = v143[0];
  v89 = v143[1];
  strcpy(v143, "stereoRole=");
  HIDWORD(v143[1]) = -352321536;
  sub_100050D0C(*(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoRole));
  v139 = String.init(cString:)();
  v140 = v90;
  v91._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v91);

  v92._countAndFlagsBits = 32;
  v92._object = 0xE100000000000000;
  String.append(_:)(v92);
  v93 = v143[0];
  v94 = v143[1];
  v143[0] = v88;
  v143[1] = v89;

  v95._countAndFlagsBits = v93;
  v95._object = v94;
  String.append(_:)(v95);

  v96 = v143[0];
  v97 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v143[0] = 0xD000000000000017;
  v143[1] = 0x80000001000C4C60;
  LOBYTE(v139) = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_stereoCounterpartColor);
  v98._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v98);

  v99._countAndFlagsBits = 32;
  v99._object = 0xE100000000000000;
  String.append(_:)(v99);
  v100 = v143[0];
  v101 = v143[1];
  v143[0] = v96;
  v143[1] = v97;

  v102._countAndFlagsBits = v100;
  v102._object = v101;
  String.append(_:)(v102);

  v103 = v143[0];
  v104 = v143[1];
  strcpy(v143, "deviceGUID=");
  HIDWORD(v143[1]) = -352321536;
  v105 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID + 8);
  v139 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceGUID);
  v140 = v105;

  v106._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v106);

  v107._countAndFlagsBits = 32;
  v107._object = 0xE100000000000000;
  String.append(_:)(v107);
  v108 = v143[0];
  v109 = v143[1];
  v143[0] = v103;
  v143[1] = v104;

  v110._countAndFlagsBits = v108;
  v110._object = v109;
  String.append(_:)(v110);

  v111 = v143[0];
  v112 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  v143[0] = v138;
  v143[1] = 0x80000001000C4C80;
  v113 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber + 8);
  v139 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_deviceSerialNumber);
  v140 = v113;

  v114._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v114);

  v115._countAndFlagsBits = 32;
  v115._object = 0xE100000000000000;
  String.append(_:)(v115);
  v116 = v143[0];
  v117 = v143[1];
  v143[0] = v111;
  v143[1] = v112;

  v118._countAndFlagsBits = v116;
  v118._object = v117;
  String.append(_:)(v118);

  v119 = v143[0];
  v120 = v143[1];
  strcpy(v143, "imageName=");
  BYTE3(v143[1]) = 0;
  HIDWORD(v143[1]) = -369098752;
  v121 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName + 8);
  v139 = *(v25 + OBJC_IVAR____TtC14HDSViewService17HomePodSetupModel_imageName);
  v140 = v121;

  v122._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v122);

  v123._countAndFlagsBits = 32;
  v123._object = 0xE100000000000000;
  String.append(_:)(v123);
  v124 = v143[0];
  v125 = v143[1];
  v143[0] = v119;
  v143[1] = v120;

  v126._countAndFlagsBits = v124;
  v126._object = v125;
  String.append(_:)(v126);

  v128 = v143[0];
  v127 = v143[1];
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v143[0] = 0xD000000000000011;
  v143[1] = 0x80000001000C4C40;
  LOBYTE(v139) = sub_10004B0F0();
  v129._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v129);

  v130._countAndFlagsBits = 32;
  v130._object = 0xE100000000000000;
  String.append(_:)(v130);
  v131 = v143[0];
  v132 = v143[1];
  v143[0] = v128;
  v143[1] = v127;

  v133._countAndFlagsBits = v131;
  v133._object = v132;
  String.append(_:)(v133);

  v134._countAndFlagsBits = 62;
  v134._object = 0xE100000000000000;
  String.append(_:)(v134);

  return v143[0];
}

const char *sub_1000503B4(int a1)
{
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return "SEish";
      }

      else
      {
        return "J3XXish";
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return "?";
      }

      return "D22ish";
    }

    else
    {
      return "Unknown";
    }
  }

  else if (a1 <= 5)
  {
    if (a1 == 4)
    {
      return "N112ish";
    }

    else
    {
      return "B520ish";
    }
  }

  else if (a1 == 6)
  {
    return "B620ish";
  }

  else
  {
    if (a1 != 7)
    {
      return "?";
    }

    return "J255ish";
  }
}

const char *sub_100050478(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

const char *sub_100050D0C(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_1000EFE00[a1];
  }
}

id sub_100050D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unsigned __int8 *sub_100050E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = a1;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  sub_100051528();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000B0E60();
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      v9 = v64;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v22 = v9 - 1;
        if (v22)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            LOBYTE(v15) = 0;
            v26 = result + 1;
            v17 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v15 * a5;
              if ((v29 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v15 = v29 + (v27 + v28);
              if ((v15 >> 8))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
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
          LOBYTE(v33) = 0;
          v17 = 1;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v36 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if ((v33 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v33;
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
          LOBYTE(v15) = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v15 = v21 - (v18 + v19);
            if ((v15 & 0xFFFFFF00) != 0)
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
        v20 = 0;
        v17 = 0;
LABEL_127:

        return (v20 | (v17 << 8));
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

  v39 = HIBYTE(v7) & 0xF;
  v65 = v8;
  v66 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        LOBYTE(v41) = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        v17 = 1;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v63 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if ((v41 >> 8))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        LOBYTE(v41) = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v65 + 1;
        v17 = 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
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

          v48 = v41 * a5;
          if ((v48 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if ((v41 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      LOBYTE(v41) = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v65 + 1;
      v17 = 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v56 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if ((v41 >> 8))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v17 = 0;
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000513EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10005157C(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE1(result) & 1;
    v13 = result | ((BYTE1(result) & 1) << 8);
LABEL_8:
    LOBYTE(v14[0]) = (a4 & 0x1000000000000000) != 0;
    return v13 | (LOBYTE(v14[0]) << 16);
  }

  return result;
}

uint64_t sub_1000514BC(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return 16;
  }

  else
  {
    return byte_1000BD784[a1];
  }
}

unint64_t sub_1000514DC()
{
  result = qword_100103208;
  if (!qword_100103208)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100103208);
  }

  return result;
}

unint64_t sub_100051528()
{
  result = qword_100103210;
  if (!qword_100103210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103210);
  }

  return result;
}

uint64_t sub_10005157C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1000B1258(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1000B1258(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1000B1258(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 87;
        if (a6 > 10)
        {
          v40 = a6 + 55;
        }

        else
        {
          v39 = 97;
          v40 = 65;
        }

        if (a6 <= 10)
        {
          v41 = a6 + 48;
        }

        else
        {
          v41 = 58;
        }

        if (v27)
        {
          LOBYTE(v32) = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v41)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                v38 = 1;
                if (v44 < 0x61 || v44 >= v39)
                {
                  return v37 | (v38 << 8);
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            if (((v32 * a6) & 0xFF00) != 0)
            {
              goto LABEL_96;
            }

            v32 = (v32 * a6) + (v44 + v45);
            if ((v32 >> 8))
            {
              goto LABEL_96;
            }

            ++v42;
            --v43;
          }

          while (v43);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 8);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v46 = a6 + 87;
      if (a6 > 10)
      {
        v47 = a6 + 55;
      }

      else
      {
        v46 = 97;
        v47 = 65;
      }

      if (a6 <= 10)
      {
        v48 = a6 + 48;
      }

      else
      {
        v48 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        while (1)
        {
          v49 = *v27;
          if (v49 < 0x30 || v49 >= v48)
          {
            if (v49 < 0x41 || v49 >= v47)
            {
              v37 = 0;
              v38 = 1;
              if (v49 < 0x61 || v49 >= v46)
              {
                return v37 | (v38 << 8);
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) + (v49 + v50);
          if ((v32 >> 8))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 8);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        LOBYTE(v32) = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 8);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (((v32 * a6) & 0xFF00) != 0)
          {
            goto LABEL_96;
          }

          v32 = (v32 * a6) - (v35 + v36);
          if ((v32 & 0xFFFFFF00) != 0)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 8);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_100051A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdjustedImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100051AF0(void *a1)
{
  v2 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView;
  v3 = *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v6];
    *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewConstraints] = 0;

    [v1 setNeedsUpdateConstraints];
  }

LABEL_4:
}

void sub_100051BDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v2 addSubview:v7];
    [v2 setNeedsUpdateConstraints];
  }

LABEL_4:
}

char *sub_100051CA4(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewConstraints] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewsGuide;
  *&v1[v3] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_mainTitleLabel] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HomePodWiFiTableView();
  v4 = objc_msgSendSuper2(&v6, "initWithCardStyle:", a1);
  [v4 addLayoutGuide:*&v4[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewsGuide]];
  return v4;
}

id sub_100051DB0()
{
  v47.receiver = v0;
  v47.super_class = type metadata accessor for HomePodWiFiTableView();
  result = objc_msgSendSuper2(&v47, "updateConstraints");
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView];
  if (v2)
  {
    v3 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewConstraints;
    if (!*&v0[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewConstraints])
    {
      v4 = *&v0[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label];
      if (v4)
      {
        v5 = *&v0[OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_mainTitleLabel];
        if (v5)
        {
          sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1000BD7A0;
          v7 = v5;
          v8 = v2;
          v46 = v4;
          v9 = [v7 topAnchor];
          v10 = [v0 topAnchor];
          v11 = PRXMainContentMargin;
          v12 = [v9 constraintEqualToAnchor:v10 constant:PRXMainContentMargin + 10.0];

          *(v6 + 32) = v12;
          v13 = [v7 leadingAnchor];
          v14 = [v0 leadingAnchor];
          v15 = [v13 constraintEqualToAnchor:v14 constant:60.0];

          *(v6 + 40) = v15;
          v16 = [v7 trailingAnchor];
          v17 = [v0 trailingAnchor];
          v18 = [v16 constraintEqualToAnchor:v17 constant:-60.0];

          *(v6 + 48) = v18;
          v19 = [v7 bottomAnchor];

          v20 = v8;
          v21 = [v20 topAnchor];
          v22 = [v19 constraintEqualToAnchor:v21 constant:-v11];

          *(v6 + 56) = v22;
          v23 = [v20 heightAnchor];
          v24 = [v23 constraintLessThanOrEqualToConstant:300.0];

          *(v6 + 64) = v24;
          v25 = [v20 leadingAnchor];
          v26 = [v0 leadingAnchor];
          v27 = [v25 constraintEqualToAnchor:v26 constant:40.0];

          *(v6 + 72) = v27;
          v28 = [v20 trailingAnchor];
          v29 = [v0 trailingAnchor];
          v30 = [v28 constraintEqualToAnchor:v29 constant:-40.0];

          *(v6 + 80) = v30;
          v31 = [v20 bottomAnchor];

          v32 = v46;
          v33 = [v32 topAnchor];
          v34 = [v31 constraintEqualToAnchor:v33 constant:-5.0];

          *(v6 + 88) = v34;
          v35 = [v32 leadingAnchor];
          v36 = [v0 leadingAnchor];
          v37 = [v35 constraintEqualToAnchor:v36 constant:40.0];

          *(v6 + 96) = v37;
          v38 = [v32 trailingAnchor];
          v39 = [v0 trailingAnchor];
          v40 = [v38 constraintEqualToAnchor:v39 constant:-20.0];

          *(v6 + 104) = v40;
          v41 = [v32 bottomAnchor];

          v42 = [v0 bottomAnchor];
          v43 = [v41 constraintEqualToAnchor:v42 constant:-20.0];

          *(v6 + 112) = v43;
          v44 = objc_opt_self();
          sub_1000163D8();
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v44 activateConstraints:isa];

          *&v0[v3] = v6;
        }
      }
    }
  }

  return result;
}

id sub_1000523C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodWiFiTableView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10005249C()
{
  *(v0 + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewConstraints) = 0;
  v1 = OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableViewsGuide;
  *(v0 + v1) = [objc_allocWithZone(UILayoutGuide) init];
  *(v0 + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_mainTitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_tableView) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService20HomePodWiFiTableView_label) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_100052560()
{
  result = sub_100052580();
  qword_100108948 = result;
  return result;
}

void *sub_100052580()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(6899277, 0xE300000000000000, 1, isUniquelyReferenced_nonNull_native);
  v1 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x656D75736552, 0xE600000000000000, 2, v1);
  v2 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6D6574737953, 0xE600000000000000, 4, v2);
  v3 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6369766544726550, 0xE900000000000065, 8, v3);
  v4 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6E6569736E617254, 0xE900000000000074, 16, v4);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(1868983881, 0xE400000000000000, 32, v5);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x7373655372657355, 0xEB000000006E6F69, 64, v6);
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x556E49746C697542, 0xE900000000000049, 128, v7);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6C6175736956, 0xE600000000000000, 256, v8);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(4408910, 0xE300000000000000, 512, v9);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(1769105747, 0xE400000000000000, 1024, v10);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6F69647541, 0xE500000000000000, 2048, v11);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x4449656C707041, 0xE700000000000000, 4096, v12);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x496874754169464DLL, 0xE900000000000043, 0x2000, v13);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x7774666F5369464DLL, 0xEF74726543657261, 0x4000, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6E656B6F5469464DLL, 0xE800000000000000, 0x8000, v15);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x636572726F636E49, 0xE900000000000074, 0x10000, v16);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x656C74746F726854, 0xE800000000000000, 0x20000, v17);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x686374614DLL, 0xE500000000000000, 0x40000, v18);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x7465736552, 0xE500000000000000, 0x80000, v19);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0xD000000000000012, 0x80000001000C52A0, 0x100000, v20);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0xD000000000000013, 0x80000001000C52C0, 0x200000, v21);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x74694B656D6F48, 0xE700000000000000, 0x400000, v22);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x6552657571696E55, 0xEC000000656D7573, 0x800000, v23);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x74655374696C7053, 0xEA00000000007075, 0x1000000, v24);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0xD000000000000010, 0x80000001000C52E0, 0x2000000, v25);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x5574694B656D6F48, 0xEB00000000726573, 0x4000000, v26);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x615063696C627550, 0xEE0064726F777373, 0x8000000, v27);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x566874754169464DLL, 0xE900000000000033, 0x10000000, v28);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0xD000000000000012, 0x80000001000C5300, 0x20000000, v29);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000550E8(0x69687372656E774FLL, 0xEE00666F6F725070, 0x40000000, v30);
  return &_swiftEmptyDictionarySingleton;
}

unint64_t sub_100052C28(int a1)
{
  if (qword_100101638 != -1)
  {
LABEL_21:
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_100108948;
  v3 = qword_100108948 + 64;
  v4 = 1 << *(qword_100108948 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_100108948 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(v2 + 48) + ((v8 << 8) | (4 * v11)));
    if ((v12 & ~a1) == 0)
    {
      swift_beginAccess();
      v13 = qword_100108948;
      if (*(qword_100108948 + 16) && (v14 = sub_100053CD4(v12), (v15 & 1) != 0))
      {
        v16 = (*(v13 + 56) + 16 * v14);
        v17 = v16[1];
        v30 = *v16;
        swift_endAccess();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10005372C(0, v9[2] + 1, 1, v9);
        }

        v19 = v9[2];
        v18 = v9[3];
        v20 = (v19 + 1);
        if (v19 >= v18 >> 1)
        {
          v22 = sub_10005372C((v18 > 1), v19 + 1, 1, v9);
          v20 = (v19 + 1);
          v9 = v22;
        }

        v9[2] = v20;
        v21 = &v9[2 * v19];
        v21[4] = v30;
        v21[5] = v17;
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  _StringGuts.grow(_:)(31);

  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 8233;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = Array.description.getter();
  v27 = v26;

  v28._countAndFlagsBits = v25;
  v28._object = v27;
  String.append(_:)(v28);

  return 0xD000000000000019;
}

BOOL sub_100052F38(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100052F68@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100052F94@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100053068@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_10000E984(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1000530A8()
{
  result = qword_100103268;
  if (!qword_100103268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103268);
  }

  return result;
}

unint64_t sub_100053100()
{
  result = qword_100103270;
  if (!qword_100103270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103270);
  }

  return result;
}

unint64_t sub_10005315C()
{
  result = qword_100103278;
  if (!qword_100103278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103278);
  }

  return result;
}

unint64_t sub_1000531B4()
{
  result = qword_100103280;
  if (!qword_100103280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103280);
  }

  return result;
}

id *sub_100053208(id *result, int64_t a2, char a3, unint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000E6C4(&qword_100103298, &qword_1000BDA00);
  v10 = *(type metadata accessor for URLQueryItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = (2 * ((result - v12) / v11));
LABEL_19:
  v15 = *(type metadata accessor for URLQueryItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

id *sub_1000533E0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&unk_100104320, &qword_1000BDA08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000534EC(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032A0, &qword_1000BEAA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000535F8(id *result, int64_t a2, char a3, id *a4)
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
    sub_10000E6C4(&qword_1001023A0, &qword_1000BD268);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000E6C4(&qword_100102040, &qword_1000BD158);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_10005372C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_100103288, &qword_1000BD9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100053838(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032C0, &unk_1000BDA20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id *sub_10005392C(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032B0, &qword_1000BDA18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id *sub_100053A30(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000E6C4(&qword_1001032B8, &unk_1000BEAB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 5));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100053B3C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100053D44(a1, v4);
}

unint64_t sub_100053B80(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100053E0C(a1, a2, v4);
}

unint64_t sub_100053BFC(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_100053FA0(a1, v2);
}

unint64_t sub_100053C8C(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_100053EC4(v1, v2);
}

unint64_t sub_100053CD4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  v2 = Hasher._finalize()();

  return sub_100053F34(v1, v2);
}

unint64_t sub_100053D44(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10000FCF4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10000EA04(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100053E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100053EC4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100053F34(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100053FA0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1000540A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E6C4(&qword_100101B18, &qword_1000BCC40);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
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
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (v41)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v44 = *(v24 + 32);
        v42 = v25;
        v43 = v26;
        v27 = (*(v5 + 56) + 16 * v23);
        v28 = *v27;
        v29 = v27[1];
      }

      else
      {
        sub_10000FCF4(v24, &v42);
        v30 = (*(v5 + 56) + 16 * v23);
        v28 = *v30;
        v29 = v30[1];
      }

      v31 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v42;
      v18 = v43;
      *(v16 + 32) = v44;
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = (*(v7 + 56) + 16 * v15);
      *v19 = v28;
      v19[1] = v29;
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

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_10005436C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E6C4(&qword_100101968, &qword_1000BC238);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v14 = v6 + 64;
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
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_10000E9F4((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_10000FCF4(v23, &v37);
        sub_10000EA58(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_10000E9F4(v36, (*(v7 + 56) + 32 * v15));
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
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_100054624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E6C4(&qword_1001019D8, &qword_1000BC2A8);
  v41 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 56 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v31 = *(v28 + 32);
        v45 = *(v28 + 48);
        v43 = v30;
        v44 = v31;
        v42 = v29;
      }

      else
      {
        sub_1000161DC(v28, &v42);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v32 = Hasher._finalize()();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 56 * v15;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      *(v17 + 48) = v45;
      *(v17 + 16) = v19;
      *(v17 + 32) = v20;
      *v17 = v18;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v2;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100054904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E6C4(&qword_100103290, &qword_1000BD9F8);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      v25 = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
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

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100054BA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000E6C4(&qword_1001032A8, &qword_1000BDA10);
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v21;
      }

      v23 = static Hasher._hash(seed:bytes:count:)();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

uint64_t sub_100054E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100053B3C(a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_1000540A4(v15, a4 & 1);
      v21 = sub_100053B3C(a3);
      if ((v16 & 1) != (v22 & 1))
      {
LABEL_17:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_10005540C();
  }

  v18 = *v5;
  if ((v16 & 1) == 0)
  {
LABEL_13:
    result = sub_10000FCF4(a3, v30);
    v18[(v12 >> 6) + 8] |= 1 << v12;
    v23 = v18[6] + 40 * v12;
    v24 = v31;
    v25 = v30[1];
    *v23 = v30[0];
    *(v23 + 16) = v25;
    *(v23 + 32) = v24;
    v26 = (v18[7] + 16 * v12);
    *v26 = a1;
    v26[1] = a2;
    v27 = v18[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      v18[2] = v29;
      return result;
    }

    goto LABEL_16;
  }

LABEL_8:
  v19 = (v18[7] + 16 * v12);
  *v19 = a1;
  v19[1] = a2;
}

_OWORD *sub_100054F9C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100053B3C(a2);
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
      sub_1000555AC();
      goto LABEL_7;
    }

    sub_10005436C(v13, a3 & 1);
    v19 = sub_100053B3C(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_10000FCF4(a2, v21);
      return sub_100055390(v10, v21, a1, v16);
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
  sub_10000E70C(v17);

  return sub_10000E9F4(a1, v17);
}

unint64_t sub_1000550E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100053CD4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100054904(v16, a4 & 1);
      result = sub_100053CD4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10005590C();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_100055248(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100053C8C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      v20 = v19[7];
      v21 = *(v20 + 8 * result);
      *(v20 + 8 * result) = a1;

      return _objc_release_x1(result, v21);
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return result;
    }

    goto LABEL_15;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100055A74();
    result = v17;
    goto LABEL_8;
  }

  sub_100054BA0(v14, a3 & 1);
  result = sub_100053C8C(a2);
  if ((v15 & 1) == (v18 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1(result, v21);
}

_OWORD *sub_100055390(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10000E9F4(a3, (a4[7] + 32 * a1));
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

void sub_10005540C()
{
  v1 = v0;
  sub_10000E6C4(&qword_100101B18, &qword_1000BCC40);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_10000FCF4(*(v2 + 48) + 40 * v17, v25);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v4 + 48) + 40 * v17;
        v22 = v26;
        v23 = v25[1];
        *v21 = v25[0];
        *(v21 + 16) = v23;
        *(v21 + 32) = v22;
        v24 = (*(v4 + 56) + 16 * v17);
        *v24 = v20;
        v24[1] = v19;
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
}

void sub_1000555AC()
{
  v1 = v0;
  sub_10000E6C4(&qword_100101968, &qword_1000BC238);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        sub_10000FCF4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000EA58(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_10000E9F4(v22, (*(v4 + 56) + v17));
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
}

void sub_100055750()
{
  v1 = v0;
  sub_10000E6C4(&qword_1001019D8, &qword_1000BC2A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 56 * v17;
        sub_1000161DC(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

void sub_10005590C()
{
  v1 = v0;
  sub_10000E6C4(&qword_100103290, &qword_1000BD9F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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
}

void sub_100055A74()
{
  v1 = v0;
  sub_10000E6C4(&qword_1001032A8, &qword_1000BDA10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        v19 = v18;
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
}

void sub_100055BDC()
{
  v113.receiver = v0;
  v113.super_class = type metadata accessor for ScannerViewController(0);
  objc_msgSendSuper2(&v113, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = v1;
  [v1 setClipsToBounds:1];

  v3 = [v0 contentView];
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor:v5];

  v6 = [v0 contentView];
  [v6 setOpaque:0];

  v7 = [v0 contentView];
  v8 = [v7 titleView];

  if (v8)
  {
    v9 = [v4 clearColor];
    [v8 setBackgroundColor:v9];
  }

  v10 = [v0 contentView];
  v11 = [v10 titleView];

  if (v11)
  {
    [v11 setOpaque:0];
  }

  v12 = *&v0[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_scannerEngineViewController];
  [v0 addChildViewController:v12];
  v13 = [v12 view];
  if (!v13)
  {
    goto LABEL_33;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = v15;
  v17 = [v12 view];
  if (!v17)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v18 = v17;
  [v16 addSubview:v17];

  v19 = *&v0[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_viewfinderViewController];
  [v0 addChildViewController:v19];
  v20 = [v19 view];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = v22;
  v24 = [v19 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  [v23 addSubview:v24];

  v26 = [objc_allocWithZone(UIView) init];
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [v4 clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setOpaque:0];
  v28 = [v0 contentView];
  [v28 addSubview:v26];

  PRXCardDefaultSize();
  v30 = v29;
  v31 = [v0 contentView];
  v32 = [v31 mainContentGuide];

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000BDA30;
  v34 = [v12 view];
  if (!v34)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v35 = v34;
  v36 = [v34 leftAnchor];

  v37 = [v0 view];
  if (!v37)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [v37 leftAnchor];

  v40 = [v36 constraintEqualToAnchor:v39];
  *(v33 + 32) = v40;
  v41 = [v12 view];
  if (!v41)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v42 = v41;
  v43 = [v41 rightAnchor];

  v44 = [v0 view];
  if (!v44)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v45 = v44;
  v46 = [v44 rightAnchor];

  v47 = [v43 constraintEqualToAnchor:v46];
  *(v33 + 40) = v47;
  v48 = [v12 view];
  if (!v48)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v49 = v48;
  v50 = [v48 heightAnchor];

  v51 = [v0 view];
  if (!v51)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v52 = v51;
  v53 = [v51 heightAnchor];

  v54 = [v50 constraintEqualToAnchor:v53 multiplier:2.0];
  *(v33 + 48) = v54;
  v55 = [v12 view];
  if (!v55)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v56 = v55;
  v57 = [v55 centerYAnchor];

  v58 = [v0 view];
  if (!v58)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v59 = v58;
  v60 = [v58 centerYAnchor];

  v61 = [v57 constraintEqualToAnchor:v60];
  *(v33 + 56) = v61;
  v62 = [v19 view];
  if (!v62)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = v62;
  v64 = [v62 leftAnchor];

  v65 = [v0 view];
  if (!v65)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v66 = v65;
  v67 = [v65 leftAnchor];

  v68 = [v64 constraintEqualToAnchor:v67];
  *(v33 + 64) = v68;
  v69 = [v19 view];
  if (!v69)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v70 = v69;
  v71 = [v69 rightAnchor];

  v72 = [v0 view];
  if (!v72)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v73 = v72;
  v74 = [v72 rightAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  *(v33 + 72) = v75;
  v76 = [v19 view];
  if (!v76)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v77 = v76;
  v78 = [v76 heightAnchor];

  v79 = [v0 view];
  if (!v79)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v80 = v79;
  v81 = [v79 heightAnchor];

  v82 = [v78 constraintEqualToAnchor:v81 multiplier:3.0];
  *(v33 + 80) = v82;
  v83 = [v19 view];
  if (!v83)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v84 = v83;
  v85 = v30 * 0.6 + 26.0;
  v112 = objc_opt_self();
  v86 = [v84 centerYAnchor];

  v87 = [v32 bottomAnchor];
  v88 = [v86 constraintEqualToAnchor:v87 constant:v85 * -0.5];

  *(v33 + 88) = v88;
  v89 = [v26 heightAnchor];
  v90 = [v89 constraintEqualToConstant:v85];

  *(v33 + 96) = v90;
  v91 = [v26 topAnchor];
  v92 = [v32 topAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v33 + 104) = v93;
  v94 = [v26 bottomAnchor];
  v95 = [v32 bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v33 + 112) = v96;
  v97 = [v26 leadingAnchor];
  v98 = [v32 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v33 + 120) = v99;
  v100 = [v26 trailingAnchor];
  v101 = [v32 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101];

  *(v33 + 128) = v102;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v112 activateConstraints:isa];

  v104 = [v0 view];
  if (!v104)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v105 = v104;
  v106 = [v19 view];
  if (!v106)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v107 = v106;
  [v105 sendSubviewToBack:v106];

  v108 = [v0 view];
  if (!v108)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v109 = v108;
  v110 = [v12 view];
  if (v110)
  {
    v111 = v110;
    [v109 sendSubviewToBack:v110];

    return;
  }

LABEL_57:
  __break(1u);
}

id sub_100056968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScannerViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScannerViewController(uint64_t a1)
{
  result = qword_100103300;
  if (!qword_100103300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100056A80(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

__n128 sub_100056B28(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100056B34(uint64_t a1, int a2)
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

uint64_t sub_100056B7C(uint64_t result, int a2, int a3)
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

uint64_t sub_100056BCC()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103310);
  v1 = sub_100012AAC(v0, qword_100103310);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100056C94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100056CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100056D0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return (_stringCompareWithSmolCheck(_:_:expecting:)() ^ 1) & 1;
  }
}

uint64_t sub_100056D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v2 && v5 == v3)
  {
    return 0;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_100056D84(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

unint64_t sub_100056E28()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(39);

  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0x7A696C61636F6C20;
  v6._object = 0xEF3D656D614E6465;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 0xD000000000000013;
}

unint64_t sub_100056EFC()
{
  result = qword_100103328;
  if (!qword_100103328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103328);
  }

  return result;
}

Swift::Int sub_100056F50(id **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100057A28(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100056FBC(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100056FBC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = (v2 / 2);
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100057184(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000570B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000570B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 32 * v4;
    result = *(v9 + 16);
    v10 = *(v9 + 24);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 16) && v10 == *(v12 + 24);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v12 + 32);
      v15 = *(v12 + 40);
      result = *(v12 + 48);
      v10 = *(v12 + 56);
      v16 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      *(v12 + 16) = result;
      *(v12 + 24) = v10;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100057184(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_105:
    v8 = *v96;
    if (!*v96)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_100057A14(v7);
      v7 = result;
    }

    v87 = v7 + 2;
    v88 = v7[2];
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v7[2 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_100057760((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v8);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_129;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_130;
        }

        *v89 = v90;
        v89[1] = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_131;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3 + 32 * v6;
      result = *(v9 + 16);
      v10 = *a3 + 32 * v8;
      if (result == *(v10 + 16) && *(v9 + 24) == *(v10 + 24))
      {
        v12 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = (v10 + 88);
        do
        {
          result = *(v13 - 1);
          if (result == *(v13 - 5) && *v13 == *(v13 - 4))
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          v13 += 4;
          ++v6;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 16;
          v16 = (32 * v8) | 0x18;
          v17 = v6;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v19 = (v25 + v16);
              v20 = (v25 + v15);
              v21 = *(v19 - 3);
              v22 = *(v19 - 1);
              v23 = *v19;
              v24 = *v20;
              *(v19 - 3) = *(v20 - 1);
              *(v19 - 1) = v24;
              *(v20 - 1) = v21;
              *v20 = v22;
              *(v20 + 1) = v23;
            }

            ++v18;
            v15 -= 32;
            v16 += 32;
          }

          while (v18 < v17);
        }
      }
    }

    v26 = a3[1];
    if (v6 < v26)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v26)
        {
          v27 = a3[1];
        }

        else
        {
          v27 = v8 + a4;
        }

        if (v27 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v27)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10005392C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v42 = v7[2];
    v41 = v7[3];
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10005392C((v41 > 1), v42 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v43;
    v44 = &v7[2 * v42];
    v44[4] = v8;
    v44[5] = v6;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_142;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = v7[4];
          v48 = v7[5];
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_74:
          if (v50)
          {
            goto LABEL_120;
          }

          v63 = &v7[2 * v43];
          v65 = *v63;
          v64 = v63[1];
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_123;
          }

          v69 = &v7[2 * v46 + 4];
          v71 = *v69;
          v70 = v69[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_127;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v73 = &v7[2 * v43];
        v75 = *v73;
        v74 = v73[1];
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_88:
        if (v68)
        {
          goto LABEL_122;
        }

        v76 = &v7[2 * v46];
        v78 = v76[4];
        v77 = v76[5];
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_125;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v84 = v7[2 * v8 + 4];
        v85 = v7[2 * v46 + 5];
        sub_100057760((*a3 + 32 * v84), (*a3 + 32 * v7[2 * v46 + 4]), (*a3 + 32 * v85), v45);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_100057A14(v7);
        }

        if (v8 >= v7[2])
        {
          goto LABEL_117;
        }

        v86 = &v7[2 * v8];
        v86[4] = v84;
        v86[5] = v85;
        result = sub_100057988(v46);
        v43 = v7[2];
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v7[2 * v43 + 4];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_118;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_119;
      }

      v58 = &v7[2 * v43];
      v60 = *v58;
      v59 = v58[1];
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_121;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_124;
      }

      if (v62 >= v54)
      {
        v80 = &v7[2 * v46 + 4];
        v82 = *v80;
        v81 = v80[1];
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_128;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v6 - 32;
  v94 = v8;
  v30 = (v8 - v6);
LABEL_43:
  v31 = v28 + 32 * v6;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  v34 = v30;
  v35 = v29;
  while (1)
  {
    v36 = v32 == *(v35 + 16) && v33 == *(v35 + 24);
    if (v36 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v29 += 32;
      --v30;
      if (v6 != v27)
      {
        goto LABEL_43;
      }

      v6 = v27;
      v8 = v94;
      goto LABEL_54;
    }

    if (!v28)
    {
      break;
    }

    v37 = *(v35 + 32);
    v38 = *(v35 + 40);
    v32 = *(v35 + 48);
    v33 = *(v35 + 56);
    v39 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v39;
    *v35 = v37;
    *(v35 + 8) = v38;
    *(v35 + 16) = v32;
    *(v35 + 24) = v33;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_100057760(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v5 -= 32;
    do
    {
      v18 = *(v14 - 2) == *(v6 - 2) && *(v14 - 1) == *(v6 - 1);
      if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v21 = v6 - 32;
        if (v5 + 32 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 32, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      v19 = v14 - 32;
      if (v5 + 32 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 32;
      v14 -= 32;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_100057988(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100057A14(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_100057A3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 40;
    v4 = _swiftEmptyArrayStorage;
    v33 = *(a1 + 16);
    v31 = a1 + 40;
    do
    {
      v32 = v4;
      v5 = (v3 + 16 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_24:
          __break(1u);

          __break(1u);
          return;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_24;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = objc_opt_self();

        v10 = [v9 sharedInstance];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          v13 = String._bridgeToObjectiveC()();
          v14 = String._bridgeToObjectiveC()();
          v15 = [v12 localizedNameForSiriLanguage:v13 inDisplayLanguage:v14];

          if (v15)
          {
            break;
          }
        }

        if (qword_100101640 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_100012AAC(v16, qword_100103310);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          v34 = v20;
          *v19 = 136315138;
          v21 = sub_1000B08A0(v8, v7, &v34);

          *(v19 + 4) = v21;
          _os_log_impl(&_mh_execute_header, v17, v18, "SiriLanguage: No localization found for language code: %s", v19, 0xCu);
          sub_10000E70C(v20);
        }

        else
        {
        }

        ++v6;
        v5 += 2;
        v1 = v33;
        if (v2 == v33)
        {
          v4 = v32;
          goto LABEL_22;
        }
      }

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_100053A30(0, *(v32 + 16) + 1, 1, v32);
      }

      v3 = v31;
      v26 = v25;
      v27 = v25[2];
      v28 = v26;
      v29 = v26[3];
      if (v27 >= v29 >> 1)
      {
        v28 = sub_100053A30((v29 > 1), v27 + 1, 1, v28);
      }

      v28[2] = (v27 + 1);
      v30 = &v28[4 * v27];
      v4 = v28;
      v30[4] = v8;
      v30[5] = v7;
      v30[6] = v22;
      v30[7] = v24;
      v1 = v33;
    }

    while (v2 != v33);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

LABEL_22:
  v34 = v4;

  sub_100056F50(&v34);
}

unint64_t sub_100057D98(char a1)
{
  result = 0x4C45434E4143;
  switch(a1)
  {
    case 1:
    case 8:
    case -105:
    case -104:
      return 0xD000000000000010;
    case 2:
    case 23:
    case -92:
    case -88:
      return 0xD000000000000015;
    case 3:
    case 25:
    case 29:
    case 44:
    case 52:
    case 77:
    case 99:
    case 100:
    case -120:
    case -79:
      return 0xD000000000000023;
    case 4:
    case -106:
      return 0xD000000000000011;
    case 5:
      return 1162760004;
    case 6:
    case -108:
      return 0xD000000000000013;
    case 7:
    case 22:
    case -89:
    case -84:
      return 0xD000000000000012;
    case 9:
      return 0x425F50555F544553;
    case 10:
    case 21:
      return 0xD000000000000014;
    case 11:
      return 0x45554E49544E4F43;
    case 12:
      return 0x485F455441445055;
    case 13:
    case 43:
    case 49:
    case 53:
    case 60:
    case 103:
    case 104:
    case 113:
    case -127:
      return 0xD000000000000024;
    case 14:
    case 45:
    case 50:
    case 80:
    case 102:
    case 114:
    case 115:
    case 119:
    case -128:
    case -103:
    case -82:
      return 0xD000000000000025;
    case 15:
      return 0x5F524553555F4948;
    case 16:
    case 24:
    case -93:
    case -91:
      return 0xD000000000000018;
    case 17:
      return 0xD000000000000016;
    case 18:
    case 82:
    case 117:
    case 123:
    case -80:
      return 0xD000000000000017;
    case 19:
    case 20:
    case 64:
    case 83:
    case -87:
      return 0xD00000000000001ALL;
    case 26:
    case 116:
    case -114:
    case -78:
      return 0xD000000000000026;
    case 27:
    case 35:
    case 38:
    case 56:
    case 57:
    case 58:
    case 97:
    case 98:
    case 106:
    case 120:
    case -124:
      return 0xD000000000000021;
    case 28:
    case 63:
    case 76:
    case 105:
    case 108:
    case 110:
    case 118:
    case -118:
    case -113:
    case -112:
    case -110:
    case -97:
      return 0xD000000000000020;
    case 30:
    case 84:
    case 122:
      return 0xD000000000000019;
    case 31:
    case 41:
    case 61:
    case 90:
    case 91:
    case 94:
    case 111:
    case 112:
    case -119:
    case -117:
    case -111:
    case -101:
    case -90:
    case -72:
      return 0xD00000000000001FLL;
    case 32:
    case 33:
    case 39:
    case 46:
    case 47:
    case 89:
    case 92:
    case 95:
    case 109:
    case 126:
    case -98:
    case -96:
    case -70:
      return 0xD00000000000001DLL;
    case 34:
      return 0xD000000000000022;
    case 36:
    case 42:
    case 51:
      v3 = 5;
      goto LABEL_36;
    case 37:
      return 0xD000000000000022;
    case 40:
    case 86:
    case 124:
    case 125:
    case -95:
    case -94:
    case -73:
      return 0xD00000000000001CLL;
    case 48:
    case 88:
    case 93:
    case 96:
      return 0xD00000000000001ELL;
    case 54:
      return 0xD000000000000030;
    case 55:
      return 0xD000000000000022;
    case 59:
      return 0xD000000000000022;
    case 62:
      return 0xD000000000000022;
    case 65:
      return 0xD000000000000022;
    case 66:
    case -122:
    case -100:
      return 0xD00000000000002CLL;
    case 67:
      v3 = 13;
      goto LABEL_36;
    case 68:
    case 69:
      return 0xD00000000000002ELL;
    case 70:
      return 0xD000000000000031;
    case 71:
      v3 = 21;
      goto LABEL_36;
    case 72:
    case -126:
    case -102:
      return 0xD000000000000028;
    case 73:
    case 81:
    case -125:
    case -123:
    case -99:
    case -81:
    case -77:
    case -76:
      v3 = 9;
LABEL_36:
      result = v3 | 0xD000000000000022;
      break;
    case 74:
    case -85:
    case -74:
      result = 0xD00000000000002ALL;
      break;
    case 75:
    case -121:
      result = 0xD000000000000029;
      break;
    case 78:
      result = 0xD000000000000022;
      break;
    case 79:
      result = 0xD000000000000022;
      break;
    case 85:
      result = 0x574F4E5F544F4ELL;
      break;
    case 87:
      result = 0xD000000000000022;
      break;
    case 101:
      result = 0xD000000000000022;
      break;
    case 107:
      result = 0xD000000000000022;
      break;
    case 121:
      result = 0x4F4D5F4E5241454CLL;
      break;
    case 127:
      result = 0xD000000000000022;
      break;
    case -116:
      result = 0xD000000000000022;
      break;
    case -115:
      result = 0xD000000000000022;
      break;
    case -109:
    case -107:
      result = 0x53534552474F5250;
      break;
    case -86:
      result = 0xD000000000000022;
      break;
    case -83:
      result = 0xD000000000000022;
      break;
    case -75:
      result = 1346980691;
      break;
    case -71:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100058D14()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103330);
  v1 = sub_100012AAC(v0, qword_100103330);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_100058DDC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionPresenter] = 0;
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceOptionsView] = 0;
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voicePreviewer] = 0;
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceOptionsViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_currentVoiceSelection] = 0;
  v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_allowsRandomSelection] = 2;
  v7 = OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_viewModel;
  v8 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionViewController] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(0);
  v9 = objc_msgSendSuper2(&v16, "initWithContentView:", 0);
  v10 = objc_allocWithZone(VTUIVoiceSelectionViewController);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 initCompactWithRecognitionLanguage:v12 allowsRandomSelection:a3 & 1 customVoicePreviewer:a4 delegate:v11];

  v14 = *&v11[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionViewController];
  *&v11[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionViewController] = v13;

  return v11;
}

void sub_100058F80()
{
  v39.receiver = v0;
  v39.super_class = type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(0);
  objc_msgSendSuper2(&v39, "viewDidLoad");
  if (qword_100101648 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100103330);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePod Setup %@ viewDidLoad", v5, 0xCu);
    sub_10000EBA4(v6, &qword_100101E38, &unk_1000BCF80);
  }

  v8 = *&v2[OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionViewController];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 view];
    if (v10)
    {
      v11 = v10;
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v12 = [v2 contentView];
      v13 = [v9 view];
      if (v13)
      {
        v14 = v13;
        [v12 addSubview:v13];

        v15 = [v2 contentView];
        v16 = [v15 mainContentGuide];

        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1000BD460;
        v18 = [v9 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 topAnchor];

          v21 = [v16 topAnchor];
          v22 = [v20 constraintEqualToAnchor:v21 constant:-PRXCardDefaultLayoutMargins[0]];

          *(v17 + 32) = v22;
          v23 = [v9 view];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 bottomAnchor];

            v26 = [v16 bottomAnchor];
            v27 = [v25 constraintEqualToAnchor:v26];

            *(v17 + 40) = v27;
            v28 = [v9 view];
            if (v28)
            {
              v29 = v28;
              v30 = [v28 leadingAnchor];

              v31 = [v16 leadingAnchor];
              v32 = [v30 constraintEqualToAnchor:v31 constant:-PRXCardDefaultLayoutMargins[1]];

              *(v17 + 48) = v32;
              v33 = [v9 view];

              if (v33)
              {
                v34 = objc_opt_self();
                v35 = [v33 trailingAnchor];

                v36 = [v16 trailingAnchor];
                v37 = [v35 constraintEqualToAnchor:v36 constant:PRXCardDefaultLayoutMargins[3]];

                *(v17 + 56) = v37;
                sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v34 activateConstraints:isa];

                [v2 addChildViewController:v9];
                [v9 didMoveToParentViewController:v2];
                sub_1000597C4();

                return;
              }

LABEL_19:
              __break(1u);
              return;
            }

LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_1000595F8(char a1, SEL *a2, const char *a3, ...)
{
  v14.receiver = v3;
  v14.super_class = type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(0);
  objc_msgSendSuper2(&v14, *a2, a1 & 1);
  if (qword_100101648 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103330);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_10000EBA4(v12, &qword_100101E38, &unk_1000BCF80);
  }
}

void sub_1000597C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_voiceSelectionViewController);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 continueButton];
    [v3 setBackgroundImage:0 forState:0];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 secondarySystemBackgroundColor];
    [v5 setBackgroundColor:v6];

    [v5 _setContinuousCornerRadius:PRXProminentButtonCornerRadius];
    v7 = [v5 titleLabel];
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() defaultMetrics];
      v10 = [objc_opt_self() systemFontOfSize:17.0 weight:UIFontWeightMedium];
      v11 = [v9 scaledFontForFont:v10];

      [v8 setFont:v11];
    }

    v12 = [v4 labelColor];
    [v5 setTitleColor:v12 forState:0];

    v13 = [v4 secondaryLabelColor];
    [v5 setTitleColor:v13 forState:2];
  }
}

id sub_100059A3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupSiriVoiceSelectionViewController(uint64_t a1)
{
  result = qword_1001033A8;
  if (!qword_1001033A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059B84(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100059C3C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

_BYTE **sub_100059D68(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100059D78(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  if (qword_100101648 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100103330);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePod Setup %@ presenter:didUpdate", v10, 0xCu);
    sub_10000EBA4(v11, &qword_100101E38, &unk_1000BCF80);
  }

  sub_100012AE4(a1, v5);
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  v14 = OBJC_IVAR____TtC14HDSViewService44HomePodSetupSiriVoiceSelectionViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v5, v7 + v14, &qword_100103420, &unk_1000BCE90);
  return swift_endAccess();
}

uint64_t sub_100059FA0(void *a1)
{
  if (qword_100101648 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103330);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v14[0] = v3;
    sub_10003AE18(0, &qword_100103428, AFVoiceInfo_ptr);
    v8 = v3;
    v9 = String.init<A>(reflecting:)();
    v11 = sub_1000B08A0(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Siri voice was chosen: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14[3] = &type metadata for VoiceOption;
    v14[4] = &off_1000F0308;
    v14[0] = v3;
    memset(v16, 0, sizeof(v16));
    LOBYTE(v15) = 1;
    v13 = v3;
    sub_100012DA0(v14, v16, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(&v15);

    swift_unknownObjectRelease();
    return sub_100012E08(&v15);
  }

  return result;
}

uint64_t sub_10005A1B4()
{
  if (qword_100101648 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103330);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Siri voice requests dismissal", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100079EA4(5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005A2D4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103438);
  v1 = sub_100012AAC(v0, qword_100103438);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10005A39C()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - v3;
  v5 = type metadata accessor for HomePodSetupViewModel(0);
  v6 = *(v5 - 1);
  v7 = __chkstk_darwin(v5);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for HomePodSetupPINEntryViewController(0);
  v41.receiver = v1;
  v41.super_class = v12;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v13 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v1[v13], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000162A8(v4);
    if (qword_100101650 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103438);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupPINEntry: viewDidLoad failed because viewModel not set.", v17, 2u);
    }
  }

  else
  {
    sub_100016310(v4, v11);
    if (qword_100101650 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103438);
    sub_100012AE4(v11, v9);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = v22;
      *v21 = 136315138;
      v23 = *v9;
      v24 = v9[1];

      sub_100016374(v9);
      v25 = sub_1000B08A0(v23, v24, &v40);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupPINEntry: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v9);
    }

    v26 = String._bridgeToObjectiveC()();
    [v1 setTitle:v26];

    v27 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v27];

    v28 = *&v11[v5[10]];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v28, sub_10005C418, v29);

    v30 = &v11[v5[9]];
    v32 = *v30;
    v31 = *(v30 + 1);
    v33 = &v1[OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_activityIndicatorTitle];
    *v33 = v32;
    *(v33 + 1) = v31;

    v34 = *&v11[v5[19]];
    [v1 setDismissalType:v34];
    if ((v34 & 2) == 0 && *&v11[v5[20] + 8])
    {
      v35 = String._bridgeToObjectiveC()();
      v36 = String._bridgeToObjectiveC()();
      v37 = String._bridgeToObjectiveC()();
      v38 = String._bridgeToObjectiveC()();
      v39 = [v1 dismissalConfirmationActionWithTitle:v35 message:v36 confirmButtonTitle:v37 cancelButtonTitle:v38];

      [v1 setDismissButtonAction:v39];
    }

    sub_100016374(v11);
  }
}

void sub_10005A8D4(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103438);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18[0] = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupPINEntry: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  if (sub_10000FEC4(v2) == 0x7361506B61657073 && v11 == 0xED000065646F6373)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;

    v15 = String._bridgeToObjectiveC()();

    [v14 showActivityIndicatorWithStatus:v15];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v17 = v14;
      sub_1000A7E64(sub_10005C420, v16);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10005ABB4(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for HomePodSetupPINEntryViewController(0);
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103438);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupPINEntry: viewDidAppear", v7, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    v10 = v2;
    sub_1000A7A80(sub_10005C3B0, v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10005AD2C(void *a1)
{
  v39 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v1 - 8);
  __chkstk_darwin(v1);
  v42 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchQoS();
  v41 = *(v35 - 8);
  __chkstk_darwin(v35);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100103438);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupPINEntry: viewDidAppear:Speaking of the Pincode with instructions Completed", v17, 2u);
  }

  result = IsAppleInternalBuild();
  if (result)
  {
    if (qword_100101608 != -1)
    {
      result = swift_once();
    }

    v19 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode + 8);
    if ((v19 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v20 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode) & 0xFFFFFFFFFFFFLL;
    }

    if (v20)
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupPINEntry: viewDidAppear:Automatically enter the passcode.", v23, 2u);
      }

      sub_1000144DC();
      v34 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v7 = 2;
      (*(v5 + 104))(v7, enum case for DispatchTimeInterval.seconds(_:), v4);
      + infix(_:_:)();
      (*(v5 + 8))(v7, v4);
      v24 = v37;
      v25 = *(v36 + 8);
      v25(v11, v37);
      v26 = swift_allocObject();
      v27 = v39;
      *(v26 + 16) = v39;
      aBlock[4] = sub_10005C3B8;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100091194;
      aBlock[3] = &unk_1000EFF90;
      v28 = _Block_copy(aBlock);
      v29 = v27;

      v30 = v40;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100014530();
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v31 = v42;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v32 = v34;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v28);

      (*(v38 + 8))(v31, v1);
      (*(v41 + 8))(v30, v35);
      return (v25)(v13, v24);
    }
  }

  return result;
}

uint64_t sub_10005B2FC(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v31 = a1;
  v17 = [a1 passcodeEntryView];
  if (qword_100101608 != -1)
  {
    swift_once();
  }

  v18 = String._bridgeToObjectiveC()();

  [v17 setText:v18];

  sub_1000144DC();
  v29 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v9 = 2;
  (*(v7 + 104))(v9, enum case for DispatchTimeInterval.seconds(_:), v6);
  + infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  v19 = *(v11 + 8);
  v19(v14, v10);
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v31;
  aBlock[4] = sub_10005C3D8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000EFFE0;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  v24 = v30;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  v25 = v34;
  v26 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v29;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v22);

  (*(v35 + 8))(v25, v26);
  (*(v32 + 8))(v24, v33);
  return (v19)(v16, v10);
}

void sub_10005B7DC(void *a1)
{
  v2 = [a1 passcodeEntryView];
  [a1 didCompleteTextEntry:v2];
}

uint64_t sub_10005B898(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100012AAC(v10, qword_100103438);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupPINEntry: Speaking of the Pincode Completed", v13, 2u);
  }

  sub_1000144DC();
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  aBlock[4] = sub_10005C428;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F0080;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10005BBD0(void *a1)
{
  v2 = v1;
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103438);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePodSetupPINEntry: didCompleteTextEntry called", v7, 2u);
  }

  v8 = String._bridgeToObjectiveC()();
  [v2 showActivityIndicatorWithStatus:v8];

  v9 = [a1 text];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v15[3] = &type metadata for SimpleOption;
    v15[4] = &off_1000EF0B8;
    v13 = swift_allocObject();
    v15[0] = v13;
    v13[2] = 0x7972746E456E6970;
    v13[3] = 0xE800000000000000;
    v13[4] = v10;
    v13[5] = v12;
    v13[6] = v10;
    v13[7] = v12;
    memset(v17, 0, sizeof(v17));
    v16[0] = 3;

    sub_100012DA0(v15, v17, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v16);
    swift_unknownObjectRelease();
    return sub_100012E08(v16);
  }

  else
  {
  }
}

id sub_10005BF28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupPINEntryViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupPINEntryViewController(uint64_t a1)
{
  result = qword_100103488;
  if (!qword_100103488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005C014(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10005C0B8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10005C10C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if (qword_100101650 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103438);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupPINEntry: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    v13 = String._bridgeToObjectiveC()();
    [v2 setTitle:v13];

    v14 = String._bridgeToObjectiveC()();
    [v2 setSubtitle:v14];
  }
}

uint64_t sub_10005C330()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005C378()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C3C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005C3E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C458()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103498);
  v1 = sub_100012AAC(v0, qword_100103498);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10005C520()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &v45 - v2;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for HomePodSetupFeatureListViewController(0);
  v46.receiver = v0;
  v46.super_class = v11;
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v0[v12], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000162A8(v3);
    if (qword_100101658 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100012AAC(v13, qword_100103498);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupFeatureListViewController: viewDidLoad failed because viewModel not set.", v16, 2u);
    }
  }

  else
  {
    v17 = v0;
    sub_100016310(v3, v10);
    if (qword_100101658 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100012AAC(v18, qword_100103498);
    sub_100012AE4(v10, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315138;
      v23 = *v8;
      v24 = v8[1];

      sub_100016374(v8);
      v25 = sub_1000B08A0(v23, v24, &v45);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "HomePodSetupFeatureListViewController: viewDidLoad with title %s", v21, 0xCu);
      sub_10000E70C(v22);
    }

    else
    {

      sub_100016374(v8);
    }

    v26 = *&v17[OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_stackView];
    [v26 setAxis:1];
    [v26 setAlignment:3];
    [v26 setDistribution:3];
    [v26 setSpacing:12.0];
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [v17 contentView];
    [v27 addSubview:v26];

    v28 = [v17 contentView];
    v29 = [v28 mainContentGuide];

    v30 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000BD460;
    v32 = [v26 topAnchor];
    v33 = [v29 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v31 + 32) = v34;
    v35 = [v26 bottomAnchor];
    v36 = [v29 bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:-12.0];

    *(v31 + 40) = v37;
    v38 = [v26 leadingAnchor];
    v39 = [v29 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v31 + 48) = v40;
    v41 = [v26 trailingAnchor];
    v42 = [v29 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v31 + 56) = v43;
    sub_1000163D8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v30 activateConstraints:isa];

    sub_10005CC68(v10);
    sub_100016374(v10);
  }
}

void sub_10005CC68(uint64_t a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v2 setTitle:v4];

  v5 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v5];

  v53 = type metadata accessor for HomePodSetupViewModel(0);
  v54 = a1;
  v6 = *(a1 + *(v53 + 64));
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_features;
      v55 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_lastFeatureView;
      v56 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_stackView;
      v62 = v6 & 0xC000000000000001;
      v9 = v6;
      swift_beginAccess();
      v10 = v9;
      v11 = 0;
      v6 = v10 & 0xFFFFFFFFFFFFFF8;
      v57 = v10 + 32;
      v58 = v10 & 0xFFFFFFFFFFFFFF8;
      v61 = v2;
      v59 = v8;
      v60 = v7;
      while (1)
      {
        if (v62)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(v58 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v57 + 8 * v11);
        }

        v64 = v13;
        v14 = __OFADD__(v11, 1);
        v15 = v11 + 1;
        if (v14)
        {
          break;
        }

        v2 = *(v2 + v8);
        v63 = v15;
        if (v2 >> 62)
        {
          v16 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v16 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = 0;
        while (v16 != v17)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v19 = *(v2 + 8 * v17 + 32);
          }

          v20 = v19;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          v21 = [v19 title];
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;

          v25 = [v64 title];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v28 = v27;

          if (v22 == v26 && v24 == v28)
          {

LABEL_4:

            v2 = v61;
            v8 = v59;
            v12 = v60;
            goto LABEL_5;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v17;
          if (v18)
          {

            goto LABEL_4;
          }
        }

        v29 = objc_allocWithZone(type metadata accessor for HomePodSetupFeatureView());
        v30 = v64;
        v31 = sub_10001642C(v30);
        [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
        v32 = *&v61[v56];
        [v32 addArrangedSubview:v31];
        v33 = objc_opt_self();
        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1000BD0A0;
        v35 = [v31 leadingAnchor];
        v36 = [v32 leadingAnchor];
        v37 = [v35 constraintEqualToAnchor:v36];

        *(v34 + 32) = v37;
        v38 = [v31 trailingAnchor];
        v39 = [v32 trailingAnchor];
        v40 = [v38 constraintEqualToAnchor:v39];

        *(v34 + 40) = v40;
        sub_1000163D8();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v33 activateConstraints:isa];

        [v31 setAlpha:0.0];
        v42 = objc_opt_self();
        v43 = swift_allocObject();
        *(v43 + 16) = v31;
        aBlock[4] = sub_10005D9BC;
        aBlock[5] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100091194;
        aBlock[3] = &unk_1000F0120;
        v44 = _Block_copy(aBlock);
        v45 = v31;

        [v42 animateWithDuration:v44 animations:0.5];
        _Block_release(v44);
        v46 = *&v61[v55];
        *&v61[v55] = v45;

        v8 = v59;
        swift_beginAccess();
        v47 = v30;
        v2 = v61;
        v48 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v12 = v60;
LABEL_5:
        v11 = v63;
        if (v63 == v12)
        {
          goto LABEL_34;
        }
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v49 = v6;
      v50 = _CocoaArrayWrapper.endIndex.getter();
      v6 = v49;
      v7 = v50;
    }

    while (v50);
  }

LABEL_34:
  if ((*(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_buttonsAdded) & 1) == 0)
  {
    v51 = *(v54 + *(v53 + 40));
    if (*(v51 + 16))
    {
      *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_buttonsAdded) = 1;
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10009EA84(v51, sub_10005D97C, v52);
    }
  }
}

void sub_10005D30C(char *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100101658 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103498);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = sub_10000FEC4(v2);
    v10 = sub_1000B08A0(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupFeatureListViewController: User tapped on button: %s", v6, 0xCu);
    sub_10000E70C(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = swift_unknownObjectWeakLoadStrong();

    if (v13)
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      memset(v17, 0, sizeof(v17));
      LOBYTE(v16) = v2;
      sub_100012DA0(v14, v17, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v16);
      swift_unknownObjectRelease();
      sub_100012E08(&v16);
    }
  }
}

id sub_10005D538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupFeatureListViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupFeatureListViewController(uint64_t a1)
{
  result = qword_1001034F8;
  if (!qword_1001034F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005D640(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10005D708(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_10005D75C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  if (qword_100101658 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103498);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupFeatureListViewController: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    sub_10005CC68(a1);
  }
}

uint64_t sub_10005D944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D984()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D9D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10005D9E8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_buttonsAdded] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_features] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_lastFeatureView] = 0;
  v3 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupFeatureListViewController_stackView;
  *&v1[v5] = [objc_allocWithZone(UIStackView) init];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomePodSetupFeatureListViewController(0);
  return objc_msgSendSuper2(&v7, "initWithContentView:", a1);
}

uint64_t sub_10005DAE8()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103510);
  v1 = sub_100012AAC(v0, qword_100103510);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10005DBB0(void *a1)
{
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_viewModel;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic] = 0;
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_marketingItem] = a1;
  v5 = objc_allocWithZone(PRXCardContentView);
  v6 = a1;
  v7 = [v5 init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HomePodSetupAMSUpsellViewController(0);
  v8 = objc_msgSendSuper2(&v11, "initWithContentView:", v7);

  v9 = v8;
  sub_10005E13C();

  return v9;
}

void sub_10005DCC4()
{
  v1 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - v2;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for HomePodSetupAMSUpsellViewController(0);
  v26.receiver = v0;
  v26.super_class = v11;
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v12 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v0 + v12, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000162A8(v3);
    if (qword_100101660 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100012AAC(v13, qword_100103510);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupAMSUpsellViewController: viewDidLoad failed because viewModel not set.", v16, 2u);
    }
  }

  else
  {
    sub_100016310(v3, v10);
    if (qword_100101660 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100012AAC(v17, qword_100103510);
    sub_100012AE4(v10, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25 = v21;
      *v20 = 136315138;
      v22 = *v8;
      v23 = v8[1];

      sub_100016374(v8);
      v24 = sub_1000B08A0(v22, v23, &v25);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "HomePodSetupAMSUpsellViewController: viewDidLoad with title %s", v20, 0xCu);
      sub_10000E70C(v21);
    }

    else
    {

      sub_100016374(v8);
    }

    sub_10005E69C();
    sub_100016374(v10);
  }
}

void sub_10005E13C()
{
  sub_10003AE18(0, &qword_1001035E8, AMSUIMarketingItemViewController_ptr);
  v1 = [swift_getObjCClassFromMetadata() createBagForSubProfile];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(AMSUIMarketingItemViewController) initWithMarketingItem:*&v0[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_marketingItem] bag:v1];
    [v3 setDelegate:v0];
    [v3 setAnonymousMetrics:1];
    v4 = [objc_opt_self() ams_sharedAccountStore];
    v5 = [v4 ams_activeiTunesAccount];

    [v3 setAccount:v5];
    v6 = [v3 preload];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    *(v7 + 24) = v3;
    v11[4] = sub_10005F3FC;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000668A0;
    v11[3] = &unk_1000F0198;
    v8 = _Block_copy(v11);
    v9 = v3;
    v10 = v0;

    [v6 addFinishBlock:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_10005E33C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  if (!a2)
  {
    if (qword_100101660 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100012AAC(v14, qword_100103510);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupAMSUpsellViewController: preload success", v17, 2u);
    }

    v6 = *&a3[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic];
    *&a3[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic] = a4;
    v18 = a4;
    goto LABEL_11;
  }

  swift_errorRetain();
  if (qword_100101660 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100103510);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315138;
    swift_errorRetain();
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    v10 = String.init<A>(describing:)();
    v12 = sub_1000B08A0(v10, v11, &v24);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupAMSUpsellViewController: preload error: %s", v8, 0xCu);
    sub_10000E70C(v9);

LABEL_11:

    goto LABEL_13;
  }

LABEL_13:
  if (qword_100101660 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100012AAC(v19, qword_100103510);
  v20 = a3;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = *&v20[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic] != 0;

    _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupAMSUpsellViewController: view controller preload complete: %{BOOL}d", v23, 8u);
  }

  else
  {

    v21 = v20;
  }
}

void sub_10005E69C()
{
  v1 = v0;
  if (qword_100101660 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupAMSUpsellViewController: AppleMusic show StoreKit view\n", v5, 2u);
  }

  v6 = *&v0[OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_vcAppleMusic];
  if (v6)
  {
    v7 = v6;
    v8 = [v7 view];
    [v1 addChildViewController:v7];
    v9 = v8;
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [v1 contentView];
    [v10 addSubview:v9];

    v11 = [v1 contentView];
    [v11 cardStyle];

    v12 = [v1 traitCollection];
    [v12 prx_cardSizeClass];

    PRXCardPreferredSize();
    v14 = v13;
    v15 = [v1 contentView];
    v38 = [v15 mainContentGuide];

    v16 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000BDD00;
    v18 = [v1 contentView];
    v19 = [v18 heightAnchor];

    v20 = [v19 constraintEqualToConstant:v14];
    *(v17 + 32) = v20;
    v21 = [v9 heightAnchor];
    v22 = [v21 constraintEqualToConstant:v14];

    *(v17 + 40) = v22;
    v23 = [v9 topAnchor];
    v24 = [v38 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];

    *(v17 + 48) = v25;
    v26 = [v9 leadingAnchor];
    v27 = [v38 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    *(v17 + 56) = v28;
    v29 = [v9 trailingAnchor];
    v30 = [v38 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v17 + 64) = v31;
    v32 = [v9 bottomAnchor];

    v33 = [v38 bottomAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v17 + 72) = v34;
    sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints:isa];

    [v7 didMoveToParentViewController:v1];
  }

  else
  {
    v38 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v38, v36, "HomePodSetupAMSUpsellViewController: AppleMusic controller was not initilized properly", v37, 2u);
    }
  }
}

id sub_10005EC2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupAMSUpsellViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupAMSUpsellViewController(uint64_t a1)
{
  result = qword_100103558;
  if (!qword_100103558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005ED24(uint64_t a1)
{
  sub_100012108(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10005EDD8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_10005EE2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  swift_errorRetain();
  sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  if (a2)
  {
    v10 = Dictionary.description.getter();
    v12 = v11;
  }

  else
  {
    v12 = 0xE400000000000000;
    v10 = 1701736270;
  }

  if (qword_100101660 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100103510);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_1000B08A0(v10, v12, &v24);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    v18 = sub_1000B08A0(v7, v9, &v24);

    *(v16 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "HomePodSetupAMSUpsellViewController: delegate didResolveWith called results: %s with error:%s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  [a1 willMoveToParentViewController:0];
  v19 = [a1 view];
  [v19 removeFromSuperview];

  v20 = [v4 presentingViewController];
  [v20 removeFromParentViewController];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    memset(v25, 0, sizeof(v25));
    LOBYTE(v24) = 1;
    sub_100012DA0(v22, v25, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(&v24);
    swift_unknownObjectRelease();
    return sub_100012E08(&v24);
  }

  return result;
}

uint64_t sub_10005F1F4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  if (qword_100101660 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103510);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "HomePodSetupAMSUpsellViewController: presenter:didUpdate viewModel", v10, 2u);
  }

  sub_100012AE4(a1, v6);
  v11 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  v12 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupAMSUpsellViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v2 + v12, &qword_100103420, &unk_1000BCE90);
  return swift_endAccess();
}

uint64_t sub_10005F3BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005F41C()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_10000E6C4(&qword_1001036C8, &unk_1000BEEA0);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000EBA4(v5, &qword_1001036C0, &unk_1000BEE90);
    return 0;
  }
}

void sub_10005F53C(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_10005F41C();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  type metadata accessor for SoftwareUpdateRequiredViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:v4];
}

double sub_10005F7A4()
{
  result = 30.0 - PRXMainContentMargin;
  *&qword_100103600 = 30.0 - PRXMainContentMargin;
  return result;
}

void sub_10005F7C4()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  v3 = sub_100006658(v2);

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [v1 setTitle:v3];

  v14[6] = 0xD000000000000018;
  v14[7] = 0x80000001000C5D70;
  if (PRXIsPad())
  {
    v4 = 0x534F444150495FLL;
    v5 = 0xE700000000000000;
  }

  else
  {
    v4 = 1397705055;
    v5 = 0xE400000000000000;
  }

  String.append(_:)(*&v4);
  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100006658(v6);

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v1 setSubtitle:v7];

  [v1 setDismissalType:1];
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v14[4] = sub_100060BE4;
  v14[5] = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10003DFD0;
  v14[3] = &unk_1000F01E8;
  v11 = _Block_copy(v14);
  v12 = objc_opt_self();

  v13 = [v12 actionWithTitle:v9 style:0 handler:v11];

  _Block_release(v11);

  sub_10005FF18();
}

void sub_10005FAAC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4[4] = sub_10005FB64;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100091194;
  v4[3] = &unk_1000F0210;
  v3 = _Block_copy(v4);
  [Strong dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

uint64_t sub_10005FB64()
{
  v0 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  __chkstk_darwin(v0 - 8);
  v2 = v24 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10000EBA4(v2, &qword_100101F08, &unk_1000BD100);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    v13 = sub_100006934();
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = 0;
    v15 = [v10 openSensitiveURL:v12 withOptions:isa error:&v25];

    if (v15)
    {
      v16 = *(v4 + 8);
      v17 = v25;
      return v16(v6, v3);
    }

    v18 = v25;
    v19 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_10000E6C4(&unk_1001036E0, &unk_1000BD410);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000BD050;
    v25 = 0;
    v26 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    v21._object = 0x80000001000C5DE0;
    v21._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v21);
    v24[1] = v19;
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    _print_unlocked<A, B>(_:_:)();
    v22 = v25;
    v23 = v26;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 32) = v22;
    *(v20 + 40) = v23;
    print(_:separator:terminator:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10005FF18()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UILayoutGuide) init];
  v3 = [v0 contentView];
  [v3 addLayoutGuide:v2];

  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 imageNamed:v5];

  v77 = v6;
  v7 = [objc_allocWithZone(UIImageView) initWithImage:v6];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v1 contentView];
  [v8 addSubview:v7];

  v9 = [objc_allocWithZone(UIView) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = objc_opt_self();
  v11 = [v10 systemRedColor];
  [v9 setBackgroundColor:v11];

  v12 = [v9 layer];
  [v12 setCornerRadius:19.0];

  v13 = [v1 contentView];
  [v13 addSubview:v9];

  v14 = [objc_allocWithZone(UILabel) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = objc_opt_self();
  sub_10003AE18(0, &unk_1001036D0, NSNumber_ptr);
  isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  v17 = [v15 localizedStringFromNumber:isa numberStyle:0];

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v14 setText:v17];

  v18 = [v10 whiteColor];
  [v14 setTextColor:v18];

  [v14 setTextAlignment:1];
  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  if (v20)
  {
    v21 = [objc_opt_self() fontWithDescriptor:v20 size:25.0];
    [v14 setFont:v21];
  }

  [v9 addSubview:v14];
  v22 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC14HDSViewService36SoftwareUpdateRequiredViewController_offsetIcon) == 1)
  {
    if (qword_100101668 != -1)
    {
      swift_once();
    }

    v22 = *&qword_100103600;
  }

  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v76 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000BDDA0;
  v26 = [v2 centerXAnchor];
  v27 = v24;
  v28 = [v24 centerXAnchor];
  v29 = [v26 constraintEqualToAnchor:v28];

  *(v25 + 32) = v29;
  v30 = [v2 topAnchor];
  v31 = [v27 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v22];

  *(v25 + 40) = v32;
  v33 = [v2 bottomAnchor];
  v34 = [v27 bottomAnchor];
  v35 = [v33 constraintLessThanOrEqualToAnchor:v34];

  *(v25 + 48) = v35;
  v36 = [v7 leadingAnchor];
  v37 = [v2 leadingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v25 + 56) = v38;
  v39 = [v7 trailingAnchor];
  v40 = [v2 trailingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-11.0];

  *(v25 + 64) = v41;
  v42 = [v7 topAnchor];
  v43 = [v2 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:11.0];

  *(v25 + 72) = v44;
  v45 = [v7 bottomAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v25 + 80) = v47;
  v48 = [v7 widthAnchor];
  v49 = [v48 constraintEqualToConstant:104.0];

  *(v25 + 88) = v49;
  v50 = [v7 heightAnchor];
  v51 = [v7 widthAnchor];

  v52 = [v50 constraintEqualToAnchor:v51];
  *(v25 + 96) = v52;
  v53 = [v9 topAnchor];
  v54 = [v2 topAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v25 + 104) = v55;
  v56 = [v9 trailingAnchor];
  v57 = [v2 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor:v57];

  *(v25 + 112) = v58;
  v59 = [v9 widthAnchor];
  v60 = [v59 constraintEqualToConstant:38.0];

  *(v25 + 120) = v60;
  v61 = [v9 heightAnchor];
  v62 = [v9 widthAnchor];
  v63 = [v61 constraintEqualToAnchor:v62];

  *(v25 + 128) = v63;
  v64 = [v14 leadingAnchor];
  v65 = [v9 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor:v65];

  *(v25 + 136) = v66;
  v67 = [v14 topAnchor];
  v68 = [v9 topAnchor];
  v69 = [v67 constraintEqualToAnchor:v68];

  *(v25 + 144) = v69;
  v70 = [v14 bottomAnchor];
  v71 = [v9 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71];

  *(v25 + 152) = v72;
  v73 = [v14 trailingAnchor];

  v74 = [v9 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v25 + 160) = v75;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  v78 = Array._bridgeToObjectiveC()().super.isa;

  [v76 activateConstraints:v78];
}

id sub_100060AEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}