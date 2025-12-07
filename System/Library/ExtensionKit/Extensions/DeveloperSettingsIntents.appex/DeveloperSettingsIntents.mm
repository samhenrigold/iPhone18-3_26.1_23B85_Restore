Swift::Int sub_1000015EC()
{
  v1 = *v0;
  sub_10000AA90();
  sub_10000AAA0(v1);
  return sub_10000AAB0();
}

Swift::Int sub_100001660(uint64_t a1)
{
  v2 = *v1;
  sub_10000AA90();
  sub_10000AAA0(v2);
  return sub_10000AAB0();
}

uint64_t sub_1000016B4()
{
  v1 = v0;
  v2 = sub_10000A990();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  v6 = OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_logger;
  sub_10000A980();
  v45 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v45);
  *(v1 + OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_service) = MatchingService;
  if (!MatchingService)
  {
    (*(v3 + 16))(v5, v1 + v6, v2);
    v21 = sub_10000A970();
    v22 = sub_10000A9F0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to retrieve Processor Trace service", v23, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v24 = v2;
    v25 = 1;
    LOBYTE(v43) = 1;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    goto LABEL_22;
  }

  v8 = MatchingService;
  v40 = v2;
  v9 = sub_10000A9A0();
  CFProperty = IORegistryEntryCreateCFProperty(v8, v9, kCFAllocatorDefault, 0);

  if (!CFProperty)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v25 = 2;
    LOBYTE(v43) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

LABEL_21:
    v24 = v40;
LABEL_22:
    (*(v3 + 8))(v1 + v6, v24);
    swift_deallocPartialClassInstance();
    return v25;
  }

  v38 = v6;
  *(v1 + 24) = [v11 integerValue];
  v12 = sub_10000A9A0();
  v39 = CFProperty;
  v13 = v12;
  v14 = IORegistryEntryCreateCFProperty(v8, v12, kCFAllocatorDefault, 0);

  if (!v14)
  {
LABEL_16:
    v25 = 2;
    LOBYTE(v43) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    swift_unknownObjectRelease();
    v6 = v38;
    goto LABEL_21;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v37 = v14;
  *(v1 + 32) = [v15 integerValue];
  v16 = sub_10000A9A0();
  v17 = IORegistryEntryCreateCFProperty(v8, v16, kCFAllocatorDefault, 0);

  v6 = v38;
  if (!v17)
  {
LABEL_18:
    v19 = 0;
    v43 = 0u;
    v44 = 0u;
LABEL_19:
    sub_1000020F4(&v43);
LABEL_20:
    v25 = 2;
    LOBYTE(v43) = 2;
    sub_1000020A0();
    swift_willThrowTypedImpl();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  *&v41 = 0x69746375646F7250;
  *(&v41 + 1) = 0xEF65636172546E6FLL;
  v19 = v18;
  v20 = [v19 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v20)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    goto LABEL_19;
  }

  sub_1000021A4();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v36 = v41;
  *&v41 = 0xD000000000000010;
  *(&v41 + 1) = 0x800000010000C200;
  v19 = v19;
  v27 = [v19 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v27)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    goto LABEL_40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:

    goto LABEL_20;
  }

  v35 = v41;
  strcpy(&v41, "FeatureFlags");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v19 = v19;
  v28 = [v19 __swift_objectForKeyedSubscript:sub_10000AA40()];
  swift_unknownObjectRelease();

  if (v28)
  {
    sub_10000AA00();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {

LABEL_40:
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_42;
  }

  v29 = v41;
  v30 = [v41 unsignedIntegerValue];
  *(v1 + 18) = (v30 & 8) != 0;
  *(v1 + 17) = (v30 & 4) != 0;
  v31 = v36;
  if ([v36 BOOLValue])
  {
    v32 = 1;
    v33 = v35;
  }

  else
  {
    v33 = v35;
    v32 = [v35 BOOLValue];
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v1 + 16) = v32;
  return v1;
}

