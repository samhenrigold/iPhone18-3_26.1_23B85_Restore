id sub_1005E679C(uint64_t a1, unint64_t a2)
{
  if (&protocol conformance descriptor for iosmacHardware)
  {
    v2 = &protocol conformance descriptor for iosmacHardware == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || &type metadata accessor for iosmacHardware == 0 || &nominal type descriptor for iosmacHardware == 0 || &type metadata for iosmacHardware == 0)
  {
    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100986090);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_21;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "ProductKit not available on this platform", v16, 2u);
  }

  else
  {
    v8 = sub_10028088C(&qword_100986250, &qword_10080D428);
    __chkstk_darwin(v8 - 8);
    v10 = &v40 - v9;

    iosmacHardware.init(_:)();
    v11 = type metadata accessor for iosmacHardware();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_100005508(v10, &qword_100986250, &qword_10080D428);
LABEL_26:
      if (qword_100973B38 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000C4AC(v26, qword_100986090);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v41 = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_10000C4E4(a1, a2, &v41);
        _os_log_impl(&_mh_execute_header, v27, v28, "Missing image for device model %s", v29, 0xCu);
        sub_10000C60C(v30);
      }

      return 0;
    }

    v17 = iosmacHardware.imageName.getter();
    v19 = v18;
    (*(v12 + 8))(v10, v11);
    if (!v19)
    {
      goto LABEL_26;
    }

    type metadata accessor for ProductKitCatalog();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v22 = String._bridgeToObjectiveC()();
    v14 = [objc_opt_self() imageNamed:v22 inBundle:v21];

    if (v14)
    {

      v23 = [v14 CGImage];
      if (v23)
      {
        v24 = v23;

        return v24;
      }

      if (qword_100973B38 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000C4AC(v36, qword_100986090);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to create CGImage", v39, 2u);
      }

      goto LABEL_21;
    }

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000C4AC(v31, qword_100986090);

    v14 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v14, v32))
    {

      goto LABEL_21;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41 = v34;
    *v33 = 136315138;
    v35 = sub_10000C4E4(v17, v19, &v41);

    *(v33 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v14, v32, "Missing image in catalog %s", v33, 0xCu);
    sub_10000C60C(v34);
  }

LABEL_21:

  return 0;
}

id sub_1005E6D78(uint64_t a1, void *a2)
{
  v3 = v2;
  v62 = a2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 56))(&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_nodeIdentifier], 1, 1, v5);
  v9 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contactIdentifier];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contactIdentifier] = xmmword_10080D220;
  v10 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayName] = xmmword_10080D220;
  v11 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_realName];
  *v11 = 0;
  v11[1] = 0;
  v60 = &v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_model];
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_model] = xmmword_10080D220;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_formattedHandles] = _swiftEmptySetSingleton;
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_suggestionIndex;
  *&v3[v12] = [objc_allocWithZone(NSNumber) initWithInteger:0];
  v13 = &v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_transportBundleID];
  *v13 = 0xD000000000000020;
  v13[1] = 0x80000001007989A0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isClassroom] = 0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isDisabled] = 0;
  v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_isSuggestion] = 0;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_selectionReason] = 0;
  v59 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_displayIcon] = 0;
  v61 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact;
  *&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_contact] = 0;
  v14 = sub_100337A34(a1);
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = 0xE000000000000000;
  if (v15)
  {
    v17 = v15;
  }

  *v10 = v16;
  v10[1] = v17;

  NWEndpoint.endpointUUID()();
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID;
  (*(v6 + 32))(&v3[OBJC_IVAR____TtC16DaemoniOSLibrary21ShareSheetAirDropNode_endpointUUID], v8, v5);
  swift_beginAccess();
  (*(v6 + 16))(v8, &v3[v18], v5);
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v6 + 8))(v8, v5);
  *v11 = v19;
  v11[1] = v21;

  v22 = sub_100337A4C(a1);
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    if ((v22 != 63 || v23 != 0xE100000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v49 = v60;
      *v60 = v24;
      v49[1] = v25;

      if (!v62)
      {

        goto LABEL_30;
      }

      v47 = sub_1005E679C(v24, v25);

      goto LABEL_21;
    }
  }

  v26 = sub_100337A1C(a1);
  if (!v27)
  {
LABEL_30:
    v65.receiver = v3;
    v65.super_class = ObjectType;
    v56 = objc_msgSendSuper2(&v65, "init");
    v57 = type metadata accessor for NWEndpoint();
    (*(*(v57 - 8) + 8))(a1, v57);
    return v56;
  }

  v28 = v26;
  v29 = v27;
  *v9 = v26;
  v9[1] = v27;

  result = [objc_opt_self() sharedMonitor];
  if (result)
  {
    v31 = result;
    v32 = String._bridgeToObjectiveC()();
    v33 = [v31 contactWithContactIdentifier:v32];

    if (v33)
    {
      v34 = [objc_opt_self() stringFromContact:v33 style:0];
      if (v34)
      {
        v35 = v34;

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = *&v3[v61];
        *&v3[v61] = v33;
        v40 = v33;

        *v10 = v36;
        v10[1] = v38;

        if (v62)
        {
          v41 = sub_1000906C0(v40, 1, 0, v62);

          if (v41)
          {
            v42 = v41;
            v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v45 = v44;

            isa = Data._bridgeToObjectiveC()().super.isa;
            sub_100026AC0(v43, v45);
            v47 = SFCreateCGImageFromData();

            if (v47)
            {
              v48 = v47;

LABEL_21:
              v50 = *&v3[v59];
              *&v3[v59] = v47;

              goto LABEL_30;
            }
          }
        }

        else
        {
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    if (qword_100973B38 != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    sub_10000C4AC(v51, qword_100986090);

    v40 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v64 = v54;
      *v53 = 136315138;
      v55 = sub_10000C4E4(v28, v29, &v64);

      *(v53 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v40, v52, "Failed to find contact with identifier and displayName - %s", v53, 0xCu);
      sub_10000C60C(v54);
    }

    else
    {
    }

    goto LABEL_29;
  }

  __break(1u);
  return result;
}

unint64_t sub_1005E7414()
{
  result = qword_100986260;
  if (!qword_100986260)
  {
    sub_100280938(&qword_100986268, qword_10080D438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986260);
  }

  return result;
}

uint64_t sub_1005E7478(uint64_t a1)
{
  v1 = a1;
  v2 = SFDeviceClassCodeGet();
  if (!v2)
  {
    return 2;
  }

  v3 = v2;
  v4 = sub_10000CB70(off_1008EA298[v1]);
  v5 = sub_10000EF9C(v3, v4);

  if (v5)
  {
    return 1;
  }

  v7 = 1;
  if (v1 <= 1u)
  {
    if (!v1)
    {
      return 2;
    }
  }

  else
  {
    if (v1 == 3)
    {
      v7 = 8;
    }

    else
    {
      v7 = 1;
    }

    if (v1 == 2)
    {
      v7 = 8;
    }
  }

  if (v3 == v7 || (v1 & 0xFE) == 2 && (SFDeviceIsRealityDevice() & 1) != 0)
  {
    return 0;
  }

  return 2;
}

uint64_t sub_1005E7540(uint64_t a1)
{
  v1 = a1;
  v2 = sub_1005E7478(a1);
  if (v2 == 2)
  {
    return 0;
  }

  v4 = 13;
  v5 = 22;
  if (v1 != 4)
  {
    v5 = 0;
  }

  if (v1 != 3)
  {
    v4 = v5;
  }

  v6 = 23;
  if (v1 != 4)
  {
    v6 = 0;
  }

  if (v1 == 3)
  {
    v7 = 12;
  }

  else
  {
    v7 = v6;
  }

  if (v2)
  {
    return v7;
  }

  else
  {
    return v4;
  }
}

Swift::Int sub_1005E75E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005E76F0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1005E77EC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005E78F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005E7BD4(*a1);
  *a2 = result;
  return result;
}

void sub_1005E7928(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC00000043737361;
  v6 = 0x6C436B636F6C6E75;
  v7 = 0xEF6B636F6C6E5565;
  v8 = 0x646F4D7473657567;
  if (v2 != 3)
  {
    v8 = 0x6E556E6F69736976;
    v7 = 0xEF534F696B636F6CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x636F6C6E5563616DLL;
    v3 = 0xEE00656E6F68506BLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1005E7AB8()
{
  result = qword_100986270;
  if (!qword_100986270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986270);
  }

  return result;
}

uint64_t sub_1005E7B0C()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6C436B636F6C6E75;
  v4 = 0x646F4D7473657567;
  if (v1 != 3)
  {
    v4 = 0x6E556E6F69736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x636F6C6E5563616DLL;
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

unint64_t sub_1005E7BD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D8228, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005E7C20()
{
  result = qword_100986278;
  if (!qword_100986278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100986278);
  }

  return result;
}

void sub_1005E7C74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for AuthenticationDevice(0);
  v12 = v11[9];
  v13 = type metadata accessor for UUID();
  (*(*(v13 - 8) + 56))(a4 + v12, 1, 1, v13);
  *a4 = a1;
  *(a4 + 8) = a2;
  if (!a3)
  {
    v33 = 0u;
    v34 = 0u;

    goto LABEL_9;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v14;

  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v15 = sub_100570754(&v31), (v16 & 1) == 0))
  {

    sub_100285E74(&v31);
    v33 = 0u;
    v34 = 0u;
    goto LABEL_9;
  }

  sub_10000C5B0(*(a3 + 56) + 32 * v15, &v33);
  sub_100285E74(&v31);

  if (!*(&v34 + 1))
  {
LABEL_9:
    sub_100456B48(&v33);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = v32;
    goto LABEL_11;
  }

LABEL_10:
  v18 = 0x8000000100798A00;
  v17 = 0xD000000000000010;
LABEL_11:
  *(a4 + 16) = v17;
  *(a4 + 24) = v18;
  *(a4 + 32) = xmmword_10080D590;
  *(a4 + 48) = 0;
  UUID.init(uuidString:)();
  sub_1005E884C(v10, a4 + v12);
  if (!a3)
  {
LABEL_18:
    v33 = 0u;
    v34 = 0u;
    goto LABEL_19;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v19;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v20 = sub_100570754(&v31), (v21 & 1) == 0))
  {

    sub_100285E74(&v31);
    goto LABEL_18;
  }

  sub_10000C5B0(*(a3 + 56) + 32 * v20, &v33);
  sub_100285E74(&v31);

  if (!*(&v34 + 1))
  {
LABEL_19:
    sub_100456B48(&v33);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v23 = 0x8000000100798A00;
    v22 = 0xD000000000000010;
    goto LABEL_21;
  }

  v22 = v31;
  v23 = v32;
LABEL_21:
  v24 = (a4 + v11[10]);
  *v24 = v22;
  v24[1] = v23;
  v25 = (a4 + v11[11]);
  *v25 = 0;
  v25[1] = 0;
  v25[2] = 0;
  v26 = [objc_allocWithZone(RPCompanionLinkDevice) init];
  v27 = String._bridgeToObjectiveC()();

  [v26 setIdentifier:v27];

  *(a4 + v11[12]) = v26;
}

uint64_t sub_1005E8044@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 nsuuid];
  if (v3)
  {
    v4 = v3;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1005E80F4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1005E8190()
{
  v1 = [*v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t type metadata accessor for AuthenticationDevice(uint64_t a1)
{
  result = qword_1009862D8;
  if (!qword_1009862D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005E825C(uint64_t a1)
{
  sub_1005E8328();
  if (v1 <= 0x3F)
  {
    sub_100383ECC(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for OperatingSystemVersion(319);
      if (v3 <= 0x3F)
      {
        sub_1005E8378();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1005E8328()
{
  if (!qword_1009771F0[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1009771F0);
    }
  }
}

unint64_t sub_1005E8378()
{
  result = qword_100979A18;
  if (!qword_100979A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100979A18);
  }

  return result;
}

double sub_1005E83C4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0xE90000000000003ELL;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for AuthenticationDevice(0);
  v9 = v8[9];
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  *(a2 + v8[12]) = a1;
  v11 = a1;
  v12 = [v11 name];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&v43 = v14;
  }

  else
  {
    *&v43 = 0xE90000000000003ELL;
  }

  v15 = 0x676E697373696D3CLL;
  v16 = [v11 idsDeviceIdentifier];
  v17 = 0x676E697373696D3CLL;
  v18 = 0xE90000000000003ELL;
  if (v16)
  {
    v19 = v16;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v20;
  }

  *a2 = v17;
  *(a2 + 8) = v18;
  v21 = [v11 model];
  v22 = 0x676E697373696D3CLL;
  v23 = 0xE90000000000003ELL;
  if (v21)
  {
    v24 = v21;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v25;
  }

  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  v26 = [v11 sourceVersion];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    *&v44 = 0x2D74726F70706152;
    *(&v44 + 1) = 0xE800000000000000;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    String.append(_:)(v31);

    v4 = *(&v44 + 1);
    v15 = v44;
  }

  *(a2 + 32) = v15;
  *(a2 + 40) = v4;
  *(a2 + 48) = 0;
  v32 = [v11 idsDeviceIdentifier];
  if (v32)
  {
    v33 = v32;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  UUID.init(uuidString:)();

  sub_1005E884C(v7, a2 + v9);
  v34 = [v11 name];
  if (v34)
  {
    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
  }

  else
  {

    v36 = 0;
    v38 = 0xE000000000000000;
  }

  v39 = (a2 + v8[10]);
  *v39 = v36;
  v39[1] = v38;
  [v11 operatingSystemVersion];
  v40 = v45;
  v43 = v44;

  v41 = a2 + v8[11];
  result = *&v43;
  *v41 = v43;
  *(v41 + 16) = v40;
  return result;
}

uint64_t sub_1005E86E8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1005E8718()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1005E8748()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1005E87A4(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 48)) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1005E8800(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
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

uint64_t sub_1005E884C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005E88BC()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986330);
  v1 = sub_10000C4AC(v0, qword_100986330);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005E8984(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDrop.TransferType();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v7 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005E8B90, v7, 0);
}

uint64_t sub_1005E8B90(uint64_t a1)
{
  v59 = v1;
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  SFAirDropReceive.AskRequest.type.getter();
  v5 = SFAirDrop.TransferType.isLinks.getter();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

  v6 = v1[11];
  v7 = SFAirDropReceive.AskRequest.urlItems.getter();
  v8 = v7;
  v9 = 0;
  v10 = v7 + 56;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 56);
  v14 = (63 - v12) >> 6;
  while (v13)
  {
    v15 = v9;
LABEL_11:
    v16 = v1[12];
    v17 = v1[10];
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v16, *(v8 + 48) + *(v6 + 72) * (v18 | (v15 << 6)), v17);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    (*(v6 + 8))(v16, v17);
    LOBYTE(v16) = SFIsNewsLink();

    if ((v16 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      v22 = objc_allocWithZone(LSApplicationRecord);
      v23 = sub_10066F3F8(0x6C7070612E6D6F63, 0xEE007377656E2E65, 1);
      v44 = v1[3];
      v45 = *(v44 + 16);
      *(v44 + 16) = v23;

      goto LABEL_17;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  swift_once();
  v25 = v1[8];
  v24 = v1[9];
  v26 = v1[7];
  v27 = v1[2];
  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_100986330);
  (*(v25 + 16))(v24, v27, v26);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  v31 = os_log_type_enabled(v29, v30);
  v32 = v1[8];
  v33 = v1[9];
  v34 = v1[7];
  if (v31)
  {
    v36 = v1[5];
    v35 = v1[6];
    v37 = v1[4];
    v56 = v30;
    v38 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v38 = 136315394;
    v54 = v29;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1002891F4();
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v39 = v34;
    v41 = v40;
    (*(v36 + 8))(v35, v37);
    (*(v32 + 8))(v33, v39);
    v42 = sub_10000C4E4(v53, v41, &v58);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2112;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 14) = v43;
    *v55 = v43;
    _os_log_impl(&_mh_execute_header, v54, v56, "Failed to get News app for ask request %s: %@", v38, 0x16u);
    sub_100005508(v55, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v57);
  }

  else
  {

    (*(v32 + 8))(v33, v34);
  }

LABEL_17:
  v46 = *(v1[3] + 16);
  if (v46 && (v47 = v46, v48 = [v47 applicationState], v49 = objc_msgSend(v48, "isInstalled"), v47, v48, (v49 & 1) != 0))
  {
    v50 = 1;
  }

  else
  {
LABEL_20:
    v50 = 0;
  }

  v51 = v1[1];

  return v51(v50);
}

uint64_t sub_1005E9078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *(a1 + 16);
  v35 = *(v2 + 16);
  v12 = v35;
  v33 = a1;
  v34 = v11;
  if (v11)
  {
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v38 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v15 = a1 + v38;
    v16 = *(v13 + 56);
    v41 = (v13 + 16);
    v42 = v14;
    v37 = (v13 - 8);
    v17 = _swiftEmptyArrayStorage;
    v39 = v8;
    v40 = v13;
    v14(v10, a1 + v38, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v37)(v10, v4);
      }

      else
      {
        v18 = *v41;
        (*v41)(v8, v10, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v17[2] + 1, 1);
          v17 = v43;
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          sub_10028FAB4((v20 > 1), v21 + 1, 1);
          v17 = v43;
        }

        v17[2] = v21 + 1;
        v22 = v17 + v38 + v21 * v16;
        v8 = v39;
        v18(v22, v39, v4);
      }

      v15 += v16;
      if (!--v11)
      {
        break;
      }

      v42(v10, v15, v4);
    }
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  v23 = v17[2];
  if (v23)
  {
    if (v23 != v34)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000C4AC(v24, qword_10097B528);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Asked to view mixed files and links, only viewing links", v27, 2u);
      }
    }

    v43 = 0;
    v28 = swift_allocObject();
    v29 = v35;
    *(v28 + 16) = v17;
    *(v28 + 24) = v29;
  }

  else
  {

    v43 = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = v35;
    *(v30 + 24) = 1;
    *(v30 + 32) = v33;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_1005E94E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandlerNewsLinks();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_1005E951C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100289000;

  return sub_1005E8984(a1);
}

void sub_1005E95DC(uint64_t a1, char a2)
{
  v3 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  sub_10028088C(&qword_1009775E0, &unk_1007FAD10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F5670;
  *(inited + 32) = 0x4E494C5F5357454ELL;
  v5 = inited + 32;
  *(inited + 40) = 0xE90000000000004BLL;
  *(inited + 48) = v3;
  sub_1003D8D18(inited, a2);
  swift_setDeallocating();
  sub_100005508(v5, &qword_100981D40, &unk_1007FA6C0);
  v6 = String._bridgeToObjectiveC()();
  v7 = SFLocalizedStringForKey();

  if (v7)
  {

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10028088C(&unk_100978CC0, &qword_1007FAD20);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007F5670;
    *(v8 + 56) = &type metadata for Int;
    *(v8 + 64) = &protocol witness table for Int;
    *(v8 + 32) = v3;
    static String.localizedStringWithFormat(_:_:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005E9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005E978C, v4, 0);
}

uint64_t sub_1005E978C()
{
  v30 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_100973B48 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100986420);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No record data received for contact lookup", v5, 2u);
    }

    v6 = v0[1];

    return v6(0, 0, 0, 0);
  }

  else
  {
    v8 = v0[6];
    v9 = v0[2];
    v0[7] = *(v8 + 112);
    v10 = *(v8 + 120);
    sub_100294008(v9, v1);
    sub_10046BDE0(v10, v28);
    v11 = v28[1];
    v12 = v28[2];
    v13 = v28[3];
    v0[8] = v28[0];
    v0[9] = v12;
    v14 = v29;
    v0[10] = v29;
    if (qword_100973B48 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v0[11] = sub_10000C4AC(v15, qword_100986420);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315394;
      if (v12)
      {
        v20 = v11;
      }

      else
      {
        v20 = 0xD000000000000015;
      }

      v27 = v11;
      v28[0] = v19;
      if (v12)
      {
        v21 = v12;
      }

      else
      {
        v21 = 0x8000000100789F30;
      }

      v22 = sub_10000C4E4(v20, v21, v28);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      if (v14)
      {
        v23 = v13;
      }

      else
      {
        v23 = 0xD000000000000015;
      }

      if (v14)
      {
        v24 = v14;
      }

      else
      {
        v24 = 0x8000000100789F30;
      }

      v25 = sub_10000C4E4(v23, v24, v28);

      *(v18 + 14) = v25;
      v11 = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "Hash lookup complete: email hash - %s phone hash - %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    v26 = swift_task_alloc();
    v0[12] = v26;
    *v26 = v0;
    v26[1] = sub_1005E9B6C;

    return sub_1005EA27C(v11, v12, v13, v14);
  }
}

uint64_t sub_1005E9B6C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return _swift_task_switch(sub_1005E9C84, v4, 0);
}

uint64_t sub_1005E9C84()
{
  v53 = v0;
  if (v0[14])
  {
    v1 = v0[7];
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 verifiedIdentityForAppleID:v2];

    if (v3)
    {
      v4 = v3;
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v4;
        *v8 = v3;
        v9 = v4;
        _os_log_impl(&_mh_execute_header, v5, v6, "Confirmed verified identity %@", v7, 0xCu);
        sub_10028924C(v8);
      }

      v10 = v0[7];

      sub_100389A64();
      sub_1002D7FB0();
      isa = Set._bridgeToObjectiveC()().super.isa;

      v12 = [v10 contactWithPreferredIdentifierForContacts:isa];

      if (v12)
      {
        v13 = [v12 identifier];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = [objc_allocWithZone(CNContactFormatter) init];
        v17 = [v16 stringFromContact:v12];

        if (v17)
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v19;
          v51 = v18;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v41 = v0[4];
          v40 = v0[5];
          v47 = v0[2];
          v48 = v0[3];
          v42 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v42 = 136315394;
          *(v42 + 4) = sub_10000C4E4(v41, v40, &v52);
          *(v42 + 12) = 2080;
          *(v42 + 14) = sub_10000C4E4(v49, v15, &v52);
          _os_log_impl(&_mh_execute_header, v38, v39, "Matched serviceName %s to contactID %s", v42, 0x16u);
          swift_arrayDestroy();

          sub_10028BCC0(v47, v48);
        }

        else
        {
          v44 = v0[2];
          v43 = v0[3];

          sub_10028BCC0(v44, v43);
        }

        v23 = v49;
        v22 = v50;
        v24 = v51;
        goto LABEL_21;
      }

      v25 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      v34 = os_log_type_enabled(v25, v33);
      v36 = v0[2];
      v35 = v0[3];
      if (v34)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v25, v33, "No matching contacts found", v37, 2u);
      }

      v31 = v36;
      v32 = v35;
    }

    else
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      v27 = os_log_type_enabled(v25, v26);
      v29 = v0[2];
      v28 = v0[3];
      if (v27)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "No Verified identity found", v30, 2u);
      }

      v31 = v29;
      v32 = v28;
    }

    sub_10028BCC0(v31, v32);

    v23 = 0;
    v15 = 0;
    v24 = 0;
    v22 = 0;
  }

  else
  {
    v21 = v0[2];
    v20 = v0[3];

    sub_10028BCC0(v21, v20);
    v15 = 0;
    v22 = 0;
    v23 = v0[13];
    v24 = v23;
  }

LABEL_21:
  v45 = v0[1];

  return v45(v23, v15, v24, v22);
}

uint64_t sub_1005EA1B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986420);
  v1 = sub_10000C4AC(v0, qword_100986420);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005EA27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return _swift_task_switch(sub_1005EA2A4, v4, 0);
}

uint64_t sub_1005EA2A4()
{
  v1 = *(v0[6] + 112);
  if (v0[3])
  {
    v2 = String._bridgeToObjectiveC()();
    if (v0[5])
    {
LABEL_3:
      v3 = String._bridgeToObjectiveC()();
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
    if (v0[5])
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = [v1 emailOrPhoneForEmailHash:v2 phoneHash:v3];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[1];

  return v8(v5, v7);
}

uint64_t sub_1005EA3D4()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1005EA438()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar.Component();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Calendar();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v8 = __chkstk_darwin(v7 - 8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v46 - v11;
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = sub_10028088C(&unk_1009865A0, &unk_10080D788);
  v16 = __chkstk_darwin(v15);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - v20;
  v22 = *(v19 + 48);
  swift_beginAccess();
  v23 = sub_10002C5AC();
  sub_10002CDC0((v0 + 96), *(v0 + 120));
  sub_10002C988(v14);
  swift_endAccess();
  if (sub_1005EFFF8(v23, v14))
  {
    sub_10044DBD8(v14, &v21[v22]);
  }

  else
  {
    sub_100005508(v14, &qword_10097A7F0, &unk_1007FB600);

    (*(v2 + 56))(&v21[v22], 1, 1, v1);
    v23 = 0;
  }

  v24 = v2;
  *v21 = v23;
  if ((*(v2 + 48))(&v21[v22], 1, v1) == 1)
  {
    static Calendar.current.getter();
    (*(v53 + 104))(v52, enum case for Calendar.Component.second(_:), v54);
    sub_1004BAD44();
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v26 = v47;
        static Date.now.getter();
        v46 = v15;
        v27 = v12;
        v28 = v52;
        v29 = v24;
        v30 = v0;
        v31 = v51;
        Calendar.date(byAdding:value:to:wrappingComponents:)();
        (*(v29 + 8))(v26, v1);
        (*(v53 + 8))(v28, v54);
        (*(v48 + 8))(v31, v50);
        v32 = v49;
        sub_10000FF90(v27, v49, &qword_10097A7F0, &unk_1007FB600);
        swift_beginAccess();
        v33 = *(v30 + 120);
        v34 = *(v30 + 128);
        sub_10002F5B4(v30 + 96, v33);
        (*(v34 + 40))(v32, v33, v34);
        swift_endAccess();
        sub_1005EB820(v27);
        v35 = v27;
        v15 = v46;
        sub_100005508(v35, &qword_10097A7F0, &unk_1007FB600);
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      swift_once();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_9:
  sub_10000FF90(v21, v18, &unk_1009865A0, &unk_10080D788);
  v36 = *v18;
  v37 = *(v15 + 48);
  if (*v18)
  {
    v38 = [*v18 URI];
    v39 = [v38 prefixedURI];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100005508(v18 + v37, &qword_10097A7F0, &unk_1007FB600);
    goto LABEL_15;
  }

  sub_100005508(v18 + v37, &qword_10097A7F0, &unk_1007FB600);
  if (qword_100973B50 != -1)
  {
    goto LABEL_19;
  }

LABEL_12:
  v41 = type metadata accessor for Logger();
  sub_10000C4AC(v41, qword_100986460);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "Pseudonym not present for request", v44, 2u);
  }

  v40 = 0;
LABEL_15:
  sub_100005508(v21, &unk_1009865A0, &unk_10080D788);
  return v40;
}

uint64_t sub_1005EAAE8()
{
  v1[5] = v0;
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = sub_10028088C(&unk_1009865A0, &unk_10080D788);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EAC28, v2, 0);
}

uint64_t sub_1005EAC28()
{
  v55 = v0;
  if (sub_1004E701C())
  {
    v1 = sub_1005F06F4();
    if (v1)
    {
      v2 = v0[5];

      if ([*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_deviceStatus) deviceWasUnlockedOnce])
      {
        if (qword_100973B50 != -1)
        {
          swift_once();
        }

        v3 = type metadata accessor for Logger();
        sub_10000C4AC(v3, qword_100986460);
        v4 = Logger.logObject.getter();
        v5 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&_mh_execute_header, v4, v5, "Checking pseudonym service for valid state", v6, 2u);
        }

        v7 = v0[12];
        v8 = v0[7];
        v9 = v0[8];
        v10 = v0[5];

        v11 = *(v9 + 48);
        swift_beginAccess();
        v12 = sub_10002C5AC();
        sub_10002CDC0((v10 + 96), *(v10 + 120));
        sub_10002C988(v8);
        swift_endAccess();
        v13 = sub_1005EFFF8(v12, v8);
        v14 = v0[7];
        if (v13)
        {
          sub_10044DBD8(v14, v7 + v11);
        }

        else
        {
          sub_100005508(v14, &qword_10097A7F0, &unk_1007FB600);

          v15 = type metadata accessor for Date();
          (*(*(v15 - 8) + 56))(v7 + v11, 1, 1, v15);
          v12 = 0;
        }

        v17 = v0[11];
        v16 = v0[12];
        *v16 = v12;
        sub_10000FF90(v16, v17, &unk_1009865A0, &unk_10080D788);
        v18 = *v17;
        v19 = *(v9 + 48);
        if (*v17)
        {
          v20 = v0[12];
          v21 = v0[10];
          sub_100005508(v17 + v19, &qword_10097A7F0, &unk_1007FB600);
          sub_10000FF90(v20, v21, &unk_1009865A0, &unk_10080D788);
          v22 = v18;
          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v23, v24))
          {
            v53 = v24;
            v25 = v0[9];
            v52 = v0[10];
            v26 = v0[6];
            v27 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            *v27 = 136315394;
            v28 = [v22 URI];
            v29 = [v28 prefixedURI];

            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            v33 = sub_10000C4E4(v30, v32, &v54);

            *(v27 + 4) = v33;
            *(v27 + 12) = 2080;
            sub_10000FF90(v52, v25, &unk_1009865A0, &unk_10080D788);

            sub_10044DBD8(v25 + *(v9 + 48), v26);
            v34 = type metadata accessor for Date();
            v35 = *(v34 - 8);
            v36 = (*(v35 + 48))(v26, 1, v34);
            v37 = v0[6];
            if (v36 == 1)
            {
              sub_100005508(v0[6], &qword_10097A7F0, &unk_1007FB600);
              v38 = 0xE600000000000000;
              v39 = 0x3E656E6F6E3CLL;
            }

            else
            {
              v39 = Date.description.getter();
              v38 = v47;
              (*(v35 + 8))(v37, v34);
            }

            v48 = v0[12];
            sub_100005508(v0[10], &unk_1009865A0, &unk_10080D788);
            v49 = sub_10000C4E4(v39, v38, &v54);

            *(v27 + 14) = v49;
            _os_log_impl(&_mh_execute_header, v23, v53, "Current AirDrop pseudonym %s - afterFirstUseExpirationDate %s", v27, 0x16u);
            swift_arrayDestroy();

            v44 = v48;
          }

          else
          {
            v45 = v0[12];
            v46 = v0[10];

            sub_100005508(v46, &unk_1009865A0, &unk_10080D788);
            v44 = v45;
          }
        }

        else
        {
          sub_100005508(v17 + v19, &qword_10097A7F0, &unk_1007FB600);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&_mh_execute_header, v40, v41, "Pseudonym is missing, triggering state update", v42, 2u);
          }

          v43 = v0[12];

          sub_1005EB438();
          v44 = v43;
        }

        sub_100005508(v44, &unk_1009865A0, &unk_10080D788);
      }
    }
  }

  v50 = v0[1];

  return v50();
}

uint64_t sub_1005EB25C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100986460);
  v1 = sub_10000C4AC(v0, qword_100986460);
  if (qword_100973700 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0948);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005EB324(uint64_t a1)
{
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100986460);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Pseudonym service network path monitor is reachable", v4, 2u);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1005EB438();
  }

  return result;
}

uint64_t sub_1005EB438()
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  sub_1005EBB7C();
  swift_beginAccess();
  v10 = sub_10002C5AC();
  sub_10002CDC0((v0 + 96), *(v0 + 120));
  sub_10002C988(v9);
  swift_endAccess();
  if (sub_1005EFFF8(v10, v9))
  {
    if (v10)
    {
      v11 = v10;
      v12 = [v11 properties];
      v13 = [v12 expirationDate];

      static Date._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 56))(v7, v14, 1, v20);
    sub_1005EBC3C(v7);
    sub_100005508(v7, &qword_10097A7F0, &unk_1007FB600);
    sub_1005EB820(v9);
  }

  else
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
    v16 = qword_1009735E0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = static AirDropActor.shared;
    v18 = sub_10002CE80();
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v0;

    sub_1002B3098(0, 0, v3, &unk_10080D800, v19);
  }

  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  v22 = qword_1009735E0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static AirDropActor.shared;
  v24 = sub_10002CE80();
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v25[4] = v0;

  sub_1002B3098(0, 0, v3, &unk_10080D810, v25);

  return sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
}

uint64_t sub_1005EB820(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10000FF90(a1, v8, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
  }

  v27 = *(v10 + 32);
  v27(v14, v8, v9);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  (*(v10 + 16))(v28, v14, v9);
  v17 = qword_1009735E0;

  v26 = v5;
  v18 = v1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v20 = sub_10002CE80();
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  v27((v23 + v21), v28, v9);
  *(v23 + v22) = v18;

  v24 = sub_1002B3098(0, 0, v26, &unk_10080D7A0, v23);
  (*(v10 + 8))(v14, v9);
  *(v18 + 184) = v24;
}

uint64_t sub_1005EBB7C()
{
  if (*(v0 + 176))
  {

    Task.cancel()();
  }

  *(v0 + 176) = 0;

  if (*(v0 + 184))
  {

    Task.cancel()();
  }

  *(v0 + 184) = 0;
}

uint64_t sub_1005EBC3C(uint64_t a1)
{
  v3 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_10000FF90(a1, v8, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_100005508(v8, &qword_10097A7F0, &unk_1007FB600);
  }

  v27 = *(v10 + 32);
  v27(v14, v8, v9);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  (*(v10 + 16))(v28, v14, v9);
  v17 = qword_1009735E0;

  v26 = v5;
  v18 = v1;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = static AirDropActor.shared;
  v20 = sub_10002CE80();
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  v27((v23 + v21), v28, v9);
  *(v23 + v22) = v18;

  v24 = sub_1002B3098(0, 0, v26, &unk_10080D7E8, v23);
  (*(v10 + 8))(v14, v9);
  *(v18 + 176) = v24;
}

uint64_t sub_1005EBF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC034, v5, 0);
}

uint64_t sub_1005EC034()
{
  v1 = sub_10002E624();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1005F11D8;

  return sub_1005EC0D4(v1);
}

uint64_t sub_1005EC0D4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[4] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC174, v3, 0);
}

uint64_t sub_1005EC174()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
LABEL_13:
    v13 = *(v0 + 8);

    return v13();
  }

  v2 = *(v1 + 32);
  *(v0 + 72) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (!v5)
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_13;
  }

  v7 = 0;
LABEL_9:
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  v9 = *(*(v6 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
  *(v0 + 56) = v9;
  v10 = v9;
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1005EC2D8;

  return sub_1005EF2EC(v10);
}

uint64_t sub_1005EC2D8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_1005EC3E8, v1, 0);
}

void sub_1005EC3E8()
{
  v1 = *(v0 + 48);
  v2 = (*(v0 + 40) - 1) & *(v0 + 40);
  if (v2)
  {
    v3 = *(v0 + 16);
LABEL_7:
    *(v0 + 40) = v2;
    *(v0 + 48) = v1;
    v5 = *(*(v3 + 56) + ((v1 << 9) | (8 * __clz(__rbit64(v2)))));
    *(v0 + 56) = v5;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_1005EC2D8;

    sub_1005EF2EC(v6);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 16);
      if (v4 >= (((1 << *(v0 + 72)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_1005EC538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EC6C8, v8, 0);
}

uint64_t sub_1005EC6C8()
{
  ContinuousClock.init()();
  Date.timeIntervalSinceNow.getter();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1005EC7A4;

  return sub_10002ED10(v1, v3, 0, 0, 1);
}

uint64_t sub_1005EC7A4()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1005ECA60;
  }

  else
  {
    v7 = sub_1005EC92C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005EC92C()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10002CE80();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v3;

  sub_1002B3098(0, 0, v2, &unk_10080D7F0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005ECA60()
{
  v0[2] = v0[14];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100986460);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled pseudonym expiration task", v4, 2u);
    }

    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];

    (*(v6 + 8))(v5, v7);
  }

  else
  {

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100986460);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to start task for pseudonym expiration with error %@", v11, 0xCu);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);

      goto LABEL_13;
    }
  }

LABEL_13:

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005ECD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for CancellationError();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for ContinuousClock();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v8 = static AirDropActor.shared;
  v5[12] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ECEE4, v8, 0);
}

uint64_t sub_1005ECEE4()
{
  ContinuousClock.init()();
  Date.timeIntervalSinceNow.getter();
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1005ECFC0;

  return sub_10002ED10(v1, v3, 0, 0, 1);
}

uint64_t sub_1005ECFC0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1005ED27C;
  }

  else
  {
    v7 = sub_1005ED148;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1005ED148()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10002CE80();
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v3;

  sub_1002B3098(0, 0, v2, &unk_10080D7B0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1005ED27C()
{
  v0[2] = v0[14];
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  if (swift_dynamicCast())
  {

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_100986460);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Cancelled after first use expiration task", v4, 2u);
    }

    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[5];

    (*(v6 + 8))(v5, v7);
  }

  else
  {

    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100986460);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "Failed to start task for after first use expiration with error %@", v11, 0xCu);
      sub_100005508(v12, &qword_100975400, &qword_1007F65D0);

      goto LABEL_13;
    }
  }

LABEL_13:

  v14 = v0[1];

  return v14();
}

uint64_t sub_1005ED570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ED60C, v5, 0);
}

uint64_t sub_1005ED60C()
{
  sub_1005EBB7C();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1002963B0;

  return sub_1005ED6A4();
}

uint64_t sub_1005ED6A4()
{
  v1[27] = v0;
  sub_10028088C(&qword_100976160, &qword_1007F8770);
  v1[28] = swift_task_alloc();
  sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v2 = type metadata accessor for ContinuousClock();
  v1[33] = v2;
  v1[34] = *(v2 - 8);
  v1[35] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v1[36] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005ED834, v3, 0);
}

uint64_t sub_1005ED834()
{
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 296) = sub_10000C4AC(v1, qword_100986460);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting for first unlock to provision AirDrop pseudonym", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 304) = v5;
  *v5 = v0;
  v5[1] = sub_1005ED990;

  return sub_10002DCF0();
}

uint64_t sub_1005ED990()
{
  v1 = *(*v0 + 288);

  return _swift_task_switch(sub_1005EDAA0, v1, 0);
}