uint64_t sub_100001EE4()
{
  IOObjectRelease(*(v0 + OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_service));
  v1 = OBJC_IVAR____TtC24DeveloperSettingsIntents34DTProcessorTraceConfigurationState_logger;
  v2 = sub_10000A990();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for DTProcessorTraceConfigurationState(uint64_t a1)
{
  result = qword_100018230;
  if (!qword_100018230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001FE4(uint64_t a1)
{
  result = sub_10000A990();
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

unint64_t sub_1000020A0()
{
  result = qword_1000182E8;
  if (!qword_1000182E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000182E8);
  }

  return result;
}

uint64_t sub_1000020F4(uint64_t a1)
{
  v2 = sub_10000215C(&qword_1000182F0, &unk_10000AFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000215C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000021A4()
{
  result = qword_1000182F8;
  if (!qword_1000182F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000182F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProcessorTraceStateError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessorTraceStateError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100002368()
{
  result = qword_100018300;
  if (!qword_100018300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018300);
  }

  return result;
}

unint64_t sub_1000023C0()
{
  result = qword_100018318;
  if (!qword_100018318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018318);
  }

  return result;
}

unint64_t sub_100002418()
{
  result = qword_100018320;
  if (!qword_100018320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018320);
  }

  return result;
}

uint64_t sub_10000246C()
{
  v0 = sub_10000A920();
  sub_10000A294(v0, qword_1000194F0);
  sub_10000A25C(v0, qword_1000194F0);
  return sub_10000A910();
}

void *sub_1000024D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A7C0();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100002544(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10000A7B0();
  return sub_1000025B8;
}

void sub_1000025B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002604()
{
  result = qword_100018328;
  if (!qword_100018328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018328);
  }

  return result;
}

uint64_t sub_100002658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A3F4();
  v5 = sub_10000A2F8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000026C8()
{
  result = qword_100018330;
  if (!qword_100018330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018330);
  }

  return result;
}

unint64_t sub_100002720()
{
  result = qword_100018338;
  if (!qword_100018338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018338);
  }

  return result;
}

unint64_t sub_100002778()
{
  result = qword_100018340;
  if (!qword_100018340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018340);
  }

  return result;
}

uint64_t sub_10000286C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10000A3F4();
  v6 = sub_10000A448();
  v7 = sub_10000A2F8();
  *v4 = v2;
  v4[1] = sub_100002938;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100002938()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100002A40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008A7C();
  *a1 = result;
  return result;
}

uint64_t sub_100002A68(uint64_t a1)
{
  v2 = sub_100002604();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100002AA8()
{
  result = qword_100018348;
  if (!qword_100018348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018348);
  }

  return result;
}

unint64_t sub_100002B00()
{
  result = qword_100018350;
  if (!qword_100018350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018350);
  }

  return result;
}

unint64_t sub_100002B54()
{
  result = qword_100018358;
  if (!qword_100018358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018358);
  }

  return result;
}

uint64_t sub_100002BA8()
{
  v0 = sub_10000215C(&qword_100018400, &qword_10000B878);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_10000A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_10000A8E0();
  sub_10000A294(v5, qword_100019508);
  sub_10000A25C(v5, qword_100019508);
  sub_10000A910();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_10000A8D0();
}