uint64_t sub_1005EDAA0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Waiting to start provisioning", v4, 2u);
  }

  v5 = static Duration.seconds(_:)();
  v7 = v6;
  static Clock<>.continuous.getter();
  v8 = swift_task_alloc();
  *(v1 + 312) = v8;
  *v8 = v1;
  v8[1] = sub_1005EDBFC;

  return sub_10002ED10(v5, v7, 0, 0, 1);
}

uint64_t sub_1005EDBFC()
{
  v2 = *v1;

  v3 = v2[36];
  v4 = v2[35];
  v5 = v2[34];
  v6 = v2[33];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_1005F11DC;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = sub_1005EDDA8;
  }

  return _swift_task_switch(v7, v3, 0);
}

uint64_t sub_1005EDDA8()
{
  v85 = v0;
  v1 = v0[27];
  v2 = v1[5];
  v3 = v1[6];
  sub_10002CDC0(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[40] = v4;
  v0[41] = v5;
  v7 = v1[5];
  v8 = v1[6];
  sub_10002CDC0(v1 + 2, v7);
  v9 = (*(v8 + 40))(0x51706F7244726941, 0xE900000000000052, v7, v8, 31536000.0);
  v0[42] = v9;

  v10 = v9;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v84 = v15;
    *v13 = 136315394;
    v16 = v6 == 0;
    if (!v6)
    {
      v4 = 0xD000000000000015;
    }

    v17 = v6;
    v18 = v10;
    if (v16)
    {
      v19 = 0x8000000100789F30;
    }

    else
    {
      v19 = v17;
    }

    v20 = sub_10000C4E4(v4, v19, &v84);
    v10 = v18;

    *(v13 + 4) = v20;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v18;
    *v14 = v18;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Provisioning pseudonym for service %s and properties %@", v13, 0x16u);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v15);
  }

  if (sub_1004BB21C())
  {
    v79 = v10;
    v22 = v0[32];
    v23 = v0[27];
    v24 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
    swift_beginAccess();
    sub_10000FF90(v23 + v24, v22, &qword_10097A7F0, &unk_1007FB600);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    v28 = v27(v22, 1, v25);
    sub_100005508(v22, &qword_10097A7F0, &unk_1007FB600);
    if (v28 == 1)
    {
      goto LABEL_12;
    }

    v29 = v0[31];
    sub_10000FF90(v23 + v24, v29, &qword_10097A7F0, &unk_1007FB600);
    result = v27(v29, 1, v25);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v31 = v0[31];
    v32 = v0[27];
    Date.timeIntervalSinceNow.getter();
    v34 = v33;
    (*(v26 + 8))(v31, v25);
    if (*(v32 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) < -v34)
    {
LABEL_12:
      v35 = v0[30];
      Date.init()();
      (*(v26 + 56))(v35, 0, 1, v25);
      swift_beginAccess();
      sub_1003561CC(v35, v23 + v24);
      swift_endAccess();
      v36 = v1[5];
      v37 = v1[6];
      sub_10002CDC0(v1 + 2, v36);
      v81 = (*(v37 + 24) + **(v37 + 24));
      v38 = swift_task_alloc();
      v0[43] = v38;
      *v38 = v0;
      v38[1] = sub_1005EE758;

      return v81(v79, v36, v37);
    }

    v75 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&_mh_execute_header, v75, v77, "Attempting to provision AirDrop pseudonyms too frequetly.", v78, 2u);
    }
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Pseudonym provisioning is disabled", v41, 2u);
    }

    v42 = v0[27];
    v43 = sub_10002C5AC();
    if (v43)
    {
      v44 = v0[27];
      v45 = v43;
      v46 = [v43 URI];
      v47 = [v46 prefixedURI];

      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v80 = v49;
      v82 = v48;

      swift_beginAccess();
      v50 = *(v44 + 120);
      v51 = *(v44 + 128);
      sub_10002F5B4(v42 + 96, v50);
      v52 = *(v51 + 72);
      v53 = v45;
      v54 = v52(v0 + 2, v50, v51);
      sub_1002B07C8(v45, v82, v80);
      v54(v0 + 2, 0);
      swift_endAccess();
    }

    v55 = v0[30];
    v56 = v0[27];
    swift_beginAccess();
    v57 = *(v56 + 120);
    v58 = *(v56 + 128);
    sub_10002F5B4(v42 + 96, v57);
    (*(v58 + 16))(0, v57, v58);
    v59 = type metadata accessor for Date();
    v60 = *(*(v59 - 8) + 56);
    v60(v55, 1, 1, v59);
    v61 = v42;
    v62 = v60;
    v63 = *(v56 + 120);
    v64 = *(v56 + 128);
    sub_10002F5B4(v61 + 96, v63);
    (*(v64 + 40))(v55, v63, v64);
    swift_endAccess();
    v83 = v0[42];
    v65 = v0[36];
    v67 = v0[29];
    v66 = v0[30];
    v68 = v0[27];
    v69 = v0[28];
    v62(v67, 1, 1, v59);
    sub_1005EBC3C(v67);
    sub_100005508(v67, &qword_10097A7F0, &unk_1007FB600);
    v70 = type metadata accessor for TaskPriority();
    (*(*(v70 - 8) + 56))(v69, 1, 1, v70);
    v71 = sub_10002CE80();
    v72 = swift_allocObject();
    v72[2] = v65;
    v72[3] = v71;
    v72[4] = v68;

    sub_1002B3098(0, 0, v69, &unk_10080D7C8, v72);

    v62(v66, 1, 1, v59);
    v73 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
    swift_beginAccess();
    v74 = v68 + v73;
    v75 = v83;
    sub_1003561CC(v66, v74);
    swift_endAccess();
    *(v68 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = 0x404E000000000000;
    swift_beginAccess();
    sub_10002CDC0((v68 + 136), *(v68 + 160));
    sub_100531644();
  }

  v76 = v0[1];

  return v76();
}

uint64_t sub_1005EE758(uint64_t a1)
{
  v3 = *v2;
  v3[44] = a1;
  v3[45] = v1;

  if (v1)
  {
    v4 = v3[36];
    v5 = sub_1005EEDEC;
  }

  else
  {
    v6 = v3[36];

    v5 = sub_1005EE880;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_1005EE880()
{
  v1 = v0[44];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[44];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v1;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "Provisioned pseudonym %@)", v6, 0xCu);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  v51 = v0[27];
  v9 = sub_10002C5AC();
  if (v9)
  {
    v10 = v0[27];
    v11 = v9;
    v12 = [v9 URI];
    v13 = [v12 prefixedURI];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v15;
    v47 = v14;

    swift_beginAccess();
    v17 = *(v10 + 120);
    v16 = *(v10 + 128);
    sub_10002F5B4(v51 + 96, v17);
    v18 = v2;
    v19 = v1;
    v20 = *(v16 + 72);
    v45 = v11;
    v21 = v20(v0 + 2, v17, v16);
    v1 = v19;
    v2 = v18;
    v22 = v21;
    sub_1002B07C8(v11, v47, v46);
    v22(v0 + 2, 0);
    swift_endAccess();
  }

  v48 = v0[30];
  v23 = v0[27];
  swift_beginAccess();
  v24 = *(v23 + 120);
  v25 = *(v23 + 128);
  sub_10002F5B4(v51 + 96, v24);
  v26 = *(v25 + 16);
  v27 = v2;
  v26(v1, v24, v25);
  v28 = type metadata accessor for Date();
  v29 = 1;
  v50 = *(*(v28 - 8) + 56);
  v50(v48, 1, 1, v28);
  v30 = *(v23 + 120);
  v31 = *(v23 + 128);
  sub_10002F5B4(v51 + 96, v30);
  (*(v31 + 40))(v48, v30, v31);
  swift_endAccess();
  v52 = v27;
  if (v27)
  {
    v32 = [v27 properties];
    v33 = [v32 expirationDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = 0;
  }

  v49 = v0[42];
  v34 = v0[36];
  v36 = v0[29];
  v35 = v0[30];
  v37 = v0[27];
  v38 = v0[28];
  v50(v36, v29, 1, v28);
  sub_1005EBC3C(v36);
  sub_100005508(v36, &qword_10097A7F0, &unk_1007FB600);
  v39 = type metadata accessor for TaskPriority();
  (*(*(v39 - 8) + 56))(v38, 1, 1, v39);
  v40 = sub_10002CE80();
  v41 = swift_allocObject();
  v41[2] = v34;
  v41[3] = v40;
  v41[4] = v37;

  sub_1002B3098(0, 0, v38, &unk_10080D7C8, v41);

  v50(v35, 1, 1, v28);
  v42 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt;
  swift_beginAccess();
  sub_1003561CC(v35, v37 + v42);
  swift_endAccess();
  *(v37 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = 0x404E000000000000;
  swift_beginAccess();
  sub_10002CDC0((v37 + 136), *(v37 + 160));
  sub_100531644();

  v43 = v0[1];

  return v43();
}

uint64_t sub_1005EEDEC()
{
  v20 = v0;
  v1 = v0[42];

  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315650;
    if (v5)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xD000000000000015;
    }

    if (!v5)
    {
      v5 = 0x8000000100789F30;
    }

    v12 = sub_10000C4E4(v11, v5, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v6;
    *v9 = v6;
    *(v8 + 22) = 2112;
    v13 = v6;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v14;
    v9[1] = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to provision pseudonym for service %s and %@ with error: %@", v8, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v10);
  }

  else
  {
  }

  v15 = v0[42];
  v16 = v0[27];
  *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) = *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds) + *(v16 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_provisionThrottleSeconds);
  swift_beginAccess();
  sub_10002CDC0((v16 + 136), *(v16 + 160));
  sub_100531488();

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005EF0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v5 = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EF13C, v5, 0);
}

uint64_t sub_1005EF13C()
{
  v1 = sub_10002E624();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1005EF1DC;

  return sub_1005EC0D4(v1);
}

uint64_t sub_1005EF1DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1005EF2EC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v3 = static AirDropActor.shared;
  v2[11] = static AirDropActor.shared;

  return _swift_task_switch(sub_1005EF38C, v3, 0);
}

uint64_t sub_1005EF38C()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v1[5];
  v3 = v1[6];
  sub_10002CDC0(v1 + 2, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[12] = v4;
  v0[13] = v5;
  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v7 = v0[9];
  v8 = type metadata accessor for Logger();
  v0[14] = sub_10000C4AC(v8, qword_100986460);

  v9 = v7;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = v0[9];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v25 = v23;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *v14 = v12;
    *(v13 + 12) = 2080;
    if (v6)
    {
      v15 = v6;
    }

    else
    {
      v4 = 0xD000000000000015;
      v15 = 0x8000000100789F30;
    }

    v16 = v12;

    v17 = sub_10000C4E4(v4, v15, &v25);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Revoking pseudonym %@ for service %s", v13, 0x16u);
    sub_100005508(v14, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v23);
  }

  v18 = v1[5];
  v19 = v1[6];
  sub_10002CDC0(v1 + 2, v18);
  v24 = (*(v19 + 32) + **(v19 + 32));
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = sub_1005EF6B8;
  v21 = v0[9];

  return v24(v21, v18, v19);
}

uint64_t sub_1005EF6B8(char a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  v5 = *(v4 + 88);
  if (v1)
  {
    v6 = sub_1005EFBE8;
  }

  else
  {
    *(v4 + 136) = a1 & 1;
    v6 = sub_1005EF7F8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1005EF7F8()
{
  v33 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v1 == 1)
  {
    if (v5)
    {
      v7 = *(v0 + 96);
      v8 = *(v0 + 72);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v32 = v11;
      *v9 = 138412546;
      *(v9 + 4) = v8;
      *v10 = v8;
      *(v9 + 12) = 2080;
      if (!v6)
      {
        v7 = 0xD000000000000015;
        v6 = 0x8000000100789F30;
      }

      v12 = v8;
      v13 = sub_10000C4E4(v7, v6, &v32);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v3, v4, "Revoked pseudonym %@ for service %s", v9, 0x16u);
      sub_100005508(v10, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v11);
    }

    else
    {
    }

    v21 = *(v0 + 80);
    v22 = [*(v0 + 72) URI];
    v23 = [v22 prefixedURI];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    swift_beginAccess();
    v27 = *(v21 + 120);
    v28 = *(v21 + 128);
    sub_10002F5B4(v21 + 96, v27);
    v29 = (*(v28 + 72))(v0 + 16, v27, v28);
    sub_1002B07C8(0, v24, v26);
    v29(v0 + 16, 0);
    swift_endAccess();
  }

  else if (v5)
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 72);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 138412546;
    *(v16 + 4) = v15;
    *v17 = v15;
    *(v16 + 12) = 2080;
    if (!v6)
    {
      v14 = 0xD000000000000015;
      v6 = 0x8000000100789F30;
    }

    v19 = v15;
    v20 = sub_10000C4E4(v14, v6, &v32);

    *(v16 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v3, v4, "Did not revoke pseudonym %@ for service %s", v16, 0x16u);
    sub_100005508(v17, &qword_100975400, &qword_1007F65D0);

    sub_10000C60C(v18);
  }

  else
  {
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1005EFBE8()
{
  v17 = v0;
  v1 = *(v0 + 72);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 104);
  if (v4)
  {
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 138412802;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    if (!v5)
    {
      v6 = 0xD000000000000015;
      v5 = 0x8000000100789F30;
    }

    v11 = v7;
    v12 = sub_10000C4E4(v6, v5, &v16);

    *(v8 + 14) = v12;
    *(v8 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v13;
    v9[1] = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to revoke pseudonym %@ for service %s with error: %@", v8, 0x20u);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();

    sub_10000C60C(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1005EFE24()
{
  sub_10000C60C(v0 + 2);
  sub_10000C60C(v0 + 7);
  sub_10000C60C(v0 + 12);
  sub_10000C60C(v0 + 17);

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropPseudonymService_lastProvisionAttempt, &qword_10097A7F0, &unk_1007FB600);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropPseudonymService(uint64_t a1)
{
  result = qword_1009864C8;
  if (!qword_1009864C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005EFF2C(uint64_t a1)
{
  sub_1002A6BEC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1005EFFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  if (!v18)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000C4AC(v28, qword_100986460);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Pseudonym is not set", v31, 2u);
    }

    return 0;
  }

  v21 = [v18 properties];
  v22 = [v21 expirationDate];

  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = *(v8 + 32);
  v23(v20, v17, v7);
  static Date.now.getter();
  sub_10000FF90(a2, v6, &qword_10097A7F0, &unk_1007FB600);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100005508(v6, &qword_10097A7F0, &unk_1007FB600);
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100986460);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Pseudonym has not been used", v27, 2u);
    }
  }

  else
  {
    v23(v11, v6, v7);
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100986460);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Current pseudonym has been used", v35, 2u);
    }

    if ((static Date.< infix(_:_:)() & 1) == 0)
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Pseudonym is not valid; expired after first use", v49, 2u);
      }

      v46 = *(v8 + 8);
      v46(v11, v7);
      v46(v14, v7);
      goto LABEL_33;
    }

    (*(v8 + 8))(v11, v7);
  }

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000C4AC(v42, qword_100986460);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Pseudonym is not valid; expired", v45, 2u);
    }

    v46 = *(v8 + 8);
    v46(v14, v7);
LABEL_33:
    v46(v20, v7);
    return 0;
  }

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000C4AC(v36, qword_100986460);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Pseudonym is valid", v39, 2u);
  }

  v40 = *(v8 + 8);
  v40(v14, v7);
  v40(v20, v7);
  return 1;
}

void *sub_1005F06F4()
{
  v0 = objc_allocWithZone(IDSAccountController);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithService:v1];

  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = [v2 accounts];
  if (!v3)
  {

LABEL_26:
    if (qword_100973B50 != -1)
    {
LABEL_33:
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100986460);
    v2 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v2, v21, "Pseudonym service does not have an IDS account", v22, 2u);
    }

    goto LABEL_29;
  }

  v4 = v3;
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = -1 << *(v5 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(v5 + 56);

  v9 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = v9;
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v11 >= ((63 - v6) >> 6))
    {
      break;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v10;
    if (v8)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        sub_100010684(*(v5 + 48) + 40 * (v12 | (v11 << 6)), &v28);
        if (!v30)
        {
          goto LABEL_20;
        }

        v24 = v28;
        v25 = v29;
        v26 = v30;
        v27 = v31;
        v13.isa = AnyHashable._bridgeToObjectiveC()().isa;
        objc_opt_self();
        v14 = swift_dynamicCastObjCClass();
        if (v14)
        {
          v15 = v14;
          sub_100285E74(&v24);
          if ([v15 isActive])
          {
            sub_100027D64(v5);

            return v15;
          }

          v9 = v11;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_100285E74(&v24);
          v9 = v11;
          if (!v8)
          {
            goto LABEL_9;
          }
        }

LABEL_14:
        v11 = v9;
      }
    }
  }

LABEL_20:
  sub_100027D64(v5);

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000C4AC(v16, qword_100986460);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Pseudonym service does not have an active IDS account", v19, 2u);
  }

LABEL_29:
  return 0;
}

uint64_t sub_1005F0AC0()
{
  if ((sub_1004E701C() & 1) == 0)
  {
    if (qword_100973B50 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100986460);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_14;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Pseudonym service is disabled";
    goto LABEL_13;
  }

  v0 = sub_1005F06F4();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 pushToken];

    if (v2)
    {
      v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;

      countAndFlagsBits = Data.hexString()()._countAndFlagsBits;
      sub_100026AC0(v3, v5);
      return countAndFlagsBits;
    }
  }

  if (qword_100973B50 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_100986460);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Pseudonym service does not have an active IDS account push token";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
  }

LABEL_14:

  return 0;
}

uint64_t sub_1005F0CA4(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005ECD54(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005F0DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005ED570(a1, v4, v5, v6);
}

uint64_t sub_1005F0E78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1005EF0A0(a1, v4, v5, v6);
}

uint64_t sub_1005F0F2C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_1005F1004(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1005EC538(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1005F1124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1005EBF98(a1, v4, v5, v6);
}

void *sub_1005F11E8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = type metadata accessor for UUID();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100290034(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100290034((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1005F14B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1005F150C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_1009865B0);
  v1 = sub_10000C4AC(v0, qword_1009865B0);
  if (qword_100973740 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005F15D4()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100282710(v0, qword_1009865C8);
  *sub_10000C4AC(v0, qword_1009865C8) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_1005F1664()
{
  v0 = CBUUIDHumanInterfaceDeviceServiceString;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 UUIDWithString:v2];

  qword_1009A0D70 = v3;
}

void sub_1005F16D0(char a1, uint64_t *a2, const char *a3)
{
  v4 = *a2;
  if (*(v3 + *a2) != (a1 & 1))
  {
    v6 = v3;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_1009865B0);

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = *(v6 + v4);

      _os_log_impl(&_mh_execute_header, oslog, v8, a3, v9, 8u);
    }

    else
    {
    }
  }
}

void sub_1005F184C()
{
  v1 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009865B0);

  v15[0] = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15[0], v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8);
    if (v9 >> 60 == 15)
    {
      v10 = 0x8000000100789F30;
      v11 = 0xD000000000000015;
    }

    else
    {
      v13 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
      v16 = 0;
      v17 = 0xE000000000000000;
      v15[1] = v13;
      v15[2] = v9;
      (*(v2 + 104))(v4, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v1);
      sub_100294008(v13, v9);
      sub_100423B84();
      DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
      (*(v2 + 8))(v4, v1);
      sub_10028BCC0(v13, v9);
      v11 = v16;
      v10 = v17;
    }

    v14 = sub_10000C4E4(v11, v10, &v18);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v15[0], v6, "b332BTAddr set. formatted: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
    v12 = v15[0];
  }
}