uint64_t sub_100002D18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000215C(&qword_1000183F8, &qword_10000B870);
  __chkstk_darwin(v4 - 8);
  v6 = v48 - v5;
  v7 = sub_10000215C(&qword_100018400, &qword_10000B878);
  __chkstk_darwin(v7 - 8);
  v9 = v48 - v8;
  v10 = sub_10000A920();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v48 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v48 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = v48 - v22;
  __chkstk_darwin(v21);
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 5:
    case 9:
    case 12:
    case 13:
    case 15:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 50:
    case 51:
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v39 = sub_10000A800();
      (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
      goto LABEL_15;
    case 3:
    case 41:
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v31 = sub_10000A800();
      (*(*(v31 - 8) + 56))(v6, 0, 1, v31);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B0A0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 6:
      v32 = v48 - v24;
      v50 = a2;
      v33 = MobileGestalt_get_current_device();
      if (!v33)
      {
        goto LABEL_20;
      }

      v34 = v33;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      v51 = v32;
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v35 = sub_10000A800();
      (*(*(v35 - 8) + 56))(v6, 0, 1, v35);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 16))(v23, v20, v10);
      sub_10000A810();
      return (*(v11 + 8))(v20, v10);
    case 7:
      v51 = v48 - v24;
      v28 = MobileGestalt_get_current_device();
      if (!v28)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        JUMPOUT(0x1000069ACLL);
      }

      v29 = v28;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      v49 = v23;
      v50 = a2;
      v40 = MobileGestalt_get_current_device();
      if (!v40)
      {
        goto LABEL_21;
      }

      v41 = v40;
      MobileGestalt_get_wapiCapability();

      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v42 = sub_10000A800();
      (*(*(v42 - 8) + 56))(v6, 0, 1, v42);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v43 = *(v11 + 72);
      v44 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v48[1] = 4 * v43;
      v45 = swift_allocObject();
      v48[2] = v45;
      *(v45 + 16) = xmmword_10000B0C0;
      v46 = v45 + v44;
      sub_10000A910();
      v48[0] = *(v11 + 16);
      (v48[0])(v46 + v43, v17, v10);
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      (v48[0])(v49, v14, v10);
      sub_10000A810();
      v47 = *(v11 + 8);
      v47(v14, v10);
      return (v47)(v17, v10);
    case 8:
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v38 = sub_10000A800();
      (*(*(v38 - 8) + 56))(v6, 0, 1, v38);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 10:
    case 11:
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v37 = sub_10000A800();
      (*(*(v37 - 8) + 56))(v6, 0, 1, v37);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
    case 14:
      v51 = v48 - v24;
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v27 = sub_10000A800();
      (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B0C0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      goto LABEL_15;
    case 16:
    case 17:
    case 49:
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v30 = sub_10000A800();
      (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B090;
      sub_10000A910();
      goto LABEL_15;
    case 27:
      v51 = v48 - v24;
      sub_10000A910();
      sub_10000A910();
      (*(v11 + 56))(v9, 0, 1, v10);
      sub_10000A7F0();
      v26 = sub_10000A800();
      (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      *(swift_allocObject() + 16) = xmmword_10000B0B0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
LABEL_15:
      sub_10000A910();
      return sub_10000A810();
    default:
      v51 = v48 - v24;
      sub_10000A910();
      (*(v11 + 56))(v9, 1, 1, v10);
      sub_10000A7F0();
      v25 = sub_10000A800();
      (*(*(v25 - 8) + 56))(v6, 0, 1, v25);
      sub_10000215C(&qword_100018408, &qword_10000B880);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10000B0D0;
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      sub_10000A910();
      return sub_10000A810();
  }
}

uint64_t sub_100006A7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000A4E8;

  return sub_100008E98(a1);
}

uint64_t sub_100006B24(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000A4BC;

  return sub_100009540();
}

uint64_t sub_100006BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100006C88;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100006C88(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100006D88()
{
  result = qword_100018360;
  if (!qword_100018360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018360);
  }

  return result;
}

uint64_t sub_100006DDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100006E80;

  return sub_100008D78();
}

uint64_t sub_100006E80(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100006F98()
{
  result = qword_100018368;
  if (!qword_100018368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018368);
  }

  return result;
}

unint64_t sub_100006FEC()
{
  result = qword_100018370;
  if (!qword_100018370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018370);
  }

  return result;
}

unint64_t sub_100007044()
{
  result = qword_100018378;
  if (!qword_100018378)
  {
    sub_1000070C8(&qword_100018380, qword_10000B338);
    sub_100006FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018378);
  }

  return result;
}

uint64_t sub_1000070C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007110(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100006D88();
  *v5 = v2;
  v5[1] = sub_1000071C4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000071C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000072B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000735C;

  return sub_100009BEC();
}