void sub_1005F1B24(int a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty;
  v4 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
  if (a1 == 2)
  {
    if (v4 == 2)
    {
      return;
    }
  }

  else if (v4 != 2 && ((v4 ^ a1) & 1) == 0)
  {
    return;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009865B0);

  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    v9 = *(v2 + v3);
    *v7 = 136315138;
    v10 = 1702195828;
    if ((v9 & 1) == 0)
    {
      v10 = 0x65736C6166;
    }

    v11 = 0xE500000000000000;
    if (v9)
    {
      v11 = 0xE400000000000000;
    }

    if (v9 == 2)
    {
      v12 = 0xD00000000000001ELL;
    }

    else
    {
      v12 = v10;
    }

    if (v9 == 2)
    {
      v13 = 0x80000001007998B0;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_10000C4E4(v12, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v6, "didSet pairedPencilsIsEmpty: %s", v7, 0xCu);
    sub_10000C60C(v8);
  }

  else
  {
  }
}

void sub_1005F1D24()
{
  v1 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed);
    *v4 = 136315138;
    v7 = 1702195828;
    if ((v6 & 1) == 0)
    {
      v7 = 0x65736C6166;
    }

    v8 = 0xE500000000000000;
    if (v6)
    {
      v8 = 0xE400000000000000;
    }

    if (v6 == 2)
    {
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v9 = v7;
    }

    if (v6 == 2)
    {
      v10 = 0x8000000100799A30;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_10000C4E4(v9, v10, &v13);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v3, "didSet didPairingSucceed: %s", v4, 0xCu);
    sub_10000C60C(v5);
  }
}

uint64_t sub_1005F1ED8(id a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle) = a1;
  v4 = v2;
  if (a1)
  {
    if (v2 == a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  a1 = 0;
  v2 = v4;
  if (v4)
  {
LABEL_3:
    a1 = [v2 invalidate];
  }

LABEL_4:

  return _objc_release_x2(a1);
}

void sub_1005F1F48()
{
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout;
  if (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout))
  {
    v2 = v0;
    v3 = qword_100973B58;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009865B0);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "- stopSessionTimeout", v7, 2u);
    }

    swift_getObjectType();
    OS_dispatch_source.cancel()();

    *(v2 + v1) = 0;
  }
}

uint64_t sub_1005F2090()
{
  sub_1005F1F48();

  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress + 8));

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8));

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8));
  swift_unknownObjectWeakDestroy();

  sub_10028BCC0(*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr), *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr + 8));
  return v0;
}

uint64_t sub_1005F2248()
{
  sub_1005F2090();

  return swift_deallocClassInstance();
}

uint64_t sub_1005F22C8(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1005F2434()
{
  type metadata accessor for OnceManager();
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptySetSingleton;
  *(v0 + 16) = v1;
  UUID.init()();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults;
  *(v0 + v2) = [objc_opt_self() standardUserDefaults];
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btCnxState) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hidServiceDiscovered) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranEnsurePairingStarted) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairResult) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairConsented) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedEnableBTPrompt) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleDiscover) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_ranHandleUnpairs) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsUnlockPrompt) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didCleanup) = 0;
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingUnpair;
  *(v0 + v3) = sub_1002823F8(_swiftEmptyArrayStorage);
  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needingDisconnect;
  *(v0 + v4) = sub_1002823F8(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedUnpairProcess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_startedCheckingFindMyStatus) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_finishedCheckingFindMyStatus) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_shouldFindMyPairOnSuccess) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing) = 0;
  v5 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_accInfoDict) = 0;
  v6 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout) = 0;
  v7 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
  *v7 = 0;
  v7[1] = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID) = xmmword_1007F8A80;
  v8 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
  *v9 = 0;
  v9[1] = 0;
  v10 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_viewServiceXPCConnectionEstablished) = 2;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_btBatteryScanner) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_remoteHandleActivated) = 2;
  v11 = v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 1;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete) = 0;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr) = xmmword_1007F8A80;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didPairingSucceed) = 2;
  *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sbRemoteHandle) = 0;
  return v0;
}

id sub_1005F27A8()
{
  result = [objc_allocWithZone(type metadata accessor for SDB332SetupAgent(0)) init];
  qword_1009A0D78 = result;
  return result;
}

uint64_t sub_1005F2838(void *a1, int a2)
{
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = __chkstk_darwin(v5 - 8);
  v57 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v54 - v8;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000C4AC(v9, qword_1009865B0);
  v10 = v2;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109376;
    *(v13 + 4) = (*(&v10->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState))[OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery];

    *(v13 + 8) = 1024;
    *(v13 + 10) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "updateStateRemotely. hideBattery: %{BOOL}d, isCharging: %{BOOL}d", v13, 0xEu);
  }

  else
  {

    v11 = v10;
  }

  aBlock[4] = sub_10060E6A0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004502D4;
  aBlock[3] = &unk_1008EA788;
  v14 = _Block_copy(aBlock);
  v56 = [a1 remoteObjectProxyWithErrorHandler:v14];
  _Block_release(v14);
  v15 = *(&v10->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  v16 = *(&v10[1].isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  v17 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v18 = *(*(&v10->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_discoveredBatteryInfo);
  if (v18)
  {
    [v18 batteryLevel];
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = v18 == 0;
  if (v16)
  {
    v22 = v20;
  }

  else
  {
    v22 = v15;
  }

  v23 = v16 & v21;
  if ((v16 & v21) != 0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  v25 = *(&v10->isa + v17);
  if ((a2 & 1) != 0 && v24 <= *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage))
  {
    v24 = *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage);
  }

  *(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = v24;
  v60 = a2;
  if ((v23 & 1) == 0)
  {
    v60 = (*(v25 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) & a2);
  }

  v59 = a2;
  v26 = v10;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v55 = v26;

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v29 = 134219010;
    *(v29 + 4) = v24;
    *(v29 + 12) = 2080;
    if (v16)
    {
      v30 = 0xD000000000000014;
      v31 = 0x8000000100799670;
    }

    else
    {
      v30 = Double.description.getter();
      v31 = v32;
    }

    v33 = sub_10000C4E4(v30, v31, aBlock);

    *(v29 + 14) = v33;
    *(v29 + 22) = 2080;
    if (v18)
    {
      v34 = Double.description.getter();
      v36 = v35;
    }

    else
    {
      v36 = 0x8000000100799690;
      v34 = 0xD00000000000001CLL;
    }

    v37 = sub_10000C4E4(v34, v36, aBlock);

    *(v29 + 24) = v37;
    *(v29 + 32) = 2048;
    *(v29 + 34) = *(*(&v10->isa + v17) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage);
    *(v29 + 42) = 1024;
    *(v29 + 44) = v60 & 1;
    _os_log_impl(&_mh_execute_header, v27, v28, "Sending B332 battery level: %f |\nIOKitLevel: %s, advertisementLevel: %s, lastSent: %f, hiding: %{BOOL}d", v29, 0x30u);
    swift_arrayDestroy();
  }

  v38 = *(&v10->isa + v17);
  v39 = *(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v40 = *(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
  v41 = *(v38 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral);
  v42 = v59;
  v44 = v57;
  v43 = v58;
  if (v41)
  {
    v45 = [v41 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = type metadata accessor for UUID();
  v48 = *(v47 - 8);
  v49 = 1;
  (*(v48 + 56))(v43, v46, 1, v47);
  v50 = *(&v55->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) - 1;
  if (v50 <= 3)
  {
    v49 = qword_10080DB58[v50];
  }

  sub_10000FF90(v43, v44, &unk_100976120, &qword_1007F9260);
  if ((*(v48 + 48))(v44, 1, v47) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v48 + 8))(v44, v47);
  }

  if (v40)
  {
    v52 = 0;
  }

  else
  {
    v52 = v39;
  }

  [v56 updateDeviceInfoWithDeviceType:v52 batteryLevel:(v60 & 1) == 0 batteryLevelKnown:v49 edge:0 orientation:v42 & 1 isCharging:isa identifier:v24];
  swift_unknownObjectRelease();

  return sub_100005508(v43, &unk_100976120, &qword_1007F9260);
}

void sub_1005F2E9C(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] != (a1 & 1))
  {
    v3 = v1;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009865B0);
    v5 = v1;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3[v2];

      _os_log_impl(&_mh_execute_header, oslog, v6, "sbHasStarted = %{BOOL}d", v7, 8u);

      v8 = oslog;
    }

    else
    {

      v8 = v5;
    }
  }
}

uint64_t sub_1005F2FF4()
{
  if (SBSSpringBoardBlockableServerPort())
  {
    IsAlive = SBGetIsAlive();
    v10 = IsAlive;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = v10;
      *(v13 + 8) = 256;
      swift_beginAccess();
      *(v13 + 10) = 0;
      v5 = "getSBIsAlive() - SBGetIsAlive result: %d, outIsAlive: %hhu";
      v6 = v12;
      v7 = v2;
      v8 = v13;
      v9 = 11;
      goto LABEL_11;
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10000C4AC(v1, qword_1009865B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "sbPort = 0";
      v6 = v3;
      v7 = v2;
      v8 = v4;
      v9 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, v6, v5, v8, v9);
    }
  }

  return 0;
}

uint64_t sub_1005F3200()
{
  v1 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  v6 = (*(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_b332BTAddr);
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    v12 = 0;
    v13 = 0xE000000000000000;
    v11[0] = v8;
    v11[1] = v7;
    (*(v2 + 104))(v4, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v1);
    sub_100294008(v8, v7);
    sub_100423B84();
    DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
    (*(v2 + 8))(v4, v1);
    v9._countAndFlagsBits = v12;
    v10 = v13;
    v12 = 0x206D6F646E6152;
    v13 = 0xE700000000000000;
    v9._object = v10;
    String.append(_:)(v9);

    sub_10028BCC0(v8, v7);
    return v12;
  }

  return result;
}

void sub_1005F339C()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_1009865B0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    if (*(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8))
    {
      v7 = 0x8000000100799A00;
      v8 = 0xD000000000000020;
    }

    else
    {
      v8 = Double.description.getter();
      v7 = v9;
    }

    v10 = sub_10000C4E4(v8, v7, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Update b332 status: %s", v5, 0xCu);
    sub_10000C60C(v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_1005F2838(Strong, 1);
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_1005F2838(v13, 1);
  }
}

id sub_1005F35B0()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SDB332SetupAgent(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_1005F37A8()
{
  v1 = v0;
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v29 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q;
  v7 = sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v28[1] = "Optional<Double>.none";
  v28[2] = v7;
  static DispatchQoS.unspecified.getter();
  v32 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100973C60, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10028088C(&unk_10097A630, &unk_1007F5680);
  sub_100011630(&qword_100973C70, &unk_10097A630, &unk_1007F5680, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  *&v0[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver] = 0;
  *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  *&v1[v8] = [objc_allocWithZone(CUSystemMonitor) init];
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] = 0;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_peripheralsIConnectedTo] = &_swiftEmptyDictionarySingleton;
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastB332WeWantedToPair;
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor;
  *&v1[v11] = [objc_allocWithZone(CUPowerSourceMonitor) init];
  v12 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAccessoryDetachTimestamp;
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 56))(&v1[v12], 1, 1, v13);
  v14 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_lastAttachedAccessorySerialNum];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel];
  *v15 = 0;
  v15[8] = 1;
  v16 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  type metadata accessor for SDB332SetupAgentSessionState(0);
  v17 = swift_allocObject();
  sub_1005F2434();
  *&v1[v16] = v17;
  v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = 0;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionMaxAttempts] = 10;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitDelay] = 0x3FE8000000000000;
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex] = 0;
  v18 = [objc_allocWithZone(CBCentralManager) init];
  *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v18;
  v19 = type metadata accessor for SDB332SetupAgent(0);
  v31.receiver = v1;
  v31.super_class = v19;
  v20 = objc_msgSendSuper2(&v31, "init");
  v21 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor;
  v22 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor];
  v23 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q;
  v24 = *&v20[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v25 = v20;
  [v22 setDispatchQueue:v24];
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  [*&v25[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor] setDispatchQueue:*&v20[v23]];
  [*&v25[v26] setMeDeviceUseFindMyLocate:1];
  [*&v20[v21] setChangeFlags:0xFFFFFFFFLL];

  return v25;
}

id sub_1005F3CCC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10000C4E4(a1, a2, &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "Received Darwin notification: %s", v9, 0xCu);
    sub_10000C60C(v10);
  }

  return [v3 showEducationUIIfNecessary];
}

void sub_1005F3E3C()
{
  v128 = type metadata accessor for DispatchWorkItemFlags();
  isa = v128[-1].isa;
  __chkstk_darwin(v128);
  v3 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MobileGestalt_get_current_device();
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  deviceSupportsApplePencil = MobileGestalt_get_deviceSupportsApplePencil();

  if (deviceSupportsApplePencil)
  {
    if ([objc_opt_self() b332PairingEnabled])
    {
      v125 = v5;
      v126 = v4;
      v127 = isa;
      v124 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
      [v0 setDispatchQueue:?];
      v11 = [objc_opt_self() standardUserDefaults];
      sub_1005619B4();

      v12 = CFNotificationCenterGetDarwinNotifyCenter();
      v13 = String._bridgeToObjectiveC()();
      CFNotificationCenterAddObserver(v12, v0, sub_1005F536C, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      if (IsAppleInternalBuild())
      {
        v14 = objc_opt_self();
        v15 = [v14 defaultCenter];
        v16 = String._bridgeToObjectiveC()();
        v17 = swift_allocObject();
        *(v17 + 16) = v0;
        v135 = sub_100625414;
        v136 = v17;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB098;
        v18 = _Block_copy(&aBlock);
        v123 = v0;
        v19 = v0;

        v20 = [v15 addObserverForName:v16 object:0 queue:0 usingBlock:v18];
        _Block_release(v18);
        swift_unknownObjectRelease();

        v21 = [v14 defaultCenter];
        v22 = String._bridgeToObjectiveC()();
        v23 = swift_allocObject();
        *(v23 + 16) = v19;
        v135 = sub_100625454;
        v136 = v23;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB0E8;
        v24 = _Block_copy(&aBlock);
        v25 = v19;

        v26 = [v21 addObserverForName:v22 object:0 queue:0 usingBlock:v24];
        _Block_release(v24);
        swift_unknownObjectRelease();

        v27 = [v14 defaultCenter];
        v28 = String._bridgeToObjectiveC()();
        v29 = swift_allocObject();
        *(v29 + 16) = v25;
        v135 = sub_100625494;
        v136 = v29;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB138;
        v30 = _Block_copy(&aBlock);
        v31 = v25;

        v32 = [v27 addObserverForName:v28 object:0 queue:0 usingBlock:v30];
        _Block_release(v30);
        swift_unknownObjectRelease();

        v33 = [v14 defaultCenter];
        v34 = String._bridgeToObjectiveC()();
        v35 = swift_allocObject();
        *(v35 + 16) = v31;
        v135 = sub_1006254D4;
        v136 = v35;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB188;
        v36 = _Block_copy(&aBlock);
        v37 = v31;

        v38 = [v33 addObserverForName:v34 object:0 queue:0 usingBlock:v36];
        _Block_release(v36);
        swift_unknownObjectRelease();

        v39 = [v14 defaultCenter];
        v40 = String._bridgeToObjectiveC()();
        v41 = swift_allocObject();
        *(v41 + 16) = v37;
        v135 = sub_10062550C;
        v136 = v41;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB1D8;
        v42 = _Block_copy(&aBlock);
        v43 = v37;

        v44 = [v39 addObserverForName:v40 object:0 queue:0 usingBlock:v42];
        _Block_release(v42);
        swift_unknownObjectRelease();

        v45 = [v14 defaultCenter];
        v46 = String._bridgeToObjectiveC()();
        v47 = swift_allocObject();
        *(v47 + 16) = v43;
        v135 = sub_100625544;
        v136 = v47;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB228;
        v48 = _Block_copy(&aBlock);
        v49 = v43;

        v50 = [v45 addObserverForName:v46 object:0 queue:0 usingBlock:v48];
        _Block_release(v48);
        swift_unknownObjectRelease();

        v51 = [v14 defaultCenter];
        v52 = String._bridgeToObjectiveC()();
        v53 = swift_allocObject();
        *(v53 + 16) = v49;
        v135 = sub_10062557C;
        v136 = v53;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB278;
        v54 = _Block_copy(&aBlock);
        v55 = v49;

        v56 = [v51 addObserverForName:v52 object:0 queue:0 usingBlock:v54];
        _Block_release(v54);
        swift_unknownObjectRelease();

        v57 = [v14 defaultCenter];
        v58 = String._bridgeToObjectiveC()();
        v59 = swift_allocObject();
        *(v59 + 16) = v55;
        v135 = sub_1006255B4;
        v136 = v59;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB2C8;
        v60 = _Block_copy(&aBlock);
        v61 = v55;

        v62 = [v57 addObserverForName:v58 object:0 queue:0 usingBlock:v60];
        _Block_release(v60);
        swift_unknownObjectRelease();

        v63 = [v14 defaultCenter];
        v64 = String._bridgeToObjectiveC()();
        v65 = swift_allocObject();
        *(v65 + 16) = v61;
        v135 = sub_1006255EC;
        v136 = v65;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB318;
        v66 = _Block_copy(&aBlock);
        v67 = v61;

        v68 = [v63 addObserverForName:v64 object:0 queue:0 usingBlock:v66];
        _Block_release(v66);
        swift_unknownObjectRelease();

        v69 = [v14 defaultCenter];
        v70 = String._bridgeToObjectiveC()();
        v71 = swift_allocObject();
        *(v71 + 16) = v67;
        v135 = sub_100625624;
        v136 = v71;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB368;
        v72 = _Block_copy(&aBlock);
        v73 = v67;

        v74 = [v69 addObserverForName:v70 object:0 queue:0 usingBlock:v72];
        _Block_release(v72);
        swift_unknownObjectRelease();

        v75 = [v14 defaultCenter];
        v76 = String._bridgeToObjectiveC()();
        v77 = swift_allocObject();
        *(v77 + 16) = v73;
        v135 = sub_100625664;
        v136 = v77;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB3B8;
        v78 = _Block_copy(&aBlock);
        v79 = v73;

        v80 = [v75 addObserverForName:v76 object:0 queue:0 usingBlock:v78];
        _Block_release(v78);
        swift_unknownObjectRelease();

        v81 = [v14 defaultCenter];
        v82 = String._bridgeToObjectiveC()();
        v83 = swift_allocObject();
        *(v83 + 16) = v79;
        v135 = sub_10062569C;
        v136 = v83;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB408;
        v84 = _Block_copy(&aBlock);
        v85 = v79;

        v86 = [v81 addObserverForName:v82 object:0 queue:0 usingBlock:v84];
        _Block_release(v84);
        swift_unknownObjectRelease();

        v87 = [v14 defaultCenter];
        v88 = String._bridgeToObjectiveC()();
        v89 = swift_allocObject();
        *(v89 + 16) = v85;
        v135 = sub_1006256D4;
        v136 = v89;
        aBlock = _NSConcreteStackBlock;
        v132 = 1107296256;
        v133 = sub_1002E679C;
        v134 = &unk_1008EB458;
        v90 = _Block_copy(&aBlock);
        v91 = v85;

        v92 = [v87 addObserverForName:v88 object:0 queue:0 usingBlock:v90];
        v93 = v90;
        v0 = v123;
        _Block_release(v93);
        swift_unknownObjectRelease();
      }

      v94 = [objc_opt_self() defaultCenter];
      v95 = swift_allocObject();
      *(v95 + 16) = v0;
      v135 = sub_1006256DC;
      v136 = v95;
      aBlock = _NSConcreteStackBlock;
      v132 = 1107296256;
      v133 = sub_1002E679C;
      v134 = &unk_1008EB4A8;
      v96 = _Block_copy(&aBlock);
      v97 = v0;
      v98 = @"com.apple.sharingd.SystemUIChanged";

      v99 = [v94 addObserverForName:v98 object:0 queue:0 usingBlock:v96];
      _Block_release(v96);
      swift_unknownObjectRelease();

      v100 = swift_allocObject();
      *(v100 + 16) = v97;
      v135 = sub_10062571C;
      v136 = v100;
      aBlock = _NSConcreteStackBlock;
      v132 = 1107296256;
      v133 = sub_100011678;
      v134 = &unk_1008EB4F8;
      v101 = _Block_copy(&aBlock);
      v102 = v97;
      static DispatchQoS.unspecified.getter();
      v130 = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      v103 = v128;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v101);
      (*(v127 + 1))(v3, v103);
      (*(v125 + 8))(v7, v126);

      v104 = type metadata accessor for SDB332SetupAgent(0);
      v129.receiver = v102;
      v129.super_class = v104;
      objc_msgSendSuper2(&v129, "_activate");
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_10000C4AC(v105, qword_1009865B0);
      v106 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        *v108 = 0;
        _os_log_impl(&_mh_execute_header, v106, v107, "Activated", v108, 2u);
      }

      return;
    }

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    sub_10000C4AC(v118, qword_1009865B0);
    v128 = Logger.logObject.getter();
    v119 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v128, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v128, v119, "b332PairingEnabled = false. Don't activate.", v120, 2u);
    }
  }

  else
  {
    v109 = SFDeviceModelCodeGet();
    sub_100625350(v109);
    v110 = String.init(cString:)();
    v112 = v111;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_10000C4AC(v113, qword_1009865B0);

    v128 = Logger.logObject.getter();
    v114 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v128, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock = v116;
      *v115 = 136315138;
      v117 = sub_10000C4E4(v110, v112, &aBlock);

      *(v115 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v128, v114, "Device model code (%s) does not support Apple Pencil. Don't activate.", v115, 0xCu);
      sub_10000C60C(v116);

      return;
    }
  }

  v121 = v128;
}