uint64_t sub_10000735C(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_100007478()
{
  result = qword_100018388;
  if (!qword_100018388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018388);
  }

  return result;
}

uint64_t sub_1000074CC(uint64_t a1)
{
  v1 = sub_10000215C(&qword_100018418, &qword_10000B888);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_10000215C(&qword_100018420, &qword_10000B890);
  __chkstk_darwin(v5);
  sub_100002B54();
  sub_10000A890();
  v8._object = 0x800000010000F040;
  v8._countAndFlagsBits = 0xD000000000000033;
  sub_10000A880(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000A870();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000A880(v9);
  return sub_10000A8A0();
}

uint64_t sub_100007690()
{
  v0 = qword_100018308;

  return v0;
}

unint64_t sub_1000076CC()
{
  result = qword_100018390;
  if (!qword_100018390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018390);
  }

  return result;
}

unint64_t sub_100007724()
{
  result = qword_100018398;
  if (!qword_100018398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018398);
  }

  return result;
}

unint64_t sub_100007780()
{
  result = qword_1000183A0;
  if (!qword_1000183A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183A0);
  }

  return result;
}

uint64_t sub_1000077D4(uint64_t a1)
{
  sub_10000A2F8();
  v2 = sub_10000A840();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100007844()
{
  result = qword_1000183A8;
  if (!qword_1000183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183A8);
  }

  return result;
}

unint64_t sub_10000789C()
{
  result = qword_1000183B0;
  if (!qword_1000183B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183B0);
  }

  return result;
}

unint64_t sub_1000078F8()
{
  result = qword_1000183B8;
  if (!qword_1000183B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183B8);
  }

  return result;
}

unint64_t sub_100007950()
{
  result = qword_1000183C0;
  if (!qword_1000183C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183C0);
  }

  return result;
}