void sub_1005F536C(uint64_t a1, void *a2, void *a3)
{
  if (a2 && a3)
  {
    v4 = a2;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    v8 = a3;
    sub_1005F3CCC(v5, v7);
  }
}

uint64_t sub_1005F53F4(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Erasing B332 setup defaults", v5, 2u);
  }

  sub_1005FE0C0();
  v6 = [objc_opt_self() standardUserDefaults];
  sub_100561714();

  type metadata accessor for SDB332SetupAgentSessionState(0);
  v7 = swift_allocObject();
  sub_1005F2434();
  *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) = v7;
}

uint64_t sub_1005F5540(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v12 = *(v20 - 8);
  __chkstk_darwin(v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

void sub_1005F5804(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sharingCallBluetoothAddressChangedHandler", v5, 2u);
  }

  v6 = [*(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressChangedHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();

    _Block_release(v7);
  }
}

void sub_1005F5938(uint64_t a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sendsUIUpdates = false, sharingDisableB332UIUpdates", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates;
  v8 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
  *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;
  if (v8 == 1)
  {

    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v6 + v7);
      _os_log_impl(&_mh_execute_header, oslog, v9, "sendsUIUpdates = %{BOOL}d", v10, 8u);
    }
  }
}

uint64_t sub_1005F5B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[4] = a3;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = a4;
  v12 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v15);
}

void sub_1005F5E18(const char *a1, void (*a2)(void))
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  a2();
}

void sub_1005F5F5C(const char *a1, char a2, uint64_t a3)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
  }

  v10 = objc_opt_self();
  v11 = [v10 standardUserDefaults];
  sub_1005610DC(a2 & 1);

  v12 = [v10 standardUserDefaults];
  sub_100560F98(a3);
}

id sub_1005F60BC(void *a1)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "sharing.simulateB332TapToPair", v5, 2u);
  }

  return [a1 pairTapped];
}

void sub_1005F61D4(const char *a1, char a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
  }

  v8 = [objc_opt_self() standardUserDefaults];
  sub_100561220(a2 & 1);
}

uint64_t sub_1005F6308(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v19 = *(v7 - 8);
  v20 = v7;
  __chkstk_darwin(v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Notification();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v18[1] = *&a2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
  (*(v11 + 16))(v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  (*(v11 + 32))(v14 + v13, v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  aBlock[4] = sub_100625950;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EB930;
  v15 = _Block_copy(aBlock);
  v16 = a2;
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v21 + 8))(v6, v4);
  (*(v19 + 8))(v9, v20);
}

void sub_1005F66A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_10000C4AC(v11, qword_1009865B0);
  (*(v8 + 16))(v10, a1, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v52[1] = a1;
    v52[2] = v12;
    v53 = v1;
    v54 = v6;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v57[0] = v16;
    *v15 = 136315138;
    if (Notification.userInfo.getter())
    {
      v17 = Dictionary.description.getter();
      v19 = v18;
    }

    else
    {
      v19 = 0x8000000100799D00;
      v17 = 0xD00000000000002BLL;
    }

    (*(v8 + 8))(v10, v7);
    v20 = sub_10000C4E4(v17, v19, v57);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "showPencilUI. Info: %s", v15, 0xCu);
    sub_10000C60C(v16);

    v2 = v53;
    v6 = v54;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v21 = Notification.userInfo.getter();
  if (!v21)
  {
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_28;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "showPencilUI called without userInfo";
    goto LABEL_26;
  }

  v22 = v21;
  v55 = 0x657079546975;
  v56 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v23 = sub_100570754(v57), (v24 & 1) == 0))
  {

    sub_100285E74(v57);
LABEL_22:
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_28;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "showPencilUI called without UI type";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);
LABEL_27:

    goto LABEL_28;
  }

  sub_10000C5B0(*(v22 + 56) + 32 * v23, v58);
  sub_100285E74(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v26 = v55;
  v25 = v56;
  v55 = 0x79546C69636E6570;
  v56 = 0xEA00000000006570;
  AnyHashable.init<A>(_:)();
  if (!*(v22 + 16) || (v27 = sub_100570754(v57), (v28 & 1) == 0))
  {

    sub_100285E74(v57);
LABEL_31:
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_28;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "showPencilUI called without valid Pencil type";
    goto LABEL_26;
  }

  sub_10000C5B0(*(v22 + 56) + 32 * v27, v58);
  sub_100285E74(v57);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  v29 = v55;
  if (v26 == 0x6961507473726966 && v25 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    type metadata accessor for MainActor();
    v31 = v2;
    v32 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v31;
    v33[5] = v29;
    v33[6] = v22;
    v34 = &unk_10080DB38;
LABEL_20:
    sub_1002B3098(0, 0, v6, v34, v33);

    return;
  }

  if (v26 == 1819044208 && v25 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v6, 1, 1, v39);
    type metadata accessor for MainActor();
    v40 = v2;
    v41 = static MainActor.shared.getter();
    v33 = swift_allocObject();
    v33[2] = v41;
    v33[3] = &protocol witness table for MainActor;
    v33[4] = v40;
    v33[5] = v29;
    v33[6] = v22;
    v34 = &unk_10080DB28;
    goto LABEL_20;
  }

  if ((v26 != 0x6574746142776F6CLL || v25 != 0xEE006C6C69507972) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    v35 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v35, v48))
    {

      goto LABEL_28;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v57[0] = v50;
    *v49 = 136315138;
    v51 = sub_10000C4E4(v26, v25, v57);

    *(v49 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v35, v48, "showPencilUI called with unrecognized UI type: %s", v49, 0xCu);
    sub_10000C60C(v50);

    goto LABEL_27;
  }

  v55 = 0x656772616863;
  v56 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v22 + 16) && (v42 = sub_100570754(v57), (v43 & 1) != 0))
  {
    sub_10000C5B0(*(v22 + 56) + 32 * v42, v58);
    sub_100285E74(v57);

    if (swift_dynamicCast())
    {
      v44 = v55;
      v45 = type metadata accessor for TaskPriority();
      (*(*(v45 - 8) + 56))(v6, 1, 1, v45);
      type metadata accessor for MainActor();
      v46 = v2;
      v47 = static MainActor.shared.getter();
      v33 = swift_allocObject();
      v33[2] = v47;
      v33[3] = &protocol witness table for MainActor;
      v33[4] = v46;
      v33[5] = v29;
      v33[6] = v44;
      v34 = &unk_10080DB18;
      goto LABEL_20;
    }
  }

  else
  {

    sub_100285E74(v57);
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "showPencilUI called for low-battery pill without valid charge";
    goto LABEL_26;
  }

LABEL_28:
}

void sub_1005F7090()
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v1 - 8);
  v3 = &v201 - v2;
  v4 = type metadata accessor for UUID();
  v221 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v219 = *(v7 - 8);
  v220 = v7;
  __chkstk_darwin(v7);
  v9 = &v201 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v218 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v14 = __chkstk_darwin(v13);
  v16 = &v201 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v19 = &v201 - v18;
  v20 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
  if (*(v20 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8))
  {
    return;
  }

  v21 = *(v20 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
  v22 = v21 > 4;
  v23 = (1 << v21) & 0x1A;
  if (v22 || v23 == 0)
  {
    return;
  }

  v214 = v4;
  v215 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v213 = v3;
  v216 = v0;
  v25 = *(v20 + 16);
  aBlock = 0xD000000000000057;
  v223 = 0x80000001007995E0;
  v211 = v17;
  v212 = 0x80000001007995E0;
  *v228 = 924;

  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27 = String.hashValue.getter();

  swift_beginAccess();
  v217 = v25;
  v28 = v216;
  v29 = sub_10046E4E8(v228, v27);
  swift_endAccess();
  if (v29)
  {
    sub_100603404(v28);
  }

  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (v28[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted])
  {
    v31 = 1;
    v32 = 1;
  }

  else
  {
    v32 = sub_1005F2FF4();
    v31 = v28[v30];
  }

  v28[v30] = v32 & 1;
  sub_1005F2E9C(v31);
  if (v28[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] == 1)
  {
    v33 = *&v28[v215];
    if (*(v33 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
    {
LABEL_13:

      return;
    }

    v209 = v9;
    v210 = v10;
    v38 = v33 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
    v39 = *v38;
    v40 = *(v38 + 8);
    v41 = 0;
    sub_1006037AC();
    LODWORD(v207) = v40;
    v208 = v39;
    sub_1005FF444();
    sub_10060108C();
    sub_100601364();
    sub_100601674();
    aBlock = 0xD000000000000057;
    v223 = v212;
    *v228 = 956;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43 = String.hashValue.getter();

    swift_beginAccess();
    v44 = sub_10046E4E8(v228, v43);
    swift_endAccess();
    if (v44)
    {
      sub_1006039F0(v28);
    }

    sub_100603BF4();
    v50 = *&v28[v215];
    v51 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty;
    v52 = *(v50 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
    if (v52 == 2)
    {
      v53 = *&v28[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];

      v54 = [v53 sharedPairingAgent];
      if (!v54)
      {
LABEL_213:
        __break(1u);
        goto LABEL_214;
      }

      v55 = v54;
      v206 = sub_1005FEA1C();

      if (v206 >> 62)
      {
        v56 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v56 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v57 = v56 == 0;
      v52 = *(v50 + v51);
    }

    else
    {

      v57 = v52;
    }

    *(v50 + v51) = v57;
    sub_1005F1B24(v52);

    v58 = *(*&v28[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

    if (sub_1005607A0())
    {
      v51 = String._bridgeToObjectiveC()();
      v59 = [v58 BOOLForKey:v51];

      if ((v59 & 1) == 0)
      {
        sub_100603E50();
        sub_1006040C8();
        sub_100601B14();
        v60 = v207;
        v61 = v208;
        if (v208 == 3)
        {
          LOBYTE(v51) = v207;
        }

        else
        {
          LOBYTE(v51) = 1;
        }

        if ((v51 & 1) == 0)
        {
          sub_10060464C(0);
        }

        sub_10060194C();
        sub_1006020A8();
        if ((v60 & 1) == 0 && (v61 == 4 || v61 == 1))
        {
          v62 = *&v28[v215];
          if (*(v62 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairPrompt) == 1)
          {
            v63 = v216;
            sub_1005FDBD8(0);
            v62 = *&v63[v215];
          }

          v64 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
          if ((*(v62 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
          {
            v65 = v216;
            sub_1006023A0(1, v208);
            v62 = *&v65[v215];
            v64 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
          }

          *(v62 + v64) = 1;
        }

        sub_10060491C();
        sub_100604B60();
        v204 = sub_1006050AC();
        v205 = v66;
        v206 = v67;
        v207 = v68;
        aBlock = 0xD000000000000057;
        v223 = v212;
        *v228 = 1013;
        v112._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v112);

        v113 = String.hashValue.getter();

        swift_beginAccess();
        v114 = sub_10046E4E8(v228, v113);
        swift_endAccess();
        if (v114)
        {
          sub_100605330(v204, v205, v206, v207);
        }

        v108 = v204;
        v115 = v205;
        sub_100294008(v204, v205);
        v116 = v207;
        sub_100294008(v206, v207);
        sub_100026AC0(v108, v115);
        v117 = v116 >> 62;
        if ((v116 >> 62) <= 1)
        {
          if (!v117)
          {
            v118 = BYTE6(v207);
            sub_100026AC0(v206, v207);
            v119 = v118;
            goto LABEL_126;
          }

LABEL_124:
          v136 = v206;
          v137 = HIDWORD(v206);
          sub_100026AC0(v206, v207);
          LODWORD(v119) = v137 - v136;
          if (!__OFSUB__(v137, v136))
          {
            v119 = v119;
            goto LABEL_126;
          }

          goto LABEL_212;
        }

        if (v117 != 2)
        {
          sub_100026AC0(v206, v207);
          goto LABEL_129;
        }

        v123 = *(v206 + 16);
        v107 = *(v206 + 24);
        sub_100026AC0(v206, v207);
        v119 = v107 - v123;
        if (!__OFSUB__(v107, v123))
        {
LABEL_126:
          if (v119 == 16)
          {
            v138 = 1;
            sub_100604368(1, 1016, 0x29286E7572, 0xE500000000000000);
            goto LABEL_130;
          }

LABEL_129:
          v138 = 0;
LABEL_130:
          [v216 startScanning];
          sub_1006054DC();
          v140 = v139;
          if ((v51 & 1) == 0)
          {
            [v216 startBatteryScannerForPeripheral:v139];
          }

          sub_100605AEC();
          v208 = 0;
          if (v138)
          {
            v141 = v208;
            sub_100604368(1, 1029, 0x29286E7572, 0xE500000000000000);
            v208 = v141;
          }

          v142 = *&v216[v215];
          v143 = *(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
          if (v143 != 2)
          {
            if (v143)
            {
              if ((v51 & 1) == 0)
              {
LABEL_137:
                v144 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
                if ((*(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
                {
                  if (*(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8))
                  {
                    v145 = 0;
                  }

                  else
                  {
                    v145 = *(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
                  }

                  v146 = v216;
                  sub_1006023A0(1, v145);
                  v142 = *&v146[v215];
                  v144 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
                }

                *(v142 + v144) = 1;
                sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
                v203 = static OS_dispatch_queue.main.getter();
                static DispatchTime.now()();
                + infix(_:_:)();
                v211 = *(v211 + 8);
                (v211)(v16, v13);
                v147 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v226 = sub_1006248E8;
                v227 = v147;
                aBlock = _NSConcreteStackBlock;
                v223 = 1107296256;
                v224 = sub_100011678;
                v225 = &unk_1008EA6E8;
                v202 = _Block_copy(&aBlock);

                static DispatchQoS.unspecified.getter();
                aBlock = _swiftEmptyArrayStorage;
                sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
                sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
                v148 = v209;
                v149 = v220;
                dispatch thunk of SetAlgebra.init<A>(_:)();
                v150 = v202;
                v151 = v203;
                OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                _Block_release(v150);

                (*(v219 + 8))(v148, v149);
                (*(v218 + 8))(v12, v210);
                (v211)(v19, v13);
                v142 = *&v216[v215];
              }

LABEL_143:
              v152 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
              if (*(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
              {
                v153 = 1;
              }

              else
              {
                v154 = v216;
                sub_100602704();
                v142 = *&v154[v215];
                v152 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                v153 = *(v142 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
              }

              *(v142 + v152) = 1;

              sub_1005F16D0(v153, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

              sub_100026AC0(v204, v205);
              v155 = v206;
              v156 = v207;
LABEL_193:
              sub_100026AC0(v155, v156);
              v192 = v216;

              sub_1005F1F48();

              [v192 stopBatteryScanner];
              [v192 stopScanning];
              sub_100602B9C();
              v41 = v208;
              sub_100603198();
              if (!v41)
              {
                aBlock = 0xD000000000000057;
                v223 = v212;
                *v228 = 1181;
                v193._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v193);

                v194 = String.hashValue.getter();

                swift_beginAccess();
                v195 = sub_10046E4E8(v228, v194);
                swift_endAccess();
                if (v195)
                {
                  sub_10061F624(&static os_log_type_t.default.getter, "All cleanup completely done.");
                }

                goto LABEL_13;
              }

              goto LABEL_22;
            }

            sub_1006065A0();
            v41 = v208;
            sub_100606900();
            if (!v41)
            {
              sub_100607E54();
              v208 = 0;
              v142 = *&v216[v215];
              if ((v51 & 1) == 0)
              {
                goto LABEL_137;
              }

              goto LABEL_143;
            }

            sub_100026AC0(v204, v205);
            sub_100026AC0(v206, v207);
LABEL_22:
            aBlock = v41;
            swift_errorRetain();
            sub_10028088C(&unk_10097A930, &unk_1007F9050);
            if (swift_dynamicCast() && v228[0] == 3)
            {
              if (qword_100973B58 != -1)
              {
                swift_once();
              }

              v45 = type metadata accessor for Logger();
              sub_10000C4AC(v45, qword_1009865B0);
              v46 = Logger.logObject.getter();
              v47 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v46, v47))
              {
                v48 = swift_slowAlloc();
                *v48 = 0;
                _os_log_impl(&_mh_execute_header, v46, v47, "run() failed", v48, 2u);
              }

              v49 = v213;
              (*(v221 + 56))(v213, 1, 1, v214);
              sub_1005FCB7C(v49, 0);

              sub_100005508(v49, &unk_100976120, &qword_1007F9260);
            }

            else
            {
            }

            return;
          }

LABEL_218:
          __break(1u);
          return;
        }

        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
    }

    v69 = *(*&v28[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_pairedPencilsIsEmpty);
    if (v69 == 2)
    {
      goto LABEL_211;
    }

    if (v69)
    {
      aBlock = 0xD000000000000057;
      v223 = v212;
      *v228 = 1063;
      v70._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v70);

      v71 = String.hashValue.getter();

      swift_beginAccess();
      v72 = sub_10046E4E8(v228, v71);
      swift_endAccess();
      if (v72)
      {
        sub_10061F624(&static os_log_type_t.default.getter, "pairedPencilsIsEmpty path");
      }

      sub_100603E50();
      sub_1006040C8();
      sub_10060491C();
      v73 = *&v28[v215];
      v74 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
      if ((*(v73 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted) & 1) == 0)
      {
        sub_10060464C(1);
        v73 = *&v28[v215];
        v74 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_showedPairingStarted;
      }

      *(v73 + v74) = 1;
      sub_100604B60();
      v19 = sub_1006050AC();
      v16 = v75;
      v77 = v76;
      v13 = v78;
      sub_100294008(v19, v75);
      sub_100294008(v77, v13);
      sub_100026AC0(v19, v16);
      v79 = v13 >> 62;
      if ((v13 >> 62) <= 1)
      {
        if (!v79)
        {
          sub_100026AC0(v77, v13);
          v80 = BYTE6(v13);
          goto LABEL_98;
        }

        sub_100026AC0(v77, v13);
        LODWORD(v80) = HIDWORD(v77) - v77;
        if (!__OFSUB__(HIDWORD(v77), v77))
        {
          v80 = v80;
          goto LABEL_98;
        }

        __break(1u);
LABEL_211:
        __break(1u);
LABEL_212:
        __break(1u);
        goto LABEL_213;
      }

      if (v79 != 2)
      {
        sub_100026AC0(v77, v13);
        goto LABEL_101;
      }

      v104 = *(v77 + 16);
      v103 = *(v77 + 24);
      sub_100026AC0(v77, v13);
      v80 = v103 - v104;
      if (!__OFSUB__(v103, v104))
      {
LABEL_98:
        if (v80 == 16)
        {
          sub_100604368(0, 1074, 0x29286E7572, 0xE500000000000000);
        }

LABEL_101:
        [v216 startScanning];
        sub_1006054DC();
        v121 = v120;
        [v216 startBatteryScannerForPeripheral:v120];
        sub_100605AEC();
        sub_100294008(v19, v16);
        sub_100294008(v77, v13);
        sub_100026AC0(v19, v16);
        if (v79 > 1)
        {
          if (v79 != 2)
          {
            sub_100026AC0(v77, v13);
LABEL_150:
            sub_1006065A0();
            sub_100606900();
            sub_100607E54();
            sub_10060847C();
            v208 = 0;
            v157 = *&v216[v215];
            v158 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
            if (*(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
            {
              v159 = 1;
            }

            else
            {
              v160 = v216;
              sub_10060464C(0);
              sub_1006086B4();
              v157 = *&v160[v215];
              v158 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
              v159 = *(v157 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
            }

            *(v157 + v158) = 1;

            sub_1005F16D0(v159, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

            sub_100026AC0(v19, v16);
            v155 = v77;
LABEL_192:
            v156 = v13;
            goto LABEL_193;
          }

          v135 = *(v77 + 16);
          v134 = *(v77 + 24);
          sub_100026AC0(v77, v13);
          v122 = v134 - v135;
          if (__OFSUB__(v134, v135))
          {
            __break(1u);
            goto LABEL_124;
          }
        }

        else if (v79)
        {
          sub_100026AC0(v77, v13);
          LODWORD(v122) = HIDWORD(v77) - v77;
          if (__OFSUB__(HIDWORD(v77), v77))
          {
LABEL_214:
            __break(1u);
            goto LABEL_215;
          }

          v122 = v122;
        }

        else
        {
          sub_100026AC0(v77, v13);
          v122 = BYTE6(v13);
        }

        if (v122 == 16)
        {
          sub_100604368(0, 1079, 0x29286E7572, 0xE500000000000000);
        }

        goto LABEL_150;
      }

      __break(1u);
      goto LABEL_85;
    }

    aBlock = 0xD000000000000057;
    v223 = v212;
    *v228 = 1091;
    v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v81);

    v82 = String.hashValue.getter();

    swift_beginAccess();
    v83 = sub_10046E4E8(v228, v82);
    swift_endAccess();
    if (v83)
    {
      sub_10061F624(&static os_log_type_t.default.getter, "have a paired Pencil path");
    }

    sub_10060491C();
    v84 = v215;
    if (*(*&v28[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) != 1)
    {
      goto LABEL_165;
    }

    v85 = [*&v28[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
    if (!v85)
    {
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }

    v86 = v85;
    v13 = sub_1005FEA1C();

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_71;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_71:
      v208 = 0;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_208:
          sub_10060847C();
          v208 = 0;
          aBlock = 0xD000000000000057;
          v223 = v212;
          *v228 = 1159;
          v198._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v198);

          v199 = String.hashValue.getter();

          swift_beginAccess();
          v200 = sub_10046E4E8(v228, v199);
          swift_endAccess();
          if (v200)
          {
            sub_100609A10();
          }

          goto LABEL_186;
        }

        v87 = *(v13 + 32);
      }

      v88 = v87;

      v89 = [v88 identifier];

      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = UUID.uuidString.getter();
      v92 = v91;
      (*(v221 + 8))(v6, v214);
      v93 = objc_opt_self();
      v94 = [v93 standardUserDefaults];
      v95 = String._bridgeToObjectiveC()();
      v96 = [v94 stringForKey:v95];

      if (!v96)
      {
        goto LABEL_115;
      }

      v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99 = v98;
      v100 = [v93 standardUserDefaults];
      v101 = [v100 stringForKey:v96];

      if (!v101)
      {

        goto LABEL_115;
      }

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v102;

      if (v97 == v90 && v99 == v92)
      {

        goto LABEL_86;
      }

LABEL_85:
      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v105)
      {
LABEL_86:
        if (qword_100973B58 != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        sub_10000C4AC(v106, qword_1009865B0);

        v16 = v216;
        v107 = Logger.logObject.getter();
        LOBYTE(v108) = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v107, v108))
        {
LABEL_110:

          if (v16[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8] != 1)
          {
            v125 = (*&v216[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
            v126 = v125[1];
            if (v126)
            {
              if (v41 == *v125 && v126 == v13)
              {
              }

              else
              {
                v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v41 = v208;
                v84 = v215;
                v28 = v216;
                if ((v127 & 1) == 0)
                {
                  goto LABEL_165;
                }
              }

              sub_10060464C(0);
              sub_1006086B4();
              v128 = Logger.logObject.getter();
              v129 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v128, v129))
              {
                v130 = swift_slowAlloc();
                *v130 = 0;
                _os_log_impl(&_mh_execute_header, v128, v129, "sendsUIUpdates = false, because we already showed battery status for short-hash path", v130, 2u);
              }

              v131 = v215;
              v28 = v216;
              v132 = *&v216[v215];
              v133 = *(v132 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates);
              *(v132 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) = 0;

              sub_1005F16D0(v133, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates, "sendsUIUpdates = %{BOOL}d");

              v84 = v131;
              v41 = v208;
LABEL_165:
              v161 = *&v28[v84];
              v162 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332;
              if (*(v161 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332) == 1)
              {
                v163 = v84;
                sub_10060464C(1);
                v161 = *&v28[v163];
                v162 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needsHiddenChargeStatusForReplacementB332;
              }

              *(v161 + v162) = 0;
              sub_100604B60();
              v164 = sub_1006050AC();
              if (v41)
              {
                goto LABEL_22;
              }

              v82 = v166;
              v13 = v167;
              v168 = v28;
              v28 = v164;
              v19 = v165;
              [v168 startScanning];
              sub_1006054DC();
              v170 = *(*&v216[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_isPaired);
              if (v170 == 2)
              {
                goto LABEL_217;
              }

              v6 = v169;
              if (v170)
              {
                aBlock = 0xD000000000000057;
                v223 = v212;
                *v228 = 1125;
                v171._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v171);

                v172 = String.hashValue.getter();

                swift_beginAccess();
                v173 = sub_10046E4E8(v228, v172);
                swift_endAccess();
                if (v173)
                {
                  sub_10061F624(&static os_log_type_t.default.getter, "isPaired block");
                }

                sub_10060464C(0);
                sub_100605AEC();
                v208 = 0;
                if ((*(*&v216[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) & 1) == 0)
                {
                  v186 = v208;
                  sub_10060847C();
                  v208 = v186;
                  v187 = v216;
                  sub_1006086B4();
                  *(*&v187[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) = 1;
                }

LABEL_186:
                v188 = *&v216[v215];
                v189 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                if (*(v188 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
                {
                  v190 = 1;
                }

                else
                {
                  *(v188 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_hideBattery) = 0;
                  v191 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess;
                  if ((*(v188 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess) & 1) == 0)
                  {
                    sub_1006086B4();
                    v191 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didShowSuccess;
                  }

                  v188 = *&v216[v215];
                  *(v188 + v191) = 1;
                  v189 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete;
                  v190 = *(v188 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
                }

                *(v188 + v189) = 1;

                sub_1005F16D0(v190, &OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete, "didComplete = %{BOOL}d");

                sub_100026AC0(v28, v19);
                v155 = v82;
                goto LABEL_192;
              }

              aBlock = 0xD000000000000057;
              v223 = v212;
              *v228 = 1139;
              v174._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v174);

              v175 = String.hashValue.getter();

              swift_beginAccess();
              v176 = sub_10046E4E8(v228, v175);
              swift_endAccess();
              if (v176)
              {
                sub_10061F624(&static os_log_type_t.default.getter, "not-isPaired block");
              }

              [v216 startBatteryScannerForPeripheral:v6];
              sub_100603E50();
              v177 = *&v216[v215];
              v178 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332;
              if (*(v177 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332) == 1)
              {
                v179 = v216;
                sub_10060464C(1);
                v177 = *&v179[v215];
                v178 = OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_secondNeedsHiddenChargeStatusForReplacementB332;
              }

              *(v177 + v178) = 0;
              v180 = sub_100609B64()[2];

              if (!v180)
              {
                sub_100608954();
              }

              sub_100605AEC();
              aBlock = 0xD000000000000057;
              v223 = v212;
              *v228 = 1149;
              v181._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v181);

              v182 = String.hashValue.getter();

              swift_beginAccess();
              v183 = sub_10046E4E8(v228, v182);
              swift_endAccess();
              if (v183)
              {
                sub_10061F624(&static os_log_type_t.default.getter, "not-isPaired block 2");
              }

              sub_10060969C();
              sub_100608954();
              sub_100294008(v28, v19);
              sub_100294008(v82, v13);
              sub_100026AC0(v28, v19);
              v184 = v13 >> 62;
              if ((v13 >> 62) > 1)
              {
                if (v184 != 2)
                {
                  sub_100026AC0(v82, v13);
LABEL_205:
                  sub_1006065A0();
                  sub_100606900();
                  sub_100607E54();
                  goto LABEL_208;
                }

                v197 = *(v82 + 16);
                v196 = *(v82 + 24);
                sub_100026AC0(v82, v13);
                v185 = v196 - v197;
                if (!__OFSUB__(v196, v197))
                {
LABEL_202:
                  if (v185 == 16)
                  {
                    sub_100604368(0, 1154, 0x29286E7572, 0xE500000000000000);
                  }

                  goto LABEL_205;
                }

                __break(1u);
              }

              else if (!v184)
              {
                sub_100026AC0(v82, v13);
                v185 = BYTE6(v13);
                goto LABEL_202;
              }

              sub_100026AC0(v82, v13);
              LODWORD(v185) = HIDWORD(v82) - v82;
              if (__OFSUB__(HIDWORD(v82), v82))
              {
LABEL_216:
                __break(1u);
LABEL_217:
                __break(1u);
                goto LABEL_218;
              }

              v185 = v185;
              goto LABEL_202;
            }
          }

          goto LABEL_115;
        }

        v19 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *v19 = 136315394;
        *(v19 + 4) = sub_10000C4E4(v41, v13, &aBlock);
        *(v19 + 6) = 2080;
        v109 = (*&v216[v215] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_babyHash);
        if (v109[1])
        {
          v110 = *v109;
          v111 = v109[1];
LABEL_109:

          v124 = sub_10000C4E4(v110, v111, &aBlock);

          *(v19 + 14) = v124;
          _os_log_impl(&_mh_execute_header, v107, v108, "getHash: %s, sessionState.babyHash: %s", v19, 0x16u);
          swift_arrayDestroy();

          goto LABEL_110;
        }

LABEL_108:
        v111 = 0x8000000100789F30;
        v110 = 0xD000000000000015;
        goto LABEL_109;
      }

LABEL_115:

      v41 = v208;
      v28 = v216;
LABEL_164:
      v84 = v215;
      goto LABEL_165;
    }

    goto LABEL_164;
  }

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_1009865B0);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "System monitor not activated. Bailing.", v37, 2u);
  }
}

void sub_1005F93E0(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted;
  if (a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] == 1)
  {
    a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sbHasStarted] = 1;
  }

  else
  {
    v3 = sub_1005F2FF4();
    v4 = a1[v2];
    a1[v2] = v3 & 1;
    if ((v3 & 1) != v4)
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_1009865B0);
      v6 = a1;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109120;
        *(v9 + 4) = a1[v2];

        _os_log_impl(&_mh_execute_header, v7, v8, "sbHasStarted = %{BOOL}d", v9, 8u);
      }

      else
      {
      }
    }
  }

  v10 = [objc_allocWithZone(FBSOrientationObserver) init];
  v11 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver;
  v12 = *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver];
  *&a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientationObserver] = v10;

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = *&a1[v11];
  if (!v14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v15 = v13;
  v106 = sub_100625724;
  v107 = v13;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB548;
  v16 = _Block_copy(&aBlock);
  v17 = a1;

  v18 = v14;

  [v18 activeInterfaceOrientationWithCompletion:v16];
  _Block_release(v16);

  v19 = *&a1[v11];
  if (!v19)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v106 = sub_100625724;
  v107 = v15;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB570;
  v20 = _Block_copy(&aBlock);

  v21 = v19;

  [v21 setHandler:v20];
  _Block_release(v20);

  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = *&v17[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_powerSourceMonitor];
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10062572C;
  *(v24 + 24) = v22;
  v106 = sub_100625734;
  v107 = v24;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB5E8;
  v25 = _Block_copy(&aBlock);
  v26 = v17;

  [v23 setPowerSourceFoundHandler:v25];
  _Block_release(v25);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_10062572C;
  *(v27 + 24) = v22;
  v106 = sub_10044EDA8;
  v107 = v27;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_1005FBBA8;
  v105 = &unk_1008EB638;
  v28 = _Block_copy(&aBlock);

  [v23 setPowerSourceChangedHandler:v28];
  _Block_release(v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  v106 = sub_10062573C;
  v107 = v29;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100035F94;
  v105 = &unk_1008EB688;
  v30 = _Block_copy(&aBlock);
  v31 = v26;

  [v23 setPowerSourceLostHandler:v30];
  _Block_release(v30);
  [v23 activateWithCompletion:0];
  v32 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v31 queue:*&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
  v33 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central;
  v34 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v32;

  v35 = [objc_allocWithZone(ACCBLEPairingProvider) initWithDelegate:v31];
  v36 = *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider];
  *&v31[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider] = v35;

  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  sub_10000C4AC(v37, qword_1009865B0);
  v38 = v31;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 67109120;
    *(v41 + 4) = [*&v31[v33] isScanning];

    _os_log_impl(&_mh_execute_header, v39, v40, "scanning: %{BOOL}d", v41, 8u);
  }

  else
  {

    v39 = v38;
  }

  v42 = v38;
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 138412290;
    v47 = *(&v42->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor);
    *(v45 + 4) = v47;
    *v46 = v47;
    v48 = v47;
    _os_log_impl(&_mh_execute_header, v43, v44, "Setting handlers on systemMonitor %@...", v45, 0xCu);
    sub_100005508(v46, &qword_100975400, &qword_1007F65D0);
  }

  v49 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
  v50 = *(&v42->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor);
  v51 = swift_allocObject();
  *(v51 + 16) = v42;
  v106 = sub_100625744;
  v107 = v51;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB6D8;
  v52 = _Block_copy(&aBlock);
  v53 = v42;
  v54 = v50;

  [v54 setSystemLockStateChangedHandler:v52];
  _Block_release(v52);

  v55 = *(&v42->isa + v49);
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_100625768;
  v107 = v56;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB700;
  v57 = _Block_copy(&aBlock);
  v58 = v55;

  [v58 setBluetoothAddressChangedHandler:v57];
  _Block_release(v57);

  v59 = v53;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v62 = 138412802;
    v64 = *(&v42->isa + v49);
    *(v62 + 4) = v64;
    v99 = v63;
    *v63 = v64;
    *(v62 + 12) = 2080;
    v65 = [v64 bluetoothAddressChangedHandler];
    v100 = v61;
    if (v65)
    {
      v66 = v65;
      v67 = swift_allocObject();
      *(v67 + 16) = v66;
      v68 = swift_allocObject();
      *(v68 + 16) = sub_10062605C;
      *(v68 + 24) = v67;
      v69 = sub_100626198;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    aBlock = v69;
    v103 = v68;
    sub_10028088C(&unk_100987180, &qword_10080DAF8);
    v70 = Optional.debugDescription.getter();
    v72 = v71;
    sub_100015D04(v69, v68);
    v73 = sub_10000C4E4(v70, v72, &v101);

    *(v62 + 14) = v73;
    *(v62 + 22) = 2080;
    v74 = [*(&v42->isa + v49) systemLockStateChangedHandler];
    if (v74)
    {
      v75 = v74;
      v76 = swift_allocObject();
      *(v76 + 16) = v75;
      v77 = swift_allocObject();
      *(v77 + 16) = sub_100625780;
      *(v77 + 24) = v76;
      v78 = sub_100597A30;
    }

    else
    {
      v78 = 0;
      v77 = 0;
    }

    aBlock = v78;
    v103 = v77;
    v79 = Optional.debugDescription.getter();
    v81 = v80;
    sub_100015D04(v78, v77);
    v82 = sub_10000C4E4(v79, v81, &v101);

    *(v62 + 24) = v82;
    _os_log_impl(&_mh_execute_header, v60, v100, "Did set handlers on systemMonitor %@. bluetoothAddressChangedHandler: %s, systemLockStateChangedHandler: %s", v62, 0x20u);
    sub_100005508(v99, &qword_100975400, &qword_1007F65D0);

    swift_arrayDestroy();
  }

  else
  {
  }

  v83 = *(&v42->isa + v49);
  v84 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v106 = sub_100625770;
  v107 = v84;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB728;
  v85 = _Block_copy(&aBlock);
  v86 = v83;

  [v86 setScreenOnChangedHandler:v85];
  _Block_release(v85);

  v87 = v59;
  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v90 = 138412290;
    v92 = *(&v42->isa + v49);
    *(v90 + 4) = v92;
    *v91 = v92;
    v93 = v92;
    _os_log_impl(&_mh_execute_header, v88, v89, "Activating systemMonitor %@", v90, 0xCu);
    sub_100005508(v91, &qword_100975400, &qword_1007F65D0);
  }

  v94 = *(&v42->isa + v49);
  v95 = swift_allocObject();
  *(v95 + 16) = v87;
  v106 = sub_100625778;
  v107 = v95;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100011678;
  v105 = &unk_1008EB778;
  v96 = _Block_copy(&aBlock);
  v97 = v87;
  v98 = v94;

  [v98 activateWithCompletion:v96];
  _Block_release(v96);
}

uint64_t sub_1005FA1B4(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v7 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_1009865B0);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "new orientation: %@", v14, 0xCu);
    sub_100005508(v15, &qword_100975400, &qword_1007F65D0);
  }

  v17 = [v11 orientation];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v17;
  aBlock[4] = sub_100625858;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100011678;
  aBlock[3] = &unk_1008EB890;
  v19 = _Block_copy(aBlock);
  v20 = a2;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
  sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v6, v4);
  (*(v7 + 8))(v9, v23);
}

void sub_1005FA5A8(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_orientation) = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005F2838(Strong, 1);
  }
}