uint64_t sub_1000079EC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_10000A25C(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007AD8(uint64_t a1)
{
  v2 = sub_100002B54();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100007B28()
{
  result = qword_1000183D8;
  if (!qword_1000183D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183D8);
  }

  return result;
}

uint64_t sub_100007B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000071C4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100007C48(uint64_t a1)
{
  v2 = sub_1000078F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100007C94(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = [a1 bundleIdentifier];
  if (v9)
  {
    v10 = v9;
    sub_10000A9B0();
  }

  v13._countAndFlagsBits = a2;
  v13._object = a3;
  if (sub_10000A9D0(v13))
  {
    v14._countAndFlagsBits = a4;
    v14._object = a5;
    v11 = sub_10000A9E0(v14);

    if (v11)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_100007D60(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

unint64_t sub_100007DA4(char a1)
{
  result = 0x746F6F7223;
  switch(a1)
  {
    case 1:
    case 15:
    case 39:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x70756F7247414955;
      break;
    case 3:
    case 46:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 30:
    case 42:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 4410446;
      break;
    case 7:
      result = 5194574;
      break;
    case 8:
      result = 0x545445535F53344CLL;
      break;
    case 9:
      result = 0x476C61755174654ELL;
      break;
    case 10:
      result = 0x45504F4C45564544;
      break;
    case 11:
    case 16:
    case 33:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 48:
      result = 0xD000000000000026;
      break;
    case 13:
      result = 0xD000000000000027;
      break;
    case 14:
    case 21:
      result = 0xD000000000000013;
      break;
    case 17:
    case 22:
    case 23:
      result = 0xD000000000000015;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000032;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
    case 43:
      result = 0xD000000000000018;
      break;
    case 26:
      result = 0xD00000000000001FLL;
      break;
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 28:
      result = 0xD000000000000023;
      break;
    case 29:
    case 49:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0xD000000000000022;
      break;
    case 32:
      result = 0xD000000000000020;
      break;
    case 34:
      result = 0xD000000000000016;
      break;
    case 35:
      result = 0xD00000000000001CLL;
      break;
    case 36:
    case 51:
      result = 0xD000000000000019;
      break;
    case 37:
      result = 0xD00000000000002FLL;
      break;
    case 38:
      result = 0xD000000000000039;
      break;
    case 40:
      result = 0xD000000000000016;
      break;
    case 41:
      result = 0xD000000000000016;
      break;
    case 44:
    case 45:
      result = 0xD000000000000024;
      break;
    case 47:
      result = 0xD000000000000016;
      break;
    case 50:
      result = 0xD00000000000002CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000838C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100007DA4(*a1);
  v5 = v4;
  if (v3 == sub_100007DA4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10000AA20();
  }

  return v8 & 1;
}

unint64_t sub_100008418()
{
  result = qword_1000183E0;
  if (!qword_1000183E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183E0);
  }

  return result;
}

Swift::Int sub_10000846C()
{
  v1 = *v0;
  sub_10000AA90();
  sub_100007DA4(v1);
  sub_10000A9C0();

  return sub_10000AAB0();
}

uint64_t sub_1000084D0(uint64_t a1)
{
  sub_100007DA4(*v1);
  sub_10000A9C0();
}

Swift::Int sub_100008524(uint64_t a1)
{
  v2 = *v1;
  sub_10000AA90();
  sub_100007DA4(v2);
  sub_10000A9C0();

  return sub_10000AAB0();
}

unint64_t sub_100008584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000A208(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000085B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100007DA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100008624(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000070C8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_10000A208(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000086F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100008784(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_100008854(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100008894(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008874(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100008988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100008894(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000215C(&qword_100018430, &qword_10000B8B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100008988(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000215C(&qword_100018428, &qword_10000B8A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100008A7C()
{
  v17 = sub_10000A8B0();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000215C(&qword_100018438, &qword_10000B8C8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_10000215C(&qword_100018400, &qword_10000B878);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10000A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_10000215C(&qword_100018440, &unk_10000B8D0);
  sub_10000A910();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 52;
  v14 = sub_10000A7A0();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v6, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100002B54();
  return sub_10000A7E0();
}

uint64_t sub_100008D94()
{
  sub_100008854(0, 52, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_1000149D8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100008854((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 52);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100008E98(uint64_t a1)
{
  v1[8] = a1;
  v2 = sub_10000A950();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_100008F84, 0, 0);
}

uint64_t sub_100008F84()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 80);
    v4 = (v1 + 32);
    v5 = objc_opt_self();
    v37 = (v3 + 8);
    v6 = &DTProcessorTraceConfigurationState;
    v7 = &DTProcessorTraceConfigurationState;
    v38 = v5;
    while (1)
    {
      v9 = *v4++;
      v8 = v9;
      v10 = [v5 v6[4].ivars];
      v11 = [v10 v7[4].weak_ivar_lyt];

      if (!v11)
      {
        goto LABEL_5;
      }

      if (v8 > 28)
      {
        break;
      }

      if ((v8 - 20) < 4)
      {
        v12 = MobileGestalt_get_current_device();
        if (!v12)
        {
          goto LABEL_39;
        }

        v13 = v12;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_24;
        }

        goto LABEL_4;
      }

      if (v8 != 5)
      {
        goto LABEL_24;
      }

      type metadata accessor for DTProcessorTraceConfigurationState(0);
      swift_allocObject();
      v20 = sub_1000016B4();
      v6 = &DTProcessorTraceConfigurationState;
      v7 = &DTProcessorTraceConfigurationState;
      if (v20[16] != 1 || (v20[18] & 1) == 0)
      {

        goto LABEL_5;
      }

      v21 = v20[17];

      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_5:
      if (!--v2)
      {
        goto LABEL_30;
      }
    }

    if (v8 == 41)
    {
      v22 = *(v0 + 88);
      v23 = *(v0 + 72);
      v24 = sub_10000A9A0();
      v25 = SFRuntimeAbsoluteFilePathForPath();

      sub_10000A9B0();
      sub_10000A930();

      *(v0 + 96) = 0;
      v26 = [objc_opt_self() defaultManager];
      sub_10000A940();
      v27 = sub_10000A9A0();

      LODWORD(v25) = [v26 fileExistsAtPath:v27 isDirectory:v0 + 96];

      (*v37)(v22, v23);
      if (v25)
      {
        v5 = v38;
        v6 = &DTProcessorTraceConfigurationState;
        if (*(v0 + 96))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v5 = v38;
        v6 = &DTProcessorTraceConfigurationState;
      }
    }

    else
    {
      if (v8 != 29)
      {
        goto LABEL_24;
      }

      v15 = [objc_opt_self() enumeratorWithOptions:192];
      v16 = swift_allocObject();
      *(v16 + 16) = 0x6C7070612E6D6F63;
      *(v16 + 24) = 0xEA00000000002E65;
      strcpy((v16 + 32), ".ClassKitApp");
      *(v16 + 45) = 0;
      *(v16 + 46) = -5120;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_10000A4A4;
      *(v17 + 24) = v16;
      *(v0 + 48) = sub_10000A4EC;
      *(v0 + 56) = v17;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_100007D60;
      *(v0 + 40) = &unk_100015258;
      v18 = _Block_copy((v0 + 16));

      v19 = [v15 swift_firstWhere:v18];

      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if (v18)
      {
        __break(1u);
LABEL_39:
        __break(1u);
      }

      v5 = v38;
      v6 = &DTProcessorTraceConfigurationState;
      if (v19)
      {
LABEL_24:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100008874(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v29 = _swiftEmptyArrayStorage[2];
        v28 = _swiftEmptyArrayStorage[3];
        if (v29 >= v28 >> 1)
        {
          sub_100008874((v28 > 1), v29 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v29 + 1;
        *(&_swiftEmptyArrayStorage[4] + v29) = v8;
      }
    }

LABEL_4:
    v7 = &DTProcessorTraceConfigurationState;
    goto LABEL_5;
  }

LABEL_30:
  v30 = _swiftEmptyArrayStorage[2];
  if (v30)
  {
    sub_100008854(0, v30, 0);
    v31 = _swiftEmptyArrayStorage[2];
    v32 = 32;
    do
    {
      v33 = *(_swiftEmptyArrayStorage + v32);
      v34 = _swiftEmptyArrayStorage[3];
      if (v31 >= v34 >> 1)
      {
        sub_100008854((v34 > 1), v31 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v31 + 1;
      *(&_swiftEmptyArrayStorage[4] + v31) = v33;
      ++v32;
      ++v31;
      --v30;
    }

    while (v30);
  }

  v35 = *(v0 + 8);

  return v35(_swiftEmptyArrayStorage);
}

uint64_t sub_100009540()
{
  v1 = sub_10000A950();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009628, 0, 0);
}

uint64_t sub_100009628()
{
  v1 = *(v0 + 72);
  v2 = objc_opt_self();
  v3 = 0;
  v34 = (v1 + 8);
  v33 = v0 + 32;
  v4 = &DTProcessorTraceConfigurationState;
  v35 = v2;
  do
  {
    v5 = *(&off_1000149D8 + v3 + 32);
    v6 = [v2 v4[4].ivars];
    v7 = [v6 sf_isDeveloperModeEnabled];

    if (v7)
    {
      if (v5 > 28)
      {
        if (v5 == 41)
        {
          v18 = *(v0 + 80);
          v19 = *(v0 + 64);
          v20 = sub_10000A9A0();
          v21 = SFRuntimeAbsoluteFilePathForPath();

          sub_10000A9B0();
          sub_10000A930();

          *(v0 + 88) = 0;
          v22 = [objc_opt_self() defaultManager];
          sub_10000A940();
          v23 = sub_10000A9A0();

          LODWORD(v21) = [v22 fileExistsAtPath:v23 isDirectory:v0 + 88];

          (*v34)(v18, v19);
          if (v21)
          {
            v2 = v35;
            if (*(v0 + 88))
            {
              goto LABEL_23;
            }
          }

          else
          {
            v2 = v35;
          }
        }

        else
        {
          if (v5 != 29)
          {
            goto LABEL_23;
          }

          v11 = [objc_opt_self() enumeratorWithOptions:192];
          v12 = swift_allocObject();
          *(v12 + 16) = 0x6C7070612E6D6F63;
          *(v12 + 24) = 0xEA00000000002E65;
          strcpy((v12 + 32), ".ClassKitApp");
          *(v12 + 45) = 0;
          *(v12 + 46) = -5120;
          v13 = swift_allocObject();
          *(v13 + 16) = sub_10000A4A4;
          *(v13 + 24) = v12;
          *(v0 + 48) = sub_10000A4EC;
          *(v0 + 56) = v13;
          *(v0 + 16) = _NSConcreteStackBlock;
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_100007D60;
          *(v0 + 40) = &unk_1000151E0;
          v14 = _Block_copy((v0 + 16));

          v15 = [v11 swift_firstWhere:v14];

          _Block_release(v14);
          LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

          if (v14)
          {
            __break(1u);
LABEL_38:
            __break(1u);
          }

          v2 = v35;
          if (v15)
          {
LABEL_23:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100008874(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v25 = _swiftEmptyArrayStorage[2];
            v24 = _swiftEmptyArrayStorage[3];
            if (v25 >= v24 >> 1)
            {
              sub_100008874((v24 > 1), v25 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v25 + 1;
            *(&_swiftEmptyArrayStorage[4] + v25) = v5;
          }
        }

LABEL_3:
        v4 = &DTProcessorTraceConfigurationState;
        goto LABEL_4;
      }

      if ((v5 - 20) < 4)
      {
        v8 = MobileGestalt_get_current_device();
        if (!v8)
        {
          goto LABEL_38;
        }

        v9 = v8;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

      if (v5 != 5)
      {
        goto LABEL_23;
      }

      type metadata accessor for DTProcessorTraceConfigurationState(0);
      swift_allocObject();
      v16 = sub_1000016B4();
      v4 = &DTProcessorTraceConfigurationState;
      if (v16[16] == 1 && (v16[18] & 1) != 0)
      {
        v17 = v16[17];

        if ((v17 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

LABEL_4:
    ++v3;
  }

  while (v3 != 52);
  v26 = _swiftEmptyArrayStorage[2];
  if (v26)
  {
    sub_100008854(0, v26, 0);
    v27 = _swiftEmptyArrayStorage[2];
    v28 = 32;
    do
    {
      v29 = *(_swiftEmptyArrayStorage + v28);
      v30 = _swiftEmptyArrayStorage[3];
      if (v27 >= v30 >> 1)
      {
        sub_100008854((v30 > 1), v27 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v27 + 1;
      *(&_swiftEmptyArrayStorage[4] + v27) = v29;
      ++v28;
      ++v27;
      --v26;
    }

    while (v26);
  }

  v31 = *(v0 + 8);

  return v31(_swiftEmptyArrayStorage);
}

uint64_t sub_100009BEC()
{
  v1 = sub_10000A950();
  v0[8] = v1;
  v0[9] = *(v1 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100009CD4, 0, 0);
}

uint64_t sub_100009CD4()
{
  v1 = *(v0 + 72);
  v2 = objc_opt_self();
  v3 = 0;
  v30 = (v1 + 8);
  v4 = &DTProcessorTraceConfigurationState;
  v5 = &DTProcessorTraceConfigurationState;
  do
  {
    v6 = *(&off_1000149D8 + v3 + 32);
    v7 = [v2 v4[4].ivars];
    v8 = [v7 v5[4].weak_ivar_lyt];

    if (v8)
    {
      if (v6 > 28)
      {
        if (v6 == 41)
        {
          v19 = *(v0 + 80);
          v20 = *(v0 + 64);
          v21 = sub_10000A9A0();
          v22 = SFRuntimeAbsoluteFilePathForPath();

          sub_10000A9B0();
          sub_10000A930();

          *(v0 + 88) = 0;
          v23 = [objc_opt_self() defaultManager];
          sub_10000A940();
          v24 = sub_10000A9A0();

          LODWORD(v22) = [v23 fileExistsAtPath:v24 isDirectory:v0 + 88];

          (*v30)(v19, v20);
          if (v22)
          {
            v4 = &DTProcessorTraceConfigurationState;
            if (*(v0 + 88))
            {
              goto LABEL_23;
            }
          }

          else
          {
            v4 = &DTProcessorTraceConfigurationState;
          }
        }

        else
        {
          if (v6 != 29)
          {
            goto LABEL_23;
          }

          v12 = [objc_opt_self() enumeratorWithOptions:192];
          v13 = swift_allocObject();
          *(v13 + 16) = 0x6C7070612E6D6F63;
          *(v13 + 24) = 0xEA00000000002E65;
          strcpy((v13 + 32), ".ClassKitApp");
          *(v13 + 45) = 0;
          *(v13 + 46) = -5120;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_10000A350;
          *(v14 + 24) = v13;
          *(v0 + 48) = sub_10000A36C;
          *(v0 + 56) = v14;
          *(v0 + 16) = _NSConcreteStackBlock;
          *(v0 + 24) = 1107296256;
          *(v0 + 32) = sub_100007D60;
          *(v0 + 40) = &unk_100015168;
          v15 = _Block_copy((v0 + 16));

          v16 = [v12 swift_firstWhere:v15];

          _Block_release(v15);
          LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

          if (v12)
          {
            __break(1u);
LABEL_36:
            __break(1u);
          }

          v4 = &DTProcessorTraceConfigurationState;
          if (v16)
          {
LABEL_23:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_100008874(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v26 = _swiftEmptyArrayStorage[2];
            v25 = _swiftEmptyArrayStorage[3];
            if (v26 >= v25 >> 1)
            {
              sub_100008874((v25 > 1), v26 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v26 + 1;
            *(&_swiftEmptyArrayStorage[4] + v26) = v6;
          }
        }

LABEL_3:
        v5 = &DTProcessorTraceConfigurationState;
        goto LABEL_4;
      }

      if ((v6 - 20) < 4)
      {
        v9 = MobileGestalt_get_current_device();
        if (!v9)
        {
          goto LABEL_36;
        }

        v10 = v9;
        shoeboxCapability = MobileGestalt_get_shoeboxCapability();

        if (shoeboxCapability)
        {
          goto LABEL_23;
        }

        goto LABEL_3;
      }

      if (v6 != 5)
      {
        goto LABEL_23;
      }

      type metadata accessor for DTProcessorTraceConfigurationState(0);
      swift_allocObject();
      v17 = sub_1000016B4();
      v5 = &DTProcessorTraceConfigurationState;
      if (v17[16] == 1 && (v17[18] & 1) != 0)
      {
        v18 = v17[17];

        if ((v18 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

LABEL_4:
    ++v3;
  }

  while (v3 != 52);
  if (_swiftEmptyArrayStorage[2])
  {
    v27 = LOBYTE(_swiftEmptyArrayStorage[4]);
  }

  else
  {
    v27 = 52;
  }

  v28 = *(v0 + 8);

  return v28(v27);
}

unint64_t sub_10000A208(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000AA30();

  if (v2 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000A25C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000A294(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_10000A2F8()
{
  result = qword_100018410;
  if (!qword_100018410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018410);
  }

  return result;
}

uint64_t sub_10000A398(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A3B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10000A3F4()
{
  result = qword_100018448;
  if (!qword_100018448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018448);
  }

  return result;
}

unint64_t sub_10000A448()
{
  result = qword_100018450;
  if (!qword_100018450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018450);
  }

  return result;
}

uint64_t sub_10000A4F0(uint64_t a1)
{
  v2 = sub_10000A69C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A5F4();
  sub_10000A960();
  return 0;
}

unint64_t sub_10000A5F4()
{
  result = qword_100018458;
  if (!qword_100018458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018458);
  }

  return result;
}

unint64_t sub_10000A69C()
{
  result = qword_100018460;
  if (!qword_100018460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018460);
  }

  return result;
}