void sub_1005FA620(void *a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if ([a1 productID] != 332 && objc_msgSend(a1, "productID") != 482 && objc_msgSend(a1, "productID") != 1106)
  {
    return;
  }

  v7 = a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
  if (*(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel + 8))
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel);
  }

  [a1 chargeLevel];
  *v7 = fabs(v9);
  *(v7 + 8) = 0;
  sub_1005F339C();
  v10 = [a1 productID];
  if (v10 > 545)
  {
    if (v10 != 1106)
    {
      if (v10 == 546)
      {
        v11 = 2;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v11 = 4;
  }

  else
  {
    if (v10 != 332)
    {
      if (v10 == 482)
      {
        v11 = 3;
        goto LABEL_17;
      }

LABEL_14:
      v11 = 0;
      goto LABEL_17;
    }

    v11 = 1;
  }

LABEL_17:
  v12 = [a1 sourceID];
  v13 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
  *v13 = v12;
  *(v13 + 8) = 0;
  sub_1005F7090();
  if ((*(v7 + 8) & 1) == 0)
  {
    v14 = *v7;
    if ((v8 < 0.0 || vabdd_f64(v8, v14) > 0.005) && ([a1 productID] == 332 || objc_msgSend(a1, "productID") == 482 || objc_msgSend(a1, "productID") == 1106) && (objc_msgSend(a1, "charging") & 1) == 0 && (fabs(v14 + -0.2) <= 0.005 || fabs(v14 + -0.1) <= 0.005))
    {
      if (qword_100973B58 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10000C4AC(v15, qword_1009865B0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Reached low battery pill threshold for connected Pencil", v18, 2u);
      }

      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v21 = static MainActor.shared.getter();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = &protocol witness table for MainActor;
      v22[4] = v20;
      v22[5] = v11;
      v22[6] = v12;

      sub_1002B3398(0, 0, v6, &unk_10080DB08, v22);
    }
  }
}

uint64_t sub_1005FAA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[10] = v8;
  v6[11] = v7;

  return _swift_task_switch(sub_1005FAAAC, v8, v7);
}

uint64_t sub_1005FAAAC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v2[1] = sub_1005FABBC;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1005FAD70(v4, v3, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 96) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1005FABBC()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_1005FACFC, v4, v3);
}

uint64_t sub_1005FACFC()
{

  **(v0 + 40) = *(v0 + 96) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1005FAD70(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 296) = a3;
  *(v4 + 128) = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  v7 = type metadata accessor for DispatchTimeInterval();
  *(v4 + 200) = v7;
  *(v4 + 208) = *(v7 - 8);
  *(v4 + 216) = swift_task_alloc();
  v8 = type metadata accessor for DispatchTime();
  *(v4 + 224) = v8;
  *(v4 + 232) = *(v8 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();

  return _swift_task_switch(sub_1005FAF58, 0, 0);
}

uint64_t sub_1005FAF58()
{
  v17 = v0;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 256) = sub_10000C4AC(v1, qword_1009865B0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 296);
    v5 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_10060E6AC(v5);
    v9 = sub_10000C4E4(v7, v8, &v16);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    if (v4)
    {
      v10 = 0x8000000100799920;
      v11 = 0xD000000000000012;
    }

    else
    {
      *(v0 + 120) = *(v0 + 136);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v12;
    }

    v13 = sub_10000C4E4(v11, v10, &v16);

    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "showLowBatteryPill [type: %s, powerSourceID: %s]", v6, 0x16u);
    swift_arrayDestroy();
  }

  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_1005FB190;

  return sub_10060E9B0();
}

uint64_t sub_1005FB190(char a1)
{
  v3 = *v1;
  v4 = *v1;

  if (a1)
  {
    v5 = swift_task_alloc();
    *(v3 + 272) = v5;
    *v5 = v4;
    v5[1] = sub_1005FB334;

    return sub_10060F9EC();
  }

  else
  {

    v7 = *(v4 + 8);

    return v7();
  }
}

uint64_t sub_1005FB334(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  return _swift_task_switch(sub_1005FB434, 0, 0);
}

uint64_t sub_1005FB434(uint64_t a1, uint64_t a2)
{
  if (v2[35] && v2[36])
  {
    v40 = v2[36];
    v41 = v2[35];
    v3 = v2[16];
    v4 = *(v2 + 296);
    swift_unknownObjectRetain();
    v5 = 0;
    v6 = 0;
    if (v3 == 4 && (v4 & 1) == 0)
    {
      if (SFIsPencilHapticsEnabled())
      {
        v7 = v2[17];
        v8 = objc_opt_self();
        v6 = swift_allocObject();
        *(v6 + 16) = v7;
        v9 = swift_allocObject();
        *(v9 + 16) = sub_100624FFC;
        *(v9 + 24) = v6;
        v2[12] = sub_10044EDA8;
        v2[13] = v9;
        v2[8] = _NSConcreteStackBlock;
        v2[9] = 1107296256;
        v2[10] = sub_100610AC0;
        v2[11] = &unk_1008EAD28;
        v10 = _Block_copy(v2 + 8);

        v11 = [v8 build:v10];
        _Block_release(v10);
        LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

        if (v10)
        {
          __break(1u);
          return result;
        }

        BKSHIDServicesRequestHapticFeedback();
        v5 = sub_100624FFC;
      }

      else
      {
        v11 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v11, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v11, v18, "Not playing Pencil haptics because the default is off", v19, 2u);
        }

        v5 = 0;
        v6 = 0;
      }
    }

    v38 = v5;
    v39 = v6;
    v20 = v2[30];
    v21 = v2[28];
    v31 = v2[29];
    v22 = v2[26];
    v23 = v2[27];
    v24 = v2[25];
    v28 = v2[31];
    v29 = v2[24];
    v36 = v2[23];
    v37 = v2[22];
    v35 = v2[20];
    v33 = v2[21];
    v34 = v2[19];
    [v40 acquireHUDTransaction];
    sub_1005F2838(v41, 0);
    [v40 showChargingStatus];
    sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    *v23 = 5;
    (*(v22 + 104))(v23, enum case for DispatchTimeInterval.seconds(_:), v24);
    + infix(_:_:)();
    (*(v22 + 8))(v23, v24);
    v32 = *(v31 + 8);
    v32(v20, v21);
    v25 = swift_allocObject();
    *(v25 + 16) = v40;
    v2[6] = sub_100626060;
    v2[7] = v25;
    v2[2] = _NSConcreteStackBlock;
    v2[3] = 1107296256;
    v2[4] = sub_100011678;
    v2[5] = &unk_1008EACB0;
    v26 = _Block_copy(v2 + 2);
    swift_unknownObjectRetain();
    static DispatchQoS.unspecified.getter();
    v2[14] = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

    _Block_release(v26);
    swift_unknownObjectRelease_n();
    (*(v35 + 8))(v33, v34);
    (*(v36 + 8))(v29, v37);
    v32(v28, v21);

    sub_100015D04(v38, v39);
  }

  else
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v2[35];
    if (v15)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to get HUD connection to show low battery pill", v17, 2u);
    }

    swift_unknownObjectRelease();
  }

  v27 = v2[1];

  return v27();
}

uint64_t sub_1005FBA48(void *a1, uint64_t (*a2)(id))
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_1009865B0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Found power source: %@", v8, 0xCu);
    sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
  }

  return a2(v5);
}

void sub_1005FBBB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1005FBC2C(void *a1, uint64_t a2)
{
  if ([a1 productID] == 332 || objc_msgSend(a1, "productID") == 482 || objc_msgSend(a1, "productID") == 1106)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_1009865B0);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Lost power source: %@", v8, 0xCu);
      sub_100005508(v9, &qword_100975400, &qword_1007F65D0);
    }

    v11 = a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v11 = 0;
    *(v11 + 8) = 1;
    sub_1005F339C();
    v12 = *(a2 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_powerSourceID;
    *v12 = 0;
    *(v12 + 8) = 1;
  }
}

void sub_1005FBDEC(uint64_t a1, const char *a2)
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_1009865B0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  sub_1005F7090();
}

void sub_1005FBED8(uint64_t a1)
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = type metadata accessor for DefaultStringInterpolation.PrintUtilsHexFormat();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v45 = v5;
    v10 = [*(Strong + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) bluetoothAddressData];
    if (v10)
    {
      v11 = v10;
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xF000000000000000;
    }

    v46 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v15 = (*&v9[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sentBluetoothAddress);
    v17 = *v15;
    v16 = v15[1];
    sub_1002A9924(*v15, v16);
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    v19 = sub_10000C4AC(v18, qword_1009865B0);
    sub_1002A9924(v17, v16);
    sub_1002A9924(v12, v14);
    v42 = v19;
    v20 = Logger.logObject.getter();
    LODWORD(v19) = static os_log_type_t.default.getter();
    sub_10028BCC0(v12, v14);
    sub_10028BCC0(v17, v16);
    v43 = v19;
    v21 = os_log_type_enabled(v20, v19);
    v22 = v16 >> 60;
    if (v21)
    {
      v44 = v16 >> 60;
      v40 = v3;
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51 = v39;
      *v23 = 136315394;
      v41 = v12;
      if (v14 >> 60 == 15)
      {
        v24 = 0x8000000100789F30;
        v25 = 0xD000000000000015;
      }

      else
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        v47 = v12;
        v48 = v14;
        v26 = v45;
        (*(v45 + 104))(v7, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v4);
        sub_100423B84();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v26 + 8))(v7, v4);
        v25 = v49;
        v24 = v50;
      }

      v27 = sub_10000C4E4(v25, v24, &v51);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      if (v44 <= 0xE)
      {
        v49 = 0;
        v50 = 0xE000000000000000;
        v47 = v17;
        v48 = v16;
        v30 = v45;
        (*(v45 + 104))(v7, enum case for DefaultStringInterpolation.PrintUtilsHexFormat.hex(_:), v4);
        sub_100423B84();
        DefaultStringInterpolation.appendInterpolation<A>(_:_:separator:)();
        (*(v30 + 8))(v7, v4);
        v29 = v49;
        v28 = v50;
      }

      else
      {
        v28 = 0x8000000100789F30;
        v29 = 0xD000000000000015;
      }

      v31 = sub_10000C4E4(v29, v28, &v51);

      *(v23 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v20, v43, "bluetoothAddressChanged %s, sentBluetoothAddress: %s", v23, 0x16u);
      swift_arrayDestroy();

      v3 = v40;
      v12 = v41;
      v22 = v44;
    }

    else
    {
    }

    v32 = v46;
    if (*(*&v9[v46] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
    {
      if (v22 >= 0xF)
      {
        if (v14 >> 60 == 15)
        {
LABEL_27:

          return;
        }

        sub_1005F7090();
LABEL_26:
        sub_10028BCC0(v12, v14);
        goto LABEL_27;
      }
    }

    else if (v22 >= 0xF)
    {
      goto LABEL_26;
    }

    sub_1002A9924(v17, v16);
    sub_1002A9924(v17, v16);
    sub_1002A9924(v12, v14);
    if (v14 >> 60 == 15)
    {
      sub_10028BCC0(v17, v16);
      sub_10028BCC0(v12, v14);
    }

    else
    {
      v33 = sub_100331508(v17, v16, v12, v14);
      sub_10028BCC0(v12, v14);
      sub_10028BCC0(v17, v16);
      if (v33)
      {
LABEL_25:
        sub_10028BCC0(v17, v16);
        sub_10028BCC0(v17, v16);
        goto LABEL_26;
      }
    }

    v34 = *&v9[v32];
    if (*(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete))
    {
      goto LABEL_25;
    }

    *(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToResetFromBTAddrRotation) = 1;
    if (*(v34 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_oobd + 8) >> 60 == 15)
    {
      sub_10028BCC0(v17, v16);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Waiting for OOBD before replayAttachEvent", v37, 2u);
      }

      sub_10028BCC0(v12, v14);
      sub_10028BCC0(v17, v16);
    }

    else
    {
      v38 = type metadata accessor for UUID();
      (*(*(v38 - 8) + 56))(v3, 1, 1, v38);
      sub_1005FCB7C(v3, 1);

      sub_10028BCC0(v17, v16);
      sub_10028BCC0(v17, v16);
      sub_10028BCC0(v12, v14);
      sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    }
  }
}

void sub_1005FC5C0(uint64_t a1)
{
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_1009865B0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = [*(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn];

      _os_log_impl(&_mh_execute_header, v8, v9, "screenOnChangedHandler. on: %{BOOL}d", v10, 8u);
    }

    else
    {

      v8 = v7;
    }

    if ([*(&v7->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) screenOn])
    {
      sub_1005F7090();
    }

    else
    {
      v11 = type metadata accessor for UUID();
      (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
      sub_1005FCB7C(v3, 0);

      sub_100005508(v3, &unk_100976120, &qword_1007F9260);
    }
  }
}

void sub_1005FC7F4(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitorActivated] = 1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_1009865B0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    v8 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor;
    v9 = [*(&v3->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_systemMonitor) systemLockState] == 1 || objc_msgSend(*(&v3->isa + v8), "systemLockState") == 4;
    *(v6 + 4) = v9;

    *(v6 + 8) = 2112;
    v10 = *(&v3->isa + v8);
    *(v6 + 10) = v10;
    *v7 = v10;
    v11 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "System monitor activated - Authed? %{BOOL}d - (%@)", v6, 0x12u);
    sub_100005508(v7, &qword_100975400, &qword_1007F65D0);
  }

  else
  {

    v4 = v3;
  }

  sub_1005F7090();
}

void sub_1005FC9F0(uint64_t a1)
{
  sub_1004EC778(319, &qword_100975F70, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_1004EC778(319, &qword_10097DB80, &type metadata accessor for Date);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005FCB7C(unint64_t a1, int a2)
{
  v3 = v2;
  v121 = a2;
  v124 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v117 = *(v4 - 8);
  v118 = v4;
  __chkstk_darwin(v4);
  v115 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for DispatchQoS();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v107 - v12;
  v13 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v107 - v18;
  __chkstk_darwin(v17);
  v21 = &v107 - v20;
  v111 = objc_opt_self();
  v22 = [v111 standardUserDefaults];
  v23 = sub_1005607A0();

  LODWORD(v122) = v23;
  if (v23)
  {
    LODWORD(v112) = 0;
  }

  else
  {
    LODWORD(v112) = *(*&v3[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);
  }

  v120 = v11;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_10000C4AC(v24, qword_1009865B0);
  sub_10000FF90(v124, v21, &unk_100976120, &qword_1007F9260);
  v26 = v3;
  v123 = v25;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v110 = v28;
    v29 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    aBlock[0] = v109;
    *v29 = 67110402;
    v108 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    *(v29 + 4) = *(*&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_didComplete);

    *(v29 + 8) = 1024;
    *(v29 + 10) = v122 & 1;
    *(v29 + 14) = 1024;
    *(v29 + 16) = v112;
    *(v29 + 20) = 1024;
    *(v29 + 22) = v121 & 1;
    *(v29 + 26) = 2080;
    sub_10000FF90(v21, v19, &unk_100976120, &qword_1007F9260);
    if ((*(v8 + 48))(v19, 1, v7) == 1)
    {
      sub_100005508(v19, &unk_100976120, &qword_1007F9260);
      v30 = 0x8000000100799A70;
      v31 = 0xD000000000000028;
    }

    else
    {
      v31 = UUID.description.getter();
      v30 = v32;
      (*(v8 + 8))(v19, v7);
    }

    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
    v33 = sub_10000C4E4(v31, v30, aBlock);

    *(v29 + 28) = v33;
    *(v29 + 36) = 2080;
    v34 = v119;
    (*(v8 + 16))(v119, *&v26[v108] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v7);
    sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v8 + 8))(v34, v7);
    v38 = sub_10000C4E4(v35, v37, aBlock);

    *(v29 + 38) = v38;
    _os_log_impl(&_mh_execute_header, v27, v110, "resetState. didComplete: %{BOOL}d, neededEduUI: %{BOOL}d, didCompleteInitialPair: %{BOOL}d, replayAttachEvent: %{BOOL}d, canceling id: %s, currentID: %s", v29, 0x2Eu);
    swift_arrayDestroy();
  }

  else
  {

    sub_100005508(v21, &unk_100976120, &qword_1007F9260);
  }

  sub_10000FF90(v124, v16, &unk_100976120, &qword_1007F9260);
  v39 = (*(v8 + 48))(v16, 1, v7);
  v40 = v120;
  if (v39 == 1)
  {
    sub_100005508(v16, &unk_100976120, &qword_1007F9260);
LABEL_16:
    v44 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v45 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState];
    v46 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerRequestingPairing);
    if (v46 && (*(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType + 8) & 1) == 0 && (*(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_handledPairRequest) & 1) == 0)
    {
      v47 = *(v45 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_peerPairingType);
      v48 = v46;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Reject unhandled pairing request", v51, 2u);
      }

      v52 = [*&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] sharedPairingAgent];
      if (!v52)
      {
        __break(1u);
        goto LABEL_48;
      }

      v53 = v52;
      v54 = v48;
      sub_10027FD18(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v53 respondToPairingRequest:v54 type:v47 accept:0 data:isa];
    }

    if ((v122 & 1) == 0)
    {
      v56 = [v111 standardUserDefaults];
      sub_100561364(0);
    }

    v57 = *&v26[v44];
    if (!*(v57 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8))
    {
      goto LABEL_32;
    }

    v58 = *(v57 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8);
    if (v58 >> 60 == 15 || *(v57 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_needToStopBLEUpdates) != 1)
    {
      goto LABEL_32;
    }

    v59 = *(v57 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);

    sub_1002A9924(v59, v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "stopBLEUpdates in resetState.", v62, 2u);
    }

    v63 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_bleProvider];
    if (v63)
    {
      v64 = v63;
      v65 = String._bridgeToObjectiveC()();

      v66 = Data._bridgeToObjectiveC()().super.isa;
      [v64 stopBLEUpdates:v65 blePairingUUID:v66];

      sub_10028BCC0(v59, v58);
      v57 = *&v26[v44];
LABEL_32:
      v67 = *(v57 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_findMyUnpairAlert);
      if (v67)
      {
        v68 = v67;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Dismiss FindMy unpair alert in resetState", v71, 2u);
        }

        if (*(*&v26[v44] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_storePeripheral))
        {
          [*&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] cancelPeripheralConnection:?];
        }

        [v68 invalidate];
        sub_1005FDBD8(0);
      }

      sub_1005F1F48();

      [v26 stopScanning];
      [v26 stopBatteryScanner];
      v72 = *&v26[v44];
      v73 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID + 8);
      v112 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
      v75 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
      v74 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID + 8);
      v76 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType);
      v77 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType + 8);
      v79 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
      v78 = *(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag + 8);
      v80 = (v72 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode);
      v120 = *v80;
      LODWORD(v119) = *(v80 + 8);
      type metadata accessor for SDB332SetupAgentSessionState(0);
      v81 = swift_allocObject();

      v122 = v75;
      sub_1002A9924(v75, v74);

      sub_1005F2434();
      *&v26[v44] = v81;

      v82 = *&v26[v44] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
      *v82 = v76;
      *(v82 + 8) = v77;
      v83 = (v81 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilBtTag);
      *v83 = v79;
      v83[1] = v78;

      v84 = *&v26[v44];
      v85 = v84 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_devicePencilCode;
      *v85 = v120;
      *(v85 + 8) = v119;
      v124 = v74;
      if (v121)
      {
        v86 = (v84 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__accessoryUID);
        *v86 = v112;
        v86[1] = v73;

        v87 = (*&v26[v44] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState__blePairingUUID);
        v88 = *v87;
        v89 = v87[1];
        v90 = v122;
        *v87 = v122;
        v87[1] = v74;
        sub_1002A9924(v90, v74);

        sub_10028BCC0(v88, v89);

        [objc_opt_self() b332BTAddressRotationDelay];
        v92 = v91;
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 134217984;
          *(v95 + 4) = v92;
          _os_log_impl(&_mh_execute_header, v93, v94, "Sleeping for %f sec due to address rotation.", v95, 0xCu);
        }

        [objc_opt_self() sleepForTimeInterval:v92];
        [v26 resetUIUpdatesFlagWithUndimScreen:0];
      }

      else
      {

        sub_1005FDE80();
        v96 = [objc_allocWithZone(CBCentralManager) initWithDelegate:v26 queue:*&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q]];
        v97 = *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central];
        *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_central] = v96;

        v90 = v122;
      }

      v98 = swift_allocObject();
      *(v98 + 16) = v26;
      aBlock[4] = sub_1006252EC;
      aBlock[5] = v98;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008EB048;
      v99 = _Block_copy(aBlock);
      v100 = v26;
      v101 = v113;
      static DispatchQoS.unspecified.getter();
      v125 = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      v102 = v115;
      v103 = v118;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v99);
      sub_10028BCC0(v90, v124);
      (*(v117 + 8))(v102, v103);
      (*(v114 + 8))(v101, v116);

      return;
    }

LABEL_48:
    __break(1u);
    return;
  }

  (*(v8 + 32))(v120, v16, v7);
  v41 = v119;
  (*(v8 + 16))(v119, *&v26[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v7);
  sub_10000D4DC(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v42 = dispatch thunk of static Equatable.== infix(_:_:)();
  v43 = *(v8 + 8);
  v43(v41, v7);
  if (v42)
  {
    v43(v40, v7);
    goto LABEL_16;
  }

  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&_mh_execute_header, v104, v105, "ignore resetState", v106, 2u);
  }

  v43(v40, v7);
}

void sub_1005FDBD8(char a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sendsUIUpdates) == 1)
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000C4AC(v3, qword_1009865B0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "dismissSBUI", v6, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      aBlock[4] = sub_100612F5C;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1004502D4;
      aBlock[3] = &unk_1008EA710;
      v9 = _Block_copy(aBlock);
      v10 = [v8 remoteObjectProxyWithErrorHandler:v9];
      _Block_release(v9);
      [v10 dismissUIAnimated:a1 & 1];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_1009865B0);
    oslog = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v12, "ignore dismissSBUI, UI updates disabled for current session state", v13, 2u);
    }
  }
}

void sub_1005FDE80()
{
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_1009865B0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "releaseHUDTransaction", v3, 2u);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    aBlock[4] = sub_100612F50;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004502D4;
    aBlock[3] = &unk_1008EA850;
    v6 = _Block_copy(aBlock);
    v7 = [v5 remoteObjectProxyWithErrorHandler:v6];
    _Block_release(v6);
    [v7 releaseHUDTransaction];

    swift_unknownObjectRelease();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v8, "no UI service to stop", v9, 2u);
    }
  }
}

id sub_1005FE0C0()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchTime();
  v52 = *(v53 - 8);
  v9 = __chkstk_darwin(v53);
  v50 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v45 - v11;
  v63 = type metadata accessor for UUID();
  v58 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973B58 != -1)
  {
LABEL_20:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000C4AC(v13, qword_1009865B0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "raceyInternalUnpairPreviousB332s...", v16, 2u);
  }

  v17 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q);
  v18 = [objc_allocWithZone(CBCentralManager) initWithDelegate:0 queue:v17];
  v62 = [objc_allocWithZone(SPPairingManager) init];
  v19 = v18;
  result = [v19 sharedPairingAgent];
  if (result)
  {
    v21 = result;
    v46 = v6;
    v47 = v5;
    v48 = v4;
    v5 = sub_1005FEA1C();

    v49 = v1;
    v45 = v17;
    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
LABEL_7:
        v22 = 0;
        v1 = v5 & 0xFFFFFFFFFFFFFF8;
        v59 = &v68;
        v60 = (v58 + 8);
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_19;
            }

            v23 = *(v5 + 8 * v22 + 32);
          }

          v24 = v23;
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

          result = [v19 sharedPairingAgent];
          if (!result)
          {
            break;
          }

          v26 = result;
          v27 = v24;
          [v26 unpairPeer:v27];

          v28 = String._bridgeToObjectiveC()();
          v4 = [(objc_class *)v27 hasTag:v28];

          if (v4)
          {
            v29 = [(objc_class *)v27 identifier];

            v30 = v61;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v60)(v30, v63);
            v31 = swift_allocObject();
            *(v31 + 16) = v27;
            v70 = sub_1006252DC;
            v71 = v31;
            aBlock = _NSConcreteStackBlock;
            v67 = 1107296256;
            v68 = sub_1005CC610;
            v69 = &unk_1008EAFA8;
            v4 = _Block_copy(&aBlock);
            v32 = v27;

            v33 = isa;
            [v62 unpairUUID:isa force:1 completion:v4];

            _Block_release(v4);
            v27 = v33;
          }

          else
          {
          }

          ++v22;
          if (v25 == v6)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_7;
      }
    }

LABEL_22:

    [objc_opt_self() sleepForTimeInterval:2.0];
    v34 = v50;
    static DispatchTime.now()();
    v35 = v51;
    + infix(_:_:)();
    isa = *(v52 + 8);
    v36 = v53;
    (isa)(v34, v53);
    v37 = swift_allocObject();
    *(v37 + 16) = v19;
    v70 = sub_1006252E4;
    v71 = v37;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100011678;
    v69 = &unk_1008EAFF8;
    v38 = _Block_copy(&aBlock);
    v61 = v19;
    v39 = v54;
    static DispatchQoS.unspecified.getter();
    v65 = _swiftEmptyArrayStorage;
    sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    v40 = v56;
    v41 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v38);
    (*(v46 + 8))(v40, v41);
    (*(v55 + 8))(v39, v57);
    (isa)(v35, v36);

    v42 = v49;
    v43 = v49 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_ioKitBatteryLevel;
    *v43 = 0;
    *(v43 + 8) = 1;
    sub_1005F339C();
    *(*(v42 + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState) + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_lastSentBatteryPercentage) = 0;
    v44 = v48;
    (*(v58 + 56))(v48, 1, 1, v63);
    sub_1005FCB7C(v44, 0);

    return sub_100005508(v44, &unk_100976120, &qword_1007F9260);
  }

LABEL_24:
  __break(1u);
  return result;
}

id sub_1005FEA1C()
{
  result = [v0 retrievePairedPeers];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_100469018(v3);

  v40 = _swiftEmptyArrayStorage;
  v5 = (v4 & 0xFFFFFFFFFFFFFF8);
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v7 = 0;
      v8 = _swiftEmptyArrayStorage;
      do
      {
        v9 = v7;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v9 >= v5[2])
            {
              goto LABEL_41;
            }

            v10 = *(v4 + 8 * v9 + 32);
          }

          v11 = v10;
          v7 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v9;
          if (v7 == i)
          {
            goto LABEL_20;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v40;
      }

      while (v7 != i);
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

LABEL_20:

    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C4AC(v12, qword_1009865B0);

    v4 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v4, v13))
    {
      v14 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v40 = v5;
      *v14 = 136315138;
      sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
      v15 = Array.description.getter();
      v17 = sub_10000C4E4(v15, v16, &v40);

      *(v14 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v4, v13, "pairedPeripherals: %s", v14, 0xCu);
      sub_10000C60C(v5);
    }

    v40 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_46;
    }

LABEL_26:
    v19 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v20 = *(v8 + 8 * v19 + 32);
      }

      v21 = v20;
      v5 = (v19 + 1);
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 hasTag:v22];

      if (v23 & 1) != 0 || (v24 = String._bridgeToObjectiveC()(), v25 = [v21 hasTag:v24], v24, (v25) || (v26 = String._bridgeToObjectiveC()(), v27 = objc_msgSend(v21, "hasTag:", v26), v26, (v27) || (v4 = String._bridgeToObjectiveC()(), v28 = objc_msgSend(v21, "hasTag:", v4), v4, (v28))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v4 = *(v40 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v19;
      if (v5 == v18)
      {
        v29 = v40;
        goto LABEL_47;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (v18)
  {
    goto LABEL_26;
  }

LABEL_46:
  v29 = _swiftEmptyArrayStorage;
LABEL_47:

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40 = v33;
    *v32 = 136315138;
    sub_1000276B4(0, &qword_100987090, CBPeripheral_ptr);
    v34 = Array.description.getter();
    v36 = sub_10000C4E4(v34, v35, &v40);

    *(v32 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v30, v31, "pairedPencils: %s", v32, 0xCu);
    sub_10000C60C(v33);
  }

  if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 2)
    {
LABEL_52:
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "!!! Multiple paired Pencils", v39, 2u);
      }
    }
  }

  else if (*(v29 + 16) >= 2)
  {
    goto LABEL_52;
  }

  return v29;
}

void sub_1005FF058(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_1009865B0);
    swift_errorRetain();
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v12 = 136315394;
      v14 = [v9 identifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000D4DC(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v5 + 8))(v7, v4);
      v18 = sub_10000C4E4(v15, v17, &v21);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2112;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v19;
      *v13 = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to FindMy-unpair Pencil with ID %s: %@", v12, 0x16u);
      sub_100005508(v13, &qword_100975400, &qword_1007F65D0);

      sub_10000C60C(v20);
    }

    else
    {
    }
  }
}

id sub_1005FF374(void *a1)
{
  sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007F5670;
  result = [a1 sharedPairingAgent];
  if (result)
  {
    v4 = result;
    v5 = sub_1005FEA1C();

    *(v2 + 56) = sub_10028088C(&qword_100987178, &qword_10080DAF0);
    *(v2 + 32) = v5;
    print(_:separator:terminator:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005FF444()
{
  v1 = v0;
  v2 = sub_10028088C(&qword_100976C00, &unk_1007F9D70);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  result = __chkstk_darwin(v14);
  if (!*(*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout))
  {
    v39 = v17;
    v43 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
    v44 = v5;
    v41 = v4;
    v45 = &v36 - v16;
    if (qword_100973B58 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000C4AC(v18, qword_1009865B0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v21 = os_log_type_enabled(v19, v20);
    v42 = v11;
    if (v21)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "- startSessionTimeout", v22, 2u);
      v11 = v42;
    }

    v40 = v13;

    v23 = v43;
    v24 = *(v13 + 16);
    v24(v45, *&v1[v43] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_uuid, v12);
    static DispatchTime.now()();
    if (qword_100973B60 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for DispatchTimeInterval();
    sub_10000C4AC(v25, qword_1009865C8);
    + infix(_:_:)();
    v26 = v44;
    v37 = *(v6 + 8);
    v38 = v6 + 8;
    v37(v9, v44);
    v27 = *&v1[v23];
    (*(v6 + 16))(v9, v11, v26);
    v28 = v41;
    (*(v6 + 56))(v41, 1, 1, v26);
    v36 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_q];
    v29 = v39;
    v24(v39, v45, v12);
    v30 = v40;
    v31 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v1;
    (*(v30 + 32))(v32 + v31, v29, v12);
    type metadata accessor for PushableTimer(0);
    swift_allocObject();

    v33 = v36;
    v34 = v1;
    v35 = sub_1002F1D34(v9, v28, v33, sub_10062524C, v32);

    *(v27 + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout) = v35;

    if (*(*&v1[v43] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_sessionTimeout))
    {
      swift_getObjectType();

      OS_dispatch_source.resume()();
      v37(v42, v44);
      (*(v30 + 8))(v45, v12);
    }

    else
    {
      v37(v42, v44);
      return (*(v30 + 8))(v45, v12);
    }
  }

  return result;
}

uint64_t sub_1005FF99C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_1009865B0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "- sessionTimeout fired", v9, 2u);
  }

  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, a2, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  sub_1005FCB7C(v5, 0);
  return sub_100005508(v5, &unk_100976120, &qword_1007F9260);
}

void sub_1005FFB88(char a1)
{
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState;
  v3 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_sessionState] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_deviceType;
  if ((*(v3 + 8) & 1) != 0 || *v3 != 2)
  {
    return;
  }

  v4 = v1;
  if (qword_100973B58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_1009865B0);
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v7, v8))
  {

    v7 = v6;
    goto LABEL_14;
  }

  v33 = v8;
  v9 = swift_slowAlloc();
  *v9 = 67110400;
  v10 = *(*&v1[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  v11 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v10 BOOLForKey:v11];

  *(v9 + 4) = v10 ^ 1;
  *(v9 + 8) = 1024;

  v12 = sub_10056089C();

  *(v9 + 10) = v12 & 1;

  *(v9 + 14) = 1024;
  v13 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v14 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v13 BOOLForKey:v14];

  if (!v10 || (sub_1005609D0() & 1) == 0)
  {

    goto LABEL_12;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 BOOLForKey:v15];

  if (v16)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = 1;
LABEL_13:
  *(v9 + 16) = v17;

  *(v9 + 20) = 1024;
  v18 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v19 = String._bridgeToObjectiveC()();
  v20 = [v18 BOOLForKey:v19];

  *(v9 + 22) = v20;
  *(v9 + 26) = 1024;
  v21 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  LOBYTE(v19) = sub_1005609D0();

  *(v9 + 28) = v19 & 1;
  *(v9 + 32) = 1024;
  v22 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);
  v23 = String._bridgeToObjectiveC()();
  v24 = [v22 BOOLForKey:v23];

  *(v9 + 34) = v24;
  _os_log_impl(&_mh_execute_header, v7, v33, "--B222 Begin run Info--\nneedsInitialEducationUI:%{BOOL}d\nneedsWhatsNewUI:%{BOOL}d\nneedsWhatsNewForKeyboardLocale:%{BOOL}d\nhasShownPencilTextInputEducation:%{BOOL}d\nSupportedTextInputLocaleExists:%{BOOL}d\nisShowingEducationUI:%{BOOL}d", v9, 0x26u);

LABEL_14:

  v25 = *(*&v4[v2] + OBJC_IVAR____TtC16DaemoniOSLibrary28SDB332SetupAgentSessionState_defaults);

  if (sub_1005607A0())
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 BOOLForKey:v26];

    if ((v27 & 1) == 0)
    {
      if (*(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress))
      {
        if (a1)
        {
          v28 = Logger.logObject.getter();
          v29 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v28, v29, "Beginning b222 attempt in progress, but requested counter reset", v30, 2u);
          }

          *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
        }
      }

      else
      {
        *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress) = 1;
        *(&v6->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt) = 0;
        sub_100600158(0);
      }

      return;
    }
  }

  else
  {
  }

  osloga = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(osloga, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, osloga, v31, "b222BeginRunWithTimeout does not need any education UI, bailing", v32, 2u);
  }
}

void sub_100600158(int a1)
{
  v2 = v1;
  LODWORD(v53) = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v12 = __chkstk_darwin(v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v18 = &v44 - v17;
  v19 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress;
  if (v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionInProgress] != 1)
  {
    return;
  }

  v51 = v10;
  v20 = OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt;
  v21 = *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt];
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
    goto LABEL_19;
  }

  v45 = v16;
  v46 = v8;
  v47 = v6;
  v48 = v7;
  v49 = v4;
  v50 = v3;
  v52 = v15;
  *&v2[OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionAttempt] = v23;
  if (qword_100973B58 != -1)
  {
LABEL_19:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000C4AC(v24, qword_1009865B0);
  v25 = v2;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = *&v2[v20];

    _os_log_impl(&_mh_execute_header, v26, v27, "Beginning b222 attempt %ld", v28, 0xCu);
  }

  else
  {

    v26 = v25;
  }

  if (*&v2[v20] <= 9)
  {
    if ((v53 & 1) == 0)
    {
      sub_100600844();
      return;
    }

    v29 = *(&v25->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex);
    v30 = (v29 + 1);
    if (!__OFADD__(v29, 1))
    {
      *(&v25->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex) = v30;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
      v44 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v53 = *(v45 + 8);
      v53(v14, v52);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v30;
      aBlock[4] = sub_100624FF4;
      aBlock[5] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008EAC60;
      v33 = _Block_copy(aBlock);

      v34 = v51;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000D4DC(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      v35 = v47;
      v36 = v50;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v44;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v33);

      (*(v49 + 8))(v35, v36);
      (*(v46 + 8))(v34, v48);
      v53(v18, v52);

      return;
    }

    goto LABEL_21;
  }

  v38 = v25;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    *(v41 + 4) = 10;

    _os_log_impl(&_mh_execute_header, v39, v40, "b222 reached max attempts %ld, canceling", v41, 0xCu);
  }

  else
  {

    v39 = v38;
  }

  v2[v19] = 0;
  *&v2[v20] = 0;
  v42 = *(&v38->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex);
  v22 = __OFADD__(v42, 1);
  v43 = (v42 + 1);
  if (v22)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  *(&v38->isa + OBJC_IVAR____TtC16DaemoniOSLibrary16SDB332SetupAgent_b222ConnectionWaitIndex) = v43;
}